Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2DAA2B48
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 02:08:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=abL8IgQCK9X4IaRaOmAIKNaxFWd2oe3A0RX6yN3uzDg=; b=GzwL+rLXc1KzmY
	MpVDAoheec/e1Znm+/5slg8UKXfBXyecTNDjVx3ACuabU0xZ0Jrl+V60uH/z3OZ6P52zvWnVwQJdq
	cVqGqVjGdrbH8rRXjm3dHKpZcFR01PB6EZMjvhTgFygOBx1aI+Obtut2yjgyJSt7s4UebCEUJXFhp
	p3ejvE26f8l5NHEDxa+RlUkAgzMFF7HB7xAr746VJcgCxv1qPXGWcWhWxVflkBH4e9S6vnBktHgEC
	luJUomedO0heIB2vX857vL2uCtyfmdZ9piWS0hXsmEIejBr7YTpaFBPlS25y4Ucz80O3yLd7jk/Do
	hVr1MpHDxRbZDQJqgERQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3USh-00054a-Kw; Fri, 30 Aug 2019 00:08:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3USV-000544-PP
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 00:08:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3AF2B337;
 Thu, 29 Aug 2019 17:08:06 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A254B3F59C;
 Thu, 29 Aug 2019 17:08:05 -0700 (PDT)
Date: Fri, 30 Aug 2019 01:08:03 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v5 10/10] arm64: atomics: Use K constraint when toolchain
 appears to support it
Message-ID: <20190830000803.GR14582@e119886-lin.cambridge.arm.com>
References: <20190829154834.26547-1-will@kernel.org>
 <20190829154834.26547-11-will@kernel.org>
 <20190829165457.grindfmgpdpsbt4i@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829165457.grindfmgpdpsbt4i@willie-the-truck>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_170807_915422_C3722BA8 
X-CRM114-Status: GOOD (  20.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 ndesaulniers@google.com, Ard.Biesheuvel@arm.com, natechancellor@gmail.com,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 05:54:58PM +0100, Will Deacon wrote:
> On Thu, Aug 29, 2019 at 04:48:34PM +0100, Will Deacon wrote:
> > diff --git a/arch/arm64/include/asm/atomic_ll_sc.h b/arch/arm64/include/asm/atomic_ll_sc.h
> > index 95091f72228b..7fa042f5444e 100644
> > --- a/arch/arm64/include/asm/atomic_ll_sc.h
> > +++ b/arch/arm64/include/asm/atomic_ll_sc.h
> > @@ -23,6 +23,10 @@ asm_ops "\n"								\
> >  #define __LL_SC_FALLBACK(asm_ops) asm_ops
> >  #endif
> >  
> > +#ifndef CONFIG_CC_HAS_K_CONSTRAINT
> > +#define K
> > +#endif
> 
> Bah, I need to use something like __stringify when the constraint is used
> in order for this to get expanded properly. Updated diff below.

I don't think the changes in your updated diff are required. We successfully
combine 'asm_op' with the remainder of the assembly string without using
 __stringify, and this is no different to how the original patch combined
'constraint' with "r".

You can verify this by looking at the preprocessed .i files generated with
something like:

make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- drivers/spi/spi-rockchip.i

I see no difference (with GCC 7.3.1) between the original approach and your
use of __stringify. Incidentally you end up with "K" "r" instead of "Kr" but
it seems to have the desired effect (e.g. supress/emit out of range errors).
I have a couple of macros that resolves this to "Kr" but I don't think it's
necessary.

Did you find that it didn't work without your changes? I found it hard to
reproduce the out-of-range errors until I made the following change, I could
then easily see the effect of changing the constraint:

        : "=&r" (result), "=&r" (tmp), "+Q" (v->counter)                \
-       : #constraint "r" (i));                                         \
+       : #constraint) "r" (4294967295));                                               \
 }


Thanks,

Andrew Murray

> 
> Will
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
> +cc_has_k_constraint := $(call try-run,echo				\
> +	'int main(void) {						\
> +		asm volatile("and w0, w0, %w0" :: "K" (4294967295));	\
> +		return 0;						\
> +	}' | $(CC) -S -x c -o "$$TMP" -,,-DCONFIG_CC_HAS_K_CONSTRAINT=1)
> +
>  ifeq ($(CONFIG_ARM64), y)
>  brokengasinst := $(call as-instr,1:\n.inst 0\n.rept . - 1b\n\nnop\n.endr\n,,-DCONFIG_BROKEN_GAS_INST=1)
>  
> @@ -63,7 +69,8 @@ ifeq ($(CONFIG_GENERIC_COMPAT_VDSO), y)
>    endif
>  endif
>  
> -KBUILD_CFLAGS	+= -mgeneral-regs-only $(lseinstr) $(brokengasinst) $(compat_vdso)
> +KBUILD_CFLAGS	+= -mgeneral-regs-only $(lseinstr) $(brokengasinst)	\
> +		   $(compat_vdso) $(cc_has_k_constraint)
>  KBUILD_CFLAGS	+= -fno-asynchronous-unwind-tables
>  KBUILD_CFLAGS	+= $(call cc-disable-warning, psabi)
>  KBUILD_AFLAGS	+= $(lseinstr) $(brokengasinst) $(compat_vdso)
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
>  #define __LL_SC_FALLBACK(asm_ops)					\
>  "	b	3f\n"							\
> @@ -23,6 +25,10 @@ asm_ops "\n"								\
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
> @@ -44,7 +50,7 @@ __ll_sc_atomic_##op(int i, atomic_t *v)					\
>  "	stxr	%w1, %w0, %2\n"						\
>  "	cbnz	%w1, 1b\n")						\
>  	: "=&r" (result), "=&r" (tmp), "+Q" (v->counter)		\
> -	: #constraint "r" (i));						\
> +	: __stringify(constraint) "r" (i));				\
>  }
>  
>  #define ATOMIC_OP_RETURN(name, mb, acq, rel, cl, op, asm_op, constraint)\
> @@ -63,7 +69,7 @@ __ll_sc_atomic_##op##_return##name(int i, atomic_t *v)			\
>  "	cbnz	%w1, 1b\n"						\
>  "	" #mb )								\
>  	: "=&r" (result), "=&r" (tmp), "+Q" (v->counter)		\
> -	: #constraint "r" (i)						\
> +	: __stringify(constraint) "r" (i)				\
>  	: cl);								\
>  									\
>  	return result;							\
> @@ -85,7 +91,7 @@ __ll_sc_atomic_fetch_##op##name(int i, atomic_t *v)			\
>  "	cbnz	%w2, 1b\n"						\
>  "	" #mb )								\
>  	: "=&r" (result), "=&r" (val), "=&r" (tmp), "+Q" (v->counter)	\
> -	: #constraint "r" (i)						\
> +	: __stringify(constraint) "r" (i)				\
>  	: cl);								\
>  									\
>  	return result;							\
> @@ -113,10 +119,15 @@ ATOMIC_OPS(sub, sub, J)
>  	ATOMIC_FETCH_OP (_acquire,        , a,  , "memory", __VA_ARGS__)\
>  	ATOMIC_FETCH_OP (_release,        ,  , l, "memory", __VA_ARGS__)
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
> @@ -138,7 +149,7 @@ __ll_sc_atomic64_##op(s64 i, atomic64_t *v)				\
>  "	stxr	%w1, %0, %2\n"						\
>  "	cbnz	%w1, 1b")						\
>  	: "=&r" (result), "=&r" (tmp), "+Q" (v->counter)		\
> -	: #constraint "r" (i));						\
> +	: __stringify(constraint) "r" (i));				\
>  }
>  
>  #define ATOMIC64_OP_RETURN(name, mb, acq, rel, cl, op, asm_op, constraint)\
> @@ -157,7 +168,7 @@ __ll_sc_atomic64_##op##_return##name(s64 i, atomic64_t *v)		\
>  "	cbnz	%w1, 1b\n"						\
>  "	" #mb )								\
>  	: "=&r" (result), "=&r" (tmp), "+Q" (v->counter)		\
> -	: #constraint "r" (i)						\
> +	: __stringify(constraint) "r" (i)				\
>  	: cl);								\
>  									\
>  	return result;							\
> @@ -179,7 +190,7 @@ __ll_sc_atomic64_fetch_##op##name(s64 i, atomic64_t *v)		\
>  "	cbnz	%w2, 1b\n"						\
>  "	" #mb )								\
>  	: "=&r" (result), "=&r" (val), "=&r" (tmp), "+Q" (v->counter)	\
> -	: #constraint "r" (i)						\
> +	: __stringify(constraint) "r" (i)				\
>  	: cl);								\
>  									\
>  	return result;							\
> @@ -208,9 +219,14 @@ ATOMIC64_OPS(sub, sub, J)
>  	ATOMIC64_FETCH_OP (_release,,  , l, "memory", __VA_ARGS__)
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
> @@ -269,7 +285,7 @@ __ll_sc__cmpxchg_case_##name##sz(volatile void *ptr,			\
>  	"2:")								\
>  	: [tmp] "=&r" (tmp), [oldval] "=&r" (oldval),			\
>  	  [v] "+Q" (*(u##sz *)ptr)					\
> -	: [old] #constraint "r" (old), [new] "r" (new)			\
> +	: [old] __stringify(constraint) "r" (old), [new] "r" (new)	\
>  	: cl);								\
>  									\
>  	return oldval;							\
> @@ -280,21 +296,21 @@ __ll_sc__cmpxchg_case_##name##sz(volatile void *ptr,			\
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
>  #endif	/* __ASM_ATOMIC_LL_SC_H */

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
