Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD57C4B6B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 12:29:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=nF447v5oKoarUEGj6CyNsYvUoAAU/fjSkcWwDtTjXjY=; b=EfF
	m5wrtAVgUcYjV0isWqjF6r4H58i/rG70CMeTz+JZv/m3Ce8kt1aVUPgzUVH/1VVekx6Oei2YK2KJq
	PaBO05p27tIrOKnd0MCMeN1MlvsSv2sc9AocUzqOaD+bawAH1PRONyTTkFC1Yi0fAbahBh81QwOBN
	GoI8EZFkVJ07sQz6itGa8UiVyAFIWvkjTDcGHJU1V0HvSN9tXLEjJ/Cvw34MlMzhibTL9nizcUS/y
	00zYFrF1e9fSFQngKqhWGpPUbK56DIgaEuz9UI2FeBnVv9JY6FJPssSNJAKPY7MDuxklke65Vi8ND
	Ly/bkf04BM+VlHOh75pEFy5YpE/4lpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFbsW-00077H-OF; Wed, 02 Oct 2019 10:29:04 +0000
Received: from conuserg-07.nifty.com ([210.131.2.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFbsM-00072L-Vc
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 10:28:57 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-07.nifty.com with ESMTP id x92ASDI8018024;
 Wed, 2 Oct 2019 19:28:13 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-07.nifty.com x92ASDI8018024
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1570012094;
 bh=mVsEFaGyKR+ONE3aTVtqJGvbA8/KiDyvvo+GI9JBcGU=;
 h=From:To:Cc:Subject:Date:From;
 b=26jD8eFPEWohdp5e0ArWJ5UyL9t2+NssfYmsqRKM5SICqFL04xpXRhBoQK7F4PTLF
 pTYTaYrlo4ndLWXRAm+AoHkWnYfXE0gxZDC4+zhapqFXbBfQQB3A31s1qJ/gZa7BLD
 wVW5h27fvLa+x+0NatKW7p7OEm2XjEEWpcB2tFSSDFCyN8ECWoV9wPmlTuvkp2CCu7
 rsShxES/GON/v5L91naShlOHQ8NN7Ptxpt1CdDptTIlEfJQ/WYfPqe7b0j9OqcB1li
 sRAg3wreRPsvirRGD+iOR+bAQcaB6rsegwmRBFrYQMtbYF/5EPA7CHqr7u/rOafrA6
 O27F2o0bu/UpQ==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: patches@arm.linux.org.uk
Subject: [PATCH] ARM: add __always_inline to functions called from
 __get_user_check()
Date: Wed,  2 Oct 2019 19:28:02 +0900
Message-Id: <20191002102802.29691-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_032855_384660_2162FD6A 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.74 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.74 listed in wl.mailspike.net]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Vincent Whitchurch <vincent.whitchurch@axis.com>,
 linux-kernel@vger.kernel.org, Stefan Agner <stefan@agner.ch>,
 Russell King <linux@armlinux.org.uk>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 Enrico Weigelt <info@metux.net>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KernelCI reports that bcm2835_defconfig is no longer booting since
commit ac7c3e4ff401 ("compiler: enable CONFIG_OPTIMIZE_INLINING
forcibly") (https://lkml.org/lkml/2019/9/26/825).

I also received a regression report from Nicolas Saenz Julienne
(https://lkml.org/lkml/2019/9/27/263).

This problem has cropped up on bcm2835_defconfig because it enables
CONFIG_CC_OPTIMIZE_FOR_SIZE. The compiler tends to prefer not inlining
functions with -Os. I was able to reproduce it with other boards and
defconfig files by manually enabling CONFIG_CC_OPTIMIZE_FOR_SIZE.

The __get_user_check() specifically uses r0, r1, r2 registers.
So, uaccess_save_and_enable() and uaccess_restore() must be inlined.
Otherwise, those register assignments would be entirely dropped,
according to my analysis of the disassembly.

Prior to commit 9012d011660e ("compiler: allow all arches to enable
CONFIG_OPTIMIZE_INLINING"), the 'inline' marker was always enough for
inlining functions, except on x86.

Since that commit, all architectures can enable CONFIG_OPTIMIZE_INLINING.
So, __always_inline is now the only guaranteed way of forcible inlining.

I added __always_inline to 4 functions in the call-graph from the
__get_user_check() macro.

Fixes: 9012d011660e ("compiler: allow all arches to enable CONFIG_OPTIMIZE_INLINING")
Reported-by: "kernelci.org bot" <bot@kernelci.org>
Reported-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
Tested-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---

KernelVersion: v5.4-rc1

 arch/arm/include/asm/domain.h  | 8 ++++----
 arch/arm/include/asm/uaccess.h | 4 ++--
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/include/asm/domain.h b/arch/arm/include/asm/domain.h
index 567dbede4785..f1d0a7807cd0 100644
--- a/arch/arm/include/asm/domain.h
+++ b/arch/arm/include/asm/domain.h
@@ -82,7 +82,7 @@
 #ifndef __ASSEMBLY__
 
 #ifdef CONFIG_CPU_CP15_MMU
-static inline unsigned int get_domain(void)
+static __always_inline unsigned int get_domain(void)
 {
 	unsigned int domain;
 
@@ -94,7 +94,7 @@ static inline unsigned int get_domain(void)
 	return domain;
 }
 
-static inline void set_domain(unsigned val)
+static __always_inline void set_domain(unsigned int val)
 {
 	asm volatile(
 	"mcr	p15, 0, %0, c3, c0	@ set domain"
@@ -102,12 +102,12 @@ static inline void set_domain(unsigned val)
 	isb();
 }
 #else
-static inline unsigned int get_domain(void)
+static __always_inline unsigned int get_domain(void)
 {
 	return 0;
 }
 
-static inline void set_domain(unsigned val)
+static __always_inline void set_domain(unsigned int val)
 {
 }
 #endif
diff --git a/arch/arm/include/asm/uaccess.h b/arch/arm/include/asm/uaccess.h
index 303248e5b990..98c6b91be4a8 100644
--- a/arch/arm/include/asm/uaccess.h
+++ b/arch/arm/include/asm/uaccess.h
@@ -22,7 +22,7 @@
  * perform such accesses (eg, via list poison values) which could then
  * be exploited for priviledge escalation.
  */
-static inline unsigned int uaccess_save_and_enable(void)
+static __always_inline unsigned int uaccess_save_and_enable(void)
 {
 #ifdef CONFIG_CPU_SW_DOMAIN_PAN
 	unsigned int old_domain = get_domain();
@@ -37,7 +37,7 @@ static inline unsigned int uaccess_save_and_enable(void)
 #endif
 }
 
-static inline void uaccess_restore(unsigned int flags)
+static __always_inline void uaccess_restore(unsigned int flags)
 {
 #ifdef CONFIG_CPU_SW_DOMAIN_PAN
 	/* Restore the user access mask */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
