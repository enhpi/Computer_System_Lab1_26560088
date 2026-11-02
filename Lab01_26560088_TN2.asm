# Lab01_26560088_TN2.asm
# Student Name: Nguyen Huu Phuc
# Student ID:   26560088
# Purpose:      Experiment 2

.text
.globl main
main:
    
    # step 2.3 -----------------------------------------------
    addi $s0, $zero, 1200
    addi $s1, $zero, 1350
    addi $s2, $zero, 1475
    addi $s3, $zero, 1640

    # monthly usage
    sub  $t0, $s1, $s0       # usage1 = reading1 - reading0
    sub  $t1, $s2, $s1       # usage2 = reading2 - reading1
    sub  $t2, $s3, $s2       # usage3 = reading3 - reading2

    # total
    add  $t3, $t0, $t1       # total = usage1 + usage2
    add  $t3, $t3, $t2       # total = total + usage3

    # step 2.4 -----------------------------------------------
    addi $s0, $zero, 8       # y = 8
    addi $s1, $zero, 5       # z = 5
    addi $s2, $zero, 3       # w = 3

    # x1
    add  $t0, $s0, $s1
    add  $t0, $t0, $s2

    # x2
    add  $t5, $s0, $s1       # $t5 = y + z
    addi $t1, $s2, 5         # $t1 = w + 5
    sub  $t1, $t5, $t1       # $t1 = (y + z) - (w + 5)

    # x3
    add  $t2, $s0, $zero

    # x4
    sub  $t3, $s1, $s0

    # terminate
    li   $v0, 10
    syscall