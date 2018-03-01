
######
# Begin autogenerated taccle (version 1.2) routines.
# Although taccle itself is protected by the GNU Public License (GPL)
# all user-supplied functions are protected by their respective
# author's license.  See http://mini.net/tcl/taccle for other details.
######

namespace eval zoom {
    variable yylval {}
    variable table
    variable rules
    variable token {}
    variable yycnt 0

    namespace export yylex
}

proc zoom::YYABORT {} {
    return -code return 1
}

proc zoom::YYACCEPT {} {
    return -code return 0
}

proc zoom::yyclearin {} {
    variable token
    variable yycnt
    set token {}
    incr yycnt -1
}

proc zoom::yyerror {s} {
    puts stderr $s
}

proc zoom::setupvalues {stack pointer numsyms} {
    upvar 1 1 y
    set y {}
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        set y [lindex $stack $pointer]
        incr pointer
    }
}

proc zoom::unsetupvalues {numsyms} {
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        unset y
    }
}

array set zoom::table {
  0:257 shift
  0:258 shift
  0:260 shift
  2:257 reduce
  5:0,target 7
  15:0,target 2
  9:0 reduce
  6:259,target 10
  0:261 shift
  0:266,target 8
  2:258 reduce
  11:0 reduce
  2:259 reduce
  0:263 shift
  0:264 shift
  1:259,target 3
  4:259 reduce
  0:265 shift
  15:0 reduce
  6:259 reduce
  0:266 goto
  13:259,target 11
  0:267 goto
  0:268 goto
  0:265,target 7
  6:0,target 10
  16:0,target 14
  2:0 reduce
  1:258,target 3
  9:259,target 5
  7:262,target 11
  6:0 reduce
  0:264,target 6
  4:259,target 9
  16:259,target 14
  1:257,target 3
  12:0 reduce
  9:258,target 2
  10:0,target 1
  11:259,target 12
  0:263,target 5
  16:0 reduce
  12:257 shift
  10:259 shift
  12:258 shift
  9:257,target 1
  12:259 reduce
  9:267,target 14
  8:0,target 0
  7:269,target 13
  3:0 reduce
  1:0,target 3
  14:259 reduce
  11:0,target 12
  2:259,target 4
  16:259 reduce
  1:257 reduce
  14:259,target 6
  1:258 reduce
  7:258,target 2
  1:259 reduce
  12:267 goto
  3:259 reduce
  13:0 reduce
  9:0,target 5
  0:261,target 4
  2:258,target 4
  7:257 shift
  2:0,target 4
  5:259 reduce
  12:0,target 13
  7:258 shift
  9:257 shift
  9:258 shift
  7:257,target 1
  5:259,target 7
  9:259 reduce
  7:267,target 12
  7:262 shift
  0:260,target 3
  2:257,target 4
  4:0 reduce
  12:259,target 13
  7:267 goto
  3:0,target 8
  13:0,target 11
  9:267 goto
  8:0 accept
  7:269 goto
  10:0 reduce
  0:258,target 2
  0:268,target 10
  14:0 reduce
  12:258,target 2
  3:259,target 8
  4:0,target 9
  14:0,target 6
  0:257,target 1
  1:0 reduce
  11:259 reduce
  0:267,target 9
  13:259 reduce
  12:257,target 1
  10:259,target 15
  12:267,target 16
  5:0 reduce
}

array set zoom::rules {
  9,l 268
  11,l 268
  2,l 266
  6,l 268
  12,l 269
  3,l 267
  7,l 268
  13,l 269
  0,l 270
  4,l 267
  8,l 268
  10,l 268
  14,l 269
  1,l 266
  5,l 268
}

array set zoom::rules {
  5,dc 1
  0,dc 1
  12,dc 1
  8,dc 1
  3,dc 1
  10,dc 1
  6,dc 2
  1,dc 1
  13,dc 1
  9,dc 1
  4,dc 1
  11,dc 2
  7,dc 1
  2,dc 2
  14,dc 2
}

array set zoom::rules {
  13,line 38
  7,line 30
  10,line 33
  4,line 25
  1,line 20
  9,line 32
  12,line 37
  6,line 29
  3,line 24
  14,line 39
  8,line 31
  11,line 34
  5,line 28
  2,line 21
}

proc zoom::yyparse {} {
    variable yylval
    variable table
    variable rules
    variable token
    variable yycnt

    set state_stack {0}
    set value_stack {{}}
    set token ""
    set accepted 0

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
        if {![info exists table($state:$token)]} {
            # pop off states until error token accepted
            while {[llength $state_stack] > 0 && \
                       ![info exists table($state:error)]} {
                set state_stack [lrange $state_stack 0 end-1]
                set value_stack [lrange $value_stack 0 \
                                       [expr {[llength $state_stack] - 1}]]
                set state [lindex $state_stack end]
            }
            if {[llength $state_stack] == 0} {
                yyerror "parse error"
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
                    2 { zoom::yyclearin }
                    3 { set _ $1 }
                    4 { set _ $1 }
                    5 { Zoom $1 $1 }
                    6 { Zoom $1 $2 }
                    7 { PanZoomDialog }
                    8 { PanZoomDestroyDialog }
                    9 { Zoom 2 2 }
                    10 { Zoom .5 .5 }
                    12 { ZoomToFit }
                    13 { global zoom; set current(zoom) "$1 $1"; ChangeZoom }
                    14 { global zoom; set current(zoom) "$1 $2"; ChangeZoom }
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

proc zoom::yyerror {msg} {
     puts stderr "$msg:"
     puts stderr "$zoom::yy_current_buffer"
     puts stderr [format "zoom %*s" $zoom::index_ ^]
}
