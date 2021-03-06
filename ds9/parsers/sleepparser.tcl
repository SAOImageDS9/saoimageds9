package provide DS9 1.0

######
# Begin autogenerated taccle (version 1.3) routines.
# Although taccle itself is protected by the GNU Public License (GPL)
# all user-supplied functions are protected by their respective
# author's license.  See http://mini.net/tcl/taccle for other details.
######

namespace eval sleep {
    variable yylval {}
    variable table
    variable rules
    variable token {}
    variable yycnt 0
    variable yyerr 0
    variable save_state 0

    namespace export yylex
}

proc sleep::YYABORT {} {
    return -code return 1
}

proc sleep::YYACCEPT {} {
    return -code return 0
}

proc sleep::YYERROR {} {
    variable yyerr
    set yyerr 1
}

proc sleep::yyclearin {} {
    variable token
    variable yycnt
    set token {}
    incr yycnt -1
}

proc sleep::yyerror {s} {
    puts stderr $s
}

proc sleep::setupvalues {stack pointer numsyms} {
    upvar 1 1 y
    set y {}
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        set y [lindex $stack $pointer]
        incr pointer
    }
}

proc sleep::unsetupvalues {numsyms} {
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        unset y
    }
}

array set sleep::table {
  3:0,target 7
  0:257 shift
  7:0 reduce
  0:258 shift
  5:0,target 3
  0:259 reduce
  0:260 goto
  6:259,target 7
  1:259 reduce
  0:261 goto
  7:0,target 5
  2:259 reduce
  0:258,target 2
  3:259 reduce
  0:263 goto
  0:0,target 6
  1:259,target 1
  0:261,target 4
  5:259 reduce
  2:0,target 2
  6:259 shift
  3:259,target 7
  0:263,target 5
  5:262 goto
  4:0,target 0
  5:259,target 4
  0:0 reduce
  1:0 reduce
  0:257,target 1
  5:262,target 6
  2:0 reduce
  3:0 reduce
  0:259,target 6
  0:260,target 3
  4:0 accept
  1:0,target 1
  5:0 reduce
  2:259,target 2
}

array set sleep::rules {
  0,l 264
  1,l 260
  2,l 260
  3,l 261
  4,l 262
  5,l 261
  6,l 263
  7,l 263
}

array set sleep::rules {
  5,dc 3
  7,dc 1
  0,dc 1
  2,dc 1
  4,dc 0
  6,dc 0
  1,dc 1
  3,dc 1
}

array set sleep::rules {
  5,line 25
  7,line 29
  4,e 1
  2,line 21
  4,line 24
  6,line 28
  1,line 20
  3,line 24
}

array set sleep::lr1_table {
  0 {{0 0 0} {3 0 0} {5 0 0} {6 {0 259} 0} {7 {0 259} 0} {1 {0 259} 0} {2 {0 259} 0}}
  1 {{1 {0 259} 1}}
  2 {{2 {0 259} 1}}
  3 {{7 {0 259} 1}}
  4 {{0 0 1}}
  0,trans {{257 1} {258 2} {260 3} {261 4} {263 5}}
  5 {{3 0 1} {5 0 1} {4 259 0}}
  1,trans {}
  2,trans {}
  6 {{5 0 2}}
  7 {{5 0 3}}
  3,trans {}
  4,trans {}
  5,trans {{262 6}}
  6,trans {{259 7}}
  7,trans {}
}

array set sleep::token_id_table {
  264,line 30
  262,title {}
  0,t 0
  0 {$}
  263,title {}
  264,title {}
  error,t 0
  error error
  258,line 8
  261,line 23
  error,line 18
  257 INT_
  257,t 0
  263,line 27
  258 REAL_
  258,t 0
  260,t 1
  260 numeric
  error,title {}
  259 STRING_
  259,t 0
  261,t 1
  261 command
  262,t 1
  262 @PSEUDO1
  257,line 7
  263,t 1
  263 sleep
  264,t 1
  264 start'
  260,line 19
  257,title integer
  259,line 10
  258,title float
  262,line 24
  260,title {}
  259,title string
  261,title {}
}

proc sleep::yyparse {} {
    variable yylval
    variable table
    variable rules
    variable token
    variable yycnt
    variable lr1_table
    variable token_id_table
    variable yyerr
    variable save_state

    set yycnt 0
    set state_stack {0}
    set value_stack {{}}
    set token ""
    set accepted 0
    set yyerr 0
    set save_state 0

    while {$accepted == 0} {
        set state [lindex $state_stack end]
        if {$token == ""} {
            set yylval ""
            set token [yylex]
            set buflval $yylval
	    if {$token>0} {
	        incr yycnt
            }
        }
        if {![info exists table($state:$token)] || $yyerr} {
	    if {!$yyerr} {
	        set save_state $state
	    }
            # pop off states until error token accepted
            while {[llength $state_stack] > 0 && \
                       ![info exists table($state:error)]} {
                set state_stack [lrange $state_stack 0 end-1]
                set value_stack [lrange $value_stack 0 \
                                       [expr {[llength $state_stack] - 1}]]
                set state [lindex $state_stack end]
            }
            if {[llength $state_stack] == 0} {
 
	        set rr { }
                if {[info exists lr1_table($save_state,trans)] && [llength $lr1_table($save_state,trans)] >= 1} {
                    foreach trans $lr1_table($save_state,trans) {
                        foreach {tok_id nextstate} $trans {
			    set ss $token_id_table($tok_id,title)
			    if {$ss != {}} {
			        append rr "$ss, "
                            }
                        }
                    }
                }
		set rr [string trimleft $rr { }]
		set rr [string trimright $rr {, }]
                yyerror "parse error, expecting: $rr"


                return 1
            }
            lappend state_stack [set state $table($state:error,target)]
            lappend value_stack {}
            # consume tokens until it finds an acceptable one
            while {![info exists table($state:$token)]} {
                if {$token == 0} {
                    yyerror "end of file while recovering from error"
                    return 1
                }
                set yylval {}
                set token [yylex]
                set buflval $yylval
            }
            continue
        }
        switch -- $table($state:$token) {
            shift {
                lappend state_stack $table($state:$token,target)
                lappend value_stack $buflval
                set token ""
            }
            reduce {
                set rule $table($state:$token,target)
                set ll $rules($rule,l)
                if {[info exists rules($rule,e)]} {
                    set dc $rules($rule,e)
                } else {
                    set dc $rules($rule,dc)
                }
                set stackpointer [expr {[llength $state_stack]-$dc}]
                setupvalues $value_stack $stackpointer $dc
                set _ $1
                set yylval [lindex $value_stack end]
                switch -- $rule {
                    1 { set _ $1 }
                    2 { set _ $1 }
                    4 { global ds9; if {!$ds9(init)} {YYERROR} else {yyclearin; YYACCEPT} }
                    6 { after 1000 }
                    7 { after [expr int($1*1000)] }
                }
                unsetupvalues $dc
                # pop off tokens from the stack if normal rule
                if {![info exists rules($rule,e)]} {
                    incr stackpointer -1
                    set state_stack [lrange $state_stack 0 $stackpointer]
                    set value_stack [lrange $value_stack 0 $stackpointer]
                }
                # now do the goto transition
                lappend state_stack $table([lindex $state_stack end]:$ll,target)
                lappend value_stack $_
            }
            accept {
                set accepted 1
            }
            goto -
            default {
                puts stderr "Internal parser error: illegal command $table($state:$token)"
                return 2
            }
        }
    }
    return 0
}

######
# end autogenerated taccle functions
######

proc sleep::yyerror {msg} {
     variable yycnt
     variable yy_current_buffer
     variable index_

     ParserError $msg $yycnt $yy_current_buffer $index_
}
