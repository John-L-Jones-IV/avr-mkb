# 1 "Keyboard/Keyboard.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "Keyboard/Keyboard.c"
# 37 "Keyboard/Keyboard.c"
# 1 "Keyboard/Keyboard.h" 1
# 40 "Keyboard/Keyboard.h"
# 1 "/usr/lib/avr/include/avr/io.h" 1 3
# 99 "/usr/lib/avr/include/avr/io.h" 3
# 1 "/usr/lib/avr/include/avr/sfr_defs.h" 1 3
# 126 "/usr/lib/avr/include/avr/sfr_defs.h" 3
# 1 "/usr/lib/avr/include/inttypes.h" 1 3
# 37 "/usr/lib/avr/include/inttypes.h" 3
# 1 "/usr/lib/gcc/avr/5.4.0/include/stdint.h" 1 3 4
# 9 "/usr/lib/gcc/avr/5.4.0/include/stdint.h" 3 4
# 1 "/usr/lib/avr/include/stdint.h" 1 3 4
# 125 "/usr/lib/avr/include/stdint.h" 3 4

# 125 "/usr/lib/avr/include/stdint.h" 3 4
typedef signed int int8_t __attribute__((__mode__(__QI__)));
typedef unsigned int uint8_t __attribute__((__mode__(__QI__)));
typedef signed int int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int uint16_t __attribute__ ((__mode__ (__HI__)));
typedef signed int int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int uint32_t __attribute__ ((__mode__ (__SI__)));

typedef signed int int64_t __attribute__((__mode__(__DI__)));
typedef unsigned int uint64_t __attribute__((__mode__(__DI__)));
# 146 "/usr/lib/avr/include/stdint.h" 3 4
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 163 "/usr/lib/avr/include/stdint.h" 3 4
typedef int8_t int_least8_t;




typedef uint8_t uint_least8_t;




typedef int16_t int_least16_t;




typedef uint16_t uint_least16_t;




typedef int32_t int_least32_t;




typedef uint32_t uint_least32_t;







typedef int64_t int_least64_t;






typedef uint64_t uint_least64_t;
# 217 "/usr/lib/avr/include/stdint.h" 3 4
typedef int8_t int_fast8_t;




typedef uint8_t uint_fast8_t;




typedef int16_t int_fast16_t;




typedef uint16_t uint_fast16_t;




typedef int32_t int_fast32_t;




typedef uint32_t uint_fast32_t;







typedef int64_t int_fast64_t;






typedef uint64_t uint_fast64_t;
# 277 "/usr/lib/avr/include/stdint.h" 3 4
typedef int64_t intmax_t;




typedef uint64_t uintmax_t;
# 10 "/usr/lib/gcc/avr/5.4.0/include/stdint.h" 2 3 4
# 38 "/usr/lib/avr/include/inttypes.h" 2 3
# 77 "/usr/lib/avr/include/inttypes.h" 3
typedef int32_t int_farptr_t;



typedef uint32_t uint_farptr_t;
# 127 "/usr/lib/avr/include/avr/sfr_defs.h" 2 3
# 100 "/usr/lib/avr/include/avr/io.h" 2 3
# 144 "/usr/lib/avr/include/avr/io.h" 3
# 1 "/usr/lib/avr/include/avr/iom32u4.h" 1 3
# 145 "/usr/lib/avr/include/avr/io.h" 2 3
# 627 "/usr/lib/avr/include/avr/io.h" 3
# 1 "/usr/lib/avr/include/avr/portpins.h" 1 3
# 628 "/usr/lib/avr/include/avr/io.h" 2 3

# 1 "/usr/lib/avr/include/avr/common.h" 1 3
# 630 "/usr/lib/avr/include/avr/io.h" 2 3

# 1 "/usr/lib/avr/include/avr/version.h" 1 3
# 632 "/usr/lib/avr/include/avr/io.h" 2 3






# 1 "/usr/lib/avr/include/avr/fuse.h" 1 3
# 239 "/usr/lib/avr/include/avr/fuse.h" 3
typedef struct
{
    unsigned char low;
    unsigned char high;
    unsigned char extended;
} __fuse_t;
# 639 "/usr/lib/avr/include/avr/io.h" 2 3


# 1 "/usr/lib/avr/include/avr/lock.h" 1 3
# 642 "/usr/lib/avr/include/avr/io.h" 2 3
# 41 "Keyboard/Keyboard.h" 2
# 1 "/usr/lib/avr/include/avr/wdt.h" 1 3
# 450 "/usr/lib/avr/include/avr/wdt.h" 3
static __inline__
__attribute__ ((__always_inline__))
void wdt_enable (const uint8_t value)
{
 if ((((uint16_t) &((*(volatile uint8_t *)(0x60)))) < 0x40 + 0x20))
 {
  __asm__ __volatile__ (
    "in __tmp_reg__,__SREG__" "\n\t"
    "cli" "\n\t"
    "wdr" "\n\t"
    "out %0, %1" "\n\t"
    "out __SREG__,__tmp_reg__" "\n\t"
    "out %0, %2" "\n \t"
    :
    : "I" ((((uint16_t) &((*(volatile uint8_t *)(0x60)))) - 0x20)),
    "r" ((uint8_t)((1 << (4)) | (1 << (3)))),
    "r" ((uint8_t) ((value & 0x08 ? (1 << (5)) : 0x00) |
      (1 << (3)) | (value & 0x07)) )
    : "r0"
  );
 }
 else
 {
  __asm__ __volatile__ (
    "in __tmp_reg__,__SREG__" "\n\t"
    "cli" "\n\t"
    "wdr" "\n\t"
    "sts %0, %1" "\n\t"
    "out __SREG__,__tmp_reg__" "\n\t"
    "sts %0, %2" "\n \t"
    :
    : "n" (((uint16_t) &((*(volatile uint8_t *)(0x60))))),
    "r" ((uint8_t)((1 << (4)) | (1 << (3)))),
    "r" ((uint8_t) ((value & 0x08 ? (1 << (5)) : 0x00) |
      (1 << (3)) | (value & 0x07)) )
    : "r0"
  );
 }
}

static __inline__
__attribute__ ((__always_inline__))
void wdt_disable (void)
{
 if ((((uint16_t) &((*(volatile uint8_t *)(0x60)))) < 0x40 + 0x20))
 {
        uint8_t register temp_reg;
  __asm__ __volatile__ (
    "in __tmp_reg__,__SREG__" "\n\t"
    "cli" "\n\t"
    "wdr" "\n\t"
    "in  %[TEMPREG],%[WDTREG]" "\n\t"
    "ori %[TEMPREG],%[WDCE_WDE]" "\n\t"
    "out %[WDTREG],%[TEMPREG]" "\n\t"
    "out %[WDTREG],__zero_reg__" "\n\t"
    "out __SREG__,__tmp_reg__" "\n\t"
    : [TEMPREG] "=d" (temp_reg)
    : [WDTREG] "I" ((((uint16_t) &((*(volatile uint8_t *)(0x60)))) - 0x20)),
    [WDCE_WDE] "n" ((uint8_t)((1 << (4)) | (1 << (3))))
    : "r0"
  );
 }
 else
 {
        uint8_t register temp_reg;
  __asm__ __volatile__ (
    "in __tmp_reg__,__SREG__" "\n\t"
    "cli" "\n\t"
    "wdr" "\n\t"
    "lds %[TEMPREG],%[WDTREG]" "\n\t"
    "ori %[TEMPREG],%[WDCE_WDE]" "\n\t"
    "sts %[WDTREG],%[TEMPREG]" "\n\t"
    "sts %[WDTREG],__zero_reg__" "\n\t"
    "out __SREG__,__tmp_reg__" "\n\t"
    : [TEMPREG] "=d" (temp_reg)
    : [WDTREG] "n" (((uint16_t) &((*(volatile uint8_t *)(0x60))))),
    [WDCE_WDE] "n" ((uint8_t)((1 << (4)) | (1 << (3))))
    : "r0"
  );
 }
}
# 42 "Keyboard/Keyboard.h" 2
# 1 "/usr/lib/avr/include/avr/power.h" 1 3
# 1187 "/usr/lib/avr/include/avr/power.h" 3
static __inline void
__attribute__ ((__always_inline__))
__power_all_enable()
{





    (*(volatile uint8_t *)(0x64)) &= (uint8_t)~(((1<<0)|(1<<1)|(1<<2)|(1<<3)|(1<<5)|(1<<6)|(1<<7)));



    (*(volatile uint8_t *)(0x65)) &= (uint8_t)~(((1<<0)|(1<<3)|(1<<7)));
# 1234 "/usr/lib/avr/include/avr/power.h" 3
}

static __inline void
__attribute__ ((__always_inline__))
__power_all_disable()
{





    (*(volatile uint8_t *)(0x64)) |= (uint8_t)(((1<<0)|(1<<1)|(1<<2)|(1<<3)|(1<<5)|(1<<6)|(1<<7)));



    (*(volatile uint8_t *)(0x65)) |= (uint8_t)(((1<<0)|(1<<3)|(1<<7)));
# 1283 "/usr/lib/avr/include/avr/power.h" 3
}
# 1471 "/usr/lib/avr/include/avr/power.h" 3
typedef enum
{
    clock_div_1 = 0,
    clock_div_2 = 1,
    clock_div_4 = 2,
    clock_div_8 = 3,
    clock_div_16 = 4,
    clock_div_32 = 5,
    clock_div_64 = 6,
    clock_div_128 = 7,
    clock_div_256 = 8
# 1491 "/usr/lib/avr/include/avr/power.h" 3
} clock_div_t;

static __inline__ void clock_prescale_set(clock_div_t) __attribute__((__always_inline__));
# 1509 "/usr/lib/avr/include/avr/power.h" 3
void clock_prescale_set(clock_div_t __x)
{
    uint8_t __tmp = (1 << (7));
    __asm__ __volatile__ (
        "in __tmp_reg__,__SREG__" "\n\t"
        "cli" "\n\t"
        "sts %1, %0" "\n\t"
        "sts %1, %2" "\n\t"
        "out __SREG__, __tmp_reg__"
        :
        : "d" (__tmp),
          "M" (((uint16_t) &((*(volatile uint8_t *)(0x61))))),
          "d" (__x)
        : "r0");
}
# 43 "Keyboard/Keyboard.h" 2
# 1 "/usr/lib/avr/include/avr/interrupt.h" 1 3
# 44 "Keyboard/Keyboard.h" 2
# 1 "/usr/lib/gcc/avr/5.4.0/include/stdbool.h" 1 3 4
# 45 "Keyboard/Keyboard.h" 2
# 1 "/usr/lib/avr/include/string.h" 1 3
# 46 "/usr/lib/avr/include/string.h" 3
# 1 "/usr/lib/gcc/avr/5.4.0/include/stddef.h" 1 3 4
# 216 "/usr/lib/gcc/avr/5.4.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 47 "/usr/lib/avr/include/string.h" 2 3
# 125 "/usr/lib/avr/include/string.h" 3
extern int ffs(int __val) __attribute__((__const__));





extern int ffsl(long __val) __attribute__((__const__));





__extension__ extern int ffsll(long long __val) __attribute__((__const__));
# 150 "/usr/lib/avr/include/string.h" 3
extern void *memccpy(void *, const void *, int, size_t);
# 162 "/usr/lib/avr/include/string.h" 3
extern void *memchr(const void *, int, size_t) __attribute__((__pure__));
# 180 "/usr/lib/avr/include/string.h" 3
extern int memcmp(const void *, const void *, size_t) __attribute__((__pure__));
# 191 "/usr/lib/avr/include/string.h" 3
extern void *memcpy(void *, const void *, size_t);
# 203 "/usr/lib/avr/include/string.h" 3
extern void *memmem(const void *, size_t, const void *, size_t) __attribute__((__pure__));
# 213 "/usr/lib/avr/include/string.h" 3
extern void *memmove(void *, const void *, size_t);
# 225 "/usr/lib/avr/include/string.h" 3
extern void *memrchr(const void *, int, size_t) __attribute__((__pure__));
# 235 "/usr/lib/avr/include/string.h" 3
extern void *memset(void *, int, size_t);
# 248 "/usr/lib/avr/include/string.h" 3
extern char *strcat(char *, const char *);
# 262 "/usr/lib/avr/include/string.h" 3
extern char *strchr(const char *, int) __attribute__((__pure__));
# 274 "/usr/lib/avr/include/string.h" 3
extern char *strchrnul(const char *, int) __attribute__((__pure__));
# 287 "/usr/lib/avr/include/string.h" 3
extern int strcmp(const char *, const char *) __attribute__((__pure__));
# 305 "/usr/lib/avr/include/string.h" 3
extern char *strcpy(char *, const char *);
# 320 "/usr/lib/avr/include/string.h" 3
extern int strcasecmp(const char *, const char *) __attribute__((__pure__));
# 333 "/usr/lib/avr/include/string.h" 3
extern char *strcasestr(const char *, const char *) __attribute__((__pure__));
# 344 "/usr/lib/avr/include/string.h" 3
extern size_t strcspn(const char *__s, const char *__reject) __attribute__((__pure__));
# 364 "/usr/lib/avr/include/string.h" 3
extern char *strdup(const char *s1);
# 377 "/usr/lib/avr/include/string.h" 3
extern size_t strlcat(char *, const char *, size_t);
# 388 "/usr/lib/avr/include/string.h" 3
extern size_t strlcpy(char *, const char *, size_t);
# 399 "/usr/lib/avr/include/string.h" 3
extern size_t strlen(const char *) __attribute__((__pure__));
# 411 "/usr/lib/avr/include/string.h" 3
extern char *strlwr(char *);
# 422 "/usr/lib/avr/include/string.h" 3
extern char *strncat(char *, const char *, size_t);
# 434 "/usr/lib/avr/include/string.h" 3
extern int strncmp(const char *, const char *, size_t) __attribute__((__pure__));
# 449 "/usr/lib/avr/include/string.h" 3
extern char *strncpy(char *, const char *, size_t);
# 464 "/usr/lib/avr/include/string.h" 3
extern int strncasecmp(const char *, const char *, size_t) __attribute__((__pure__));
# 478 "/usr/lib/avr/include/string.h" 3
extern size_t strnlen(const char *, size_t) __attribute__((__pure__));
# 491 "/usr/lib/avr/include/string.h" 3
extern char *strpbrk(const char *__s, const char *__accept) __attribute__((__pure__));
# 505 "/usr/lib/avr/include/string.h" 3
extern char *strrchr(const char *, int) __attribute__((__pure__));
# 515 "/usr/lib/avr/include/string.h" 3
extern char *strrev(char *);
# 533 "/usr/lib/avr/include/string.h" 3
extern char *strsep(char **, const char *);
# 544 "/usr/lib/avr/include/string.h" 3
extern size_t strspn(const char *__s, const char *__accept) __attribute__((__pure__));
# 557 "/usr/lib/avr/include/string.h" 3
extern char *strstr(const char *, const char *) __attribute__((__pure__));
# 576 "/usr/lib/avr/include/string.h" 3
extern char *strtok(char *, const char *);
# 593 "/usr/lib/avr/include/string.h" 3
extern char *strtok_r(char *, const char *, char **);
# 606 "/usr/lib/avr/include/string.h" 3
extern char *strupr(char *);



extern int strcoll(const char *s1, const char *s2);
extern char *strerror(int errnum);
extern size_t strxfrm(char *dest, const char *src, size_t n);
# 46 "Keyboard/Keyboard.h" 2

# 1 "Keyboard/Descriptors.h" 1
# 40 "Keyboard/Descriptors.h"
# 1 "/usr/lib/avr/include/avr/pgmspace.h" 1 3
# 89 "/usr/lib/avr/include/avr/pgmspace.h" 3
# 1 "/usr/lib/gcc/avr/5.4.0/include/stddef.h" 1 3 4
# 90 "/usr/lib/avr/include/avr/pgmspace.h" 2 3
# 1158 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern const void * memchr_P(const void *, int __val, size_t __len) __attribute__((__const__));
# 1172 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern int memcmp_P(const void *, const void *, size_t) __attribute__((__pure__));






extern void *memccpy_P(void *, const void *, int __val, size_t);
# 1188 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern void *memcpy_P(void *, const void *, size_t);






extern void *memmem_P(const void *, size_t, const void *, size_t) __attribute__((__pure__));
# 1207 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern const void * memrchr_P(const void *, int __val, size_t __len) __attribute__((__const__));
# 1217 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern char *strcat_P(char *, const char *);
# 1233 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern const char * strchr_P(const char *, int __val) __attribute__((__const__));
# 1245 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern const char * strchrnul_P(const char *, int __val) __attribute__((__const__));
# 1258 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern int strcmp_P(const char *, const char *) __attribute__((__pure__));
# 1268 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern char *strcpy_P(char *, const char *);
# 1285 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern int strcasecmp_P(const char *, const char *) __attribute__((__pure__));






extern char *strcasestr_P(const char *, const char *) __attribute__((__pure__));
# 1305 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern size_t strcspn_P(const char *__s, const char * __reject) __attribute__((__pure__));
# 1321 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern size_t strlcat_P (char *, const char *, size_t );
# 1334 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern size_t strlcpy_P (char *, const char *, size_t );
# 1346 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern size_t strnlen_P(const char *, size_t) __attribute__((__const__));
# 1357 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern int strncmp_P(const char *, const char *, size_t) __attribute__((__pure__));
# 1376 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern int strncasecmp_P(const char *, const char *, size_t) __attribute__((__pure__));
# 1387 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern char *strncat_P(char *, const char *, size_t);
# 1401 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern char *strncpy_P(char *, const char *, size_t);
# 1416 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern char *strpbrk_P(const char *__s, const char * __accept) __attribute__((__pure__));
# 1427 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern const char * strrchr_P(const char *, int __val) __attribute__((__const__));
# 1447 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern char *strsep_P(char **__sp, const char * __delim);
# 1460 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern size_t strspn_P(const char *__s, const char * __accept) __attribute__((__pure__));
# 1474 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern char *strstr_P(const char *, const char *) __attribute__((__pure__));
# 1496 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern char *strtok_P(char *__s, const char * __delim);
# 1516 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern char *strtok_rP(char *__s, const char * __delim, char **__last);
# 1529 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern size_t strlen_PF(uint_farptr_t src) __attribute__((__const__));
# 1545 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern size_t strnlen_PF(uint_farptr_t src, size_t len) __attribute__((__const__));
# 1560 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern void *memcpy_PF(void *dest, uint_farptr_t src, size_t len);
# 1575 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern char *strcpy_PF(char *dest, uint_farptr_t src);
# 1595 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern char *strncpy_PF(char *dest, uint_farptr_t src, size_t len);
# 1611 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern char *strcat_PF(char *dest, uint_farptr_t src);
# 1632 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern size_t strlcat_PF(char *dst, uint_farptr_t src, size_t siz);
# 1649 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern char *strncat_PF(char *dest, uint_farptr_t src, size_t len);
# 1665 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern int strcmp_PF(const char *s1, uint_farptr_t s2) __attribute__((__pure__));
# 1682 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern int strncmp_PF(const char *s1, uint_farptr_t s2, size_t n) __attribute__((__pure__));
# 1698 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern int strcasecmp_PF(const char *s1, uint_farptr_t s2) __attribute__((__pure__));
# 1716 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern int strncasecmp_PF(const char *s1, uint_farptr_t s2, size_t n) __attribute__((__pure__));
# 1732 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern char *strstr_PF(const char *s1, uint_farptr_t s2);
# 1744 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern size_t strlcpy_PF(char *dst, uint_farptr_t src, size_t siz);
# 1760 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern int memcmp_PF(const void *, uint_farptr_t, size_t) __attribute__((__pure__));
# 1779 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern size_t __strlen_P(const char *) __attribute__((__const__));
__attribute__((__always_inline__)) static __inline__ size_t strlen_P(const char * s);
static __inline__ size_t strlen_P(const char *s) {
  return __builtin_constant_p(__builtin_strlen(s))
     ? __builtin_strlen(s) : __strlen_P(s);
}
# 41 "Keyboard/Descriptors.h" 2

# 1 "./LUFA/Drivers/USB/USB.h" 1
# 382 "./LUFA/Drivers/USB/USB.h"
# 1 "./LUFA/Drivers/USB/../../Common/Common.h" 1
# 69 "./LUFA/Drivers/USB/../../Common/Common.h"
# 1 "/usr/lib/gcc/avr/5.4.0/include/stddef.h" 1 3 4
# 149 "/usr/lib/gcc/avr/5.4.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 328 "/usr/lib/gcc/avr/5.4.0/include/stddef.h" 3 4
typedef int wchar_t;
# 426 "/usr/lib/gcc/avr/5.4.0/include/stddef.h" 3 4
typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
# 70 "./LUFA/Drivers/USB/../../Common/Common.h" 2

# 1 "./LUFA/Drivers/USB/../../Common/Architectures.h" 1
# 72 "./LUFA/Drivers/USB/../../Common/Common.h" 2
# 1 "./LUFA/Drivers/USB/../../Common/BoardTypes.h" 1
# 73 "./LUFA/Drivers/USB/../../Common/Common.h" 2
# 1 "./LUFA/Drivers/USB/../../Common/ArchitectureSpecific.h" 1
# 74 "./LUFA/Drivers/USB/../../Common/Common.h" 2
# 1 "./LUFA/Drivers/USB/../../Common/CompilerSpecific.h" 1
# 75 "./LUFA/Drivers/USB/../../Common/Common.h" 2
# 1 "./LUFA/Drivers/USB/../../Common/Attributes.h" 1
# 76 "./LUFA/Drivers/USB/../../Common/Common.h" 2
# 97 "./LUFA/Drivers/USB/../../Common/Common.h"
# 1 "/usr/lib/avr/include/avr/eeprom.h" 1 3
# 50 "/usr/lib/avr/include/avr/eeprom.h" 3
# 1 "/usr/lib/gcc/avr/5.4.0/include/stddef.h" 1 3 4
# 51 "/usr/lib/avr/include/avr/eeprom.h" 2 3
# 137 "/usr/lib/avr/include/avr/eeprom.h" 3
uint8_t eeprom_read_byte (const uint8_t *__p) __attribute__((__pure__));




uint16_t eeprom_read_word (const uint16_t *__p) __attribute__((__pure__));




uint32_t eeprom_read_dword (const uint32_t *__p) __attribute__((__pure__));




float eeprom_read_float (const float *__p) __attribute__((__pure__));





void eeprom_read_block (void *__dst, const void *__src, size_t __n);





void eeprom_write_byte (uint8_t *__p, uint8_t __value);




void eeprom_write_word (uint16_t *__p, uint16_t __value);




void eeprom_write_dword (uint32_t *__p, uint32_t __value);




void eeprom_write_float (float *__p, float __value);





void eeprom_write_block (const void *__src, void *__dst, size_t __n);





void eeprom_update_byte (uint8_t *__p, uint8_t __value);




void eeprom_update_word (uint16_t *__p, uint16_t __value);




void eeprom_update_dword (uint32_t *__p, uint32_t __value);




void eeprom_update_float (float *__p, float __value);





void eeprom_update_block (const void *__src, void *__dst, size_t __n);
# 98 "./LUFA/Drivers/USB/../../Common/Common.h" 2
# 1 "/usr/lib/avr/include/avr/boot.h" 1 3
# 107 "/usr/lib/avr/include/avr/boot.h" 3
# 1 "/usr/lib/gcc/avr/5.4.0/include-fixed/limits.h" 1 3 4
# 108 "/usr/lib/avr/include/avr/boot.h" 2 3
# 99 "./LUFA/Drivers/USB/../../Common/Common.h" 2
# 1 "/usr/lib/avr/include/math.h" 1 3
# 127 "/usr/lib/avr/include/math.h" 3
extern double cos(double __x) __attribute__((__const__));





extern double sin(double __x) __attribute__((__const__));





extern double tan(double __x) __attribute__((__const__));






extern double fabs(double __x) __attribute__((__const__));






extern double fmod(double __x, double __y) __attribute__((__const__));
# 168 "/usr/lib/avr/include/math.h" 3
extern double modf(double __x, double *__iptr);


extern float modff (float __x, float *__iptr);




extern double sqrt(double __x) __attribute__((__const__));


extern float sqrtf (float) __attribute__((__const__));




extern double cbrt(double __x) __attribute__((__const__));
# 195 "/usr/lib/avr/include/math.h" 3
extern double hypot (double __x, double __y) __attribute__((__const__));







extern double square(double __x) __attribute__((__const__));






extern double floor(double __x) __attribute__((__const__));






extern double ceil(double __x) __attribute__((__const__));
# 235 "/usr/lib/avr/include/math.h" 3
extern double frexp(double __x, int *__pexp);







extern double ldexp(double __x, int __exp) __attribute__((__const__));





extern double exp(double __x) __attribute__((__const__));





extern double cosh(double __x) __attribute__((__const__));





extern double sinh(double __x) __attribute__((__const__));





extern double tanh(double __x) __attribute__((__const__));







extern double acos(double __x) __attribute__((__const__));







extern double asin(double __x) __attribute__((__const__));






extern double atan(double __x) __attribute__((__const__));
# 299 "/usr/lib/avr/include/math.h" 3
extern double atan2(double __y, double __x) __attribute__((__const__));





extern double log(double __x) __attribute__((__const__));





extern double log10(double __x) __attribute__((__const__));





extern double pow(double __x, double __y) __attribute__((__const__));






extern int isnan(double __x) __attribute__((__const__));
# 334 "/usr/lib/avr/include/math.h" 3
extern int isinf(double __x) __attribute__((__const__));






__attribute__((__const__)) static inline int isfinite (double __x)
{
    unsigned char __exp;
    __asm__ (
 "mov	%0, %C1		\n\t"
 "lsl	%0		\n\t"
 "mov	%0, %D1		\n\t"
 "rol	%0		"
 : "=r" (__exp)
 : "r" (__x) );
    return __exp != 0xff;
}






__attribute__((__const__)) static inline double copysign (double __x, double __y)
{
    __asm__ (
 "bst	%D2, 7	\n\t"
 "bld	%D0, 7	"
 : "=r" (__x)
 : "0" (__x), "r" (__y) );
    return __x;
}
# 377 "/usr/lib/avr/include/math.h" 3
extern int signbit (double __x) __attribute__((__const__));






extern double fdim (double __x, double __y) __attribute__((__const__));
# 393 "/usr/lib/avr/include/math.h" 3
extern double fma (double __x, double __y, double __z) __attribute__((__const__));







extern double fmax (double __x, double __y) __attribute__((__const__));







extern double fmin (double __x, double __y) __attribute__((__const__));






extern double trunc (double __x) __attribute__((__const__));
# 427 "/usr/lib/avr/include/math.h" 3
extern double round (double __x) __attribute__((__const__));
# 440 "/usr/lib/avr/include/math.h" 3
extern long lround (double __x) __attribute__((__const__));
# 454 "/usr/lib/avr/include/math.h" 3
extern long lrint (double __x) __attribute__((__const__));
# 100 "./LUFA/Drivers/USB/../../Common/Common.h" 2
# 1 "/usr/lib/avr/include/util/delay.h" 1 3
# 45 "/usr/lib/avr/include/util/delay.h" 3
# 1 "/usr/lib/avr/include/util/delay_basic.h" 1 3
# 40 "/usr/lib/avr/include/util/delay_basic.h" 3
static __inline__ void _delay_loop_1(uint8_t __count) __attribute__((__always_inline__));
static __inline__ void _delay_loop_2(uint16_t __count) __attribute__((__always_inline__));
# 80 "/usr/lib/avr/include/util/delay_basic.h" 3
void
_delay_loop_1(uint8_t __count)
{
 __asm__ volatile (
  "1: dec %0" "\n\t"
  "brne 1b"
  : "=r" (__count)
  : "0" (__count)
 );
}
# 102 "/usr/lib/avr/include/util/delay_basic.h" 3
void
_delay_loop_2(uint16_t __count)
{
 __asm__ volatile (
  "1: sbiw %0,1" "\n\t"
  "brne 1b"
  : "=w" (__count)
  : "0" (__count)
 );
}
# 46 "/usr/lib/avr/include/util/delay.h" 2 3
# 86 "/usr/lib/avr/include/util/delay.h" 3
static __inline__ void _delay_us(double __us) __attribute__((__always_inline__));
static __inline__ void _delay_ms(double __ms) __attribute__((__always_inline__));
# 165 "/usr/lib/avr/include/util/delay.h" 3
void
_delay_ms(double __ms)
{
 double __tmp ;
# 190 "/usr/lib/avr/include/util/delay.h" 3
 uint16_t __ticks;
 __tmp = ((1000000UL) / 4e3) * __ms;
 if (__tmp < 1.0)
  __ticks = 1;
 else if (__tmp > 65535)
 {

  __ticks = (uint16_t) (__ms * 10.0);
  while(__ticks)
  {

   _delay_loop_2(((1000000UL) / 4e3) / 10);
   __ticks --;
  }
  return;
 }
 else
  __ticks = (uint16_t)__tmp;
 _delay_loop_2(__ticks);

}
# 254 "/usr/lib/avr/include/util/delay.h" 3
void
_delay_us(double __us)
{
 double __tmp ;
# 279 "/usr/lib/avr/include/util/delay.h" 3
 uint8_t __ticks;
 double __tmp2 ;
 __tmp = ((1000000UL) / 3e6) * __us;
 __tmp2 = ((1000000UL) / 4e6) * __us;
 if (__tmp < 1.0)
  __ticks = 1;
 else if (__tmp2 > 65535)
 {
  _delay_ms(__us / 1000.0);
 }
 else if (__tmp > 255)
 {
  uint16_t __ticks=(uint16_t)__tmp2;
  _delay_loop_2(__ticks);
  return;
 }
 else
  __ticks = (uint8_t)__tmp;
 _delay_loop_1(__ticks);

}
# 101 "./LUFA/Drivers/USB/../../Common/Common.h" 2

   
# 102 "./LUFA/Drivers/USB/../../Common/Common.h"
  typedef uint8_t uint_reg_t;






# 1 "./LUFA/Drivers/USB/../../Common/Endianness.h" 1
# 400 "./LUFA/Drivers/USB/../../Common/Endianness.h"
   static inline uint16_t SwapEndian_16(const uint16_t Word) __attribute__ ((warn_unused_result)) __attribute__ ((const)) __attribute__ ((always_inline));
   static inline uint16_t SwapEndian_16(const uint16_t Word)
   {
    if (__builtin_constant_p(Word))
      return (uint16_t)((((Word) & 0xFF00) >> 8) | (((Word) & 0x00FF) << 8));

    uint8_t Temp;

    union
    {
     uint16_t Word;
     uint8_t Bytes[2];
    } Data;

    Data.Word = Word;

    Temp = Data.Bytes[0];
    Data.Bytes[0] = Data.Bytes[1];
    Data.Bytes[1] = Temp;

    return Data.Word;
   }
# 431 "./LUFA/Drivers/USB/../../Common/Endianness.h"
   static inline uint32_t SwapEndian_32(const uint32_t DWord) __attribute__ ((warn_unused_result)) __attribute__ ((const)) __attribute__ ((always_inline));
   static inline uint32_t SwapEndian_32(const uint32_t DWord)
   {
    if (__builtin_constant_p(DWord))
      return (uint32_t)((((DWord) & 0xFF000000UL) >> 24UL) | (((DWord) & 0x00FF0000UL) >> 8UL) | (((DWord) & 0x0000FF00UL) << 8UL) | (((DWord) & 0x000000FFUL) << 24UL));

    uint8_t Temp;

    union
    {
     uint32_t DWord;
     uint8_t Bytes[4];
    } Data;

    Data.DWord = DWord;

    Temp = Data.Bytes[0];
    Data.Bytes[0] = Data.Bytes[3];
    Data.Bytes[3] = Temp;

    Temp = Data.Bytes[1];
    Data.Bytes[1] = Data.Bytes[2];
    Data.Bytes[2] = Temp;

    return Data.DWord;
   }
# 467 "./LUFA/Drivers/USB/../../Common/Endianness.h"
   static inline void SwapEndian_n(void* const Data,
                                   uint8_t Length) __attribute__ ((nonnull (1)));
   static inline void SwapEndian_n(void* const Data,
                                   uint8_t Length)
   {
    uint8_t* CurrDataPos = (uint8_t*)Data;

    while (Length > 1)
    {
     uint8_t Temp = *CurrDataPos;
     *CurrDataPos = *(CurrDataPos + Length - 1);
     *(CurrDataPos + Length - 1) = Temp;

     CurrDataPos++;
     Length -= 2;
    }
   }
# 110 "./LUFA/Drivers/USB/../../Common/Common.h" 2
# 249 "./LUFA/Drivers/USB/../../Common/Common.h"
   static inline uint8_t BitReverse(uint8_t Byte) __attribute__ ((warn_unused_result)) __attribute__ ((const));
   static inline uint8_t BitReverse(uint8_t Byte)
   {
    Byte = (((Byte & 0xF0) >> 4) | ((Byte & 0x0F) << 4));
    Byte = (((Byte & 0xCC) >> 2) | ((Byte & 0x33) << 2));
    Byte = (((Byte & 0xAA) >> 1) | ((Byte & 0x55) << 1));

    return Byte;
   }







   static inline void Delay_MS(uint16_t Milliseconds) __attribute__ ((always_inline));
   static inline void Delay_MS(uint16_t Milliseconds)
   {

    if (__builtin_constant_p(Milliseconds))
    {
     _delay_ms(Milliseconds);
    }
    else
    {
     while (Milliseconds--)
       _delay_ms(1);
    }
# 295 "./LUFA/Drivers/USB/../../Common/Common.h"
   }
# 305 "./LUFA/Drivers/USB/../../Common/Common.h"
   static inline uint_reg_t GetGlobalInterruptMask(void) __attribute__ ((always_inline)) __attribute__ ((warn_unused_result));
   static inline uint_reg_t GetGlobalInterruptMask(void)
   {
    __asm__ __volatile__("" ::: "memory");;


    return 
# 311 "./LUFA/Drivers/USB/../../Common/Common.h" 3
          (*(volatile uint8_t *)((0x3F) + 0x20))
# 311 "./LUFA/Drivers/USB/../../Common/Common.h"
              ;





   }
# 327 "./LUFA/Drivers/USB/../../Common/Common.h"
   static inline void SetGlobalInterruptMask(const uint_reg_t GlobalIntState) __attribute__ ((always_inline));
   static inline void SetGlobalInterruptMask(const uint_reg_t GlobalIntState)
   {
    __asm__ __volatile__("" ::: "memory");;


    
# 333 "./LUFA/Drivers/USB/../../Common/Common.h" 3
   (*(volatile uint8_t *)((0x3F) + 0x20)) 
# 333 "./LUFA/Drivers/USB/../../Common/Common.h"
        = GlobalIntState;
# 343 "./LUFA/Drivers/USB/../../Common/Common.h"
    __asm__ __volatile__("" ::: "memory");;
   }





   static inline void GlobalInterruptEnable(void) __attribute__ ((always_inline));
   static inline void GlobalInterruptEnable(void)
   {
    __asm__ __volatile__("" ::: "memory");;


    
# 356 "./LUFA/Drivers/USB/../../Common/Common.h" 3
   __asm__ __volatile__ ("sei" ::: "memory")
# 356 "./LUFA/Drivers/USB/../../Common/Common.h"
        ;






    __asm__ __volatile__("" ::: "memory");;
   }





   static inline void GlobalInterruptDisable(void) __attribute__ ((always_inline));
   static inline void GlobalInterruptDisable(void)
   {
    __asm__ __volatile__("" ::: "memory");;


    
# 376 "./LUFA/Drivers/USB/../../Common/Common.h" 3
   __asm__ __volatile__ ("cli" ::: "memory")
# 376 "./LUFA/Drivers/USB/../../Common/Common.h"
        ;






    __asm__ __volatile__("" ::: "memory");;
   }
# 383 "./LUFA/Drivers/USB/USB.h" 2
# 1 "./LUFA/Drivers/USB/Core/USBMode.h" 1
# 69 "./LUFA/Drivers/USB/Core/USBMode.h"
# 1 "./LUFA/Drivers/USB/Core/../../../Common/Common.h" 1
# 70 "./LUFA/Drivers/USB/Core/USBMode.h" 2
# 384 "./LUFA/Drivers/USB/USB.h" 2


# 1 "./LUFA/Drivers/USB/Core/USBTask.h" 1
# 46 "./LUFA/Drivers/USB/Core/USBTask.h"
# 1 "./LUFA/Drivers/USB/Core/USBMode.h" 1
# 47 "./LUFA/Drivers/USB/Core/USBTask.h" 2
# 1 "./LUFA/Drivers/USB/Core/USBController.h" 1
# 138 "./LUFA/Drivers/USB/Core/USBController.h"
  enum USB_Modes_t
  {
   USB_MODE_None = 0,
   USB_MODE_Device = 1,
   USB_MODE_Host = 2,
   USB_MODE_UID = 3,


  };



# 1 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 1
# 52 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
# 1 "./LUFA/Drivers/USB/Core/AVR8/../../../../Common/Common.h" 1
# 53 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 2
# 1 "./LUFA/Drivers/USB/Core/AVR8/../USBMode.h" 1
# 54 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 2
# 1 "./LUFA/Drivers/USB/Core/AVR8/../Events.h" 1
# 62 "./LUFA/Drivers/USB/Core/AVR8/../Events.h"
# 1 "./LUFA/Drivers/USB/Core/AVR8/../../../../Common/Common.h" 1
# 63 "./LUFA/Drivers/USB/Core/AVR8/../Events.h" 2
# 1 "./LUFA/Drivers/USB/Core/AVR8/../USBMode.h" 1
# 64 "./LUFA/Drivers/USB/Core/AVR8/../Events.h" 2
# 89 "./LUFA/Drivers/USB/Core/AVR8/../Events.h"
   void EVENT_USB_UIDChange(void);
# 102 "./LUFA/Drivers/USB/Core/AVR8/../Events.h"
   void EVENT_USB_Host_HostError(const uint8_t ErrorCode);
# 117 "./LUFA/Drivers/USB/Core/AVR8/../Events.h"
   void EVENT_USB_Host_DeviceAttached(void);
# 131 "./LUFA/Drivers/USB/Core/AVR8/../Events.h"
   void EVENT_USB_Host_DeviceUnattached(void);
# 149 "./LUFA/Drivers/USB/Core/AVR8/../Events.h"
   void EVENT_USB_Host_DeviceEnumerationFailed(const uint8_t ErrorCode,
                                               const uint8_t SubErrorCode);
# 166 "./LUFA/Drivers/USB/Core/AVR8/../Events.h"
   void EVENT_USB_Host_DeviceEnumerationComplete(void);
# 183 "./LUFA/Drivers/USB/Core/AVR8/../Events.h"
   void EVENT_USB_Host_StartOfFrame(void);
# 205 "./LUFA/Drivers/USB/Core/AVR8/../Events.h"
   void EVENT_USB_Device_Connect(void);
# 223 "./LUFA/Drivers/USB/Core/AVR8/../Events.h"
   void EVENT_USB_Device_Disconnect(void);
# 249 "./LUFA/Drivers/USB/Core/AVR8/../Events.h"
   void EVENT_USB_Device_ControlRequest(void);
# 263 "./LUFA/Drivers/USB/Core/AVR8/../Events.h"
   void EVENT_USB_Device_ConfigurationChanged(void);
# 281 "./LUFA/Drivers/USB/Core/AVR8/../Events.h"
   void EVENT_USB_Device_Suspend(void);
# 299 "./LUFA/Drivers/USB/Core/AVR8/../Events.h"
   void EVENT_USB_Device_WakeUp(void);
# 311 "./LUFA/Drivers/USB/Core/AVR8/../Events.h"
   void EVENT_USB_Device_Reset(void);
# 327 "./LUFA/Drivers/USB/Core/AVR8/../Events.h"
   void EVENT_USB_Device_StartOfFrame(void);
# 55 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 2
# 1 "./LUFA/Drivers/USB/Core/AVR8/../USBTask.h" 1
# 56 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 2
# 1 "./LUFA/Drivers/USB/Core/AVR8/../USBInterrupt.h" 1
# 60 "./LUFA/Drivers/USB/Core/AVR8/../USBInterrupt.h"
# 1 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 1
# 45 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
# 1 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/../../../../Common/Common.h" 1
# 46 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 2
# 60 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
   enum USB_Interrupts_t
   {

    USB_INT_VBUSTI = 0,





    USB_INT_WAKEUPI = 2,
    USB_INT_SUSPI = 3,
    USB_INT_EORSTI = 4,
    USB_INT_SOFI = 5,
    USB_INT_RXSTPI = 6,
# 84 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
   };


   static inline void USB_INT_Enable(const uint8_t Interrupt) __attribute__ ((always_inline));
   static inline void USB_INT_Enable(const uint8_t Interrupt)
   {
    switch (Interrupt)
    {

     case USB_INT_VBUSTI:
      
# 94 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
     (*(volatile uint8_t *)(0xD8)) 
# 94 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
            |= (1 << 
# 94 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
                     0
# 94 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                           );
      break;







     case USB_INT_WAKEUPI:
      
# 104 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
     (*(volatile uint8_t *)(0xE2)) 
# 104 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
            |= (1 << 
# 104 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
                     4
# 104 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                            );
      break;
     case USB_INT_SUSPI:
      
# 107 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
     (*(volatile uint8_t *)(0xE2)) 
# 107 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
            |= (1 << 
# 107 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
                     0
# 107 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                          );
      break;
     case USB_INT_EORSTI:
      
# 110 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
     (*(volatile uint8_t *)(0xE2)) 
# 110 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
            |= (1 << 
# 110 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
                     3
# 110 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                           );
      break;
     case USB_INT_SOFI:
      
# 113 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
     (*(volatile uint8_t *)(0xE2)) 
# 113 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
            |= (1 << 
# 113 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
                     2
# 113 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                         );
      break;
     case USB_INT_RXSTPI:
      
# 116 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
     (*(volatile uint8_t *)(0xF0)) 
# 116 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
            |= (1 << 
# 116 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
                     3
# 116 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                           );
      break;
# 142 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
     default:
      break;
    }
   }

   static inline void USB_INT_Disable(const uint8_t Interrupt) __attribute__ ((always_inline));
   static inline void USB_INT_Disable(const uint8_t Interrupt)
   {
    switch (Interrupt)
    {

     case USB_INT_VBUSTI:
      
# 154 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
     (*(volatile uint8_t *)(0xD8)) 
# 154 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
            &= ~(1 << 
# 154 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
                      0
# 154 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                            );
      break;







     case USB_INT_WAKEUPI:
      
# 164 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
     (*(volatile uint8_t *)(0xE2)) 
# 164 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
            &= ~(1 << 
# 164 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
                      4
# 164 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                             );
      break;
     case USB_INT_SUSPI:
      
# 167 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
     (*(volatile uint8_t *)(0xE2)) 
# 167 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
            &= ~(1 << 
# 167 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
                      0
# 167 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                           );
      break;
     case USB_INT_EORSTI:
      
# 170 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
     (*(volatile uint8_t *)(0xE2)) 
# 170 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
            &= ~(1 << 
# 170 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
                      3
# 170 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                            );
      break;
     case USB_INT_SOFI:
      
# 173 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
     (*(volatile uint8_t *)(0xE2)) 
# 173 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
            &= ~(1 << 
# 173 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
                      2
# 173 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                          );
      break;
     case USB_INT_RXSTPI:
      
# 176 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
     (*(volatile uint8_t *)(0xF0)) 
# 176 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
            &= ~(1 << 
# 176 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
                      3
# 176 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                            );
      break;
# 202 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
     default:
      break;
    }
   }

   static inline void USB_INT_Clear(const uint8_t Interrupt) __attribute__ ((always_inline));
   static inline void USB_INT_Clear(const uint8_t Interrupt)
   {
    switch (Interrupt)
    {

     case USB_INT_VBUSTI:
      
# 214 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
     (*(volatile uint8_t *)(0xDA)) 
# 214 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
            &= ~(1 << 
# 214 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
                      0
# 214 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                            );
      break;







     case USB_INT_WAKEUPI:
      
# 224 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
     (*(volatile uint8_t *)(0xE1)) 
# 224 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
            &= ~(1 << 
# 224 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
                      4
# 224 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                             );
      break;
     case USB_INT_SUSPI:
      
# 227 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
     (*(volatile uint8_t *)(0xE1)) 
# 227 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
            &= ~(1 << 
# 227 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
                      0
# 227 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                           );
      break;
     case USB_INT_EORSTI:
      
# 230 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
     (*(volatile uint8_t *)(0xE1)) 
# 230 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
            &= ~(1 << 
# 230 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
                      3
# 230 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                            );
      break;
     case USB_INT_SOFI:
      
# 233 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
     (*(volatile uint8_t *)(0xE1)) 
# 233 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
            &= ~(1 << 
# 233 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
                      2
# 233 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                          );
      break;
     case USB_INT_RXSTPI:
      
# 236 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
     (*(volatile uint8_t *)(0xE8)) 
# 236 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
            &= ~(1 << 
# 236 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
                      3
# 236 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                            );
      break;
# 262 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
     default:
      break;
    }
   }

   static inline 
# 267 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3 4
                _Bool 
# 267 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                     USB_INT_IsEnabled(const uint8_t Interrupt) __attribute__ ((always_inline)) __attribute__ ((warn_unused_result));
   static inline 
# 268 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3 4
                _Bool 
# 268 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                     USB_INT_IsEnabled(const uint8_t Interrupt)
   {
    switch (Interrupt)
    {

     case USB_INT_VBUSTI:
      return (
# 274 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
             (*(volatile uint8_t *)(0xD8)) 
# 274 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                    & (1 << 
# 274 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
                            0
# 274 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                                  ));






     case USB_INT_WAKEUPI:
      return (
# 282 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
             (*(volatile uint8_t *)(0xE2)) 
# 282 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                    & (1 << 
# 282 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
                            4
# 282 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                                   ));
     case USB_INT_SUSPI:
      return (
# 284 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
             (*(volatile uint8_t *)(0xE2)) 
# 284 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                    & (1 << 
# 284 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
                            0
# 284 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                                 ));
     case USB_INT_EORSTI:
      return (
# 286 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
             (*(volatile uint8_t *)(0xE2)) 
# 286 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                    & (1 << 
# 286 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
                            3
# 286 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                                  ));
     case USB_INT_SOFI:
      return (
# 288 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
             (*(volatile uint8_t *)(0xE2)) 
# 288 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                    & (1 << 
# 288 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
                            2
# 288 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                                ));
     case USB_INT_RXSTPI:
      return (
# 290 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
             (*(volatile uint8_t *)(0xF0)) 
# 290 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                    & (1 << 
# 290 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
                            3
# 290 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                                  ));
# 308 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
     default:
      return 
# 309 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3 4
            0
# 309 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                 ;
    }
   }

   static inline 
# 313 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3 4
                _Bool 
# 313 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                     USB_INT_HasOccurred(const uint8_t Interrupt) __attribute__ ((always_inline)) __attribute__ ((warn_unused_result));
   static inline 
# 314 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3 4
                _Bool 
# 314 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                     USB_INT_HasOccurred(const uint8_t Interrupt)
   {
    switch (Interrupt)
    {

     case USB_INT_VBUSTI:
      return (
# 320 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
             (*(volatile uint8_t *)(0xDA)) 
# 320 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                    & (1 << 
# 320 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
                            0
# 320 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                                  ));






     case USB_INT_WAKEUPI:
      return (
# 328 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
             (*(volatile uint8_t *)(0xE1)) 
# 328 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                    & (1 << 
# 328 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
                            4
# 328 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                                   ));
     case USB_INT_SUSPI:
      return (
# 330 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
             (*(volatile uint8_t *)(0xE1)) 
# 330 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                    & (1 << 
# 330 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
                            0
# 330 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                                 ));
     case USB_INT_EORSTI:
      return (
# 332 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
             (*(volatile uint8_t *)(0xE1)) 
# 332 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                    & (1 << 
# 332 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
                            3
# 332 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                                  ));
     case USB_INT_SOFI:
      return (
# 334 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
             (*(volatile uint8_t *)(0xE1)) 
# 334 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                    & (1 << 
# 334 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
                            2
# 334 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                                ));
     case USB_INT_RXSTPI:
      return (
# 336 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
             (*(volatile uint8_t *)(0xE8)) 
# 336 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                    & (1 << 
# 336 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3
                            3
# 336 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                                  ));
# 354 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
     default:
      return 
# 355 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 3 4
            0
# 355 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h"
                 ;
    }
   }


# 1 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/../USBMode.h" 1
# 361 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 2
# 1 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/../Events.h" 1
# 362 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 2
# 1 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/../USBController.h" 1
# 363 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/USBInterrupt_AVR8.h" 2


   void USB_INT_ClearAllInterrupts(void);
   void USB_INT_DisableAllInterrupts(void);
# 61 "./LUFA/Drivers/USB/Core/AVR8/../USBInterrupt.h" 2
# 57 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 2
# 67 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
# 1 "./LUFA/Drivers/USB/Core/AVR8/../Device.h" 1
# 55 "./LUFA/Drivers/USB/Core/AVR8/../Device.h"
# 1 "./LUFA/Drivers/USB/Core/AVR8/../StdDescriptors.h" 1
# 55 "./LUFA/Drivers/USB/Core/AVR8/../StdDescriptors.h"
# 1 "./LUFA/Drivers/USB/Core/AVR8/../Events.h" 1
# 56 "./LUFA/Drivers/USB/Core/AVR8/../StdDescriptors.h" 2
# 207 "./LUFA/Drivers/USB/Core/AVR8/../StdDescriptors.h"
   enum USB_DescriptorTypes_t
   {
    DTYPE_Device = 0x01,
    DTYPE_Configuration = 0x02,
    DTYPE_String = 0x03,
    DTYPE_Interface = 0x04,
    DTYPE_Endpoint = 0x05,
    DTYPE_DeviceQualifier = 0x06,
    DTYPE_Other = 0x07,
    DTYPE_InterfacePower = 0x08,
    DTYPE_InterfaceAssociation = 0x0B,
   };


   enum USB_Descriptor_ClassSubclassProtocol_t
   {
    USB_CSCP_NoDeviceClass = 0x00,


    USB_CSCP_NoDeviceSubclass = 0x00,


    USB_CSCP_NoDeviceProtocol = 0x00,


    USB_CSCP_VendorSpecificClass = 0xFF,


    USB_CSCP_VendorSpecificSubclass = 0xFF,


    USB_CSCP_VendorSpecificProtocol = 0xFF,


    USB_CSCP_IADDeviceClass = 0xEF,


    USB_CSCP_IADDeviceSubclass = 0x02,


    USB_CSCP_IADDeviceProtocol = 0x01,


   };
# 262 "./LUFA/Drivers/USB/Core/AVR8/../StdDescriptors.h"
   typedef struct
   {
    uint8_t Size;
    uint8_t Type;


   } __attribute__ ((packed)) USB_Descriptor_Header_t;
# 279 "./LUFA/Drivers/USB/Core/AVR8/../StdDescriptors.h"
   typedef struct
   {
    uint8_t bLength;
    uint8_t bDescriptorType;


   } __attribute__ ((packed)) USB_StdDescriptor_Header_t;
# 296 "./LUFA/Drivers/USB/Core/AVR8/../StdDescriptors.h"
   typedef struct
   {
    USB_Descriptor_Header_t Header;

    uint16_t USBSpecification;



    uint8_t Class;
    uint8_t SubClass;
    uint8_t Protocol;

    uint8_t Endpoint0Size;

    uint16_t VendorID;
    uint16_t ProductID;
    uint16_t ReleaseNumber;



    uint8_t ManufacturerStrIndex;





    uint8_t ProductStrIndex;



    uint8_t SerialNumStrIndex;
# 338 "./LUFA/Drivers/USB/Core/AVR8/../StdDescriptors.h"
    uint8_t NumberOfConfigurations;


   } __attribute__ ((packed)) USB_Descriptor_Device_t;
# 352 "./LUFA/Drivers/USB/Core/AVR8/../StdDescriptors.h"
   typedef struct
   {
    uint8_t bLength;
    uint8_t bDescriptorType;


    uint16_t bcdUSB;



    uint8_t bDeviceClass;
    uint8_t bDeviceSubClass;
    uint8_t bDeviceProtocol;
    uint8_t bMaxPacketSize0;
    uint16_t idVendor;
    uint16_t idProduct;
    uint16_t bcdDevice;



    uint8_t iManufacturer;





    uint8_t iProduct;



    uint8_t iSerialNumber;
# 394 "./LUFA/Drivers/USB/Core/AVR8/../StdDescriptors.h"
    uint8_t bNumConfigurations;


   } __attribute__ ((packed)) USB_StdDescriptor_Device_t;
# 406 "./LUFA/Drivers/USB/Core/AVR8/../StdDescriptors.h"
   typedef struct
   {
    USB_Descriptor_Header_t Header;

    uint16_t USBSpecification;



    uint8_t Class;
    uint8_t SubClass;
    uint8_t Protocol;

    uint8_t Endpoint0Size;
    uint8_t NumberOfConfigurations;


    uint8_t Reserved;
   } __attribute__ ((packed)) USB_Descriptor_DeviceQualifier_t;
# 432 "./LUFA/Drivers/USB/Core/AVR8/../StdDescriptors.h"
   typedef struct
   {
    uint8_t bLength;
    uint8_t bDescriptorType;


    uint16_t bcdUSB;



    uint8_t bDeviceClass;
    uint8_t bDeviceSubClass;
    uint8_t bDeviceProtocol;
    uint8_t bMaxPacketSize0;
    uint8_t bNumConfigurations;


    uint8_t bReserved;
   } __attribute__ ((packed)) USB_StdDescriptor_DeviceQualifier_t;
# 461 "./LUFA/Drivers/USB/Core/AVR8/../StdDescriptors.h"
   typedef struct
   {
    USB_Descriptor_Header_t Header;

    uint16_t TotalConfigurationSize;


    uint8_t TotalInterfaces;

    uint8_t ConfigurationNumber;
    uint8_t ConfigurationStrIndex;

    uint8_t ConfigAttributes;



    uint8_t MaxPowerConsumption;



   } __attribute__ ((packed)) USB_Descriptor_Configuration_Header_t;
# 492 "./LUFA/Drivers/USB/Core/AVR8/../StdDescriptors.h"
   typedef struct
   {
    uint8_t bLength;
    uint8_t bDescriptorType;


    uint16_t wTotalLength;


    uint8_t bNumInterfaces;
    uint8_t bConfigurationValue;
    uint8_t iConfiguration;
    uint8_t bmAttributes;


    uint8_t bMaxPower;



   } __attribute__ ((packed)) USB_StdDescriptor_Configuration_Header_t;
# 522 "./LUFA/Drivers/USB/Core/AVR8/../StdDescriptors.h"
   typedef struct
   {
    USB_Descriptor_Header_t Header;

    uint8_t InterfaceNumber;
    uint8_t AlternateSetting;




    uint8_t TotalEndpoints;

    uint8_t Class;
    uint8_t SubClass;
    uint8_t Protocol;

    uint8_t InterfaceStrIndex;
   } __attribute__ ((packed)) USB_Descriptor_Interface_t;
# 550 "./LUFA/Drivers/USB/Core/AVR8/../StdDescriptors.h"
   typedef struct
   {
    uint8_t bLength;
    uint8_t bDescriptorType;


    uint8_t bInterfaceNumber;
    uint8_t bAlternateSetting;




    uint8_t bNumEndpoints;
    uint8_t bInterfaceClass;
    uint8_t bInterfaceSubClass;
    uint8_t bInterfaceProtocol;
    uint8_t iInterface;


   } __attribute__ ((packed)) USB_StdDescriptor_Interface_t;
# 586 "./LUFA/Drivers/USB/Core/AVR8/../StdDescriptors.h"
   typedef struct
   {
    USB_Descriptor_Header_t Header;

    uint8_t FirstInterfaceIndex;
    uint8_t TotalInterfaces;

    uint8_t Class;
    uint8_t SubClass;
    uint8_t Protocol;

    uint8_t IADStrIndex;


   } __attribute__ ((packed)) USB_Descriptor_Interface_Association_t;
# 618 "./LUFA/Drivers/USB/Core/AVR8/../StdDescriptors.h"
   typedef struct
   {
    uint8_t bLength;
    uint8_t bDescriptorType;


    uint8_t bFirstInterface;
    uint8_t bInterfaceCount;
    uint8_t bFunctionClass;
    uint8_t bFunctionSubClass;
    uint8_t bFunctionProtocol;
    uint8_t iFunction;


   } __attribute__ ((packed)) USB_StdDescriptor_Interface_Association_t;
# 643 "./LUFA/Drivers/USB/Core/AVR8/../StdDescriptors.h"
   typedef struct
   {
    USB_Descriptor_Header_t Header;

    uint8_t EndpointAddress;


    uint8_t Attributes;


    uint16_t EndpointSize;


    uint8_t PollingIntervalMS;


   } __attribute__ ((packed)) USB_Descriptor_Endpoint_t;
# 671 "./LUFA/Drivers/USB/Core/AVR8/../StdDescriptors.h"
   typedef struct
   {
    uint8_t bLength;
    uint8_t bDescriptorType;


    uint8_t bEndpointAddress;


    uint8_t bmAttributes;


    uint16_t wMaxPacketSize;


    uint8_t bInterval;


   } __attribute__ ((packed)) USB_StdDescriptor_Endpoint_t;
# 706 "./LUFA/Drivers/USB/Core/AVR8/../StdDescriptors.h"
   typedef struct
   {
    USB_Descriptor_Header_t Header;


    wchar_t UnicodeString[];
# 726 "./LUFA/Drivers/USB/Core/AVR8/../StdDescriptors.h"
   } __attribute__ ((packed)) USB_Descriptor_String_t;
# 744 "./LUFA/Drivers/USB/Core/AVR8/../StdDescriptors.h"
   typedef struct
   {
    uint8_t bLength;
    uint8_t bDescriptorType;


    uint16_t bString[];
# 759 "./LUFA/Drivers/USB/Core/AVR8/../StdDescriptors.h"
   } __attribute__ ((packed)) USB_StdDescriptor_String_t;
# 56 "./LUFA/Drivers/USB/Core/AVR8/../Device.h" 2
# 1 "./LUFA/Drivers/USB/Core/AVR8/../USBInterrupt.h" 1
# 57 "./LUFA/Drivers/USB/Core/AVR8/../Device.h" 2
# 1 "./LUFA/Drivers/USB/Core/AVR8/../Endpoint.h" 1
# 94 "./LUFA/Drivers/USB/Core/AVR8/../Endpoint.h"
   typedef struct
   {
    uint8_t Address;
    uint16_t Size;
    uint8_t Type;
    uint8_t Banks;
   } USB_Endpoint_Table_t;
# 115 "./LUFA/Drivers/USB/Core/AVR8/../Endpoint.h"
# 1 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 1
# 77 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
# 1 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/../USBTask.h" 1
# 78 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 2
# 1 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/../USBInterrupt.h" 1
# 79 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 2
# 93 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
   static inline uint8_t Endpoint_BytesToEPSizeMask(const uint16_t Bytes) __attribute__ ((warn_unused_result)) __attribute__ ((const))
                                                                          __attribute__ ((always_inline));
   static inline uint8_t Endpoint_BytesToEPSizeMask(const uint16_t Bytes)
   {
    uint8_t MaskVal = 0;
    uint16_t CheckBytes = 8;

    while (CheckBytes < Bytes)
    {
     MaskVal++;
     CheckBytes <<= 1;
    }

    return (MaskVal << 
# 106 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                      4
# 106 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                             );
   }


   void Endpoint_ClearEndpoints(void);
   
# 111 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3 4
  _Bool 
# 111 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
       Endpoint_ConfigureEndpoint_Prv(const uint8_t Number,
                                       const uint8_t UECFG0XData,
                                       const uint8_t UECFG1XData);
# 145 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
   enum Endpoint_WaitUntilReady_ErrorCodes_t
   {
    ENDPOINT_READYWAIT_NoError = 0,
    ENDPOINT_READYWAIT_EndpointStalled = 1,


    ENDPOINT_READYWAIT_DeviceDisconnected = 2,


    ENDPOINT_READYWAIT_BusSuspended = 3,



    ENDPOINT_READYWAIT_Timeout = 4,



   };
# 196 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
   static inline 
# 196 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3 4
                _Bool 
# 196 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                     Endpoint_ConfigureEndpoint(const uint8_t Address,
                                                 const uint8_t Type,
                                                 const uint16_t Size,
                                                 const uint8_t Banks) __attribute__ ((always_inline));
   static inline 
# 200 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3 4
                _Bool 
# 200 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                     Endpoint_ConfigureEndpoint(const uint8_t Address,
                                                 const uint8_t Type,
                                                 const uint16_t Size,
                                                 const uint8_t Banks)
   {
    uint8_t Number = (Address & 0x0F);

    if (Number >= 7)
      return 
# 208 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3 4
            0
# 208 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                 ;

    return Endpoint_ConfigureEndpoint_Prv(Number,
                                          ((Type << 
# 211 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                                                   6
# 211 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                                                          ) | ((Address & 0x80) ? (1 << 
# 211 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                                                                                                   0
# 211 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                                                                                                        ) : 0)),
                                          ((1 << 
# 212 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                                                1
# 212 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                                                     ) | ((Banks > 1) ? (1 << 
# 212 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                                                                              2
# 212 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                                                                                   ) : 0) | Endpoint_BytesToEPSizeMask(Size)));
   }







   static inline uint16_t Endpoint_BytesInEndpoint(void) __attribute__ ((warn_unused_result)) __attribute__ ((always_inline));
   static inline uint16_t Endpoint_BytesInEndpoint(void)
   {



     return (((uint16_t)
# 227 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                       (*(volatile uint8_t *)(0xF3)) 
# 227 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                              << 8) | 
# 227 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                                      (*(volatile uint8_t *)(0xF2))
# 227 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                                            );



   }





   static inline uint8_t Endpoint_GetEndpointDirection(void) __attribute__ ((warn_unused_result)) __attribute__ ((always_inline));
   static inline uint8_t Endpoint_GetEndpointDirection(void)
   {
    return (
# 240 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
           (*(volatile uint8_t *)(0xEC)) 
# 240 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                   & (1 << 
# 240 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                           0
# 240 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                                )) ? 0x80 : 0x00;
   }







   static inline uint8_t Endpoint_GetCurrentEndpoint(void) __attribute__ ((warn_unused_result)) __attribute__ ((always_inline));
   static inline uint8_t Endpoint_GetCurrentEndpoint(void)
   {

     return ((
# 253 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
             (*(volatile uint8_t *)(0xE9)) 
# 253 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                   & 0x0F) | Endpoint_GetEndpointDirection());



   }
# 266 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
   static inline void Endpoint_SelectEndpoint(const uint8_t Address) __attribute__ ((always_inline));
   static inline void Endpoint_SelectEndpoint(const uint8_t Address)
   {

     
# 270 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
    (*(volatile uint8_t *)(0xE9)) 
# 270 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
          = (Address & 0x0F);

   }






   static inline void Endpoint_ResetEndpoint(const uint8_t Address) __attribute__ ((always_inline));
   static inline void Endpoint_ResetEndpoint(const uint8_t Address)
   {
    
# 282 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
   (*(volatile uint8_t *)(0xEA)) 
# 282 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
         = (1 << (Address & 0x0F));
    
# 283 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
   (*(volatile uint8_t *)(0xEA)) 
# 283 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
         = 0;
   }






   static inline void Endpoint_EnableEndpoint(void) __attribute__ ((always_inline));
   static inline void Endpoint_EnableEndpoint(void)
   {
    
# 294 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
   (*(volatile uint8_t *)(0xEB)) 
# 294 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
          |= (1 << 
# 294 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                   0
# 294 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                       );
   }




   static inline void Endpoint_DisableEndpoint(void) __attribute__ ((always_inline));
   static inline void Endpoint_DisableEndpoint(void)
   {
    
# 303 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
   (*(volatile uint8_t *)(0xEB)) 
# 303 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
          &= ~(1 << 
# 303 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                    0
# 303 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                        );
   }





   static inline 
# 310 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3 4
                _Bool 
# 310 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                     Endpoint_IsEnabled(void) __attribute__ ((warn_unused_result)) __attribute__ ((always_inline));
   static inline 
# 311 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3 4
                _Bool 
# 311 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                     Endpoint_IsEnabled(void)
   {
    return ((
# 313 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
            (*(volatile uint8_t *)(0xEB)) 
# 313 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                   & (1 << 
# 313 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                           0
# 313 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                               )) ? 
# 313 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3 4
                                    1 
# 313 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                                         : 
# 313 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3 4
                                           0
# 313 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                                                );
   }
# 324 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
   static inline uint8_t Endpoint_GetBusyBanks(void) __attribute__ ((always_inline)) __attribute__ ((warn_unused_result));
   static inline uint8_t Endpoint_GetBusyBanks(void)
   {
    return (
# 327 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
           (*(volatile uint8_t *)(0xEE)) 
# 327 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                   & (0x03 << 
# 327 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                              0
# 327 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                                      ));
   }
# 337 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
   static inline void Endpoint_AbortPendingIN(void)
   {
    while (Endpoint_GetBusyBanks() != 0)
    {
     
# 341 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
    (*(volatile uint8_t *)(0xE8)) 
# 341 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
           |= (1 << 
# 341 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                    2
# 341 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                          );
     while (
# 342 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
           (*(volatile uint8_t *)(0xE8)) 
# 342 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                  & (1 << 
# 342 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                          2
# 342 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                                ));
    }
   }
# 357 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
   static inline 
# 357 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3 4
                _Bool 
# 357 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                     Endpoint_IsReadWriteAllowed(void) __attribute__ ((warn_unused_result)) __attribute__ ((always_inline));
   static inline 
# 358 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3 4
                _Bool 
# 358 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                     Endpoint_IsReadWriteAllowed(void)
   {
    return ((
# 360 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
            (*(volatile uint8_t *)(0xE8)) 
# 360 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                   & (1 << 
# 360 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                           5
# 360 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                               )) ? 
# 360 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3 4
                                    1 
# 360 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                                         : 
# 360 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3 4
                                           0
# 360 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                                                );
   }





   static inline 
# 367 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3 4
                _Bool 
# 367 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                     Endpoint_IsConfigured(void) __attribute__ ((warn_unused_result)) __attribute__ ((always_inline));
   static inline 
# 368 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3 4
                _Bool 
# 368 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                     Endpoint_IsConfigured(void)
   {
    return ((
# 370 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
            (*(volatile uint8_t *)(0xEE)) 
# 370 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                    & (1 << 
# 370 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                            7
# 370 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                                 )) ? 
# 370 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3 4
                                      1 
# 370 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                                           : 
# 370 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3 4
                                             0
# 370 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                                                  );
   }







   static inline uint8_t Endpoint_GetEndpointInterrupts(void) __attribute__ ((warn_unused_result)) __attribute__ ((always_inline));
   static inline uint8_t Endpoint_GetEndpointInterrupts(void)
   {
    return 
# 382 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
          (*(volatile uint8_t *)(0xF4))
# 382 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
               ;
   }
# 392 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
   static inline 
# 392 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3 4
                _Bool 
# 392 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                     Endpoint_HasEndpointInterrupted(const uint8_t Address) __attribute__ ((warn_unused_result)) __attribute__ ((always_inline));
   static inline 
# 393 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3 4
                _Bool 
# 393 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                     Endpoint_HasEndpointInterrupted(const uint8_t Address)
   {
    return ((Endpoint_GetEndpointInterrupts() & (1 << (Address & 0x0F))) ? 
# 395 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3 4
                                                                                         1 
# 395 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                                                                                              : 
# 395 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3 4
                                                                                                0
# 395 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                                                                                                     );
   }







   static inline 
# 404 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3 4
                _Bool 
# 404 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                     Endpoint_IsINReady(void) __attribute__ ((warn_unused_result)) __attribute__ ((always_inline));
   static inline 
# 405 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3 4
                _Bool 
# 405 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                     Endpoint_IsINReady(void)
   {
    return ((
# 407 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
            (*(volatile uint8_t *)(0xE8)) 
# 407 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                   & (1 << 
# 407 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                           0
# 407 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                                )) ? 
# 407 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3 4
                                     1 
# 407 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                                          : 
# 407 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3 4
                                            0
# 407 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                                                 );
   }







   static inline 
# 416 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3 4
                _Bool 
# 416 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                     Endpoint_IsOUTReceived(void) __attribute__ ((warn_unused_result)) __attribute__ ((always_inline));
   static inline 
# 417 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3 4
                _Bool 
# 417 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                     Endpoint_IsOUTReceived(void)
   {
    return ((
# 419 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
            (*(volatile uint8_t *)(0xE8)) 
# 419 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                   & (1 << 
# 419 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                           2
# 419 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                                 )) ? 
# 419 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3 4
                                      1 
# 419 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                                           : 
# 419 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3 4
                                             0
# 419 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                                                  );
   }







   static inline 
# 428 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3 4
                _Bool 
# 428 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                     Endpoint_IsSETUPReceived(void) __attribute__ ((warn_unused_result)) __attribute__ ((always_inline));
   static inline 
# 429 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3 4
                _Bool 
# 429 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                     Endpoint_IsSETUPReceived(void)
   {
    return ((
# 431 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
            (*(volatile uint8_t *)(0xE8)) 
# 431 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                   & (1 << 
# 431 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                           3
# 431 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                                 )) ? 
# 431 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3 4
                                      1 
# 431 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                                           : 
# 431 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3 4
                                             0
# 431 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                                                  );
   }
# 441 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
   static inline void Endpoint_ClearSETUP(void) __attribute__ ((always_inline));
   static inline void Endpoint_ClearSETUP(void)
   {
    
# 444 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
   (*(volatile uint8_t *)(0xE8)) 
# 444 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
          &= ~(1 << 
# 444 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                    3
# 444 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                          );
   }






   static inline void Endpoint_ClearIN(void) __attribute__ ((always_inline));
   static inline void Endpoint_ClearIN(void)
   {

     
# 456 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
    (*(volatile uint8_t *)(0xE8)) 
# 456 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
           &= ~((1 << 
# 456 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                      0
# 456 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                           ) | (1 << 
# 456 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                                     7
# 456 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                                            ));



   }






   static inline void Endpoint_ClearOUT(void) __attribute__ ((always_inline));
   static inline void Endpoint_ClearOUT(void)
   {

     
# 471 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
    (*(volatile uint8_t *)(0xE8)) 
# 471 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
           &= ~((1 << 
# 471 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                      2
# 471 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                            ) | (1 << 
# 471 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                                      7
# 471 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                                             ));



   }
# 488 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
   static inline void Endpoint_StallTransaction(void) __attribute__ ((always_inline));
   static inline void Endpoint_StallTransaction(void)
   {
    
# 491 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
   (*(volatile uint8_t *)(0xEB)) 
# 491 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
          |= (1 << 
# 491 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                   5
# 491 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                          );
   }





   static inline void Endpoint_ClearStall(void) __attribute__ ((always_inline));
   static inline void Endpoint_ClearStall(void)
   {
    
# 501 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
   (*(volatile uint8_t *)(0xEB)) 
# 501 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
          |= (1 << 
# 501 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                   4
# 501 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                           );
   }







   static inline 
# 510 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3 4
                _Bool 
# 510 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                     Endpoint_IsStalled(void) __attribute__ ((warn_unused_result)) __attribute__ ((always_inline));
   static inline 
# 511 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3 4
                _Bool 
# 511 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                     Endpoint_IsStalled(void)
   {
    return ((
# 513 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
            (*(volatile uint8_t *)(0xEB)) 
# 513 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                   & (1 << 
# 513 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                           5
# 513 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                                  )) ? 
# 513 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3 4
                                       1 
# 513 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                                            : 
# 513 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3 4
                                              0
# 513 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                                                   );
   }


   static inline void Endpoint_ResetDataToggle(void) __attribute__ ((always_inline));
   static inline void Endpoint_ResetDataToggle(void)
   {
    
# 520 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
   (*(volatile uint8_t *)(0xEB)) 
# 520 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
          |= (1 << 
# 520 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                   3
# 520 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                        );
   }





   static inline void Endpoint_SetEndpointDirection(const uint8_t DirectionMask) __attribute__ ((always_inline));
   static inline void Endpoint_SetEndpointDirection(const uint8_t DirectionMask)
   {
    
# 530 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
   (*(volatile uint8_t *)(0xEC)) 
# 530 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
           = ((
# 530 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
               (*(volatile uint8_t *)(0xEC)) 
# 530 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                       & ~(1 << 
# 530 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                                0
# 530 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                                     )) | (DirectionMask ? (1 << 
# 530 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                                                                 0
# 530 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                                                                      ) : 0));
   }







   static inline uint8_t Endpoint_Read_8(void) __attribute__ ((warn_unused_result)) __attribute__ ((always_inline));
   static inline uint8_t Endpoint_Read_8(void)
   {
    return 
# 542 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
          (*(volatile uint8_t *)(0xF1))
# 542 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                ;
   }







   static inline void Endpoint_Write_8(const uint8_t Data) __attribute__ ((always_inline));
   static inline void Endpoint_Write_8(const uint8_t Data)
   {
    
# 554 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
   (*(volatile uint8_t *)(0xF1)) 
# 554 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
          = Data;
   }





   static inline void Endpoint_Discard_8(void) __attribute__ ((always_inline));
   static inline void Endpoint_Discard_8(void)
   {
    uint8_t Dummy;

    Dummy = 
# 566 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
           (*(volatile uint8_t *)(0xF1))
# 566 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                 ;

    (void)Dummy;
   }
# 578 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
   static inline uint16_t Endpoint_Read_16_LE(void) __attribute__ ((warn_unused_result)) __attribute__ ((always_inline));
   static inline uint16_t Endpoint_Read_16_LE(void)
   {
    union
    {
     uint16_t Value;
     uint8_t Bytes[2];
    } Data;

    Data.Bytes[0] = 
# 587 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                   (*(volatile uint8_t *)(0xF1))
# 587 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                         ;
    Data.Bytes[1] = 
# 588 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                   (*(volatile uint8_t *)(0xF1))
# 588 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                         ;

    return Data.Value;
   }
# 600 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
   static inline uint16_t Endpoint_Read_16_BE(void) __attribute__ ((warn_unused_result)) __attribute__ ((always_inline));
   static inline uint16_t Endpoint_Read_16_BE(void)
   {
    union
    {
     uint16_t Value;
     uint8_t Bytes[2];
    } Data;

    Data.Bytes[1] = 
# 609 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                   (*(volatile uint8_t *)(0xF1))
# 609 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                         ;
    Data.Bytes[0] = 
# 610 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                   (*(volatile uint8_t *)(0xF1))
# 610 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                         ;

    return Data.Value;
   }
# 622 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
   static inline void Endpoint_Write_16_LE(const uint16_t Data) __attribute__ ((always_inline));
   static inline void Endpoint_Write_16_LE(const uint16_t Data)
   {
    
# 625 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
   (*(volatile uint8_t *)(0xF1)) 
# 625 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
          = (Data & 0xFF);
    
# 626 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
   (*(volatile uint8_t *)(0xF1)) 
# 626 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
          = (Data >> 8);
   }
# 636 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
   static inline void Endpoint_Write_16_BE(const uint16_t Data) __attribute__ ((always_inline));
   static inline void Endpoint_Write_16_BE(const uint16_t Data)
   {
    
# 639 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
   (*(volatile uint8_t *)(0xF1)) 
# 639 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
          = (Data >> 8);
    
# 640 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
   (*(volatile uint8_t *)(0xF1)) 
# 640 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
          = (Data & 0xFF);
   }





   static inline void Endpoint_Discard_16(void) __attribute__ ((always_inline));
   static inline void Endpoint_Discard_16(void)
   {
    uint8_t Dummy;

    Dummy = 
# 652 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
           (*(volatile uint8_t *)(0xF1))
# 652 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                 ;
    Dummy = 
# 653 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
           (*(volatile uint8_t *)(0xF1))
# 653 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                 ;

    (void)Dummy;
   }
# 665 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
   static inline uint32_t Endpoint_Read_32_LE(void) __attribute__ ((warn_unused_result)) __attribute__ ((always_inline));
   static inline uint32_t Endpoint_Read_32_LE(void)
   {
    union
    {
     uint32_t Value;
     uint8_t Bytes[4];
    } Data;

    Data.Bytes[0] = 
# 674 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                   (*(volatile uint8_t *)(0xF1))
# 674 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                         ;
    Data.Bytes[1] = 
# 675 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                   (*(volatile uint8_t *)(0xF1))
# 675 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                         ;
    Data.Bytes[2] = 
# 676 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                   (*(volatile uint8_t *)(0xF1))
# 676 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                         ;
    Data.Bytes[3] = 
# 677 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                   (*(volatile uint8_t *)(0xF1))
# 677 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                         ;

    return Data.Value;
   }
# 689 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
   static inline uint32_t Endpoint_Read_32_BE(void) __attribute__ ((warn_unused_result)) __attribute__ ((always_inline));
   static inline uint32_t Endpoint_Read_32_BE(void)
   {
    union
    {
     uint32_t Value;
     uint8_t Bytes[4];
    } Data;

    Data.Bytes[3] = 
# 698 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                   (*(volatile uint8_t *)(0xF1))
# 698 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                         ;
    Data.Bytes[2] = 
# 699 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                   (*(volatile uint8_t *)(0xF1))
# 699 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                         ;
    Data.Bytes[1] = 
# 700 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                   (*(volatile uint8_t *)(0xF1))
# 700 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                         ;
    Data.Bytes[0] = 
# 701 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
                   (*(volatile uint8_t *)(0xF1))
# 701 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                         ;

    return Data.Value;
   }
# 713 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
   static inline void Endpoint_Write_32_LE(const uint32_t Data) __attribute__ ((always_inline));
   static inline void Endpoint_Write_32_LE(const uint32_t Data)
   {
    
# 716 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
   (*(volatile uint8_t *)(0xF1)) 
# 716 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
          = (Data & 0xFF);
    
# 717 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
   (*(volatile uint8_t *)(0xF1)) 
# 717 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
          = (Data >> 8);
    
# 718 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
   (*(volatile uint8_t *)(0xF1)) 
# 718 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
          = (Data >> 16);
    
# 719 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
   (*(volatile uint8_t *)(0xF1)) 
# 719 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
          = (Data >> 24);
   }
# 729 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
   static inline void Endpoint_Write_32_BE(const uint32_t Data) __attribute__ ((always_inline));
   static inline void Endpoint_Write_32_BE(const uint32_t Data)
   {
    
# 732 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
   (*(volatile uint8_t *)(0xF1)) 
# 732 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
          = (Data >> 24);
    
# 733 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
   (*(volatile uint8_t *)(0xF1)) 
# 733 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
          = (Data >> 16);
    
# 734 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
   (*(volatile uint8_t *)(0xF1)) 
# 734 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
          = (Data >> 8);
    
# 735 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
   (*(volatile uint8_t *)(0xF1)) 
# 735 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
          = (Data & 0xFF);
   }





   static inline void Endpoint_Discard_32(void) __attribute__ ((always_inline));
   static inline void Endpoint_Discard_32(void)
   {
    uint8_t Dummy;

    Dummy = 
# 747 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
           (*(volatile uint8_t *)(0xF1))
# 747 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                 ;
    Dummy = 
# 748 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
           (*(volatile uint8_t *)(0xF1))
# 748 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                 ;
    Dummy = 
# 749 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
           (*(volatile uint8_t *)(0xF1))
# 749 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                 ;
    Dummy = 
# 750 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3
           (*(volatile uint8_t *)(0xF1))
# 750 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
                 ;

    (void)Dummy;
   }
# 772 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
    extern uint8_t USB_Device_ControlEndpointSize;
# 789 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
   
# 789 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h" 3 4
  _Bool 
# 789 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
       Endpoint_ConfigureEndpointTable(const USB_Endpoint_Table_t* const Table,
                                        const uint8_t Entries);







   void Endpoint_ClearStatusStage(void);
# 809 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Endpoint_AVR8.h"
   uint8_t Endpoint_WaitUntilReady(void);
# 116 "./LUFA/Drivers/USB/Core/AVR8/../Endpoint.h" 2
# 58 "./LUFA/Drivers/USB/Core/AVR8/../Device.h" 2
# 78 "./LUFA/Drivers/USB/Core/AVR8/../Device.h"
   enum USB_Device_States_t
   {
    DEVICE_STATE_Unattached = 0,


    DEVICE_STATE_Powered = 1,



    DEVICE_STATE_Default = 2,



    DEVICE_STATE_Addressed = 3,



    DEVICE_STATE_Configured = 4,



    DEVICE_STATE_Suspended = 5,




   };
# 133 "./LUFA/Drivers/USB/Core/AVR8/../Device.h"
   uint16_t CALLBACK_USB_GetDescriptor(const uint16_t wValue,
                                       const uint16_t wIndex,
                                       const void** const DescriptorAddress


                                       , uint8_t* const DescriptorMemorySpace

                                       ) __attribute__ ((warn_unused_result)) __attribute__ ((nonnull (3)));



# 1 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Device_AVR8.h" 1
# 54 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Device_AVR8.h"
# 1 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/../StdDescriptors.h" 1
# 55 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Device_AVR8.h" 2

# 1 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/../Endpoint.h" 1
# 57 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Device_AVR8.h" 2
# 157 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Device_AVR8.h"
   void USB_Device_SendRemoteWakeup(void);







   static inline uint16_t USB_Device_GetFrameNumber(void) __attribute__ ((always_inline)) __attribute__ ((warn_unused_result));
   static inline uint16_t USB_Device_GetFrameNumber(void)
   {
    return 
# 168 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Device_AVR8.h" 3
          (*(volatile uint16_t *)(0xE4))
# 168 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Device_AVR8.h"
                ;
   }
# 178 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Device_AVR8.h"
    static inline void USB_Device_EnableSOFEvents(void) __attribute__ ((always_inline));
    static inline void USB_Device_EnableSOFEvents(void)
    {
     USB_INT_Enable(USB_INT_SOFI);
    }






    static inline void USB_Device_DisableSOFEvents(void) __attribute__ ((always_inline));
    static inline void USB_Device_DisableSOFEvents(void)
    {
     USB_INT_Disable(USB_INT_SOFI);
    }






   static inline void USB_Device_SetLowSpeed(void) __attribute__ ((always_inline));
   static inline void USB_Device_SetLowSpeed(void)
   {
    
# 203 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Device_AVR8.h" 3
   (*(volatile uint8_t *)(0xE0)) 
# 203 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Device_AVR8.h"
         |= (1 << 
# 203 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Device_AVR8.h" 3
                   2
# 203 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Device_AVR8.h"
                      );
   }

   static inline void USB_Device_SetFullSpeed(void) __attribute__ ((always_inline));
   static inline void USB_Device_SetFullSpeed(void)
   {
    
# 209 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Device_AVR8.h" 3
   (*(volatile uint8_t *)(0xE0)) 
# 209 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Device_AVR8.h"
         &= ~(1 << 
# 209 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Device_AVR8.h" 3
                   2
# 209 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Device_AVR8.h"
                      );
   }


   static inline void USB_Device_SetDeviceAddress(const uint8_t Address) __attribute__ ((always_inline));
   static inline void USB_Device_SetDeviceAddress(const uint8_t Address)
   {
    
# 216 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Device_AVR8.h" 3
   (*(volatile uint8_t *)(0xE3)) 
# 216 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Device_AVR8.h"
          = (
# 216 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Device_AVR8.h" 3
             (*(volatile uint8_t *)(0xE3)) 
# 216 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Device_AVR8.h"
                    & (1 << 
# 216 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Device_AVR8.h" 3
                            7
# 216 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Device_AVR8.h"
                                 )) | (Address & 0x7F);
   }

   static inline void USB_Device_EnableDeviceAddress(const uint8_t Address) __attribute__ ((always_inline));
   static inline void USB_Device_EnableDeviceAddress(const uint8_t Address)
   {
    (void)Address;

    
# 224 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Device_AVR8.h" 3
   (*(volatile uint8_t *)(0xE3)) 
# 224 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Device_AVR8.h"
          |= (1 << 
# 224 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Device_AVR8.h" 3
                   7
# 224 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Device_AVR8.h"
                        );
   }

   static inline 
# 227 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Device_AVR8.h" 3 4
                _Bool 
# 227 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Device_AVR8.h"
                     USB_Device_IsAddressSet(void) __attribute__ ((always_inline)) __attribute__ ((warn_unused_result));
   static inline 
# 228 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Device_AVR8.h" 3 4
                _Bool 
# 228 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Device_AVR8.h"
                     USB_Device_IsAddressSet(void)
   {
    return (
# 230 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Device_AVR8.h" 3
           (*(volatile uint8_t *)(0xE3)) 
# 230 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Device_AVR8.h"
                  & (1 << 
# 230 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Device_AVR8.h" 3
                          7
# 230 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Device_AVR8.h"
                               ));
   }


   static inline void USB_Device_GetSerialString(uint16_t* const UnicodeString) __attribute__ ((nonnull (1)));
   static inline void USB_Device_GetSerialString(uint16_t* const UnicodeString)
   {
    uint_reg_t CurrentGlobalInt = GetGlobalInterruptMask();
    GlobalInterruptDisable();

    uint8_t SigReadAddress = 0x0E;

    for (uint8_t SerialCharNum = 0; SerialCharNum < (80 / 4); SerialCharNum++)
    {
     uint8_t SerialByte = 
# 244 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Device_AVR8.h" 3
                         (__extension__({ uint8_t __result; __asm__ __volatile__ ( "sts %1, %2\n\t" "lpm %0, Z" "\n\t" : "=r" (__result) : "i" (((uint16_t) &((*(volatile uint8_t *)((0x37) + 0x20))))), "r" ((uint8_t)(((1 << (0)) | (1 << (5))))), "z" ((uint16_t)(
# 244 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Device_AVR8.h"
                         SigReadAddress
# 244 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Device_AVR8.h" 3
                         )) ); __result; }))
# 244 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/Device_AVR8.h"
                                                                ;

     if (SerialCharNum & 0x01)
     {
      SerialByte >>= 4;
      SigReadAddress++;
     }

     SerialByte &= 0x0F;

     UnicodeString[SerialCharNum] = ((SerialByte >= 10) ? (('A' - 10) + SerialByte) : ('0' + SerialByte))
                                                                 ;
    }

    SetGlobalInterruptMask(CurrentGlobalInt);
   }
# 145 "./LUFA/Drivers/USB/Core/AVR8/../Device.h" 2
# 68 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 2
# 1 "./LUFA/Drivers/USB/Core/AVR8/../Endpoint.h" 1
# 69 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 2
# 1 "./LUFA/Drivers/USB/Core/AVR8/../DeviceStandardReq.h" 1
# 49 "./LUFA/Drivers/USB/Core/AVR8/../DeviceStandardReq.h"
# 1 "./LUFA/Drivers/USB/Core/AVR8/../StdRequestType.h" 1
# 163 "./LUFA/Drivers/USB/Core/AVR8/../StdRequestType.h"
   typedef struct
   {
    uint8_t bmRequestType;
    uint8_t bRequest;
    uint16_t wValue;
    uint16_t wIndex;
    uint16_t wLength;
   } __attribute__ ((packed)) USB_Request_Header_t;
# 179 "./LUFA/Drivers/USB/Core/AVR8/../StdRequestType.h"
   enum USB_Control_Request_t
   {
    REQ_GetStatus = 0,



    REQ_ClearFeature = 1,



    REQ_SetFeature = 3,



    REQ_SetAddress = 5,



    REQ_GetDescriptor = 6,



    REQ_SetDescriptor = 7,


    REQ_GetConfiguration = 8,



    REQ_SetConfiguration = 9,



    REQ_GetInterface = 10,


    REQ_SetInterface = 11,


    REQ_SynchFrame = 12,


   };




   enum USB_Feature_Selectors_t
   {
    FEATURE_SEL_EndpointHalt = 0x00,




    FEATURE_SEL_DeviceRemoteWakeup = 0x01,




    FEATURE_SEL_TestMode = 0x02,


   };
# 50 "./LUFA/Drivers/USB/Core/AVR8/../DeviceStandardReq.h" 2
# 1 "./LUFA/Drivers/USB/Core/AVR8/../USBTask.h" 1
# 51 "./LUFA/Drivers/USB/Core/AVR8/../DeviceStandardReq.h" 2
# 1 "./LUFA/Drivers/USB/Core/AVR8/../USBController.h" 1
# 52 "./LUFA/Drivers/USB/Core/AVR8/../DeviceStandardReq.h" 2
# 72 "./LUFA/Drivers/USB/Core/AVR8/../DeviceStandardReq.h"
    enum USB_DescriptorMemorySpaces_t
    {

     MEMSPACE_FLASH = 0,


     MEMSPACE_EEPROM = 1,

     MEMSPACE_RAM = 2,
    };
# 94 "./LUFA/Drivers/USB/Core/AVR8/../DeviceStandardReq.h"
   extern uint8_t USB_Device_ConfigurationNumber;
# 110 "./LUFA/Drivers/USB/Core/AVR8/../DeviceStandardReq.h"
    extern 
# 110 "./LUFA/Drivers/USB/Core/AVR8/../DeviceStandardReq.h" 3 4
          _Bool 
# 110 "./LUFA/Drivers/USB/Core/AVR8/../DeviceStandardReq.h"
               USB_Device_RemoteWakeupEnabled;
# 120 "./LUFA/Drivers/USB/Core/AVR8/../DeviceStandardReq.h"
    extern 
# 120 "./LUFA/Drivers/USB/Core/AVR8/../DeviceStandardReq.h" 3 4
          _Bool 
# 120 "./LUFA/Drivers/USB/Core/AVR8/../DeviceStandardReq.h"
               USB_Device_CurrentlySelfPowered;
# 136 "./LUFA/Drivers/USB/Core/AVR8/../DeviceStandardReq.h"
   void USB_Device_ProcessControlRequest(void);
# 70 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 2
# 1 "./LUFA/Drivers/USB/Core/AVR8/../EndpointStream.h" 1
# 69 "./LUFA/Drivers/USB/Core/AVR8/../EndpointStream.h"
   enum Endpoint_Stream_RW_ErrorCodes_t
   {
    ENDPOINT_RWSTREAM_NoError = 0,
    ENDPOINT_RWSTREAM_EndpointStalled = 1,


    ENDPOINT_RWSTREAM_DeviceDisconnected = 2,


    ENDPOINT_RWSTREAM_BusSuspended = 3,



    ENDPOINT_RWSTREAM_Timeout = 4,



    ENDPOINT_RWSTREAM_IncompleteTransfer = 5,




   };


   enum Endpoint_ControlStream_RW_ErrorCodes_t
   {
    ENDPOINT_RWCSTREAM_NoError = 0,
    ENDPOINT_RWCSTREAM_HostAborted = 1,
    ENDPOINT_RWCSTREAM_DeviceDisconnected = 2,


    ENDPOINT_RWCSTREAM_BusSuspended = 3,



   };



# 1 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/EndpointStream_AVR8.h" 1
# 122 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/EndpointStream_AVR8.h"
   uint8_t Endpoint_Discard_Stream(uint16_t Length,
                                   uint16_t* const BytesProcessed);
# 175 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/EndpointStream_AVR8.h"
   uint8_t Endpoint_Null_Stream(uint16_t Length,
                                uint16_t* const BytesProcessed);
# 238 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/EndpointStream_AVR8.h"
   uint8_t Endpoint_Write_Stream_LE(const void* const Buffer,
                                    uint16_t Length,
                                    uint16_t* const BytesProcessed) __attribute__ ((nonnull (1)));
# 256 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/EndpointStream_AVR8.h"
   uint8_t Endpoint_Write_Stream_BE(const void* const Buffer,
                                    uint16_t Length,
                                    uint16_t* const BytesProcessed) __attribute__ ((nonnull (1)));
# 315 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/EndpointStream_AVR8.h"
   uint8_t Endpoint_Read_Stream_LE(void* const Buffer,
                                   uint16_t Length,
                                   uint16_t* const BytesProcessed) __attribute__ ((nonnull (1)));
# 333 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/EndpointStream_AVR8.h"
   uint8_t Endpoint_Read_Stream_BE(void* const Buffer,
                                   uint16_t Length,
                                   uint16_t* const BytesProcessed) __attribute__ ((nonnull (1)));
# 357 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/EndpointStream_AVR8.h"
   uint8_t Endpoint_Write_Control_Stream_LE(const void* const Buffer,
                                            uint16_t Length) __attribute__ ((nonnull (1)));
# 380 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/EndpointStream_AVR8.h"
   uint8_t Endpoint_Write_Control_Stream_BE(const void* const Buffer,
                                            uint16_t Length) __attribute__ ((nonnull (1)));
# 403 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/EndpointStream_AVR8.h"
   uint8_t Endpoint_Read_Control_Stream_LE(void* const Buffer,
                                           uint16_t Length) __attribute__ ((nonnull (1)));
# 426 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/EndpointStream_AVR8.h"
   uint8_t Endpoint_Read_Control_Stream_BE(void* const Buffer,
                                           uint16_t Length) __attribute__ ((nonnull (1)));
# 442 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/EndpointStream_AVR8.h"
   uint8_t Endpoint_Write_EStream_LE(const void* const Buffer,
                                     uint16_t Length,
                                     uint16_t* const BytesProcessed) __attribute__ ((nonnull (1)));
# 455 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/EndpointStream_AVR8.h"
   uint8_t Endpoint_Write_EStream_BE(const void* const Buffer,
                                     uint16_t Length,
                                     uint16_t* const BytesProcessed) __attribute__ ((nonnull (1)));
# 468 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/EndpointStream_AVR8.h"
   uint8_t Endpoint_Read_EStream_LE(void* const Buffer,
                                    uint16_t Length,
                                    uint16_t* const BytesProcessed) __attribute__ ((nonnull (1)));
# 481 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/EndpointStream_AVR8.h"
   uint8_t Endpoint_Read_EStream_BE(void* const Buffer,
                                    uint16_t Length,
                                    uint16_t* const BytesProcessed) __attribute__ ((nonnull (1)));
# 503 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/EndpointStream_AVR8.h"
   uint8_t Endpoint_Write_Control_EStream_LE(const void* const Buffer,
                                             uint16_t Length) __attribute__ ((nonnull (1)));
# 524 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/EndpointStream_AVR8.h"
   uint8_t Endpoint_Write_Control_EStream_BE(const void* const Buffer,
                                             uint16_t Length) __attribute__ ((nonnull (1)));
# 545 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/EndpointStream_AVR8.h"
   uint8_t Endpoint_Read_Control_EStream_LE(void* const Buffer,
                                            uint16_t Length) __attribute__ ((nonnull (1)));
# 566 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/EndpointStream_AVR8.h"
   uint8_t Endpoint_Read_Control_EStream_BE(void* const Buffer,
                                            uint16_t Length) __attribute__ ((nonnull (1)));
# 584 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/EndpointStream_AVR8.h"
   uint8_t Endpoint_Write_PStream_LE(const void* const Buffer,
                                     uint16_t Length,
                                     uint16_t* const BytesProcessed) __attribute__ ((nonnull (1)));
# 599 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/EndpointStream_AVR8.h"
   uint8_t Endpoint_Write_PStream_BE(const void* const Buffer,
                                     uint16_t Length,
                                     uint16_t* const BytesProcessed) __attribute__ ((nonnull (1)));
# 623 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/EndpointStream_AVR8.h"
   uint8_t Endpoint_Write_Control_PStream_LE(const void* const Buffer,
                                             uint16_t Length) __attribute__ ((nonnull (1)));
# 646 "./LUFA/Drivers/USB/Core/AVR8/../AVR8/EndpointStream_AVR8.h"
   uint8_t Endpoint_Write_Control_PStream_BE(const void* const Buffer,
                                             uint16_t Length) __attribute__ ((nonnull (1)));
# 110 "./LUFA/Drivers/USB/Core/AVR8/../EndpointStream.h" 2
# 71 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 2
# 176 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
    static inline 
# 176 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3 4
                 _Bool 
# 176 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
                      USB_VBUS_GetStatus(void) __attribute__ ((warn_unused_result)) __attribute__ ((always_inline));
    static inline 
# 177 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3 4
                 _Bool 
# 177 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
                      USB_VBUS_GetStatus(void)
    {
     return ((
# 179 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3
             (*(volatile uint8_t *)(0xD9)) 
# 179 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
                    & (1 << 
# 179 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3
                            0
# 179 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
                                )) ? 
# 179 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3 4
                                     1 
# 179 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
                                          : 
# 179 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3 4
                                            0
# 179 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
                                                 );
    }






   static inline void USB_Detach(void) __attribute__ ((always_inline));
   static inline void USB_Detach(void)
   {
    
# 190 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3
   (*(volatile uint8_t *)(0xE0)) 
# 190 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
          |= (1 << 
# 190 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3
                    0
# 190 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
                          );
   }
# 201 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
   static inline void USB_Attach(void) __attribute__ ((always_inline));
   static inline void USB_Attach(void)
   {
    
# 204 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3
   (*(volatile uint8_t *)(0xE0)) 
# 204 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
          &= ~(1 << 
# 204 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3
                    0
# 204 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
                          );
   }
# 252 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
   void USB_Init(
# 264 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
                  const uint8_t Options

                  );





   void USB_Disable(void);




   void USB_ResetInterface(void);
# 308 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
    extern volatile uint8_t USB_Options;
# 327 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
   static inline void USB_PLL_On(void) __attribute__ ((always_inline));
   static inline void USB_PLL_On(void)
   {
    
# 330 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3
   (*(volatile uint8_t *)((0x29) + 0x20)) 
# 330 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
          = (1 << 
# 330 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3
            4
# 330 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
            );
    
# 331 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3
   (*(volatile uint8_t *)((0x29) + 0x20)) 
# 331 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
          = ((1 << 
# 331 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3
             4
# 331 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
             ) | (1 << 
# 331 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3
                                 1
# 331 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
                                     ));
   }

   static inline void USB_PLL_Off(void) __attribute__ ((always_inline));
   static inline void USB_PLL_Off(void)
   {
    
# 337 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3
   (*(volatile uint8_t *)((0x29) + 0x20)) 
# 337 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
          = 0;
   }

   static inline 
# 340 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3 4
                _Bool 
# 340 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
                     USB_PLL_IsReady(void) __attribute__ ((warn_unused_result)) __attribute__ ((always_inline));
   static inline 
# 341 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3 4
                _Bool 
# 341 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
                     USB_PLL_IsReady(void)
   {
    return ((
# 343 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3
            (*(volatile uint8_t *)((0x29) + 0x20)) 
# 343 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
                   & (1 << 
# 343 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3
                           0
# 343 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
                                )) ? 
# 343 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3 4
                                     1 
# 343 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
                                          : 
# 343 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3 4
                                            0
# 343 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
                                                 );
   }

   static inline void USB_REG_On(void) __attribute__ ((always_inline));
   static inline void USB_REG_On(void)
   {

    
# 350 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3
   (*(volatile uint8_t *)(0xD7)) 
# 350 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
          |= (1 << 
# 350 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3
                    0
# 350 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
                          );



   }

   static inline void USB_REG_Off(void) __attribute__ ((always_inline));
   static inline void USB_REG_Off(void)
   {

    
# 360 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3
   (*(volatile uint8_t *)(0xD7)) 
# 360 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
          &= ~(1 << 
# 360 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3
                    0
# 360 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
                          );



   }


   static inline void USB_OTGPAD_On(void) __attribute__ ((always_inline));
   static inline void USB_OTGPAD_On(void)
   {
    
# 370 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3
   (*(volatile uint8_t *)(0xD8)) 
# 370 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
          |= (1 << 
# 370 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3
                    4
# 370 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
                           );
   }

   static inline void USB_OTGPAD_Off(void) __attribute__ ((always_inline));
   static inline void USB_OTGPAD_Off(void)
   {
    
# 376 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3
   (*(volatile uint8_t *)(0xD8)) 
# 376 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
          &= ~(1 << 
# 376 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3
                    4
# 376 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
                           );
   }


   static inline void USB_CLK_Freeze(void) __attribute__ ((always_inline));
   static inline void USB_CLK_Freeze(void)
   {
    
# 383 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3
   (*(volatile uint8_t *)(0xD8)) 
# 383 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
          |= (1 << 
# 383 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3
                    5
# 383 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
                          );
   }

   static inline void USB_CLK_Unfreeze(void) __attribute__ ((always_inline));
   static inline void USB_CLK_Unfreeze(void)
   {
    
# 389 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3
   (*(volatile uint8_t *)(0xD8)) 
# 389 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
          &= ~(1 << 
# 389 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3
                    5
# 389 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
                          );
   }

   static inline void USB_Controller_Enable(void) __attribute__ ((always_inline));
   static inline void USB_Controller_Enable(void)
   {
    
# 395 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3
   (*(volatile uint8_t *)(0xD8)) 
# 395 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
          |= (1 << 
# 395 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3
                    7
# 395 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
                        );
   }

   static inline void USB_Controller_Disable(void) __attribute__ ((always_inline));
   static inline void USB_Controller_Disable(void)
   {
    
# 401 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3
   (*(volatile uint8_t *)(0xD8)) 
# 401 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
          &= ~(1 << 
# 401 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3
                    7
# 401 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
                        );
   }

   static inline void USB_Controller_Reset(void) __attribute__ ((always_inline));
   static inline void USB_Controller_Reset(void)
   {
    
# 407 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3
   (*(volatile uint8_t *)(0xD8)) 
# 407 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
          &= ~(1 << 
# 407 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3
                    7
# 407 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
                        );
    
# 408 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3
   (*(volatile uint8_t *)(0xD8)) 
# 408 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
          |= (1 << 
# 408 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h" 3
                    7
# 408 "./LUFA/Drivers/USB/Core/AVR8/USBController_AVR8.h"
                        );
   }
# 151 "./LUFA/Drivers/USB/Core/USBController.h" 2
# 48 "./LUFA/Drivers/USB/Core/USBTask.h" 2
# 1 "./LUFA/Drivers/USB/Core/Events.h" 1
# 49 "./LUFA/Drivers/USB/Core/USBTask.h" 2
# 1 "./LUFA/Drivers/USB/Core/StdRequestType.h" 1
# 50 "./LUFA/Drivers/USB/Core/USBTask.h" 2
# 1 "./LUFA/Drivers/USB/Core/StdDescriptors.h" 1
# 51 "./LUFA/Drivers/USB/Core/USBTask.h" 2


# 1 "./LUFA/Drivers/USB/Core/DeviceStandardReq.h" 1
# 54 "./LUFA/Drivers/USB/Core/USBTask.h" 2
# 81 "./LUFA/Drivers/USB/Core/USBTask.h"
   extern volatile 
# 81 "./LUFA/Drivers/USB/Core/USBTask.h" 3 4
                  _Bool 
# 81 "./LUFA/Drivers/USB/Core/USBTask.h"
                       USB_IsInitialized;
# 91 "./LUFA/Drivers/USB/Core/USBTask.h"
    extern USB_Request_Header_t USB_ControlRequest;
# 144 "./LUFA/Drivers/USB/Core/USBTask.h"
     extern volatile uint8_t USB_DeviceState;
# 173 "./LUFA/Drivers/USB/Core/USBTask.h"
   void USB_USBTask(void);
# 387 "./LUFA/Drivers/USB/USB.h" 2
# 1 "./LUFA/Drivers/USB/Core/Events.h" 1
# 388 "./LUFA/Drivers/USB/USB.h" 2
# 1 "./LUFA/Drivers/USB/Core/StdDescriptors.h" 1
# 389 "./LUFA/Drivers/USB/USB.h" 2
# 1 "./LUFA/Drivers/USB/Core/ConfigDescriptors.h" 1
# 56 "./LUFA/Drivers/USB/Core/ConfigDescriptors.h"
# 1 "./LUFA/Drivers/USB/Core/HostStandardReq.h" 1
# 79 "./LUFA/Drivers/USB/Core/HostStandardReq.h"
   enum USB_Host_SendControlErrorCodes_t
   {
    HOST_SENDCONTROL_Successful = 0,
    HOST_SENDCONTROL_DeviceDisconnected = 1,


    HOST_SENDCONTROL_PipeError = 2,
    HOST_SENDCONTROL_SetupStalled = 3,


    HOST_SENDCONTROL_SoftwareTimeOut = 4,
   };
# 103 "./LUFA/Drivers/USB/Core/HostStandardReq.h"
   extern uint8_t USB_Host_ConfigurationNumber;
# 117 "./LUFA/Drivers/USB/Core/HostStandardReq.h"
   uint8_t USB_Host_SendControlRequest(void* const BufferPtr);
# 132 "./LUFA/Drivers/USB/Core/HostStandardReq.h"
   uint8_t USB_Host_SetDeviceConfiguration(const uint8_t ConfigNumber);
# 145 "./LUFA/Drivers/USB/Core/HostStandardReq.h"
   uint8_t USB_Host_GetDeviceConfiguration(uint8_t* const ConfigNumber) __attribute__ ((nonnull (1)));
# 161 "./LUFA/Drivers/USB/Core/HostStandardReq.h"
   uint8_t USB_Host_GetDescriptor(const uint8_t Type,
                                  const uint8_t Index,
                                  void* const Buffer,
                                  const uint8_t BufferLength) __attribute__ ((nonnull (3)));
# 178 "./LUFA/Drivers/USB/Core/HostStandardReq.h"
   uint8_t USB_Host_GetDeviceStatus(uint8_t* const FeatureStatus) __attribute__ ((nonnull (1)));
# 190 "./LUFA/Drivers/USB/Core/HostStandardReq.h"
   uint8_t USB_Host_ClearEndpointStall(const uint8_t EndpointAddress);
# 204 "./LUFA/Drivers/USB/Core/HostStandardReq.h"
   uint8_t USB_Host_SetInterfaceAltSetting(const uint8_t InterfaceIndex,
                                           const uint8_t AltSetting);
# 220 "./LUFA/Drivers/USB/Core/HostStandardReq.h"
   uint8_t USB_Host_GetInterfaceAltSetting(const uint8_t InterfaceIndex,
                                           uint8_t* const AltSetting) __attribute__ ((nonnull (2)));
# 237 "./LUFA/Drivers/USB/Core/HostStandardReq.h"
   static inline uint8_t USB_Host_GetDeviceDescriptor(USB_Descriptor_Device_t* const DeviceDescriptorPtr) __attribute__ ((nonnull (1)));
   static inline uint8_t USB_Host_GetDeviceDescriptor(USB_Descriptor_Device_t* const DeviceDescriptorPtr)
   {
    return USB_Host_GetDescriptor(DTYPE_Device, 0, DeviceDescriptorPtr, sizeof(USB_Descriptor_Device_t));
   }
# 259 "./LUFA/Drivers/USB/Core/HostStandardReq.h"
   static inline uint8_t USB_Host_GetDeviceStringDescriptor(const uint8_t Index,
                                                            void* const Buffer,
                                                            const uint8_t BufferLength) __attribute__ ((nonnull (2)));
   static inline uint8_t USB_Host_GetDeviceStringDescriptor(const uint8_t Index,
                                                            void* const Buffer,
                                                            const uint8_t BufferLength)
   {
    return USB_Host_GetDescriptor(DTYPE_String, Index, Buffer, BufferLength);
   }




   enum USB_WaitForTypes_t
   {
    USB_HOST_WAITFOR_SetupSent,
    USB_HOST_WAITFOR_InReceived,
    USB_HOST_WAITFOR_OutReady,
   };
# 57 "./LUFA/Drivers/USB/Core/ConfigDescriptors.h" 2
# 114 "./LUFA/Drivers/USB/Core/ConfigDescriptors.h"
   typedef uint8_t (* ConfigComparatorPtr_t)(void*);



   enum USB_Host_GetConfigDescriptor_ErrorCodes_t
   {
    HOST_GETCONFIG_Successful = 0,
    HOST_GETCONFIG_DeviceDisconnect = 1,


    HOST_GETCONFIG_PipeError = 2,
    HOST_GETCONFIG_SetupStalled = 3,


    HOST_GETCONFIG_SoftwareTimeOut = 4,
    HOST_GETCONFIG_BuffOverflow = 5,


    HOST_GETCONFIG_InvalidData = 6,
   };


   enum DSearch_Return_ErrorCodes_t
   {
    DESCRIPTOR_SEARCH_Found = 0,
    DESCRIPTOR_SEARCH_Fail = 1,
    DESCRIPTOR_SEARCH_NotFound = 2,
   };


   enum DSearch_Comp_Return_ErrorCodes_t
   {
    DESCRIPTOR_SEARCH_COMP_Found = 0,

    DESCRIPTOR_SEARCH_COMP_Fail = 1,
    DESCRIPTOR_SEARCH_COMP_EndOfDescriptor = 2,
   };
# 164 "./LUFA/Drivers/USB/Core/ConfigDescriptors.h"
   uint8_t USB_Host_GetDeviceConfigDescriptor(const uint8_t ConfigNumber,
                                              uint16_t* const ConfigSizePtr,
                                              void* const BufferPtr,
                                              const uint16_t BufferSize) __attribute__ ((nonnull (2))) __attribute__ ((nonnull (3)));
# 176 "./LUFA/Drivers/USB/Core/ConfigDescriptors.h"
   void USB_GetNextDescriptorOfType(uint16_t* const BytesRem,
                                    void** const CurrConfigLoc,
                                    const uint8_t Type)
                                    __attribute__ ((nonnull (1))) __attribute__ ((nonnull (2)));
# 191 "./LUFA/Drivers/USB/Core/ConfigDescriptors.h"
   void USB_GetNextDescriptorOfTypeBefore(uint16_t* const BytesRem,
                                          void** const CurrConfigLoc,
                                          const uint8_t Type,
                                          const uint8_t BeforeType)
                                          __attribute__ ((nonnull (1))) __attribute__ ((nonnull (2)));
# 206 "./LUFA/Drivers/USB/Core/ConfigDescriptors.h"
   void USB_GetNextDescriptorOfTypeAfter(uint16_t* const BytesRem,
                                         void** const CurrConfigLoc,
                                         const uint8_t Type,
                                         const uint8_t AfterType)
                                         __attribute__ ((nonnull (1))) __attribute__ ((nonnull (2)));
# 253 "./LUFA/Drivers/USB/Core/ConfigDescriptors.h"
   uint8_t USB_GetNextDescriptorComp(uint16_t* const BytesRem,
                                     void** const CurrConfigLoc,
                                     ConfigComparatorPtr_t const ComparatorRoutine) __attribute__ ((nonnull (1)))
                                     __attribute__ ((nonnull (2))) __attribute__ ((nonnull (3)));
# 265 "./LUFA/Drivers/USB/Core/ConfigDescriptors.h"
   static inline void USB_GetNextDescriptor(uint16_t* const BytesRem,
                                            void** CurrConfigLoc) __attribute__ ((nonnull (1))) __attribute__ ((nonnull (2)));
   static inline void USB_GetNextDescriptor(uint16_t* const BytesRem,
                                            void** CurrConfigLoc)
   {
    uint16_t CurrDescriptorSize = (*((USB_Descriptor_Header_t*)(*CurrConfigLoc))).Size;

    if (*BytesRem < CurrDescriptorSize)
      CurrDescriptorSize = *BytesRem;

    *CurrConfigLoc = (void*)((uintptr_t)*CurrConfigLoc + CurrDescriptorSize);
    *BytesRem -= CurrDescriptorSize;
   }
# 390 "./LUFA/Drivers/USB/USB.h" 2
# 1 "./LUFA/Drivers/USB/Core/USBController.h" 1
# 391 "./LUFA/Drivers/USB/USB.h" 2
# 1 "./LUFA/Drivers/USB/Core/USBInterrupt.h" 1
# 392 "./LUFA/Drivers/USB/USB.h" 2
# 401 "./LUFA/Drivers/USB/USB.h"
# 1 "./LUFA/Drivers/USB/Core/Device.h" 1
# 402 "./LUFA/Drivers/USB/USB.h" 2
# 1 "./LUFA/Drivers/USB/Core/Endpoint.h" 1
# 403 "./LUFA/Drivers/USB/USB.h" 2
# 1 "./LUFA/Drivers/USB/Core/DeviceStandardReq.h" 1
# 404 "./LUFA/Drivers/USB/USB.h" 2
# 1 "./LUFA/Drivers/USB/Core/EndpointStream.h" 1
# 405 "./LUFA/Drivers/USB/USB.h" 2






# 1 "./LUFA/Drivers/USB/Class/AndroidAccessoryClass.h" 1
# 67 "./LUFA/Drivers/USB/Class/AndroidAccessoryClass.h"
# 1 "./LUFA/Drivers/USB/Class/../Core/USBMode.h" 1
# 68 "./LUFA/Drivers/USB/Class/AndroidAccessoryClass.h" 2
# 412 "./LUFA/Drivers/USB/USB.h" 2
# 1 "./LUFA/Drivers/USB/Class/AudioClass.h" 1
# 71 "./LUFA/Drivers/USB/Class/AudioClass.h"
# 1 "./LUFA/Drivers/USB/Class/Device/AudioClassDevice.h" 1
# 57 "./LUFA/Drivers/USB/Class/Device/AudioClassDevice.h"
# 1 "./LUFA/Drivers/USB/Class/Device/../../USB.h" 1
# 58 "./LUFA/Drivers/USB/Class/Device/AudioClassDevice.h" 2
# 1 "./LUFA/Drivers/USB/Class/Device/../Common/AudioClassCommon.h" 1
# 54 "./LUFA/Drivers/USB/Class/Device/../Common/AudioClassCommon.h"
# 1 "./LUFA/Drivers/USB/Class/Device/../Common/../../Core/StdDescriptors.h" 1
# 55 "./LUFA/Drivers/USB/Class/Device/../Common/AudioClassCommon.h" 2
# 226 "./LUFA/Drivers/USB/Class/Device/../Common/AudioClassCommon.h"
  enum Audio_Descriptor_ClassSubclassProtocol_t
  {
   AUDIO_CSCP_AudioClass = 0x01,


   AUDIO_CSCP_ControlSubclass = 0x01,


   AUDIO_CSCP_ControlProtocol = 0x00,


   AUDIO_CSCP_AudioStreamingSubclass = 0x02,


   AUDIO_CSCP_MIDIStreamingSubclass = 0x03,


   AUDIO_CSCP_StreamingProtocol = 0x00,


  };


  enum AUDIO_DescriptorTypes_t
  {
   AUDIO_DTYPE_CSInterface = 0x24,
   AUDIO_DTYPE_CSEndpoint = 0x25,
  };


  enum Audio_CSInterface_AC_SubTypes_t
  {
   AUDIO_DSUBTYPE_CSInterface_Header = 0x01,
   AUDIO_DSUBTYPE_CSInterface_InputTerminal = 0x02,
   AUDIO_DSUBTYPE_CSInterface_OutputTerminal = 0x03,
   AUDIO_DSUBTYPE_CSInterface_Mixer = 0x04,
   AUDIO_DSUBTYPE_CSInterface_Selector = 0x05,
   AUDIO_DSUBTYPE_CSInterface_Feature = 0x06,
   AUDIO_DSUBTYPE_CSInterface_Processing = 0x07,
   AUDIO_DSUBTYPE_CSInterface_Extension = 0x08,
  };


  enum Audio_CSInterface_AS_SubTypes_t
  {
   AUDIO_DSUBTYPE_CSInterface_General = 0x01,
   AUDIO_DSUBTYPE_CSInterface_FormatType = 0x02,
   AUDIO_DSUBTYPE_CSInterface_FormatSpecific = 0x03,
  };


  enum Audio_CSEndpoint_SubTypes_t
  {
   AUDIO_DSUBTYPE_CSEndpoint_General = 0x01,
  };


  enum Audio_ClassRequests_t
  {
   AUDIO_REQ_SetCurrent = 0x01,
   AUDIO_REQ_SetMinimum = 0x02,
   AUDIO_REQ_SetMaximum = 0x03,
   AUDIO_REQ_SetResolution = 0x04,
   AUDIO_REQ_SetMemory = 0x05,
   AUDIO_REQ_GetCurrent = 0x81,
   AUDIO_REQ_GetMinimum = 0x82,
   AUDIO_REQ_GetMaximum = 0x83,
   AUDIO_REQ_GetResolution = 0x84,
   AUDIO_REQ_GetMemory = 0x85,
   AUDIO_REQ_GetStatus = 0xFF,
  };




  enum Audio_EndpointControls_t
  {
   AUDIO_EPCONTROL_SamplingFreq = 0x01,
   AUDIO_EPCONTROL_Pitch = 0x02,
  };
# 318 "./LUFA/Drivers/USB/Class/Device/../Common/AudioClassCommon.h"
  typedef struct
  {
   USB_Descriptor_Header_t Header;
   uint8_t Subtype;



   uint8_t TerminalID;
   uint16_t TerminalType;
   uint8_t AssociatedOutputTerminal;


   uint8_t TotalChannels;
   uint16_t ChannelConfig;

   uint8_t ChannelStrIndex;
   uint8_t TerminalStrIndex;
  } __attribute__ ((packed)) USB_Audio_Descriptor_InputTerminal_t;
# 348 "./LUFA/Drivers/USB/Class/Device/../Common/AudioClassCommon.h"
  typedef struct
  {
   uint8_t bLength;
   uint8_t bDescriptorType;



   uint8_t bDescriptorSubtype;


   uint8_t bTerminalID;
   uint16_t wTerminalType;
   uint8_t bAssocTerminal;


   uint8_t bNrChannels;
   uint16_t wChannelConfig;

   uint8_t iChannelNames;
   uint8_t iTerminal;
  } __attribute__ ((packed)) USB_Audio_StdDescriptor_InputTerminal_t;
# 380 "./LUFA/Drivers/USB/Class/Device/../Common/AudioClassCommon.h"
  typedef struct
  {
   USB_Descriptor_Header_t Header;
   uint8_t Subtype;



   uint8_t TerminalID;
   uint16_t TerminalType;
   uint8_t AssociatedInputTerminal;


   uint8_t SourceID;

   uint8_t TerminalStrIndex;
  } __attribute__ ((packed)) USB_Audio_Descriptor_OutputTerminal_t;
# 408 "./LUFA/Drivers/USB/Class/Device/../Common/AudioClassCommon.h"
  typedef struct
  {
   uint8_t bLength;
   uint8_t bDescriptorType;



   uint8_t bDescriptorSubtype;


   uint8_t bTerminalID;
   uint16_t wTerminalType;
   uint8_t bAssocTerminal;


   uint8_t bSourceID;

   uint8_t iTerminal;
  } __attribute__ ((packed)) USB_Audio_StdDescriptor_OutputTerminal_t;
# 438 "./LUFA/Drivers/USB/Class/Device/../Common/AudioClassCommon.h"
  typedef struct
  {
   USB_Descriptor_Header_t Header;
   uint8_t Subtype;



   uint16_t ACSpecification;



   uint16_t TotalLength;

   uint8_t InCollection;
   uint8_t InterfaceNumber;
  } __attribute__ ((packed)) USB_Audio_Descriptor_Interface_AC_t;
# 466 "./LUFA/Drivers/USB/Class/Device/../Common/AudioClassCommon.h"
  typedef struct
  {
   uint8_t bLength;
   uint8_t bDescriptorType;



   uint8_t bDescriptorSubtype;



   uint16_t bcdADC;



   uint16_t wTotalLength;

   uint8_t bInCollection;
   uint8_t bInterfaceNumbers;
  } __attribute__ ((packed)) USB_Audio_StdDescriptor_Interface_AC_t;
# 497 "./LUFA/Drivers/USB/Class/Device/../Common/AudioClassCommon.h"
  typedef struct
  {
   USB_Descriptor_Header_t Header;
   uint8_t Subtype;



   uint8_t UnitID;
   uint8_t SourceID;

   uint8_t ControlSize;
   uint8_t ChannelControls[3];

   uint8_t FeatureUnitStrIndex;
  } __attribute__ ((packed)) USB_Audio_Descriptor_FeatureUnit_t;
# 524 "./LUFA/Drivers/USB/Class/Device/../Common/AudioClassCommon.h"
  typedef struct
  {
   uint8_t bLength;
   uint8_t bDescriptorType;



   uint8_t bDescriptorSubtype;



   uint8_t bUnitID;
   uint8_t bSourceID;

   uint8_t bControlSize;
   uint8_t bmaControls[3];

   uint8_t iFeature;
  } __attribute__ ((packed)) USB_Audio_StdDescriptor_FeatureUnit_t;
# 553 "./LUFA/Drivers/USB/Class/Device/../Common/AudioClassCommon.h"
  typedef struct
  {
   USB_Descriptor_Header_t Header;
   uint8_t Subtype;



   uint8_t TerminalLink;

   uint8_t FrameDelay;
   uint16_t AudioFormat;
  } __attribute__ ((packed)) USB_Audio_Descriptor_Interface_AS_t;
# 576 "./LUFA/Drivers/USB/Class/Device/../Common/AudioClassCommon.h"
  typedef struct
  {
   uint8_t bLength;
   uint8_t bDescriptorType;



   uint8_t bDescriptorSubtype;



   uint8_t bTerminalLink;

   uint8_t bDelay;
   uint16_t wFormatTag;
  } __attribute__ ((packed)) USB_Audio_StdDescriptor_Interface_AS_t;
# 606 "./LUFA/Drivers/USB/Class/Device/../Common/AudioClassCommon.h"
  typedef struct
  {
   USB_Descriptor_Header_t Header;
   uint8_t Subtype;



   uint8_t FormatType;
   uint8_t Channels;

   uint8_t SubFrameSize;
   uint8_t BitResolution;

   uint8_t TotalDiscreteSampleRates;




  } __attribute__ ((packed)) USB_Audio_Descriptor_Format_t;
# 633 "./LUFA/Drivers/USB/Class/Device/../Common/AudioClassCommon.h"
  typedef struct
  {
   uint8_t Byte1;
   uint8_t Byte2;
   uint8_t Byte3;
  } __attribute__ ((packed)) USB_Audio_SampleFreq_t;
# 654 "./LUFA/Drivers/USB/Class/Device/../Common/AudioClassCommon.h"
  typedef struct
  {
   uint8_t bLength;
   uint8_t bDescriptorType;



   uint8_t bDescriptorSubtype;



   uint8_t bFormatType;
   uint8_t bNrChannels;

   uint8_t bSubFrameSize;
   uint8_t bBitResolution;

   uint8_t bSampleFrequencyType;




  } __attribute__ ((packed)) USB_Audio_StdDescriptor_Format_t;
# 687 "./LUFA/Drivers/USB/Class/Device/../Common/AudioClassCommon.h"
  typedef struct
  {
   USB_Descriptor_Endpoint_t Endpoint;

   uint8_t Refresh;
   uint8_t SyncEndpointNumber;
  } __attribute__ ((packed)) USB_Audio_Descriptor_StreamEndpoint_Std_t;
# 705 "./LUFA/Drivers/USB/Class/Device/../Common/AudioClassCommon.h"
  typedef struct
  {
   uint8_t bLength;
   uint8_t bDescriptorType;


   uint8_t bEndpointAddress;


   uint8_t bmAttributes;


   uint16_t wMaxPacketSize;


   uint8_t bInterval;



   uint8_t bRefresh;
   uint8_t bSynchAddress;
  } __attribute__ ((packed)) USB_Audio_StdDescriptor_StreamEndpoint_Std_t;
# 738 "./LUFA/Drivers/USB/Class/Device/../Common/AudioClassCommon.h"
  typedef struct
  {
   USB_Descriptor_Header_t Header;
   uint8_t Subtype;



   uint8_t Attributes;

   uint8_t LockDelayUnits;
   uint16_t LockDelay;
  } __attribute__ ((packed)) USB_Audio_Descriptor_StreamEndpoint_Spc_t;
# 762 "./LUFA/Drivers/USB/Class/Device/../Common/AudioClassCommon.h"
  typedef struct
  {
   uint8_t bLength;
   uint8_t bDescriptorType;



   uint8_t bDescriptorSubtype;



   uint8_t bmAttributes;

   uint8_t bLockDelayUnits;
   uint16_t wLockDelay;
  } __attribute__ ((packed)) USB_Audio_StdDescriptor_StreamEndpoint_Spc_t;
# 59 "./LUFA/Drivers/USB/Class/Device/AudioClassDevice.h" 2
# 78 "./LUFA/Drivers/USB/Class/Device/AudioClassDevice.h"
   typedef struct
   {
    struct
    {
     uint8_t ControlInterfaceNumber;


     uint8_t StreamingInterfaceNumber;



     USB_Endpoint_Table_t DataINEndpoint;
     USB_Endpoint_Table_t DataOUTEndpoint;
    } Config;


    struct
    {
     
# 96 "./LUFA/Drivers/USB/Class/Device/AudioClassDevice.h" 3 4
    _Bool 
# 96 "./LUFA/Drivers/USB/Class/Device/AudioClassDevice.h"
         InterfaceEnabled;


    } State;


   } USB_ClassInfo_Audio_Device_t;
# 113 "./LUFA/Drivers/USB/Class/Device/AudioClassDevice.h"
   
# 113 "./LUFA/Drivers/USB/Class/Device/AudioClassDevice.h" 3 4
  _Bool 
# 113 "./LUFA/Drivers/USB/Class/Device/AudioClassDevice.h"
       Audio_Device_ConfigureEndpoints(USB_ClassInfo_Audio_Device_t* const AudioInterfaceInfo) __attribute__ ((nonnull (1)));






   void Audio_Device_ProcessControlRequest(USB_ClassInfo_Audio_Device_t* const AudioInterfaceInfo) __attribute__ ((nonnull (1)));
# 144 "./LUFA/Drivers/USB/Class/Device/AudioClassDevice.h"
   
# 144 "./LUFA/Drivers/USB/Class/Device/AudioClassDevice.h" 3 4
  _Bool 
# 144 "./LUFA/Drivers/USB/Class/Device/AudioClassDevice.h"
       CALLBACK_Audio_Device_GetSetEndpointProperty(USB_ClassInfo_Audio_Device_t* const AudioInterfaceInfo,
                                                     const uint8_t EndpointProperty,
                                                     const uint8_t EndpointAddress,
                                                     const uint8_t EndpointControl,
                                                     uint16_t* const DataLength,
                                                     uint8_t* Data) __attribute__ ((nonnull (1)));
# 173 "./LUFA/Drivers/USB/Class/Device/AudioClassDevice.h"
   
# 173 "./LUFA/Drivers/USB/Class/Device/AudioClassDevice.h" 3 4
  _Bool 
# 173 "./LUFA/Drivers/USB/Class/Device/AudioClassDevice.h"
       CALLBACK_Audio_Device_GetSetInterfaceProperty(USB_ClassInfo_Audio_Device_t* const AudioInterfaceInfo,
                                                      const uint8_t Property,
                                                      const uint8_t EntityAddress,
                                                      const uint16_t Parameter,
                                                      uint16_t* const DataLength,
                                                      uint8_t* Data) __attribute__ ((nonnull (1)));







   void EVENT_Audio_Device_StreamStartStop(USB_ClassInfo_Audio_Device_t* const AudioInterfaceInfo);







   static inline void Audio_Device_USBTask(USB_ClassInfo_Audio_Device_t* const AudioInterfaceInfo)
                                           __attribute__ ((nonnull (1))) __attribute__ ((always_inline));
   static inline void Audio_Device_USBTask(USB_ClassInfo_Audio_Device_t* const AudioInterfaceInfo)
   {
    (void)AudioInterfaceInfo;
   }
# 211 "./LUFA/Drivers/USB/Class/Device/AudioClassDevice.h"
   static inline 
# 211 "./LUFA/Drivers/USB/Class/Device/AudioClassDevice.h" 3 4
                _Bool 
# 211 "./LUFA/Drivers/USB/Class/Device/AudioClassDevice.h"
                     Audio_Device_IsSampleReceived(USB_ClassInfo_Audio_Device_t* const AudioInterfaceInfo)
                                                    __attribute__ ((nonnull (1))) __attribute__ ((always_inline));
   static inline 
# 213 "./LUFA/Drivers/USB/Class/Device/AudioClassDevice.h" 3 4
                _Bool 
# 213 "./LUFA/Drivers/USB/Class/Device/AudioClassDevice.h"
                     Audio_Device_IsSampleReceived(USB_ClassInfo_Audio_Device_t* const AudioInterfaceInfo)
   {
    if ((USB_DeviceState != DEVICE_STATE_Configured) || !(AudioInterfaceInfo->State.InterfaceEnabled))
      return 
# 216 "./LUFA/Drivers/USB/Class/Device/AudioClassDevice.h" 3 4
            0
# 216 "./LUFA/Drivers/USB/Class/Device/AudioClassDevice.h"
                 ;

    Endpoint_SelectEndpoint(AudioInterfaceInfo->Config.DataOUTEndpoint.Address);
    return Endpoint_IsOUTReceived();
   }
# 232 "./LUFA/Drivers/USB/Class/Device/AudioClassDevice.h"
   static inline 
# 232 "./LUFA/Drivers/USB/Class/Device/AudioClassDevice.h" 3 4
                _Bool 
# 232 "./LUFA/Drivers/USB/Class/Device/AudioClassDevice.h"
                     Audio_Device_IsReadyForNextSample(USB_ClassInfo_Audio_Device_t* const AudioInterfaceInfo)
                                                        __attribute__ ((nonnull (1))) __attribute__ ((always_inline));
   static inline 
# 234 "./LUFA/Drivers/USB/Class/Device/AudioClassDevice.h" 3 4
                _Bool 
# 234 "./LUFA/Drivers/USB/Class/Device/AudioClassDevice.h"
                     Audio_Device_IsReadyForNextSample(USB_ClassInfo_Audio_Device_t* const AudioInterfaceInfo)
   {
    if ((USB_DeviceState != DEVICE_STATE_Configured) || !(AudioInterfaceInfo->State.InterfaceEnabled))
      return 
# 237 "./LUFA/Drivers/USB/Class/Device/AudioClassDevice.h" 3 4
            0
# 237 "./LUFA/Drivers/USB/Class/Device/AudioClassDevice.h"
                 ;

    Endpoint_SelectEndpoint(AudioInterfaceInfo->Config.DataINEndpoint.Address);
    return Endpoint_IsINReady();
   }
# 252 "./LUFA/Drivers/USB/Class/Device/AudioClassDevice.h"
   static inline int8_t Audio_Device_ReadSample8(USB_ClassInfo_Audio_Device_t* const AudioInterfaceInfo)
                                                 __attribute__ ((nonnull (1))) __attribute__ ((always_inline));
   static inline int8_t Audio_Device_ReadSample8(USB_ClassInfo_Audio_Device_t* const AudioInterfaceInfo)
   {
    int8_t Sample;

    (void)AudioInterfaceInfo;

    Sample = Endpoint_Read_8();

    if (!(Endpoint_BytesInEndpoint()))
      Endpoint_ClearOUT();

    return Sample;
   }
# 277 "./LUFA/Drivers/USB/Class/Device/AudioClassDevice.h"
   static inline int16_t Audio_Device_ReadSample16(USB_ClassInfo_Audio_Device_t* const AudioInterfaceInfo)
                                                   __attribute__ ((nonnull (1))) __attribute__ ((always_inline));
   static inline int16_t Audio_Device_ReadSample16(USB_ClassInfo_Audio_Device_t* const AudioInterfaceInfo)
   {
    int16_t Sample;

    (void)AudioInterfaceInfo;

    Sample = (int16_t)Endpoint_Read_16_LE();

    if (!(Endpoint_BytesInEndpoint()))
      Endpoint_ClearOUT();

    return Sample;
   }
# 302 "./LUFA/Drivers/USB/Class/Device/AudioClassDevice.h"
   static inline int32_t Audio_Device_ReadSample24(USB_ClassInfo_Audio_Device_t* const AudioInterfaceInfo)
                                                   __attribute__ ((nonnull (1))) __attribute__ ((always_inline));
   static inline int32_t Audio_Device_ReadSample24(USB_ClassInfo_Audio_Device_t* const AudioInterfaceInfo)
   {
    int32_t Sample;

    (void)AudioInterfaceInfo;

    Sample = (((uint32_t)Endpoint_Read_8() << 16) | Endpoint_Read_16_LE());

    if (!(Endpoint_BytesInEndpoint()))
      Endpoint_ClearOUT();

    return Sample;
   }
# 326 "./LUFA/Drivers/USB/Class/Device/AudioClassDevice.h"
   static inline void Audio_Device_WriteSample8(USB_ClassInfo_Audio_Device_t* const AudioInterfaceInfo,
                                                const int8_t Sample) __attribute__ ((nonnull (1))) __attribute__ ((always_inline));
   static inline void Audio_Device_WriteSample8(USB_ClassInfo_Audio_Device_t* const AudioInterfaceInfo,
                                                const int8_t Sample)
   {
    Endpoint_Write_8(Sample);

    if (Endpoint_BytesInEndpoint() == AudioInterfaceInfo->Config.DataINEndpoint.Size)
      Endpoint_ClearIN();
   }
# 345 "./LUFA/Drivers/USB/Class/Device/AudioClassDevice.h"
   static inline void Audio_Device_WriteSample16(USB_ClassInfo_Audio_Device_t* const AudioInterfaceInfo,
                                                 const int16_t Sample) __attribute__ ((nonnull (1))) __attribute__ ((always_inline));
   static inline void Audio_Device_WriteSample16(USB_ClassInfo_Audio_Device_t* const AudioInterfaceInfo,
                                                 const int16_t Sample)
   {
    Endpoint_Write_16_LE(Sample);

    if (Endpoint_BytesInEndpoint() == AudioInterfaceInfo->Config.DataINEndpoint.Size)
      Endpoint_ClearIN();
   }
# 364 "./LUFA/Drivers/USB/Class/Device/AudioClassDevice.h"
   static inline void Audio_Device_WriteSample24(USB_ClassInfo_Audio_Device_t* const AudioInterfaceInfo,
                                                 const int32_t Sample) __attribute__ ((nonnull (1))) __attribute__ ((always_inline));
   static inline void Audio_Device_WriteSample24(USB_ClassInfo_Audio_Device_t* const AudioInterfaceInfo,
                                                 const int32_t Sample)
   {
    Endpoint_Write_16_LE(Sample);
    Endpoint_Write_8(Sample >> 16);

    if (Endpoint_BytesInEndpoint() == AudioInterfaceInfo->Config.DataINEndpoint.Size)
      Endpoint_ClearIN();
   }
# 72 "./LUFA/Drivers/USB/Class/AudioClass.h" 2
# 413 "./LUFA/Drivers/USB/USB.h" 2
# 1 "./LUFA/Drivers/USB/Class/CCIDClass.h" 1
# 76 "./LUFA/Drivers/USB/Class/CCIDClass.h"
# 1 "./LUFA/Drivers/USB/Class/Device/CCIDClassDevice.h" 1
# 59 "./LUFA/Drivers/USB/Class/Device/CCIDClassDevice.h"
# 1 "./LUFA/Drivers/USB/Class/Device/../Common/CCIDClassCommon.h" 1
# 107 "./LUFA/Drivers/USB/Class/Device/../Common/CCIDClassCommon.h"
  enum CCID_Descriptor_ClassSubclassProtocol_t
  {
   CCID_CSCP_CCIDClass = 0x0b,


   CCID_CSCP_NoSpecificSubclass = 0x00,


   CCID_CSCP_NoSpecificProtocol = 0x00,


  };


  enum CCID_BulkOutMessages_t
  {
   CCID_PC_to_RDR_IccPowerOn = 0x62,
   CCID_PC_to_RDR_IccPowerOff = 0x63,
   CCID_PC_to_RDR_GetSlotStatus = 0x65,
   CCID_PC_to_RDR_XfrBlock = 0x6f,
   CCID_PC_to_RDR_GetParameters = 0x6c,
   CCID_PC_to_RDR_ResetParameters = 0x6d,
   CCID_PC_to_RDR_SetParameters = 0x61,
   CCID_PC_to_RDR_Escape = 0x6b,
   CCID_PC_to_RDR_IccClock = 0x6e,
   CCID_PC_to_RDR_T0APDU = 0x6a,
   CCID_PC_to_RDR_Secure = 0x69,
   CCID_PC_to_RDR_Mechanical = 0x71,
   CCID_PC_to_RDR_Abort = 0x72,
   CCID_PC_to_RDR_SetDataRateAndClockFrequency = 0x73,

   CCID_RDR_to_PC_DataBlock = 0x80,
   CCID_RDR_to_PC_SlotStatus = 0x81,
   CCID_RDR_to_PC_Parameters = 0x82,
   CCID_RDR_to_PC_Escape = 0x83,
   CCID_RDR_to_PC_DataRateAndClockFrequency = 0x84,
  };


  enum CCID_ClassRequests_t
  {
   CCID_ABORT = 0x1,
   CCID_GET_CLOCK_FREQUENCIES = 0x2,
   CCID_GET_DATA_RATES = 0x3,
  };


  enum CCID_DescriptorTypes_t
  {
   CCID_DTYPE_Functional = 0x21,
  };

  enum CCID_Features_Auto_t
  {
   CCID_Features_Auto_None = 0x0,
   CCID_Features_Auto_ParameterConfiguration = 0x2,
   CCID_Features_Auto_ICCActivation = 0x4,
   CCID_Features_Auto_VoltageSelection = 0x8,

   CCID_Features_Auto_ICCClockFrequencyChange = 0x10,
   CCID_Features_Auto_ICCBaudRateChange = 0x20,
   CCID_Features_Auto_ParameterNegotiation = 0x40,
   CCID_Features_Auto_PPS = 0x80,
  };

  enum CCID_Features_ExchangeLevel_t
  {
   CCID_Features_ExchangeLevel_TPDU = 0x00010000,
   CCID_Features_ExchangeLevel_ShortAPDU = 0x00020000,
   CCID_Features_ExchangeLevel_ShortExtendedAPDU = 0x00040000
  };


  typedef struct
  {
   USB_Descriptor_Header_t Header;

   uint16_t CCID;
   uint8_t MaxSlotIndex;
   uint8_t VoltageSupport;
   uint32_t Protocols;
   uint32_t DefaultClock;
   uint32_t MaximumClock;
   uint8_t NumClockSupported;
   uint32_t DataRate;
   uint32_t MaxDataRate;
   uint8_t NumDataRatesSupported;
   uint32_t MaxIFSD;
   uint32_t SynchProtocols;
   uint32_t Mechanical;
   uint32_t Features;
   uint32_t MaxCCIDMessageLength;
   uint8_t ClassGetResponse;
   uint8_t ClassEnvelope;
   uint16_t LcdLayout;
   uint8_t PINSupport;
   uint8_t MaxCCIDBusySlots;
  } __attribute__ ((packed)) USB_CCID_Descriptor_t;

  typedef struct
  {
   uint8_t FindexDindex;
   uint8_t TCCKST0;
   uint8_t GuardTimeT0;
   uint8_t WaitingIntegerT0;
   uint8_t ClockStop;
  } __attribute__ ((packed)) USB_CCID_ProtocolData_T0_t;

  typedef struct
  {
   uint8_t FindexDindex;
   uint8_t TCCKST1;
   uint8_t GuardTimeT1;
   uint8_t WaitingIntegerT1;
   uint8_t ClockStop;
   uint8_t FSC;
   uint8_t NadValue;
  } __attribute__ ((packed)) USB_CCID_ProtocolData_T1_t;



  typedef struct
  {
   uint8_t MessageType;
   uint32_t Length;
   uint8_t Slot;
   uint8_t Seq;
  } __attribute__ ((packed)) USB_CCID_BulkMessage_Header_t;

  typedef struct
  {
   USB_CCID_BulkMessage_Header_t CCIDHeader;
   uint8_t Status;
   uint8_t Error;
   uint8_t ChainParam;
   uint8_t Data[0];
  } __attribute__ ((packed)) USB_CCID_RDR_to_PC_DataBlock_t;

  typedef struct
  {
   USB_CCID_BulkMessage_Header_t CCIDHeader;
   uint8_t Status;
   uint8_t Error;
   uint8_t ClockStatus;
  } __attribute__ ((packed)) USB_CCID_RDR_to_PC_SlotStatus_t;

  typedef struct
  {
   USB_CCID_BulkMessage_Header_t CCIDHeader;
   uint8_t Status;
   uint8_t Error;
   uint8_t ProtocolNum;
   union
   {
    USB_CCID_ProtocolData_T0_t T0;
    USB_CCID_ProtocolData_T1_t T1;
   } ProtocolData;
  } __attribute__ ((packed)) USB_CCID_RDR_to_PC_Parameters_t;

  typedef struct
  {
   USB_CCID_BulkMessage_Header_t CCIDHeader;
   uint8_t Status;
   uint8_t Error;
   uint8_t RFU;
   uint8_t Data[0];
  } __attribute__ ((packed)) USB_CCID_RDR_to_PC_Escape_t;

  typedef struct
  {
   USB_CCID_BulkMessage_Header_t CCIDHeader;
   uint8_t Status;
   uint8_t Error;
   uint8_t RFU;
   uint32_t ClockFrequency;
   uint32_t DataRate;
  } __attribute__ ((packed)) USB_CCID_RDR_to_PC_DataRateAndClockFrequency_t;
# 60 "./LUFA/Drivers/USB/Class/Device/CCIDClassDevice.h" 2
# 69 "./LUFA/Drivers/USB/Class/Device/CCIDClassDevice.h"
   typedef struct
   {
    struct
    {
     uint8_t InterfaceNumber;
     uint8_t TotalSlots;
     USB_Endpoint_Table_t DataINEndpoint;
     USB_Endpoint_Table_t DataOUTEndpoint;
    } Config;


    struct
    {
     
# 82 "./LUFA/Drivers/USB/Class/Device/CCIDClassDevice.h" 3 4
    _Bool 
# 82 "./LUFA/Drivers/USB/Class/Device/CCIDClassDevice.h"
            Aborted;
     uint8_t AbortedSeq;
    } State;


    USB_CCID_ProtocolData_T0_t ProtocolData;
   } USB_ClassInfo_CCID_Device_t;
# 99 "./LUFA/Drivers/USB/Class/Device/CCIDClassDevice.h"
   
# 99 "./LUFA/Drivers/USB/Class/Device/CCIDClassDevice.h" 3 4
  _Bool 
# 99 "./LUFA/Drivers/USB/Class/Device/CCIDClassDevice.h"
       CCID_Device_ConfigureEndpoints(USB_ClassInfo_CCID_Device_t* const CCIDInterfaceInfo) __attribute__ ((nonnull (1)));






   void CCID_Device_ProcessControlRequest(USB_ClassInfo_CCID_Device_t* const CCIDInterfaceInfo) __attribute__ ((nonnull (1)));






   void CCID_Device_USBTask(USB_ClassInfo_CCID_Device_t* const CCIDInterfaceInfo) __attribute__ ((nonnull (1)));
# 127 "./LUFA/Drivers/USB/Class/Device/CCIDClassDevice.h"
   uint8_t CALLBACK_CCID_IccPowerOn(USB_ClassInfo_CCID_Device_t* const CCIDInterfaceInfo,
                                    const uint8_t Slot,
                                    uint8_t* const Atr,
                                    uint8_t* const AtrSize,
                                    uint8_t* const Error) __attribute__ ((nonnull (1)));
# 142 "./LUFA/Drivers/USB/Class/Device/CCIDClassDevice.h"
   uint8_t CALLBACK_CCID_IccPowerOff(USB_ClassInfo_CCID_Device_t* const CCIDInterfaceInfo,
                                     const uint8_t Slot,
                                     uint8_t* const Error) __attribute__ ((nonnull (1)));
# 155 "./LUFA/Drivers/USB/Class/Device/CCIDClassDevice.h"
   uint8_t CALLBACK_CCID_GetSlotStatus(USB_ClassInfo_CCID_Device_t* const CCIDInterfaceInfo,
                                       const uint8_t Slot,
                                       uint8_t* const Error) __attribute__ ((nonnull (1)));
# 170 "./LUFA/Drivers/USB/Class/Device/CCIDClassDevice.h"
   uint8_t CALLBACK_CCID_SetParameters_T0(USB_ClassInfo_CCID_Device_t* const CCIDInterfaceInfo,
               const uint8_t Slot,
               uint8_t* const Error,
               USB_CCID_ProtocolData_T0_t* const T0) __attribute__ ((nonnull (1)));
# 186 "./LUFA/Drivers/USB/Class/Device/CCIDClassDevice.h"
   uint8_t CALLBACK_CCID_GetParameters_T0(USB_ClassInfo_CCID_Device_t* const CCIDInterfaceInfo,
               const uint8_t Slot,
               uint8_t* const Error,
               uint8_t* const ProtocolNum,
               USB_CCID_ProtocolData_T0_t* const T0) __attribute__ ((nonnull (1)));
# 206 "./LUFA/Drivers/USB/Class/Device/CCIDClassDevice.h"
   uint8_t CALLBACK_CCID_XfrBlock(USB_ClassInfo_CCID_Device_t* const CCIDInterfaceInfo,
             const uint8_t Slot,
             const uint8_t* ReceivedBuffer,
             const uint8_t ReceivedBufferSize,
             uint8_t* const SendBuffer,
             uint8_t* const SentBufferSize,
             uint8_t* const Error) __attribute__ ((nonnull (1)));
# 225 "./LUFA/Drivers/USB/Class/Device/CCIDClassDevice.h"
   uint8_t CALLBACK_CCID_Abort(USB_ClassInfo_CCID_Device_t* const CCIDInterfaceInfo,
                               const uint8_t Slot,
                               const uint8_t Seq,
                               uint8_t* const Error) __attribute__ ((nonnull (1)));
# 77 "./LUFA/Drivers/USB/Class/CCIDClass.h" 2
# 414 "./LUFA/Drivers/USB/USB.h" 2
# 1 "./LUFA/Drivers/USB/Class/CDCClass.h" 1
# 71 "./LUFA/Drivers/USB/Class/CDCClass.h"
# 1 "./LUFA/Drivers/USB/Class/Device/CDCClassDevice.h" 1
# 76 "./LUFA/Drivers/USB/Class/Device/CDCClassDevice.h"
# 1 "./LUFA/Drivers/USB/Class/Device/../Common/CDCClassCommon.h" 1
# 119 "./LUFA/Drivers/USB/Class/Device/../Common/CDCClassCommon.h"
  enum CDC_Descriptor_ClassSubclassProtocol_t
  {
   CDC_CSCP_CDCClass = 0x02,


   CDC_CSCP_NoSpecificSubclass = 0x00,


   CDC_CSCP_ACMSubclass = 0x02,


   CDC_CSCP_ATCommandProtocol = 0x01,


   CDC_CSCP_NoSpecificProtocol = 0x00,


   CDC_CSCP_VendorSpecificProtocol = 0xFF,


   CDC_CSCP_CDCDataClass = 0x0A,


   CDC_CSCP_NoDataSubclass = 0x00,


   CDC_CSCP_NoDataProtocol = 0x00,


  };


  enum CDC_ClassRequests_t
  {
   CDC_REQ_SendEncapsulatedCommand = 0x00,
   CDC_REQ_GetEncapsulatedResponse = 0x01,
   CDC_REQ_SetLineEncoding = 0x20,
   CDC_REQ_GetLineEncoding = 0x21,
   CDC_REQ_SetControlLineState = 0x22,
   CDC_REQ_SendBreak = 0x23,
  };


  enum CDC_ClassNotifications_t
  {
   CDC_NOTIF_SerialState = 0x20,




  };


  enum CDC_DescriptorTypes_t
  {
   CDC_DTYPE_CSInterface = 0x24,
   CDC_DTYPE_CSEndpoint = 0x25,
  };


  enum CDC_DescriptorSubtypes_t
  {
   CDC_DSUBTYPE_CSInterface_Header = 0x00,
   CDC_DSUBTYPE_CSInterface_CallManagement = 0x01,
   CDC_DSUBTYPE_CSInterface_ACM = 0x02,
   CDC_DSUBTYPE_CSInterface_DirectLine = 0x03,
   CDC_DSUBTYPE_CSInterface_TelephoneRinger = 0x04,
   CDC_DSUBTYPE_CSInterface_TelephoneCall = 0x05,
   CDC_DSUBTYPE_CSInterface_Union = 0x06,
   CDC_DSUBTYPE_CSInterface_CountrySelection = 0x07,
   CDC_DSUBTYPE_CSInterface_TelephoneOpModes = 0x08,
   CDC_DSUBTYPE_CSInterface_USBTerminal = 0x09,
   CDC_DSUBTYPE_CSInterface_NetworkChannel = 0x0A,
   CDC_DSUBTYPE_CSInterface_ProtocolUnit = 0x0B,
   CDC_DSUBTYPE_CSInterface_ExtensionUnit = 0x0C,
   CDC_DSUBTYPE_CSInterface_MultiChannel = 0x0D,
   CDC_DSUBTYPE_CSInterface_CAPI = 0x0E,
   CDC_DSUBTYPE_CSInterface_Ethernet = 0x0F,
   CDC_DSUBTYPE_CSInterface_ATM = 0x10,
  };


  enum CDC_LineEncodingFormats_t
  {
   CDC_LINEENCODING_OneStopBit = 0,
   CDC_LINEENCODING_OneAndAHalfStopBits = 1,
   CDC_LINEENCODING_TwoStopBits = 2,
  };


  enum CDC_LineEncodingParity_t
  {
   CDC_PARITY_None = 0,
   CDC_PARITY_Odd = 1,
   CDC_PARITY_Even = 2,
   CDC_PARITY_Mark = 3,
   CDC_PARITY_Space = 4,
  };
# 229 "./LUFA/Drivers/USB/Class/Device/../Common/CDCClassCommon.h"
  typedef struct
  {
   USB_Descriptor_Header_t Header;
   uint8_t Subtype;


   uint16_t CDCSpecification;




  } __attribute__ ((packed)) USB_CDC_Descriptor_FunctionalHeader_t;
# 253 "./LUFA/Drivers/USB/Class/Device/../Common/CDCClassCommon.h"
  typedef struct
  {
   uint8_t bFunctionLength;
   uint8_t bDescriptorType;


   uint8_t bDescriptorSubType;


   uint16_t bcdCDC;



  } __attribute__ ((packed)) USB_CDC_StdDescriptor_FunctionalHeader_t;
# 277 "./LUFA/Drivers/USB/Class/Device/../Common/CDCClassCommon.h"
  typedef struct
  {
   USB_Descriptor_Header_t Header;
   uint8_t Subtype;


   uint8_t Capabilities;



  } __attribute__ ((packed)) USB_CDC_Descriptor_FunctionalACM_t;
# 299 "./LUFA/Drivers/USB/Class/Device/../Common/CDCClassCommon.h"
  typedef struct
  {
   uint8_t bFunctionLength;
   uint8_t bDescriptorType;


   uint8_t bDescriptorSubType;


   uint8_t bmCapabilities;



  } __attribute__ ((packed)) USB_CDC_StdDescriptor_FunctionalACM_t;
# 323 "./LUFA/Drivers/USB/Class/Device/../Common/CDCClassCommon.h"
  typedef struct
  {
   USB_Descriptor_Header_t Header;
   uint8_t Subtype;


   uint8_t MasterInterfaceNumber;
   uint8_t SlaveInterfaceNumber;
  } __attribute__ ((packed)) USB_CDC_Descriptor_FunctionalUnion_t;
# 343 "./LUFA/Drivers/USB/Class/Device/../Common/CDCClassCommon.h"
  typedef struct
  {
   uint8_t bFunctionLength;
   uint8_t bDescriptorType;


   uint8_t bDescriptorSubType;


   uint8_t bMasterInterface;
   uint8_t bSlaveInterface0;
  } __attribute__ ((packed)) USB_CDC_StdDescriptor_FunctionalUnion_t;
# 363 "./LUFA/Drivers/USB/Class/Device/../Common/CDCClassCommon.h"
  typedef struct
  {
   uint32_t BaudRateBPS;
   uint8_t CharFormat;


   uint8_t ParityType;


   uint8_t DataBits;
  } __attribute__ ((packed)) CDC_LineEncoding_t;
# 77 "./LUFA/Drivers/USB/Class/Device/CDCClassDevice.h" 2

# 1 "/usr/lib/avr/include/stdio.h" 1 3
# 45 "/usr/lib/avr/include/stdio.h" 3
# 1 "/usr/lib/gcc/avr/5.4.0/include/stdarg.h" 1 3 4
# 40 "/usr/lib/gcc/avr/5.4.0/include/stdarg.h" 3 4

# 40 "/usr/lib/gcc/avr/5.4.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 98 "/usr/lib/gcc/avr/5.4.0/include/stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 46 "/usr/lib/avr/include/stdio.h" 2 3




# 1 "/usr/lib/gcc/avr/5.4.0/include/stddef.h" 1 3 4
# 51 "/usr/lib/avr/include/stdio.h" 2 3
# 244 "/usr/lib/avr/include/stdio.h" 3
struct __file {
 char *buf;
 unsigned char unget;
 uint8_t flags;
# 263 "/usr/lib/avr/include/stdio.h" 3
 int size;
 int len;
 int (*put)(char, struct __file *);
 int (*get)(struct __file *);
 void *udata;
};
# 277 "/usr/lib/avr/include/stdio.h" 3
typedef struct __file FILE;
# 407 "/usr/lib/avr/include/stdio.h" 3
extern struct __file *__iob[];
# 419 "/usr/lib/avr/include/stdio.h" 3
extern FILE *fdevopen(int (*__put)(char, FILE*), int (*__get)(FILE*));
# 436 "/usr/lib/avr/include/stdio.h" 3
extern int fclose(FILE *__stream);
# 610 "/usr/lib/avr/include/stdio.h" 3
extern int vfprintf(FILE *__stream, const char *__fmt, va_list __ap);





extern int vfprintf_P(FILE *__stream, const char *__fmt, va_list __ap);






extern int fputc(int __c, FILE *__stream);




extern int putc(int __c, FILE *__stream);


extern int putchar(int __c);
# 651 "/usr/lib/avr/include/stdio.h" 3
extern int printf(const char *__fmt, ...);





extern int printf_P(const char *__fmt, ...);







extern int vprintf(const char *__fmt, va_list __ap);





extern int sprintf(char *__s, const char *__fmt, ...);





extern int sprintf_P(char *__s, const char *__fmt, ...);
# 687 "/usr/lib/avr/include/stdio.h" 3
extern int snprintf(char *__s, size_t __n, const char *__fmt, ...);





extern int snprintf_P(char *__s, size_t __n, const char *__fmt, ...);





extern int vsprintf(char *__s, const char *__fmt, va_list ap);





extern int vsprintf_P(char *__s, const char *__fmt, va_list ap);
# 715 "/usr/lib/avr/include/stdio.h" 3
extern int vsnprintf(char *__s, size_t __n, const char *__fmt, va_list ap);





extern int vsnprintf_P(char *__s, size_t __n, const char *__fmt, va_list ap);




extern int fprintf(FILE *__stream, const char *__fmt, ...);





extern int fprintf_P(FILE *__stream, const char *__fmt, ...);






extern int fputs(const char *__str, FILE *__stream);




extern int fputs_P(const char *__str, FILE *__stream);





extern int puts(const char *__str);




extern int puts_P(const char *__str);
# 764 "/usr/lib/avr/include/stdio.h" 3
extern size_t fwrite(const void *__ptr, size_t __size, size_t __nmemb,
         FILE *__stream);







extern int fgetc(FILE *__stream);




extern int getc(FILE *__stream);


extern int getchar(void);
# 812 "/usr/lib/avr/include/stdio.h" 3
extern int ungetc(int __c, FILE *__stream);
# 824 "/usr/lib/avr/include/stdio.h" 3
extern char *fgets(char *__str, int __size, FILE *__stream);






extern char *gets(char *__str);
# 842 "/usr/lib/avr/include/stdio.h" 3
extern size_t fread(void *__ptr, size_t __size, size_t __nmemb,
        FILE *__stream);




extern void clearerr(FILE *__stream);
# 859 "/usr/lib/avr/include/stdio.h" 3
extern int feof(FILE *__stream);
# 870 "/usr/lib/avr/include/stdio.h" 3
extern int ferror(FILE *__stream);






extern int vfscanf(FILE *__stream, const char *__fmt, va_list __ap);




extern int vfscanf_P(FILE *__stream, const char *__fmt, va_list __ap);







extern int fscanf(FILE *__stream, const char *__fmt, ...);




extern int fscanf_P(FILE *__stream, const char *__fmt, ...);






extern int scanf(const char *__fmt, ...);




extern int scanf_P(const char *__fmt, ...);







extern int vscanf(const char *__fmt, va_list __ap);







extern int sscanf(const char *__buf, const char *__fmt, ...);




extern int sscanf_P(const char *__buf, const char *__fmt, ...);
# 940 "/usr/lib/avr/include/stdio.h" 3
static __inline__ int fflush(FILE *stream __attribute__((unused)))
{
 return 0;
}






__extension__ typedef long long fpos_t;
extern int fgetpos(FILE *stream, fpos_t *pos);
extern FILE *fopen(const char *path, const char *mode);
extern FILE *freopen(const char *path, const char *mode, FILE *stream);
extern FILE *fdopen(int, const char *);
extern int fseek(FILE *stream, long offset, int whence);
extern int fsetpos(FILE *stream, fpos_t *pos);
extern long ftell(FILE *stream);
extern int fileno(FILE *);
extern void perror(const char *s);
extern int remove(const char *pathname);
extern int rename(const char *oldpath, const char *newpath);
extern void rewind(FILE *stream);
extern void setbuf(FILE *stream, char *buf);
extern int setvbuf(FILE *stream, char *buf, int mode, size_t size);
extern FILE *tmpfile(void);
extern char *tmpnam (char *s);
# 79 "./LUFA/Drivers/USB/Class/Device/CDCClassDevice.h" 2
# 98 "./LUFA/Drivers/USB/Class/Device/CDCClassDevice.h"
   
# 98 "./LUFA/Drivers/USB/Class/Device/CDCClassDevice.h"
  typedef struct
   {
    struct
    {
     uint8_t ControlInterfaceNumber;

     USB_Endpoint_Table_t DataINEndpoint;
     USB_Endpoint_Table_t DataOUTEndpoint;
     USB_Endpoint_Table_t NotificationEndpoint;
    } Config;


    struct
    {
     struct
     {
      uint16_t HostToDevice;


      uint16_t DeviceToHost;



     } ControlLineStates;

     CDC_LineEncoding_t LineEncoding;



    } State;


   } USB_ClassInfo_CDC_Device_t;
# 141 "./LUFA/Drivers/USB/Class/Device/CDCClassDevice.h"
   
# 141 "./LUFA/Drivers/USB/Class/Device/CDCClassDevice.h" 3 4
  _Bool 
# 141 "./LUFA/Drivers/USB/Class/Device/CDCClassDevice.h"
       CDC_Device_ConfigureEndpoints(USB_ClassInfo_CDC_Device_t* const CDCInterfaceInfo) __attribute__ ((nonnull (1)));






   void CDC_Device_ProcessControlRequest(USB_ClassInfo_CDC_Device_t* const CDCInterfaceInfo) __attribute__ ((nonnull (1)));






   void CDC_Device_USBTask(USB_ClassInfo_CDC_Device_t* const CDCInterfaceInfo) __attribute__ ((nonnull (1)));
# 164 "./LUFA/Drivers/USB/Class/Device/CDCClassDevice.h"
   void EVENT_CDC_Device_LineEncodingChanged(USB_ClassInfo_CDC_Device_t* const CDCInterfaceInfo) __attribute__ ((nonnull (1)));
# 174 "./LUFA/Drivers/USB/Class/Device/CDCClassDevice.h"
   void EVENT_CDC_Device_ControLineStateChanged(USB_ClassInfo_CDC_Device_t* const CDCInterfaceInfo) __attribute__ ((nonnull (1)));







   void EVENT_CDC_Device_BreakSent(USB_ClassInfo_CDC_Device_t* const CDCInterfaceInfo,
                                   const uint8_t Duration) __attribute__ ((nonnull (1)));
# 198 "./LUFA/Drivers/USB/Class/Device/CDCClassDevice.h"
   uint8_t CDC_Device_SendString(USB_ClassInfo_CDC_Device_t* const CDCInterfaceInfo,
                                 const char* const String) __attribute__ ((nonnull (1))) __attribute__ ((nonnull (2)));
# 215 "./LUFA/Drivers/USB/Class/Device/CDCClassDevice.h"
   uint8_t CDC_Device_SendData(USB_ClassInfo_CDC_Device_t* const CDCInterfaceInfo,
                               const void* const Buffer,
                               const uint16_t Length) __attribute__ ((nonnull (1))) __attribute__ ((nonnull (2)));
# 235 "./LUFA/Drivers/USB/Class/Device/CDCClassDevice.h"
    uint8_t CDC_Device_SendString_P(USB_ClassInfo_CDC_Device_t* const CDCInterfaceInfo,
                                    const char* const String) __attribute__ ((nonnull (1))) __attribute__ ((nonnull (2)));
# 256 "./LUFA/Drivers/USB/Class/Device/CDCClassDevice.h"
    uint8_t CDC_Device_SendData_P(USB_ClassInfo_CDC_Device_t* const CDCInterfaceInfo,
                                  const void* const Buffer,
                                  const uint16_t Length) __attribute__ ((nonnull (1))) __attribute__ ((nonnull (2)));
# 274 "./LUFA/Drivers/USB/Class/Device/CDCClassDevice.h"
   uint8_t CDC_Device_SendByte(USB_ClassInfo_CDC_Device_t* const CDCInterfaceInfo,
                               const uint8_t Data) __attribute__ ((nonnull (1)));
# 289 "./LUFA/Drivers/USB/Class/Device/CDCClassDevice.h"
   uint16_t CDC_Device_BytesReceived(USB_ClassInfo_CDC_Device_t* const CDCInterfaceInfo) __attribute__ ((nonnull (1)));
# 303 "./LUFA/Drivers/USB/Class/Device/CDCClassDevice.h"
   int16_t CDC_Device_ReceiveByte(USB_ClassInfo_CDC_Device_t* const CDCInterfaceInfo) __attribute__ ((nonnull (1)));
# 314 "./LUFA/Drivers/USB/Class/Device/CDCClassDevice.h"
   uint8_t CDC_Device_Flush(USB_ClassInfo_CDC_Device_t* const CDCInterfaceInfo) __attribute__ ((nonnull (1)));
# 326 "./LUFA/Drivers/USB/Class/Device/CDCClassDevice.h"
   void CDC_Device_SendControlLineStateChange(USB_ClassInfo_CDC_Device_t* const CDCInterfaceInfo) __attribute__ ((nonnull (1)));
# 347 "./LUFA/Drivers/USB/Class/Device/CDCClassDevice.h"
   void CDC_Device_CreateStream(USB_ClassInfo_CDC_Device_t* const CDCInterfaceInfo,
                                FILE* const Stream) __attribute__ ((nonnull (1))) __attribute__ ((nonnull (2)));
# 358 "./LUFA/Drivers/USB/Class/Device/CDCClassDevice.h"
   void CDC_Device_CreateBlockingStream(USB_ClassInfo_CDC_Device_t* const CDCInterfaceInfo,
                                        FILE* const Stream) __attribute__ ((nonnull (1))) __attribute__ ((nonnull (2)));
# 72 "./LUFA/Drivers/USB/Class/CDCClass.h" 2
# 415 "./LUFA/Drivers/USB/USB.h" 2
# 1 "./LUFA/Drivers/USB/Class/HIDClass.h" 1
# 72 "./LUFA/Drivers/USB/Class/HIDClass.h"
# 1 "./LUFA/Drivers/USB/Class/Device/HIDClassDevice.h" 1
# 58 "./LUFA/Drivers/USB/Class/Device/HIDClassDevice.h"
# 1 "./LUFA/Drivers/USB/Class/Device/../Common/HIDClassCommon.h" 1
# 55 "./LUFA/Drivers/USB/Class/Device/../Common/HIDClassCommon.h"
# 1 "./LUFA/Drivers/USB/Class/Device/../Common/HIDParser.h" 1
# 70 "./LUFA/Drivers/USB/Class/Device/../Common/HIDParser.h"
# 1 "./LUFA/Drivers/USB/Class/Device/../Common/../../../../Common/Common.h" 1
# 71 "./LUFA/Drivers/USB/Class/Device/../Common/HIDParser.h" 2

# 1 "./LUFA/Drivers/USB/Class/Device/../Common/HIDReportData.h" 1
# 73 "./LUFA/Drivers/USB/Class/Device/../Common/HIDParser.h" 2
# 1 "./LUFA/Drivers/USB/Class/Device/../Common/HIDClassCommon.h" 1
# 74 "./LUFA/Drivers/USB/Class/Device/../Common/HIDParser.h" 2
# 147 "./LUFA/Drivers/USB/Class/Device/../Common/HIDParser.h"
   enum HID_Parse_ErrorCodes_t
   {
    HID_PARSE_Successful = 0,
    HID_PARSE_HIDStackOverflow = 1,
    HID_PARSE_HIDStackUnderflow = 2,
    HID_PARSE_InsufficientReportItems = 3,
    HID_PARSE_UnexpectedEndCollection = 4,
    HID_PARSE_InsufficientCollectionPaths = 5,
    HID_PARSE_UsageListOverflow = 6,
    HID_PARSE_InsufficientReportIDItems = 7,
    HID_PARSE_NoUnfilteredReportItems = 8,
   };






   typedef struct
   {
    uint32_t Minimum;
    uint32_t Maximum;
   } HID_MinMax_t;





   typedef struct
   {
    uint32_t Type;
    uint8_t Exponent;
   } HID_Unit_t;





   typedef struct
   {
    uint16_t Page;
    uint16_t Usage;
   } HID_Usage_t;






   typedef struct HID_CollectionPath
   {
    uint8_t Type;
    HID_Usage_t Usage;
    struct HID_CollectionPath* Parent;
   } HID_CollectionPath_t;





   typedef struct
   {
    uint8_t BitSize;

    HID_Usage_t Usage;
    HID_Unit_t Unit;
    HID_MinMax_t Logical;
    HID_MinMax_t Physical;
   } HID_ReportItem_Attributes_t;





   typedef struct
   {
    uint16_t BitOffset;
    uint8_t ItemType;
    uint16_t ItemFlags;
    uint8_t ReportID;
    HID_CollectionPath_t* CollectionPath;

    HID_ReportItem_Attributes_t Attributes;

    uint32_t Value;


    uint32_t PreviousValue;
   } HID_ReportItem_t;





   typedef struct
   {
    uint8_t ReportID;
    uint16_t ReportSizeBits[3];


   } HID_ReportSizeInfo_t;





   typedef struct
   {
    uint8_t TotalReportItems;
    HID_ReportItem_t ReportItems[20];


    HID_CollectionPath_t CollectionPaths[10];


    uint8_t TotalDeviceReports;
    HID_ReportSizeInfo_t ReportIDSizes[10];
    uint16_t LargestReportSizeBits;
    
# 265 "./LUFA/Drivers/USB/Class/Device/../Common/HIDParser.h" 3 4
   _Bool 
# 265 "./LUFA/Drivers/USB/Class/Device/../Common/HIDParser.h"
                        UsingReportIDs;


   } HID_ReportInfo_t;
# 280 "./LUFA/Drivers/USB/Class/Device/../Common/HIDParser.h"
   uint8_t USB_ProcessHIDReport(const uint8_t* ReportData,
                                uint16_t ReportSize,
                                HID_ReportInfo_t* const ParserData) __attribute__ ((nonnull (1))) __attribute__ ((nonnull (3)));
# 297 "./LUFA/Drivers/USB/Class/Device/../Common/HIDParser.h"
   
# 297 "./LUFA/Drivers/USB/Class/Device/../Common/HIDParser.h" 3 4
  _Bool 
# 297 "./LUFA/Drivers/USB/Class/Device/../Common/HIDParser.h"
       USB_GetHIDReportItemInfo(const uint8_t* ReportData,
                                 HID_ReportItem_t* const ReportItem) __attribute__ ((nonnull (1)));
# 313 "./LUFA/Drivers/USB/Class/Device/../Common/HIDParser.h"
   void USB_SetHIDReportItemInfo(uint8_t* ReportData,
                                 HID_ReportItem_t* const ReportItem) __attribute__ ((nonnull (1)));
# 325 "./LUFA/Drivers/USB/Class/Device/../Common/HIDParser.h"
   uint16_t USB_GetHIDReportSize(HID_ReportInfo_t* const ParserData,
                                 const uint8_t ReportID,
                                 const uint8_t ReportType) __attribute__ ((const)) __attribute__ ((nonnull (1)));
# 343 "./LUFA/Drivers/USB/Class/Device/../Common/HIDParser.h"
   
# 343 "./LUFA/Drivers/USB/Class/Device/../Common/HIDParser.h" 3 4
  _Bool 
# 343 "./LUFA/Drivers/USB/Class/Device/../Common/HIDParser.h"
       CALLBACK_HIDParser_FilterHIDReportItem(HID_ReportItem_t* const CurrentItem);




   typedef struct
   {
     HID_ReportItem_Attributes_t Attributes;
     uint8_t ReportCount;
     uint8_t ReportID;
   } HID_StateTable_t;
# 56 "./LUFA/Drivers/USB/Class/Device/../Common/HIDClassCommon.h" 2
# 546 "./LUFA/Drivers/USB/Class/Device/../Common/HIDClassCommon.h"
  enum HID_Descriptor_ClassSubclassProtocol_t
  {
   HID_CSCP_HIDClass = 0x03,


   HID_CSCP_NonBootSubclass = 0x00,


   HID_CSCP_BootSubclass = 0x01,


   HID_CSCP_NonBootProtocol = 0x00,


   HID_CSCP_KeyboardBootProtocol = 0x01,


   HID_CSCP_MouseBootProtocol = 0x02,


  };


  enum HID_ClassRequests_t
  {
   HID_REQ_GetReport = 0x01,
   HID_REQ_GetIdle = 0x02,
   HID_REQ_GetProtocol = 0x03,
   HID_REQ_SetReport = 0x09,
   HID_REQ_SetIdle = 0x0A,
   HID_REQ_SetProtocol = 0x0B,
  };


  enum HID_DescriptorTypes_t
  {
   HID_DTYPE_HID = 0x21,
   HID_DTYPE_Report = 0x22,
  };


  enum HID_ReportItemTypes_t
  {
   HID_REPORT_ITEM_In = 0,
   HID_REPORT_ITEM_Out = 1,
   HID_REPORT_ITEM_Feature = 2,
  };
# 603 "./LUFA/Drivers/USB/Class/Device/../Common/HIDClassCommon.h"
  typedef struct
  {
   USB_Descriptor_Header_t Header;

   uint16_t HIDSpec;



   uint8_t CountryCode;

   uint8_t TotalReportDescriptors;

   uint8_t HIDReportType;
   uint16_t HIDReportLength;
  } __attribute__ ((packed)) USB_HID_Descriptor_HID_t;
# 629 "./LUFA/Drivers/USB/Class/Device/../Common/HIDClassCommon.h"
  typedef struct
  {
   uint8_t bLength;
   uint8_t bDescriptorType;



   uint16_t bcdHID;



   uint8_t bCountryCode;

   uint8_t bNumDescriptors;

   uint8_t bDescriptorType2;
   uint16_t wDescriptorLength;
  } __attribute__ ((packed)) USB_HID_StdDescriptor_HID_t;





  typedef struct
  {
   uint8_t Button;
   int8_t X;
   int8_t Y;
  } __attribute__ ((packed)) USB_MouseReport_Data_t;





  typedef struct
  {
   uint8_t Modifier;


   uint8_t Reserved;
   uint8_t KeyCode[6];
  } __attribute__ ((packed)) USB_KeyboardReport_Data_t;


  typedef uint8_t USB_Descriptor_HIDReport_Datatype_t;
# 59 "./LUFA/Drivers/USB/Class/Device/HIDClassDevice.h" 2
# 82 "./LUFA/Drivers/USB/Class/Device/HIDClassDevice.h"
   typedef struct
   {
    struct
    {
     uint8_t InterfaceNumber;

     USB_Endpoint_Table_t ReportINEndpoint;

     void* PrevReportINBuffer;
# 102 "./LUFA/Drivers/USB/Class/Device/HIDClassDevice.h"
     uint8_t PrevReportINBufferSize;





    } Config;


    struct
    {
     
# 113 "./LUFA/Drivers/USB/Class/Device/HIDClassDevice.h" 3 4
    _Bool 
# 113 "./LUFA/Drivers/USB/Class/Device/HIDClassDevice.h"
             UsingReportProtocol;
     uint16_t PrevFrameNum;
     uint16_t IdleCount;
     uint16_t IdleMSRemaining;

    } State;


   } USB_ClassInfo_HID_Device_t;
# 132 "./LUFA/Drivers/USB/Class/Device/HIDClassDevice.h"
   
# 132 "./LUFA/Drivers/USB/Class/Device/HIDClassDevice.h" 3 4
  _Bool 
# 132 "./LUFA/Drivers/USB/Class/Device/HIDClassDevice.h"
       HID_Device_ConfigureEndpoints(USB_ClassInfo_HID_Device_t* const HIDInterfaceInfo) __attribute__ ((nonnull (1)));






   void HID_Device_ProcessControlRequest(USB_ClassInfo_HID_Device_t* const HIDInterfaceInfo) __attribute__ ((nonnull (1)));






   void HID_Device_USBTask(USB_ClassInfo_HID_Device_t* const HIDInterfaceInfo) __attribute__ ((nonnull (1)));
# 163 "./LUFA/Drivers/USB/Class/Device/HIDClassDevice.h"
   
# 163 "./LUFA/Drivers/USB/Class/Device/HIDClassDevice.h" 3 4
  _Bool 
# 163 "./LUFA/Drivers/USB/Class/Device/HIDClassDevice.h"
       CALLBACK_HID_Device_CreateHIDReport(USB_ClassInfo_HID_Device_t* const HIDInterfaceInfo,
                                            uint8_t* const ReportID,
                                            const uint8_t ReportType,
                                            void* ReportData,
                                            uint16_t* const ReportSize) __attribute__ ((nonnull (1)))
                                            __attribute__ ((nonnull (2))) __attribute__ ((nonnull (4))) __attribute__ ((nonnull (5)));
# 181 "./LUFA/Drivers/USB/Class/Device/HIDClassDevice.h"
   void CALLBACK_HID_Device_ProcessHIDReport(USB_ClassInfo_HID_Device_t* const HIDInterfaceInfo,
                                             const uint8_t ReportID,
                                             const uint8_t ReportType,
                                             const void* ReportData,
                                             const uint16_t ReportSize) __attribute__ ((nonnull (1))) __attribute__ ((nonnull (4)));
# 195 "./LUFA/Drivers/USB/Class/Device/HIDClassDevice.h"
   static inline void HID_Device_MillisecondElapsed(USB_ClassInfo_HID_Device_t* const HIDInterfaceInfo) __attribute__ ((always_inline)) __attribute__ ((nonnull (1)));
   static inline void HID_Device_MillisecondElapsed(USB_ClassInfo_HID_Device_t* const HIDInterfaceInfo)
   {
    if (HIDInterfaceInfo->State.IdleMSRemaining)
      HIDInterfaceInfo->State.IdleMSRemaining--;
   }
# 73 "./LUFA/Drivers/USB/Class/HIDClass.h" 2
# 416 "./LUFA/Drivers/USB/USB.h" 2
# 1 "./LUFA/Drivers/USB/Class/MassStorageClass.h" 1
# 71 "./LUFA/Drivers/USB/Class/MassStorageClass.h"
# 1 "./LUFA/Drivers/USB/Class/Device/MassStorageClassDevice.h" 1
# 58 "./LUFA/Drivers/USB/Class/Device/MassStorageClassDevice.h"
# 1 "./LUFA/Drivers/USB/Class/Device/../Common/MassStorageClassCommon.h" 1
# 224 "./LUFA/Drivers/USB/Class/Device/../Common/MassStorageClassCommon.h"
  enum MS_Descriptor_ClassSubclassProtocol_t
  {
   MS_CSCP_MassStorageClass = 0x08,


   MS_CSCP_SCSITransparentSubclass = 0x06,



   MS_CSCP_BulkOnlyTransportProtocol = 0x50,


  };


  enum MS_ClassRequests_t
  {
   MS_REQ_GetMaxLUN = 0xFE,


   MS_REQ_MassStorageReset = 0xFF,


  };


  enum MS_CommandStatusCodes_t
  {
   MS_SCSI_COMMAND_Pass = 0,
   MS_SCSI_COMMAND_Fail = 1,


   MS_SCSI_COMMAND_PhaseError = 2,
  };
# 266 "./LUFA/Drivers/USB/Class/Device/../Common/MassStorageClassCommon.h"
  typedef struct
  {
   uint32_t Signature;
   uint32_t Tag;
   uint32_t DataTransferLength;
   uint8_t Flags;
   uint8_t LUN;
   uint8_t SCSICommandLength;
   uint8_t SCSICommandData[16];
  } __attribute__ ((packed)) MS_CommandBlockWrapper_t;







  typedef struct
  {
   uint32_t Signature;
   uint32_t Tag;
   uint32_t DataTransferResidue;
   uint8_t Status;
  } __attribute__ ((packed)) MS_CommandStatusWrapper_t;
# 298 "./LUFA/Drivers/USB/Class/Device/../Common/MassStorageClassCommon.h"
  typedef struct
  {
   uint8_t ResponseCode;

   uint8_t SegmentNumber;

   unsigned SenseKey : 4;
   unsigned Reserved : 1;
   unsigned ILI : 1;
   unsigned EOM : 1;
   unsigned FileMark : 1;

   uint8_t Information[4];
   uint8_t AdditionalLength;
   uint8_t CmdSpecificInformation[4];
   uint8_t AdditionalSenseCode;
   uint8_t AdditionalSenseQualifier;
   uint8_t FieldReplaceableUnitCode;
   uint8_t SenseKeySpecific[3];
  } __attribute__ ((packed)) SCSI_Request_Sense_Response_t;
# 327 "./LUFA/Drivers/USB/Class/Device/../Common/MassStorageClassCommon.h"
  typedef struct
  {
   unsigned DeviceType : 5;
   unsigned PeripheralQualifier : 3;

   unsigned Reserved : 7;
   unsigned Removable : 1;

   uint8_t Version;

   unsigned ResponseDataFormat : 4;
   unsigned Reserved2 : 1;
   unsigned NormACA : 1;
   unsigned TrmTsk : 1;
   unsigned AERC : 1;

   uint8_t AdditionalLength;
   uint8_t Reserved3[2];

   unsigned SoftReset : 1;
   unsigned CmdQue : 1;
   unsigned Reserved4 : 1;
   unsigned Linked : 1;
   unsigned Sync : 1;
   unsigned WideBus16Bit : 1;
   unsigned WideBus32Bit : 1;
   unsigned RelAddr : 1;

   uint8_t VendorID[8];
   uint8_t ProductID[16];
   uint8_t RevisionID[4];
  } __attribute__ ((packed)) SCSI_Inquiry_Response_t;
# 59 "./LUFA/Drivers/USB/Class/Device/MassStorageClassDevice.h" 2
# 78 "./LUFA/Drivers/USB/Class/Device/MassStorageClassDevice.h"
   typedef struct
   {
    struct
    {
     uint8_t InterfaceNumber;

     USB_Endpoint_Table_t DataINEndpoint;
     USB_Endpoint_Table_t DataOUTEndpoint;

     uint8_t TotalLUNs;
    } Config;


    struct
    {
     MS_CommandBlockWrapper_t CommandBlock;


     MS_CommandStatusWrapper_t CommandStatus;


     volatile 
# 99 "./LUFA/Drivers/USB/Class/Device/MassStorageClassDevice.h" 3 4
             _Bool 
# 99 "./LUFA/Drivers/USB/Class/Device/MassStorageClassDevice.h"
                  IsMassStoreReset;


    } State;


   } USB_ClassInfo_MS_Device_t;
# 116 "./LUFA/Drivers/USB/Class/Device/MassStorageClassDevice.h"
   
# 116 "./LUFA/Drivers/USB/Class/Device/MassStorageClassDevice.h" 3 4
  _Bool 
# 116 "./LUFA/Drivers/USB/Class/Device/MassStorageClassDevice.h"
       MS_Device_ConfigureEndpoints(USB_ClassInfo_MS_Device_t* const MSInterfaceInfo) __attribute__ ((nonnull (1)));






   void MS_Device_ProcessControlRequest(USB_ClassInfo_MS_Device_t* const MSInterfaceInfo) __attribute__ ((nonnull (1)));






   void MS_Device_USBTask(USB_ClassInfo_MS_Device_t* const MSInterfaceInfo) __attribute__ ((nonnull (1)));
# 141 "./LUFA/Drivers/USB/Class/Device/MassStorageClassDevice.h"
   
# 141 "./LUFA/Drivers/USB/Class/Device/MassStorageClassDevice.h" 3 4
  _Bool 
# 141 "./LUFA/Drivers/USB/Class/Device/MassStorageClassDevice.h"
       CALLBACK_MS_Device_SCSICommandReceived(USB_ClassInfo_MS_Device_t* const MSInterfaceInfo) __attribute__ ((nonnull (1)));
# 72 "./LUFA/Drivers/USB/Class/MassStorageClass.h" 2
# 417 "./LUFA/Drivers/USB/USB.h" 2
# 1 "./LUFA/Drivers/USB/Class/MIDIClass.h" 1
# 74 "./LUFA/Drivers/USB/Class/MIDIClass.h"
# 1 "./LUFA/Drivers/USB/Class/Device/MIDIClassDevice.h" 1
# 58 "./LUFA/Drivers/USB/Class/Device/MIDIClassDevice.h"
# 1 "./LUFA/Drivers/USB/Class/Device/../Common/MIDIClassCommon.h" 1
# 58 "./LUFA/Drivers/USB/Class/Device/../Common/MIDIClassCommon.h"
# 1 "./LUFA/Drivers/USB/Class/Device/../Common/AudioClassCommon.h" 1
# 59 "./LUFA/Drivers/USB/Class/Device/../Common/MIDIClassCommon.h" 2
# 142 "./LUFA/Drivers/USB/Class/Device/../Common/MIDIClassCommon.h"
  enum MIDI_JackTypes_t
  {
   MIDI_JACKTYPE_Embedded = 0x01,
   MIDI_JACKTYPE_External = 0x02,
  };
# 159 "./LUFA/Drivers/USB/Class/Device/../Common/MIDIClassCommon.h"
  typedef struct
  {
   USB_Descriptor_Header_t Header;
   uint8_t Subtype;

   uint16_t AudioSpecification;




   uint16_t TotalLength;
  } __attribute__ ((packed)) USB_MIDI_Descriptor_AudioInterface_AS_t;
# 183 "./LUFA/Drivers/USB/Class/Device/../Common/MIDIClassCommon.h"
  typedef struct
  {
   uint8_t bLength;
   uint8_t bDescriptorType;



   uint8_t bDescriptorSubtype;

   uint16_t bcdMSC;



   uint16_t wTotalLength;
  } __attribute__ ((packed)) USB_MIDI_StdDescriptor_AudioInterface_AS_t;
# 208 "./LUFA/Drivers/USB/Class/Device/../Common/MIDIClassCommon.h"
  typedef struct
  {
   USB_Descriptor_Header_t Header;
   uint8_t Subtype;

   uint8_t JackType;
   uint8_t JackID;

   uint8_t JackStrIndex;
  } __attribute__ ((packed)) USB_MIDI_Descriptor_InputJack_t;
# 229 "./LUFA/Drivers/USB/Class/Device/../Common/MIDIClassCommon.h"
  typedef struct
  {
   uint8_t bLength;
   uint8_t bDescriptorType;



   uint8_t bDescriptorSubtype;

   uint8_t bJackType;
   uint8_t bJackID;

   uint8_t iJack;
  } __attribute__ ((packed)) USB_MIDI_StdDescriptor_InputJack_t;
# 253 "./LUFA/Drivers/USB/Class/Device/../Common/MIDIClassCommon.h"
  typedef struct
  {
   USB_Descriptor_Header_t Header;
   uint8_t Subtype;

   uint8_t JackType;
   uint8_t JackID;

   uint8_t NumberOfPins;
   uint8_t SourceJackID[1];
   uint8_t SourcePinID[1];

   uint8_t JackStrIndex;
  } __attribute__ ((packed)) USB_MIDI_Descriptor_OutputJack_t;
# 278 "./LUFA/Drivers/USB/Class/Device/../Common/MIDIClassCommon.h"
  typedef struct
  {
   uint8_t bLength;
   uint8_t bDescriptorType;



   uint8_t bDescriptorSubtype;

   uint8_t bJackType;
   uint8_t bJackID;

   uint8_t bNrInputPins;
   uint8_t baSourceID[1];
   uint8_t baSourcePin[1];

   uint8_t iJack;
  } __attribute__ ((packed)) USB_MIDI_StdDescriptor_OutputJack_t;
# 307 "./LUFA/Drivers/USB/Class/Device/../Common/MIDIClassCommon.h"
  typedef struct
  {
   USB_Descriptor_Header_t Header;
   uint8_t Subtype;

   uint8_t TotalEmbeddedJacks;
   uint8_t AssociatedJackID[1];
  } __attribute__ ((packed)) USB_MIDI_Descriptor_Jack_Endpoint_t;
# 327 "./LUFA/Drivers/USB/Class/Device/../Common/MIDIClassCommon.h"
  typedef struct
  {
   uint8_t bLength;
   uint8_t bDescriptorType;



   uint8_t bDescriptorSubtype;

   uint8_t bNumEmbMIDIJack;
   uint8_t bAssocJackID[1];
  } __attribute__ ((packed)) USB_MIDI_StdDescriptor_Jack_Endpoint_t;







  typedef struct
  {
   uint8_t Event;

   uint8_t Data1;
   uint8_t Data2;
   uint8_t Data3;
  } __attribute__ ((packed)) MIDI_EventPacket_t;
# 59 "./LUFA/Drivers/USB/Class/Device/MIDIClassDevice.h" 2
# 78 "./LUFA/Drivers/USB/Class/Device/MIDIClassDevice.h"
   typedef struct
   {
    struct
    {
     uint8_t StreamingInterfaceNumber;

     USB_Endpoint_Table_t DataINEndpoint;
     USB_Endpoint_Table_t DataOUTEndpoint;
    } Config;



    struct
    {
     uint8_t RESERVED;
    } State;


   } USB_ClassInfo_MIDI_Device_t;
# 107 "./LUFA/Drivers/USB/Class/Device/MIDIClassDevice.h"
   
# 107 "./LUFA/Drivers/USB/Class/Device/MIDIClassDevice.h" 3 4
  _Bool 
# 107 "./LUFA/Drivers/USB/Class/Device/MIDIClassDevice.h"
       MIDI_Device_ConfigureEndpoints(USB_ClassInfo_MIDI_Device_t* const MIDIInterfaceInfo) __attribute__ ((nonnull (1)));






   void MIDI_Device_USBTask(USB_ClassInfo_MIDI_Device_t* const MIDIInterfaceInfo) __attribute__ ((nonnull (1)));
# 128 "./LUFA/Drivers/USB/Class/Device/MIDIClassDevice.h"
   uint8_t MIDI_Device_SendEventPacket(USB_ClassInfo_MIDI_Device_t* const MIDIInterfaceInfo,
                                       const MIDI_EventPacket_t* const Event) __attribute__ ((nonnull (1))) __attribute__ ((nonnull (2)));
# 139 "./LUFA/Drivers/USB/Class/Device/MIDIClassDevice.h"
   uint8_t MIDI_Device_Flush(USB_ClassInfo_MIDI_Device_t* const MIDIInterfaceInfo) __attribute__ ((nonnull (1)));
# 152 "./LUFA/Drivers/USB/Class/Device/MIDIClassDevice.h"
   
# 152 "./LUFA/Drivers/USB/Class/Device/MIDIClassDevice.h" 3 4
  _Bool 
# 152 "./LUFA/Drivers/USB/Class/Device/MIDIClassDevice.h"
       MIDI_Device_ReceiveEventPacket(USB_ClassInfo_MIDI_Device_t* const MIDIInterfaceInfo,
                                       MIDI_EventPacket_t* const Event) __attribute__ ((nonnull (1))) __attribute__ ((nonnull (2)));







   static inline void MIDI_Device_ProcessControlRequest(USB_ClassInfo_MIDI_Device_t* const MIDIInterfaceInfo) __attribute__ ((nonnull (1)));
   static inline void MIDI_Device_ProcessControlRequest(USB_ClassInfo_MIDI_Device_t* const MIDIInterfaceInfo)
   {
    (void)MIDIInterfaceInfo;
   }
# 75 "./LUFA/Drivers/USB/Class/MIDIClass.h" 2
# 418 "./LUFA/Drivers/USB/USB.h" 2
# 1 "./LUFA/Drivers/USB/Class/PrinterClass.h" 1
# 73 "./LUFA/Drivers/USB/Class/PrinterClass.h"
# 1 "./LUFA/Drivers/USB/Class/Device/PrinterClassDevice.h" 1
# 58 "./LUFA/Drivers/USB/Class/Device/PrinterClassDevice.h"
# 1 "./LUFA/Drivers/USB/Class/Device/../Common/PrinterClassCommon.h" 1
# 83 "./LUFA/Drivers/USB/Class/Device/../Common/PrinterClassCommon.h"
  enum PRNT_Descriptor_ClassSubclassProtocol_t
  {
   PRNT_CSCP_PrinterClass = 0x07,


   PRNT_CSCP_PrinterSubclass = 0x01,


   PRNT_CSCP_BidirectionalProtocol = 0x02,


  };


  enum PRNT_ClassRequests_t
  {
   PRNT_REQ_GetDeviceID = 0x00,



   PRNT_REQ_GetPortStatus = 0x01,


   PRNT_REQ_SoftReset = 0x02,


  };
# 59 "./LUFA/Drivers/USB/Class/Device/PrinterClassDevice.h" 2
# 80 "./LUFA/Drivers/USB/Class/Device/PrinterClassDevice.h"
   typedef struct
   {
    struct
    {
     uint8_t InterfaceNumber;

     USB_Endpoint_Table_t DataINEndpoint;
     USB_Endpoint_Table_t DataOUTEndpoint;

     char* IEEE1284String;


    } Config;


    struct
    {
     uint8_t PortStatus;



     volatile 
# 101 "./LUFA/Drivers/USB/Class/Device/PrinterClassDevice.h" 3 4
             _Bool 
# 101 "./LUFA/Drivers/USB/Class/Device/PrinterClassDevice.h"
                  IsPrinterReset;


    } State;


   } USB_ClassInfo_PRNT_Device_t;
# 118 "./LUFA/Drivers/USB/Class/Device/PrinterClassDevice.h"
   
# 118 "./LUFA/Drivers/USB/Class/Device/PrinterClassDevice.h" 3 4
  _Bool 
# 118 "./LUFA/Drivers/USB/Class/Device/PrinterClassDevice.h"
       PRNT_Device_ConfigureEndpoints(USB_ClassInfo_PRNT_Device_t* const PRNTInterfaceInfo) __attribute__ ((nonnull (1)));






   void PRNT_Device_ProcessControlRequest(USB_ClassInfo_PRNT_Device_t* const PRNTInterfaceInfo) __attribute__ ((nonnull (1)));






   void PRNT_Device_USBTask(USB_ClassInfo_PRNT_Device_t* const PRNTInterfaceInfo) __attribute__ ((nonnull (1)));







   void EVENT_PRNT_Device_SoftReset(USB_ClassInfo_PRNT_Device_t* const PRNTInterfaceInfo) __attribute__ ((nonnull (1)));
# 156 "./LUFA/Drivers/USB/Class/Device/PrinterClassDevice.h"
   uint8_t PRNT_Device_SendData(USB_ClassInfo_PRNT_Device_t* const PRNTInterfaceInfo,
                                const void* const Buffer,
                                const uint16_t Length) __attribute__ ((nonnull (1))) __attribute__ ((nonnull (2)));
# 173 "./LUFA/Drivers/USB/Class/Device/PrinterClassDevice.h"
   uint8_t PRNT_Device_SendString(USB_ClassInfo_PRNT_Device_t* const PRNTInterfaceInfo,
                                  const char* const String) __attribute__ ((nonnull (1))) __attribute__ ((nonnull (2)));
# 189 "./LUFA/Drivers/USB/Class/Device/PrinterClassDevice.h"
   uint8_t PRNT_Device_SendByte(USB_ClassInfo_PRNT_Device_t* const PRNTInterfaceInfo,
                                const uint8_t Data) __attribute__ ((nonnull (1)));
# 204 "./LUFA/Drivers/USB/Class/Device/PrinterClassDevice.h"
   uint16_t PRNT_Device_BytesReceived(USB_ClassInfo_PRNT_Device_t* const PRNTInterfaceInfo) __attribute__ ((nonnull (1)));
# 218 "./LUFA/Drivers/USB/Class/Device/PrinterClassDevice.h"
   int16_t PRNT_Device_ReceiveByte(USB_ClassInfo_PRNT_Device_t* const PRNTInterfaceInfo) __attribute__ ((nonnull (1)));
# 229 "./LUFA/Drivers/USB/Class/Device/PrinterClassDevice.h"
   uint8_t PRNT_Device_Flush(USB_ClassInfo_PRNT_Device_t* const PRNTInterfaceInfo) __attribute__ ((nonnull (1)));
# 250 "./LUFA/Drivers/USB/Class/Device/PrinterClassDevice.h"
   void PRNT_Device_CreateStream(USB_ClassInfo_PRNT_Device_t* const PRNTInterfaceInfo,
                                 FILE* const Stream) __attribute__ ((nonnull (1))) __attribute__ ((nonnull (2)));
# 261 "./LUFA/Drivers/USB/Class/Device/PrinterClassDevice.h"
   void PRNT_Device_CreateBlockingStream(USB_ClassInfo_PRNT_Device_t* const PRNTInterfaceInfo,
                                         FILE* const Stream) __attribute__ ((nonnull (1))) __attribute__ ((nonnull (2)));
# 74 "./LUFA/Drivers/USB/Class/PrinterClass.h" 2
# 419 "./LUFA/Drivers/USB/USB.h" 2
# 1 "./LUFA/Drivers/USB/Class/RNDISClass.h" 1
# 71 "./LUFA/Drivers/USB/Class/RNDISClass.h"
# 1 "./LUFA/Drivers/USB/Class/Device/RNDISClassDevice.h" 1
# 58 "./LUFA/Drivers/USB/Class/Device/RNDISClassDevice.h"
# 1 "./LUFA/Drivers/USB/Class/Device/../Common/RNDISClassCommon.h" 1
# 58 "./LUFA/Drivers/USB/Class/Device/../Common/RNDISClassCommon.h"
# 1 "./LUFA/Drivers/USB/Class/Device/../Common/CDCClassCommon.h" 1
# 59 "./LUFA/Drivers/USB/Class/Device/../Common/RNDISClassCommon.h" 2
# 180 "./LUFA/Drivers/USB/Class/Device/../Common/RNDISClassCommon.h"
  enum RNDIS_ClassRequests_t
  {
   RNDIS_REQ_SendEncapsulatedCommand = 0x00,
   RNDIS_REQ_GetEncapsulatedResponse = 0x01,
  };


  enum RNDIS_States_t
  {
   RNDIS_Uninitialized = 0,
   RNDIS_Initialized = 1,
   RNDIS_Data_Initialized = 2,
  };


  enum RNDIS_ClassNotifications_t
  {
   RNDIS_NOTIF_ResponseAvailable = 0x01,
  };


  enum NDIS_Hardware_Status_t
  {
   NDIS_HardwareStatus_Ready,
   NDIS_HardwareStatus_Initializing,
   NDIS_HardwareStatus_Reset,
   NDIS_HardwareStatus_Closing,
   NDIS_HardwareStatus_NotReady
  };






  typedef struct
  {
   uint8_t Octets[6];
  } __attribute__ ((packed)) MAC_Address_t;







  typedef struct
  {
   uint32_t MessageType;
   uint32_t MessageLength;
  } __attribute__ ((packed)) RNDIS_Message_Header_t;







  typedef struct
  {
   uint32_t MessageType;
   uint32_t MessageLength;
   uint32_t DataOffset;
   uint32_t DataLength;
   uint32_t OOBDataOffset;
   uint32_t OOBDataLength;
   uint32_t NumOOBDataElements;
   uint32_t PerPacketInfoOffset;
   uint32_t PerPacketInfoLength;
   uint32_t VcHandle;
   uint32_t Reserved;
  } __attribute__ ((packed)) RNDIS_Packet_Message_t;







  typedef struct
  {
   uint32_t MessageType;
   uint32_t MessageLength;
   uint32_t RequestId;

   uint32_t MajorVersion;
   uint32_t MinorVersion;
   uint32_t MaxTransferSize;
  } __attribute__ ((packed)) RNDIS_Initialize_Message_t;







  typedef struct
  {
   uint32_t MessageType;
   uint32_t MessageLength;
   uint32_t RequestId;
   uint32_t Status;

   uint32_t MajorVersion;
   uint32_t MinorVersion;
   uint32_t DeviceFlags;
   uint32_t Medium;
   uint32_t MaxPacketsPerTransfer;
   uint32_t MaxTransferSize;
   uint32_t PacketAlignmentFactor;
   uint32_t AFListOffset;
   uint32_t AFListSize;
  } __attribute__ ((packed)) RNDIS_Initialize_Complete_t;







  typedef struct
  {
   uint32_t MessageType;
   uint32_t MessageLength;
   uint32_t RequestId;
  } __attribute__ ((packed)) RNDIS_KeepAlive_Message_t;







  typedef struct
  {
   uint32_t MessageType;
   uint32_t MessageLength;
   uint32_t RequestId;
   uint32_t Status;
  } __attribute__ ((packed)) RNDIS_KeepAlive_Complete_t;







  typedef struct
  {
   uint32_t MessageType;
   uint32_t MessageLength;
   uint32_t Status;

   uint32_t AddressingReset;
  } __attribute__ ((packed)) RNDIS_Reset_Complete_t;







  typedef struct
  {
   uint32_t MessageType;
   uint32_t MessageLength;
   uint32_t RequestId;

   uint32_t Oid;
   uint32_t InformationBufferLength;
   uint32_t InformationBufferOffset;
   uint32_t DeviceVcHandle;
  } __attribute__ ((packed)) RNDIS_Set_Message_t;







  typedef struct
  {
   uint32_t MessageType;
   uint32_t MessageLength;
   uint32_t RequestId;
   uint32_t Status;
  } __attribute__ ((packed)) RNDIS_Set_Complete_t;







  typedef struct
  {
   uint32_t MessageType;
   uint32_t MessageLength;
   uint32_t RequestId;

   uint32_t Oid;
   uint32_t InformationBufferLength;
   uint32_t InformationBufferOffset;
   uint32_t DeviceVcHandle;
  } __attribute__ ((packed)) RNDIS_Query_Message_t;







  typedef struct
  {
   uint32_t MessageType;
   uint32_t MessageLength;
   uint32_t RequestId;
   uint32_t Status;

   uint32_t InformationBufferLength;
   uint32_t InformationBufferOffset;
  } __attribute__ ((packed)) RNDIS_Query_Complete_t;
# 59 "./LUFA/Drivers/USB/Class/Device/RNDISClassDevice.h" 2
# 78 "./LUFA/Drivers/USB/Class/Device/RNDISClassDevice.h"
   typedef struct
   {
    struct
    {
     uint8_t ControlInterfaceNumber;

     USB_Endpoint_Table_t DataINEndpoint;
     USB_Endpoint_Table_t DataOUTEndpoint;
     USB_Endpoint_Table_t NotificationEndpoint;

     char* AdapterVendorDescription;
     MAC_Address_t AdapterMACAddress;

     uint8_t* MessageBuffer;

     uint16_t MessageBufferLength;
    } Config;


    struct
    {
     
# 99 "./LUFA/Drivers/USB/Class/Device/RNDISClassDevice.h" 3 4
    _Bool 
# 99 "./LUFA/Drivers/USB/Class/Device/RNDISClassDevice.h"
             ResponseReady;
     uint8_t CurrRNDISState;
     uint32_t CurrPacketFilter;
    } State;


   } USB_ClassInfo_RNDIS_Device_t;
# 116 "./LUFA/Drivers/USB/Class/Device/RNDISClassDevice.h"
   
# 116 "./LUFA/Drivers/USB/Class/Device/RNDISClassDevice.h" 3 4
  _Bool 
# 116 "./LUFA/Drivers/USB/Class/Device/RNDISClassDevice.h"
       RNDIS_Device_ConfigureEndpoints(USB_ClassInfo_RNDIS_Device_t* const RNDISInterfaceInfo) __attribute__ ((nonnull (1)));






   void RNDIS_Device_ProcessControlRequest(USB_ClassInfo_RNDIS_Device_t* const RNDISInterfaceInfo) __attribute__ ((nonnull (1)));






   void RNDIS_Device_USBTask(USB_ClassInfo_RNDIS_Device_t* const RNDISInterfaceInfo) __attribute__ ((nonnull (1)));
# 141 "./LUFA/Drivers/USB/Class/Device/RNDISClassDevice.h"
   
# 141 "./LUFA/Drivers/USB/Class/Device/RNDISClassDevice.h" 3 4
  _Bool 
# 141 "./LUFA/Drivers/USB/Class/Device/RNDISClassDevice.h"
       RNDIS_Device_IsPacketReceived(USB_ClassInfo_RNDIS_Device_t* const RNDISInterfaceInfo) __attribute__ ((nonnull (1)));
# 155 "./LUFA/Drivers/USB/Class/Device/RNDISClassDevice.h"
   uint8_t RNDIS_Device_ReadPacket(USB_ClassInfo_RNDIS_Device_t* const RNDISInterfaceInfo,
           void* Buffer,
           uint16_t* const PacketLength) __attribute__ ((nonnull (1)));
# 170 "./LUFA/Drivers/USB/Class/Device/RNDISClassDevice.h"
   uint8_t RNDIS_Device_SendPacket(USB_ClassInfo_RNDIS_Device_t* const RNDISInterfaceInfo,
           void* Buffer,
           const uint16_t PacketLength) __attribute__ ((nonnull (1)));
# 72 "./LUFA/Drivers/USB/Class/RNDISClass.h" 2
# 420 "./LUFA/Drivers/USB/USB.h" 2
# 1 "./LUFA/Drivers/USB/Class/StillImageClass.h" 1
# 421 "./LUFA/Drivers/USB/USB.h" 2
# 43 "Keyboard/Descriptors.h" 2






  typedef struct
  {
   USB_Descriptor_Configuration_Header_t Config;


   USB_Descriptor_Interface_t HID_Interface;
   USB_HID_Descriptor_HID_t HID_KeyboardHID;
   USB_Descriptor_Endpoint_t HID_ReportINEndpoint;
  } USB_Descriptor_Configuration_t;





  enum InterfaceDescriptors_t
  {
   INTERFACE_ID_Keyboard = 0,
  };





  enum StringDescriptors_t
  {
   STRING_ID_Language = 0,
   STRING_ID_Manufacturer = 1,
   STRING_ID_Product = 2,
  };
# 87 "Keyboard/Descriptors.h"
  uint16_t CALLBACK_USB_GetDescriptor(const uint16_t wValue,
                                      const uint16_t wIndex,
                                      const void** const DescriptorAddress)
                                      __attribute__ ((warn_unused_result)) __attribute__ ((nonnull (3)));
# 48 "Keyboard/Keyboard.h" 2

# 1 "./LUFA/Drivers/Board/LEDs.h" 1
# 108 "./LUFA/Drivers/Board/LEDs.h"
# 1 "./LUFA/Drivers/Board/../../Common/Common.h" 1
# 109 "./LUFA/Drivers/Board/LEDs.h" 2
# 215 "./LUFA/Drivers/Board/LEDs.h"
# 1 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h" 1
# 11 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h"
static inline void LEDs_Init(void)
{

 
# 14 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h" 3
(*(volatile uint8_t *)((0x04) + 0x20)) 
# 14 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h"
     |= ((1 << 0) | (1 << 6));
 
# 15 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h" 3
(*(volatile uint8_t *)((0x0A) + 0x20)) 
# 15 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h"
     |= (1 << 5);


 
# 18 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h" 3
(*(volatile uint8_t *)((0x05) + 0x20)) 
# 18 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h"
      |= ((1 << 0) | (1 << 6));
 
# 19 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h" 3
(*(volatile uint8_t *)((0x0B) + 0x20)) 
# 19 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h"
      |= (1 << 5);
}

static inline void LEDs_Disable(void)
{

 
# 25 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h" 3
(*(volatile uint8_t *)((0x04) + 0x20)) 
# 25 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h"
     &= ~((1 << 0) | (1 << 6));
 
# 26 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h" 3
(*(volatile uint8_t *)((0x0A) + 0x20)) 
# 26 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h"
     &= ~(1 << 5);
 
# 27 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h" 3
(*(volatile uint8_t *)((0x05) + 0x20)) 
# 27 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h"
      &= ~((1 << 0) | (1 << 6));
 
# 28 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h" 3
(*(volatile uint8_t *)((0x0B) + 0x20)) 
# 28 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h"
      &= ~(1 << 5);
}

static inline void LEDs_TurnOnLEDs(const uint8_t LEDMask)
{

 
# 34 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h" 3
(*(volatile uint8_t *)((0x05) + 0x20)) 
# 34 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h"
      &= ~(LEDMask & ((1 << 0) | (1 << 6)));
 
# 35 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h" 3
(*(volatile uint8_t *)((0x0B) + 0x20)) 
# 35 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h"
      &= ~(LEDMask & (1 << 5));
}


static inline void LEDs_TurnOffLEDs(const uint8_t LEDMask)
{

 
# 42 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h" 3
(*(volatile uint8_t *)((0x05) + 0x20)) 
# 42 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h"
      |= (LEDMask & ((1 << 0) | (1 << 6)));
 
# 43 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h" 3
(*(volatile uint8_t *)((0x0B) + 0x20)) 
# 43 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h"
      |= (LEDMask & (1 << 5));
}

static inline void LEDs_SetAllLEDs(const uint8_t LEDMask)
{

 
# 49 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h" 3
(*(volatile uint8_t *)((0x05) + 0x20)) 
# 49 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h"
      = ((
# 49 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h" 3
          (*(volatile uint8_t *)((0x05) + 0x20)) 
# 49 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h"
                | ((1 << 0) | (1 << 6))) & ~LEDMask);
 
# 50 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h" 3
(*(volatile uint8_t *)((0x0B) + 0x20)) 
# 50 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h"
      = ((
# 50 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h" 3
          (*(volatile uint8_t *)((0x0B) + 0x20)) 
# 50 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h"
                | (1 << 5)) & ~LEDMask);
}

static inline void LEDs_ToggleLEDs(const uint8_t LEDMask)
{

 
# 56 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h" 3
(*(volatile uint8_t *)((0x03) + 0x20)) 
# 56 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h"
     = LEDMask & ((1 << 0) | (1 << 6));
 
# 57 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h" 3
(*(volatile uint8_t *)((0x09) + 0x20)) 
# 57 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h"
     = LEDMask & (1 << 5);
}

static inline uint8_t LEDs_GetLEDs(void)
{

 return ((
# 63 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h" 3
         (*(volatile uint8_t *)((0x05) + 0x20)) 
# 63 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h"
               & ((1 << 0) | (1 << 6))) | (
# 63 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h" 3
                                (*(volatile uint8_t *)((0x0B) + 0x20)) 
# 63 "./LUFA/Drivers/Board/AVR8/PROMICRO/LEDs.h"
                                      & (1 << 5)));
}
# 216 "./LUFA/Drivers/Board/LEDs.h" 2
# 50 "Keyboard/Keyboard.h" 2
# 1 "./LUFA/Drivers/Board/Buttons.h" 1
# 166 "./LUFA/Drivers/Board/Buttons.h"
# 1 "./LUFA/Drivers/Board/AVR8/PROMICRO/Buttons.h" 1




static inline void Buttons_Init(void)
{
 
# 7 "./LUFA/Drivers/Board/AVR8/PROMICRO/Buttons.h" 3
(*(volatile uint8_t *)((0x0A) + 0x20)) 
# 7 "./LUFA/Drivers/Board/AVR8/PROMICRO/Buttons.h"
     &= ~(1 << 1);
 
# 8 "./LUFA/Drivers/Board/AVR8/PROMICRO/Buttons.h" 3
(*(volatile uint8_t *)((0x0B) + 0x20)) 
# 8 "./LUFA/Drivers/Board/AVR8/PROMICRO/Buttons.h"
      |= (1 << 1);
}

static inline void Buttons_Disable(void)
{
 
# 13 "./LUFA/Drivers/Board/AVR8/PROMICRO/Buttons.h" 3
(*(volatile uint8_t *)((0x0A) + 0x20)) 
# 13 "./LUFA/Drivers/Board/AVR8/PROMICRO/Buttons.h"
     &= ~(1 << 1);
 
# 14 "./LUFA/Drivers/Board/AVR8/PROMICRO/Buttons.h" 3
(*(volatile uint8_t *)((0x0B) + 0x20)) 
# 14 "./LUFA/Drivers/Board/AVR8/PROMICRO/Buttons.h"
      &= ~(1 << 1);
}

static inline uint8_t Buttons_GetStatus(void)
{
 return ((
# 19 "./LUFA/Drivers/Board/AVR8/PROMICRO/Buttons.h" 3
         (*(volatile uint8_t *)((0x09) + 0x20)) 
# 19 "./LUFA/Drivers/Board/AVR8/PROMICRO/Buttons.h"
              & ((1 << 1))) ^ ((1 << 1)));
}
# 167 "./LUFA/Drivers/Board/Buttons.h" 2
# 51 "Keyboard/Keyboard.h" 2

# 1 "./LUFA/Platform/Platform.h" 1
# 69 "./LUFA/Platform/Platform.h"
# 1 "./LUFA/Platform/../Common/Common.h" 1
# 70 "./LUFA/Platform/Platform.h" 2
# 53 "Keyboard/Keyboard.h" 2
# 68 "Keyboard/Keyboard.h"
  void SetupHardware(void);

  void EVENT_USB_Device_Connect(void);
  void EVENT_USB_Device_Disconnect(void);
  void EVENT_USB_Device_ConfigurationChanged(void);
  void EVENT_USB_Device_ControlRequest(void);
  void EVENT_USB_Device_StartOfFrame(void);

  
# 76 "Keyboard/Keyboard.h" 3 4
 _Bool 
# 76 "Keyboard/Keyboard.h"
      CALLBACK_HID_Device_CreateHIDReport(USB_ClassInfo_HID_Device_t* const HIDInterfaceInfo,
                                           uint8_t* const ReportID,
                                           const uint8_t ReportType,
                                           void* ReportData,
                                           uint16_t* const ReportSize);
  void CALLBACK_HID_Device_ProcessHIDReport(USB_ClassInfo_HID_Device_t* const HIDInterfaceInfo,
                                            const uint8_t ReportID,
                                            const uint8_t ReportType,
                                            const void* ReportData,
                                            const uint16_t ReportSize);
# 38 "Keyboard/Keyboard.c" 2


static uint8_t PrevKeyboardHIDReportBuffer[sizeof(USB_KeyboardReport_Data_t)];





USB_ClassInfo_HID_Device_t Keyboard_HID_Interface =
 {
  .Config =
   {
    .InterfaceNumber = INTERFACE_ID_Keyboard,
    .ReportINEndpoint =
     {
      .Address = (0x80 | 1),
      .Size = 8,
      .Banks = 1,
     },
    .PrevReportINBuffer = PrevKeyboardHIDReportBuffer,
    .PrevReportINBufferSize = sizeof(PrevKeyboardHIDReportBuffer),
   },
 };





int main(void)
{
 SetupHardware();

 LEDs_SetAllLEDs(((1 << 0)));
 GlobalInterruptEnable();

 for (;;)
 {
  HID_Device_USBTask(&Keyboard_HID_Interface);
  USB_USBTask();
 }
}


void SetupHardware()
{

 
# 84 "Keyboard/Keyboard.c" 3
(*(volatile uint8_t *)((0x34) + 0x20)) 
# 84 "Keyboard/Keyboard.c"
      &= ~(1 << 
# 84 "Keyboard/Keyboard.c" 3
                3
# 84 "Keyboard/Keyboard.c"
                    );
 wdt_disable();


 clock_prescale_set(clock_div_1);


 LEDs_Init();
 Buttons_Init();
 USB_Init();
}


void EVENT_USB_Device_Connect(void)
{
 LEDs_SetAllLEDs(((1 << 5)));
}


void EVENT_USB_Device_Disconnect(void)
{
 LEDs_SetAllLEDs(((1 << 0)));
}


void EVENT_USB_Device_ConfigurationChanged(void)
{
 
# 111 "Keyboard/Keyboard.c" 3 4
_Bool 
# 111 "Keyboard/Keyboard.c"
     ConfigSuccess = 
# 111 "Keyboard/Keyboard.c" 3 4
                     1
# 111 "Keyboard/Keyboard.c"
                         ;

 ConfigSuccess &= HID_Device_ConfigureEndpoints(&Keyboard_HID_Interface);

 USB_Device_EnableSOFEvents();

 LEDs_SetAllLEDs(ConfigSuccess ? ((1 << 6)) : ((1 << 0) | (1 << 5)));
}


void EVENT_USB_Device_ControlRequest(void)
{
 HID_Device_ProcessControlRequest(&Keyboard_HID_Interface);
}


void EVENT_USB_Device_StartOfFrame(void)
{
 HID_Device_MillisecondElapsed(&Keyboard_HID_Interface);
}
# 142 "Keyboard/Keyboard.c"

# 142 "Keyboard/Keyboard.c" 3 4
_Bool 
# 142 "Keyboard/Keyboard.c"
    CALLBACK_HID_Device_CreateHIDReport(USB_ClassInfo_HID_Device_t* const HIDInterfaceInfo,
                                         uint8_t* const ReportID,
                                         const uint8_t ReportType,
                                         void* ReportData,
                                         uint16_t* const ReportSize)
{
 USB_KeyboardReport_Data_t* KeyboardReport = (USB_KeyboardReport_Data_t*)ReportData;

 uint8_t ButtonStatus_LCL = Buttons_GetStatus();

 uint8_t UsedKeyCodes = 0;

 if (ButtonStatus_LCL & (1 << 1))
   KeyboardReport->KeyCode[UsedKeyCodes++] = 0x09;

 if (UsedKeyCodes)
   KeyboardReport->Modifier = (1 << 1);

 *ReportSize = sizeof(USB_KeyboardReport_Data_t);
 return 
# 161 "Keyboard/Keyboard.c" 3 4
       0
# 161 "Keyboard/Keyboard.c"
            ;
}
# 172 "Keyboard/Keyboard.c"
void CALLBACK_HID_Device_ProcessHIDReport(USB_ClassInfo_HID_Device_t* const HIDInterfaceInfo,
                                          const uint8_t ReportID,
                                          const uint8_t ReportType,
                                          const void* ReportData,
                                          const uint16_t ReportSize)
{
 uint8_t LEDMask = 0;
 uint8_t* LEDReport = (uint8_t*)ReportData;

 if (*LEDReport & (1 << 0))
   LEDMask |= (1 << 0);

 if (*LEDReport & (1 << 1))
   LEDMask |= (1 << 5);

 if (*LEDReport & (1 << 2))
   LEDMask |= (1 << 6);

 LEDs_SetAllLEDs(LEDMask);
}
