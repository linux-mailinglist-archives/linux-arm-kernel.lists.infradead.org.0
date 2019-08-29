Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1FDA200D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 17:52:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EvK0ZPn1wK7qSZR8XfLX4pMT0owATqAeKwBnA0XoOOY=; b=JE4FJVWyTO+HAAkEwnJLF5yK5M
	XJGbHYmHic5cZqL2FC4rCQHshwhqkCjNn5R0sPHX6jj7zOiAuLYnbpTVFE/AgGRUy5+3sW8h3yv78
	aOip18K00qBQ2pUVUjAs80S0CGUV4h6nMAauIGflRzYf3aloLfOioMopuYhB4HGWKCcFNIRv3xjiK
	A4EU2GjdGGXNYgjkk2VKoQlYGHqnlwiD20ukavhWZy3sh2mjmQsp3Hnhlt54/PhpCKHRry7NLFa8q
	tArYOR+i5MPKo3SW8iO7mqxHQNmrIgWgd9h5JDQyYfEYl4kw4CyJ40kD06CLFzo6NY3urwQcfXbVR
	1XTjjDBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Mj7-0005F9-PG; Thu, 29 Aug 2019 15:52:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3MfR-0001j8-Pn
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 15:48:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 778F01570;
 Thu, 29 Aug 2019 08:48:57 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 2420F3F718;
 Thu, 29 Aug 2019 08:48:56 -0700 (PDT)
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 10/10] arm64: atomics: Use K constraint when toolchain
 appears to support it
Date: Thu, 29 Aug 2019 16:48:34 +0100
Message-Id: <20190829154834.26547-11-will@kernel.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190829154834.26547-1-will@kernel.org>
References: <20190829154834.26547-1-will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_084858_026158_277EC677 
X-CRM114-Status: GOOD (  12.42  )
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

The 'K' constraint is a documented AArch64 machine constraint supported
by GCC for matching integer constants that can be used with a 32-bit
logical instruction. Unfortunately, some released compilers erroneously
accept the immediate '4294967295' for this constraint, which is later
refused by GAS at assembly time. This had led us to avoid the use of
the 'K' constraint altogether.

Instead, detect whether the compiler is up to the job when building the
kernel and pass the 'K' constraint to our 32-bit atomic macros when it
appears to be supported.

Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/Makefile                   |  9 ++++++-
 arch/arm64/include/asm/atomic_ll_sc.h | 47 +++++++++++++++++++++++------------
 2 files changed, 39 insertions(+), 17 deletions(-)

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
index 95091f72228b..7fa042f5444e 100644
--- a/arch/arm64/include/asm/atomic_ll_sc.h
+++ b/arch/arm64/include/asm/atomic_ll_sc.h
@@ -23,6 +23,10 @@ asm_ops "\n"								\
 #define __LL_SC_FALLBACK(asm_ops) asm_ops
 #endif
 
+#ifndef CONFIG_CC_HAS_K_CONSTRAINT
+#define K
+#endif
+
 /*
  * AArch64 UP and SMP safe atomic ops.  We use load exclusive and
  * store exclusive to ensure that these are atomic.  We may loop
@@ -113,10 +117,15 @@ ATOMIC_OPS(sub, sub, J)
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
@@ -208,9 +217,14 @@ ATOMIC64_OPS(sub, sub, J)
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
@@ -280,21 +294,21 @@ __ll_sc__cmpxchg_case_##name##sz(volatile void *ptr,			\
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
@@ -332,5 +346,6 @@ __CMPXCHG_DBL(   ,        ,  ,         )
 __CMPXCHG_DBL(_mb, dmb ish, l, "memory")
 
 #undef __CMPXCHG_DBL
+#undef K
 
 #endif	/* __ASM_ATOMIC_LL_SC_H */
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
