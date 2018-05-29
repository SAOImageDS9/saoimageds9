%{
%}

#include numeric.tin
#include string.tin

%start command

%token FITS_
%token EPS_
%token GIF_
%token TIFF_
%token JPEG_
%token PNG_
%token MPEG_

%token NONE_
%token PACKBITS_
%token DEFLATE_

%%

#include numeric.trl

command : saveimage 
 | saveimage {yyclearin; YYACCEPT} STRING_
 ;

saveimage : STRING_ opts {SaveimageCmdLoad [ExtToFormat $1] $1}
 | ext STRING_ opts {SaveimageCmdLoad $1 $2}
# backward compatibilty
 | ext opts STRING_ {SaveimageCmdLoad $1 $2}
# backward compatibilty
 | MPEG_ mpeg
 ;
 
mpeg : STRING_ {SaveimageCmdMPEG $1 1}
 | STRING_ INT_ {SaveimageCmdMPEG $1 $2}
 ;

ext : FITS_ {set _ fits}
 | EPS_ {set _ eps}
 | GIF_ {set _ gif}
 | TIFF_ {set _ tiff}
 | JPEG_ {set _ jpeg}
 | PNG_ {set _ png}
 ;

opts :
 | NONE_ {SaveimageCmdSet tiff,compress none}
 | JPEG_ {SaveimageCmdSet tiff,compress jpeg}
 | PACKBITS_ {SaveimageCmdSet tiff,compress packbits}
 | DEFLATE_ {SaveimageCmdSet tiff,compress deflate}
 | numeric {SaveimageCmdSet jpeg,quality $1}
 ;
 
%%

proc saveimage::yyerror {msg} {
     variable yycnt
     variable yy_current_buffer
     variable index_

     ParserError $msg $yycnt $yy_current_buffer $index_
}