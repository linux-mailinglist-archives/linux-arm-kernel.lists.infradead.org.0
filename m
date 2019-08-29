Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48609A22A9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 19:46:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z3fi4+LulT42lwsbMNmAg64lU357t7YwfGWMcXXJLZg=; b=quhRRYUPzTqN3f
	cidUUfQNfLOm8OspMzciroVv0WKxvFOe3QVA0YOIguSUHTujeJSSNL8RseasX+DrAOyy8piRBegKT
	wnjZxe69lJ45gFxntJ2OTwqsKwQu8qLMS1cYIKgSEVaEO4LcL1/7JXgqpkH+C+auZ7RGADkj4sXoV
	Kdf85gAKzVOZWpJ4ukqFQmi7nOp2xeOmCqI16qm35s/5vIZGQuLe6745p5BhuFXsZt/sqiMMDHwdW
	VJDgPybzIQZorWZVc+u4kCa8IklrHVGP061b1/XEiJFkHPkQ+9dmw+lGCcTALFjTBhMBg2tKTeQWc
	+nyj0WD6iuLP30XxCRuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3OV7-0004cC-4P; Thu, 29 Aug 2019 17:46:25 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3OUu-0004bn-L9
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 17:46:14 +0000
Received: by mail-pf1-x444.google.com with SMTP id q139so2530978pfc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 10:46:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dlNh3CU9zUygg8M/DXWKalX8ddV4N35odwGZUzr3mhM=;
 b=rVSu7C8otZ/Tuk3VPzGaexCfQZ0yo4as2sP9tUMYuD2dBk6/bFkrtsNCAm8Q5laeGL
 uVeKz3CbX1mGMsVcL7H26N1mxK0f4d3+LntCS8qmpTtrlajRJzw3h6p/xc3o5Q5UHFDc
 0oK0X1aXymIikxXE4VfPWhy1MO4Nu7howfRRy+C+2kaptzF4+Xy+jczNyq0t9gWuG1LP
 6NgmbktyTzuVMJw2s6/RRLMGII+3eu/Xag+kXDnsdhKU6kNh2Ay54OEvPFxTJkFwyHed
 c8CQwVgok/nF08VuOrsDyJ5S2r/L7L8dYD48AQK+zHtAiKHHeh2hyscrLwtGkFZ23/hv
 Xm2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dlNh3CU9zUygg8M/DXWKalX8ddV4N35odwGZUzr3mhM=;
 b=WLT0RwY9o/+odMkbLb/qPT+gY188LivAa6lA3a/NwmRn8HId+pwFJ4YMhjm5Ex52n8
 qnEreABvni6XitlkUWZMjUz3lqKrcUcsS6psWoqEuPE5KFNdyG622gPbjFjFJj9iNG6W
 tFBB6LNUx+pIwjFZJU6eP+/GfrjvK+oW6JrFSCdc/35ky5vUYktGdmOP3GmgZyTOdY9I
 SL021ih5s01xywaH9jNhFLLrAK1SPXrMBpA38DRtCAmmB5q6Pe+vCRoqxZ+dhfNy0F0M
 ILxnLlb5xVH2SZi1pTWN6WDHZ5fZDXGf3K8p/QICIkn9crnVn0Jlpd/2PUeZktfei+OC
 Dd9g==
X-Gm-Message-State: APjAAAUoALOLS0wXHr1HmY/oA13s8j7/lCIRM/Sx4fdPUnV1uuJWQYO0
 4TTQENdrTTpV3VXq2HMn/WkMuwl941zo/5NBgts3D/6in4M=
X-Google-Smtp-Source: APXvYqwMdMa6a00vpAVCXOlt4BFzZjbbV3KdEcN8UqZYAy+eMHZYvM+xbcdHA80pImhva158rU2hGOImyRKsln7uae4=
X-Received: by 2002:a17:90a:c20f:: with SMTP id
 e15mr11001360pjt.123.1567100768675; 
 Thu, 29 Aug 2019 10:46:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190829154834.26547-1-will@kernel.org>
 <20190829154834.26547-11-will@kernel.org>
 <20190829165457.grindfmgpdpsbt4i@willie-the-truck>
In-Reply-To: <20190829165457.grindfmgpdpsbt4i@willie-the-truck>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 29 Aug 2019 10:45:57 -0700
Message-ID: <CAKwvOdkaCTQ92hUe823Y14xo_Gft4vsRGgimHc8QPUBCbbAOrQ@mail.gmail.com>
Subject: Re: [PATCH v5 10/10] arm64: atomics: Use K constraint when toolchain
 appears to support it
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_104612_720968_C461C98D 
X-CRM114-Status: GOOD (  18.44  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Ard.Biesheuvel@arm.com,
 andrew.murray@arm.com, Nathan Chancellor <natechancellor@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 9:55 AM Will Deacon <will@kernel.org> wrote:
>
> On Thu, Aug 29, 2019 at 04:48:34PM +0100, Will Deacon wrote:
> > diff --git a/arch/arm64/include/asm/atomic_ll_sc.h b/arch/arm64/include/asm/atomic_ll_sc.h
> > index 95091f72228b..7fa042f5444e 100644
> > --- a/arch/arm64/include/asm/atomic_ll_sc.h
> > +++ b/arch/arm64/include/asm/atomic_ll_sc.h
> > @@ -23,6 +23,10 @@ asm_ops "\n"                                                               \
> >  #define __LL_SC_FALLBACK(asm_ops) asm_ops
> >  #endif
> >
> > +#ifndef CONFIG_CC_HAS_K_CONSTRAINT
> > +#define K
> > +#endif
>
> Bah, I need to use something like __stringify when the constraint is used
> in order for this to get expanded properly. Updated diff below.
>
> Will

Hi Will, thanks for cc'ing me on the patch set.  I'd be happy to help
test w/ Clang.  Would you mind pushing this set with the below diff to
a publicly available tree+branch I can pull from?  (I haven't yet
figured out how to download multiple diff's from gmail rather than 1
by 1, and TBH I'd rather just use git).

>
> --->8
>
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index 61de992bbea3..0cef056b5fb1 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -39,6 +39,12 @@ $(warning LSE atomics not supported by binutils)
>    endif
>  endif
>
> +cc_has_k_constraint := $(call try-run,echo                             \
> +       'int main(void) {                                               \
> +               asm volatile("and w0, w0, %w0" :: "K" (4294967295));    \
> +               return 0;                                               \
> +       }' | $(CC) -S -x c -o "$$TMP" -,,-DCONFIG_CC_HAS_K_CONSTRAINT=1)
> +
>  ifeq ($(CONFIG_ARM64), y)
>  brokengasinst := $(call as-instr,1:\n.inst 0\n.rept . - 1b\n\nnop\n.endr\n,,-DCONFIG_BROKEN_GAS_INST=1)
>
> @@ -63,7 +69,8 @@ ifeq ($(CONFIG_GENERIC_COMPAT_VDSO), y)
>    endif
>  endif
>
> -KBUILD_CFLAGS  += -mgeneral-regs-only $(lseinstr) $(brokengasinst) $(compat_vdso)
> +KBUILD_CFLAGS  += -mgeneral-regs-only $(lseinstr) $(brokengasinst)     \
> +                  $(compat_vdso) $(cc_has_k_constraint)
>  KBUILD_CFLAGS  += -fno-asynchronous-unwind-tables
>  KBUILD_CFLAGS  += $(call cc-disable-warning, psabi)
>  KBUILD_AFLAGS  += $(lseinstr) $(brokengasinst) $(compat_vdso)
> diff --git a/arch/arm64/include/asm/atomic_ll_sc.h b/arch/arm64/include/asm/atomic_ll_sc.h
> index 95091f72228b..7b012148bfd6 100644
> --- a/arch/arm64/include/asm/atomic_ll_sc.h
> +++ b/arch/arm64/include/asm/atomic_ll_sc.h
> @@ -10,6 +10,8 @@
>  #ifndef __ASM_ATOMIC_LL_SC_H
>  #define __ASM_ATOMIC_LL_SC_H
>
> +#include <linux/stringify.h>
> +
>  #if IS_ENABLED(CONFIG_ARM64_LSE_ATOMICS) && IS_ENABLED(CONFIG_AS_LSE)
>  #define __LL_SC_FALLBACK(asm_ops)                                      \
>  "      b       3f\n"                                                   \
> @@ -23,6 +25,10 @@ asm_ops "\n"                                                         \
>  #define __LL_SC_FALLBACK(asm_ops) asm_ops
>  #endif
>
> +#ifndef CONFIG_CC_HAS_K_CONSTRAINT
> +#define K
> +#endif
> +
>  /*
>   * AArch64 UP and SMP safe atomic ops.  We use load exclusive and
>   * store exclusive to ensure that these are atomic.  We may loop
> @@ -44,7 +50,7 @@ __ll_sc_atomic_##op(int i, atomic_t *v)                                       \
>  "      stxr    %w1, %w0, %2\n"                                         \
>  "      cbnz    %w1, 1b\n")                                             \
>         : "=&r" (result), "=&r" (tmp), "+Q" (v->counter)                \
> -       : #constraint "r" (i));                                         \
> +       : __stringify(constraint) "r" (i));                             \
>  }
>
>  #define ATOMIC_OP_RETURN(name, mb, acq, rel, cl, op, asm_op, constraint)\
> @@ -63,7 +69,7 @@ __ll_sc_atomic_##op##_return##name(int i, atomic_t *v)                        \
>  "      cbnz    %w1, 1b\n"                                              \
>  "      " #mb )                                                         \
>         : "=&r" (result), "=&r" (tmp), "+Q" (v->counter)                \
> -       : #constraint "r" (i)                                           \
> +       : __stringify(constraint) "r" (i)                               \
>         : cl);                                                          \
>                                                                         \
>         return result;                                                  \
> @@ -85,7 +91,7 @@ __ll_sc_atomic_fetch_##op##name(int i, atomic_t *v)                   \
>  "      cbnz    %w2, 1b\n"                                              \
>  "      " #mb )                                                         \
>         : "=&r" (result), "=&r" (val), "=&r" (tmp), "+Q" (v->counter)   \
> -       : #constraint "r" (i)                                           \
> +       : __stringify(constraint) "r" (i)                               \
>         : cl);                                                          \
>                                                                         \
>         return result;                                                  \
> @@ -113,10 +119,15 @@ ATOMIC_OPS(sub, sub, J)
>         ATOMIC_FETCH_OP (_acquire,        , a,  , "memory", __VA_ARGS__)\
>         ATOMIC_FETCH_OP (_release,        ,  , l, "memory", __VA_ARGS__)
>
> -ATOMIC_OPS(and, and, )
> +ATOMIC_OPS(and, and, K)
> +ATOMIC_OPS(or, orr, K)
> +ATOMIC_OPS(xor, eor, K)
> +/*
> + * GAS converts the mysterious and undocumented BIC (immediate) alias to
> + * an AND (immediate) instruction with the immediate inverted. We don't
> + * have a constraint for this, so fall back to register.
> + */
>  ATOMIC_OPS(andnot, bic, )
> -ATOMIC_OPS(or, orr, )
> -ATOMIC_OPS(xor, eor, )
>
>  #undef ATOMIC_OPS
>  #undef ATOMIC_FETCH_OP
> @@ -138,7 +149,7 @@ __ll_sc_atomic64_##op(s64 i, atomic64_t *v)                         \
>  "      stxr    %w1, %0, %2\n"                                          \
>  "      cbnz    %w1, 1b")                                               \
>         : "=&r" (result), "=&r" (tmp), "+Q" (v->counter)                \
> -       : #constraint "r" (i));                                         \
> +       : __stringify(constraint) "r" (i));                             \
>  }
>
>  #define ATOMIC64_OP_RETURN(name, mb, acq, rel, cl, op, asm_op, constraint)\
> @@ -157,7 +168,7 @@ __ll_sc_atomic64_##op##_return##name(s64 i, atomic64_t *v)          \
>  "      cbnz    %w1, 1b\n"                                              \
>  "      " #mb )                                                         \
>         : "=&r" (result), "=&r" (tmp), "+Q" (v->counter)                \
> -       : #constraint "r" (i)                                           \
> +       : __stringify(constraint) "r" (i)                               \
>         : cl);                                                          \
>                                                                         \
>         return result;                                                  \
> @@ -179,7 +190,7 @@ __ll_sc_atomic64_fetch_##op##name(s64 i, atomic64_t *v)             \
>  "      cbnz    %w2, 1b\n"                                              \
>  "      " #mb )                                                         \
>         : "=&r" (result), "=&r" (val), "=&r" (tmp), "+Q" (v->counter)   \
> -       : #constraint "r" (i)                                           \
> +       : __stringify(constraint) "r" (i)                               \
>         : cl);                                                          \
>                                                                         \
>         return result;                                                  \
> @@ -208,9 +219,14 @@ ATOMIC64_OPS(sub, sub, J)
>         ATOMIC64_FETCH_OP (_release,,  , l, "memory", __VA_ARGS__)
>
>  ATOMIC64_OPS(and, and, L)
> -ATOMIC64_OPS(andnot, bic, )
>  ATOMIC64_OPS(or, orr, L)
>  ATOMIC64_OPS(xor, eor, L)
> +/*
> + * GAS converts the mysterious and undocumented BIC (immediate) alias to
> + * an AND (immediate) instruction with the immediate inverted. We don't
> + * have a constraint for this, so fall back to register.
> + */
> +ATOMIC64_OPS(andnot, bic, )
>
>  #undef ATOMIC64_OPS
>  #undef ATOMIC64_FETCH_OP
> @@ -269,7 +285,7 @@ __ll_sc__cmpxchg_case_##name##sz(volatile void *ptr,                        \
>         "2:")                                                           \
>         : [tmp] "=&r" (tmp), [oldval] "=&r" (oldval),                   \
>           [v] "+Q" (*(u##sz *)ptr)                                      \
> -       : [old] #constraint "r" (old), [new] "r" (new)                  \
> +       : [old] __stringify(constraint) "r" (old), [new] "r" (new)      \
>         : cl);                                                          \
>                                                                         \
>         return oldval;                                                  \
> @@ -280,21 +296,21 @@ __ll_sc__cmpxchg_case_##name##sz(volatile void *ptr,                      \
>   * handle the 'K' constraint for the value 4294967295 - thus we use no
>   * constraint for 32 bit operations.
>   */
> -__CMPXCHG_CASE(w, b,     ,  8,        ,  ,  ,         , )
> -__CMPXCHG_CASE(w, h,     , 16,        ,  ,  ,         , )
> -__CMPXCHG_CASE(w,  ,     , 32,        ,  ,  ,         , )
> +__CMPXCHG_CASE(w, b,     ,  8,        ,  ,  ,         , K)
> +__CMPXCHG_CASE(w, h,     , 16,        ,  ,  ,         , K)
> +__CMPXCHG_CASE(w,  ,     , 32,        ,  ,  ,         , K)
>  __CMPXCHG_CASE( ,  ,     , 64,        ,  ,  ,         , L)
> -__CMPXCHG_CASE(w, b, acq_,  8,        , a,  , "memory", )
> -__CMPXCHG_CASE(w, h, acq_, 16,        , a,  , "memory", )
> -__CMPXCHG_CASE(w,  , acq_, 32,        , a,  , "memory", )
> +__CMPXCHG_CASE(w, b, acq_,  8,        , a,  , "memory", K)
> +__CMPXCHG_CASE(w, h, acq_, 16,        , a,  , "memory", K)
> +__CMPXCHG_CASE(w,  , acq_, 32,        , a,  , "memory", K)
>  __CMPXCHG_CASE( ,  , acq_, 64,        , a,  , "memory", L)
> -__CMPXCHG_CASE(w, b, rel_,  8,        ,  , l, "memory", )
> -__CMPXCHG_CASE(w, h, rel_, 16,        ,  , l, "memory", )
> -__CMPXCHG_CASE(w,  , rel_, 32,        ,  , l, "memory", )
> +__CMPXCHG_CASE(w, b, rel_,  8,        ,  , l, "memory", K)
> +__CMPXCHG_CASE(w, h, rel_, 16,        ,  , l, "memory", K)
> +__CMPXCHG_CASE(w,  , rel_, 32,        ,  , l, "memory", K)
>  __CMPXCHG_CASE( ,  , rel_, 64,        ,  , l, "memory", L)
> -__CMPXCHG_CASE(w, b,  mb_,  8, dmb ish,  , l, "memory", )
> -__CMPXCHG_CASE(w, h,  mb_, 16, dmb ish,  , l, "memory", )
> -__CMPXCHG_CASE(w,  ,  mb_, 32, dmb ish,  , l, "memory", )
> +__CMPXCHG_CASE(w, b,  mb_,  8, dmb ish,  , l, "memory", K)
> +__CMPXCHG_CASE(w, h,  mb_, 16, dmb ish,  , l, "memory", K)
> +__CMPXCHG_CASE(w,  ,  mb_, 32, dmb ish,  , l, "memory", K)
>  __CMPXCHG_CASE( ,  ,  mb_, 64, dmb ish,  , l, "memory", L)
>
>  #undef __CMPXCHG_CASE
> @@ -332,5 +348,6 @@ __CMPXCHG_DBL(   ,        ,  ,         )
>  __CMPXCHG_DBL(_mb, dmb ish, l, "memory")
>
>  #undef __CMPXCHG_DBL
> +#undef K
>
>  #endif /* __ASM_ATOMIC_LL_SC_H */



-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
