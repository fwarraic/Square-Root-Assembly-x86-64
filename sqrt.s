# The subroutine sqrt finds the integer square root of a 32-bit unsigned
# value, using binary search.	
	.globl sqrt
sqrt:
	movl $0, %eax   # place your code for Q3 here
	movl $0x8000, %ecx 

loop: 				# for k = 15 to 0 change result to 1.
	xorl %ecx, %eax 
	movl %eax, %esi
	imul %esi, %esi
	cmpl %esi, %edi
	jae endif 		# if result * result > x then:
	xorl %ecx, %eax # change kth bit back to 0

endif:
	shr $1, %ecx 	# next k
	jnz loop
	ret 			# return result

