.late_rodata
glabel D_80A96B54
    .float 0.05

glabel D_80A96B58
    .float 0.005

.text
glabel EnKarebaba_Regrow
/* 00E8C 80A961DC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00E90 80A961E0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00E94 80A961E4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00E98 80A961E8 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00E9C 80A961EC 3C0180A9 */  lui     $at, %hi(D_80A96B54)       ## $at = 80A90000
/* 00EA0 80A961F0 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00EA4 80A961F4 A48F001C */  sh      $t7, 0x001C($a0)           ## 0000001C
/* 00EA8 80A961F8 8498001C */  lh      $t8, 0x001C($a0)           ## 0000001C
/* 00EAC 80A961FC C4286B54 */  lwc1    $f8, %lo(D_80A96B54)($at)  
/* 00EB0 80A96200 3C0180A9 */  lui     $at, %hi(D_80A96B58)       ## $at = 80A90000
/* 00EB4 80A96204 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 00EB8 80A96208 C42A6B58 */  lwc1    $f10, %lo(D_80A96B58)($at) 
/* 00EBC 80A9620C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00EC0 80A96210 468021A0 */  cvt.s.w $f6, $f4                   
/* 00EC4 80A96214 46083002 */  mul.s   $f0, $f6, $f8              
/* 00EC8 80A96218 00000000 */  nop
/* 00ECC 80A9621C 46005402 */  mul.s   $f16, $f10, $f0            
/* 00ED0 80A96220 E7A0001C */  swc1    $f0, 0x001C($sp)           
/* 00ED4 80A96224 44058000 */  mfc1    $a1, $f16                  
/* 00ED8 80A96228 0C00B58B */  jal     Actor_SetScale
              
/* 00EDC 80A9622C 00000000 */  nop
/* 00EE0 80A96230 3C014160 */  lui     $at, 0x4160                ## $at = 41600000
/* 00EE4 80A96234 C7A0001C */  lwc1    $f0, 0x001C($sp)           
/* 00EE8 80A96238 44812000 */  mtc1    $at, $f4                   ## $f4 = 14.00
/* 00EEC 80A9623C 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00EF0 80A96240 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00EF4 80A96244 46002182 */  mul.s   $f6, $f4, $f0              
/* 00EF8 80A96248 C4D2000C */  lwc1    $f18, 0x000C($a2)          ## 0000000C
/* 00EFC 80A9624C 84D9001C */  lh      $t9, 0x001C($a2)           ## 0000001C
/* 00F00 80A96250 24010014 */  addiu   $at, $zero, 0x0014         ## $at = 00000014
/* 00F04 80A96254 24851C24 */  addiu   $a1, $a0, 0x1C24           ## $a1 = 00001C24
/* 00F08 80A96258 46069200 */  add.s   $f8, $f18, $f6             
/* 00F0C 80A9625C 1721000C */  bne     $t9, $at, .L80A96290       
/* 00F10 80A96260 E4C80028 */  swc1    $f8, 0x0028($a2)           ## 00000028
/* 00F14 80A96264 8CC80004 */  lw      $t0, 0x0004($a2)           ## 00000004
/* 00F18 80A96268 2401FFEF */  addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
/* 00F1C 80A9626C 24070005 */  addiu   $a3, $zero, 0x0005         ## $a3 = 00000005
/* 00F20 80A96270 01014824 */  and     $t1, $t0, $at              
/* 00F24 80A96274 ACC90004 */  sw      $t1, 0x0004($a2)           ## 00000004
/* 00F28 80A96278 352B0005 */  ori     $t3, $t1, 0x0005           ## $t3 = 00000005
/* 00F2C 80A9627C ACCB0004 */  sw      $t3, 0x0004($a2)           ## 00000004
/* 00F30 80A96280 0C00CDD2 */  jal     Actor_ChangeType
              
/* 00F34 80A96284 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00F38 80A96288 0C2A5552 */  jal     EnKarebaba_StateChange_Idle              
/* 00F3C 80A9628C 8FA40020 */  lw      $a0, 0x0020($sp)           
.L80A96290:
/* 00F40 80A96290 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00F44 80A96294 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00F48 80A96298 03E00008 */  jr      $ra                        
/* 00F4C 80A9629C 00000000 */  nop
