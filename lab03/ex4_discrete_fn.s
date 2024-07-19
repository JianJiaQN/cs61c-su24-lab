.globl f # this allows other files to find the function f

# f takes in two arguments:
# a0 is the value we want to evaluate f at
# a1 is the address of the "output" array (read the lab spec for more information).
# The return value should be stored in a0
f:
    # Your code here
    
    # save ans array
    addi t0 x0 6 # f(-3)=6
    sw t0 0(a1)
    
    addi t0 x0 61 # f(-3)=6
    sw t0 4(a1)
    
    addi t0 x0 17 # f(-3)=6
    sw t0 8(a1)
    
    addi t0 x0 -38 # f(-3)=6
    sw t0 12(a1)
    
    addi t0 x0 19 # f(-3)=6
    sw t0 16(a1)
    
    addi t0 x0 42 # f(-3)=6
    sw t0 20(a1)
    
    addi t0 x0 5 # f(-3)=6
    sw t0 24(a1)
    
    # load ans
    addi t1 a0 3
    slli t1 t1 2
    add t2 t1 a1
    lw a0 0(t2)
    # This is how you return from a function. You'll learn more about this later.
    # This should be the last line in your program.
    jr ra
