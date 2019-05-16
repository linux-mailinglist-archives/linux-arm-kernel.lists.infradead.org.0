Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3665A20BAB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 17:54:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6MTYinhTYHPE2xWRh1oakPWTARmEcqA/VdoqSwlaiLs=; b=aAtTrb212sD68z
	iQIcXYwgrzyC2tpsK8hkNWOy7o+heFrWdea9kYUoe6EvYaeFbTH3vad2zJtZ5kYJbT/Guaogmhanj
	hReXRngfGGM+TagLnOqAXarTnHY7NONglDeezpGYdIkQ1LcKQ9ZOVe/RDvQOECEKgahONLthVmaMT
	53rf9FIbfncd2CKfODR1QMyhTSNVutFY+HqZdC9FkQHSntEaUJfUgSeW9tcdh3C5v8IsmleZmwLMh
	dxxD/xOPaNqt7hY9uTcld0vMJKzU2YRFgWlPY8lx93aQNXfUvhu9Js2EHOa79v8mLbHAklMFW4cKV
	y5a6+Th9+LlLg2itA6wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRIia-00007k-DR; Thu, 16 May 2019 15:54:52 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRIhj-0007eO-VR
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 15:54:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CA37B19F6;
 Thu, 16 May 2019 08:53:59 -0700 (PDT)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 60A3D3F71E;
 Thu, 16 May 2019 08:53:58 -0700 (PDT)
From: Andrew Murray <andrew.murray@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Ard.Biesheuvel@arm.com
Subject: [PATCH v1 4/5] arm64: avoid using hard-coded registers for LSE atomics
Date: Thu, 16 May 2019 16:53:43 +0100
Message-Id: <20190516155344.24060-5-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190516155344.24060-1-andrew.murray@arm.com>
References: <20190516155344.24060-1-andrew.murray@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_085400_320878_EFFC3E29 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Boqun Feng <boqun.feng@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we have removed the out-of-line ll/sc atomics we can give
the compiler the freedom to choose its own register allocation. Let's
remove the hard-coded use of x30.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
---
 arch/arm64/include/asm/atomic_lse.h | 70 +++++++++++++++++------------
 1 file changed, 41 insertions(+), 29 deletions(-)

diff --git a/arch/arm64/include/asm/atomic_lse.h b/arch/arm64/include/asm/atomic_lse.h
index 3b7fd01104bb..580709ecae5a 100644
--- a/arch/arm64/include/asm/atomic_lse.h
+++ b/arch/arm64/include/asm/atomic_lse.h
@@ -66,12 +66,14 @@ ATOMIC_FETCH_OPS(add, ldadd)
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
@@ -124,13 +126,15 @@ static inline void __lse_atomic_sub(int i, atomic_t *v)
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
@@ -207,12 +211,14 @@ ATOMIC64_FETCH_OPS(add, ldadd)
 #define ATOMIC64_OP_ADD_RETURN(name, mb, cl...)				\
 static inline long __lse_atomic64_add_return##name(long i, atomic64_t *v)	\
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
@@ -265,13 +271,15 @@ static inline void __lse_atomic64_sub(long i, atomic64_t *v)
 #define ATOMIC64_OP_SUB_RETURN(name, mb, cl...)				\
 static inline long __lse_atomic64_sub_return##name(long i, atomic64_t *v)	\
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
@@ -305,18 +313,20 @@ ATOMIC64_FETCH_OP_SUB(        , al, "memory")
 
 static inline long __lse_atomic64_dec_if_positive(atomic64_t *v)
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
@@ -329,14 +339,16 @@ static inline u##sz __lse__cmpxchg_case_##name##sz(volatile void *ptr,	\
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
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
