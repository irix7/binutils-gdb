# Haiku on big-endian MIPS, n32 ABI (SGI Indy).
source_sh ${srcdir}/emulparams/elf32btsmipn32.sh
source_sh ${srcdir}/emulparams/elf_haiku.sh

# Haiku's start code (start_dyn.c) defines _start.
ENTRY=_start
