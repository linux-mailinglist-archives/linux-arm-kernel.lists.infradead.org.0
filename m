Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6529CA1FB4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 17:50:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Zgg341ud+TTivkgisk74/B/MxbyFCqo0A2g4jJMhC78=; b=QN8LZtqFWJa+NwNctjBJG5C9gU
	Y2alO60G3u2pSeeE4cY28yGyLdpyfT7WtGb8C36XXwV/Xvv7cZrleOejTA55fCncJ1X3Z9BimiBX/
	RiUdSFqdFJtoRNLyNzfvwRzU6eZ4Nsu2fuRX/UlChqiU5PhPlfAE8Xi/KiEZDjyIGI88YXh5XG2q8
	MpPhKXrYlMREKc1MwdPdemUrm7lC1smIndk7osSvYWOX+EDKuZ+RiIunlq5CsqmSMZ8J8bO7mM2BJ
	1f8FXyF+UQG2hBARDruCtS5/1i6o8DstxXVBeUr5lyfGQIuioWgOpnN6pNai6lwXUbF5nTDs9mM4C
	3vs1j6Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3MgO-0002A4-8O; Thu, 29 Aug 2019 15:49:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3MfF-0001Yg-JK
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 15:48:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CB1431570;
 Thu, 29 Aug 2019 08:48:44 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 772133F718;
 Thu, 29 Aug 2019 08:48:43 -0700 (PDT)
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 02/10] arm64: Use correct ll/sc atomic constraints
Date: Thu, 29 Aug 2019 16:48:26 +0100
Message-Id: <20190829154834.26547-3-will@kernel.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190829154834.26547-1-will@kernel.org>
References: <20190829154834.26547-1-will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_084845_809785_1297B8A6 
X-CRM114-Status: GOOD (  11.67  )
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

From: Andrew Murray <andrew.murray@arm.com>

The A64 ISA accepts distinct (but overlapping) ranges of immediates for:

 * add arithmetic instructions ('I' machine constraint)
 * sub arithmetic instructions ('J' machine constraint)
 * 32-bit logical instructions ('K' machine constraint)
 * 64-bit logical instructions ('L' machine constraint)

... but we currently use the 'I' constraint for many atomic operations
using sub or logical instructions, which is not always valid.

When CONFIG_ARM64_LSE_ATOMICS is not set, this allows invalid immediates
to be passed to instructions, potentially resulting in a build failure.
When CONFIG_ARM64_LSE_ATOMICS is selected the out-of-line ll/sc atomics
always use a register as they have no visibility of the value passed by
the caller.

This patch adds a constraint parameter to the ATOMIC_xx and
__CMPXCHG_CASE macros so that we can pass appropriate constraints for
each case, with uses updated accordingly.

Unfortunately prior to GCC 8.1.0 the 'K' constraint erroneously accepted
'4294967295', so we must instead force the use of a register.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/atomic_ll_sc.h | 89 ++++++++++++++++++-----------------
 1 file changed, 47 insertions(+), 42 deletions(-)

diff --git a/arch/arm64/include/asm/atomic_ll_sc.h b/arch/arm64/include/asm/atomic_ll_sc.h
index c8c850bc3dfb..6dd011e0b434 100644
--- a/arch/arm64/include/asm/atomic_ll_sc.h
+++ b/arch/arm64/include/asm/atomic_ll_sc.h
@@ -26,7 +26,7 @@
  * (the optimize attribute silently ignores these options).
  */
 
-#define ATOMIC_OP(op, asm_op)						\
+#define ATOMIC_OP(op, asm_op, constraint)				\
 __LL_SC_INLINE void							\
 __LL_SC_PREFIX(arch_atomic_##op(int i, atomic_t *v))			\
 {									\
@@ -40,11 +40,11 @@ __LL_SC_PREFIX(arch_atomic_##op(int i, atomic_t *v))			\
 "	stxr	%w1, %w0, %2\n"						\
 "	cbnz	%w1, 1b"						\
 	: "=&r" (result), "=&r" (tmp), "+Q" (v->counter)		\
-	: "Ir" (i));							\
+	: #constraint "r" (i));						\
 }									\
 __LL_SC_EXPORT(arch_atomic_##op);
 
-#define ATOMIC_OP_RETURN(name, mb, acq, rel, cl, op, asm_op)		\
+#define ATOMIC_OP_RETURN(name, mb, acq, rel, cl, op, asm_op, constraint)\
 __LL_SC_INLINE int							\
 __LL_SC_PREFIX(arch_atomic_##op##_return##name(int i, atomic_t *v))	\
 {									\
@@ -59,14 +59,14 @@ __LL_SC_PREFIX(arch_atomic_##op##_return##name(int i, atomic_t *v))	\
 "	cbnz	%w1, 1b\n"						\
 "	" #mb								\
 	: "=&r" (result), "=&r" (tmp), "+Q" (v->counter)		\
-	: "Ir" (i)							\
+	: #constraint "r" (i)						\
 	: cl);								\
 									\
 	return result;							\
 }									\
 __LL_SC_EXPORT(arch_atomic_##op##_return##name);
 
-#define ATOMIC_FETCH_OP(name, mb, acq, rel, cl, op, asm_op)		\
+#define ATOMIC_FETCH_OP(name, mb, acq, rel, cl, op, asm_op, constraint)	\
 __LL_SC_INLINE int							\
 __LL_SC_PREFIX(arch_atomic_fetch_##op##name(int i, atomic_t *v))	\
 {									\
@@ -81,7 +81,7 @@ __LL_SC_PREFIX(arch_atomic_fetch_##op##name(int i, atomic_t *v))	\
 "	cbnz	%w2, 1b\n"						\
 "	" #mb								\
 	: "=&r" (result), "=&r" (val), "=&r" (tmp), "+Q" (v->counter)	\
-	: "Ir" (i)							\
+	: #constraint "r" (i)						\
 	: cl);								\
 									\
 	return result;							\
@@ -99,8 +99,8 @@ __LL_SC_EXPORT(arch_atomic_fetch_##op##name);
 	ATOMIC_FETCH_OP (_acquire,        , a,  , "memory", __VA_ARGS__)\
 	ATOMIC_FETCH_OP (_release,        ,  , l, "memory", __VA_ARGS__)
 
-ATOMIC_OPS(add, add)
-ATOMIC_OPS(sub, sub)
+ATOMIC_OPS(add, add, I)
+ATOMIC_OPS(sub, sub, J)
 
 #undef ATOMIC_OPS
 #define ATOMIC_OPS(...)							\
@@ -110,17 +110,17 @@ ATOMIC_OPS(sub, sub)
 	ATOMIC_FETCH_OP (_acquire,        , a,  , "memory", __VA_ARGS__)\
 	ATOMIC_FETCH_OP (_release,        ,  , l, "memory", __VA_ARGS__)
 
-ATOMIC_OPS(and, and)
-ATOMIC_OPS(andnot, bic)
-ATOMIC_OPS(or, orr)
-ATOMIC_OPS(xor, eor)
+ATOMIC_OPS(and, and, )
+ATOMIC_OPS(andnot, bic, )
+ATOMIC_OPS(or, orr, )
+ATOMIC_OPS(xor, eor, )
 
 #undef ATOMIC_OPS
 #undef ATOMIC_FETCH_OP
 #undef ATOMIC_OP_RETURN
 #undef ATOMIC_OP
 
-#define ATOMIC64_OP(op, asm_op)						\
+#define ATOMIC64_OP(op, asm_op, constraint)				\
 __LL_SC_INLINE void							\
 __LL_SC_PREFIX(arch_atomic64_##op(s64 i, atomic64_t *v))		\
 {									\
@@ -134,11 +134,11 @@ __LL_SC_PREFIX(arch_atomic64_##op(s64 i, atomic64_t *v))		\
 "	stxr	%w1, %0, %2\n"						\
 "	cbnz	%w1, 1b"						\
 	: "=&r" (result), "=&r" (tmp), "+Q" (v->counter)		\
-	: "Ir" (i));							\
+	: #constraint "r" (i));						\
 }									\
 __LL_SC_EXPORT(arch_atomic64_##op);
 
-#define ATOMIC64_OP_RETURN(name, mb, acq, rel, cl, op, asm_op)		\
+#define ATOMIC64_OP_RETURN(name, mb, acq, rel, cl, op, asm_op, constraint)\
 __LL_SC_INLINE s64							\
 __LL_SC_PREFIX(arch_atomic64_##op##_return##name(s64 i, atomic64_t *v))\
 {									\
@@ -153,14 +153,14 @@ __LL_SC_PREFIX(arch_atomic64_##op##_return##name(s64 i, atomic64_t *v))\
 "	cbnz	%w1, 1b\n"						\
 "	" #mb								\
 	: "=&r" (result), "=&r" (tmp), "+Q" (v->counter)		\
-	: "Ir" (i)							\
+	: #constraint "r" (i)						\
 	: cl);								\
 									\
 	return result;							\
 }									\
 __LL_SC_EXPORT(arch_atomic64_##op##_return##name);
 
-#define ATOMIC64_FETCH_OP(name, mb, acq, rel, cl, op, asm_op)		\
+#define ATOMIC64_FETCH_OP(name, mb, acq, rel, cl, op, asm_op, constraint)\
 __LL_SC_INLINE s64							\
 __LL_SC_PREFIX(arch_atomic64_fetch_##op##name(s64 i, atomic64_t *v))	\
 {									\
@@ -175,7 +175,7 @@ __LL_SC_PREFIX(arch_atomic64_fetch_##op##name(s64 i, atomic64_t *v))	\
 "	cbnz	%w2, 1b\n"						\
 "	" #mb								\
 	: "=&r" (result), "=&r" (val), "=&r" (tmp), "+Q" (v->counter)	\
-	: "Ir" (i)							\
+	: #constraint "r" (i)						\
 	: cl);								\
 									\
 	return result;							\
@@ -193,8 +193,8 @@ __LL_SC_EXPORT(arch_atomic64_fetch_##op##name);
 	ATOMIC64_FETCH_OP (_acquire,, a,  , "memory", __VA_ARGS__)	\
 	ATOMIC64_FETCH_OP (_release,,  , l, "memory", __VA_ARGS__)
 
-ATOMIC64_OPS(add, add)
-ATOMIC64_OPS(sub, sub)
+ATOMIC64_OPS(add, add, I)
+ATOMIC64_OPS(sub, sub, J)
 
 #undef ATOMIC64_OPS
 #define ATOMIC64_OPS(...)						\
@@ -204,10 +204,10 @@ ATOMIC64_OPS(sub, sub)
 	ATOMIC64_FETCH_OP (_acquire,, a,  , "memory", __VA_ARGS__)	\
 	ATOMIC64_FETCH_OP (_release,,  , l, "memory", __VA_ARGS__)
 
-ATOMIC64_OPS(and, and)
-ATOMIC64_OPS(andnot, bic)
-ATOMIC64_OPS(or, orr)
-ATOMIC64_OPS(xor, eor)
+ATOMIC64_OPS(and, and, L)
+ATOMIC64_OPS(andnot, bic, )
+ATOMIC64_OPS(or, orr, L)
+ATOMIC64_OPS(xor, eor, L)
 
 #undef ATOMIC64_OPS
 #undef ATOMIC64_FETCH_OP
@@ -237,7 +237,7 @@ __LL_SC_PREFIX(arch_atomic64_dec_if_positive(atomic64_t *v))
 }
 __LL_SC_EXPORT(arch_atomic64_dec_if_positive);
 
-#define __CMPXCHG_CASE(w, sfx, name, sz, mb, acq, rel, cl)		\
+#define __CMPXCHG_CASE(w, sfx, name, sz, mb, acq, rel, cl, constraint)	\
 __LL_SC_INLINE u##sz							\
 __LL_SC_PREFIX(__cmpxchg_case_##name##sz(volatile void *ptr,		\
 					 unsigned long old,		\
@@ -265,29 +265,34 @@ __LL_SC_PREFIX(__cmpxchg_case_##name##sz(volatile void *ptr,		\
 	"2:"								\
 	: [tmp] "=&r" (tmp), [oldval] "=&r" (oldval),			\
 	  [v] "+Q" (*(u##sz *)ptr)					\
-	: [old] "Kr" (old), [new] "r" (new)				\
+	: [old] #constraint "r" (old), [new] "r" (new)			\
 	: cl);								\
 									\
 	return oldval;							\
 }									\
 __LL_SC_EXPORT(__cmpxchg_case_##name##sz);
 
-__CMPXCHG_CASE(w, b,     ,  8,        ,  ,  ,         )
-__CMPXCHG_CASE(w, h,     , 16,        ,  ,  ,         )
-__CMPXCHG_CASE(w,  ,     , 32,        ,  ,  ,         )
-__CMPXCHG_CASE( ,  ,     , 64,        ,  ,  ,         )
-__CMPXCHG_CASE(w, b, acq_,  8,        , a,  , "memory")
-__CMPXCHG_CASE(w, h, acq_, 16,        , a,  , "memory")
-__CMPXCHG_CASE(w,  , acq_, 32,        , a,  , "memory")
-__CMPXCHG_CASE( ,  , acq_, 64,        , a,  , "memory")
-__CMPXCHG_CASE(w, b, rel_,  8,        ,  , l, "memory")
-__CMPXCHG_CASE(w, h, rel_, 16,        ,  , l, "memory")
-__CMPXCHG_CASE(w,  , rel_, 32,        ,  , l, "memory")
-__CMPXCHG_CASE( ,  , rel_, 64,        ,  , l, "memory")
-__CMPXCHG_CASE(w, b,  mb_,  8, dmb ish,  , l, "memory")
-__CMPXCHG_CASE(w, h,  mb_, 16, dmb ish,  , l, "memory")
-__CMPXCHG_CASE(w,  ,  mb_, 32, dmb ish,  , l, "memory")
-__CMPXCHG_CASE( ,  ,  mb_, 64, dmb ish,  , l, "memory")
+/*
+ * Earlier versions of GCC (no later than 8.1.0) appear to incorrectly
+ * handle the 'K' constraint for the value 4294967295 - thus we use no
+ * constraint for 32 bit operations.
+ */
+__CMPXCHG_CASE(w, b,     ,  8,        ,  ,  ,         , )
+__CMPXCHG_CASE(w, h,     , 16,        ,  ,  ,         , )
+__CMPXCHG_CASE(w,  ,     , 32,        ,  ,  ,         , )
+__CMPXCHG_CASE( ,  ,     , 64,        ,  ,  ,         , L)
+__CMPXCHG_CASE(w, b, acq_,  8,        , a,  , "memory", )
+__CMPXCHG_CASE(w, h, acq_, 16,        , a,  , "memory", )
+__CMPXCHG_CASE(w,  , acq_, 32,        , a,  , "memory", )
+__CMPXCHG_CASE( ,  , acq_, 64,        , a,  , "memory", L)
+__CMPXCHG_CASE(w, b, rel_,  8,        ,  , l, "memory", )
+__CMPXCHG_CASE(w, h, rel_, 16,        ,  , l, "memory", )
+__CMPXCHG_CASE(w,  , rel_, 32,        ,  , l, "memory", )
+__CMPXCHG_CASE( ,  , rel_, 64,        ,  , l, "memory", L)
+__CMPXCHG_CASE(w, b,  mb_,  8, dmb ish,  , l, "memory", )
+__CMPXCHG_CASE(w, h,  mb_, 16, dmb ish,  , l, "memory", )
+__CMPXCHG_CASE(w,  ,  mb_, 32, dmb ish,  , l, "memory", )
+__CMPXCHG_CASE( ,  ,  mb_, 64, dmb ish,  , l, "memory", L)
 
 #undef __CMPXCHG_CASE
 
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
