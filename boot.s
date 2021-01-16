.code16 
.global _start
.intel_syntax noprefix

_start:
  mov   ah, 0x0e
  mov   al, 0x41
  int   0x10
  hlt

.fill 510 - (. - _start), 1, 0 # add zeroes to make it 510 bytes long 
.word 0xaa55 # magic bytes that tell BIOS that this is bootable
