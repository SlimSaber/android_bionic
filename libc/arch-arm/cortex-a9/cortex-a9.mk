$(call libc-add-cpu-variant-src,MEMCPY,arch-arm/bionic/memcpy.a9.S)
$(call libc-add-cpu-variant-src,MEMCHR,arch-arm/armv7/memchr.S)
$(call libc-add-cpu-variant-src,MEMSET,arch-arm/armv7/memset.S)
$(call libc-add-cpu-variant-src,STRCAT,arch-arm/cortex-a9/bionic/strcat.S)
$(call libc-add-cpu-variant-src,STRCMP,arch-arm/cortex-a9/bionic/strcmp.S)
ifeq ($(ARCH_ARM_HAVE_NEON),true)
$(call libc-add-cpu-variant-src,MEMMOVE,arch-arm/bionic/memmove.S)
else
$(call libc-add-cpu-variant-src,MEMMOVE,bionic/memmove.c.arm)
$(call libc-add-cpu-variant-src,BCOPY,string/bcopy.c.arm)
endif
$(call libc-add-cpu-variant-src,STRCPY,arch-arm/armv7/strcpy.c)
$(call libc-add-cpu-variant-src,STRLEN,arch-arm/armv7/strlen.S)

#include bionic/libc/arch-arm/generic/generic.mk
