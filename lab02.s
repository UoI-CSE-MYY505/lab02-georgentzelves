
.data

array: .word 1, 0, 1, 12, 0, 1, 4

.text

    la a0, array
    li a1, 7    # unsigned
    li a2, 1
prog:
#-----------------------------
    add s0, zero, zero

loop:
    beq a1, zero, done
    lw   t0, 0(s0)
    addi a1, a1, -1
    beq t0, a2, exitLoop
    addi a0, a0, 4
    j loop

exitLoop:
    add s0, a0, zero
    addi a0, a0, 4
    j loop
#-----------------------------
done:
    addi a7, zero, 10 
    ecall
