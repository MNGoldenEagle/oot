glabel EnKarebaba_StateChange_Dead_ItemDrop
/* 003F8 80A95748 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003FC 80A9574C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00400 80A95750 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00404 80A95754 3C053CF5 */  lui     $a1, 0x3CF5                ## $a1 = 3CF50000
/* 00408 80A95758 34A5C28F */  ori     $a1, $a1, 0xC28F           ## $a1 = 3CF5C28F
/* 0040C 80A9575C 0C00B58B */  jal     Actor_SetScale
              
/* 00410 80A95760 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00414 80A95764 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00418 80A95768 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0041C 80A9576C 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 00420 80A95770 44812000 */  mtc1    $at, $f4                   ## $f4 = 1000.00
/* 00424 80A95774 84CE00B4 */  lh      $t6, 0x00B4($a2)           ## 000000B4
/* 00428 80A95778 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0042C 80A9577C 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00430 80A95780 44813000 */  mtc1    $at, $f6                   ## $f6 = 3.00
/* 00434 80A95784 25CFC000 */  addiu   $t7, $t6, 0xC000           ## $t7 = FFFFC000
/* 00438 80A95788 24070008 */  addiu   $a3, $zero, 0x0008         ## $a3 = 00000008
/* 0043C 80A9578C A4CF00B4 */  sh      $t7, 0x00B4($a2)           ## 000000B4
/* 00440 80A95790 24851C24 */  addiu   $a1, $a0, 0x1C24           ## $a1 = 00001C24
/* 00444 80A95794 E4C400BC */  swc1    $f4, 0x00BC($a2)           ## 000000BC
/* 00448 80A95798 E4C0006C */  swc1    $f0, 0x006C($a2)           ## 0000006C
/* 0044C 80A9579C E4C00060 */  swc1    $f0, 0x0060($a2)           ## 00000060
/* 00450 80A957A0 0C00CDD2 */  jal     Actor_ChangeType
              
/* 00454 80A957A4 E4C600C4 */  swc1    $f6, 0x00C4($a2)           ## 000000C4
/* 00458 80A957A8 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 0045C 80A957AC 2401FFDF */  addiu   $at, $zero, 0xFFDF         ## $at = FFFFFFDF
/* 00460 80A957B0 3C0980A9 */  lui     $t1, %hi(EnKarebaba_DeadItemDrop)    ## $t1 = 80A90000
/* 00464 80A957B4 8CD90004 */  lw      $t9, 0x0004($a2)           ## 00000004
/* 00468 80A957B8 241800C8 */  addiu   $t8, $zero, 0x00C8         ## $t8 = 000000C8
/* 0046C 80A957BC 25296048 */  addiu   $t1, $t1, %lo(EnKarebaba_DeadItemDrop) ## $t1 = 80A96048
/* 00470 80A957C0 03214024 */  and     $t0, $t9, $at              
/* 00474 80A957C4 A4D8001C */  sh      $t8, 0x001C($a2)           ## 0000001C
/* 00478 80A957C8 ACC80004 */  sw      $t0, 0x0004($a2)           ## 00000004
/* 0047C 80A957CC ACC90190 */  sw      $t1, 0x0190($a2)           ## 00000190
/* 00480 80A957D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00484 80A957D4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00488 80A957D8 03E00008 */  jr      $ra                        
/* 0048C 80A957DC 00000000 */  nop
