Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 383E813C6BB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 15:57:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k7S2dHXzfUV0GwTtG8Bf2Z9Q0u6r6Nz07HFr+cdJkf0=; b=HSEGZP9rSC3J6V
	1s7TZAMGaRLZI7M6I+BeP2I2F+HruQM5aBbqxvpUX422rkEjMz/7cVPCtjr5Yf2kUpVhEB7uxs2mP
	g6fbo4UcbWQUVYI4+mlAWSBJsJws8ld3echinzxIKuV0ggrFPIzY8OMOu99eBjd88AaVQWp5f4uKD
	iz7KCcMxrPgABIpWIFSKoo/Fxi4ekMLqr/zfqKItwH085ljEiD3/7mCR0S9WmX0XeG4a0fzqRFnmK
	aF63C9+JHO6y3jvUczfDPa/xwmKEzwttcivRePbViofIEHUP2Kklz9u0nsndvk9TVbQnainqrXI3Q
	aDcSy8U4xEWIxhUIV5pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irk6h-0004Ox-Vo; Wed, 15 Jan 2020 14:57:20 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irk6T-0004JF-FH
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 14:57:11 +0000
Received: by mail-qt1-x841.google.com with SMTP id d5so15990972qto.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 06:57:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nCNJXe7yG41T3Zx4qiLeK6GwZVm1UZIhPymZyFVUSUg=;
 b=MZYzePp+G9uMZZtCkJs3BN18L8Uy/SlwPp0BPIpi4RBU6sN1Vitf1SinfGeC5StsWT
 Z+DgDe/gtQRwx+noRqxt2Eo16a7eTjKCysp0SJdnuIkJQGc30PN4IbvgV9Swav791+6g
 hlmR/q5g7ooX+VC/KKb/auNwuqRO0/2A8oBBXL3Dl5oHqV0HME2247CPNlxEBNGwRym/
 bWG1QqZ52X1FdXp1OwrDNokbty1u+yf9IlKvOWNfASAznqgtveydrA/L2ihMX3H/vSQN
 opr1TJbT5KY1Ou3sjuIYmjkgV+XhFmQEn7CEzo5emyuuqAX4rVPV0VewJ1dzX3W6Kutt
 ZpYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nCNJXe7yG41T3Zx4qiLeK6GwZVm1UZIhPymZyFVUSUg=;
 b=twZTLcfjT37ZPm+jTUbawQhcX0iFUObdstLPtpj5Thp22AX0bj3EgVeSRNuBnm0su0
 OLH5lBI7GTs0cdDCV1IdUJ9La8AG/eci1ZfQNNB7EeyK11qJ8QV3f6MDWMdjZpl9/vQ5
 NXCKA9YGOyWia0CVzArGWs7r3YD/y7efM7C0gM9zE1NZemrkN4iFdzueJ4mzLsKq8lm4
 ERHo/HHa1vQYiDGqovv8c9j/IvENlQMlNN6ywBK6gju98EHqiBNHDzr4287cw44dkoDO
 wbUAxMmK9Ir73vOlgPRWIDbXQq87Pt2F4RKLD0Fcn7MgveL5Q1GDxpfpc2zuct54UUol
 w7dA==
X-Gm-Message-State: APjAAAWbqTwouxoYpURnLwjWp0JN03fG/LBM+YnaF2tg/YRj2+5/eOc2
 QgCAqsOWkBX8+kORtivZsNCSPfXmeuKW7NDloNrgDg==
X-Google-Smtp-Source: APXvYqxQTWzYvkElabm8IyCFVQzPYUT+BDucF6OEPohh4HYG/YcvsVzOs4frNe1iogvOv72FHumMy5az1cSGHe9J00c=
X-Received: by 2002:ac8:24c1:: with SMTP id t1mr3865061qtt.257.1579100222741; 
 Wed, 15 Jan 2020 06:57:02 -0800 (PST)
MIME-Version: 1.0
References: <20200115063710.15796-1-dja@axtens.net>
 <20200115063710.15796-3-dja@axtens.net>
In-Reply-To: <20200115063710.15796-3-dja@axtens.net>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, 15 Jan 2020 15:56:51 +0100
Message-ID: <CACT4Y+bxh1OmV64Z-EZrYk-otW9q_fxiHnvrE_VMYj-=YAk2Bg@mail.gmail.com>
Subject: Re: [PATCH 2/2] string.h: fix incompatibility between FORTIFY_SOURCE
 and KASAN
To: Daniel Axtens <dja@axtens.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_065705_570889_C805D48E 
X-CRM114-Status: GOOD (  43.28  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-s390 <linux-s390@vger.kernel.org>, linux-xtensa@linux-xtensa.org,
 the arch/x86 maintainers <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>, Linux-MM <linux-mm@kvack.org>,
 Daniel Micay <danielmicay@gmail.com>, Alexander Potapenko <glider@google.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 7:37 AM Daniel Axtens <dja@axtens.net> wrote:
>
> The memcmp KASAN self-test fails on a kernel with both KASAN and
> FORTIFY_SOURCE.
>
> When FORTIFY_SOURCE is on, a number of functions are replaced with
> fortified versions, which attempt to check the sizes of the operands.
> However, these functions often directly invoke __builtin_foo() once they
> have performed the fortify check. Using __builtins may bypass KASAN
> checks if the compiler decides to inline it's own implementation as
> sequence of instructions, rather than emit a function call that goes out
> to a KASAN-instrumented implementation.
>
> Why is only memcmp affected?
> ============================
>
> Of the string and string-like functions that kasan_test tests, only memcmp
> is replaced by an inline sequence of instructions in my testing on x86 with
> gcc version 9.2.1 20191008 (Ubuntu 9.2.1-9ubuntu2).
>
> I believe this is due to compiler heuristics. For example, if I annotate
> kmalloc calls with the alloc_size annotation (and disable some fortify
> compile-time checking!), the compiler will replace every memset except the
> one in kmalloc_uaf_memset with inline instructions. (I have some WIP
> patches to add this annotation.)
>
> Does this affect other functions in string.h?
> =============================================
>
> Yes. Anything that uses __builtin_* rather than __real_* could be
> affected. This looks like:
>
>  - strncpy
>  - strcat
>  - strlen
>  - strlcpy maybe, under some circumstances?
>  - strncat under some circumstances
>  - memset
>  - memcpy
>  - memmove
>  - memcmp (as noted)
>  - memchr
>  - strcpy
>
> Whether a function call is emitted always depends on the compiler. Most
> bugs should get caught by FORTIFY_SOURCE, but the missed memcmp test shows
> that this is not always the case.
>
> Isn't FORTIFY_SOURCE disabled with KASAN?
> ========================================-
>
> The string headers on all arches supporting KASAN disable fortify with
> kasan, but only when address sanitisation is _also_ disabled. For example
> from x86:
>
>  #if defined(CONFIG_KASAN) && !defined(__SANITIZE_ADDRESS__)
>  /*
>   * For files that are not instrumented (e.g. mm/slub.c) we
>   * should use not instrumented version of mem* functions.
>   */
>  #define memcpy(dst, src, len) __memcpy(dst, src, len)
>  #define memmove(dst, src, len) __memmove(dst, src, len)
>  #define memset(s, c, n) __memset(s, c, n)
>
>  #ifndef __NO_FORTIFY
>  #define __NO_FORTIFY /* FORTIFY_SOURCE uses __builtin_memcpy, etc. */
>  #endif
>
>  #endif
>
> This comes from commit 6974f0c4555e ("include/linux/string.h: add the
> option of fortified string.h functions"), and doesn't work when KASAN is
> enabled and the file is supposed to be sanitised - as with test_kasan.c

Hi Daniel,

Thanks for addressing this. And special kudos for description detail level! :)

Phew, this layering of checking tools is a bit messy...

> I'm pretty sure this is backwards: we shouldn't be using __builtin_memcpy
> when we have a KASAN instrumented file, but we can use __builtin_* - and in
> many cases all fortification - in files where we don't have
> instrumentation.

I think if we use __builtin_* in a non-instrumented file, the compiler
can emit a call to normal mem* function which will be intercepted by
kasan and we will get instrumentation in a file which should not be
instrumented. Moreover this behavior will depend on optimization level
and compiler internals.
But as far as I see this does not affect any of the following and the
code change.



> What is correct behaviour?
> ==========================
>
> Firstly, there is some overlap between fortification and KASAN: both
> provide some level of _runtime_ checking. Only fortify provides
> compile-time checking.
>
> KASAN and fortify can pick up different things at runtime:
>
>  - Some fortify functions, notably the string functions, could easily be
>    modified to consider sub-object sizes (e.g. members within a struct),
>    and I have some WIP patches to do this. KASAN cannot detect these
>    because it cannot insert poision between members of a struct.
>
>  - KASAN can detect many over-reads/over-writes when the sizes of both
>    operands are unknown, which fortify cannot.
>
> So there are a couple of options:
>
>  1) Flip the test: disable fortify in santised files and enable it in
>     unsanitised files. This at least stops us missing KASAN checking, but
>     we lose the fortify checking.
>
>  2) Make the fortify code always call out to real versions. Do this only
>     for KASAN, for fear of losing the inlining opportunities we get from
>     __builtin_*.
>
> (We can't use kasan_check_{read,write}: because the fortify functions are
> _extern inline_, you can't include _static_ inline functions without a
> compiler warning. kasan_check_{read,write} are static inline so we can't
> use them even when they would otherwise be suitable.)
>
> Take approach 2 and call out to real versions when KASAN is enabled.

I support option 2.
For KASAN build we don't care about inlining/performance that much,
getting it to work reliably and with reasonable complexity is more
important.
And it's better to leave prod build as it is now (proving that any
change is harmless is impossible).



> Use __underlying_foo to distinguish from __real_foo: __real_foo always
> refers to the kernel's implementation of foo, __underlying_foo could be
> either the kernel implementation or the __builtin_foo implementation.
>
> Remove all the attempted disablement code in arch string headers.
>
> This makes all the tests succeed with FORTIFY_SOURCE enabled.
>
> Cc: Daniel Micay <danielmicay@gmail.com>
> Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
> Cc: Alexander Potapenko <glider@google.com>
> Cc: Dmitry Vyukov <dvyukov@google.com>
> Fixes: 6974f0c4555e ("include/linux/string.h: add the option of fortified string.h functions")
> Signed-off-by: Daniel Axtens <dja@axtens.net>
>
> ---
>
> Dmitry, this might cause a few new syzkaller splats - I first picked it up
> building from a syskaller config. Or it might not, it just depends what gets
> replaced with an inline sequence of instructions.
>
> checkpatch complains about some over-long lines, happy to change the format
> if anyone has better ideas for how to lay it out.
> ---
>  arch/arm64/include/asm/string.h   |  4 ---
>  arch/powerpc/include/asm/string.h |  4 ---
>  arch/s390/include/asm/string.h    |  4 ---
>  arch/x86/include/asm/string_64.h  |  4 ---
>  arch/xtensa/include/asm/string.h  |  3 --
>  include/linux/string.h            | 49 +++++++++++++++++++++++--------
>  6 files changed, 37 insertions(+), 31 deletions(-)
>
> diff --git a/arch/arm64/include/asm/string.h b/arch/arm64/include/asm/string.h
> index b31e8e87a0db..eafb2c4771fc 100644
> --- a/arch/arm64/include/asm/string.h
> +++ b/arch/arm64/include/asm/string.h
> @@ -59,10 +59,6 @@ void memcpy_flushcache(void *dst, const void *src, size_t cnt);
>  #define memmove(dst, src, len) __memmove(dst, src, len)
>  #define memset(s, c, n) __memset(s, c, n)
>
> -#ifndef __NO_FORTIFY
> -#define __NO_FORTIFY /* FORTIFY_SOURCE uses __builtin_memcpy, etc. */
> -#endif
> -
>  #endif
>
>  #endif
> diff --git a/arch/powerpc/include/asm/string.h b/arch/powerpc/include/asm/string.h
> index b72692702f35..952c5934596b 100644
> --- a/arch/powerpc/include/asm/string.h
> +++ b/arch/powerpc/include/asm/string.h
> @@ -43,10 +43,6 @@ void *__memmove(void *to, const void *from, __kernel_size_t n);
>  #define memmove(dst, src, len) __memmove(dst, src, len)
>  #define memset(s, c, n) __memset(s, c, n)
>
> -#ifndef __NO_FORTIFY
> -#define __NO_FORTIFY /* FORTIFY_SOURCE uses __builtin_memcpy, etc. */
> -#endif
> -
>  #endif
>
>  #ifdef CONFIG_PPC64
> diff --git a/arch/s390/include/asm/string.h b/arch/s390/include/asm/string.h
> index 4c0690fc5167..e0b66d8c89a1 100644
> --- a/arch/s390/include/asm/string.h
> +++ b/arch/s390/include/asm/string.h
> @@ -75,10 +75,6 @@ extern void *__memmove(void *dest, const void *src, size_t n);
>
>  #define __no_sanitize_prefix_strfunc(x) __##x
>
> -#ifndef __NO_FORTIFY
> -#define __NO_FORTIFY /* FORTIFY_SOURCE uses __builtin_memcpy, etc. */
> -#endif
> -
>  #else
>  #define __no_sanitize_prefix_strfunc(x) x
>  #endif /* defined(CONFIG_KASAN) && !defined(__SANITIZE_ADDRESS__) */
> diff --git a/arch/x86/include/asm/string_64.h b/arch/x86/include/asm/string_64.h
> index 75314c3dbe47..ec63d11e1f04 100644
> --- a/arch/x86/include/asm/string_64.h
> +++ b/arch/x86/include/asm/string_64.h
> @@ -76,10 +76,6 @@ int strcmp(const char *cs, const char *ct);
>  #define memmove(dst, src, len) __memmove(dst, src, len)
>  #define memset(s, c, n) __memset(s, c, n)
>
> -#ifndef __NO_FORTIFY
> -#define __NO_FORTIFY /* FORTIFY_SOURCE uses __builtin_memcpy, etc. */
> -#endif
> -
>  #endif
>
>  #define __HAVE_ARCH_MEMCPY_MCSAFE 1
> diff --git a/arch/xtensa/include/asm/string.h b/arch/xtensa/include/asm/string.h
> index 89b51a0c752f..8cf04c5a33fb 100644
> --- a/arch/xtensa/include/asm/string.h
> +++ b/arch/xtensa/include/asm/string.h
> @@ -132,9 +132,6 @@ extern void *__memmove(void *__dest, __const__ void *__src, size_t __n);
>  #define memmove(dst, src, len) __memmove(dst, src, len)
>  #define memset(s, c, n) __memset(s, c, n)
>
> -#ifndef __NO_FORTIFY
> -#define __NO_FORTIFY /* FORTIFY_SOURCE uses __builtin_memcpy, etc. */
> -#endif
>  #endif
>
>  #endif /* _XTENSA_STRING_H */
> diff --git a/include/linux/string.h b/include/linux/string.h
> index 3b8e8b12dd37..4364c106355e 100644
> --- a/include/linux/string.h
> +++ b/include/linux/string.h
> @@ -317,6 +317,31 @@ void __read_overflow3(void) __compiletime_error("detected read beyond size of ob
>  void __write_overflow(void) __compiletime_error("detected write beyond size of object passed as 1st parameter");
>
>  #if !defined(__NO_FORTIFY) && defined(__OPTIMIZE__) && defined(CONFIG_FORTIFY_SOURCE)
> +
> +#ifdef CONFIG_KASAN
> +extern void *__underlying_memchr(const void *p, int c, __kernel_size_t size) __RENAME(memchr);


arch headers do:

#if defined(CONFIG_KASAN) && !defined(__SANITIZE_ADDRESS__)
#define memcpy(dst, src, len) __memcpy(dst, src, len)
...

to disable instrumentation. Does this still work with this change?
Previously they disabled fortify. What happens now? Will define of
memcpy to __memcpy also affect __RENAME(memcpy), so that
__underlying_memcpy will be an alias to __memcpy?



> +extern int __underlying_memcmp(const void *p, const void *q, __kernel_size_t size) __RENAME(memcmp);

All of these macros are leaking from the header file. Tomorrow we will
discover __underlying_memcpy uses somewhere in the wild, which will
not making understanding what actually happens simpler :)
Perhaps undef all of them at the bottom?



> +extern void *__underlying_memcpy(void *p, const void *q, __kernel_size_t size) __RENAME(memcpy);
> +extern void *__underlying_memmove(void *p, const void *q, __kernel_size_t size) __RENAME(memmove);
> +extern void *__underlying_memset(void *p, int c, __kernel_size_t size) __RENAME(memset);
> +extern char *__underlying_strcat(char *p, const char *q) __RENAME(strcat);
> +extern char *__underlying_strcpy(char *p, const char *q) __RENAME(strcpy);
> +extern __kernel_size_t __underlying_strlen(const char *p) __RENAME(strlen);
> +extern char *__underlying_strncat(char *p, const char *q, __kernel_size_t count) __RENAME(strncat);
> +extern char *__underlying_strncpy(char *p, const char *q, __kernel_size_t size) __RENAME(strncpy);
> +#else
> +#define __underlying_memchr    __builtin_memchr
> +#define __underlying_memcmp    __builtin_memcmp
> +#define __underlying_memcpy    __builtin_memcpy
> +#define __underlying_memmove   __builtin_memmove
> +#define __underlying_memset    __builtin_memset
> +#define __underlying_strcat    __builtin_strcat
> +#define __underlying_strcpy    __builtin_strcpy
> +#define __underlying_strlen    __builtin_strlen
> +#define __underlying_strncat   __builtin_strncat
> +#define __underlying_strncpy   __builtin_strncpy
> +#endif
> +
>  __FORTIFY_INLINE char *strncpy(char *p, const char *q, __kernel_size_t size)
>  {
>         size_t p_size = __builtin_object_size(p, 0);
> @@ -324,14 +349,14 @@ __FORTIFY_INLINE char *strncpy(char *p, const char *q, __kernel_size_t size)
>                 __write_overflow();
>         if (p_size < size)
>                 fortify_panic(__func__);
> -       return __builtin_strncpy(p, q, size);
> +       return __underlying_strncpy(p, q, size);
>  }
>
>  __FORTIFY_INLINE char *strcat(char *p, const char *q)
>  {
>         size_t p_size = __builtin_object_size(p, 0);
>         if (p_size == (size_t)-1)
> -               return __builtin_strcat(p, q);
> +               return __underlying_strcat(p, q);
>         if (strlcat(p, q, p_size) >= p_size)
>                 fortify_panic(__func__);
>         return p;
> @@ -345,7 +370,7 @@ __FORTIFY_INLINE __kernel_size_t strlen(const char *p)
>         /* Work around gcc excess stack consumption issue */
>         if (p_size == (size_t)-1 ||
>             (__builtin_constant_p(p[p_size - 1]) && p[p_size - 1] == '\0'))
> -               return __builtin_strlen(p);
> +               return __underlying_strlen(p);
>         ret = strnlen(p, p_size);
>         if (p_size <= ret)
>                 fortify_panic(__func__);
> @@ -378,7 +403,7 @@ __FORTIFY_INLINE size_t strlcpy(char *p, const char *q, size_t size)
>                         __write_overflow();
>                 if (len >= p_size)
>                         fortify_panic(__func__);
> -               __builtin_memcpy(p, q, len);
> +               __underlying_memcpy(p, q, len);
>                 p[len] = '\0';
>         }
>         return ret;
> @@ -391,12 +416,12 @@ __FORTIFY_INLINE char *strncat(char *p, const char *q, __kernel_size_t count)
>         size_t p_size = __builtin_object_size(p, 0);
>         size_t q_size = __builtin_object_size(q, 0);
>         if (p_size == (size_t)-1 && q_size == (size_t)-1)
> -               return __builtin_strncat(p, q, count);
> +               return __underlying_strncat(p, q, count);
>         p_len = strlen(p);
>         copy_len = strnlen(q, count);
>         if (p_size < p_len + copy_len + 1)
>                 fortify_panic(__func__);
> -       __builtin_memcpy(p + p_len, q, copy_len);
> +       __underlying_memcpy(p + p_len, q, copy_len);
>         p[p_len + copy_len] = '\0';
>         return p;
>  }
> @@ -408,7 +433,7 @@ __FORTIFY_INLINE void *memset(void *p, int c, __kernel_size_t size)
>                 __write_overflow();
>         if (p_size < size)
>                 fortify_panic(__func__);
> -       return __builtin_memset(p, c, size);
> +       return __underlying_memset(p, c, size);
>  }
>
>  __FORTIFY_INLINE void *memcpy(void *p, const void *q, __kernel_size_t size)
> @@ -423,7 +448,7 @@ __FORTIFY_INLINE void *memcpy(void *p, const void *q, __kernel_size_t size)
>         }
>         if (p_size < size || q_size < size)
>                 fortify_panic(__func__);
> -       return __builtin_memcpy(p, q, size);
> +       return __underlying_memcpy(p, q, size);
>  }
>
>  __FORTIFY_INLINE void *memmove(void *p, const void *q, __kernel_size_t size)
> @@ -438,7 +463,7 @@ __FORTIFY_INLINE void *memmove(void *p, const void *q, __kernel_size_t size)
>         }
>         if (p_size < size || q_size < size)
>                 fortify_panic(__func__);
> -       return __builtin_memmove(p, q, size);
> +       return __underlying_memmove(p, q, size);
>  }
>
>  extern void *__real_memscan(void *, int, __kernel_size_t) __RENAME(memscan);
> @@ -464,7 +489,7 @@ __FORTIFY_INLINE int memcmp(const void *p, const void *q, __kernel_size_t size)
>         }
>         if (p_size < size || q_size < size)
>                 fortify_panic(__func__);
> -       return __builtin_memcmp(p, q, size);
> +       return __underlying_memcmp(p, q, size);
>  }
>
>  __FORTIFY_INLINE void *memchr(const void *p, int c, __kernel_size_t size)
> @@ -474,7 +499,7 @@ __FORTIFY_INLINE void *memchr(const void *p, int c, __kernel_size_t size)
>                 __read_overflow();
>         if (p_size < size)
>                 fortify_panic(__func__);
> -       return __builtin_memchr(p, c, size);
> +       return __underlying_memchr(p, c, size);
>  }
>
>  void *__real_memchr_inv(const void *s, int c, size_t n) __RENAME(memchr_inv);
> @@ -505,7 +530,7 @@ __FORTIFY_INLINE char *strcpy(char *p, const char *q)
>         size_t p_size = __builtin_object_size(p, 0);
>         size_t q_size = __builtin_object_size(q, 0);
>         if (p_size == (size_t)-1 && q_size == (size_t)-1)
> -               return __builtin_strcpy(p, q);
> +               return __underlying_strcpy(p, q);
>         memcpy(p, q, strlen(q) + 1);
>         return p;
>  }
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
