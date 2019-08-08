Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD47386CB8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 23:48:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DSnB4DhTZJUagajVuQoWCeg0et9sRPc2RsLxz5jM/NM=; b=bHIxHTgnWuC5PQ
	KAvJ33OYKMXMjPKl5Ds0lUAQnj1TDKFsacQeKNxYHUvY0yZuzukpc8plQQNic2CqNrhawzxoo7vag
	rgWcZsX6u/yuIf939559HrCGLeYe+kzHf5gHd8sGFBoPjQfFXmDua9OZl4ZF3A3hPEbUpmDlkZcQy
	uFdo8C5XqQDmfkFdKHIxoYV4w1rWtY21muX5fzuL/zf5g7SbhWCxzdOEMH0hU4xSdtnLR9cwHdpl/
	v5p1ZarDN1Kwxn1ST2CUvxGQQrCpci/Uzcbfi6vjQIVMLsW5YN+mfjx33zgIOlaficEx4x+gTP2K9
	2R7TLnKs472sZ6QbCA1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvqHH-0002D0-GJ; Thu, 08 Aug 2019 21:48:55 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvqH3-0002C0-Pw
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 21:48:49 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.145]) with ESMTPA (Nemesis) id
 1N94qX-1iQJwe1jYF-0166ng; Thu, 08 Aug 2019 23:48:23 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Tony Lindgren <tony@atomide.com>,
	Aaro Koskinen <aaro.koskinen@iki.fi>
Subject: [PATCH 22/22] ARM: omap1: enable multiplatform
Date: Thu,  8 Aug 2019 23:47:44 +0200
Message-Id: <20190808214816.2964251-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190808212234.2213262-1-arnd@arndb.de>
References: <20190808212234.2213262-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:TSY15Ec0Vm9MEnIqiHpDeo1aLv3yVAHxGEW3y7owCHC8HVezU1m
 t1EoU4HYJw5wjdKxa/ZpyBDQMkpQKUTEmuIvHeifK6mQGImsNTnNA9xYsQOcHUNoAhV6PNc
 H7wZTQaY9JkBJP+FvfBCVvGznYJdxV7JfqgFgDWJBsAL1r9pI7GlVEBqijx9j0SbAnrnFAz
 jpg1oDKNmfYONht7i/xuw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:lBiIPnWWbKw=:hhYXLugkIoDp5pJBIoptVK
 vf7Nz5y4jcRkvxsQPUxxsY4+ySLTmak3FrHe06SbB1Fk9662ilifaNYAHuBvDpWdopG+k+ihH
 649IJH032bqHo6Xg7Mv0JZC0LIJac/15oeGxwh7I2aW31epNfmW0CKJflUzkmS6qJlB/1Op6Q
 dtkjWitfnmSJT3nELQtPrV9kxFWLQp4H5PKs90rtbesZFgRkBvvIXvGscSYBkbde9tLYcI9uF
 b+y1BSBODPlNW1PLu+c6XQklLFwoCtIYCZ18dq5oObiANb7ici7XD7ipO91ROlgX93iHtqWw/
 D2fkABFD2XE9EjTy6rV1akL+cm7dUR/RaRYG1cw1q8VBXxbP4EIXT51w6XuKsnq+HRvdgJfaD
 BX0anTLN0IYBDWTdWsw9VA7tZze12vqxbiUeS3u+SBawUW68o3Eg06R0Aw5QMVzTAB+0DNhO3
 CmxbXdmzf3h8gtrh2KTR+D3IWirVm9qD3Pgky8ueX+nLe/tGFKCRlvZ+Xf/5kHcC9FPvc+S3o
 l+p32CpslrlCy4r8gwcllSmQWpMgZG5I7A8nsXP6daWRREb6w8ljO2m6wodxWaVumK68vpoyC
 0ly3k+NRVzWQjT3/vVkFFf8ytVVn5WS09Juh0TQO+gODCcVXttJ7WFpipnRDzwRRErVec3dG1
 f+DenJuefvQw5zHSdoBFpHMrWFYunXS+sNDNP0T0bZIhLhDT6pfArV8px8aoYaDijQ/KeK0Zy
 okcYgm/JDiDZluvI2MEigbyfzNPNyQYkD5bYtA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_144842_148036_5848727F 
X-CRM114-Status: GOOD (  20.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With all the header files out of the way, and the clock driver
converted to drivers/clk/, nothing stops us from building
OMAP together with the other platforms.

As usual, the decompressor support is a victim here, and is
only available when CONFIG_DEBUG_LL is configured for the
particular board.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/Kconfig                              |  18 ---
 arch/arm/configs/omap1_defconfig              |   3 +
 arch/arm/mach-omap1/Kconfig                   |  20 ++-
 arch/arm/mach-omap1/Makefile                  |   4 +
 arch/arm/mach-omap1/hardware.h                |   2 +-
 arch/arm/mach-omap1/include/mach/uncompress.h | 117 ------------------
 arch/arm/mach-omap1/serial.c                  |   3 +-
 .../mach-omap1/{include/mach => }/serial.h    |   0
 arch/arm/plat-omap/Makefile                   |   1 +
 9 files changed, 26 insertions(+), 142 deletions(-)
 delete mode 100644 arch/arm/mach-omap1/include/mach/uncompress.h
 rename arch/arm/mach-omap1/{include/mach => }/serial.h (100%)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 17a21f75f386..8542dfc5cf84 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -490,24 +490,6 @@ config ARCH_S3C24XX
 	  (<http://www.simtec.co.uk/products/EB110ITX/>), the IPAQ 1940 or the
 	  Samsung SMDK2410 development board (and derivatives).
 
-config ARCH_OMAP1
-	bool "TI OMAP1"
-	select ARCH_HAS_HOLES_MEMORYMODEL
-	select ARCH_OMAP
-	select CLKDEV_LOOKUP
-	select CLKSRC_MMIO
-	select COMMON_CLK
-	select FORCE_PCI if PCCARD
-	select GENERIC_CLOCKEVENTS
-	select GENERIC_IRQ_CHIP
-	select GENERIC_IRQ_MULTI_HANDLER
-	select GPIOLIB
-	select HAVE_IDE
-	select IRQ_DOMAIN
-	select SPARSE_IRQ
-	help
-	  Support for older TI OMAP1 (omap7xx, omap15xx or omap16xx)
-
 endchoice
 
 menu "Multiple platform selection"
diff --git a/arch/arm/configs/omap1_defconfig b/arch/arm/configs/omap1_defconfig
index 0c43c589f191..902125f89315 100644
--- a/arch/arm/configs/omap1_defconfig
+++ b/arch/arm/configs/omap1_defconfig
@@ -20,6 +20,9 @@ CONFIG_MODULE_FORCE_UNLOAD=y
 # CONFIG_BLK_DEV_BSG is not set
 # CONFIG_IOSCHED_DEADLINE is not set
 # CONFIG_IOSCHED_CFQ is not set
+CONFIG_ARCH_MULTI_V4T=y
+CONFIG_ARCH_MULTI_V5=y
+# CONFIG_ARCH_MULTI_V7 is not set
 CONFIG_ARCH_OMAP=y
 CONFIG_ARCH_OMAP1=y
 CONFIG_OMAP_RESET_CLOCKS=y
diff --git a/arch/arm/mach-omap1/Kconfig b/arch/arm/mach-omap1/Kconfig
index 6a2c441ab579..5b1d3a24462f 100644
--- a/arch/arm/mach-omap1/Kconfig
+++ b/arch/arm/mach-omap1/Kconfig
@@ -1,4 +1,16 @@
 # SPDX-License-Identifier: GPL-2.0-only
+menuconfig ARCH_OMAP1
+	bool "TI OMAP1"
+	depends on ARCH_MULTI_V4T || ARCH_MULTI_V5
+	select ARCH_HAS_HOLES_MEMORYMODEL
+	select ARCH_OMAP
+	select CLKSRC_MMIO
+	select FORCE_PCI if PCCARD
+	select GPIOLIB
+	select HAVE_IDE
+	help
+	  Support for older TI OMAP1 (omap7xx, omap15xx or omap16xx)
+
 if ARCH_OMAP1
 
 menu "TI OMAP1 specific features"
@@ -14,27 +26,27 @@ config ARCH_OMAP1_AUTO
 	select MACH_OMAP_GENERIC if (ARCH_OMAP15XX || ARCH_OMAP16XX)
 
 config ARCH_OMAP730
-	depends on ARCH_OMAP1
+	depends on ARCH_MULTI_V5
 	bool "OMAP730 Based System"
 	select ARCH_OMAP_OTG
 	select CPU_ARM926T
 	select OMAP_MPU_TIMER
 
 config ARCH_OMAP850
-	depends on ARCH_OMAP1
+	depends on ARCH_MULTI_V5
 	bool "OMAP850 Based System"
 	select ARCH_OMAP_OTG
 	select CPU_ARM926T
 
 config ARCH_OMAP15XX
-	depends on ARCH_OMAP1
+	depends on ARCH_MULTI_V4T
 	default y
 	bool "OMAP15xx Based System"
 	select CPU_ARM925T
 	select OMAP_MPU_TIMER
 
 config ARCH_OMAP16XX
-	depends on ARCH_OMAP1
+	depends on ARCH_MULTI_V5
 	bool "OMAP16xx Based System"
 	select ARCH_OMAP_OTG
 	select CPU_ARM926T
diff --git a/arch/arm/mach-omap1/Makefile b/arch/arm/mach-omap1/Makefile
index 1337d7a2754c..1f0f97868953 100644
--- a/arch/arm/mach-omap1/Makefile
+++ b/arch/arm/mach-omap1/Makefile
@@ -3,6 +3,10 @@
 # Makefile for the linux kernel.
 #
 
+ccflags-$(CONFIG_ARCH_MULTIPLATFORM) += -I$(srctree)/arch/arm/mach-omap1/include
+asflags-$(CONFIG_ARCH_MULTIPLATFORM) += -I$(srctree)/arch/arm/mach-omap1/include
+ccflags-$(CONFIG_ARCH_MULTIPLATFORM) += -I$(srctree)/arch/arm/plat-omap/include
+
 # Common support
 obj-y := io.o id.o sram-init.o sram.o time.o irq.o mux.o flash.o \
 	 serial.o devices.o dma.o fb.o
diff --git a/arch/arm/mach-omap1/hardware.h b/arch/arm/mach-omap1/hardware.h
index 2cfc342c069c..232b8deef907 100644
--- a/arch/arm/mach-omap1/hardware.h
+++ b/arch/arm/mach-omap1/hardware.h
@@ -64,7 +64,7 @@ static inline u32 omap_cs3_phys(void)
 #define OMAP1_IO_OFFSET		0x01000000	/* Virtual IO = 0xfefb0000 */
 #define OMAP1_IO_ADDRESS(pa)	IOMEM((pa) - OMAP1_IO_OFFSET)
 
-#include <mach/serial.h>
+#include "serial.h"
 
 /*
  * ---------------------------------------------------------------------------
diff --git a/arch/arm/mach-omap1/include/mach/uncompress.h b/arch/arm/mach-omap1/include/mach/uncompress.h
deleted file mode 100644
index 9cca6a56788f..000000000000
--- a/arch/arm/mach-omap1/include/mach/uncompress.h
+++ /dev/null
@@ -1,117 +0,0 @@
-/*
- * arch/arm/plat-omap/include/mach/uncompress.h
- *
- * Serial port stubs for kernel decompress status messages
- *
- * Initially based on:
- * linux-2.4.15-rmk1-dsplinux1.6/arch/arm/plat-omap/include/mach1510/uncompress.h
- * Copyright (C) 2000 RidgeRun, Inc.
- * Author: Greg Lonnon <glonnon@ridgerun.com>
- *
- * Rewritten by:
- * Author: <source@mvista.com>
- * 2004 (c) MontaVista Software, Inc.
- *
- * This file is licensed under the terms of the GNU General Public License
- * version 2. This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
- */
-
-#include <linux/types.h>
-#include <linux/serial_reg.h>
-
-#include <asm/memory.h>
-#include <asm/mach-types.h>
-
-#include "serial.h"
-
-#define MDR1_MODE_MASK			0x07
-
-volatile u8 *uart_base;
-int uart_shift;
-
-/*
- * Store the DEBUG_LL uart number into memory.
- * See also debug-macro.S, and serial.c for related code.
- */
-static void set_omap_uart_info(unsigned char port)
-{
-	/*
-	 * Get address of some.bss variable and round it down
-	 * a la CONFIG_AUTO_ZRELADDR.
-	 */
-	u32 ram_start = (u32)&uart_shift & 0xf8000000;
-	u32 *uart_info = (u32 *)(ram_start + OMAP_UART_INFO_OFS);
-	*uart_info = port;
-}
-
-static inline void putc(int c)
-{
-	if (!uart_base)
-		return;
-
-	/* Check for UART 16x mode */
-	if ((uart_base[UART_OMAP_MDR1 << uart_shift] & MDR1_MODE_MASK) != 0)
-		return;
-
-	while (!(uart_base[UART_LSR << uart_shift] & UART_LSR_THRE))
-		barrier();
-	uart_base[UART_TX << uart_shift] = c;
-}
-
-static inline void flush(void)
-{
-}
-
-/*
- * Macros to configure UART1 and debug UART
- */
-#define _DEBUG_LL_ENTRY(mach, dbg_uart, dbg_shft, dbg_id)		\
-	if (machine_is_##mach()) {					\
-		uart_base = (volatile u8 *)(dbg_uart);			\
-		uart_shift = (dbg_shft);				\
-		port = (dbg_id);					\
-		set_omap_uart_info(port);				\
-		break;							\
-	}
-
-#define DEBUG_LL_OMAP7XX(p, mach)					\
-	_DEBUG_LL_ENTRY(mach, OMAP1_UART##p##_BASE, OMAP7XX_PORT_SHIFT,	\
-		OMAP1UART##p)
-
-#define DEBUG_LL_OMAP1(p, mach)						\
-	_DEBUG_LL_ENTRY(mach, OMAP1_UART##p##_BASE, OMAP_PORT_SHIFT,	\
-		OMAP1UART##p)
-
-static inline void arch_decomp_setup(void)
-{
-	int port = 0;
-
-	/*
-	 * Initialize the port based on the machine ID from the bootloader.
-	 * Note that we're using macros here instead of switch statement
-	 * as machine_is functions are optimized out for the boards that
-	 * are not selected.
-	 */
-	do {
-		/* omap7xx/8xx based boards using UART1 with shift 0 */
-		DEBUG_LL_OMAP7XX(1, herald);
-		DEBUG_LL_OMAP7XX(1, omap_perseus2);
-
-		/* omap15xx/16xx based boards using UART1 */
-		DEBUG_LL_OMAP1(1, ams_delta);
-		DEBUG_LL_OMAP1(1, nokia770);
-		DEBUG_LL_OMAP1(1, omap_h2);
-		DEBUG_LL_OMAP1(1, omap_h3);
-		DEBUG_LL_OMAP1(1, omap_innovator);
-		DEBUG_LL_OMAP1(1, omap_osk);
-		DEBUG_LL_OMAP1(1, omap_palmte);
-		DEBUG_LL_OMAP1(1, omap_palmz71);
-
-		/* omap15xx/16xx based boards using UART2 */
-		DEBUG_LL_OMAP1(2, omap_palmtt);
-
-		/* omap15xx/16xx based boards using UART3 */
-		DEBUG_LL_OMAP1(3, sx1);
-	} while (0);
-}
diff --git a/arch/arm/mach-omap1/serial.c b/arch/arm/mach-omap1/serial.c
index d6d1843337a5..a8db332dc72e 100644
--- a/arch/arm/mach-omap1/serial.c
+++ b/arch/arm/mach-omap1/serial.c
@@ -19,8 +19,7 @@
 
 #include <asm/mach-types.h>
 
-#include <mach/serial.h>
-
+#include "serial.h"
 #include "mux.h"
 #include "pm.h"
 #include "soc.h"
diff --git a/arch/arm/mach-omap1/include/mach/serial.h b/arch/arm/mach-omap1/serial.h
similarity index 100%
rename from arch/arm/mach-omap1/include/mach/serial.h
rename to arch/arm/mach-omap1/serial.h
diff --git a/arch/arm/plat-omap/Makefile b/arch/arm/plat-omap/Makefile
index 371f2ed00eda..a11c96a093c9 100644
--- a/arch/arm/plat-omap/Makefile
+++ b/arch/arm/plat-omap/Makefile
@@ -4,6 +4,7 @@
 #
 
 ccflags-$(CONFIG_ARCH_MULTIPLATFORM) := -I$(srctree)/arch/arm/plat-omap/include
+ccflags-$(CONFIG_ARCH_OMAP1)	     += -I$(srctree)/arch/arm/mach-omap1/include
 
 # Common support
 obj-y := sram.o dma.o counter_32k.o
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
