Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1999713D5BC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 09:12:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eVwwJEvmZqXKKKSf+UCcY3zo9GX9kNvG9Y3NJ9kBdYw=; b=Z6kk0AaoePfMky
	+dKAUaiIyXu+FIpDwbEA/kGmIOfttjggJTEZ9c8QdXilQtTePUbZsYHpzhrzD1Mz09Y5xFNhYX+a3
	6cUoz60UA4+AiLBwxWXzYtNHF3rh61hmx4FSzgqFO7uq1b/zli0CoeVXHnXOjtlqHFxJpQGY4qBqS
	ItRlYFNHGVq1tQtzntQWsBnp8g45VYhNrcP36Bb4elgBznQJvJ8zzq6ysnG94XqRSr6rdWNtUIQtx
	K1O/5o3pPLQPk5f7t02nG4BwEdMHrrD13/3DCo8WjLaKWxeNM8jSP6tfPvUJEQ1o34zo4YKepd1T6
	HsmLRtXGBoOKU1KTEwoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is0Fu-0008V9-4W; Thu, 16 Jan 2020 08:11:54 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is0Fi-0008UO-Ag
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 08:11:46 +0000
Received: by mail-qk1-x744.google.com with SMTP id x129so18300424qke.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 00:11:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9cA48MMBOQHJK5hX776mf3AO5GIfMTcVwVO3yILYkD4=;
 b=WlNJ9Xb/S9a5BAWXcvs0dpBmfy7BdqUi4JiGrKOjCP9jkV41PZGf4Oi6rMyovRAZvq
 qvm1D8vqSaykV6fVwumTf73gL2+b8waCnVNM3ASdw/LAhw4F0KoTN07ph2IcByH/3E8H
 UcllVHlxqSdBefT6FlUxk1jX0bTBW+UJ+WPDkR7iOCgcRO0/IQkonFN08sVOtCtwdfQX
 deY4E8aJg7FMM5KN66vloDMdXE+eTfEbKL52PqxhWGtNbLq4xWDhFc0BcjdlhfzwVgeZ
 oSOCj72vvIdKy5cXrLCADDC9Q6YksW2FaijoC2BNciG/jG8tZRK0cF9lgkYxlKRkmD31
 pOfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9cA48MMBOQHJK5hX776mf3AO5GIfMTcVwVO3yILYkD4=;
 b=pddIg9GXq1h7fZMo7M0Mjo6IGu4A5fE//8UEiyU6KDLcBQcw27tmh7dBPPUQT8qJut
 QpdUwc3b0ZZUP98Y9NlTn88aN7Vbd40NXOmCeEVhLWAQgO7gyRKsbpZSx+gho3qao5sQ
 xjF/aGjeLRHovrtYCE0esF9b1XTaRVNKjO78bakGaTLp1l5bwQ6o//Sk34EPltwnAbrf
 Cuu326h5zxRXI0X83FbddPAzHj7YlqtyD1wlRaIFqGOLqu0gBAQFxOgxqBZCum+RMnwi
 ue9TU05Pms4vivglnt0sVeD5f82k8f1xbfE0LzEm5p8nqEFTS6vsztqJvOxzfwjYnUY6
 lnRw==
X-Gm-Message-State: APjAAAXccN0SLD5eexrCPiBHasZ32nHCwpQt/ovAtUjvR+ApC3GyXvdJ
 rntldtZnq1r4KKuMM32QTVkEZgGBUN0IN8j+CDpTDg==
X-Google-Smtp-Source: APXvYqzVTfqbrEFl2VCT1YoGAAhJykCUYmbc+BSSTk1zPOulLBb7DF8oGpEgr6uyxJitYGXfhnXfmNAJYqNCbjTfpJo=
X-Received: by 2002:a37:e312:: with SMTP id y18mr32222475qki.250.1579162300813; 
 Thu, 16 Jan 2020 00:11:40 -0800 (PST)
MIME-Version: 1.0
References: <20200116062625.32692-1-dja@axtens.net>
 <20200116062625.32692-3-dja@axtens.net>
In-Reply-To: <20200116062625.32692-3-dja@axtens.net>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Thu, 16 Jan 2020 09:11:28 +0100
Message-ID: <CACT4Y+ZmzN5z4kZsV_6zBX0SKyLzNKmNNa3Bixnr4SXLaWSbhw@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] string.h: fix incompatibility between
 FORTIFY_SOURCE and KASAN
To: Daniel Axtens <dja@axtens.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_001142_400317_294CBF7B 
X-CRM114-Status: GOOD (  42.46  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 linux-s390 <linux-s390@vger.kernel.org>, linux-xtensa@linux-xtensa.org,
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

On Thu, Jan 16, 2020 at 7:26 AM Daniel Axtens <dja@axtens.net> wrote:
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
>
> I'm pretty sure this is not wrong, but not as expansive it should be:
>
>  * we shouldn't use __builtin_memcpy etc in files where we don't have
>    instrumentation - it could devolve into a function call to memcpy,
>    which will be instrumented. Rather, we should use __memcpy which
>    by convention is not instrumented.
>
>  * we also shouldn't be using __builtin_memcpy when we have a KASAN
>    instrumented file, because it could be replaced with inline asm
>    that will not be instrumented.
>
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
>
> Use __underlying_foo to distinguish from __real_foo: __real_foo always
> refers to the kernel's implementation of foo, __underlying_foo could be
> either the kernel implementation or the __builtin_foo implementation.
>
> This is sometimes enough to make the memcmp test succeed with
> FORTIFY_SOURCE enabled. It is at least enough to get the function call
> into the module. One more fix is needed to make it reliable: see the next
> patch.
>
> Cc: Daniel Micay <danielmicay@gmail.com>
> Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
> Cc: Alexander Potapenko <glider@google.com>
> Cc: Dmitry Vyukov <dvyukov@google.com>
> Fixes: 6974f0c4555e ("include/linux/string.h: add the option of fortified string.h functions")
> Signed-off-by: Daniel Axtens <dja@axtens.net>

Reviewed-by: Dmitry Vyukov <dvyukov@google.com>

> ---
>
> v2: add #undefs, do not drop arch code: Dmitry pointed out that we _do_ want
>     to disable fortify in non-sanitised files because of how __builtin_memcpy
>     might end up as a call to regular memcpy rather than __memcpy.
>
> Dmitry, this might cause a few new syzkaller splats - I first picked it up
> building from a syskaller config. Or it might not, it just depends what gets
> replaced with an inline sequence of instructions.

If you mean new true bugs, I don't think it's changing anything on top
of the hundreds of known existing open bugs:
https://syzkaller.appspot.com/upstream#open
If anything, I would say it's good to surface more true bugs.


> checkpatch complains about some over-long lines, happy to change the format
> if anyone has better ideas for how to lay it out.
> ---
>  include/linux/string.h | 60 +++++++++++++++++++++++++++++++++---------
>  1 file changed, 48 insertions(+), 12 deletions(-)
>
> diff --git a/include/linux/string.h b/include/linux/string.h
> index 3b8e8b12dd37..18d3f7a4b2b9 100644
> --- a/include/linux/string.h
> +++ b/include/linux/string.h
> @@ -317,6 +317,31 @@ void __read_overflow3(void) __compiletime_error("detected read beyond size of ob
>  void __write_overflow(void) __compiletime_error("detected write beyond size of object passed as 1st parameter");
>
>  #if !defined(__NO_FORTIFY) && defined(__OPTIMIZE__) && defined(CONFIG_FORTIFY_SOURCE)
> +
> +#ifdef CONFIG_KASAN
> +extern void *__underlying_memchr(const void *p, int c, __kernel_size_t size) __RENAME(memchr);
> +extern int __underlying_memcmp(const void *p, const void *q, __kernel_size_t size) __RENAME(memcmp);
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
> @@ -505,11 +530,22 @@ __FORTIFY_INLINE char *strcpy(char *p, const char *q)
>         size_t p_size = __builtin_object_size(p, 0);
>         size_t q_size = __builtin_object_size(q, 0);
>         if (p_size == (size_t)-1 && q_size == (size_t)-1)
> -               return __builtin_strcpy(p, q);
> +               return __underlying_strcpy(p, q);
>         memcpy(p, q, strlen(q) + 1);
>         return p;
>  }
>
> +/* Don't use these outside the FORITFY_SOURCE implementation */
> +#undef __underlying_memchr
> +#undef __underlying_memcmp
> +#undef __underlying_memcpy
> +#undef __underlying_memmove
> +#undef __underlying_memset
> +#undef __underlying_strcat
> +#undef __underlying_strcpy
> +#undef __underlying_strlen
> +#undef __underlying_strncat
> +#undef __underlying_strncpy
>  #endif
>
>  /**
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
