glabel EnKarebaba_UpdateState_Idle
/* 00688 80A959D8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0068C 80A959DC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00690 80A959E0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00694 80A959E4 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00698 80A959E8 44813000 */  mtc1    $at, $f6                   ## $f6 = 200.00
/* 0069C 80A959EC C4840090 */  lwc1    $f4, 0x0090($a0)           ## 00000090
/* 006A0 80A959F0 4606203C */  c.lt.s  $f4, $f6                   
/* 006A4 80A959F4 00000000 */  nop
/* 006A8 80A959F8 4502000C */  bc1fl   .L80A95A2C                 
/* 006AC 80A959FC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 006B0 80A95A00 C4800094 */  lwc1    $f0, 0x0094($a0)           ## 00000094
/* 006B4 80A95A04 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 006B8 80A95A08 44814000 */  mtc1    $at, $f8                   ## $f8 = 30.00
/* 006BC 80A95A0C 46000005 */  abs.s   $f0, $f0                   
/* 006C0 80A95A10 4608003C */  c.lt.s  $f0, $f8                   
/* 006C4 80A95A14 00000000 */  nop
/* 006C8 80A95A18 45020004 */  bc1fl   .L80A95A2C                 
/* 006CC 80A95A1C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 006D0 80A95A20 0C2A5567 */  jal     EnKarebaba_StateChange_Awaken              
/* 006D4 80A95A24 00000000 */  nop
/* 006D8 80A95A28 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A95A2C:
/* 006DC 80A95A2C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 006E0 80A95A30 03E00008 */  jr      $ra                        
/* 006E4 80A95A34 00000000 */  nop