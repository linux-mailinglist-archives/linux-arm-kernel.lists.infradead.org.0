Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A4E13D354
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 05:59:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UpXVcIm8DibzVkMwan0nvACPruksPemzJbrcYQokdIk=; b=qUEECUMkXCF0Of
	RX3o7UvTQhjNLY2bvj2rQSw7N0+IKZFXJZY1r25ClmA5DndE+l5ErFqiDlTSuBbucvQEUtL6I/Hb/
	CUxV/n1A8TSaYvIdsNxbJ72kgGwtj2dTuXFlBjG6lMFb2ncBXfObmgfkpzFlDtkOfs8e3CnCre82o
	wc7FF0jDND3b9ZfybNBtD9Ctcgh7Y1ybLpAYowHxsdp6djRKjCkHsznzQvpMaxXinTh2/dsCxi3Vm
	Wby/iE7UFzWYn5Cs3lAe78zBab9yMCKfZXg9dXERfnUlqEaDUSsIOhLm3+q7IfWFLIoAmWiwF/IHT
	ntbchNML34G2ap/UGpDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irxFq-0008Q5-NE; Thu, 16 Jan 2020 04:59:38 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irxFh-0008P9-Sh
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 04:59:31 +0000
Received: by mail-pj1-x1043.google.com with SMTP id d5so948801pjz.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 20:59:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axtens.net; s=google;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=z53UVTG1ULBtuQ1LxJSMm2czmwa20G9F5OXvojD1fg4=;
 b=EqouT2wdXqN1P+58/nsi+jjWzQLgcj9AN6PZTr19+cMUQN8vJOX2b6/2cytgshraVC
 MCw+W4Jx5RyzzuqKK1jSYSd7s5eMNO7LSeFi3Ls2ELmvP1wPt8gPodExGcnRr3ZhwNL4
 Z1Vjo+jqVuv+tsA5Zc9mTWjAzFkl6HAQYpp58=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=z53UVTG1ULBtuQ1LxJSMm2czmwa20G9F5OXvojD1fg4=;
 b=p1TY8/Ntd+3NVNICCMV6dJwVGPRS050G6ZFPdas9xBBOkTuwhlGFndX9eTCcIHuNrj
 AbkmtyB9WYu+QQ1ezkj2zk6syFg3n8LO21ZJ6GyvM/hmHO2U/Heaqgh4C4FULnD2dlPe
 nLnacLleZv0+02avC5yR+elAty8/pAOf3HY0G/0/LHtGHs4gvKaru/tpeUVkTLqwj7sn
 HikvJwKJnHOjXi5W5QEcxyo8yadDWwZxOan9D032R4ZSJELJ2MmAXupb+taAmWZSOEi6
 Pg/aQq4y59jONmiuBmvg/RQAF8NwkM4IT9pk2ITXe654LEwNx4/vUlxKPSZeM196A52d
 ZrMw==
X-Gm-Message-State: APjAAAXG1r0H4Q6S9Wo6i5oKunRD3bMgbYgm8iypnDn3K6SacXp37c59
 FSPI2fdPkNQ58jy6/P1ZX2CDNw==
X-Google-Smtp-Source: APXvYqwgktfuhUsaY0HteVcfjC3WijSpm6UzLF4FmlDIvzRuKy0dAkwLDNlttgNukSCAUan9c5j+sg==
X-Received: by 2002:a17:90a:238b:: with SMTP id
 g11mr4528703pje.128.1579150766876; 
 Wed, 15 Jan 2020 20:59:26 -0800 (PST)
Received: from localhost
 (2001-44b8-1113-6700-097c-7eed-afd4-cd15.static.ipv6.internode.on.net.
 [2001:44b8:1113:6700:97c:7eed:afd4:cd15])
 by smtp.gmail.com with ESMTPSA id i9sm24055664pfk.24.2020.01.15.20.59.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 20:59:26 -0800 (PST)
From: Daniel Axtens <dja@axtens.net>
To: Dmitry Vyukov <dvyukov@google.com>
Subject: Re: [PATCH 2/2] string.h: fix incompatibility between FORTIFY_SOURCE
 and KASAN
In-Reply-To: <CACT4Y+bxh1OmV64Z-EZrYk-otW9q_fxiHnvrE_VMYj-=YAk2Bg@mail.gmail.com>
References: <20200115063710.15796-1-dja@axtens.net>
 <20200115063710.15796-3-dja@axtens.net>
 <CACT4Y+bxh1OmV64Z-EZrYk-otW9q_fxiHnvrE_VMYj-=YAk2Bg@mail.gmail.com>
Date: Thu, 16 Jan 2020 15:59:22 +1100
Message-ID: <8736cgkndh.fsf@dja-thinkpad.axtens.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_205929_939879_4EE8DE16 
X-CRM114-Status: GOOD (  26.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Dmitry Vyukov <dvyukov@google.com> writes:

> On Wed, Jan 15, 2020 at 7:37 AM Daniel Axtens <dja@axtens.net> wrote:
>>
>> The memcmp KASAN self-test fails on a kernel with both KASAN and
>> FORTIFY_SOURCE.
>>
>> When FORTIFY_SOURCE is on, a number of functions are replaced with
>> fortified versions, which attempt to check the sizes of the operands.
>> However, these functions often directly invoke __builtin_foo() once they
>> have performed the fortify check. Using __builtins may bypass KASAN
>> checks if the compiler decides to inline it's own implementation as
>> sequence of instructions, rather than emit a function call that goes out
>> to a KASAN-instrumented implementation.
>>
>> Why is only memcmp affected?
>> ============================
>>
>> Of the string and string-like functions that kasan_test tests, only memcmp
>> is replaced by an inline sequence of instructions in my testing on x86 with
>> gcc version 9.2.1 20191008 (Ubuntu 9.2.1-9ubuntu2).
>>
>> I believe this is due to compiler heuristics. For example, if I annotate
>> kmalloc calls with the alloc_size annotation (and disable some fortify
>> compile-time checking!), the compiler will replace every memset except the
>> one in kmalloc_uaf_memset with inline instructions. (I have some WIP
>> patches to add this annotation.)
>>
>> Does this affect other functions in string.h?
>> =============================================
>>
>> Yes. Anything that uses __builtin_* rather than __real_* could be
>> affected. This looks like:
>>
>>  - strncpy
>>  - strcat
>>  - strlen
>>  - strlcpy maybe, under some circumstances?
>>  - strncat under some circumstances
>>  - memset
>>  - memcpy
>>  - memmove
>>  - memcmp (as noted)
>>  - memchr
>>  - strcpy
>>
>> Whether a function call is emitted always depends on the compiler. Most
>> bugs should get caught by FORTIFY_SOURCE, but the missed memcmp test shows
>> that this is not always the case.
>>
>> Isn't FORTIFY_SOURCE disabled with KASAN?
>> ========================================-
>>
>> The string headers on all arches supporting KASAN disable fortify with
>> kasan, but only when address sanitisation is _also_ disabled. For example
>> from x86:
>>
>>  #if defined(CONFIG_KASAN) && !defined(__SANITIZE_ADDRESS__)
>>  /*
>>   * For files that are not instrumented (e.g. mm/slub.c) we
>>   * should use not instrumented version of mem* functions.
>>   */
>>  #define memcpy(dst, src, len) __memcpy(dst, src, len)
>>  #define memmove(dst, src, len) __memmove(dst, src, len)
>>  #define memset(s, c, n) __memset(s, c, n)
>>
>>  #ifndef __NO_FORTIFY
>>  #define __NO_FORTIFY /* FORTIFY_SOURCE uses __builtin_memcpy, etc. */
>>  #endif
>>
>>  #endif
>>
>> This comes from commit 6974f0c4555e ("include/linux/string.h: add the
>> option of fortified string.h functions"), and doesn't work when KASAN is
>> enabled and the file is supposed to be sanitised - as with test_kasan.c
>
> Hi Daniel,
>
> Thanks for addressing this. And special kudos for description detail level! :)
>
> Phew, this layering of checking tools is a bit messy...
>
>> I'm pretty sure this is backwards: we shouldn't be using __builtin_memcpy
>> when we have a KASAN instrumented file, but we can use __builtin_* - and in
>> many cases all fortification - in files where we don't have
>> instrumentation.
>
> I think if we use __builtin_* in a non-instrumented file, the compiler
> can emit a call to normal mem* function which will be intercepted by
> kasan and we will get instrumentation in a file which should not be
> instrumented. Moreover this behavior will depend on optimization level
> and compiler internals.
> But as far as I see this does not affect any of the following and the
> code change.
>

mmm OK - you are right, when I consider this and your other point...

>>  #if !defined(__NO_FORTIFY) && defined(__OPTIMIZE__) && defined(CONFIG_FORTIFY_SOURCE)
>> +
>> +#ifdef CONFIG_KASAN
>> +extern void *__underlying_memchr(const void *p, int c, __kernel_size_t size) __RENAME(memchr);
>
>
> arch headers do:
>
> #if defined(CONFIG_KASAN) && !defined(__SANITIZE_ADDRESS__)
> #define memcpy(dst, src, len) __memcpy(dst, src, len)
> ...
>
> to disable instrumentation. Does this still work with this change?
> Previously they disabled fortify. What happens now? Will define of
> memcpy to __memcpy also affect __RENAME(memcpy), so that
> __underlying_memcpy will be an alias to __memcpy?

This is a good question. It's a really intricate set of interactions!!

Between these two things, I think I'm going to just drop the removal of
architecture changes, which means that fortify will continue to be
disabled for files that disable KASAN sanitisation. It's just too
complicated to reason through and satisfy myself that we're not going to
get weird bugs, and the payoff is really small.

>> +extern int __underlying_memcmp(const void *p, const void *q, __kernel_size_t size) __RENAME(memcmp);
>
> All of these macros are leaking from the header file. Tomorrow we will
> discover __underlying_memcpy uses somewhere in the wild, which will
> not making understanding what actually happens simpler :)
> Perhaps undef all of them at the bottom?

I can't stop the function definitions from leaking, but I can stop the
defines from leaking, which means we will catch any uses outside this
block in a FORITY_SOURCE && !KASAN build. I've fixed this for v2.

Regards,
Daniel

>> +extern void *__underlying_memcpy(void *p, const void *q, __kernel_size_t size) __RENAME(memcpy);
>> +extern void *__underlying_memmove(void *p, const void *q, __kernel_size_t size) __RENAME(memmove);
>> +extern void *__underlying_memset(void *p, int c, __kernel_size_t size) __RENAME(memset);
>> +extern char *__underlying_strcat(char *p, const char *q) __RENAME(strcat);
>> +extern char *__underlying_strcpy(char *p, const char *q) __RENAME(strcpy);
>> +extern __kernel_size_t __underlying_strlen(const char *p) __RENAME(strlen);
>> +extern char *__underlying_strncat(char *p, const char *q, __kernel_size_t count) __RENAME(strncat);
>> +extern char *__underlying_strncpy(char *p, const char *q, __kernel_size_t size) __RENAME(strncpy);
>> +#else
>> +#define __underlying_memchr    __builtin_memchr
>> +#define __underlying_memcmp    __builtin_memcmp
>> +#define __underlying_memcpy    __builtin_memcpy
>> +#define __underlying_memmove   __builtin_memmove
>> +#define __underlying_memset    __builtin_memset
>> +#define __underlying_strcat    __builtin_strcat
>> +#define __underlying_strcpy    __builtin_strcpy
>> +#define __underlying_strlen    __builtin_strlen
>> +#define __underlying_strncat   __builtin_strncat
>> +#define __underlying_strncpy   __builtin_strncpy
>> +#endif
>> +
>>  __FORTIFY_INLINE char *strncpy(char *p, const char *q, __kernel_size_t size)
>>  {
>>         size_t p_size = __builtin_object_size(p, 0);
>> @@ -324,14 +349,14 @@ __FORTIFY_INLINE char *strncpy(char *p, const char *q, __kernel_size_t size)
>>                 __write_overflow();
>>         if (p_size < size)
>>                 fortify_panic(__func__);
>> -       return __builtin_strncpy(p, q, size);
>> +       return __underlying_strncpy(p, q, size);
>>  }
>>
>>  __FORTIFY_INLINE char *strcat(char *p, const char *q)
>>  {
>>         size_t p_size = __builtin_object_size(p, 0);
>>         if (p_size == (size_t)-1)
>> -               return __builtin_strcat(p, q);
>> +               return __underlying_strcat(p, q);
>>         if (strlcat(p, q, p_size) >= p_size)
>>                 fortify_panic(__func__);
>>         return p;
>> @@ -345,7 +370,7 @@ __FORTIFY_INLINE __kernel_size_t strlen(const char *p)
>>         /* Work around gcc excess stack consumption issue */
>>         if (p_size == (size_t)-1 ||
>>             (__builtin_constant_p(p[p_size - 1]) && p[p_size - 1] == '\0'))
>> -               return __builtin_strlen(p);
>> +               return __underlying_strlen(p);
>>         ret = strnlen(p, p_size);
>>         if (p_size <= ret)
>>                 fortify_panic(__func__);
>> @@ -378,7 +403,7 @@ __FORTIFY_INLINE size_t strlcpy(char *p, const char *q, size_t size)
>>                         __write_overflow();
>>                 if (len >= p_size)
>>                         fortify_panic(__func__);
>> -               __builtin_memcpy(p, q, len);
>> +               __underlying_memcpy(p, q, len);
>>                 p[len] = '\0';
>>         }
>>         return ret;
>> @@ -391,12 +416,12 @@ __FORTIFY_INLINE char *strncat(char *p, const char *q, __kernel_size_t count)
>>         size_t p_size = __builtin_object_size(p, 0);
>>         size_t q_size = __builtin_object_size(q, 0);
>>         if (p_size == (size_t)-1 && q_size == (size_t)-1)
>> -               return __builtin_strncat(p, q, count);
>> +               return __underlying_strncat(p, q, count);
>>         p_len = strlen(p);
>>         copy_len = strnlen(q, count);
>>         if (p_size < p_len + copy_len + 1)
>>                 fortify_panic(__func__);
>> -       __builtin_memcpy(p + p_len, q, copy_len);
>> +       __underlying_memcpy(p + p_len, q, copy_len);
>>         p[p_len + copy_len] = '\0';
>>         return p;
>>  }
>> @@ -408,7 +433,7 @@ __FORTIFY_INLINE void *memset(void *p, int c, __kernel_size_t size)
>>                 __write_overflow();
>>         if (p_size < size)
>>                 fortify_panic(__func__);
>> -       return __builtin_memset(p, c, size);
>> +       return __underlying_memset(p, c, size);
>>  }
>>
>>  __FORTIFY_INLINE void *memcpy(void *p, const void *q, __kernel_size_t size)
>> @@ -423,7 +448,7 @@ __FORTIFY_INLINE void *memcpy(void *p, const void *q, __kernel_size_t size)
>>         }
>>         if (p_size < size || q_size < size)
>>                 fortify_panic(__func__);
>> -       return __builtin_memcpy(p, q, size);
>> +       return __underlying_memcpy(p, q, size);
>>  }
>>
>>  __FORTIFY_INLINE void *memmove(void *p, const void *q, __kernel_size_t size)
>> @@ -438,7 +463,7 @@ __FORTIFY_INLINE void *memmove(void *p, const void *q, __kernel_size_t size)
>>         }
>>         if (p_size < size || q_size < size)
>>                 fortify_panic(__func__);
>> -       return __builtin_memmove(p, q, size);
>> +       return __underlying_memmove(p, q, size);
>>  }
>>
>>  extern void *__real_memscan(void *, int, __kernel_size_t) __RENAME(memscan);
>> @@ -464,7 +489,7 @@ __FORTIFY_INLINE int memcmp(const void *p, const void *q, __kernel_size_t size)
>>         }
>>         if (p_size < size || q_size < size)
>>                 fortify_panic(__func__);
>> -       return __builtin_memcmp(p, q, size);
>> +       return __underlying_memcmp(p, q, size);
>>  }
>>
>>  __FORTIFY_INLINE void *memchr(const void *p, int c, __kernel_size_t size)
>> @@ -474,7 +499,7 @@ __FORTIFY_INLINE void *memchr(const void *p, int c, __kernel_size_t size)
>>                 __read_overflow();
>>         if (p_size < size)
>>                 fortify_panic(__func__);
>> -       return __builtin_memchr(p, c, size);
>> +       return __underlying_memchr(p, c, size);
>>  }
>>
>>  void *__real_memchr_inv(const void *s, int c, size_t n) __RENAME(memchr_inv);
>> @@ -505,7 +530,7 @@ __FORTIFY_INLINE char *strcpy(char *p, const char *q)
>>         size_t p_size = __builtin_object_size(p, 0);
>>         size_t q_size = __builtin_object_size(q, 0);
>>         if (p_size == (size_t)-1 && q_size == (size_t)-1)
>> -               return __builtin_strcpy(p, q);
>> +               return __underlying_strcpy(p, q);
>>         memcpy(p, q, strlen(q) + 1);
>>         return p;
>>  }
>> --
>> 2.20.1
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
