glabel EnKarebaba_StateChange_Inactive
/* 00510 80A95860 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00514 80A95864 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00518 80A95868 AFB00028 */  sw      $s0, 0x0028($sp)
/* 0051C 80A9586C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00520 80A95870 AFBF002C */  sw      $ra, 0x002C($sp)
/* 00524 80A95874 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00528 80A95878 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 0052C 80A9587C 44060000 */  mfc1    $a2, $f0
/* 00530 80A95880 44070000 */  mfc1    $a3, $f0
/* 00534 80A95884 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 00538 80A95888 24A502B8 */  addiu   $a1, $a1, 0x02B8           ## $a1 = 060002B8
/* 0053C 80A9588C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00540 80A95890 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 00544 80A95894 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00548 80A95898 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 0054C 80A9589C 0C2A5530 */  jal     EnKarebaba_Hitbox_Disable
/* 00550 80A958A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00554 80A958A4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00558 80A958A8 240FC000 */  addiu   $t7, $zero, 0xC000         ## $t7 = FFFFC000
/* 0055C 80A958AC 241800C8 */  addiu   $t8, $zero, 0x00C8         ## $t8 = 000000C8
/* 00560 80A958B0 A60F00B4 */  sh      $t7, 0x00B4($s0)           ## 000000B4
/* 00564 80A958B4 A618001C */  sh      $t8, 0x001C($s0)           ## 0000001C
/* 00568 80A958B8 AE000118 */  sw      $zero, 0x0118($s0)         ## 00000118
/* 0056C 80A958BC 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 00570 80A958C0 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 00574 80A958C4 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 00578 80A958C8 E60000C4 */  swc1    $f0, 0x00C4($s0)           ## 000000C4
/* 0057C 80A958CC 3C1980A9 */  lui     $t9, %hi(EnKarebaba_Wait)    ## $t9 = 80A90000
/* 00580 80A958D0 27396184 */  addiu   $t9, $t9, %lo(EnKarebaba_Wait) ## $t9 = 80A96184
/* 00584 80A958D4 AE190190 */  sw      $t9, 0x0190($s0)           ## 00000190
/* 00588 80A958D8 8FBF002C */  lw      $ra, 0x002C($sp)
/* 0058C 80A958DC 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00590 80A958E0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00594 80A958E4 03E00008 */  jr      $ra
/* 00598 80A958E8 00000000 */  nop
