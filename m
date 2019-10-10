Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DDE7D3225
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 22:35:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LfnNUQ4Bx1PalcPzElRuf13JsPPAQN10RG5+SpnKGo8=; b=OuFtEUuBR81k58
	wkel5LgqS9FN7JjI/kdKMxG4pmGcDBaxyu1dsTnTxu64UabuBve/iuH54IIzq/oRc7pQ4mzSOYx7E
	aoji6rIdaypB+JfKNX1eGFUpKE8jnGYB4lurdfI302JFJpegOAN1XzpofSPD7MNEPNFdMDeYRsstk
	8/xmA87iF0WX6btYu0xsS9lvVutDlkmo+v20p0iES9l7QZbxeWI2acSwd6hJNrudHwJDGgA3uO0Gd
	Fai7y9sbI0ygA4L3GRJtdOvjQIfE2eX8Lcn1nSsK2vQUCDjx5ycwpq0FuxWv4pHofrNblJ8Z6IY6v
	Z7kx+ZZf3pFoWjd0N+ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIf9I-0003Uf-38; Thu, 10 Oct 2019 20:35:00 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIf95-0003Tu-Mq
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 20:34:49 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MuF4v-1hxQGJ3NEb-00uawx; Thu, 10 Oct 2019 22:34:38 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>
Subject: [PATCH 08/36] ARM: exynos: stop selecting PLAT_SAMSUNG
Date: Thu, 10 Oct 2019 22:29:52 +0200
Message-Id: <20191010203043.1241612-8-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191010203043.1241612-1-arnd@arndb.de>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:uwZUxKfHU6aXQrxq5LBsqRjtGw4Jouv7a9Oj5nhgoB0hlXyrcjq
 cQyW2Cc79CrgKEOR6AddSkd8kEBELnOavaFnpiNz+2wYC6JLZtkFkNgiIgcAb7IBPMKOVw0
 /4ytjJKtS7vIIFSkZF7IEeIC9HtyP3lGkyhZhf4Pi3jKK/5gN5ZDuHWv+OUxglNHQchIV00
 9MUCnTUKaPQYLOuhuq7Yg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:MjZuD1WSriM=:hwMzUoxCknZvCwSvNSjCMN
 7y6Uvi/BhIjqy3zK9+GLPLSNPmAYLF6XMR5MVm9RdReMkMhEpRn9U0e2Bqx/jFGajmKkkwPaF
 OwPQDZ/+fO1eN5nL+6z52rQyDTWBG/uTALbBrsxJFjw2IXpGkynCbp+CvOZSYprMJ+B+R4ASg
 8BLcQdVkFnlwHipnDjJMzkOCDq8f/K/fea3DmU+S6WllVxMBke4EAGCFCz+N7DLEAdxr1uit2
 UHXrt4ArSWWE1IOV1hWsBjL9OoKUx6cb9T4rAhjcQrYQRjP8dXIy1yExNCq/K1pvVZm+chtMl
 gpJJYL3sYB5Hg7Aa6mC4X2/uNwbpQyBbZCXB1Lcxc6Rj402rXZQCV2Xjc4m5va6u+CCtnXL4x
 4yC/wMNz5qcSvYatDm8uHxsqOXJ2qvf4Eh7HcD8JzxLmcY1MjSa3NB8LRnEZgol+ONBYmvDoz
 OEh2KpTH7cbgo3nQxW3+JuTkmuCV+x+NlnA1/PJKIzzxG2jj7xoi1GAS7ZrZwhGb/J9FU/oZa
 sMXSrcHyKE9XN+8rl6ymRIH1La+GHJZXvQw6Sd70xeGKzq5WJSqpklT2Ql4aKALBCxsLCaGxt
 Gvs7d/Fj8p4WWGHEyJNaHyK0X5ltlQo2XUe7WBqDH65jq+4uEstinmPiWPi7rgkwSppRrlyu+
 kBzlPLcpQxheqyt2DqjQ9FMOnqx5mGNz1Oj6JaLtBKUDi8RpaZp7TGvCZ+njWgcqEhIGm/FQQ
 S5Y24w/1H9yJpgB9XlgNpINBNfESIaOnFJqyFXF7R12fdZ4/L7hfjdGcZ74xss1Qn9i4MeOBB
 t3OBWaJsXz357+6RJFLHXKD3cL1S4doTsLpMWmh5tniImws1g/Gy4X2PoBsyOv3h5d3eZfz6l
 rMhwf0F77SGifPySmcCg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_133448_037881_784D7983 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-samsung-soc@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>, linus.walleij@linaro.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Olof Johansson <olof@lixom.net>, "Enrico Weigelt,
 metux IT consult" <info@metux.net>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that no code in arch/arm is shared between mach-exynos and the
others, make the split formal.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/Kconfig.debug        | 8 ++++----
 arch/arm/Makefile             | 1 -
 arch/arm/mach-exynos/Makefile | 4 ----
 arch/arm/plat-samsung/Kconfig | 4 ++--
 drivers/mmc/host/Kconfig      | 2 +-
 5 files changed, 7 insertions(+), 12 deletions(-)

diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
index d05b836dfeb2..9c4f2d6deb06 100644
--- a/arch/arm/Kconfig.debug
+++ b/arch/arm/Kconfig.debug
@@ -998,7 +998,7 @@ choice
 		  via SCIFA4 on Renesas SH-Mobile AG5 (SH73A0).
 
 	config DEBUG_S3C_UART0
-		depends on PLAT_SAMSUNG
+		depends on PLAT_SAMSUNG || ARCH_EXYNOS
 		select DEBUG_EXYNOS_UART if ARCH_EXYNOS
 		select DEBUG_S3C24XX_UART if ARCH_S3C24XX
 		select DEBUG_S3C64XX_UART if ARCH_S3C64XX
@@ -1010,7 +1010,7 @@ choice
 		  by the boot-loader before use.
 
 	config DEBUG_S3C_UART1
-		depends on PLAT_SAMSUNG
+		depends on PLAT_SAMSUNG || ARCH_EXYNOS
 		select DEBUG_EXYNOS_UART if ARCH_EXYNOS
 		select DEBUG_S3C24XX_UART if ARCH_S3C24XX
 		select DEBUG_S3C64XX_UART if ARCH_S3C64XX
@@ -1022,7 +1022,7 @@ choice
 		  by the boot-loader before use.
 
 	config DEBUG_S3C_UART2
-		depends on PLAT_SAMSUNG
+		depends on PLAT_SAMSUNG || ARCH_EXYNOS
 		select DEBUG_EXYNOS_UART if ARCH_EXYNOS
 		select DEBUG_S3C24XX_UART if ARCH_S3C24XX
 		select DEBUG_S3C64XX_UART if ARCH_S3C64XX
@@ -1034,7 +1034,7 @@ choice
 		  by the boot-loader before use.
 
 	config DEBUG_S3C_UART3
-		depends on PLAT_SAMSUNG && (ARCH_EXYNOS || ARCH_S5PV210)
+		depends on ARCH_EXYNOS || ARCH_S5PV210
 		select DEBUG_EXYNOS_UART if ARCH_EXYNOS
 		select DEBUG_S3C64XX_UART if ARCH_S3C64XX
 		select DEBUG_S5PV210_UART if ARCH_S5PV210
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index db857d07114f..f492d7c338fe 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -233,7 +233,6 @@ machine-$(CONFIG_PLAT_SPEAR)		+= spear
 
 # Platform directory name.  This list is sorted alphanumerically
 # by CONFIG_* macro name.
-plat-$(CONFIG_ARCH_EXYNOS)	+= samsung
 plat-$(CONFIG_ARCH_OMAP)	+= omap
 plat-$(CONFIG_ARCH_S3C64XX)	+= samsung
 plat-$(CONFIG_ARCH_S5PV210)	+= samsung
diff --git a/arch/arm/mach-exynos/Makefile b/arch/arm/mach-exynos/Makefile
index 0fd3fcf8bfb0..53fa363c8e44 100644
--- a/arch/arm/mach-exynos/Makefile
+++ b/arch/arm/mach-exynos/Makefile
@@ -3,10 +3,6 @@
 # Copyright (c) 2010-2011 Samsung Electronics Co., Ltd.
 #		http://www.samsung.com/
 
-ccflags-$(CONFIG_ARCH_MULTIPLATFORM) += -I$(srctree)/$(src)/include -I$(srctree)/arch/arm/plat-samsung/include
-
-# Core
-
 obj-$(CONFIG_ARCH_EXYNOS)	+= exynos.o exynos-smc.o firmware.o
 
 obj-$(CONFIG_EXYNOS_CPU_SUSPEND) += pm.o sleep.o
diff --git a/arch/arm/plat-samsung/Kconfig b/arch/arm/plat-samsung/Kconfig
index 832ab0e6cd72..e31a156a27df 100644
--- a/arch/arm/plat-samsung/Kconfig
+++ b/arch/arm/plat-samsung/Kconfig
@@ -4,7 +4,7 @@
 
 config PLAT_SAMSUNG
 	bool
-	depends on PLAT_S3C24XX || ARCH_S3C64XX || ARCH_EXYNOS || ARCH_S5PV210
+	depends on PLAT_S3C24XX || ARCH_S3C64XX || ARCH_S5PV210
 	default y
 	select GENERIC_IRQ_CHIP
 	select NO_IOPORT_MAP
@@ -240,7 +240,7 @@ config SAMSUNG_PM_DEBUG
 	bool "Samsung PM Suspend debug"
 	depends on PM && DEBUG_KERNEL
 	depends on PLAT_S3C24XX || ARCH_S3C64XX || ARCH_S5PV210
-	depends on DEBUG_EXYNOS_UART || DEBUG_S3C24XX_UART || DEBUG_S3C2410_UART
+	depends on DEBUG_S3C24XX_UART || DEBUG_S3C2410_UART
 	help
 	  Say Y here if you want verbose debugging from the PM Suspend and
 	  Resume code. See <file:Documentation/arm/samsung-s3c24xx/suspend.rst>
diff --git a/drivers/mmc/host/Kconfig b/drivers/mmc/host/Kconfig
index 49ea02c467bf..400a581c918c 100644
--- a/drivers/mmc/host/Kconfig
+++ b/drivers/mmc/host/Kconfig
@@ -275,7 +275,7 @@ config MMC_SDHCI_TEGRA
 
 config MMC_SDHCI_S3C
 	tristate "SDHCI support on Samsung S3C SoC"
-	depends on MMC_SDHCI && PLAT_SAMSUNG
+	depends on MMC_SDHCI && (PLAT_SAMSUNG || ARCH_EXYNOS)
 	help
 	  This selects the Secure Digital Host Controller Interface (SDHCI)
 	  often referrered to as the HSMMC block in some of the Samsung S3C
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
