glabel func_800EE29C
/* B6543C 800EE29C 3C048013 */  lui   $a0, %hi(D_80131858) # $a0, 0x8013
/* B65440 800EE2A0 24841858 */  addiu $a0, %lo(D_80131858) # addiu $a0, $a0, 0x1858
/* B65444 800EE2A4 90820000 */  lbu   $v0, ($a0)
/* B65448 800EE2A8 3C038017 */  lui   $v1, %hi(D_8016BA00) # $v1, 0x8017
/* B6544C 800EE2AC 2463BA00 */  addiu $v1, %lo(D_8016BA00) # addiu $v1, $v1, -0x4600
/* B65450 800EE2B0 3C0E8017 */  lui   $t6, %hi(D_8016BA2E) # $t6, 0x8017
/* B65454 800EE2B4 A0620001 */  sb    $v0, 1($v1)
/* B65458 800EE2B8 91CEBA2E */  lbu   $t6, %lo(D_8016BA2E)($t6)
/* B6545C 800EE2BC 240100FF */  li    $at, 255
/* B65460 800EE2C0 14410002 */  bne   $v0, $at, .L800EE2CC
/* B65464 800EE2C4 A06E0002 */   sb    $t6, 2($v1)
/* B65468 800EE2C8 A0800000 */  sb    $zero, ($a0)
.L800EE2CC:
/* B6546C 800EE2CC 03E00008 */  jr    $ra
/* B65470 800EE2D0 00000000 */   nop   
