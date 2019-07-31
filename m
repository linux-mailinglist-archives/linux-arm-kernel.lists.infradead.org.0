Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5BA67CDBA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 22:04:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pNFK3A25hjoDKE87Wrx9l0Ue6ZBL2U54oH12nnHTBhw=; b=VPvlTSp6Ve39jF
	8p7CUEM37RAvplUofOdQvNerQQRKKI2UHN0bEVkNZ1TrxZS4DU4ZTbuJ73YmhZUFPsC0A3xn23r/+
	ukWy8FtLrEu+b7lzy2Atg3wrcbsOz1/94qpgnv2XLeWs2FC/lQVskYP22vC18XF3S7SpXD9nnpgGP
	dHKe81QT6/qLQOsRE2W3cmhmQXiJVqJbz/4Zj+aY2NGVuedU6R6eb99+rJiQf5lvugqGa8lJZO9EO
	MaA04qAcN65NQKAxhOhPRIMrrYNU/0mQlzqjy8q8V0YEKxIJ6Hpt+d4zQwk7qvdbY4ESq17XN/J++
	TXuHoaKATpdZfrYMadpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsuq0-0004kX-SG; Wed, 31 Jul 2019 20:04:40 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsupk-0004dB-Bv
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 20:04:26 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MG90u-1i9MpD1XiO-00GdEL; Wed, 31 Jul 2019 22:03:55 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: soc@kernel.org, linux-arm-kernel@lists.infradead.org,
 Vladimir Zapolskiy <vz@mleia.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 11/14] ARM: lpc32xx: allow multiplatform build
Date: Wed, 31 Jul 2019 21:56:53 +0200
Message-Id: <20190731195713.3150463-12-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190731195713.3150463-1-arnd@arndb.de>
References: <20190731195713.3150463-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:gID4RNpoX8Zy0tyRqB2A6yiPGJfcnxOOAaqeCpDCy5//AbU5fC+
 Aq2RaOrGEVpMj/GW50xVSsjfcw1hj8Jqyy4sqmlL5C6GhIiSItYASN6wS4s0tJsnDSxDQGU
 4cCKMnrp63iGJZf5+t0aWd3WlnBJDiiqakf3ozIiK3SnkTBYlqu6XZBcE3yOVYjdk8f1wxt
 jiefSp6XmrWvYU+WhrFqw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:eM8z4Th1230=:8gdVoiZjbL4WjyeaVcDmZr
 cpT0mCOoqZv4Cg0/dVlx28ZgDrevnB1uhSfamTVZMiViwm8GrOEJOg+bFuHgn0vUrAk64Eqzz
 dVnc+ygDk1KuMm0rOh3zEW2GPfr6AOumDW4SvzirTizwdiFGhBBf7jlqUYHzUVWsghQXkzC/6
 X7rra8A4a09pZwHwUgQlDzt0cCEklYGimCBI4EsB9yaE0KENJj6skQJ5A2DCvdgcsb91AUkaf
 YP6QPfGJVColH35OSiBK+ZJXoNrj4ZvouhJc6jwgVvT5I47YZMoKIasuvvx6PmMa0D6DwxK17
 3EsEOsRjZ3J+1pibA4uOuRZc7BKfB1zT75NkQSZF8qF7Ds7mY17jzHB0Ip4fk2ozwRBi4gIMB
 9wCwQ7CvKSk/fe6RwLXPEw0QyWUCAE8FRGGmyzDKLWvG1qdoGTaMrxi2LNNrEhnNm0sIcU2Sr
 4XP4mPbBJSpLb9J64YnV6PGs2fSYsA2aemNk7Wir4NJng1/wG/yqnA8G5sznbsj3sxiVnV1I1
 rgq0vyKXldZvGlemusABzGEHSy3Mmd/E/e2+/BoKCioKYR1/lbn1nUDc6+h1BMBxGi8UkK/xm
 oQKxXdz/IguWloG6WLtpRPhsKUYhMexLuxanjICeC0MeBV1UYH0iJqH1NqfIwRxiCYVGbEzJL
 yEv38bGmbbOzDxt69iUvf+vr58AmBAm2WH67COjQgbWNFuTIn1dy9+05xd/GlTOFNMrlhMFmP
 rmRjILq3mssWIPxPDOxj/xJzsX0Dnu+IBGzyww==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_130424_717446_7A0CD085 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
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
Cc: Andrew Lunn <andrew@lunn.ch>, linux-watchdog@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 Alan Stern <stern@rowland.harvard.edu>, linux-serial@vger.kernel.org,
 netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Guenter Roeck <linux@roeck-us.net>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

All preparation work is done, so the platform can finally
be moved into ARCH_MULTIPLATFORM. This requires a small
change to the defconfig file to enable the platform.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/Kconfig                              | 17 +------
 arch/arm/configs/lpc32xx_defconfig            |  1 +
 arch/arm/mach-lpc32xx/Kconfig                 | 11 +++++
 .../mach-lpc32xx/include/mach/uncompress.h    | 48 -------------------
 4 files changed, 14 insertions(+), 63 deletions(-)
 create mode 100644 arch/arm/mach-lpc32xx/Kconfig
 delete mode 100644 arch/arm/mach-lpc32xx/include/mach/uncompress.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 33b00579beff..65808e17cb3b 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -478,21 +478,6 @@ config ARCH_W90X900
 	  <http://www.nuvoton.com/hq/enu/ProductAndSales/ProductLines/
 		ConsumerElectronicsIC/ARMMicrocontroller/ARMMicrocontroller>
 
-config ARCH_LPC32XX
-	bool "NXP LPC32XX"
-	select ARM_AMBA
-	select CLKDEV_LOOKUP
-	select CLKSRC_LPC32XX
-	select COMMON_CLK
-	select CPU_ARM926T
-	select GENERIC_CLOCKEVENTS
-	select GENERIC_IRQ_MULTI_HANDLER
-	select GPIOLIB
-	select SPARSE_IRQ
-	select USE_OF
-	help
-	  Support for the NXP LPC32XX family of processors
-
 config ARCH_PXA
 	bool "PXA2xx/PXA3xx-based"
 	depends on MMU
@@ -746,6 +731,8 @@ source "arch/arm/mach-keystone/Kconfig"
 
 source "arch/arm/mach-ks8695/Kconfig"
 
+source "arch/arm/mach-lpc32xx/Kconfig"
+
 source "arch/arm/mach-mediatek/Kconfig"
 
 source "arch/arm/mach-meson/Kconfig"
diff --git a/arch/arm/configs/lpc32xx_defconfig b/arch/arm/configs/lpc32xx_defconfig
index 0cdc6c7974b3..2d75bd8dbaf0 100644
--- a/arch/arm/configs/lpc32xx_defconfig
+++ b/arch/arm/configs/lpc32xx_defconfig
@@ -12,6 +12,7 @@ CONFIG_CC_OPTIMIZE_FOR_SIZE=y
 CONFIG_SYSCTL_SYSCALL=y
 CONFIG_EMBEDDED=y
 CONFIG_SLAB=y
+# CONFIG_ARCH_MULTI_V7 is not set
 CONFIG_ARCH_LPC32XX=y
 CONFIG_AEABI=y
 CONFIG_ZBOOT_ROM_TEXT=0x0
diff --git a/arch/arm/mach-lpc32xx/Kconfig b/arch/arm/mach-lpc32xx/Kconfig
new file mode 100644
index 000000000000..ec87c65f4536
--- /dev/null
+++ b/arch/arm/mach-lpc32xx/Kconfig
@@ -0,0 +1,11 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+config ARCH_LPC32XX
+	bool "NXP LPC32XX"
+	depends on ARCH_MULTI_V5
+	select ARM_AMBA
+	select CLKSRC_LPC32XX
+	select CPU_ARM926T
+	select GPIOLIB
+	help
+	  Support for the NXP LPC32XX family of processors
diff --git a/arch/arm/mach-lpc32xx/include/mach/uncompress.h b/arch/arm/mach-lpc32xx/include/mach/uncompress.h
deleted file mode 100644
index 74b7aa0da0e4..000000000000
--- a/arch/arm/mach-lpc32xx/include/mach/uncompress.h
+++ /dev/null
@@ -1,48 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-or-later */
-/*
- * arch/arm/mach-lpc32xx/include/mach/uncompress.h
- *
- * Author: Kevin Wells <kevin.wells@nxp.com>
- *
- * Copyright (C) 2010 NXP Semiconductors
- */
-
-#ifndef __ASM_ARM_ARCH_UNCOMPRESS_H
-#define __ASM_ARM_ARCH_UNCOMPRESS_H
-
-#include <linux/io.h>
-
-/*
- * Uncompress output is hardcoded to standard UART 5
- */
-
-#define UART_FIFO_CTL_TX_RESET	(1 << 2)
-#define UART_STATUS_TX_MT	(1 << 6)
-#define LPC32XX_UART5_BASE	0x40090000
-
-#define _UARTREG(x)		(void __iomem *)(LPC32XX_UART5_BASE + (x))
-
-#define LPC32XX_UART_DLLFIFO_O	0x00
-#define LPC32XX_UART_IIRFCR_O	0x08
-#define LPC32XX_UART_LSR_O	0x14
-
-static inline void putc(int ch)
-{
-	/* Wait for transmit FIFO to empty */
-	while ((__raw_readl(_UARTREG(LPC32XX_UART_LSR_O)) &
-		UART_STATUS_TX_MT) == 0)
-		;
-
-	__raw_writel((u32) ch, _UARTREG(LPC32XX_UART_DLLFIFO_O));
-}
-
-static inline void flush(void)
-{
-	__raw_writel(__raw_readl(_UARTREG(LPC32XX_UART_IIRFCR_O)) |
-		UART_FIFO_CTL_TX_RESET, _UARTREG(LPC32XX_UART_IIRFCR_O));
-}
-
-/* NULL functions; we don't presently need them */
-#define arch_decomp_setup()
-
-#endif
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
