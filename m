Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3013FA2184
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 18:55:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ZGSQ67jpnPqdWqfmKSDkOKBFJJF59l83AXXXNITbi4=; b=cYWU6DMd0pU3Xi
	Wa1ZVLkQ8S4sJWNrE+LPRQ/T+BEUeTH/5P8UPiYxJEmMISWSjJGEqS5aNqMwE1OLbBo+WAEz0D+uI
	U2szfgmmO0ghTTlb63N6FXYDvxyticPBDkwnQGhCyUOe8kw436HKEn7WT2TxeJS1br+kZZHCPVNAM
	YukBxWNlXlSV7GneS5BIen9LOYtiES1i4RovwN6sSOkYAmvRti3MJmhf4d7e6y/BzIAoJk3sUNrMe
	WR6VailsPZVVatvvyWefH+1ntGiqRwG+NnokIKvg8CeCazSCHfaDkAT7g6iVMAkJG7u06pfMJCLi6
	yjdXKkTXHr0B7NC+ScQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Nhf-00036E-Lk; Thu, 29 Aug 2019 16:55:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3NhP-0002gS-Hy
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 16:55:05 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7AC6720828;
 Thu, 29 Aug 2019 16:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567097703;
 bh=/VTgbZqdE2KMU8VisDcl8s8EF6ypZ7TNvgYIDy5tZdE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jS3sqQ778fYS240NKDFpTxHWBWVe7hFFi1k3zKFcvGz5Xnjmh3iCdDKzpa27XO2vp
 2RGaZ1hqiXMrZapXGLcHAtfyd3GMMEQGX1831EXMbvzU/9tj4um/DDhmGNP9e3luhx
 Od9ofHNAHxDD5kk8aKOcCiJ25RhNlnhLRsfRTLaw=
Date: Thu, 29 Aug 2019 17:54:58 +0100
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 10/10] arm64: atomics: Use K constraint when toolchain
 appears to support it
Message-ID: <20190829165457.grindfmgpdpsbt4i@willie-the-truck>
References: <20190829154834.26547-1-will@kernel.org>
 <20190829154834.26547-11-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829154834.26547-11-will@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_095503_655257_9643B487 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 ndesaulniers@google.com, Ard.Biesheuvel@arm.com, andrew.murray@arm.com,
 natechancellor@gmail.com, robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 04:48:34PM +0100, Will Deacon wrote:
> diff --git a/arch/arm64/include/asm/atomic_ll_sc.h b/arch/arm64/include/asm/atomic_ll_sc.h
> index 95091f72228b..7fa042f5444e 100644
> --- a/arch/arm64/include/asm/atomic_ll_sc.h
> +++ b/arch/arm64/include/asm/atomic_ll_sc.h
> @@ -23,6 +23,10 @@ asm_ops "\n"								\
>  #define __LL_SC_FALLBACK(asm_ops) asm_ops
>  #endif
>  
> +#ifndef CONFIG_CC_HAS_K_CONSTRAINT
> +#define K
> +#endif

Bah, I need to use something like __stringify when the constraint is used
in order for this to get expanded properly. Updated diff below.

Will

--->8

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 61de992bbea3..0cef056b5fb1 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -39,6 +39,12 @@ $(warning LSE atomics not supported by binutils)
   endif
 endif
 
+cc_has_k_constraint := $(call try-run,echo				\
+	'int main(void) {						\
+		asm volatile("and w0, w0, %w0" :: "K" (4294967295));	\
+		return 0;						\
+	}' | $(CC) -S -x c -o "$$TMP" -,,-DCONFIG_CC_HAS_K_CONSTRAINT=1)
+
 ifeq ($(CONFIG_ARM64), y)
 brokengasinst := $(call as-instr,1:\n.inst 0\n.rept . - 1b\n\nnop\n.endr\n,,-DCONFIG_BROKEN_GAS_INST=1)
 
@@ -63,7 +69,8 @@ ifeq ($(CONFIG_GENERIC_COMPAT_VDSO), y)
   endif
 endif
 
-KBUILD_CFLAGS	+= -mgeneral-regs-only $(lseinstr) $(brokengasinst) $(compat_vdso)
+KBUILD_CFLAGS	+= -mgeneral-regs-only $(lseinstr) $(brokengasinst)	\
+		   $(compat_vdso) $(cc_has_k_constraint)
 KBUILD_CFLAGS	+= -fno-asynchronous-unwind-tables
 KBUILD_CFLAGS	+= $(call cc-disable-warning, psabi)
 KBUILD_AFLAGS	+= $(lseinstr) $(brokengasinst) $(compat_vdso)
diff --git a/arch/arm64/include/asm/atomic_ll_sc.h b/arch/arm64/include/asm/atomic_ll_sc.h
index 95091f72228b..7b012148bfd6 100644
--- a/arch/arm64/include/asm/atomic_ll_sc.h
+++ b/arch/arm64/include/asm/atomic_ll_sc.h
@@ -10,6 +10,8 @@
 #ifndef __ASM_ATOMIC_LL_SC_H
 #define __ASM_ATOMIC_LL_SC_H
 
+#include <linux/stringify.h>
+
 #if IS_ENABLED(CONFIG_ARM64_LSE_ATOMICS) && IS_ENABLED(CONFIG_AS_LSE)
 #define __LL_SC_FALLBACK(asm_ops)					\
 "	b	3f\n"							\
@@ -23,6 +25,10 @@ asm_ops "\n"								\
 #define __LL_SC_FALLBACK(asm_ops) asm_ops
 #endif
 
+#ifndef CONFIG_CC_HAS_K_CONSTRAINT
+#define K
+#endif
+
 /*
  * AArch64 UP and SMP safe atomic ops.  We use load exclusive and
  * store exclusive to ensure that these are atomic.  We may loop
@@ -44,7 +50,7 @@ __ll_sc_atomic_##op(int i, atomic_t *v)					\
 "	stxr	%w1, %w0, %2\n"						\
 "	cbnz	%w1, 1b\n")						\
 	: "=&r" (result), "=&r" (tmp), "+Q" (v->counter)		\
-	: #constraint "r" (i));						\
+	: __stringify(constraint) "r" (i));				\
 }
 
 #define ATOMIC_OP_RETURN(name, mb, acq, rel, cl, op, asm_op, constraint)\
@@ -63,7 +69,7 @@ __ll_sc_atomic_##op##_return##name(int i, atomic_t *v)			\
 "	cbnz	%w1, 1b\n"						\
 "	" #mb )								\
 	: "=&r" (result), "=&r" (tmp), "+Q" (v->counter)		\
-	: #constraint "r" (i)						\
+	: __stringify(constraint) "r" (i)				\
 	: cl);								\
 									\
 	return result;							\
@@ -85,7 +91,7 @@ __ll_sc_atomic_fetch_##op##name(int i, atomic_t *v)			\
 "	cbnz	%w2, 1b\n"						\
 "	" #mb )								\
 	: "=&r" (result), "=&r" (val), "=&r" (tmp), "+Q" (v->counter)	\
-	: #constraint "r" (i)						\
+	: __stringify(constraint) "r" (i)				\
 	: cl);								\
 									\
 	return result;							\
@@ -113,10 +119,15 @@ ATOMIC_OPS(sub, sub, J)
 	ATOMIC_FETCH_OP (_acquire,        , a,  , "memory", __VA_ARGS__)\
 	ATOMIC_FETCH_OP (_release,        ,  , l, "memory", __VA_ARGS__)
 
-ATOMIC_OPS(and, and, )
+ATOMIC_OPS(and, and, K)
+ATOMIC_OPS(or, orr, K)
+ATOMIC_OPS(xor, eor, K)
+/*
+ * GAS converts the mysterious and undocumented BIC (immediate) alias to
+ * an AND (immediate) instruction with the immediate inverted. We don't
+ * have a constraint for this, so fall back to register.
+ */
 ATOMIC_OPS(andnot, bic, )
-ATOMIC_OPS(or, orr, )
-ATOMIC_OPS(xor, eor, )
 
 #undef ATOMIC_OPS
 #undef ATOMIC_FETCH_OP
@@ -138,7 +149,7 @@ __ll_sc_atomic64_##op(s64 i, atomic64_t *v)				\
 "	stxr	%w1, %0, %2\n"						\
 "	cbnz	%w1, 1b")						\
 	: "=&r" (result), "=&r" (tmp), "+Q" (v->counter)		\
-	: #constraint "r" (i));						\
+	: __stringify(constraint) "r" (i));				\
 }
 
 #define ATOMIC64_OP_RETURN(name, mb, acq, rel, cl, op, asm_op, constraint)\
@@ -157,7 +168,7 @@ __ll_sc_atomic64_##op##_return##name(s64 i, atomic64_t *v)		\
 "	cbnz	%w1, 1b\n"						\
 "	" #mb )								\
 	: "=&r" (result), "=&r" (tmp), "+Q" (v->counter)		\
-	: #constraint "r" (i)						\
+	: __stringify(constraint) "r" (i)				\
 	: cl);								\
 									\
 	return result;							\
@@ -179,7 +190,7 @@ __ll_sc_atomic64_fetch_##op##name(s64 i, atomic64_t *v)		\
 "	cbnz	%w2, 1b\n"						\
 "	" #mb )								\
 	: "=&r" (result), "=&r" (val), "=&r" (tmp), "+Q" (v->counter)	\
-	: #constraint "r" (i)						\
+	: __stringify(constraint) "r" (i)				\
 	: cl);								\
 									\
 	return result;							\
@@ -208,9 +219,14 @@ ATOMIC64_OPS(sub, sub, J)
 	ATOMIC64_FETCH_OP (_release,,  , l, "memory", __VA_ARGS__)
 
 ATOMIC64_OPS(and, and, L)
-ATOMIC64_OPS(andnot, bic, )
 ATOMIC64_OPS(or, orr, L)
 ATOMIC64_OPS(xor, eor, L)
+/*
+ * GAS converts the mysterious and undocumented BIC (immediate) alias to
+ * an AND (immediate) instruction with the immediate inverted. We don't
+ * have a constraint for this, so fall back to register.
+ */
+ATOMIC64_OPS(andnot, bic, )
 
 #undef ATOMIC64_OPS
 #undef ATOMIC64_FETCH_OP
@@ -269,7 +285,7 @@ __ll_sc__cmpxchg_case_##name##sz(volatile void *ptr,			\
 	"2:")								\
 	: [tmp] "=&r" (tmp), [oldval] "=&r" (oldval),			\
 	  [v] "+Q" (*(u##sz *)ptr)					\
-	: [old] #constraint "r" (old), [new] "r" (new)			\
+	: [old] __stringify(constraint) "r" (old), [new] "r" (new)	\
 	: cl);								\
 									\
 	return oldval;							\
@@ -280,21 +296,21 @@ __ll_sc__cmpxchg_case_##name##sz(volatile void *ptr,			\
  * handle the 'K' constraint for the value 4294967295 - thus we use no
  * constraint for 32 bit operations.
  */
-__CMPXCHG_CASE(w, b,     ,  8,        ,  ,  ,         , )
-__CMPXCHG_CASE(w, h,     , 16,        ,  ,  ,         , )
-__CMPXCHG_CASE(w,  ,     , 32,        ,  ,  ,         , )
+__CMPXCHG_CASE(w, b,     ,  8,        ,  ,  ,         , K)
+__CMPXCHG_CASE(w, h,     , 16,        ,  ,  ,         , K)
+__CMPXCHG_CASE(w,  ,     , 32,        ,  ,  ,         , K)
 __CMPXCHG_CASE( ,  ,     , 64,        ,  ,  ,         , L)
-__CMPXCHG_CASE(w, b, acq_,  8,        , a,  , "memory", )
-__CMPXCHG_CASE(w, h, acq_, 16,        , a,  , "memory", )
-__CMPXCHG_CASE(w,  , acq_, 32,        , a,  , "memory", )
+__CMPXCHG_CASE(w, b, acq_,  8,        , a,  , "memory", K)
+__CMPXCHG_CASE(w, h, acq_, 16,        , a,  , "memory", K)
+__CMPXCHG_CASE(w,  , acq_, 32,        , a,  , "memory", K)
 __CMPXCHG_CASE( ,  , acq_, 64,        , a,  , "memory", L)
-__CMPXCHG_CASE(w, b, rel_,  8,        ,  , l, "memory", )
-__CMPXCHG_CASE(w, h, rel_, 16,        ,  , l, "memory", )
-__CMPXCHG_CASE(w,  , rel_, 32,        ,  , l, "memory", )
+__CMPXCHG_CASE(w, b, rel_,  8,        ,  , l, "memory", K)
+__CMPXCHG_CASE(w, h, rel_, 16,        ,  , l, "memory", K)
+__CMPXCHG_CASE(w,  , rel_, 32,        ,  , l, "memory", K)
 __CMPXCHG_CASE( ,  , rel_, 64,        ,  , l, "memory", L)
-__CMPXCHG_CASE(w, b,  mb_,  8, dmb ish,  , l, "memory", )
-__CMPXCHG_CASE(w, h,  mb_, 16, dmb ish,  , l, "memory", )
-__CMPXCHG_CASE(w,  ,  mb_, 32, dmb ish,  , l, "memory", )
+__CMPXCHG_CASE(w, b,  mb_,  8, dmb ish,  , l, "memory", K)
+__CMPXCHG_CASE(w, h,  mb_, 16, dmb ish,  , l, "memory", K)
+__CMPXCHG_CASE(w,  ,  mb_, 32, dmb ish,  , l, "memory", K)
 __CMPXCHG_CASE( ,  ,  mb_, 64, dmb ish,  , l, "memory", L)
 
 #undef __CMPXCHG_CASE
@@ -332,5 +348,6 @@ __CMPXCHG_DBL(   ,        ,  ,         )
 __CMPXCHG_DBL(_mb, dmb ish, l, "memory")
 
 #undef __CMPXCHG_DBL
+#undef K
 
 #endif	/* __ASM_ATOMIC_LL_SC_H */

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
