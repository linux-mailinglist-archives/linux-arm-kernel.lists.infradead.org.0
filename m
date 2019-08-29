Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF63AA200E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 17:53:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JjImDC0ARqAXpOzOiRDvNXW+4+CfKxh1ZuGLTq39J5U=; b=lxLifYWNFUrDmJrZgrkGaAW+ex
	YQDH6MLH397A/wPrF92ZsIwEex9KJdxJv2d+A+l9C4liB6yk67bO3WR2ef4mAsurNOvGIDq7JrA4a
	UtSaWZAcQ0zQmXG7LFKf6icesyPwMUC0rsOjtW9pnEIyvWMoy07cPxz74F3MDgyDT73wJr8sYeyry
	n6Kh6WQjDwJYnLOgN3GDzkju5lJaYWkdODH0j2Edg7jV4s48g4jU/zeBnfgwtF4C3oEgq/cfy/Agr
	De+1ENxL8kaFVsb3kBgNSPWNHVYnb+CdATLDYkp/HPOXL80esjebCkD9bnjeZGDPF7m4bQ/gjzFgZ
	FQ/0wY4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3MjT-0005Vh-R3; Thu, 29 Aug 2019 15:53:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3MfQ-0001hS-E8
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 15:48:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E26BC337;
 Thu, 29 Aug 2019 08:48:55 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8E6793F718;
 Thu, 29 Aug 2019 08:48:54 -0700 (PDT)
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 09/10] arm64: atomics: Undefine internal macros after use
Date: Thu, 29 Aug 2019 16:48:33 +0100
Message-Id: <20190829154834.26547-10-will@kernel.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190829154834.26547-1-will@kernel.org>
References: <20190829154834.26547-1-will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_084856_640880_ABA2CBA4 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
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

We use a bunch of internal macros when constructing our atomic and
cmpxchg routines in order to save on boilerplate. Avoid exposing these
directly to users of the header files.

Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/atomic.h  | 7 +++++++
 arch/arm64/include/asm/cmpxchg.h | 4 ++++
 2 files changed, 11 insertions(+)

diff --git a/arch/arm64/include/asm/atomic.h b/arch/arm64/include/asm/atomic.h
index 7c334337674d..916e5a6d5454 100644
--- a/arch/arm64/include/asm/atomic.h
+++ b/arch/arm64/include/asm/atomic.h
@@ -32,6 +32,7 @@ ATOMIC_OP(atomic_add)
 ATOMIC_OP(atomic_and)
 ATOMIC_OP(atomic_sub)
 
+#undef ATOMIC_OP
 
 #define ATOMIC_FETCH_OP(name, op)					\
 static inline int arch_##op##name(int i, atomic_t *v)			\
@@ -54,6 +55,8 @@ ATOMIC_FETCH_OPS(atomic_fetch_sub)
 ATOMIC_FETCH_OPS(atomic_add_return)
 ATOMIC_FETCH_OPS(atomic_sub_return)
 
+#undef ATOMIC_FETCH_OP
+#undef ATOMIC_FETCH_OPS
 
 #define ATOMIC64_OP(op)							\
 static inline void arch_##op(long i, atomic64_t *v)			\
@@ -68,6 +71,7 @@ ATOMIC64_OP(atomic64_add)
 ATOMIC64_OP(atomic64_and)
 ATOMIC64_OP(atomic64_sub)
 
+#undef ATOMIC64_OP
 
 #define ATOMIC64_FETCH_OP(name, op)					\
 static inline long arch_##op##name(long i, atomic64_t *v)		\
@@ -90,6 +94,9 @@ ATOMIC64_FETCH_OPS(atomic64_fetch_sub)
 ATOMIC64_FETCH_OPS(atomic64_add_return)
 ATOMIC64_FETCH_OPS(atomic64_sub_return)
 
+#undef ATOMIC64_FETCH_OP
+#undef ATOMIC64_FETCH_OPS
+
 static inline long arch_atomic64_dec_if_positive(atomic64_t *v)
 {
 	return __lse_ll_sc_body(atomic64_dec_if_positive, v);
diff --git a/arch/arm64/include/asm/cmpxchg.h b/arch/arm64/include/asm/cmpxchg.h
index afaba73e0b2c..a1398f2f9994 100644
--- a/arch/arm64/include/asm/cmpxchg.h
+++ b/arch/arm64/include/asm/cmpxchg.h
@@ -129,6 +129,8 @@ __CMPXCHG_CASE(mb_, 16)
 __CMPXCHG_CASE(mb_, 32)
 __CMPXCHG_CASE(mb_, 64)
 
+#undef __CMPXCHG_CASE
+
 #define __CMPXCHG_DBL(name)						\
 static inline long __cmpxchg_double##name(unsigned long old1,		\
 					 unsigned long old2,		\
@@ -143,6 +145,8 @@ static inline long __cmpxchg_double##name(unsigned long old1,		\
 __CMPXCHG_DBL(   )
 __CMPXCHG_DBL(_mb)
 
+#undef __CMPXCHG_DBL
+
 #define __CMPXCHG_GEN(sfx)						\
 static inline unsigned long __cmpxchg##sfx(volatile void *ptr,		\
 					   unsigned long old,		\
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
