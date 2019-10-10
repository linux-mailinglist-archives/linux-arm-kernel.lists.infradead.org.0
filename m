Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 373BCD32DE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 22:50:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9vR4rpJ5Md5YxPEBWWwwtG7LgPKLpV4J8fiXh6U3DfM=; b=uOrc90z8ZIJoA/
	ZyvJI48Ai3xHpamzNE6eJW0exoxR7zvNl1Z5Fi3ly/udVOskASRo63Yh8OSAhSiLnqOEUDUlyZnrd
	gkgCoa1mvU2zHN97+SKXmEfpU60hwI5kHJuuF6IA/1n7VEuCXoOzYW1sA7DAJ2q3FDI3sjtepWtpD
	kkHzTV98dTaHJF7HxuPlCSr4/FSh6oP18vEOOqniFcQRExrPzM92lFnbdb1JWUdpeyFHWFbCV0Iew
	TNC5c+tNbns+d6MmF32j+VhiU32SXqizW8pmv2DtPZSPyc3dB6kSQ8pind0g/a6RJcnGiupXnyRKR
	qpmwLkimG2dkg0B0hlWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIfO1-0006QA-1X; Thu, 10 Oct 2019 20:50:13 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIfNR-0006Ax-Dl
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 20:49:39 +0000
X-Originating-IP: 86.202.229.42
Received: from localhost (lfbn-lyo-1-146-42.w86-202.abo.wanadoo.fr
 [86.202.229.42])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 26EEBE0003;
 Thu, 10 Oct 2019 20:49:29 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Vladimir Zapolskiy <vz@mleia.com>
Subject: [PATCH] ARM: lpc32xx: debug: add low-level debug support on hsuart
Date: Thu, 10 Oct 2019 22:49:27 +0200
Message-Id: <20191010204927.15749-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_134937_756517_228CB8C2 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The lpc32xx has UARTs that are not 8250 compatible. Add support for low
level debugging on those high speed UARTs.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 arch/arm/Kconfig.debug                  | 18 +++++++++++++++---
 arch/arm/include/debug/lpc32xx_hsuart.S | 24 ++++++++++++++++++++++++
 2 files changed, 39 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/include/debug/lpc32xx_hsuart.S

diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
index 8bcbd0cd739b..b95ce5d97946 100644
--- a/arch/arm/Kconfig.debug
+++ b/arch/arm/Kconfig.debug
@@ -523,7 +523,16 @@ choice
 		select DEBUG_UART_8250
 		help
 		  Say Y here if you want kernel low-level debugging support
-		  on NXP LPC32xx based platforms.
+		  on NXP LPC32xx based platforms using an INS16Cx50 compatible
+		  UART.
+
+	config DEBUG_LPC32XX_HSUART
+		bool "Kernel low-level debugging messages via NXP LPC32xx High Speed  UART"
+		depends on ARCH_LPC32XX
+		help
+		  Say Y here if you want kernel low-level debugging support
+		  on NXP LPC32xx based platforms using an high speed (14-clock)
+		  UART.
 
 	config DEBUG_MESON_UARTAO
 		bool "Kernel low-level debugging via Meson6 UARTAO"
@@ -1540,6 +1549,7 @@ config DEBUG_LL_INCLUDE
 				 DEBUG_IMX6SX_UART || \
 				 DEBUG_IMX6UL_UART || \
 				 DEBUG_IMX7D_UART
+	default "debug/lpc32xx_hsuart.S" if DEBUG_LPC32XX_HSUART
 	default "debug/msm.S" if DEBUG_QCOM_UARTDM
 	default "debug/omap2plus.S" if DEBUG_OMAP2PLUS_UART
 	default "debug/renesas-scif.S" if DEBUG_R7S72100_SCIF2
@@ -1619,6 +1629,7 @@ config DEBUG_UART_PHYS
 	default 0x3e000000 if DEBUG_BCM_KONA_UART
 	default 0x3f201000 if DEBUG_BCM2836
 	default 0x4000e400 if DEBUG_LL_UART_EFM32
+	default 0x40014000 if DEBUG_LPC32XX_HSUART
 	default 0x40028000 if DEBUG_AT91_SAMV7_USART1
 	default 0x40081000 if DEBUG_LPC18XX_UART0
 	default 0x40090000 if DEBUG_LPC32XX
@@ -1713,7 +1724,7 @@ config DEBUG_UART_PHYS
 		DEBUG_S3C64XX_UART || \
 		DEBUG_BCM63XX_UART || DEBUG_ASM9260_UART || \
 		DEBUG_SIRFSOC_UART || DEBUG_DIGICOLOR_UA0 || \
-		DEBUG_AT91_UART
+		DEBUG_AT91_UART || DEBUG_LPC32XX_HSUART
 
 config DEBUG_UART_VIRT
 	hex "Virtual base address of debug UART"
@@ -1738,6 +1749,7 @@ config DEBUG_UART_VIRT
 	default 0xf1c28400 if DEBUG_SUNXI_UART1
 	default 0xf1f02800 if DEBUG_SUNXI_R_UART
 	default 0xf31004c0 if DEBUG_MESON_UARTAO
+	default 0xf4014000 if DEBUG_LPC32XX_HSUART
 	default 0xf4090000 if DEBUG_LPC32XX
 	default 0xf4200000 if DEBUG_GEMINI
 	default 0xf6200000 if DEBUG_PXA_UART1
@@ -1823,7 +1835,7 @@ config DEBUG_UART_VIRT
 		DEBUG_S3C64XX_UART || \
 		DEBUG_BCM63XX_UART || DEBUG_ASM9260_UART || \
 		DEBUG_SIRFSOC_UART || DEBUG_DIGICOLOR_UA0 || \
-		DEBUG_AT91_UART
+		DEBUG_AT91_UART || DEBUG_LPC32XX_HSUART
 
 config DEBUG_UART_8250_SHIFT
 	int "Register offset shift for the 8250 debug UART"
diff --git a/arch/arm/include/debug/lpc32xx_hsuart.S b/arch/arm/include/debug/lpc32xx_hsuart.S
new file mode 100644
index 000000000000..7f54bc2cc250
--- /dev/null
+++ b/arch/arm/include/debug/lpc32xx_hsuart.S
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#define LPC_HSU_TX		(0x0)
+#define LPC_HSU_LEVEL		(0x4)
+#define LPC_HSU_LEVEL_TX	0xFF00
+
+	.macro	addruart, rp, rv, tmp
+	ldr	\rp, =CONFIG_DEBUG_UART_PHYS		@ System peripherals (phys address)
+	ldr	\rv, =CONFIG_DEBUG_UART_VIRT		@ System peripherals (virt address)
+	.endm
+
+	.macro	senduart,rd,rx
+	str	\rd, [\rx, #(LPC_HSU_TX)]
+	.endm
+
+	.macro	waituart,rd,rx
+	.endm
+
+	.macro	busyuart,rd,rx
+1001:	ldr	\rd, [\rx, #(LPC_HSU_LEVEL)]
+	ands	\rd, \rd, LPC_HSU_LEVEL_TX
+	bne	1001b
+	.endm
+
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
