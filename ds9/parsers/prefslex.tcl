package provide DS9 1.0

######
# Begin autogenerated fickle (version 2.1) routines.
# Although fickle itself is protected by the GNU Public License (GPL)
# all user-supplied functions are protected by their respective
# author's license.  See http://mini.net/tcl/fickle for other details.
######

namespace eval prefs {
    variable yylval

    variable yytext {}
    variable yyleng 0
    variable yyin stdin
    variable yyout stdout
    variable yy_current_buffer {}

    variable yylineno 1

    variable index_ 0
    variable done_ 0
}

# ECHO copies yytext to the scanner's output if no arguments are
# given.  The scanner writes its ECHO output to the yyout global
# (default, stdout), which may be redefined by the user simply by
# assigning it to some other channel.
#   -- from the flex(1) man page
proc prefs::ECHO {{s ""}} {
    variable yytext
    variable yyout

    if {$s == ""} {
        puts -nonewline $yyout $yytext
    } else {
        puts -nonewline $yyout $s
    }
}

# YY_FLUSH_BUFFER flushes the scanner's internal buffer so that the
# next time the scanner attempts to match a token, it will first
# refill the buffer using YY_INPUT.
#   -- from the flex(1) man page
proc prefs::YY_FLUSH_BUFFER {} {
    variable yy_current_buffer
    variable index_
    variable done_

    set yy_current_buffer ""
    set index_ 0
    set done_ 0
}

# yyrestart(new_file) may be called to point yyin at the new input
# file.  The switch-over to the new file is immediate (any previously
# buffered-up input is lost).  Note that calling yyrestart with yyin
# as an argument thus throws away the current input buffer and
# continues scanning the same input file.
#   -- from the flex(1) man page
proc prefs::yyrestart {new_file} {
    variable yyin

    set yyin $new_file
    YY_FLUSH_BUFFER
}

# The nature of how it gets its input can be controlled by defining
# the YY_INPUT macro.  YY_INPUT's calling sequence is
# "YY_INPUT(buf,result,max_size)".  Its action is to place up to
# max_size characters in the character array buf and return in the
# integer variable result either the number of characters read or the
# constant YY_NULL (0 on Unix systems) to indicate EOF.  The default
# YY_INPUT reads from the global file-pointer "yyin".
#   -- from the flex(1) man page
proc prefs::YY_INPUT {buf result max_size} {
    variable yyin

    upvar $result ret_val
    upvar $buf new_data
    if {$yyin != ""} {
        set new_data [read $yyin $max_size]
        set ret_val [string length $new_data]
    } else {
        set new_data ""
        set ret_val 0
    }
}

# yy_scan_string sets up input buffers for scanning in-memory
# strings instead of files.  Note that switching input sources does
# not change the start condition.
#   -- from the flex(1) man page
proc prefs::yy_scan_string {str} {
    variable yy_current_buffer
    variable yyin

    append yy_current_buffer $str
    set yyin ""
}

# unput(c) puts the character c back onto the input stream.  It will
# be the next character scanned.
#   -- from the flex(1) man page
proc prefs::unput {c} {
    variable yy_current_buffer
    variable index_

    set s [string range $yy_current_buffer 0 [expr {$index_ - 1}]]
    append s $c
    set yy_current_buffer [append s [string range $yy_current_buffer $index_ end]]
}

# Returns all but the first n characters of the current token back to
# the input stream, where they will be rescanned when the scanner
# looks for the next match.  yytext and yyleng are adjusted
# appropriately.
#   -- from the flex(1) man page
proc prefs::yyless {n} {
    variable yy_current_buffer
    variable index_
    variable yytext
    variable yyleng

    set s [string range $yy_current_buffer 0 [expr {$index_ - 1}]]
    append s [string range $yytext $n end]
    set yy_current_buffer [append s [string range $yy_current_buffer $index_ end]]
    set yytext [string range $yytext 0 [expr {$n - 1}]]
    set yyleng [string length $yytext]
}

# input() reads the next character from the input stream.
#   -- from the flex(1) man page
proc prefs::input {} {
    variable yy_current_buffer
    variable index_
    variable done_

    if {[string length $yy_current_buffer] - $index_ < 1024} {
       set new_buffer ""
       set new_buffer_size 0
       if {$done_ == 0} {
           YY_INPUT new_buffer new_buffer_size 1024
           append yy_current_buffer $new_buffer
           if {$new_buffer_size == 0} {
               set done_ 1
           }
       }
       if $done_ {
           if {[string length $yy_current_buffer] - $index_ == 0} {
               return {}
           }
        }
    }
    set c [string index $yy_current_buffer $index_]
    incr index_
    return $c
}

######
# autogenerated yylex function created by fickle
######

# Whenever yylex() is called, it scans tokens from the global input
# file yyin (which defaults to stdin).  It continues until it either
# reaches an end-of-file (at which point it returns the value 0) or
# one of its actions executes a return statement.
#   -- from the flex(1) man page
proc prefs::yylex {} {
    variable yylval

    variable yytext
    variable yylineno
    variable yyleng
    variable yy_current_buffer
    variable yy_flex_debug

    variable index_
    variable done_
    variable state_table_

set YES_ 257
set NO_ 258
set ON_ 259
set OFF_ 260
set TRUE_ 261
set FALSE_ 262
set INT_ 263
set STRING_ 264
set BGCOLOR_ 265
set CLEAR_ 266
set IRAFALIGN_ 267
set NANCOLOR_ 268
set PRECISION_ 269
set THREADS_ 270

    while {1} {
        if {[string length $yy_current_buffer] - $index_ < 1024} {
            if {$done_ == 0} {
	        set buffer_size 0
                set new_buffer ""
                YY_INPUT new_buffer buffer_size 1024
                append yy_current_buffer $new_buffer
                if {$buffer_size == 0 && \
                        [string length $yy_current_buffer] - $index_ == 0} {
                    set done_ 1
                }
            }
            if $done_ {
                if {[string length $yy_current_buffer] - $index_ == 0} {
                    break
                }
            }            
        }
        set yyleng 0
        set matched_rule -1
        # rule 0: bgcolor
        if {[regexp -start $index_ -indices -line -nocase -- {\A(bgcolor)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 0
        }
        # rule 1: clear
        if {[regexp -start $index_ -indices -line -nocase -- {\A(clear)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 1
        }
        # rule 2: irafalign
        if {[regexp -start $index_ -indices -line -nocase -- {\A(irafalign)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 2
        }
        # rule 3: nancolor
        if {[regexp -start $index_ -indices -line -nocase -- {\A(nancolor)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 3
        }
        # rule 4: precision
        if {[regexp -start $index_ -indices -line -nocase -- {\A(precision)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 4
        }
        # rule 5: threads
        if {[regexp -start $index_ -indices -line -nocase -- {\A(threads)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 5
        }
        # rule 6: yes
        if {[regexp -start $index_ -indices -line -nocase -- {\A(yes)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 6
        }
        # rule 7: no
        if {[regexp -start $index_ -indices -line -nocase -- {\A(no)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 7
        }
        # rule 8: on
        if {[regexp -start $index_ -indices -line -nocase -- {\A(on)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 8
        }
        # rule 9: off
        if {[regexp -start $index_ -indices -line -nocase -- {\A(off)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 9
        }
        # rule 10: true
        if {[regexp -start $index_ -indices -line -nocase -- {\A(true)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 10
        }
        # rule 11: false
        if {[regexp -start $index_ -indices -line -nocase -- {\A(false)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 11
        }
        # rule 12: [+-]?{D}+
        if {[regexp -start $index_ -indices -line -nocase -- {\A([+-]?([0-9])+)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 12
        }
        # rule 13: \"[^\"]*\"
        if {[regexp -start $index_ -indices -line -nocase -- {\A(\"[^\"]*\")} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 13
        }
        # rule 14: \'[^\']*\'
        if {[regexp -start $index_ -indices -line -nocase -- {\A(\'[^\']*\')} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 14
        }
        # rule 15: \{[^\}]*\}
        if {[regexp -start $index_ -indices -line -nocase -- {\A(\{[^\}]*\})} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 15
        }
        # rule 16: \S+\S+
        if {[regexp -start $index_ -indices -line -nocase -- {\A(\S+\S+)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 16
        }
        # rule 17: \s
        if {[regexp -start $index_ -indices -line -nocase -- {\A(\s)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 17
        }
        # rule 18: .
        if {[regexp -start $index_ -indices -line -nocase -- {\A(.)} $yy_current_buffer match] > 0 && \
                [lindex $match 1] - $index_ + 1 > $yyleng} {
            set yytext [string range $yy_current_buffer $index_ [lindex $match 1]]
            set yyleng [string length $yytext]
            set matched_rule 18
        }
        if {$matched_rule == -1} {
            set yytext [string index $yy_current_buffer $index_]
            set yyleng 1
        }
        incr index_ $yyleng
        # workaround for Tcl's circumflex behavior
        if {[string index $yytext end] == "\n"} {
            set yy_current_buffer [string range $yy_current_buffer $index_ end]
            set index_ 0
        }
        set numlines [expr {[llength [split $yytext "\n"]] - 1}]
        switch -- $matched_rule {
            0 {
return $BGCOLOR_
            }
            1 {
return $CLEAR_
            }
            2 {
return $IRAFALIGN_
            }
            3 {
return $NANCOLOR_
            }
            4 {
return $PRECISION_
            }
            5 {
return $THREADS_
            }
            6 {
return $YES_
            }
            7 {
return $NO_
            }
            8 {
return $ON_
            }
            9 {
return $OFF_
            }
            10 {
return $TRUE_
            }
            11 {
return $FALSE_
            }
            12 {
set yylval $yytext; return $INT_
            }
            13 {
set yylval [string range $yytext 1 end-1]; return $STRING_
            }
            14 {
set yylval [string range $yytext 1 end-1]; return $STRING_
            }
            15 {
set yylval [string range $yytext 1 end-1]; return $STRING_
            }
            16 {
set yylval $yytext; return $STRING_
            }
            17 {
# ignore whitespace
            }
            18 {
set yylval $yytext; return $yylval
            }
            default
                { puts stderr "unmatched token: $yytext"; exit -1 }
        }
        incr yylineno $numlines
    }
    return 0
}
######
# end autogenerated fickle functions
######
