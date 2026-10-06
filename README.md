# binutils-gdb — IRIX fork

This repository is a fork of `gnutools/binutils-gdb`. That repository mirrors the upstream binutils and GDB sources from sourceware.org.

## The IRIX change

The `master` branch carries one commit on top of upstream:

`MIPS: Restore IRIX 6.5 dynamic linking`

The commit makes three changes:

- It keeps the SGI GOT-local rules.
- It keeps the `.rld_map` marker and the `MIPS_RLD_MAP` dynamic tag.
- It normalises the section alignment of SGI input objects.

A binutils 2.47.50 build for `mips-sgi-irix6.5` validated the change. Guest smoke tests passed for the o32 and n32 ABIs.

## The patch series

The released IRIX series lives in `irix7/project` at `patches/binutils-2.47/`. The project build script applies it to the pinned 2.47 tarball. See https://github.com/irix7/project/blob/main/docs/binutils.md.

## Upstream

- Source: https://sourceware.org/git/binutils-gdb.git
- Licence: GPLv3
