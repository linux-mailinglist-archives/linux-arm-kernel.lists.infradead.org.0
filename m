Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4916D322C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 22:38:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YcHaDxy8vpLZdC+v4IeJQVUXb6Fms4cLPXu996PGSCQ=; b=sV7J6Kvii/pRz/
	3/UKK80nbEzbyt92JXmy/fQqNfZeckNShI92tnap8Bx6vhU45BYFm5Yn8DubxUbFe3Xl3Z2lzIGjM
	FZQJKtoS5uH81Ho8wu093AK00I8AJEmAVFfwQLTwqAx3YVZeQYHt88irehUL7aTU4H/2tOafrDQJr
	NleYZDNIYxBQtJGEz1FtGDTubXD4T98DQ6g+ZhhEftQKjGYrZXWKFCzTrBfL8IT2mm188rZmSf+9J
	ay+x4J/MqmITY5ZemkGSpyzI9qeeuhx63tJ2OnptPFuvkj54PymNwr4+Sa3DXZXSKo8KKkJvIzBrL
	jyU8ded4haCxqFgQpwfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIfD4-0006rA-N5; Thu, 10 Oct 2019 20:38:54 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIfCs-0006qb-Gw
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 20:38:44 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MvKTJ-1i0io918NN-00rJAB; Thu, 10 Oct 2019 22:38:12 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Mark Brown <broonie@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jslaby@suse.com>, Sangbeom Kim <sbkim73@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Liam Girdwood <lgirdwood@gmail.com>
Subject: [PATCH 11/36] ARM: s5pv210: split from plat-samsung
Date: Thu, 10 Oct 2019 22:29:55 +0200
Message-Id: <20191010203043.1241612-11-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191010203043.1241612-1-arnd@arndb.de>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:DeCWCHOpOlptkpY1Z/HIZH2sQ5vntA19TvDZ7kwzXVESbUwtDT/
 nya/g+yk9RmYCdn7Mnh6OP8xv47pVGRSws4DiX1LHA12gXOzQ1qn6lxQpZRRKqP7iAcdbOu
 l8p40rlKc+olt+OUsDEnNqYSWkVcmXc0U/jNtH57wqSdtcs66pZwaDfNStTfnXSHjMdAuUp
 DXP4NCRq3Rv4Wl6NcQjBg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:KPFFi7urTwk=:P0VUAx0mQV0RyAkge1tOF5
 Z/OBFZSRG+nwpOLZGYULeoFGwoagH/2P2LEXzhRAW5zMvDhMqbJQ9mzjtzfnRNeEhVZ0gDYDJ
 CykC+d1CzLd+aW2GVrWocU5wdIZKVAUw2oYck3ZT1FdLuisDLLRlQ7ooz86osiHPW71TBFJ6t
 WXuQ3fwfJAgQ9rIth2pQBuJ1gpMig4USaOiJ3vhpUL65WUmTBdpPHyfLsHUmlLgcpvbvqIIfv
 n4P7ECrvi49H/eGtb18RgiEGiHPLzJO807ZMamHJapIyHua/szElJoTQFCPKNuYdAjV9DeTYk
 RdNLLkZNBGKwKMtKs4zm1QcO1qnkxdXIbrUY8PU7BWG4wBuLTwpgxMaapIiZF/bwwg8JJ6/6a
 8y8/iEHqyoJ9xKOaKtfljEBDENzJN1GqRuyTpwv/12cIfBczoHDZQpbAb5rFd/bnswKf1lu0a
 dVVJpLcnkD6ihqNhDimLNkuOiK8TxYEwSj6KAnp7ExU955M50aatPaOjHGHXac0JTa7Mm/Kfp
 gJp/qGkOHKTLJW/vCb8IwwHfs7GYXefBiiwjIqkaLeIi/KYEL2VF9Mg0HTU42gmIPKD3Wqe95
 q8txmDV6AE20P3VWTv0S2OIbEACrqPRaBu4im4BNZtZG7LcyBV3JkeK3B30+N5qCkfvZt8qKj
 U2QVc5t/ZrUMYEk7nZcq8nF4p5vJT/AkVOXRmnXLHMHkwxkVfuUWgeKebZ62c/HhMMtJ0QQ3a
 mtytbdoOtXYX3+AwX13fJNiqZrvW34Yt48Wg4UQbbwxucTrepEGTomVXxdK9NZ7NWFSnMnEUy
 h1MUWk7gsGxTlCkbcZ3fj1Sg+w94MIdMWSb6xCLtIHMV3Io+qK/kbjhlHaRiP/LqBeq61X6GA
 5dQG3dEGuSPEkJVAfh0A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_133842_857294_A118AB48 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
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
Cc: linux-pwm@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-samsung-soc@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 linux-kernel@vger.kernel.org, linus.walleij@linaro.org,
 linux-mmc@vger.kernel.org, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Faiz Abbas <faiz_abbas@ti.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-serial@vger.kernel.org,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Olof Johansson <olof@lixom.net>, linux-spi@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These can be build completely independently, so split
the two Kconfig symbols.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/Kconfig.debug        | 6 +++---
 arch/arm/Makefile             | 1 -
 arch/arm/plat-samsung/Kconfig | 2 +-
 drivers/mmc/host/Kconfig      | 2 +-
 drivers/pwm/Kconfig           | 2 +-
 drivers/spi/Kconfig           | 2 +-
 drivers/tty/serial/Kconfig    | 2 +-
 sound/soc/samsung/Kconfig     | 2 +-
 8 files changed, 9 insertions(+), 10 deletions(-)

diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
index 9c4f2d6deb06..4c4e97ae4fcb 100644
--- a/arch/arm/Kconfig.debug
+++ b/arch/arm/Kconfig.debug
@@ -998,7 +998,7 @@ choice
 		  via SCIFA4 on Renesas SH-Mobile AG5 (SH73A0).
 
 	config DEBUG_S3C_UART0
-		depends on PLAT_SAMSUNG || ARCH_EXYNOS
+		depends on PLAT_SAMSUNG || ARCH_S5PV210 || ARCH_EXYNOS
 		select DEBUG_EXYNOS_UART if ARCH_EXYNOS
 		select DEBUG_S3C24XX_UART if ARCH_S3C24XX
 		select DEBUG_S3C64XX_UART if ARCH_S3C64XX
@@ -1010,7 +1010,7 @@ choice
 		  by the boot-loader before use.
 
 	config DEBUG_S3C_UART1
-		depends on PLAT_SAMSUNG || ARCH_EXYNOS
+		depends on PLAT_SAMSUNG || ARCH_S5PV210 || ARCH_EXYNOS
 		select DEBUG_EXYNOS_UART if ARCH_EXYNOS
 		select DEBUG_S3C24XX_UART if ARCH_S3C24XX
 		select DEBUG_S3C64XX_UART if ARCH_S3C64XX
@@ -1022,7 +1022,7 @@ choice
 		  by the boot-loader before use.
 
 	config DEBUG_S3C_UART2
-		depends on PLAT_SAMSUNG || ARCH_EXYNOS
+		depends on PLAT_SAMSUNG || ARCH_S5PV210 || ARCH_EXYNOS
 		select DEBUG_EXYNOS_UART if ARCH_EXYNOS
 		select DEBUG_S3C24XX_UART if ARCH_S3C24XX
 		select DEBUG_S3C64XX_UART if ARCH_S3C64XX
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index f492d7c338fe..a1bc15cda751 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -235,7 +235,6 @@ machine-$(CONFIG_PLAT_SPEAR)		+= spear
 # by CONFIG_* macro name.
 plat-$(CONFIG_ARCH_OMAP)	+= omap
 plat-$(CONFIG_ARCH_S3C64XX)	+= samsung
-plat-$(CONFIG_ARCH_S5PV210)	+= samsung
 plat-$(CONFIG_PLAT_ORION)	+= orion
 plat-$(CONFIG_PLAT_PXA)		+= pxa
 plat-$(CONFIG_PLAT_S3C24XX)	+= samsung
diff --git a/arch/arm/plat-samsung/Kconfig b/arch/arm/plat-samsung/Kconfig
index 740bdb23f38a..1530946cc672 100644
--- a/arch/arm/plat-samsung/Kconfig
+++ b/arch/arm/plat-samsung/Kconfig
@@ -4,7 +4,7 @@
 
 config PLAT_SAMSUNG
 	bool
-	depends on PLAT_S3C24XX || ARCH_S3C64XX || ARCH_S5PV210
+	depends on PLAT_S3C24XX || ARCH_S3C64XX
 	default y
 	select GENERIC_IRQ_CHIP
 	select NO_IOPORT_MAP
diff --git a/drivers/mmc/host/Kconfig b/drivers/mmc/host/Kconfig
index 400a581c918c..16a0e5430b44 100644
--- a/drivers/mmc/host/Kconfig
+++ b/drivers/mmc/host/Kconfig
@@ -275,7 +275,7 @@ config MMC_SDHCI_TEGRA
 
 config MMC_SDHCI_S3C
 	tristate "SDHCI support on Samsung S3C SoC"
-	depends on MMC_SDHCI && (PLAT_SAMSUNG || ARCH_EXYNOS)
+	depends on MMC_SDHCI && (PLAT_SAMSUNG || ARCH_S5PV210 || ARCH_EXYNOS)
 	help
 	  This selects the Secure Digital Host Controller Interface (SDHCI)
 	  often referrered to as the HSMMC block in some of the Samsung S3C
diff --git a/drivers/pwm/Kconfig b/drivers/pwm/Kconfig
index e3a2518503ed..8eb738cac0c7 100644
--- a/drivers/pwm/Kconfig
+++ b/drivers/pwm/Kconfig
@@ -394,7 +394,7 @@ config PWM_ROCKCHIP
 
 config PWM_SAMSUNG
 	tristate "Samsung PWM support"
-	depends on PLAT_SAMSUNG || ARCH_EXYNOS
+	depends on PLAT_SAMSUNG || ARCH_S5PV210 || ARCH_EXYNOS
 	help
 	  Generic PWM framework driver for Samsung.
 
diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index 6f7fdcbb9151..355391ee643d 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -625,7 +625,7 @@ config SPI_S3C24XX_FIQ
 
 config SPI_S3C64XX
 	tristate "Samsung S3C64XX series type SPI"
-	depends on (PLAT_SAMSUNG || ARCH_EXYNOS || COMPILE_TEST)
+	depends on (PLAT_SAMSUNG || ARCH_S5PV210 || ARCH_EXYNOS || COMPILE_TEST)
 	help
 	  SPI driver for Samsung S3C64XX and newer SoCs.
 
diff --git a/drivers/tty/serial/Kconfig b/drivers/tty/serial/Kconfig
index 4789b5d62f63..17f01cf3009c 100644
--- a/drivers/tty/serial/Kconfig
+++ b/drivers/tty/serial/Kconfig
@@ -237,7 +237,7 @@ config SERIAL_CLPS711X_CONSOLE
 
 config SERIAL_SAMSUNG
 	tristate "Samsung SoC serial support"
-	depends on PLAT_SAMSUNG || ARCH_EXYNOS
+	depends on PLAT_SAMSUNG || ARCH_S5PV210 || ARCH_EXYNOS
 	select SERIAL_CORE
 	help
 	  Support for the on-chip UARTs on the Samsung S3C24XX series CPUs,
diff --git a/sound/soc/samsung/Kconfig b/sound/soc/samsung/Kconfig
index 638983123d8f..7a0035dd9995 100644
--- a/sound/soc/samsung/Kconfig
+++ b/sound/soc/samsung/Kconfig
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 menuconfig SND_SOC_SAMSUNG
 	tristate "ASoC support for Samsung"
-	depends on PLAT_SAMSUNG || ARCH_EXYNOS || COMPILE_TEST
+	depends on PLAT_SAMSUNG || ARCH_S5PV210 || ARCH_EXYNOS || COMPILE_TEST
 	depends on COMMON_CLK
 	select SND_SOC_GENERIC_DMAENGINE_PCM
 	---help---
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
