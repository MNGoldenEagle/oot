glabel EnKarebaba_StateChange_Hidden
/* 001A8 80A954F8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001AC 80A954FC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001B0 80A95500 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 001B4 80A95504 0C00B58B */  jal     Actor_SetScale
              
/* 001B8 80A95508 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 001BC 80A9550C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 001C0 80A95510 3C014160 */  lui     $at, 0x4160                ## $at = 41600000
/* 001C4 80A95514 44813000 */  mtc1    $at, $f6                   ## $f6 = 14.00
/* 001C8 80A95518 C484000C */  lwc1    $f4, 0x000C($a0)           ## 0000000C
/* 001CC 80A9551C 3C0F80A9 */  lui     $t7, %hi(EnKarebaba_Grow)    ## $t7 = 80A90000
/* 001D0 80A95520 240EC000 */  addiu   $t6, $zero, 0xC000         ## $t6 = FFFFC000
/* 001D4 80A95524 46062200 */  add.s   $f8, $f4, $f6              
/* 001D8 80A95528 25EF5940 */  addiu   $t7, $t7, %lo(EnKarebaba_Grow) ## $t7 = 80A95940
/* 001DC 80A9552C A48E00B4 */  sh      $t6, 0x00B4($a0)           ## 000000B4
/* 001E0 80A95530 AC8F0190 */  sw      $t7, 0x0190($a0)           ## 00000190
/* 001E4 80A95534 E4880028 */  swc1    $f8, 0x0028($a0)           ## 00000028
/* 001E8 80A95538 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001EC 80A9553C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001F0 80A95540 03E00008 */  jr      $ra                        
/* 001F4 80A95544 00000000 */  nop
