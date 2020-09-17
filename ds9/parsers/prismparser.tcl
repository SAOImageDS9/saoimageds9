package provide DS9 1.0

######
# Begin autogenerated taccle (version 1.3) routines.
# Although taccle itself is protected by the GNU Public License (GPL)
# all user-supplied functions are protected by their respective
# author's license.  See http://mini.net/tcl/taccle for other details.
######

namespace eval prism {
    variable yylval {}
    variable table
    variable rules
    variable token {}
    variable yycnt 0
    variable yyerr 0
    variable save_state 0

    namespace export yylex
}

proc prism::YYABORT {} {
    return -code return 1
}

proc prism::YYACCEPT {} {
    return -code return 0
}

proc prism::YYERROR {} {
    variable yyerr
    set yyerr 1
}

proc prism::yyclearin {} {
    variable token
    variable yycnt
    set token {}
    incr yycnt -1
}

proc prism::yyerror {s} {
    puts stderr $s
}

proc prism::setupvalues {stack pointer numsyms} {
    upvar 1 1 y
    set y {}
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        set y [lindex $stack $pointer]
        incr pointer
    }
}

proc prism::unsetupvalues {numsyms} {
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        unset y
    }
}

array set prism::table {
  48:276,target 54
  10:280,target 34
  55:279,target 32
  50:259,target 1
  26:257,target 42
  6:259,target 18
  15:y,target 28
  52:287,target 58
  27:Y,target 37
  38:259,target 45
  26:257 reduce
  6:259 reduce
  10:298,target 41
  18:289,target 45
  44:x shift
  26:259 reduce
  48:z,target 29
  44:y shift
  6:0,target 18
  44:z shift
  26:276,target 42
  2:0 reduce
  33:z,target 36
  15:297,target 33
  27:259,target 37
  25:z,target 40
  64:0,target 28
  50:257,target 1
  35:259 reduce
  30:Z,target 35
  29:Z,target 41
  16:259,target 20
  17:0,target 0
  66:0 reduce
  56:278 shift
  56:279 shift
  26:275 reduce
  48:x,target 27
  26:276 reduce
  0:273,target 15
  56:279,target 60
  44:259 shift
  26:277 reduce
  8:X shift
  51:259,target 2
  33:x,target 36
  33:277,target 36
  8:Y shift
  27:257,target 37
  25:x,target 40
  8:Z shift
  21:0 reduce
  65:278 shift
  62:278,target 59
  44:296,target 48
  8:y,target 28
  65:279 shift
  14:259 reduce
  42:0 reduce
  30:X,target 35
  29:X,target 41
  40:259,target 49
  39:259,target 48
  56:295 goto
  27:276,target 37
  3:259 reduce
  5:291,target 22
  28:259,target 39
  27:y,target 37
  0:271,target 13
  23:259 reduce
  51:257,target 2
  33:275,target 36
  15:293,target 43
  7:257,target 23
  17:0 accept
  27:X reduce
  27:Y reduce
  24:Y,target 38
  65:295 goto
  32:257 shift
  27:Z reduce
  48:X shift
  48:Y shift
  60:0 reduce
  59:0 reduce
  48:Z shift
  0:290,target 18
  3:0,target 11
  30:z,target 35
  29:z,target 41
  57:Z,target 26
  53:278 reduce
  61:0,target 27
  53:279 reduce
  62:295,target 64
  28:257,target 39
  0:268,target 10
  8:259,target 30
  41:259 shift
  26:Z,target 42
  14:0 reduce
  24:X reduce
  22:0,target 13
  24:Y reduce
  41:259,target 47
  8:x shift
  14:0,target 7
  24:Z reduce
  62:278 shift
  44:296 goto
  8:y shift
  62:279 shift
  44:297 goto
  8:z shift
  11:259 reduce
  50:257 reduce
  50:258 reduce
  46:258,target 51
  28:276,target 39
  50:259 reduce
  30:x,target 35
  30:259,target 35
  29:x,target 41
  29:259,target 41
  57:X,target 24
  57:277,target 55
  52:257,target 50
  0:260 shift
  0:259 shift
  0:266,target 8
  0:261 shift
  9:0 reduce
  0:262 shift
  11:0 reduce
  19:259 reduce
  20:259 reduce
  63:276,target 54
  26:X,target 42
  0:263 shift
  0:264 shift
  18:259,target 4
  64:259,target 28
  58:259 reduce
  0:265 shift
  8:297,target 33
  0:266 shift
  0:267 shift
  62:295 goto
  57:296,target 63
  28:257 reduce
  0:268 shift
  8:259 shift
  27:x reduce
  0:269 shift
  0:270 shift
  28:259 reduce
  27:y reduce
  0:271 shift
  24:y,target 38
  27:z reduce
  0:272 shift
  48:x shift
  44:Y,target 25
  30:257,target 35
  29:257,target 41
  0:273 shift
  9:259,target 14
  57:275,target 53
  48:y shift
  0:274 shift
  48:z shift
  28:Y,target 39
  6:0 reduce
  0:264,target 6
  57:z,target 29
  42:259,target 9
  24:277,target 38
  37:259 reduce
  0:0,target 6
  53:278,target 30
  50:0 reduce
  49:0 reduce
  30:276,target 35
  29:276,target 41
  26:z,target 42
  57:294,target 62
  24:x reduce
  31:259,target 16
  24:y reduce
  50:0,target 1
  49:0,target 5
  46:257 shift
  28:275 reduce
  24:z reduce
  46:258 shift
  42:0,target 9
  28:276 reduce
  46:259 reduce
  28:277 reduce
  0:288 goto
  3:0 reduce
  0:290 goto
  10:285,target 39
  15:Z,target 26
  18:0,target 3
  0:262,target 4
  11:0,target 21
  19:259,target 17
  20:259,target 23
  57:x,target 27
  16:259 reduce
  24:275,target 38
  46:0 reduce
  26:x,target 42
  5:257 shift
  25:257 reduce
  5:259 shift
  8:292 goto
  65:278,target 59
  25:259 reduce
  0:0 reduce
  8:296 goto
  10:283,target 37
  15:X,target 24
  64:259 reduce
  43:259,target 15
  25:277,target 40
  8:297 goto
  0:260,target 2
  0:259,target 1
  44:y,target 28
  22:0 reduce
  54:278,target 31
  28:y,target 39
  43:0 reduce
  34:259 reduce
  48:Y,target 25
  64:0 reduce
  33:Y,target 36
  55:278 reduce
  46:287 goto
  25:Y,target 40
  55:279 reduce
  25:275 reduce
  8:Z,target 26
  25:276 reduce
  21:259,target 24
  66:259,target 29
  48:277,target 55
  43:259 reduce
  25:277 reduce
  10:281,target 35
  25:275,target 40
  18:0 reduce
  28:X reduce
  28:Y reduce
  15:z,target 29
  28:Z reduce
  13:259 reduce
  52:257 shift
  46:0,target 25
  65:295,target 66
  52:258 shift
  32:257,target 46
  27:Z,target 37
  61:0 reduce
  31:0,target 16
  48:296,target 57
  23:0,target 22
  5:291 goto
  2:259 reduce
  44:259,target 30
  26:277,target 42
  8:X,target 24
  1:259,target 8
  22:259 reduce
  48:275,target 53
  55:278,target 32
  46:287,target 52
  61:259 reduce
  50:258,target 1
  25:X reduce
  25:Y reduce
  33:259,target 36
  25:Z reduce
  15:x,target 27
  31:259 reduce
  27:X,target 37
  48:294,target 56
  22:259,target 13
  48:y,target 28
  0:274,target 16
  26:275,target 42
  33:y,target 36
  15:296,target 44
  25:y,target 40
  40:259 reduce
  39:259 reduce
  62:279,target 60
  44:297,target 33
  8:z,target 29
  11:259,target 21
  33:257,target 36
  30:Y,target 35
  29:Y,target 41
  52:287 goto
  28:x reduce
  28:y reduce
  48:259 shift
  45:259,target 49
  28:z reduce
  27:277,target 37
  1:0,target 8
  2:259,target 12
  27:z,target 37
  0:272,target 14
  66:0,target 29
  56:278,target 59
  58:0,target 26
  51:258,target 2
  33:276,target 36
  51:0,target 2
  18:259 reduce
  43:0,target 15
  34:259,target 44
  8:x,target 27
  24:Z,target 38
  57:259 shift
  7:257 shift
  19:0,target 17
  20:0,target 23
  51:0 reduce
  27:257 reduce
  25:x reduce
  25:y reduce
  23:259,target 22
  27:259 reduce
  25:z reduce
  48:275 shift
  27:275,target 37
  48:276 shift
  10:280 shift
  66:259 reduce
  48:277 shift
  27:x,target 37
  0:269,target 11
  0:270,target 12
  10:281 shift
  10:282 shift
  10:283 shift
  12:259,target 42
  15:X shift
  57:259,target 30
  10:284 shift
  15:Y shift
  10:285 shift
  15:Z shift
  36:259 reduce
  10:286 shift
  24:X,target 38
  57:275 shift
  57:276 shift
  47:0 reduce
  57:X shift
  57:277 shift
  57:Y shift
  46:259,target 25
  28:277,target 39
  0:288,target 17
  57:Z shift
  56:295,target 61
  3:259,target 11
  30:y,target 35
  29:y,target 41
  27:275 reduce
  57:Y,target 25
  27:276 reduce
  52:258,target 51
  45:259 shift
  27:277 reduce
  1:0 reduce
  0:267,target 9
  48:294 goto
  35:259,target 43
  63:277,target 55
  26:Y,target 42
  10:298 goto
  18:289 goto
  48:296 goto
  23:0 reduce
  48:297 goto
  33:X reduce
  15:259 shift
  33:Y reduce
  33:Z reduce
  57:297,target 33
  24:259,target 38
  57:294 goto
  46:257,target 50
  28:275,target 39
  24:z,target 38
  4:259 shift
  24:257 reduce
  57:296 goto
  44:Z,target 26
  57:297 goto
  57:276,target 54
  47:0,target 10
  24:259 reduce
  28:Z,target 39
  13:259,target 19
  58:259,target 26
  0:265,target 7
  63:275,target 53
  16:0,target 20
  19:0 reduce
  20:0 reduce
  30:X reduce
  29:X reduce
  33:257 reduce
  30:Y reduce
  29:Y reduce
  8:296,target 32
  53:279,target 30
  30:Z reduce
  29:Z reduce
  47:259,target 10
  33:259 reduce
  30:277,target 35
  29:277,target 41
  15:x shift
  4:259,target 19
  15:y shift
  24:257,target 38
  15:z shift
  24:x,target 38
  54:278 reduce
  63:294,target 65
  54:279 reduce
  44:X,target 24
  57:x shift
  36:259,target 46
  10:286,target 40
  24:275 reduce
  57:y shift
  28:X,target 39
  24:276 reduce
  57:z shift
  42:259 reduce
  0:263,target 5
  24:277 reduce
  63:275 shift
  16:0 reduce
  63:276 shift
  57:y,target 28
  26:X reduce
  24:276,target 38
  63:277 shift
  26:Y reduce
  26:Z reduce
  25:259,target 40
  12:259 shift
  51:257 reduce
  33:275 reduce
  30:275,target 35
  29:275,target 41
  26:y,target 42
  15:293 goto
  58:0 reduce
  51:258 reduce
  33:276 reduce
  51:259 reduce
  33:x reduce
  33:277 reduce
  33:y reduce
  15:296 goto
  65:279,target 60
  33:z reduce
  14:259,target 7
  15:297 goto
  60:259,target 34
  59:259,target 33
  1:259 reduce
  10:284,target 38
  15:Y,target 25
  21:259 reduce
  0:261,target 3
  9:0,target 14
  13:0 reduce
  44:z,target 29
  2:0,target 12
  60:259 reduce
  59:259 reduce
  54:279,target 31
  48:259,target 30
  28:z,target 39
  63:294 goto
  44:X shift
  25:257,target 40
  5:259,target 21
  8:292,target 31
  60:0,target 34
  59:0,target 33
  48:Z,target 26
  44:Y shift
  30:257 reduce
  29:257 reduce
  9:259 reduce
  44:Z shift
  33:Z,target 36
  30:x reduce
  30:259 reduce
  29:x reduce
  29:259 reduce
  30:y reduce
  29:y reduce
  25:Z,target 40
  37:259,target 47
  30:z reduce
  29:z reduce
  21:0,target 24
  13:0,target 19
  10:282,target 36
  25:276,target 40
  44:x,target 27
  38:259 reduce
  26:259,target 42
  31:0 reduce
  28:x,target 39
  5:257,target 20
  48:X,target 24
  26:x reduce
  48:297,target 33
  33:X,target 36
  30:275 reduce
  29:275 reduce
  26:y reduce
  15:259,target 30
  61:259,target 27
  30:276 reduce
  29:276 reduce
  26:z reduce
  25:X,target 40
  47:259 reduce
  30:277 reduce
  29:277 reduce
  8:Y,target 25
}

array set prism::rules {
  9,l 290
  11,l 290
  32,l 294
  6,l 290
  28,l 293
  49,l 298
  3,l 288
  25,l 292
  46,l 298
  0,l 299
  22,l 290
  43,l 298
  18,l 290
  40,l 297
  39,l 297
  15,l 290
  36,l 296
  12,l 290
  33,l 295
  7,l 290
  29,l 293
  30,l 294
  4,l 289
  26,l 292
  47,l 298
  1,l 287
  23,l 291
  44,l 298
  19,l 290
  20,l 290
  41,l 297
  16,l 290
  37,l 297
  13,l 290
  34,l 295
  8,l 290
  10,l 290
  31,l 294
  5,l 288
  27,l 293
  48,l 298
  2,l 287
  24,l 291
  45,l 298
  21,l 290
  42,l 297
  17,l 290
  38,l 297
  14,l 290
  35,l 296
}

array set prism::rules {
  12,dc 1
  26,dc 4
  3,dc 1
  41,dc 1
  18,dc 1
  33,dc 1
  9,dc 2
  47,dc 1
  11,dc 1
  25,dc 2
  2,dc 1
  40,dc 1
  39,dc 1
  17,dc 2
  32,dc 1
  8,dc 1
  46,dc 1
  10,dc 3
  24,dc 1
  1,dc 1
  38,dc 1
  16,dc 2
  31,dc 1
  7,dc 1
  45,dc 1
  23,dc 1
  0,dc 1
  37,dc 1
  15,dc 2
  29,dc 6
  30,dc 1
  6,dc 0
  44,dc 1
  22,dc 2
  36,dc 1
  14,dc 1
  28,dc 5
  5,dc 3
  43,dc 1
  21,dc 1
  35,dc 1
  49,dc 1
  13,dc 2
  27,dc 4
  4,dc 0
  42,dc 1
  19,dc 1
  20,dc 1
  34,dc 1
  48,dc 1
}

array set prism::rules {
  41,line 108
  7,line 60
  37,line 104
  4,line 55
  34,line 97
  1,line 51
  31,line 92
  27,line 87
  24,line 80
  21,line 75
  17,line 71
  14,line 67
  11,line 64
  49,line 118
  46,line 115
  43,line 112
  9,line 62
  40,line 107
  39,line 106
  6,line 59
  36,line 101
  3,line 55
  33,line 96
  4,e 1
  29,line 88
  30,line 91
  26,line 84
  23,line 79
  19,line 73
  20,line 74
  16,line 69
  13,line 66
  10,line 63
  48,line 117
  45,line 114
  42,line 109
  8,line 61
  38,line 105
  5,line 56
  35,line 100
  2,line 52
  32,line 93
  28,line 88
  25,line 83
  22,line 76
  18,line 72
  15,line 68
  12,line 65
  47,line 116
  44,line 113
}

array set prism::lr1_table {
  66,trans {}
  35 {{43 259 1}}
  85,trans {}
  14,trans {}
  36 {{46 259 1}}
  33,trans {}
  37 {{47 259 1}}
  52,trans {}
  38 {{45 259 1}}
  71,trans {}
  40 {{49 259 1}}
  39 {{48 259 1}}
  90,trans {}
  89,trans {}
  18,trans {{289 53}}
  41 {{10 {0 259} 2}}
  1,trans {}
  37,trans {}
  42 {{9 {0 259} 2}}
  56,trans {}
  43 {{38 {259 X Y Z x y z} 1}}
  75,trans {}
  44 {{40 {259 X Y Z x y z} 1}}
  23,trans {}
  45 {{42 {259 X Y Z x y z} 1}}
  5,trans {{257 20} {259 21} {291 22}}
  42,trans {}
  46 {{37 {259 X Y Z x y z} 1}}
  61,trans {}
  47 {{39 {259 X Y Z x y z} 1}}
  80,trans {}
  79,trans {}
  48 {{41 {259 X Y Z x y z} 1}}
  27,trans {}
  50 {{15 {0 259} 2}}
  49 {{35 {259 X Y Z x y z} 1}}
  9,trans {}
  46,trans {}
  51 {{27 {0 259} 1} {28 {0 259} 1} {29 {0 259} 1} {35 {259 275 276 277 X Y Z x y z} 0} {36 {259 275 276 277 X Y Z x y z} 0} {37 {259 275 276 277 X Y Z x y z} 0} {38 {259 275 276 277 X Y Z x y z} 0} {39 {259 275 276 277 X Y Z x y z} 0} {40 {259 275 276 277 X Y Z x y z} 0} {41 {259 275 276 277 X Y Z x y z} 0} {42 {259 275 276 277 X Y Z x y z} 0}}
  65,trans {}
  52 {{36 {259 X Y Z x y z} 1}}
  84,trans {}
  53 {{5 0 2}}
  13,trans {}
  32,trans {{257 54}}
  54 {{25 {0 259} 2} {26 {0 259} 2} {1 {257 258} 0} {2 {257 258} 0}}
  51,trans {{X 56} {Y 57} {Z 58} {x 59} {y 60} {z 61} {259 62} {296 63} {297 64}}
  55 {{10 {0 259} 3}}
  70,trans {}
  69,trans {}
  56 {{38 {259 275 276 277 X Y Z x y z} 1}}
  88,trans {{275 69} {276 70} {277 71} {294 91}}
  57 {{40 {259 275 276 277 X Y Z x y z} 1}}
  17,trans {}
  0,trans {{259 1} {260 2} {261 3} {262 4} {263 5} {264 6} {265 7} {266 8} {267 9} {268 10} {269 11} {270 12} {271 13} {272 14} {273 15} {274 16} {288 17} {290 18}}
  58 {{42 {259 275 276 277 X Y Z x y z} 1}}
  36,trans {}
  55,trans {}
  60 {{39 {259 275 276 277 X Y Z x y z} 1}}
  59 {{37 {259 275 276 277 X Y Z x y z} 1}}
  74,trans {}
  61 {{41 {259 275 276 277 X Y Z x y z} 1}}
  62 {{35 {259 275 276 277 X Y Z x y z} 1}}
  22,trans {}
  4,trans {{259 19}}
  63 {{27 {0 259} 2} {28 {0 259} 2} {29 {0 259} 2} {30 {278 279} 0} {31 {278 279} 0} {32 {278 279} 0} {35 {259 275 276 277 X Y Z x y z} 0} {36 {259 275 276 277 X Y Z x y z} 0} {37 {259 275 276 277 X Y Z x y z} 0} {38 {259 275 276 277 X Y Z x y z} 0} {39 {259 275 276 277 X Y Z x y z} 0} {40 {259 275 276 277 X Y Z x y z} 0} {41 {259 275 276 277 X Y Z x y z} 0} {42 {259 275 276 277 X Y Z x y z} 0}}
  41,trans {{259 55}}
  60,trans {}
  59,trans {}
  64 {{36 {259 275 276 277 X Y Z x y z} 1}}
  78,trans {}
  65 {{5 0 3}}
  66 {{1 {257 258} 1}}
  26,trans {}
  8,trans {{X 24} {Y 25} {Z 26} {x 27} {y 28} {z 29} {259 30} {292 31} {296 32} {297 33}}
  67 {{2 {257 258} 1}}
  45,trans {}
  64,trans {}
  68 {{26 {0 259} 3} {1 {0 259} 0} {2 {0 259} 0}}
  83,trans {}
  70 {{31 {278 279} 1}}
  69 {{30 {278 279} 1}}
  12,trans {{259 42}}
  71 {{32 {278 279} 1}}
  31,trans {}
  72 {{27 {0 259} 3} {33 {0 259} 0} {34 {0 259} 0}}
  50,trans {}
  49,trans {}
  68,trans {{257 74} {258 75} {287 76}}
  73 {{28 {0 259} 3} {29 {0 259} 3} {30 {278 279} 0} {31 {278 279} 0} {32 {278 279} 0} {35 {275 276 277} 0} {36 {275 276 277} 0} {37 {275 276 277} 0} {38 {275 276 277} 0} {39 {275 276 277} 0} {40 {275 276 277} 0} {41 {275 276 277} 0} {42 {275 276 277} 0}}
  87,trans {{278 77} {279 78} {295 90}}
  74 {{1 {0 259} 1}}
  16,trans {}
  75 {{2 {0 259} 1}}
  35,trans {}
  76 {{26 {0 259} 4}}
  54,trans {{257 66} {258 67} {287 68}}
  73,trans {{X 80} {Y 81} {Z 82} {x 83} {y 84} {z 85} {259 86} {275 69} {276 70} {277 71} {294 87} {296 88} {297 89}}
  77 {{33 {0 259} 1}}
  92,trans {}
  78 {{34 {0 259} 1}}
  21,trans {}
  3,trans {}
  80 {{38 {275 276 277} 1}}
  79 {{27 {0 259} 4}}
  40,trans {}
  39,trans {}
  81 {{40 {275 276 277} 1}}
  58,trans {}
  10 {{10 {0 259} 1} {43 259 0} {44 259 0} {45 259 0} {46 259 0} {47 259 0} {48 259 0} {49 259 0}}
  77,trans {}
  82 {{42 {275 276 277} 1}}
  11 {{21 {0 259} 1}}
  83 {{37 {275 276 277} 1}}
  25,trans {}
  12 {{9 {0 259} 1}}
  7,trans {{257 23}}
  84 {{39 {275 276 277} 1}}
  44,trans {}
  13 {{19 {0 259} 1}}
  85 {{41 {275 276 277} 1}}
  63,trans {{X 56} {Y 57} {Z 58} {x 59} {y 60} {z 61} {259 62} {275 69} {276 70} {277 71} {294 72} {296 73} {297 64}}
  14 {{7 {0 259} 1}}
  82,trans {}
  86 {{35 {275 276 277} 1}}
  11,trans {}
  15 {{15 {0 259} 1} {27 {0 259} 0} {28 {0 259} 0} {29 {0 259} 0} {35 {259 X Y Z x y z} 0} {36 {259 X Y Z x y z} 0} {37 {259 X Y Z x y z} 0} {38 {259 X Y Z x y z} 0} {39 {259 X Y Z x y z} 0} {40 {259 X Y Z x y z} 0} {41 {259 X Y Z x y z} 0} {42 {259 X Y Z x y z} 0}}
  87 {{28 {0 259} 4} {33 {0 259} 0} {34 {0 259} 0}}
  30,trans {}
  29,trans {}
  16 {{20 {0 259} 1}}
  88 {{29 {0 259} 4} {30 {278 279} 0} {31 {278 279} 0} {32 {278 279} 0}}
  48,trans {}
  0 {{0 0 0} {3 0 0} {5 0 0} {6 {0 259} 0} {7 {0 259} 0} {8 {0 259} 0} {9 {0 259} 0} {10 {0 259} 0} {11 {0 259} 0} {12 {0 259} 0} {13 {0 259} 0} {14 {0 259} 0} {15 {0 259} 0} {16 {0 259} 0} {17 {0 259} 0} {18 {0 259} 0} {19 {0 259} 0} {20 {0 259} 0} {21 {0 259} 0} {22 {0 259} 0}}
  17 {{0 0 1}}
  90 {{28 {0 259} 5}}
  89 {{36 {275 276 277} 1}}
  67,trans {}
  1 {{8 {0 259} 1}}
  18 {{3 0 1} {5 0 1} {4 259 0}}
  91 {{29 {0 259} 5} {33 {0 259} 0} {34 {0 259} 0}}
  86,trans {}
  15,trans {{X 43} {Y 44} {Z 45} {x 46} {y 47} {z 48} {259 49} {293 50} {296 51} {297 52}}
  2 {{12 {0 259} 1}}
  19 {{17 {0 259} 2}}
  20 {{23 {0 259} 1}}
  92 {{29 {0 259} 6}}
  34,trans {}
  3 {{11 {0 259} 1}}
  21 {{24 {0 259} 1}}
  53,trans {{259 65}}
  4 {{17 {0 259} 1}}
  22 {{13 {0 259} 2}}
  72,trans {{278 77} {279 78} {295 79}}
  5 {{13 {0 259} 1} {23 {0 259} 0} {24 {0 259} 0}}
  23 {{22 {0 259} 2}}
  91,trans {{278 77} {279 78} {295 92}}
  20,trans {}
  19,trans {}
  6 {{18 {0 259} 1}}
  2,trans {}
  24 {{38 257 1}}
  38,trans {}
  7 {{22 {0 259} 1}}
  25 {{40 257 1}}
  57,trans {}
  8 {{16 {0 259} 1} {25 {0 259} 0} {26 {0 259} 0} {35 257 0} {36 257 0} {37 257 0} {38 257 0} {39 257 0} {40 257 0} {41 257 0} {42 257 0}}
  26 {{42 257 1}}
  76,trans {}
  9 {{14 {0 259} 1}}
  27 {{37 257 1}}
  24,trans {}
  6,trans {}
  28 {{39 257 1}}
  43,trans {}
  29 {{41 257 1}}
  30 {{35 257 1}}
  62,trans {}
  31 {{16 {0 259} 2}}
  81,trans {}
  10,trans {{280 34} {281 35} {282 36} {283 37} {284 38} {285 39} {286 40} {298 41}}
  32 {{25 {0 259} 1} {26 {0 259} 1}}
  28,trans {}
  33 {{36 257 1}}
  47,trans {}
  34 {{44 259 1}}
}

array set prism::token_id_table {
  286 TSV_
  286,t 0
  287 numeric
  292,line 82
  288 command
  265,title GOTO
  289 @PSEUDO1
  290 prism
  284,title RDB
  291 ext
  292 histogram
  288,line 54
  293 plot
  294 type
  295 mode
  296 cols
  262,t 0
  297 colsxyz
  298 reader
  285,line 42
  299 start'
  283,t 0
  282,line 39
  264,title FIRST
  283,title STARBASE
  278,line 34
  error,line 49
  258,t 0
  275,line 30
  279,t 0
  280,t 0
  Z,line 108
  272,line 26
  263,title EXT
  282,title SB
  268,line 22
  276,t 0
  265,line 19
  Y,t 0
  297,t 1
  262,line 16
  262,title CURRENT
  0 {$}
  0,t 0
  281,title XML
  299,title {}
  error,t 0
  258,line 8
  273,t 0
  294,t 1
  z,line 107
  261,title CLOSE
  279,title OVER
  280,title VOT
  298,title {}
  269,t 0
  270,t 0
  291,t 1
  y,t 0
  266,t 0
  260,title CLEAR
  259,title string
  297,line 103
  278,title NEW
  297,title {}
  287,t 1
  294,line 90
  error,title {}
  291,line 78
  X X
  Y Y
  Z Z
  263,t 0
  258,title float
  287,line 50
  277,title SCATTER
  284,t 0
  296,title {}
  284,line 41
  281,line 38
  260,t 0
  259,t 0
  281,t 0
  257,title integer
  277,line 32
  276,title BAR
  295,title {}
  274,line 28
  Y,line 106
  271,line 25
  277,t 0
  x x
  y y
  Z,t 0
  z z
  298,t 1
  267,line 21
  275,title LINE
  294,title {}
  264,line 18
  261,line 15
  274,t 0
  295,t 1
  257,line 7
  274,title PREV
  293,title {}
  271,t 0
  error error
  292,t 1
  y,line 105
  273,title PLOT
  z,t 0
  292,title {}
  267,t 0
  299,line 119
  Z,title {}
  288,t 1
  296,line 99
  272,title OPEN
  291,title {}
  293,line 86
  264,t 0
  285,t 0
  289,line 55
  290,line 58
  Y,title {}
  286,line 43
  271,title NEXT
  261,t 0
  283,line 40
  289,title {}
  290,title {}
  282,t 0
  279,line 35
  280,line 37
  X,title {}
  z,title {}
  276,line 31
  257,t 0
  269,title LAST
  270,title LOAD
  273,line 27
  288,title {}
  278,t 0
  299,t 1
  X,line 104
  269,line 23
  270,line 24
  y,title {}
  266,line 20
  268,title IMPORT
  275,t 0
  263,line 17
  287,title {}
  X,t 0
  296,t 1
  260,line 14
  259,line 10
  x,title {}
  272,t 0
  267,title IMAGE
  257 INT_
  286,title TSV
  293,t 1
  258 REAL_
  260 CLEAR_
  259 STRING_
  261 CLOSE_
  262 CURRENT_
  263 EXT_
  264 FIRST_
  x,line 103
  265 GOTO_
  266 HISTOGRAM_
  267 IMAGE_
  268,t 0
  268 IMPORT_
  269 LAST_
  270 LOAD_
  271 NEXT_
  272 OPEN_
  289,t 1
  290,t 1
  266,title HISTOGRAM
  273 PLOT_
  274 PREV_
  285,title CSV
  275 LINE_
  298,line 111
  276 BAR_
  277 SCATTER_
  x,t 0
  278 NEW_
  279 OVER_
  280 VOT_
  281 XML_
  282 SB_
  295,line 95
  265,t 0
  283 STARBASE_
  284 RDB_
  285 CSV_
}

proc prism::yyparse {} {
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
                    6 { PrismDialogLoad prism }
                    7 { PrismDialogLoad prism }
                    8 { PrismCmdLoad $1 }
                    9 { ProcessCmdCVAROpt PrismLoad $2 }
                    10 { PrismCmdImport $3 $2 }
                    11 { ProcessCmdCVAR0 PrismDestroy }
                    12 { ProcessCmdCVAR0 PrismClear }
                    14 { ProcessCmdCVAR0 PrismImage }
                    17 { PrismCmdRef $2 }
                    18 { ProcessCmdCVAR0 PrismTableFirst }
                    19 { ProcessCmdCVAR0 PrismTableNext }
                    20 { ProcessCmdCVAR0 PrismTablePrev }
                    21 { ProcessCmdCVAR0 PrismTableLast }
                    22 { ProcessCmdCVAR goto $2 PrismTableGoto }
                    23 { PrismCmdExt $1 }
                    24 { PrismCmdExtName $1 }
                    25 { ProcessCmdCVAR3 bar,col $1 bar,num $2 bar,minmax 0 PrismHistogramGenerate }
                    26 { ProcessCmdCVAR5 bar,col $1 bar,num $2 bar,min $3 bar,max $4 bar,minmax 1 PrismHistogramGenerate }
                    27 { ProcessCmdCVAR6 xx $1 yy $2 xerr {} yerr {} plot,type $3 plot,mode $4 PrismPlotGenerate }
                    28 { ProcessCmdCVAR6 xx $1 yy $2 xerr {} yerr $3 plot,type $4 plot,mode $5 PrismPlotGenerate }
                    29 { ProcessCmdCVAR6 xx $1 yy $2 xerr $3 yerr $4 plot,type $5 plot,mode $6 PrismPlotGenerate }
                    30 { set _ line }
                    31 { set _ bar }
                    32 { set _ scatter }
                    33 { set _ newplot }
                    34 { set _ overplot }
                    35 { set _ $1 }
                    36 { set _ $1 }
                    37 { set _ $1 }
                    38 { set _ $1 }
                    39 { set _ $1 }
                    40 { set _ $1 }
                    41 { set _ $1 }
                    42 { set _ $1 }
                    43 { set _ VOTRead }
                    44 { set _ VOTRead }
                    45 { set _ starbase_read }
                    46 { set _ starbase_read }
                    47 { set _ starbase_read }
                    48 { set _ TSVRead }
                    49 { set _ TSVRead }
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

proc prism::yyerror {msg} {
     variable yycnt
     variable yy_current_buffer
     variable index_

     ParserError $msg $yycnt $yy_current_buffer $index_
}
