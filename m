Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36931A1FC7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 17:51:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qFqOfpQHxlewDosrqCrobF2KYaAJnQxGWWaBBitJENM=; b=osKXhV77QkHE1bNxpFR0QwGhVn
	QEndKJjB5J7VG6/JDYoycugqOQFWk/QLc46YFHHo6pRb1panGlRHfewzceHnxYx3K2sfxjWiIKSI5
	Xb8GybvrqMbKXB+e16IQhWw4ppcRYp0stVIJv+PDZWNpn+5BO9uQCTyUxz3oN7mI+HCcvNSjhmChO
	8KoYsLpg9pvD2LjpD4AwBfIot4kuRCIqRFg81+AHsFy4TLxjnMK2wsDV7lGVBu2ShlZV5sRBInJ8z
	tEEx0L6+vJXRGais9qVrKi9Epg3FbJ5qREzKStn/KY1HSd5xRB5hMqIXsar38bUpXkk0uoIi3zpK8
	hoQKEICQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3MhF-0003qW-8X; Thu, 29 Aug 2019 15:50:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3MfI-0001Yg-9d
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 15:48:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0F33A15AD;
 Thu, 29 Aug 2019 08:48:48 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id AF9783F718;
 Thu, 29 Aug 2019 08:48:46 -0700 (PDT)
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 04/10] arm64: avoid using hard-coded registers for LSE
 atomics
Date: Thu, 29 Aug 2019 16:48:28 +0100
Message-Id: <20190829154834.26547-5-will@kernel.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190829154834.26547-1-will@kernel.org>
References: <20190829154834.26547-1-will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_084848_602213_2CFC6159 
X-CRM114-Status: GOOD (  10.56  )
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

Now that we have removed the out-of-line ll/sc atomics we can give
the compiler the freedom to choose its own register allocation.

Remove the hard-coded use of x30.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/atomic_lse.h | 70 ++++++++++++++++++++++---------------
 1 file changed, 41 insertions(+), 29 deletions(-)

diff --git a/arch/arm64/include/asm/atomic_lse.h b/arch/arm64/include/asm/atomic_lse.h
index 7dce5e1f074e..c6bd87d2915b 100644
--- a/arch/arm64/include/asm/atomic_lse.h
+++ b/arch/arm64/include/asm/atomic_lse.h
@@ -55,12 +55,14 @@ ATOMIC_FETCH_OPS(add, ldadd)
 #define ATOMIC_OP_ADD_RETURN(name, mb, cl...)				\
 static inline int __lse_atomic_add_return##name(int i, atomic_t *v)	\
 {									\
+	u32 tmp;							\
+									\
 	asm volatile(							\
-	"	ldadd" #mb "	%w[i], w30, %[v]\n"			\
-	"	add	%w[i], %w[i], w30"				\
-	: [i] "+r" (i), [v] "+Q" (v->counter)				\
+	"	ldadd" #mb "	%w[i], %w[tmp], %[v]\n"			\
+	"	add	%w[i], %w[i], %w[tmp]"				\
+	: [i] "+r" (i), [v] "+Q" (v->counter), [tmp] "=&r" (tmp)	\
 	: "r" (v)							\
-	: "x30", ##cl);							\
+	: cl);								\
 									\
 	return i;							\
 }
@@ -113,13 +115,15 @@ static inline void __lse_atomic_sub(int i, atomic_t *v)
 #define ATOMIC_OP_SUB_RETURN(name, mb, cl...)				\
 static inline int __lse_atomic_sub_return##name(int i, atomic_t *v)	\
 {									\
+	u32 tmp;							\
+									\
 	asm volatile(							\
 	"	neg	%w[i], %w[i]\n"					\
-	"	ldadd" #mb "	%w[i], w30, %[v]\n"			\
-	"	add	%w[i], %w[i], w30"				\
-	: [i] "+&r" (i), [v] "+Q" (v->counter)				\
+	"	ldadd" #mb "	%w[i], %w[tmp], %[v]\n"			\
+	"	add	%w[i], %w[i], %w[tmp]"				\
+	: [i] "+&r" (i), [v] "+Q" (v->counter), [tmp] "=&r" (tmp)	\
 	: "r" (v)							\
-	: "x30", ##cl);							\
+	: cl);							\
 									\
 	return i;							\
 }
@@ -196,12 +200,14 @@ ATOMIC64_FETCH_OPS(add, ldadd)
 #define ATOMIC64_OP_ADD_RETURN(name, mb, cl...)				\
 static inline long __lse_atomic64_add_return##name(s64 i, atomic64_t *v)\
 {									\
+	unsigned long tmp;						\
+									\
 	asm volatile(							\
-	"	ldadd" #mb "	%[i], x30, %[v]\n"			\
-	"	add	%[i], %[i], x30"				\
-	: [i] "+r" (i), [v] "+Q" (v->counter)				\
+	"	ldadd" #mb "	%[i], %x[tmp], %[v]\n"			\
+	"	add	%[i], %[i], %x[tmp]"				\
+	: [i] "+r" (i), [v] "+Q" (v->counter), [tmp] "=&r" (tmp)	\
 	: "r" (v)							\
-	: "x30", ##cl);							\
+	: cl);								\
 									\
 	return i;							\
 }
@@ -254,13 +260,15 @@ static inline void __lse_atomic64_sub(s64 i, atomic64_t *v)
 #define ATOMIC64_OP_SUB_RETURN(name, mb, cl...)				\
 static inline long __lse_atomic64_sub_return##name(s64 i, atomic64_t *v)	\
 {									\
+	unsigned long tmp;						\
+									\
 	asm volatile(							\
 	"	neg	%[i], %[i]\n"					\
-	"	ldadd" #mb "	%[i], x30, %[v]\n"			\
-	"	add	%[i], %[i], x30"				\
-	: [i] "+&r" (i), [v] "+Q" (v->counter)				\
+	"	ldadd" #mb "	%[i], %x[tmp], %[v]\n"			\
+	"	add	%[i], %[i], %x[tmp]"				\
+	: [i] "+&r" (i), [v] "+Q" (v->counter), [tmp] "=&r" (tmp)	\
 	: "r" (v)							\
-	: "x30", ##cl);							\
+	: cl);								\
 									\
 	return i;							\
 }
@@ -294,18 +302,20 @@ ATOMIC64_FETCH_OP_SUB(        , al, "memory")
 
 static inline s64 __lse_atomic64_dec_if_positive(atomic64_t *v)
 {
+	unsigned long tmp;
+
 	asm volatile(
-	"1:	ldr	x30, %[v]\n"
-	"	subs	%[ret], x30, #1\n"
+	"1:	ldr	%x[tmp], %[v]\n"
+	"	subs	%[ret], %x[tmp], #1\n"
 	"	b.lt	2f\n"
-	"	casal	x30, %[ret], %[v]\n"
-	"	sub	x30, x30, #1\n"
-	"	sub	x30, x30, %[ret]\n"
-	"	cbnz	x30, 1b\n"
+	"	casal	%x[tmp], %[ret], %[v]\n"
+	"	sub	%x[tmp], %x[tmp], #1\n"
+	"	sub	%x[tmp], %x[tmp], %[ret]\n"
+	"	cbnz	%x[tmp], 1b\n"
 	"2:"
-	: [ret] "+&r" (v), [v] "+Q" (v->counter)
+	: [ret] "+&r" (v), [v] "+Q" (v->counter), [tmp] "=&r" (tmp)
 	:
-	: "x30", "cc", "memory");
+	: "cc", "memory");
 
 	return (long)v;
 }
@@ -318,14 +328,16 @@ static inline u##sz __lse__cmpxchg_case_##name##sz(volatile void *ptr,	\
 	register unsigned long x0 asm ("x0") = (unsigned long)ptr;	\
 	register u##sz x1 asm ("x1") = old;				\
 	register u##sz x2 asm ("x2") = new;				\
+	unsigned long tmp;						\
 									\
 	asm volatile(							\
-	"	mov	" #w "30, %" #w "[old]\n"			\
-	"	cas" #mb #sfx "\t" #w "30, %" #w "[new], %[v]\n"	\
-	"	mov	%" #w "[ret], " #w "30"				\
-	: [ret] "+r" (x0), [v] "+Q" (*(unsigned long *)ptr)		\
+	"	mov	%" #w "[tmp], %" #w "[old]\n"			\
+	"	cas" #mb #sfx "\t%" #w "[tmp], %" #w "[new], %[v]\n"	\
+	"	mov	%" #w "[ret], %" #w "[tmp]"			\
+	: [ret] "+r" (x0), [v] "+Q" (*(unsigned long *)ptr),		\
+	  [tmp] "=&r" (tmp)						\
 	: [old] "r" (x1), [new] "r" (x2)				\
-	: "x30", ##cl);							\
+	: cl);								\
 									\
 	return x0;							\
 }
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
