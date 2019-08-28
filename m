Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A82B4A08F3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 19:51:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bs1CZzw0mqEDRuHJrcdPL7HGSFoooG1e/9WyFAO2Txw=; b=Y3iwLfHLKp5LEr
	rpqBinAaiTqBLfwZeeMaUa+3lzdRUizNScO4uwRhAsZdDRxZub3mQ905eYVHNkInirDZ8ZAZpY8FT
	GnmcyaIitcKb1eW36SpmcWIznuvKl9I2Nt/VfS5GM3el8ZcBbaCCfJ4cTD4lOO0kEyT84RjULwiFP
	0gG2N7r8DZSwh0ZSmbI7caO1H1IeWxBLcMNVF+Vg90WOEvKzf6bjFjloKpLoDhDzt3shNuoURWAFT
	4ByOoufUcRmtmMHQ6w3qonmwFIQPcYXadVpPhwwefe9Hjmj8qymAuXC4wku2QE9aj/8cOOirQuk9o
	siD50jpziH78PLzcPSgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i326L-0007HA-8w; Wed, 28 Aug 2019 17:51:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i325O-0006Zn-Bj
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 17:50:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EFB0315AD;
 Wed, 28 Aug 2019 10:50:21 -0700 (PDT)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DDA283F59C;
 Wed, 28 Aug 2019 10:50:19 -0700 (PDT)
From: Andrew Murray <andrew.murray@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Ard.Biesheuvel@arm.com
Subject: [PATCH v4 3/5] arm64: atomics: avoid out-of-line ll/sc atomics
Date: Wed, 28 Aug 2019 18:50:07 +0100
Message-Id: <20190828175009.15457-4-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190828175009.15457-1-andrew.murray@arm.com>
References: <20190828175009.15457-1-andrew.murray@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_105022_537156_C90FF949 
X-CRM114-Status: GOOD (  16.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Boqun Feng <boqun.feng@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When building for LSE atomics (CONFIG_ARM64_LSE_ATOMICS), if the hardware
or toolchain doesn't support it the existing code will fallback to ll/sc
atomics. It achieves this by branching from inline assembly to a function
that is built with specical compile flags. Further this results in the
clobbering of registers even when the fallback isn't used increasing
register pressure.

Let's improve this by providing inline implementations of both LSE and
ll/sc and use a static key to select between them. This allows for the
compiler to generate better atomics code.

To improve icache performance for the LL/SC fallback atomics, we put them
in their own subsection.

Please note that as atomic_arch.h is included indirectly by kernel.h
(via bitops.h), we cannot depend on features provided later in the kernel.h
file. This prevents us from placing the system_uses_lse_atomics function
in cpu_feature.h due to its dependencies.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
---
 arch/arm64/include/asm/atomic.h       |  11 +-
 arch/arm64/include/asm/atomic_arch.h  | 155 +++++++++++
 arch/arm64/include/asm/atomic_ll_sc.h | 113 ++++----
 arch/arm64/include/asm/atomic_lse.h   | 365 ++++++++------------------
 arch/arm64/include/asm/cmpxchg.h      |   2 +-
 arch/arm64/include/asm/lse.h          |  11 -
 6 files changed, 329 insertions(+), 328 deletions(-)
 create mode 100644 arch/arm64/include/asm/atomic_arch.h

diff --git a/arch/arm64/include/asm/atomic.h b/arch/arm64/include/asm/atomic.h
index 657b0457d83c..c70d3f389d29 100644
--- a/arch/arm64/include/asm/atomic.h
+++ b/arch/arm64/include/asm/atomic.h
@@ -17,16 +17,7 @@
 
 #ifdef __KERNEL__
 
-#define __ARM64_IN_ATOMIC_IMPL
-
-#if defined(CONFIG_ARM64_LSE_ATOMICS) && defined(CONFIG_AS_LSE)
-#include <asm/atomic_lse.h>
-#else
-#include <asm/atomic_ll_sc.h>
-#endif
-
-#undef __ARM64_IN_ATOMIC_IMPL
-
+#include <asm/atomic_arch.h>
 #include <asm/cmpxchg.h>
 
 #define ATOMIC_INIT(i)	{ (i) }
diff --git a/arch/arm64/include/asm/atomic_arch.h b/arch/arm64/include/asm/atomic_arch.h
new file mode 100644
index 000000000000..1aac7fc65084
--- /dev/null
+++ b/arch/arm64/include/asm/atomic_arch.h
@@ -0,0 +1,155 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Selection between LSE and LL/SC atomics.
+ *
+ * Copyright (C) 2018 ARM Ltd.
+ * Author: Andrew Murray <andrew.murray@arm.com>
+ */
+
+#ifndef __ASM_ATOMIC_ARCH_H
+#define __ASM_ATOMIC_ARCH_H
+
+
+#include <linux/jump_label.h>
+
+#include <asm/cpucaps.h>
+#include <asm/atomic_ll_sc.h>
+#include <asm/atomic_lse.h>
+
+extern struct static_key_false cpu_hwcap_keys[ARM64_NCAPS];
+extern struct static_key_false arm64_const_caps_ready;
+
+static inline bool system_uses_lse_atomics(void)
+{
+	return (IS_ENABLED(CONFIG_ARM64_LSE_ATOMICS) &&
+		IS_ENABLED(CONFIG_AS_LSE) &&
+		static_branch_likely(&arm64_const_caps_ready)) &&
+		static_branch_likely(&cpu_hwcap_keys[ARM64_HAS_LSE_ATOMICS]);
+}
+
+#define __lse_ll_sc_body(op, ...)					\
+({									\
+	system_uses_lse_atomics() ?					\
+		__lse_##op(__VA_ARGS__) :				\
+		__ll_sc_##op(__VA_ARGS__);				\
+})
+
+#define ATOMIC_OP(op)							\
+static inline void arch_##op(int i, atomic_t *v)			\
+{									\
+	__lse_ll_sc_body(op, i, v);					\
+}
+
+ATOMIC_OP(atomic_andnot)
+ATOMIC_OP(atomic_or)
+ATOMIC_OP(atomic_xor)
+ATOMIC_OP(atomic_add)
+ATOMIC_OP(atomic_and)
+ATOMIC_OP(atomic_sub)
+
+
+#define ATOMIC_FETCH_OP(name, op)					\
+static inline int arch_##op##name(int i, atomic_t *v)			\
+{									\
+	return __lse_ll_sc_body(op##name, i, v);			\
+}
+
+#define ATOMIC_FETCH_OPS(op)						\
+	ATOMIC_FETCH_OP(_relaxed, op)					\
+	ATOMIC_FETCH_OP(_acquire, op)					\
+	ATOMIC_FETCH_OP(_release, op)					\
+	ATOMIC_FETCH_OP(        , op)
+
+ATOMIC_FETCH_OPS(atomic_fetch_andnot)
+ATOMIC_FETCH_OPS(atomic_fetch_or)
+ATOMIC_FETCH_OPS(atomic_fetch_xor)
+ATOMIC_FETCH_OPS(atomic_fetch_add)
+ATOMIC_FETCH_OPS(atomic_fetch_and)
+ATOMIC_FETCH_OPS(atomic_fetch_sub)
+ATOMIC_FETCH_OPS(atomic_add_return)
+ATOMIC_FETCH_OPS(atomic_sub_return)
+
+
+#define ATOMIC64_OP(op)							\
+static inline void arch_##op(long i, atomic64_t *v)			\
+{									\
+	__lse_ll_sc_body(op, i, v);					\
+}
+
+ATOMIC64_OP(atomic64_andnot)
+ATOMIC64_OP(atomic64_or)
+ATOMIC64_OP(atomic64_xor)
+ATOMIC64_OP(atomic64_add)
+ATOMIC64_OP(atomic64_and)
+ATOMIC64_OP(atomic64_sub)
+
+
+#define ATOMIC64_FETCH_OP(name, op)					\
+static inline long arch_##op##name(long i, atomic64_t *v)		\
+{									\
+	return __lse_ll_sc_body(op##name, i, v);			\
+}
+
+#define ATOMIC64_FETCH_OPS(op)						\
+	ATOMIC64_FETCH_OP(_relaxed, op)					\
+	ATOMIC64_FETCH_OP(_acquire, op)					\
+	ATOMIC64_FETCH_OP(_release, op)					\
+	ATOMIC64_FETCH_OP(        , op)
+
+ATOMIC64_FETCH_OPS(atomic64_fetch_andnot)
+ATOMIC64_FETCH_OPS(atomic64_fetch_or)
+ATOMIC64_FETCH_OPS(atomic64_fetch_xor)
+ATOMIC64_FETCH_OPS(atomic64_fetch_add)
+ATOMIC64_FETCH_OPS(atomic64_fetch_and)
+ATOMIC64_FETCH_OPS(atomic64_fetch_sub)
+ATOMIC64_FETCH_OPS(atomic64_add_return)
+ATOMIC64_FETCH_OPS(atomic64_sub_return)
+
+
+static inline long arch_atomic64_dec_if_positive(atomic64_t *v)
+{
+	return __lse_ll_sc_body(atomic64_dec_if_positive, v);
+}
+
+#define __CMPXCHG_CASE(name, sz)			\
+static inline u##sz __cmpxchg_case_##name##sz(volatile void *ptr,	\
+					      u##sz old,		\
+					      u##sz new)		\
+{									\
+	return __lse_ll_sc_body(_cmpxchg_case_##name##sz,		\
+				ptr, old, new);				\
+}
+
+__CMPXCHG_CASE(    ,  8)
+__CMPXCHG_CASE(    , 16)
+__CMPXCHG_CASE(    , 32)
+__CMPXCHG_CASE(    , 64)
+__CMPXCHG_CASE(acq_,  8)
+__CMPXCHG_CASE(acq_, 16)
+__CMPXCHG_CASE(acq_, 32)
+__CMPXCHG_CASE(acq_, 64)
+__CMPXCHG_CASE(rel_,  8)
+__CMPXCHG_CASE(rel_, 16)
+__CMPXCHG_CASE(rel_, 32)
+__CMPXCHG_CASE(rel_, 64)
+__CMPXCHG_CASE(mb_,  8)
+__CMPXCHG_CASE(mb_, 16)
+__CMPXCHG_CASE(mb_, 32)
+__CMPXCHG_CASE(mb_, 64)
+
+
+#define __CMPXCHG_DBL(name)						\
+static inline long __cmpxchg_double##name(unsigned long old1,		\
+					 unsigned long old2,		\
+					 unsigned long new1,		\
+					 unsigned long new2,		\
+					 volatile void *ptr)		\
+{									\
+	return __lse_ll_sc_body(_cmpxchg_double##name, 			\
+				old1, old2, new1, new2, ptr);		\
+}
+
+__CMPXCHG_DBL(   )
+__CMPXCHG_DBL(_mb)
+
+#endif	/* __ASM_ATOMIC_LSE_H */
diff --git a/arch/arm64/include/asm/atomic_ll_sc.h b/arch/arm64/include/asm/atomic_ll_sc.h
index 6dd011e0b434..95091f72228b 100644
--- a/arch/arm64/include/asm/atomic_ll_sc.h
+++ b/arch/arm64/include/asm/atomic_ll_sc.h
@@ -10,83 +10,86 @@
 #ifndef __ASM_ATOMIC_LL_SC_H
 #define __ASM_ATOMIC_LL_SC_H
 
-#ifndef __ARM64_IN_ATOMIC_IMPL
-#error "please don't include this file directly"
+#if IS_ENABLED(CONFIG_ARM64_LSE_ATOMICS) && IS_ENABLED(CONFIG_AS_LSE)
+#define __LL_SC_FALLBACK(asm_ops)					\
+"	b	3f\n"							\
+"	.subsection	1\n"						\
+"3:\n"									\
+asm_ops "\n"								\
+"	b	4f\n"							\
+"	.previous\n"							\
+"4:\n"
+#else
+#define __LL_SC_FALLBACK(asm_ops) asm_ops
 #endif
 
 /*
  * AArch64 UP and SMP safe atomic ops.  We use load exclusive and
  * store exclusive to ensure that these are atomic.  We may loop
  * to ensure that the update happens.
- *
- * NOTE: these functions do *not* follow the PCS and must explicitly
- * save any clobbered registers other than x0 (regardless of return
- * value).  This is achieved through -fcall-saved-* compiler flags for
- * this file, which unfortunately don't work on a per-function basis
- * (the optimize attribute silently ignores these options).
  */
 
 #define ATOMIC_OP(op, asm_op, constraint)				\
-__LL_SC_INLINE void							\
-__LL_SC_PREFIX(arch_atomic_##op(int i, atomic_t *v))			\
+static inline void							\
+__ll_sc_atomic_##op(int i, atomic_t *v)					\
 {									\
 	unsigned long tmp;						\
 	int result;							\
 									\
 	asm volatile("// atomic_" #op "\n"				\
+	__LL_SC_FALLBACK(						\
 "	prfm	pstl1strm, %2\n"					\
 "1:	ldxr	%w0, %2\n"						\
 "	" #asm_op "	%w0, %w0, %w3\n"				\
 "	stxr	%w1, %w0, %2\n"						\
-"	cbnz	%w1, 1b"						\
+"	cbnz	%w1, 1b\n")						\
 	: "=&r" (result), "=&r" (tmp), "+Q" (v->counter)		\
 	: #constraint "r" (i));						\
-}									\
-__LL_SC_EXPORT(arch_atomic_##op);
+}
 
 #define ATOMIC_OP_RETURN(name, mb, acq, rel, cl, op, asm_op, constraint)\
-__LL_SC_INLINE int							\
-__LL_SC_PREFIX(arch_atomic_##op##_return##name(int i, atomic_t *v))	\
+static inline int							\
+__ll_sc_atomic_##op##_return##name(int i, atomic_t *v)			\
 {									\
 	unsigned long tmp;						\
 	int result;							\
 									\
 	asm volatile("// atomic_" #op "_return" #name "\n"		\
+	__LL_SC_FALLBACK(						\
 "	prfm	pstl1strm, %2\n"					\
 "1:	ld" #acq "xr	%w0, %2\n"					\
 "	" #asm_op "	%w0, %w0, %w3\n"				\
 "	st" #rel "xr	%w1, %w0, %2\n"					\
 "	cbnz	%w1, 1b\n"						\
-"	" #mb								\
+"	" #mb )								\
 	: "=&r" (result), "=&r" (tmp), "+Q" (v->counter)		\
 	: #constraint "r" (i)						\
 	: cl);								\
 									\
 	return result;							\
-}									\
-__LL_SC_EXPORT(arch_atomic_##op##_return##name);
+}
 
-#define ATOMIC_FETCH_OP(name, mb, acq, rel, cl, op, asm_op, constraint)	\
-__LL_SC_INLINE int							\
-__LL_SC_PREFIX(arch_atomic_fetch_##op##name(int i, atomic_t *v))	\
+#define ATOMIC_FETCH_OP(name, mb, acq, rel, cl, op, asm_op, constraint) \
+static inline int							\
+__ll_sc_atomic_fetch_##op##name(int i, atomic_t *v)			\
 {									\
 	unsigned long tmp;						\
 	int val, result;						\
 									\
 	asm volatile("// atomic_fetch_" #op #name "\n"			\
+	__LL_SC_FALLBACK(						\
 "	prfm	pstl1strm, %3\n"					\
 "1:	ld" #acq "xr	%w0, %3\n"					\
 "	" #asm_op "	%w1, %w0, %w4\n"				\
 "	st" #rel "xr	%w2, %w1, %3\n"					\
 "	cbnz	%w2, 1b\n"						\
-"	" #mb								\
+"	" #mb )								\
 	: "=&r" (result), "=&r" (val), "=&r" (tmp), "+Q" (v->counter)	\
 	: #constraint "r" (i)						\
 	: cl);								\
 									\
 	return result;							\
-}									\
-__LL_SC_EXPORT(arch_atomic_fetch_##op##name);
+}
 
 #define ATOMIC_OPS(...)							\
 	ATOMIC_OP(__VA_ARGS__)						\
@@ -121,66 +124,66 @@ ATOMIC_OPS(xor, eor, )
 #undef ATOMIC_OP
 
 #define ATOMIC64_OP(op, asm_op, constraint)				\
-__LL_SC_INLINE void							\
-__LL_SC_PREFIX(arch_atomic64_##op(s64 i, atomic64_t *v))		\
+static inline void							\
+__ll_sc_atomic64_##op(s64 i, atomic64_t *v)				\
 {									\
 	s64 result;							\
 	unsigned long tmp;						\
 									\
 	asm volatile("// atomic64_" #op "\n"				\
+	__LL_SC_FALLBACK(						\
 "	prfm	pstl1strm, %2\n"					\
 "1:	ldxr	%0, %2\n"						\
 "	" #asm_op "	%0, %0, %3\n"					\
 "	stxr	%w1, %0, %2\n"						\
-"	cbnz	%w1, 1b"						\
+"	cbnz	%w1, 1b")						\
 	: "=&r" (result), "=&r" (tmp), "+Q" (v->counter)		\
 	: #constraint "r" (i));						\
-}									\
-__LL_SC_EXPORT(arch_atomic64_##op);
+}
 
 #define ATOMIC64_OP_RETURN(name, mb, acq, rel, cl, op, asm_op, constraint)\
-__LL_SC_INLINE s64							\
-__LL_SC_PREFIX(arch_atomic64_##op##_return##name(s64 i, atomic64_t *v))\
+static inline long							\
+__ll_sc_atomic64_##op##_return##name(s64 i, atomic64_t *v)		\
 {									\
 	s64 result;							\
 	unsigned long tmp;						\
 									\
 	asm volatile("// atomic64_" #op "_return" #name "\n"		\
+	__LL_SC_FALLBACK(						\
 "	prfm	pstl1strm, %2\n"					\
 "1:	ld" #acq "xr	%0, %2\n"					\
 "	" #asm_op "	%0, %0, %3\n"					\
 "	st" #rel "xr	%w1, %0, %2\n"					\
 "	cbnz	%w1, 1b\n"						\
-"	" #mb								\
+"	" #mb )								\
 	: "=&r" (result), "=&r" (tmp), "+Q" (v->counter)		\
 	: #constraint "r" (i)						\
 	: cl);								\
 									\
 	return result;							\
-}									\
-__LL_SC_EXPORT(arch_atomic64_##op##_return##name);
+}
 
 #define ATOMIC64_FETCH_OP(name, mb, acq, rel, cl, op, asm_op, constraint)\
-__LL_SC_INLINE s64							\
-__LL_SC_PREFIX(arch_atomic64_fetch_##op##name(s64 i, atomic64_t *v))	\
+static inline long							\
+__ll_sc_atomic64_fetch_##op##name(s64 i, atomic64_t *v)		\
 {									\
 	s64 result, val;						\
 	unsigned long tmp;						\
 									\
 	asm volatile("// atomic64_fetch_" #op #name "\n"		\
+	__LL_SC_FALLBACK(						\
 "	prfm	pstl1strm, %3\n"					\
 "1:	ld" #acq "xr	%0, %3\n"					\
 "	" #asm_op "	%1, %0, %4\n"					\
 "	st" #rel "xr	%w2, %1, %3\n"					\
 "	cbnz	%w2, 1b\n"						\
-"	" #mb								\
+"	" #mb )								\
 	: "=&r" (result), "=&r" (val), "=&r" (tmp), "+Q" (v->counter)	\
 	: #constraint "r" (i)						\
 	: cl);								\
 									\
 	return result;							\
-}									\
-__LL_SC_EXPORT(arch_atomic64_fetch_##op##name);
+}
 
 #define ATOMIC64_OPS(...)						\
 	ATOMIC64_OP(__VA_ARGS__)					\
@@ -214,13 +217,14 @@ ATOMIC64_OPS(xor, eor, L)
 #undef ATOMIC64_OP_RETURN
 #undef ATOMIC64_OP
 
-__LL_SC_INLINE s64
-__LL_SC_PREFIX(arch_atomic64_dec_if_positive(atomic64_t *v))
+static inline s64
+__ll_sc_atomic64_dec_if_positive(atomic64_t *v)
 {
 	s64 result;
 	unsigned long tmp;
 
 	asm volatile("// atomic64_dec_if_positive\n"
+	__LL_SC_FALLBACK(
 "	prfm	pstl1strm, %2\n"
 "1:	ldxr	%0, %2\n"
 "	subs	%0, %0, #1\n"
@@ -228,20 +232,19 @@ __LL_SC_PREFIX(arch_atomic64_dec_if_positive(atomic64_t *v))
 "	stlxr	%w1, %0, %2\n"
 "	cbnz	%w1, 1b\n"
 "	dmb	ish\n"
-"2:"
+"2:")
 	: "=&r" (result), "=&r" (tmp), "+Q" (v->counter)
 	:
 	: "cc", "memory");
 
 	return result;
 }
-__LL_SC_EXPORT(arch_atomic64_dec_if_positive);
 
 #define __CMPXCHG_CASE(w, sfx, name, sz, mb, acq, rel, cl, constraint)	\
-__LL_SC_INLINE u##sz							\
-__LL_SC_PREFIX(__cmpxchg_case_##name##sz(volatile void *ptr,		\
+static inline u##sz							\
+__ll_sc__cmpxchg_case_##name##sz(volatile void *ptr,			\
 					 unsigned long old,		\
-					 u##sz new))			\
+					 u##sz new)			\
 {									\
 	unsigned long tmp;						\
 	u##sz oldval;							\
@@ -255,6 +258,7 @@ __LL_SC_PREFIX(__cmpxchg_case_##name##sz(volatile void *ptr,		\
 		old = (u##sz)old;					\
 									\
 	asm volatile(							\
+	__LL_SC_FALLBACK(						\
 	"	prfm	pstl1strm, %[v]\n"				\
 	"1:	ld" #acq "xr" #sfx "\t%" #w "[oldval], %[v]\n"		\
 	"	eor	%" #w "[tmp], %" #w "[oldval], %" #w "[old]\n"	\
@@ -262,15 +266,14 @@ __LL_SC_PREFIX(__cmpxchg_case_##name##sz(volatile void *ptr,		\
 	"	st" #rel "xr" #sfx "\t%w[tmp], %" #w "[new], %[v]\n"	\
 	"	cbnz	%w[tmp], 1b\n"					\
 	"	" #mb "\n"						\
-	"2:"								\
+	"2:")								\
 	: [tmp] "=&r" (tmp), [oldval] "=&r" (oldval),			\
 	  [v] "+Q" (*(u##sz *)ptr)					\
 	: [old] #constraint "r" (old), [new] "r" (new)			\
 	: cl);								\
 									\
 	return oldval;							\
-}									\
-__LL_SC_EXPORT(__cmpxchg_case_##name##sz);
+}
 
 /*
  * Earlier versions of GCC (no later than 8.1.0) appear to incorrectly
@@ -297,16 +300,17 @@ __CMPXCHG_CASE( ,  ,  mb_, 64, dmb ish,  , l, "memory", L)
 #undef __CMPXCHG_CASE
 
 #define __CMPXCHG_DBL(name, mb, rel, cl)				\
-__LL_SC_INLINE long							\
-__LL_SC_PREFIX(__cmpxchg_double##name(unsigned long old1,		\
+static inline long							\
+__ll_sc__cmpxchg_double##name(unsigned long old1,			\
 				      unsigned long old2,		\
 				      unsigned long new1,		\
 				      unsigned long new2,		\
-				      volatile void *ptr))		\
+				      volatile void *ptr)		\
 {									\
 	unsigned long tmp, ret;						\
 									\
 	asm volatile("// __cmpxchg_double" #name "\n"			\
+	__LL_SC_FALLBACK(						\
 	"	prfm	pstl1strm, %2\n"				\
 	"1:	ldxp	%0, %1, %2\n"					\
 	"	eor	%0, %0, %3\n"					\
@@ -316,14 +320,13 @@ __LL_SC_PREFIX(__cmpxchg_double##name(unsigned long old1,		\
 	"	st" #rel "xp	%w0, %5, %6, %2\n"			\
 	"	cbnz	%w0, 1b\n"					\
 	"	" #mb "\n"						\
-	"2:"								\
+	"2:")								\
 	: "=&r" (tmp), "=&r" (ret), "+Q" (*(unsigned long *)ptr)	\
 	: "r" (old1), "r" (old2), "r" (new1), "r" (new2)		\
 	: cl);								\
 									\
 	return ret;							\
-}									\
-__LL_SC_EXPORT(__cmpxchg_double##name);
+}
 
 __CMPXCHG_DBL(   ,        ,  ,         )
 __CMPXCHG_DBL(_mb, dmb ish, l, "memory")
diff --git a/arch/arm64/include/asm/atomic_lse.h b/arch/arm64/include/asm/atomic_lse.h
index 69acb1c19a15..7dce5e1f074e 100644
--- a/arch/arm64/include/asm/atomic_lse.h
+++ b/arch/arm64/include/asm/atomic_lse.h
@@ -10,22 +10,13 @@
 #ifndef __ASM_ATOMIC_LSE_H
 #define __ASM_ATOMIC_LSE_H
 
-#ifndef __ARM64_IN_ATOMIC_IMPL
-#error "please don't include this file directly"
-#endif
-
-#define __LL_SC_ATOMIC(op)	__LL_SC_CALL(arch_atomic_##op)
 #define ATOMIC_OP(op, asm_op)						\
-static inline void arch_atomic_##op(int i, atomic_t *v)			\
+static inline void __lse_atomic_##op(int i, atomic_t *v)			\
 {									\
-	register int w0 asm ("w0") = i;					\
-	register atomic_t *x1 asm ("x1") = v;				\
-									\
-	asm volatile(ARM64_LSE_ATOMIC_INSN(__LL_SC_ATOMIC(op),		\
-"	" #asm_op "	%w[i], %[v]\n")					\
-	: [i] "+r" (w0), [v] "+Q" (v->counter)				\
-	: "r" (x1)							\
-	: __LL_SC_CLOBBERS);						\
+	asm volatile(							\
+"	" #asm_op "	%w[i], %[v]\n"					\
+	: [i] "+r" (i), [v] "+Q" (v->counter)				\
+	: "r" (v));							\
 }
 
 ATOMIC_OP(andnot, stclr)
@@ -36,21 +27,15 @@ ATOMIC_OP(add, stadd)
 #undef ATOMIC_OP
 
 #define ATOMIC_FETCH_OP(name, mb, op, asm_op, cl...)			\
-static inline int arch_atomic_fetch_##op##name(int i, atomic_t *v)	\
+static inline int __lse_atomic_fetch_##op##name(int i, atomic_t *v)	\
 {									\
-	register int w0 asm ("w0") = i;					\
-	register atomic_t *x1 asm ("x1") = v;				\
-									\
-	asm volatile(ARM64_LSE_ATOMIC_INSN(				\
-	/* LL/SC */							\
-	__LL_SC_ATOMIC(fetch_##op##name),				\
-	/* LSE atomics */						\
-"	" #asm_op #mb "	%w[i], %w[i], %[v]")				\
-	: [i] "+r" (w0), [v] "+Q" (v->counter)				\
-	: "r" (x1)							\
-	: __LL_SC_CLOBBERS, ##cl);					\
+	asm volatile(							\
+"	" #asm_op #mb "	%w[i], %w[i], %[v]"				\
+	: [i] "+r" (i), [v] "+Q" (v->counter)				\
+	: "r" (v)							\
+	: cl);								\
 									\
-	return w0;							\
+	return i;							\
 }
 
 #define ATOMIC_FETCH_OPS(op, asm_op)					\
@@ -68,23 +53,16 @@ ATOMIC_FETCH_OPS(add, ldadd)
 #undef ATOMIC_FETCH_OPS
 
 #define ATOMIC_OP_ADD_RETURN(name, mb, cl...)				\
-static inline int arch_atomic_add_return##name(int i, atomic_t *v)	\
+static inline int __lse_atomic_add_return##name(int i, atomic_t *v)	\
 {									\
-	register int w0 asm ("w0") = i;					\
-	register atomic_t *x1 asm ("x1") = v;				\
-									\
-	asm volatile(ARM64_LSE_ATOMIC_INSN(				\
-	/* LL/SC */							\
-	__LL_SC_ATOMIC(add_return##name)				\
-	__nops(1),							\
-	/* LSE atomics */						\
+	asm volatile(							\
 	"	ldadd" #mb "	%w[i], w30, %[v]\n"			\
-	"	add	%w[i], %w[i], w30")				\
-	: [i] "+r" (w0), [v] "+Q" (v->counter)				\
-	: "r" (x1)							\
-	: __LL_SC_CLOBBERS, ##cl);					\
+	"	add	%w[i], %w[i], w30"				\
+	: [i] "+r" (i), [v] "+Q" (v->counter)				\
+	: "r" (v)							\
+	: "x30", ##cl);							\
 									\
-	return w0;							\
+	return i;							\
 }
 
 ATOMIC_OP_ADD_RETURN(_relaxed,   )
@@ -94,41 +72,26 @@ ATOMIC_OP_ADD_RETURN(        , al, "memory")
 
 #undef ATOMIC_OP_ADD_RETURN
 
-static inline void arch_atomic_and(int i, atomic_t *v)
+static inline void __lse_atomic_and(int i, atomic_t *v)
 {
-	register int w0 asm ("w0") = i;
-	register atomic_t *x1 asm ("x1") = v;
-
-	asm volatile(ARM64_LSE_ATOMIC_INSN(
-	/* LL/SC */
-	__LL_SC_ATOMIC(and)
-	__nops(1),
-	/* LSE atomics */
+	asm volatile(
 	"	mvn	%w[i], %w[i]\n"
-	"	stclr	%w[i], %[v]")
-	: [i] "+&r" (w0), [v] "+Q" (v->counter)
-	: "r" (x1)
-	: __LL_SC_CLOBBERS);
+	"	stclr	%w[i], %[v]"
+	: [i] "+&r" (i), [v] "+Q" (v->counter)
+	: "r" (v));
 }
 
 #define ATOMIC_FETCH_OP_AND(name, mb, cl...)				\
-static inline int arch_atomic_fetch_and##name(int i, atomic_t *v)	\
+static inline int __lse_atomic_fetch_and##name(int i, atomic_t *v)	\
 {									\
-	register int w0 asm ("w0") = i;					\
-	register atomic_t *x1 asm ("x1") = v;				\
-									\
-	asm volatile(ARM64_LSE_ATOMIC_INSN(				\
-	/* LL/SC */							\
-	__LL_SC_ATOMIC(fetch_and##name)					\
-	__nops(1),							\
-	/* LSE atomics */						\
+	asm volatile(							\
 	"	mvn	%w[i], %w[i]\n"					\
-	"	ldclr" #mb "	%w[i], %w[i], %[v]")			\
-	: [i] "+&r" (w0), [v] "+Q" (v->counter)				\
-	: "r" (x1)							\
-	: __LL_SC_CLOBBERS, ##cl);					\
+	"	ldclr" #mb "	%w[i], %w[i], %[v]"			\
+	: [i] "+&r" (i), [v] "+Q" (v->counter)				\
+	: "r" (v)							\
+	: cl);								\
 									\
-	return w0;							\
+	return i;							\
 }
 
 ATOMIC_FETCH_OP_AND(_relaxed,   )
@@ -138,42 +101,27 @@ ATOMIC_FETCH_OP_AND(        , al, "memory")
 
 #undef ATOMIC_FETCH_OP_AND
 
-static inline void arch_atomic_sub(int i, atomic_t *v)
+static inline void __lse_atomic_sub(int i, atomic_t *v)
 {
-	register int w0 asm ("w0") = i;
-	register atomic_t *x1 asm ("x1") = v;
-
-	asm volatile(ARM64_LSE_ATOMIC_INSN(
-	/* LL/SC */
-	__LL_SC_ATOMIC(sub)
-	__nops(1),
-	/* LSE atomics */
+	asm volatile(
 	"	neg	%w[i], %w[i]\n"
-	"	stadd	%w[i], %[v]")
-	: [i] "+&r" (w0), [v] "+Q" (v->counter)
-	: "r" (x1)
-	: __LL_SC_CLOBBERS);
+	"	stadd	%w[i], %[v]"
+	: [i] "+&r" (i), [v] "+Q" (v->counter)
+	: "r" (v));
 }
 
 #define ATOMIC_OP_SUB_RETURN(name, mb, cl...)				\
-static inline int arch_atomic_sub_return##name(int i, atomic_t *v)	\
+static inline int __lse_atomic_sub_return##name(int i, atomic_t *v)	\
 {									\
-	register int w0 asm ("w0") = i;					\
-	register atomic_t *x1 asm ("x1") = v;				\
-									\
-	asm volatile(ARM64_LSE_ATOMIC_INSN(				\
-	/* LL/SC */							\
-	__LL_SC_ATOMIC(sub_return##name)				\
-	__nops(2),							\
-	/* LSE atomics */						\
+	asm volatile(							\
 	"	neg	%w[i], %w[i]\n"					\
 	"	ldadd" #mb "	%w[i], w30, %[v]\n"			\
-	"	add	%w[i], %w[i], w30")				\
-	: [i] "+&r" (w0), [v] "+Q" (v->counter)				\
-	: "r" (x1)							\
-	: __LL_SC_CLOBBERS , ##cl);					\
+	"	add	%w[i], %w[i], w30"				\
+	: [i] "+&r" (i), [v] "+Q" (v->counter)				\
+	: "r" (v)							\
+	: "x30", ##cl);							\
 									\
-	return w0;							\
+	return i;							\
 }
 
 ATOMIC_OP_SUB_RETURN(_relaxed,   )
@@ -184,23 +132,16 @@ ATOMIC_OP_SUB_RETURN(        , al, "memory")
 #undef ATOMIC_OP_SUB_RETURN
 
 #define ATOMIC_FETCH_OP_SUB(name, mb, cl...)				\
-static inline int arch_atomic_fetch_sub##name(int i, atomic_t *v)	\
+static inline int __lse_atomic_fetch_sub##name(int i, atomic_t *v)	\
 {									\
-	register int w0 asm ("w0") = i;					\
-	register atomic_t *x1 asm ("x1") = v;				\
-									\
-	asm volatile(ARM64_LSE_ATOMIC_INSN(				\
-	/* LL/SC */							\
-	__LL_SC_ATOMIC(fetch_sub##name)					\
-	__nops(1),							\
-	/* LSE atomics */						\
+	asm volatile(							\
 	"	neg	%w[i], %w[i]\n"					\
-	"	ldadd" #mb "	%w[i], %w[i], %[v]")			\
-	: [i] "+&r" (w0), [v] "+Q" (v->counter)				\
-	: "r" (x1)							\
-	: __LL_SC_CLOBBERS, ##cl);					\
+	"	ldadd" #mb "	%w[i], %w[i], %[v]"			\
+	: [i] "+&r" (i), [v] "+Q" (v->counter)				\
+	: "r" (v)							\
+	: cl);								\
 									\
-	return w0;							\
+	return i;							\
 }
 
 ATOMIC_FETCH_OP_SUB(_relaxed,   )
@@ -209,20 +150,14 @@ ATOMIC_FETCH_OP_SUB(_release,  l, "memory")
 ATOMIC_FETCH_OP_SUB(        , al, "memory")
 
 #undef ATOMIC_FETCH_OP_SUB
-#undef __LL_SC_ATOMIC
 
-#define __LL_SC_ATOMIC64(op)	__LL_SC_CALL(arch_atomic64_##op)
 #define ATOMIC64_OP(op, asm_op)						\
-static inline void arch_atomic64_##op(s64 i, atomic64_t *v)		\
+static inline void __lse_atomic64_##op(s64 i, atomic64_t *v)		\
 {									\
-	register s64 x0 asm ("x0") = i;					\
-	register atomic64_t *x1 asm ("x1") = v;				\
-									\
-	asm volatile(ARM64_LSE_ATOMIC_INSN(__LL_SC_ATOMIC64(op),	\
-"	" #asm_op "	%[i], %[v]\n")					\
-	: [i] "+r" (x0), [v] "+Q" (v->counter)				\
-	: "r" (x1)							\
-	: __LL_SC_CLOBBERS);						\
+	asm volatile(							\
+"	" #asm_op "	%[i], %[v]\n"					\
+	: [i] "+r" (i), [v] "+Q" (v->counter)				\
+	: "r" (v));							\
 }
 
 ATOMIC64_OP(andnot, stclr)
@@ -233,21 +168,15 @@ ATOMIC64_OP(add, stadd)
 #undef ATOMIC64_OP
 
 #define ATOMIC64_FETCH_OP(name, mb, op, asm_op, cl...)			\
-static inline s64 arch_atomic64_fetch_##op##name(s64 i, atomic64_t *v)	\
+static inline long __lse_atomic64_fetch_##op##name(s64 i, atomic64_t *v)\
 {									\
-	register s64 x0 asm ("x0") = i;					\
-	register atomic64_t *x1 asm ("x1") = v;				\
-									\
-	asm volatile(ARM64_LSE_ATOMIC_INSN(				\
-	/* LL/SC */							\
-	__LL_SC_ATOMIC64(fetch_##op##name),				\
-	/* LSE atomics */						\
-"	" #asm_op #mb "	%[i], %[i], %[v]")				\
-	: [i] "+r" (x0), [v] "+Q" (v->counter)				\
-	: "r" (x1)							\
-	: __LL_SC_CLOBBERS, ##cl);					\
+	asm volatile(							\
+"	" #asm_op #mb "	%[i], %[i], %[v]"				\
+	: [i] "+r" (i), [v] "+Q" (v->counter)				\
+	: "r" (v)							\
+	: cl);								\
 									\
-	return x0;							\
+	return i;							\
 }
 
 #define ATOMIC64_FETCH_OPS(op, asm_op)					\
@@ -265,23 +194,16 @@ ATOMIC64_FETCH_OPS(add, ldadd)
 #undef ATOMIC64_FETCH_OPS
 
 #define ATOMIC64_OP_ADD_RETURN(name, mb, cl...)				\
-static inline s64 arch_atomic64_add_return##name(s64 i, atomic64_t *v)	\
+static inline long __lse_atomic64_add_return##name(s64 i, atomic64_t *v)\
 {									\
-	register s64 x0 asm ("x0") = i;					\
-	register atomic64_t *x1 asm ("x1") = v;				\
-									\
-	asm volatile(ARM64_LSE_ATOMIC_INSN(				\
-	/* LL/SC */							\
-	__LL_SC_ATOMIC64(add_return##name)				\
-	__nops(1),							\
-	/* LSE atomics */						\
+	asm volatile(							\
 	"	ldadd" #mb "	%[i], x30, %[v]\n"			\
-	"	add	%[i], %[i], x30")				\
-	: [i] "+r" (x0), [v] "+Q" (v->counter)				\
-	: "r" (x1)							\
-	: __LL_SC_CLOBBERS, ##cl);					\
+	"	add	%[i], %[i], x30"				\
+	: [i] "+r" (i), [v] "+Q" (v->counter)				\
+	: "r" (v)							\
+	: "x30", ##cl);							\
 									\
-	return x0;							\
+	return i;							\
 }
 
 ATOMIC64_OP_ADD_RETURN(_relaxed,   )
@@ -291,41 +213,26 @@ ATOMIC64_OP_ADD_RETURN(        , al, "memory")
 
 #undef ATOMIC64_OP_ADD_RETURN
 
-static inline void arch_atomic64_and(s64 i, atomic64_t *v)
+static inline void __lse_atomic64_and(s64 i, atomic64_t *v)
 {
-	register s64 x0 asm ("x0") = i;
-	register atomic64_t *x1 asm ("x1") = v;
-
-	asm volatile(ARM64_LSE_ATOMIC_INSN(
-	/* LL/SC */
-	__LL_SC_ATOMIC64(and)
-	__nops(1),
-	/* LSE atomics */
+	asm volatile(
 	"	mvn	%[i], %[i]\n"
-	"	stclr	%[i], %[v]")
-	: [i] "+&r" (x0), [v] "+Q" (v->counter)
-	: "r" (x1)
-	: __LL_SC_CLOBBERS);
+	"	stclr	%[i], %[v]"
+	: [i] "+&r" (i), [v] "+Q" (v->counter)
+	: "r" (v));
 }
 
 #define ATOMIC64_FETCH_OP_AND(name, mb, cl...)				\
-static inline s64 arch_atomic64_fetch_and##name(s64 i, atomic64_t *v)	\
+static inline long __lse_atomic64_fetch_and##name(s64 i, atomic64_t *v)	\
 {									\
-	register s64 x0 asm ("x0") = i;					\
-	register atomic64_t *x1 asm ("x1") = v;				\
-									\
-	asm volatile(ARM64_LSE_ATOMIC_INSN(				\
-	/* LL/SC */							\
-	__LL_SC_ATOMIC64(fetch_and##name)				\
-	__nops(1),							\
-	/* LSE atomics */						\
+	asm volatile(							\
 	"	mvn	%[i], %[i]\n"					\
-	"	ldclr" #mb "	%[i], %[i], %[v]")			\
-	: [i] "+&r" (x0), [v] "+Q" (v->counter)				\
-	: "r" (x1)							\
-	: __LL_SC_CLOBBERS, ##cl);					\
+	"	ldclr" #mb "	%[i], %[i], %[v]"			\
+	: [i] "+&r" (i), [v] "+Q" (v->counter)				\
+	: "r" (v)							\
+	: cl);								\
 									\
-	return x0;							\
+	return i;							\
 }
 
 ATOMIC64_FETCH_OP_AND(_relaxed,   )
@@ -335,42 +242,27 @@ ATOMIC64_FETCH_OP_AND(        , al, "memory")
 
 #undef ATOMIC64_FETCH_OP_AND
 
-static inline void arch_atomic64_sub(s64 i, atomic64_t *v)
+static inline void __lse_atomic64_sub(s64 i, atomic64_t *v)
 {
-	register s64 x0 asm ("x0") = i;
-	register atomic64_t *x1 asm ("x1") = v;
-
-	asm volatile(ARM64_LSE_ATOMIC_INSN(
-	/* LL/SC */
-	__LL_SC_ATOMIC64(sub)
-	__nops(1),
-	/* LSE atomics */
+	asm volatile(
 	"	neg	%[i], %[i]\n"
-	"	stadd	%[i], %[v]")
-	: [i] "+&r" (x0), [v] "+Q" (v->counter)
-	: "r" (x1)
-	: __LL_SC_CLOBBERS);
+	"	stadd	%[i], %[v]"
+	: [i] "+&r" (i), [v] "+Q" (v->counter)
+	: "r" (v));
 }
 
 #define ATOMIC64_OP_SUB_RETURN(name, mb, cl...)				\
-static inline s64 arch_atomic64_sub_return##name(s64 i, atomic64_t *v)	\
+static inline long __lse_atomic64_sub_return##name(s64 i, atomic64_t *v)	\
 {									\
-	register s64 x0 asm ("x0") = i;					\
-	register atomic64_t *x1 asm ("x1") = v;				\
-									\
-	asm volatile(ARM64_LSE_ATOMIC_INSN(				\
-	/* LL/SC */							\
-	__LL_SC_ATOMIC64(sub_return##name)				\
-	__nops(2),							\
-	/* LSE atomics */						\
+	asm volatile(							\
 	"	neg	%[i], %[i]\n"					\
 	"	ldadd" #mb "	%[i], x30, %[v]\n"			\
-	"	add	%[i], %[i], x30")				\
-	: [i] "+&r" (x0), [v] "+Q" (v->counter)				\
-	: "r" (x1)							\
-	: __LL_SC_CLOBBERS, ##cl);					\
+	"	add	%[i], %[i], x30"				\
+	: [i] "+&r" (i), [v] "+Q" (v->counter)				\
+	: "r" (v)							\
+	: "x30", ##cl);							\
 									\
-	return x0;							\
+	return i;							\
 }
 
 ATOMIC64_OP_SUB_RETURN(_relaxed,   )
@@ -381,23 +273,16 @@ ATOMIC64_OP_SUB_RETURN(        , al, "memory")
 #undef ATOMIC64_OP_SUB_RETURN
 
 #define ATOMIC64_FETCH_OP_SUB(name, mb, cl...)				\
-static inline s64 arch_atomic64_fetch_sub##name(s64 i, atomic64_t *v)	\
+static inline long __lse_atomic64_fetch_sub##name(s64 i, atomic64_t *v)	\
 {									\
-	register s64 x0 asm ("x0") = i;					\
-	register atomic64_t *x1 asm ("x1") = v;				\
-									\
-	asm volatile(ARM64_LSE_ATOMIC_INSN(				\
-	/* LL/SC */							\
-	__LL_SC_ATOMIC64(fetch_sub##name)				\
-	__nops(1),							\
-	/* LSE atomics */						\
+	asm volatile(							\
 	"	neg	%[i], %[i]\n"					\
-	"	ldadd" #mb "	%[i], %[i], %[v]")			\
-	: [i] "+&r" (x0), [v] "+Q" (v->counter)				\
-	: "r" (x1)							\
-	: __LL_SC_CLOBBERS, ##cl);					\
+	"	ldadd" #mb "	%[i], %[i], %[v]"			\
+	: [i] "+&r" (i), [v] "+Q" (v->counter)				\
+	: "r" (v)							\
+	: cl);								\
 									\
-	return x0;							\
+	return i;							\
 }
 
 ATOMIC64_FETCH_OP_SUB(_relaxed,   )
@@ -407,15 +292,9 @@ ATOMIC64_FETCH_OP_SUB(        , al, "memory")
 
 #undef ATOMIC64_FETCH_OP_SUB
 
-static inline s64 arch_atomic64_dec_if_positive(atomic64_t *v)
+static inline s64 __lse_atomic64_dec_if_positive(atomic64_t *v)
 {
-	register long x0 asm ("x0") = (long)v;
-
-	asm volatile(ARM64_LSE_ATOMIC_INSN(
-	/* LL/SC */
-	__LL_SC_ATOMIC64(dec_if_positive)
-	__nops(6),
-	/* LSE atomics */
+	asm volatile(
 	"1:	ldr	x30, %[v]\n"
 	"	subs	%[ret], x30, #1\n"
 	"	b.lt	2f\n"
@@ -423,20 +302,16 @@ static inline s64 arch_atomic64_dec_if_positive(atomic64_t *v)
 	"	sub	x30, x30, #1\n"
 	"	sub	x30, x30, %[ret]\n"
 	"	cbnz	x30, 1b\n"
-	"2:")
-	: [ret] "+&r" (x0), [v] "+Q" (v->counter)
+	"2:"
+	: [ret] "+&r" (v), [v] "+Q" (v->counter)
 	:
-	: __LL_SC_CLOBBERS, "cc", "memory");
+	: "x30", "cc", "memory");
 
-	return x0;
+	return (long)v;
 }
 
-#undef __LL_SC_ATOMIC64
-
-#define __LL_SC_CMPXCHG(op)	__LL_SC_CALL(__cmpxchg_case_##op)
-
 #define __CMPXCHG_CASE(w, sfx, name, sz, mb, cl...)			\
-static inline u##sz __cmpxchg_case_##name##sz(volatile void *ptr,	\
+static inline u##sz __lse__cmpxchg_case_##name##sz(volatile void *ptr,	\
 					      u##sz old,		\
 					      u##sz new)		\
 {									\
@@ -444,17 +319,13 @@ static inline u##sz __cmpxchg_case_##name##sz(volatile void *ptr,	\
 	register u##sz x1 asm ("x1") = old;				\
 	register u##sz x2 asm ("x2") = new;				\
 									\
-	asm volatile(ARM64_LSE_ATOMIC_INSN(				\
-	/* LL/SC */							\
-	__LL_SC_CMPXCHG(name##sz)					\
-	__nops(2),							\
-	/* LSE atomics */						\
+	asm volatile(							\
 	"	mov	" #w "30, %" #w "[old]\n"			\
 	"	cas" #mb #sfx "\t" #w "30, %" #w "[new], %[v]\n"	\
-	"	mov	%" #w "[ret], " #w "30")			\
+	"	mov	%" #w "[ret], " #w "30"				\
 	: [ret] "+r" (x0), [v] "+Q" (*(unsigned long *)ptr)		\
 	: [old] "r" (x1), [new] "r" (x2)				\
-	: __LL_SC_CLOBBERS, ##cl);					\
+	: "x30", ##cl);							\
 									\
 	return x0;							\
 }
@@ -476,13 +347,10 @@ __CMPXCHG_CASE(w, h,  mb_, 16, al, "memory")
 __CMPXCHG_CASE(w,  ,  mb_, 32, al, "memory")
 __CMPXCHG_CASE(x,  ,  mb_, 64, al, "memory")
 
-#undef __LL_SC_CMPXCHG
 #undef __CMPXCHG_CASE
 
-#define __LL_SC_CMPXCHG_DBL(op)	__LL_SC_CALL(__cmpxchg_double##op)
-
 #define __CMPXCHG_DBL(name, mb, cl...)					\
-static inline long __cmpxchg_double##name(unsigned long old1,		\
+static inline long __lse__cmpxchg_double##name(unsigned long old1,	\
 					 unsigned long old2,		\
 					 unsigned long new1,		\
 					 unsigned long new2,		\
@@ -496,20 +364,16 @@ static inline long __cmpxchg_double##name(unsigned long old1,		\
 	register unsigned long x3 asm ("x3") = new2;			\
 	register unsigned long x4 asm ("x4") = (unsigned long)ptr;	\
 									\
-	asm volatile(ARM64_LSE_ATOMIC_INSN(				\
-	/* LL/SC */							\
-	__LL_SC_CMPXCHG_DBL(name)					\
-	__nops(3),							\
-	/* LSE atomics */						\
+	asm volatile(							\
 	"	casp" #mb "\t%[old1], %[old2], %[new1], %[new2], %[v]\n"\
 	"	eor	%[old1], %[old1], %[oldval1]\n"			\
 	"	eor	%[old2], %[old2], %[oldval2]\n"			\
-	"	orr	%[old1], %[old1], %[old2]")			\
+	"	orr	%[old1], %[old1], %[old2]"			\
 	: [old1] "+&r" (x0), [old2] "+&r" (x1),				\
 	  [v] "+Q" (*(unsigned long *)ptr)				\
 	: [new1] "r" (x2), [new2] "r" (x3), [ptr] "r" (x4),		\
 	  [oldval1] "r" (oldval1), [oldval2] "r" (oldval2)		\
-	: __LL_SC_CLOBBERS, ##cl);					\
+	: cl);								\
 									\
 	return x0;							\
 }
@@ -517,7 +381,6 @@ static inline long __cmpxchg_double##name(unsigned long old1,		\
 __CMPXCHG_DBL(   ,   )
 __CMPXCHG_DBL(_mb, al, "memory")
 
-#undef __LL_SC_CMPXCHG_DBL
 #undef __CMPXCHG_DBL
 
 #endif	/* __ASM_ATOMIC_LSE_H */
diff --git a/arch/arm64/include/asm/cmpxchg.h b/arch/arm64/include/asm/cmpxchg.h
index 7a299a20f6dc..e5fff8cd4904 100644
--- a/arch/arm64/include/asm/cmpxchg.h
+++ b/arch/arm64/include/asm/cmpxchg.h
@@ -10,7 +10,7 @@
 #include <linux/build_bug.h>
 #include <linux/compiler.h>
 
-#include <asm/atomic.h>
+#include <asm/atomic_arch.h>
 #include <asm/barrier.h>
 #include <asm/lse.h>
 
diff --git a/arch/arm64/include/asm/lse.h b/arch/arm64/include/asm/lse.h
index 8262325e2fc6..52b80846d1b7 100644
--- a/arch/arm64/include/asm/lse.h
+++ b/arch/arm64/include/asm/lse.h
@@ -22,14 +22,6 @@
 
 __asm__(".arch_extension	lse");
 
-/* Move the ll/sc atomics out-of-line */
-#define __LL_SC_INLINE		notrace
-#define __LL_SC_PREFIX(x)	__ll_sc_##x
-#define __LL_SC_EXPORT(x)	EXPORT_SYMBOL(__LL_SC_PREFIX(x))
-
-/* Macro for constructing calls to out-of-line ll/sc atomics */
-#define __LL_SC_CALL(op)	"bl\t" __stringify(__LL_SC_PREFIX(op)) "\n"
-#define __LL_SC_CLOBBERS	"x16", "x17", "x30"
 
 /* In-line patching at runtime */
 #define ARM64_LSE_ATOMIC_INSN(llsc, lse)				\
@@ -46,9 +38,6 @@ __asm__(".arch_extension	lse");
 
 #else	/* __ASSEMBLER__ */
 
-#define __LL_SC_INLINE		static inline
-#define __LL_SC_PREFIX(x)	x
-#define __LL_SC_EXPORT(x)
 
 #define ARM64_LSE_ATOMIC_INSN(llsc, lse)	llsc
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
