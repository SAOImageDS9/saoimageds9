%{
%}

#include yesno.tin
#include numeric.tin
#include string.tin

%start command

%token COLOR_
%token CURSOR_
%token REGION_
%token ZOOM_

%%

#include yesno.trl
#include numeric.trl

command : magnifier 
 | magnifier {yyclearin; YYACCEPT} STRING_
 ;

magnifier : COLOR_ STRING_ {PmagnifierCmdSet color $2 MagnifierColor}
 | ZOOM_ numeric {PmagnifierCmdSet zoom $2 MagnifierZoom}
 | CURSOR_ yesno {PmagnifierCmdSet cursor $2 MagnifierCursor}
 | REGION_ yesno {PmagnifierCmdSet region $2 MagnifierRegion}
# backward compatibility
 | yesno {ViewCmdSet magnifier $1 UpdateView}
 ;

%%

proc magnifier::yyerror {msg} {
     variable yycnt
     variable yy_current_buffer
     variable index_

     ParserError $msg $yycnt $yy_current_buffer $index_
}