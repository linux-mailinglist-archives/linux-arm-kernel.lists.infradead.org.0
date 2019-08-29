Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2E8A1FEC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 17:52:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ucWyEQfYR/h+qA/fTXtRi85bm3vG6RlVYp0SlGXEqLM=; b=A1mQRUjS8crGzQE/D7HNLWHq49
	aFanfkinsYFpRpbRDcCFqrHVr7ITK8dws9druqvVV6eey8U794t59g54B9Ij3sDKCcVvua0Le5C5k
	/saSEOh5asN+ALFEcaMB1gCU/nfqghY5t7bZVCfu6x0z/MqfRZ/DtqnR7eb+h4ctHYBd8AIv3s0iq
	E8ApX6eHiNsZUS4wj1TOUUAuIupy23PqpEL9p5KrfgbFd8jKK/MojpjYJLL7gDpGI2oajPk1+WE3Z
	6Rv0xo59FWPCV4j3wxyoT7/CuI2P1bATuFvWRISNB4LnkkZix3hRFEkihzgPyyTQ8Wgp60KHV5yzj
	coDCnTOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3MiN-0004dl-3s; Thu, 29 Aug 2019 15:51:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3MfN-0001f8-8K
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 15:48:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C37361688;
 Thu, 29 Aug 2019 08:48:52 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6D34E3F718;
 Thu, 29 Aug 2019 08:48:51 -0700 (PDT)
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 07/10] arm64: asm: Kill 'asm/atomic_arch.h'
Date: Thu, 29 Aug 2019 16:48:31 +0100
Message-Id: <20190829154834.26547-8-will@kernel.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190829154834.26547-1-will@kernel.org>
References: <20190829154834.26547-1-will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_084853_485286_675C9699 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
 ndesaulniers@google.com, robin.murphy@arm.com, Ard.Biesheuvel@arm.com,
 andrew.murray@arm.com, natechancellor@gmail.com, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The contents of 'asm/atomic_arch.h' can be split across some of our
other 'asm/' headers. Remove it.

Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/atomic.h      |  77 ++++++++++++++++-
 arch/arm64/include/asm/atomic_arch.h | 155 -----------------------------------
 arch/arm64/include/asm/cmpxchg.h     |  41 ++++++++-
 arch/arm64/include/asm/lse.h         |  24 ++++++
 4 files changed, 140 insertions(+), 157 deletions(-)
 delete mode 100644 arch/arm64/include/asm/atomic_arch.h

diff --git a/arch/arm64/include/asm/atomic.h b/arch/arm64/include/asm/atomic.h
index c70d3f389d29..7c334337674d 100644
--- a/arch/arm64/include/asm/atomic.h
+++ b/arch/arm64/include/asm/atomic.h
@@ -17,9 +17,84 @@
 
 #ifdef __KERNEL__
 
-#include <asm/atomic_arch.h>
 #include <asm/cmpxchg.h>
 
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
+static inline long arch_atomic64_dec_if_positive(atomic64_t *v)
+{
+	return __lse_ll_sc_body(atomic64_dec_if_positive, v);
+}
+
 #define ATOMIC_INIT(i)	{ (i) }
 
 #define arch_atomic_read(v)			READ_ONCE((v)->counter)
diff --git a/arch/arm64/include/asm/atomic_arch.h b/arch/arm64/include/asm/atomic_arch.h
deleted file mode 100644
index 1aac7fc65084..000000000000
--- a/arch/arm64/include/asm/atomic_arch.h
+++ /dev/null
@@ -1,155 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/*
- * Selection between LSE and LL/SC atomics.
- *
- * Copyright (C) 2018 ARM Ltd.
- * Author: Andrew Murray <andrew.murray@arm.com>
- */
-
-#ifndef __ASM_ATOMIC_ARCH_H
-#define __ASM_ATOMIC_ARCH_H
-
-
-#include <linux/jump_label.h>
-
-#include <asm/cpucaps.h>
-#include <asm/atomic_ll_sc.h>
-#include <asm/atomic_lse.h>
-
-extern struct static_key_false cpu_hwcap_keys[ARM64_NCAPS];
-extern struct static_key_false arm64_const_caps_ready;
-
-static inline bool system_uses_lse_atomics(void)
-{
-	return (IS_ENABLED(CONFIG_ARM64_LSE_ATOMICS) &&
-		IS_ENABLED(CONFIG_AS_LSE) &&
-		static_branch_likely(&arm64_const_caps_ready)) &&
-		static_branch_likely(&cpu_hwcap_keys[ARM64_HAS_LSE_ATOMICS]);
-}
-
-#define __lse_ll_sc_body(op, ...)					\
-({									\
-	system_uses_lse_atomics() ?					\
-		__lse_##op(__VA_ARGS__) :				\
-		__ll_sc_##op(__VA_ARGS__);				\
-})
-
-#define ATOMIC_OP(op)							\
-static inline void arch_##op(int i, atomic_t *v)			\
-{									\
-	__lse_ll_sc_body(op, i, v);					\
-}
-
-ATOMIC_OP(atomic_andnot)
-ATOMIC_OP(atomic_or)
-ATOMIC_OP(atomic_xor)
-ATOMIC_OP(atomic_add)
-ATOMIC_OP(atomic_and)
-ATOMIC_OP(atomic_sub)
-
-
-#define ATOMIC_FETCH_OP(name, op)					\
-static inline int arch_##op##name(int i, atomic_t *v)			\
-{									\
-	return __lse_ll_sc_body(op##name, i, v);			\
-}
-
-#define ATOMIC_FETCH_OPS(op)						\
-	ATOMIC_FETCH_OP(_relaxed, op)					\
-	ATOMIC_FETCH_OP(_acquire, op)					\
-	ATOMIC_FETCH_OP(_release, op)					\
-	ATOMIC_FETCH_OP(        , op)
-
-ATOMIC_FETCH_OPS(atomic_fetch_andnot)
-ATOMIC_FETCH_OPS(atomic_fetch_or)
-ATOMIC_FETCH_OPS(atomic_fetch_xor)
-ATOMIC_FETCH_OPS(atomic_fetch_add)
-ATOMIC_FETCH_OPS(atomic_fetch_and)
-ATOMIC_FETCH_OPS(atomic_fetch_sub)
-ATOMIC_FETCH_OPS(atomic_add_return)
-ATOMIC_FETCH_OPS(atomic_sub_return)
-
-
-#define ATOMIC64_OP(op)							\
-static inline void arch_##op(long i, atomic64_t *v)			\
-{									\
-	__lse_ll_sc_body(op, i, v);					\
-}
-
-ATOMIC64_OP(atomic64_andnot)
-ATOMIC64_OP(atomic64_or)
-ATOMIC64_OP(atomic64_xor)
-ATOMIC64_OP(atomic64_add)
-ATOMIC64_OP(atomic64_and)
-ATOMIC64_OP(atomic64_sub)
-
-
-#define ATOMIC64_FETCH_OP(name, op)					\
-static inline long arch_##op##name(long i, atomic64_t *v)		\
-{									\
-	return __lse_ll_sc_body(op##name, i, v);			\
-}
-
-#define ATOMIC64_FETCH_OPS(op)						\
-	ATOMIC64_FETCH_OP(_relaxed, op)					\
-	ATOMIC64_FETCH_OP(_acquire, op)					\
-	ATOMIC64_FETCH_OP(_release, op)					\
-	ATOMIC64_FETCH_OP(        , op)
-
-ATOMIC64_FETCH_OPS(atomic64_fetch_andnot)
-ATOMIC64_FETCH_OPS(atomic64_fetch_or)
-ATOMIC64_FETCH_OPS(atomic64_fetch_xor)
-ATOMIC64_FETCH_OPS(atomic64_fetch_add)
-ATOMIC64_FETCH_OPS(atomic64_fetch_and)
-ATOMIC64_FETCH_OPS(atomic64_fetch_sub)
-ATOMIC64_FETCH_OPS(atomic64_add_return)
-ATOMIC64_FETCH_OPS(atomic64_sub_return)
-
-
-static inline long arch_atomic64_dec_if_positive(atomic64_t *v)
-{
-	return __lse_ll_sc_body(atomic64_dec_if_positive, v);
-}
-
-#define __CMPXCHG_CASE(name, sz)			\
-static inline u##sz __cmpxchg_case_##name##sz(volatile void *ptr,	\
-					      u##sz old,		\
-					      u##sz new)		\
-{									\
-	return __lse_ll_sc_body(_cmpxchg_case_##name##sz,		\
-				ptr, old, new);				\
-}
-
-__CMPXCHG_CASE(    ,  8)
-__CMPXCHG_CASE(    , 16)
-__CMPXCHG_CASE(    , 32)
-__CMPXCHG_CASE(    , 64)
-__CMPXCHG_CASE(acq_,  8)
-__CMPXCHG_CASE(acq_, 16)
-__CMPXCHG_CASE(acq_, 32)
-__CMPXCHG_CASE(acq_, 64)
-__CMPXCHG_CASE(rel_,  8)
-__CMPXCHG_CASE(rel_, 16)
-__CMPXCHG_CASE(rel_, 32)
-__CMPXCHG_CASE(rel_, 64)
-__CMPXCHG_CASE(mb_,  8)
-__CMPXCHG_CASE(mb_, 16)
-__CMPXCHG_CASE(mb_, 32)
-__CMPXCHG_CASE(mb_, 64)
-
-
-#define __CMPXCHG_DBL(name)						\
-static inline long __cmpxchg_double##name(unsigned long old1,		\
-					 unsigned long old2,		\
-					 unsigned long new1,		\
-					 unsigned long new2,		\
-					 volatile void *ptr)		\
-{									\
-	return __lse_ll_sc_body(_cmpxchg_double##name, 			\
-				old1, old2, new1, new2, ptr);		\
-}
-
-__CMPXCHG_DBL(   )
-__CMPXCHG_DBL(_mb)
-
-#endif	/* __ASM_ATOMIC_LSE_H */
diff --git a/arch/arm64/include/asm/cmpxchg.h b/arch/arm64/include/asm/cmpxchg.h
index e5fff8cd4904..afaba73e0b2c 100644
--- a/arch/arm64/include/asm/cmpxchg.h
+++ b/arch/arm64/include/asm/cmpxchg.h
@@ -10,7 +10,6 @@
 #include <linux/build_bug.h>
 #include <linux/compiler.h>
 
-#include <asm/atomic_arch.h>
 #include <asm/barrier.h>
 #include <asm/lse.h>
 
@@ -104,6 +103,46 @@ __XCHG_GEN(_mb)
 #define arch_xchg_release(...)	__xchg_wrapper(_rel, __VA_ARGS__)
 #define arch_xchg(...)		__xchg_wrapper( _mb, __VA_ARGS__)
 
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
 #define __CMPXCHG_GEN(sfx)						\
 static inline unsigned long __cmpxchg##sfx(volatile void *ptr,		\
 					   unsigned long old,		\
diff --git a/arch/arm64/include/asm/lse.h b/arch/arm64/include/asm/lse.h
index 08e818e53ed7..80b388278149 100644
--- a/arch/arm64/include/asm/lse.h
+++ b/arch/arm64/include/asm/lse.h
@@ -2,22 +2,46 @@
 #ifndef __ASM_LSE_H
 #define __ASM_LSE_H
 
+#include <asm/atomic_ll_sc.h>
+
 #if defined(CONFIG_AS_LSE) && defined(CONFIG_ARM64_LSE_ATOMICS)
 
 #include <linux/compiler_types.h>
 #include <linux/export.h>
+#include <linux/jump_label.h>
 #include <linux/stringify.h>
 #include <asm/alternative.h>
+#include <asm/atomic_lse.h>
 #include <asm/cpucaps.h>
 
 __asm__(".arch_extension	lse");
 
+extern struct static_key_false cpu_hwcap_keys[ARM64_NCAPS];
+extern struct static_key_false arm64_const_caps_ready;
+
+static inline bool system_uses_lse_atomics(void)
+{
+	return (static_branch_likely(&arm64_const_caps_ready)) &&
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
 /* In-line patching at runtime */
 #define ARM64_LSE_ATOMIC_INSN(llsc, lse)				\
 	ALTERNATIVE(llsc, lse, ARM64_HAS_LSE_ATOMICS)
 
 #else	/* CONFIG_AS_LSE && CONFIG_ARM64_LSE_ATOMICS */
 
+static inline bool system_uses_lse_atomics(void) { return false; }
+
+#define __lse_ll_sc_body(op, ...)		__ll_sc_##op(__VA_ARGS__)
+
 #define ARM64_LSE_ATOMIC_INSN(llsc, lse)	llsc
 
 #endif	/* CONFIG_AS_LSE && CONFIG_ARM64_LSE_ATOMICS */
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
