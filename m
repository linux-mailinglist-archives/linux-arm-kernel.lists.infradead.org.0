Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A98D487D1C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 16:46:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aNghK5W8Z4bsf+Soru3S0uX5ITzOcTAJVZcAlxunNkM=; b=R9IXXjozVcHbky
	MOJgwJhyTEvFH9VHa7xCux75K+Ebfnr4aS3Icd/Sep5P7fPqmqkp8g5qf20E63Pb13WvB0gt0CDil
	erltl0WEgrei1uxQ3RwQhA1fEoqZUhzgPXP9E8xmY7BgpJPi/GObeN1RwKhhwPRP0rGap5EuIwy+E
	FlyRlEhi6H5veG3lF2q0gXVsGH4C49eIKXKIxHBFXpB23nq8M+9+ueroUgBZsTAN8hqY9E0Dc/vcw
	1jfSRvEGT26JrXHjno8RbLKkYPMNLJ9eF7vjZQK8E3G6yVI7Uzj4jkpNtid2i+eL9Oww8OLajXsPt
	dEfioSw0ZR0uoENTTJpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw6AK-0000aM-MV; Fri, 09 Aug 2019 14:46:48 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw6A7-0000ZS-Fd
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 14:46:37 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1M91Tq-1hzxWA3eR4-0068fZ; Fri, 09 Aug 2019 16:46:32 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: soc@kernel.org
Subject: [PATCH v2 13/13] ARM: lpc32xx: allow multiplatform build
Date: Fri,  9 Aug 2019 16:40:39 +0200
Message-Id: <20190809144043.476786-14-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190809144043.476786-1-arnd@arndb.de>
References: <20190809144043.476786-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:ZpjjCgarnGP5OJJp7WqQXWJgBqErfvsp1pHllIlsTishTCM846M
 jagMW25mCiPe3qu3M4uGN7g2QnCf34G9GnKrz0TqjJSnZ6Q+XkjB4nyDo8UTs99GPTy1W9+
 mVhPZdrw8O3cYMWo/365dZVg+gK46PHAFFZYy5FcyFbaoNKm8JEbKDRWzI+ikSvh3TL8+cg
 t0242PhtMh68LzzfofLMA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:mGfmQMJJPbM=:2+AUq2ZbO8MpEuFsuTDE3V
 /Wrx2sOiWCbaNdmELUyYovk+spLUFWeBJMcah1lTc/GaQWLv64cDA7p+pJhQU4qDQsG0z0y0I
 xJ+E2H4bWCF9ELfnBmJXulydXgn40JBRN+5CBpvShd4XY2ctVQdg+qcB9yBrbTMiN4IVpgh/4
 f9hlw1NtkFuWgeYybeBQsuy535prRveYOqn2BCIAHxWmNhVj2CnKNv7ySWPomminyBKgZzux/
 MEsPCXPyYE/YyiWzyd8yjazfKr2FnKM4swS6YKHb112HOSiNeznqxMN+xHdkxwcpj3sCJ+LlY
 CPWDK3UjP5TVfjV1LqPv2KZ/na1PR8D8rFVXg+LhqIKob9WbGqbMegl/7RY0V0gvu91gjopSD
 L6El8+Nw//G9NySUkDuXFpqtz4UENAMjsh/zXKos7xmjywn0OjUZRpg7uCvjF8cVt3YkwTzbl
 1yq7KtY2EJ/whp1KqtUdsIx5Lu7LwFECQqD4Q8dtMkbUs4aWzv1RG7Eio+XFkGYXuO0z770u9
 kWPktzcKQiO8GyxwAfXLOUckSaY4p9ZRkx4Z/avI+Yj3xjd+5dZfc0vVe6wv/5mDy4gknfzk3
 mBjH1tEAGc56m/qRIA0MBCL2aGZRE9jXwZlIOOkyKqIwiFdxReT/NqQx/QYBfZtvHOkegNXIJ
 UYIb7QJA7jST+yVcIsmS21pomW9dsHq0mU/CkxqloLr9nM9K8+0A1AIvjMxyNOCZVYxPDJvIn
 c0GsggycoOG0ikntFiudD2ZptPiVcBa4VsmlEA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_074635_815953_7F7A170E 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
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
Cc: Sylvain Lemieux <slemieux.tyco@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Vladimir Zapolskiy <vz@mleia.com>
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
index 3772d5a8975a..09deb57db942 100644
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
