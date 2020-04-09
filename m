Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E441A2F52
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 08:45:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YZMgGjrVlI2bOLe9TgYmF88vBpF5t058hoGQNQ8eo5c=; b=Yj6pn2MKCPJawE
	s25UduPP5YkTkgRauwkls6tSqNa+nKTIkGJWRoLVjWpHKz30GLE07bhmT8nEXXBtNbtW3AzWFP6Bf
	yPTlGU4Cm953aDxtXrPW+qUJ/rHTqT4Dw8rsID+6vHPP42oxDM91t4yhc+YFjo0rajrsZrHV3sXxR
	ra1OjR74/xs2gBTBTbVezGWLghpH18K+qNZNXmwhWNtZ/WK5cA2qImMIHBqyyeTXjaI7SxdqtjvBf
	sXCjumJTC89AaWwsYlt4QeLrI1nZd1LoDL34snpSVyAfEEZ5WWGl0wFAiPikhQrx7rwZXsUzHTzj6
	zHPo9Ikyn6sbeDFC3z1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMQvt-0004fd-Mz; Thu, 09 Apr 2020 06:45:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMQvF-00048N-AG
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 06:44:23 +0000
Received: from mail.kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 05BB420B1F;
 Thu,  9 Apr 2020 06:44:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586414659;
 bh=J+GeXfiCzFFO7mDslriUKKDucExeUS2dHChanjrxLIk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gisbdcRg0Zj7k1O4uKiNFoKUUSGs0uWX4AC/Xk372PjhTEF+AThaoex5uMHlonZei
 1MHWLxJ5pa8o3Pl2Lgg/sd2U1xeXRNNwEmZ6m9A4gRfCvzq9DX6h1GeS+D9OKgguGU
 cfFC/r9lX7PvbeFkRHq9hsP3k2SBBl8q7tc179tA=
From: Stephen Boyd <sboyd@kernel.org>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH v2 02/10] ARM: Remove redundant CLKDEV_LOOKUP selects
Date: Wed,  8 Apr 2020 23:44:08 -0700
Message-Id: <20200409064416.83340-3-sboyd@kernel.org>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
In-Reply-To: <20200409064416.83340-1-sboyd@kernel.org>
References: <20200409064416.83340-1-sboyd@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_234421_384357_3FA56534 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Tony Prisk <linux@prisktech.co.nz>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These platforms select COMMON_CLK indirectly through use of the
ARCH_MULTIPLATFORM config option that they depend on implicitly via some
V7/V6/V5 multi platform config option. The COMMON_CLK config option
already selects CLKDEV_LOOKUP so it's redundant to have this selected
again.

Cc: Tony Prisk <linux@prisktech.co.nz>
Cc: Russell King <linux@armlinux.org.uk>
Cc: <linux-arm-kernel@lists.infradead.org>
Cc: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Stephen Boyd <sboyd@kernel.org>
---
 arch/arm/Kconfig             | 3 ---
 arch/arm/mach-vt8500/Kconfig | 1 -
 2 files changed, 4 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 97864aabc2a6..eeabdc5a3dd2 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -435,7 +435,6 @@ config ARCH_PXA
 	select ARM_CPU_SUSPEND if PM
 	select AUTO_ZRELADDR
 	select COMMON_CLK
-	select CLKDEV_LOOKUP
 	select CLKSRC_PXA
 	select CLKSRC_MMIO
 	select TIMER_OF
@@ -474,7 +473,6 @@ config ARCH_SA1100
 	bool "SA1100-based"
 	select ARCH_MTD_XIP
 	select ARCH_SPARSEMEM_ENABLE
-	select CLKDEV_LOOKUP
 	select CLKSRC_MMIO
 	select CLKSRC_PXA
 	select TIMER_OF if OF
@@ -495,7 +493,6 @@ config ARCH_SA1100
 config ARCH_S3C24XX
 	bool "Samsung S3C24XX SoCs"
 	select ATAGS
-	select CLKDEV_LOOKUP
 	select CLKSRC_SAMSUNG_PWM
 	select GENERIC_CLOCKEVENTS
 	select GPIO_SAMSUNG
diff --git a/arch/arm/mach-vt8500/Kconfig b/arch/arm/mach-vt8500/Kconfig
index 8841199058ea..d01cdd9ad9c7 100644
--- a/arch/arm/mach-vt8500/Kconfig
+++ b/arch/arm/mach-vt8500/Kconfig
@@ -2,7 +2,6 @@
 config ARCH_VT8500
 	bool
 	select GPIOLIB
-	select CLKDEV_LOOKUP
 	select VT8500_TIMER
 	select PINCTRL
 	help
-- 
Sent by a computer, using git, on the internet


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
