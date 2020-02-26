Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CCA1703A3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 17:01:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3sENRM8ZNyHqtECsCbD6LD5vENx3Fc1XcuM0KDN/Ix8=; b=AEVsoBrwfCwhIf
	UwLb2eQmX6syTOmIW8GmzuIA+VQG294r57zDntYGSXhd9KrNmjqQ7v55SrXv0JIpRY5mr+2zR4A4J
	0RueyRELSjFgN/KWeLo1vIK79K5tHPWJ3xJPTiWcoFd3fhwDY5eV9udhPRRpUxdpJzyHJVcVqlP6G
	V9e52A36RDcZ/fCwuhnXXydg8BJxOLJCPBoxmw3Lua4S54AXlIllyI+RVw8HhCKQXNz8RMGpFICry
	xyybweyiqVWYQ69vNrQqtJNMMI5GzaFxFHz0mQl58iTX1JjzyE5FUY/H4n8eIe/BzBXpMfXCI4qn/
	xWu1q15v12IpgzobneAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6z7d-0004cY-2b; Wed, 26 Feb 2020 16:01:17 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6z4F-0000P2-Vr
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 15:57:49 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id EDB40819C;
 Wed, 26 Feb 2020 15:58:31 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH] ARM: OMAP2+: Fix compile if CONFIG_HAVE_ARM_SMCCC is not set
Date: Wed, 26 Feb 2020 07:57:44 -0800
Message-Id: <20200226155744.38769-1-tony@atomide.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_075748_134378_F1380287 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Rob Herring <robh@kernel.org>, kbuild test robot <lkp@intel.com>,
 Arnd Bergmann <arnd@arndb.de>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Catalin Marinas <catalin.marinas@arm.com>, "Andrew F . Davis" <afd@ti.com>,
 Marc Zyngier <maz@kernel.org>, Russell King <rmk+kernel@arm.linux.org.uk>,
 Steven Price <steven.price@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Recent omap changes added runtime checks to use omap_smccc_smc()
when optee is configured in dts. As the omap-secure code can be
built for ARMv6 only without ARMv7 and use custom smc calls, we
now get a build error:

omap-secure.c:(.text+0x94): undefined reference to `__arm_smccc_smc'

As there secure calls are not used for ARMv6, we should not build
secure-common, and not call omap_secure_init() for omap2.

Fixes: c37baa06f8a9 ("ARM: OMAP2+: Fix undefined reference to omap_secure_init")
Reported-by: kbuild test robot <lkp@intel.com>
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>
Cc: Andrew F. Davis <afd@ti.com>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Marc Zyngier <maz@kernel.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Russell King <rmk+kernel@arm.linux.org.uk>
Cc: Steven Price <steven.price@arm.com>
Cc: Will Deacon <will@kernel.org>
Acked-by: Andrew F. Davis <afd@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/mach-omap2/Makefile | 2 +-
 arch/arm/mach-omap2/io.c     | 2 --
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/arm/mach-omap2/Makefile b/arch/arm/mach-omap2/Makefile
--- a/arch/arm/mach-omap2/Makefile
+++ b/arch/arm/mach-omap2/Makefile
@@ -16,7 +16,7 @@ hwmod-common				= omap_hwmod.o omap_hwmod_reset.o \
 clock-common				= clock.o
 secure-common				= omap-smc.o omap-secure.o
 
-obj-$(CONFIG_ARCH_OMAP2) += $(omap-2-3-common) $(hwmod-common) $(secure-common)
+obj-$(CONFIG_ARCH_OMAP2) += $(omap-2-3-common) $(hwmod-common)
 obj-$(CONFIG_ARCH_OMAP3) += $(omap-2-3-common) $(hwmod-common) $(secure-common)
 obj-$(CONFIG_ARCH_OMAP4) += $(hwmod-common) $(secure-common)
 obj-$(CONFIG_SOC_AM33XX) += $(hwmod-common) $(secure-common)
diff --git a/arch/arm/mach-omap2/io.c b/arch/arm/mach-omap2/io.c
--- a/arch/arm/mach-omap2/io.c
+++ b/arch/arm/mach-omap2/io.c
@@ -431,7 +431,6 @@ void __init omap2420_init_early(void)
 	omap_hwmod_init_postsetup();
 	omap_clk_soc_init = omap2420_dt_clk_init;
 	rate_table = omap2420_rate_table;
-	omap_secure_init();
 }
 
 void __init omap2420_init_late(void)
@@ -456,7 +455,6 @@ void __init omap2430_init_early(void)
 	omap_hwmod_init_postsetup();
 	omap_clk_soc_init = omap2430_dt_clk_init;
 	rate_table = omap2430_rate_table;
-	omap_secure_init();
 }
 
 void __init omap2430_init_late(void)
-- 
2.25.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
