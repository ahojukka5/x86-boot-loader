.code16 
.global _start

_start:
  jmp _start

.fill 510 - (. - _start), 1, 0 # add zeroes to make it 510 bytes long 
.word 0xaa55 # magic bytes that tell BIOS that this is bootable
