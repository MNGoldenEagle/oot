.late_rodata
glabel D_80A96B5C
    .float 0.01

.text
glabel EnKarebaba_Update
/* 00F50 80A962A0 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00F54 80A962A4 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00F58 80A962A8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00F5C 80A962AC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00F60 80A962B0 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00F64 80A962B4 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
/* 00F68 80A962B8 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00F6C 80A962BC 0320F809 */  jalr    $ra, $t9                   
/* 00F70 80A962C0 00000000 */  nop
/* 00F74 80A962C4 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
/* 00F78 80A962C8 3C0E80A9 */  lui     $t6, %hi(EnKarebaba_UpdateState_Inactive)    ## $t6 = 80A90000
/* 00F7C 80A962CC 25CE6184 */  addiu   $t6, $t6, %lo(EnKarebaba_UpdateState_Inactive) ## $t6 = 80A96184
/* 00F80 80A962D0 11C20059 */  beq     $t6, $v0, .L80A96438       
/* 00F84 80A962D4 3C0F80A9 */  lui     $t7, %hi(EnKarebaba_UpdateState_Dying)    ## $t7 = 80A90000
/* 00F88 80A962D8 25EF5D90 */  addiu   $t7, $t7, %lo(EnKarebaba_UpdateState_Dying) ## $t7 = 80A95D90
/* 00F8C 80A962DC 15E2000F */  bne     $t7, $v0, .L80A9631C       
/* 00F90 80A962E0 AFAF002C */  sw      $t7, 0x002C($sp)           
/* 00F94 80A962E4 0C00B638 */  jal     Actor_MoveForward
              
/* 00F98 80A962E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F9C 80A962EC 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00FA0 80A962F0 44810000 */  mtc1    $at, $f0                   ## $f0 = 10.00
/* 00FA4 80A962F4 24180005 */  addiu   $t8, $zero, 0x0005         ## $t8 = 00000005
/* 00FA8 80A962F8 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 00FAC 80A962FC 44060000 */  mfc1    $a2, $f0                   
/* 00FB0 80A96300 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00FB4 80A96304 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00FB8 80A96308 3C074170 */  lui     $a3, 0x4170                ## $a3 = 41700000
/* 00FBC 80A9630C 0C00B92D */  jal     func_8002E4B4              
/* 00FC0 80A96310 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00FC4 80A96314 10000010 */  beq     $zero, $zero, .L80A96358   
/* 00FC8 80A96318 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
.L80A9631C:
/* 00FCC 80A9631C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00FD0 80A96320 24080004 */  addiu   $t0, $zero, 0x0004         ## $t0 = 00000004
/* 00FD4 80A96324 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 00FD8 80A96328 44060000 */  mfc1    $a2, $f0                   
/* 00FDC 80A9632C 44070000 */  mfc1    $a3, $f0                   
/* 00FE0 80A96330 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00FE4 80A96334 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00FE8 80A96338 0C00B92D */  jal     func_8002E4B4              
/* 00FEC 80A9633C E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00FF0 80A96340 8E0901F4 */  lw      $t1, 0x01F4($s0)           ## 000001F4
/* 00FF4 80A96344 55200004 */  bnel    $t1, $zero, .L80A96358     
/* 00FF8 80A96348 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
/* 00FFC 80A9634C 8E0A0078 */  lw      $t2, 0x0078($s0)           ## 00000078
/* 01000 80A96350 AE0A01F4 */  sw      $t2, 0x01F4($s0)           ## 000001F4
/* 01004 80A96354 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
.L80A96358:
/* 01008 80A96358 8FAB002C */  lw      $t3, 0x002C($sp)           
/* 0100C 80A9635C 3C0C80A9 */  lui     $t4, %hi(EnKarebaba_UpdateState_Dead_ItemDrop)    ## $t4 = 80A90000
/* 01010 80A96360 258C6048 */  addiu   $t4, $t4, %lo(EnKarebaba_UpdateState_Dead_ItemDrop) ## $t4 = 80A96048
/* 01014 80A96364 51620035 */  beql    $t3, $v0, .L80A9643C       
/* 01018 80A96368 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0101C 80A9636C 11820032 */  beq     $t4, $v0, .L80A96438       
/* 01020 80A96370 3C0D80A9 */  lui     $t5, %hi(EnKarebaba_UpdateState_Regrow)    ## $t5 = 80A90000
/* 01024 80A96374 25AD61DC */  addiu   $t5, $t5, %lo(EnKarebaba_UpdateState_Regrow) ## $t5 = 80A961DC
/* 01028 80A96378 11A2000E */  beq     $t5, $v0, .L80A963B4       
/* 0102C 80A9637C 3C1980A9 */  lui     $t9, %hi(EnKarebaba_UpdateState_Grow)    ## $t9 = 80A90000
/* 01030 80A96380 27395940 */  addiu   $t9, $t9, %lo(EnKarebaba_UpdateState_Grow) ## $t9 = 80A95940
/* 01034 80A96384 1322000B */  beq     $t9, $v0, .L80A963B4       
/* 01038 80A96388 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0103C 80A9638C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01040 80A96390 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01044 80A96394 02212821 */  addu    $a1, $s1, $at              
/* 01048 80A96398 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 0104C 80A9639C 0C0175E7 */  jal     CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 01050 80A963A0 260601F8 */  addiu   $a2, $s0, 0x01F8           ## $a2 = 000001F8
/* 01054 80A963A4 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 01058 80A963A8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0105C 80A963AC 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 01060 80A963B0 26060244 */  addiu   $a2, $s0, 0x0244           ## $a2 = 00000244
.L80A963B4:
/* 01064 80A963B4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01068 80A963B8 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 0106C 80A963BC 02212821 */  addu    $a1, $s1, $at              
/* 01070 80A963C0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01074 80A963C4 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 01078 80A963C8 260601F8 */  addiu   $a2, $s0, 0x01F8           ## $a2 = 000001F8
/* 0107C 80A963CC 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01080 80A963D0 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 01084 80A963D4 C6040050 */  lwc1    $f4, 0x0050($s0)           ## 00000050
/* 01088 80A963D8 3C0180A9 */  lui     $at, %hi(D_80A96B5C)       ## $at = 80A90000
/* 0108C 80A963DC C42A6B5C */  lwc1    $f10, %lo(D_80A96B5C)($at) 
/* 01090 80A963E0 46062202 */  mul.s   $f8, $f4, $f6              
/* 01094 80A963E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01098 80A963E8 460A4403 */  div.s   $f16, $f8, $f10            
/* 0109C 80A963EC 44058000 */  mfc1    $a1, $f16                  
/* 010A0 80A963F0 0C00B56E */  jal     Actor_SetHeight
              
/* 010A4 80A963F4 00000000 */  nop
/* 010A8 80A963F8 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 010AC 80A963FC 44812000 */  mtc1    $at, $f4                   ## $f4 = 40.00
/* 010B0 80A96400 C612000C */  lwc1    $f18, 0x000C($s0)          ## 0000000C
/* 010B4 80A96404 C602003C */  lwc1    $f2, 0x003C($s0)           ## 0000003C
/* 010B8 80A96408 C6060008 */  lwc1    $f6, 0x0008($s0)           ## 00000008
/* 010BC 80A9640C 46049000 */  add.s   $f0, $f18, $f4             
/* 010C0 80A96410 E6060038 */  swc1    $f6, 0x0038($s0)           ## 00000038
/* 010C4 80A96414 4602003C */  c.lt.s  $f0, $f2                   
/* 010C8 80A96418 00000000 */  nop
/* 010CC 80A9641C 45020004 */  bc1fl   .L80A96430                 
/* 010D0 80A96420 E602003C */  swc1    $f2, 0x003C($s0)           ## 0000003C
/* 010D4 80A96424 10000002 */  beq     $zero, $zero, .L80A96430   
/* 010D8 80A96428 E600003C */  swc1    $f0, 0x003C($s0)           ## 0000003C
/* 010DC 80A9642C E602003C */  swc1    $f2, 0x003C($s0)           ## 0000003C
.L80A96430:
/* 010E0 80A96430 C6080010 */  lwc1    $f8, 0x0010($s0)           ## 00000010
/* 010E4 80A96434 E6080040 */  swc1    $f8, 0x0040($s0)           ## 00000040
.L80A96438:
/* 010E8 80A96438 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A9643C:
/* 010EC 80A9643C 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 010F0 80A96440 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 010F4 80A96444 03E00008 */  jr      $ra                        
/* 010F8 80A96448 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
