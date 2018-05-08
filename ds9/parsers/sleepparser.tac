%{
%}

#include numeric.tin
#include string.tin

%start command

%%

#include numeric.trl

command : sleep 
 | sleep {yyclearin; YYACCEPT} STRING_
 ;

sleep : {after 1000}
 | numeric {after [expr int($1*1000)]}
 ;

%%

proc sleep::yyerror {msg} {
     variable yycnt
     variable yy_current_buffer
     variable index_

     ParserError $msg $yycnt $yy_current_buffer $index_
}
