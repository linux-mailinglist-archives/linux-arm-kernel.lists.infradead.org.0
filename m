Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2320E1C518C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 11:05:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EyLPEw9YIDRkrrWqXyMWHVInM3xb8XFKJKxVeXgu97A=; b=XjkFiu3S9irTNM
	NQ5cSV4xERL4IPJePNLwu4eCw2JaqVEdjOkQ4o3VQTEaah14fkzQGeDM+84clYW71j+5uBEKAggvX
	mo5aOPBBwPbwAPkXPlbh3+FIKV0UDm32RSIZb+xqz4TCQ3x7yow/uAywVpDD6JzLAp8YzwgLxyWlf
	rBfZzZe3XnhDXyB/3Nu7XcvopKsl3HcY99pvdRR5gFf/GBO0E4Qn006wgvA1cdxml/z7T2kBClRdj
	bfNfTJ52V3yLCk3HcohP3IA+Nr2ReDFJwIFC7WC+FJIUfeHc3Uj1BGQ5gO70p5fR3200v9SsxbIHc
	i3vP/b8cPTxKK/F+Geow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVtWO-0003Nw-Og; Tue, 05 May 2020 09:05:48 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVtWD-0003G6-6o
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 09:05:40 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 27790184757D3A0C4C7E;
 Tue,  5 May 2020 17:05:19 +0800 (CST)
Received: from localhost.localdomain (10.69.192.56) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.487.0; Tue, 5 May 2020 17:05:10 +0800
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
To: <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH] arm64: atomics: Fix the issue on xchg when switch to atomic
 instruction
Date: Tue, 5 May 2020 17:02:35 +0800
Message-ID: <1588669355-38741-1-git-send-email-zhangshaokun@hisilicon.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.69.192.56]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_020537_585075_E03F71C2 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [45.249.212.191 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Shaokun Zhang <zhangshaokun@hisilicon.com>, Yuqi Jin <jinyuqi@huawei.com>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Yuqi Jin <jinyuqi@huawei.com>

Since commit addfc38672c7 ("arm64: atomics: avoid out-of-line ll/sc atomics"),
it has provided inline implementations of both LSE and ll/sc and used a static
key to select between them, which allows the compiler to generate better
atomics code.
However, xchg still uses the original method which would fail to switch to
the atomic instruction correctly, Let's fix this issue.

Fixes: addfc38672c7 ("arm64: atomics: avoid out-of-line ll/sc atomics")
Cc: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Andrew Murray <amurray@thegoodpenguin.co.uk>
Signed-off-by: Yuqi Jin <jinyuqi@huawei.com>
Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
---
 arch/arm64/include/asm/atomic_ll_sc.h | 41 ++++++++++++++++++
 arch/arm64/include/asm/atomic_lse.h   | 35 +++++++++++++++
 arch/arm64/include/asm/cmpxchg.h      | 82 ++++++++---------------------------
 3 files changed, 93 insertions(+), 65 deletions(-)

diff --git a/arch/arm64/include/asm/atomic_ll_sc.h b/arch/arm64/include/asm/atomic_ll_sc.h
index 13869b76b58c..73fcb71ccb91 100644
--- a/arch/arm64/include/asm/atomic_ll_sc.h
+++ b/arch/arm64/include/asm/atomic_ll_sc.h
@@ -348,6 +348,47 @@ __CMPXCHG_DBL(   ,        ,  ,         )
 __CMPXCHG_DBL(_mb, dmb ish, l, "memory")
 
 #undef __CMPXCHG_DBL
+
+#define __XCHG_CASE(w, sfx, name, sz, mb, nop_lse, acq, acq_lse, rel, cl)      \
+static inline u##sz __ll_sc__xchg_case_##name##sz(u##sz x, volatile void *ptr) \
+{                                                                              \
+	u##sz ret;                                                              \
+	unsigned long tmp;                                                      \
+										\
+	asm volatile(                                                           \
+	__LL_SC_FALLBACK(                                                       \
+	"       prfm    pstl1strm, %2\n"                                        \
+	"1:     ld" #acq "xr" #sfx "\t%" #w "0, %2\n"                           \
+	"       st" #rel "xr" #sfx "\t%w1, %" #w "3, %2\n"                      \
+	"       cbnz    %w1, 1b\n"                                              \
+	"       " #mb "\n"                                                      \
+	"2:")                                                                   \
+	: "=&r" (ret), "=&r" (tmp), "+Q" (*(u##sz *)ptr)                        \
+	: "r" (x)                                                               \
+	: cl);                                                                  \
+										\
+	return ret;                                                             \
+}
+
+__XCHG_CASE(w, b,     ,  8,        ,    ,  ,  ,  ,         )
+__XCHG_CASE(w, h,     , 16,        ,    ,  ,  ,  ,         )
+__XCHG_CASE(w,  ,     , 32,        ,    ,  ,  ,  ,         )
+__XCHG_CASE( ,  ,     , 64,        ,    ,  ,  ,  ,         )
+__XCHG_CASE(w, b, acq_,  8,        ,    , a, a,  , "memory")
+__XCHG_CASE(w, h, acq_, 16,        ,    , a, a,  , "memory")
+__XCHG_CASE(w,  , acq_, 32,        ,    , a, a,  , "memory")
+__XCHG_CASE( ,  , acq_, 64,        ,    , a, a,  , "memory")
+__XCHG_CASE(w, b, rel_,  8,        ,    ,  ,  , l, "memory")
+__XCHG_CASE(w, h, rel_, 16,        ,    ,  ,  , l, "memory")
+__XCHG_CASE(w,  , rel_, 32,        ,    ,  ,  , l, "memory")
+__XCHG_CASE( ,  , rel_, 64,        ,    ,  ,  , l, "memory")
+__XCHG_CASE(w, b,  mb_,  8, dmb ish, nop,  , a, l, "memory")
+__XCHG_CASE(w, h,  mb_, 16, dmb ish, nop,  , a, l, "memory")
+__XCHG_CASE(w,  ,  mb_, 32, dmb ish, nop,  , a, l, "memory")
+__XCHG_CASE( ,  ,  mb_, 64, dmb ish, nop,  , a, l, "memory")
+
+#undef __XCHG_CASE
+
 #undef K
 
 #endif	/* __ASM_ATOMIC_LL_SC_H */
diff --git a/arch/arm64/include/asm/atomic_lse.h b/arch/arm64/include/asm/atomic_lse.h
index da3280f639cd..ddb2c212faa3 100644
--- a/arch/arm64/include/asm/atomic_lse.h
+++ b/arch/arm64/include/asm/atomic_lse.h
@@ -416,4 +416,39 @@ __CMPXCHG_DBL(_mb, al, "memory")
 
 #undef __CMPXCHG_DBL
 
+#define __XCHG_CASE(w, sfx, name, sz, mb, nop_lse, acq, acq_lse, rel, cl)             \
+static __always_inline u##sz __lse__xchg_case_##name##sz(u##sz x, volatile void *ptr) \
+{                                                                                     \
+	u##sz ret;                                                                     \
+	unsigned long tmp;                                                             \
+										       \
+	asm volatile(                                                                  \
+	__LSE_PREAMBLE                                                                 \
+	"       swp" #acq_lse #rel #sfx "\t%" #w "3, %" #w "0, %2\n"                   \
+	: "=&r" (ret), "=&r" (tmp), "+Q" (*(u##sz *)ptr)                               \
+	: "r" (x)                                                                      \
+	: cl);                                                                         \
+										       \
+	return ret;                                                                    \
+}
+
+__XCHG_CASE(w, b,     ,  8,        ,    ,  ,  ,  ,         )
+__XCHG_CASE(w, h,     , 16,        ,    ,  ,  ,  ,         )
+__XCHG_CASE(w,  ,     , 32,        ,    ,  ,  ,  ,         )
+__XCHG_CASE( ,  ,     , 64,        ,    ,  ,  ,  ,         )
+__XCHG_CASE(w, b, acq_,  8,        ,    , a, a,  , "memory")
+__XCHG_CASE(w, h, acq_, 16,        ,    , a, a,  , "memory")
+__XCHG_CASE(w,  , acq_, 32,        ,    , a, a,  , "memory")
+__XCHG_CASE( ,  , acq_, 64,        ,    , a, a,  , "memory")
+__XCHG_CASE(w, b, rel_,  8,        ,    ,  ,  , l, "memory")
+__XCHG_CASE(w, h, rel_, 16,        ,    ,  ,  , l, "memory")
+__XCHG_CASE(w,  , rel_, 32,        ,    ,  ,  , l, "memory")
+__XCHG_CASE( ,  , rel_, 64,        ,    ,  ,  , l, "memory")
+__XCHG_CASE(w, b,  mb_,  8, dmb ish, nop,  , a, l, "memory")
+__XCHG_CASE(w, h,  mb_, 16, dmb ish, nop,  , a, l, "memory")
+__XCHG_CASE(w,  ,  mb_, 32, dmb ish, nop,  , a, l, "memory")
+__XCHG_CASE( ,  ,  mb_, 64, dmb ish, nop,  , a, l, "memory")
+
+#undef __XCHG_CASE
+
 #endif	/* __ASM_ATOMIC_LSE_H */
diff --git a/arch/arm64/include/asm/cmpxchg.h b/arch/arm64/include/asm/cmpxchg.h
index f9bef42c1411..084028518417 100644
--- a/arch/arm64/include/asm/cmpxchg.h
+++ b/arch/arm64/include/asm/cmpxchg.h
@@ -13,73 +13,25 @@
 #include <asm/barrier.h>
 #include <asm/lse.h>
 
-/*
- * We need separate acquire parameters for ll/sc and lse, since the full
- * barrier case is generated as release+dmb for the former and
- * acquire+release for the latter.
- */
-#define __XCHG_CASE(w, sfx, name, sz, mb, nop_lse, acq, acq_lse, rel, cl)	\
-static inline u##sz __xchg_case_##name##sz(u##sz x, volatile void *ptr)		\
-{										\
-	u##sz ret;								\
-	unsigned long tmp;							\
-										\
-	asm volatile(ARM64_LSE_ATOMIC_INSN(					\
-	/* LL/SC */								\
-	"	prfm	pstl1strm, %2\n"					\
-	"1:	ld" #acq "xr" #sfx "\t%" #w "0, %2\n"				\
-	"	st" #rel "xr" #sfx "\t%w1, %" #w "3, %2\n"			\
-	"	cbnz	%w1, 1b\n"						\
-	"	" #mb,								\
-	/* LSE atomics */							\
-	"	swp" #acq_lse #rel #sfx "\t%" #w "3, %" #w "0, %2\n"		\
-		__nops(3)							\
-	"	" #nop_lse)							\
-	: "=&r" (ret), "=&r" (tmp), "+Q" (*(u##sz *)ptr)			\
-	: "r" (x)								\
-	: cl);									\
-										\
-	return ret;								\
-}
-
-__XCHG_CASE(w, b,     ,  8,        ,    ,  ,  ,  ,         )
-__XCHG_CASE(w, h,     , 16,        ,    ,  ,  ,  ,         )
-__XCHG_CASE(w,  ,     , 32,        ,    ,  ,  ,  ,         )
-__XCHG_CASE( ,  ,     , 64,        ,    ,  ,  ,  ,         )
-__XCHG_CASE(w, b, acq_,  8,        ,    , a, a,  , "memory")
-__XCHG_CASE(w, h, acq_, 16,        ,    , a, a,  , "memory")
-__XCHG_CASE(w,  , acq_, 32,        ,    , a, a,  , "memory")
-__XCHG_CASE( ,  , acq_, 64,        ,    , a, a,  , "memory")
-__XCHG_CASE(w, b, rel_,  8,        ,    ,  ,  , l, "memory")
-__XCHG_CASE(w, h, rel_, 16,        ,    ,  ,  , l, "memory")
-__XCHG_CASE(w,  , rel_, 32,        ,    ,  ,  , l, "memory")
-__XCHG_CASE( ,  , rel_, 64,        ,    ,  ,  , l, "memory")
-__XCHG_CASE(w, b,  mb_,  8, dmb ish, nop,  , a, l, "memory")
-__XCHG_CASE(w, h,  mb_, 16, dmb ish, nop,  , a, l, "memory")
-__XCHG_CASE(w,  ,  mb_, 32, dmb ish, nop,  , a, l, "memory")
-__XCHG_CASE( ,  ,  mb_, 64, dmb ish, nop,  , a, l, "memory")
-
-#undef __XCHG_CASE
-
 #define __XCHG_GEN(sfx)							\
-static __always_inline  unsigned long __xchg##sfx(unsigned long x,	\
-					volatile void *ptr,		\
-					int size)			\
-{									\
-	switch (size) {							\
-	case 1:								\
-		return __xchg_case##sfx##_8(x, ptr);			\
-	case 2:								\
-		return __xchg_case##sfx##_16(x, ptr);			\
-	case 4:								\
-		return __xchg_case##sfx##_32(x, ptr);			\
-	case 8:								\
-		return __xchg_case##sfx##_64(x, ptr);			\
-	default:							\
-		BUILD_BUG();						\
-	}								\
+static __always_inline  unsigned long __xchg##sfx(unsigned long x,     \
+					volatile void *ptr,             \
+					int size)                       \
+{                                                                      \
+	switch (size) {                                                 \
+	case 1:                                                         \
+		return __lse_ll_sc_body(_xchg_case##sfx##_8, x, ptr);   \
+	case 2:                                                         \
+		return __lse_ll_sc_body(_xchg_case##sfx##_16, x, ptr);  \
+	case 4:                                                         \
+		return __lse_ll_sc_body(_xchg_case##sfx##_32, x, ptr);  \
+	case 8:                                                         \
+		return __lse_ll_sc_body(_xchg_case##sfx##_64, x, ptr);  \
+	default:                                                        \
+		BUILD_BUG();                                            \
+	}                                                               \
 									\
-	unreachable();							\
+	unreachable();                                                  \
 }
 
 __XCHG_GEN()
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
