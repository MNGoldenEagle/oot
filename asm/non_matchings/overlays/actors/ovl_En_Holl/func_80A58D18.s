glabel func_80A58D18
/* 00108 80A58D18 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0010C 80A58D1C 34211CBC */  ori     $at, $at, 0x1CBC           ## $at = 00011CBC
/* 00110 80A58D20 00811021 */  addu    $v0, $a0, $at              
/* 00114 80A58D24 8C4F0000 */  lw      $t7, 0x0000($v0)           ## 00000000
/* 00118 80A58D28 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0011C 80A58D2C 27A50004 */  addiu   $a1, $sp, 0x0004           ## $a1 = FFFFFFEC
/* 00120 80A58D30 ACAF0000 */  sw      $t7, 0x0000($a1)           ## FFFFFFEC
/* 00124 80A58D34 8C4E0004 */  lw      $t6, 0x0004($v0)           ## 00000004
/* 00128 80A58D38 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0012C 80A58D3C 34211CD0 */  ori     $at, $at, 0x1CD0           ## $at = 00011CD0
/* 00130 80A58D40 ACAE0004 */  sw      $t6, 0x0004($a1)           ## FFFFFFF0
/* 00134 80A58D44 8C4F0008 */  lw      $t7, 0x0008($v0)           ## 00000008
/* 00138 80A58D48 00811821 */  addu    $v1, $a0, $at              
/* 0013C 80A58D4C 3C0A0001 */  lui     $t2, 0x0001                ## $t2 = 00010000
/* 00140 80A58D50 ACAF0008 */  sw      $t7, 0x0008($a1)           ## FFFFFFF4
/* 00144 80A58D54 8C4E000C */  lw      $t6, 0x000C($v0)           ## 0000000C
/* 00148 80A58D58 01445021 */  addu    $t2, $t2, $a0              
/* 0014C 80A58D5C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00150 80A58D60 ACAE000C */  sw      $t6, 0x000C($a1)           ## FFFFFFF8
/* 00154 80A58D64 8C4F0010 */  lw      $t7, 0x0010($v0)           ## 00000010
/* 00158 80A58D68 00240821 */  addu    $at, $at, $a0              
/* 0015C 80A58D6C ACAF0010 */  sw      $t7, 0x0010($a1)           ## FFFFFFFC
/* 00160 80A58D70 8C790000 */  lw      $t9, 0x0000($v1)           ## 00000000
/* 00164 80A58D74 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 00168 80A58D78 8C780004 */  lw      $t8, 0x0004($v1)           ## 00000004
/* 0016C 80A58D7C AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 00170 80A58D80 8C790008 */  lw      $t9, 0x0008($v1)           ## 00000008
/* 00174 80A58D84 AC590008 */  sw      $t9, 0x0008($v0)           ## 00000008
/* 00178 80A58D88 8C78000C */  lw      $t8, 0x000C($v1)           ## 0000000C
/* 0017C 80A58D8C AC58000C */  sw      $t8, 0x000C($v0)           ## 0000000C
/* 00180 80A58D90 8C790010 */  lw      $t9, 0x0010($v1)           ## 00000010
/* 00184 80A58D94 AC590010 */  sw      $t9, 0x0010($v0)           ## 00000010
/* 00188 80A58D98 8CA90000 */  lw      $t1, 0x0000($a1)           ## FFFFFFEC
/* 0018C 80A58D9C AC690000 */  sw      $t1, 0x0000($v1)           ## 00000000
/* 00190 80A58DA0 8CA80004 */  lw      $t0, 0x0004($a1)           ## FFFFFFF0
/* 00194 80A58DA4 AC680004 */  sw      $t0, 0x0004($v1)           ## 00000004
/* 00198 80A58DA8 8CA90008 */  lw      $t1, 0x0008($a1)           ## FFFFFFF4
/* 0019C 80A58DAC AC690008 */  sw      $t1, 0x0008($v1)           ## 00000008
/* 001A0 80A58DB0 8CA8000C */  lw      $t0, 0x000C($a1)           ## FFFFFFF8
/* 001A4 80A58DB4 AC68000C */  sw      $t0, 0x000C($v1)           ## 0000000C
/* 001A8 80A58DB8 8CA90010 */  lw      $t1, 0x0010($a1)           ## FFFFFFFC
/* 001AC 80A58DBC AC690010 */  sw      $t1, 0x0010($v1)           ## 00000010
/* 001B0 80A58DC0 914A1CEC */  lbu     $t2, 0x1CEC($t2)           ## 00011CEC
/* 001B4 80A58DC4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001B8 80A58DC8 394B0001 */  xori    $t3, $t2, 0x0001           ## $t3 = 00010001
/* 001BC 80A58DCC 03E00008 */  jr      $ra                        
/* 001C0 80A58DD0 A02B1CEC */  sb      $t3, 0x1CEC($at)           ## 00011CEC