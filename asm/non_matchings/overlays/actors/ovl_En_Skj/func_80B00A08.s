glabel func_80B00A08
/* 02758 80B00A08 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0275C 80B00A0C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02760 80B00A10 8FAE0020 */  lw      $t6, 0x0020($sp)           
/* 02764 80B00A14 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02768 80B00A18 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0276C 80B00A1C 24A400B6 */  addiu   $a0, $a1, 0x00B6           ## $a0 = 000000B6
/* 02770 80B00A20 85C50032 */  lh      $a1, 0x0032($t6)           ## 00000032
/* 02774 80B00A24 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02778 80B00A28 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 0277C 80B00A2C 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 02780 80B00A30 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 02784 80B00A34 8FA30024 */  lw      $v1, 0x0024($sp)           
/* 02788 80B00A38 846200B6 */  lh      $v0, 0x00B6($v1)           ## 000000B6
/* 0278C 80B00A3C A4620032 */  sh      $v0, 0x0032($v1)           ## 00000032
/* 02790 80B00A40 A462083C */  sh      $v0, 0x083C($v1)           ## 0000083C
/* 02794 80B00A44 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02798 80B00A48 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0279C 80B00A4C 03E00008 */  jr      $ra                        
/* 027A0 80B00A50 00000000 */  nop
