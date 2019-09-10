Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C97AE99D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 13:57:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qhJrAQMBmyLElHCdjbjGxDbNsvimh7yp3Bkc51qnhlc=; b=MjPPs+OhzuJESe
	GiAxQL3fb0xy/wUweJnPSUGf5SyY+t54UBrtoW/SsGIxvTsqtAFDuYKtoYvRMXY7QO80BSi1VaROh
	gJae+tHfvvGYvbG6C4M96hngprMKGzyPXHPNkCmp4V92K9RWwPit4/rXi5C79nbgacQCIiEfu54p7
	t75DoNpb9siSf0unbIUjkVoHglHNLbyxp8K8sqaEwCojAfGfvif7cWqiqKaXzAgG2gJEpjcuJdyn1
	ZU6ghrSFJcOba7J4SxY3+DBuDSLXhgDTu70CgSuX81Cpt7Lt6uSy0XbbgDQekcHhI6bUqtd7CZy5t
	lYLf1tIm5sgHZR8Wx1QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7els-0001PA-Pc; Tue, 10 Sep 2019 11:57:20 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7elW-0001Iu-Tq
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 11:57:01 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1M2xjg-1i8k9h33wC-003NW5; Tue, 10 Sep 2019 13:56:45 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH] [v2] arm64: fix unreachable code issue with cmpxchg
Date: Tue, 10 Sep 2019 13:56:22 +0200
Message-Id: <20190910115643.391995-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:EHTSpuLoMolBSz8CcDfb/qHKuFLM8p+7X9tC8Slqv2t0NwgBE8C
 CEK+aT1cF8p9GCYOMXQ9HwXnX5NR3vF73638cRLoJsKIRu4XOBbcOp7sn4PNSRR5Jbt0Sry
 d6um31l43yl6egOIpt1DYB9KLWb+JQkE3FcXmpjvrBxGY9yI6dKjHFJ35D2Ao3CsqwFFPRU
 kW57LeoduR53gqRvt9G4A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:tZ2pxyEDoFE=:FjiMNmyAJhF+Kct/9J4gj6
 WlnXVAVAC8Cxf0IYDscFNtsWlONzdMJXCr0JwZPzKZe6H2kyJ+9zA6HZFLjNI6X8TGtTkx1ZU
 YeaJHl2QR/C+yOjV5mni9COAFLkrzR9B7FOn2i+MEUH3TSPUt1pRfhhr/JI6u/vxjpCCIXE56
 lNNhX2f3/fJAYKLEbZEVxiRggi9Ae3gY4942USVK6PBNwClhC4wz7fiy4rmgHW5cFUcxop+oW
 bhsTxXPMd3ZNAjh+m6UWJBBZlkWFR9iScOGuXMPlP9jiMWveayxKFHQzPHzdwVD0hBYv3H0Uy
 FAV/roihgc1V0OUDl0qwBKuk9y4inwLCLHCYShGOiiJQ/BzEHzoR8Uzn76IZ4vaBXyvsguiAQ
 GKMMqeoH7+xtXsCDhFTxAewinskUBlX1II/D54y5mi4S1S7Cb+s49Vy3pPwPZaCQ0FGUxBcLL
 bm8u22xwBXQZMAHtIBrJGBOKZEBIeoKBzNZo7YLv8DI6q+Uh2qNAWIcZF60YxOoYrkSQ2SlsX
 EjN3vfJjiwr+RAvsJGgW0Updu1M0NHsFManaC9mkCRbY0k36V7Bi7YkrQEzUEPjkBMVXH7l4D
 eaUUPAu6qsGCrrVdU9IB/Autez1PeKBWm66DURBJl+gtrTiw9RrEbLT0xkiXlBXlOs05c1YsI
 uxOL6R7TgViEhaboreZmuwhnng1zszG6BEXPJNLZ/bynHBAJHtf8NvDNWlzmHJC9IeTSTpQtG
 QLsB2fv3oQcctBcfg0wLRYs1XNLJoirOb5z3fOldnxwVHphjv344tb3G7pOKU9SH+f/JD0ZkR
 H1QVp8iXmykxUFgO3di1hBiinYpWgQvVDHWXAEBGF9wZY5SgfU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_045659_372047_92DC98D8 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Andrew Murray <andrew.murray@arm.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On arm64 build with clang, sometimes the __cmpxchg_mb is not inlined
when CONFIG_OPTIMIZE_INLINING is set.
Clang then fails a compile-time assertion, because it cannot tell at
compile time what the size of the argument is:

mm/memcontrol.o: In function `__cmpxchg_mb':
memcontrol.c:(.text+0x1a4c): undefined reference to `__compiletime_assert_175'
memcontrol.c:(.text+0x1a4c): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `__compiletime_assert_175'

Mark all of the cmpxchg() style functions as __always_inline to
ensure that the compiler can see the result.

Acked-by: Nick Desaulniers <ndesaulniers@google.com>
Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/648
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Andrew Murray <andrew.murray@arm.com>
Tested-by: Andrew Murray <andrew.murray@arm.com>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
v2: skip unneeded changes, as suggested by Andrew Murray
---
 arch/arm64/include/asm/cmpxchg.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/cmpxchg.h b/arch/arm64/include/asm/cmpxchg.h
index a1398f2f9994..f9bef42c1411 100644
--- a/arch/arm64/include/asm/cmpxchg.h
+++ b/arch/arm64/include/asm/cmpxchg.h
@@ -62,7 +62,7 @@ __XCHG_CASE( ,  ,  mb_, 64, dmb ish, nop,  , a, l, "memory")
 #undef __XCHG_CASE
 
 #define __XCHG_GEN(sfx)							\
-static inline unsigned long __xchg##sfx(unsigned long x,		\
+static __always_inline  unsigned long __xchg##sfx(unsigned long x,	\
 					volatile void *ptr,		\
 					int size)			\
 {									\
@@ -148,7 +148,7 @@ __CMPXCHG_DBL(_mb)
 #undef __CMPXCHG_DBL
 
 #define __CMPXCHG_GEN(sfx)						\
-static inline unsigned long __cmpxchg##sfx(volatile void *ptr,		\
+static __always_inline unsigned long __cmpxchg##sfx(volatile void *ptr,	\
 					   unsigned long old,		\
 					   unsigned long new,		\
 					   int size)			\
@@ -255,7 +255,7 @@ __CMPWAIT_CASE( ,  , 64);
 #undef __CMPWAIT_CASE
 
 #define __CMPWAIT_GEN(sfx)						\
-static inline void __cmpwait##sfx(volatile void *ptr,			\
+static __always_inline void __cmpwait##sfx(volatile void *ptr,		\
 				  unsigned long val,			\
 				  int size)				\
 {									\
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
