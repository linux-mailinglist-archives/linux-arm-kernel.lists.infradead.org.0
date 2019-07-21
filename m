Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6866F67D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 00:45:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TrtDLWMZsYdPhRr5r+zUD53krBLfFJce0mZtOy2b5Zs=; b=ZYu+LwN4ASFrCD
	ZgoxItmNFx5yeDJP+k7ZXl/7tJSp4tHa3ebnRAfUvWqFxN2lrsVLAHTACOmHio9d48LguqacORPg2
	S4w4PahhM0KBwoubDVq0RCEAlb5xOd23f4LbaOY4NI0wO4y9N8W06NmaL/T9oCX7aYgfThgNwlUEO
	nXeCXs2d7VkSu7rNow3DDkh17fDRqddEgZQWcx6bhTKGO1mKdia3zhSwDDE2dSnRKXzVxVbeaaVsw
	tzlinH4LW4k4COzLK0iEVa8vBfl1BYb5rW0MBW3yOYVjAWptBeMQgpAvKQILSK6hJXBkMnsJcL+MF
	W2e0mPnI7jg+o+Mrc80g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpKZN-0000BA-Gg; Sun, 21 Jul 2019 22:44:41 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpKYw-0000AO-Mc
 for linux-arm-kernel@lists.infradead.org; Sun, 21 Jul 2019 22:44:19 +0000
Received: by mail-lf1-x142.google.com with SMTP id 62so20327344lfa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 21 Jul 2019 15:44:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ndk+WOKz1oLOWv4sRwBkqauo7ZZg4D5/4evfY322Lo4=;
 b=S1XnQM97rUnR/HJRTWBGcUureXAFzyrBdNzBEY0SOO1Dmmuaq0u3BCvhR0ZNWa9y8/
 n2h/sOIIWTOf92lh2h6087V8/b4riLeoGWqx0RI5Hu0QQMpAW2rVRfFfEH8M9H9/geFg
 fG5R+wJOoUOLErxOf3yy8o3mu8pEJhdFN60i0EYbeDQ0ic6RiqHHlRjILYy0pyM076w1
 12FdpTeFfB0jxlwJLltsqdP8prxBc9S0amFQE3+6+UkVDEkL6L/Tw7XKKhhfG7MXfl0u
 KfKBzx33BgF5L+EOoBAloP/yjTXTQI4VPUQ93YLtG6Jy3UO0q1JDFFnwM5LeJ59IMBTE
 CNHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ndk+WOKz1oLOWv4sRwBkqauo7ZZg4D5/4evfY322Lo4=;
 b=IsXID7gfGerie22qh63VqJiQwXbtRheFa2fSZIcL0NUzYyX4icPPhczft+6jSvZ3hY
 C0l0JKJs8g+/vTRhQenZzTSbVjX6c9bzy0MI/sjpDqgS5xtj4GXwKTlLBp/6gxLnjfrg
 hdP4OXH2Mb8QvfXdgHIEdTN0/IGezq5C5YkvmS0O8r3uIBvsCplSgeC5SLRF7LIGRJ9y
 0kVw96mFEqh+A6F6wL8TjuH7E6S/PwBMhxbU9OOv8UAbVZ9tUgt2fXelyNC4aovSEK3R
 AsOJMxBd+N8foKRLIUMg0Fe2vqMe7341NaiFZOy3Ab7VbNwlvucsG/zVTSEyZKoCcNBC
 FViw==
X-Gm-Message-State: APjAAAXDJKBYSMpKu96HCd0KMg7UoR4Y4CvQMhrR2CIn5ObCXwbZVuS5
 GczwUTS1W4mKRmSznpRz2vRoig==
X-Google-Smtp-Source: APXvYqz8uAEfEAqzXD/d58JZBUrxkNQ06Xz2PHlbZKLl2fX8YK3dTCubbZdG1Mp8pM3H0qHAjaz2qA==
X-Received: by 2002:ac2:5337:: with SMTP id f23mr30809513lfh.15.1563749048385; 
 Sun, 21 Jul 2019 15:44:08 -0700 (PDT)
Received: from localhost.localdomain
 (c-22cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.34])
 by smtp.gmail.com with ESMTPSA id v202sm5790397lfa.28.2019.07.21.15.44.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 21 Jul 2019 15:44:06 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: arm@kernel.org,
	soc@kernel.org
Subject: [PATCH] ARM: Delete netx a second time
Date: Mon, 22 Jul 2019 00:41:57 +0200
Message-Id: <20190721224157.6597-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_154414_945754_AA65FDB1 
X-CRM114-Status: GOOD (  15.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Robert Schwebel <r.schwebel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit ceb02dcf676f ARM: delete netx machine deleted
the mach-netx machine. Then eight days later
it was resurrected by SPDX tag fixes. I think.

Taking the liberty to fix some additional debug uart
cruft.

Fixes: ceb02dcf676f ("ARM: delete netx machine")
Acked-By: Robert Schwebel <r.schwebel@pengutronix.de>
Acked-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ARM SoC folks, please apply this directly for fixes.
The machine is gone from all Kconfig etc.

I don't know if it was a person or git that decided
that the best way to add SPDX tags to deleted files
was to undelete them. If it was git I wonder if this
is the only thing it undeleted.
---
 arch/arm/Kconfig.debug                       |   5 -
 arch/arm/mach-netx/Kconfig                   |  22 -
 arch/arm/mach-netx/Makefile                  |  13 -
 arch/arm/mach-netx/Makefile.boot             |   3 -
 arch/arm/mach-netx/fb.c                      |  65 ---
 arch/arm/mach-netx/fb.h                      |  12 -
 arch/arm/mach-netx/generic.c                 | 182 --------
 arch/arm/mach-netx/generic.h                 |  14 -
 arch/arm/mach-netx/include/mach/hardware.h   |  27 --
 arch/arm/mach-netx/include/mach/irqs.h       |  58 ---
 arch/arm/mach-netx/include/mach/netx-regs.h  | 420 -------------------
 arch/arm/mach-netx/include/mach/pfifo.h      |  42 --
 arch/arm/mach-netx/include/mach/uncompress.h |  63 ---
 arch/arm/mach-netx/include/mach/xc.h         |  30 --
 arch/arm/mach-netx/nxdb500.c                 | 197 ---------
 arch/arm/mach-netx/nxdkn.c                   |  90 ----
 arch/arm/mach-netx/nxeb500hmi.c              | 174 --------
 arch/arm/mach-netx/pfifo.c                   |  56 ---
 arch/arm/mach-netx/time.c                    | 141 -------
 arch/arm/mach-netx/xc.c                      | 246 -----------
 20 files changed, 1860 deletions(-)
 delete mode 100644 arch/arm/mach-netx/Kconfig
 delete mode 100644 arch/arm/mach-netx/Makefile
 delete mode 100644 arch/arm/mach-netx/Makefile.boot
 delete mode 100644 arch/arm/mach-netx/fb.c
 delete mode 100644 arch/arm/mach-netx/fb.h
 delete mode 100644 arch/arm/mach-netx/generic.c
 delete mode 100644 arch/arm/mach-netx/generic.h
 delete mode 100644 arch/arm/mach-netx/include/mach/hardware.h
 delete mode 100644 arch/arm/mach-netx/include/mach/irqs.h
 delete mode 100644 arch/arm/mach-netx/include/mach/netx-regs.h
 delete mode 100644 arch/arm/mach-netx/include/mach/pfifo.h
 delete mode 100644 arch/arm/mach-netx/include/mach/uncompress.h
 delete mode 100644 arch/arm/mach-netx/include/mach/xc.h
 delete mode 100644 arch/arm/mach-netx/nxdb500.c
 delete mode 100644 arch/arm/mach-netx/nxdkn.c
 delete mode 100644 arch/arm/mach-netx/nxeb500hmi.c
 delete mode 100644 arch/arm/mach-netx/pfifo.c
 delete mode 100644 arch/arm/mach-netx/time.c
 delete mode 100644 arch/arm/mach-netx/xc.c

diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
index c929bea9a9ff..85710e078afb 100644
--- a/arch/arm/Kconfig.debug
+++ b/arch/arm/Kconfig.debug
@@ -1535,7 +1535,6 @@ config DEBUG_LL_INCLUDE
 				 DEBUG_IMX7D_UART
 	default "debug/ks8695.S" if DEBUG_KS8695_UART
 	default "debug/msm.S" if DEBUG_QCOM_UARTDM
-	default "debug/netx.S" if DEBUG_NETX_UART
 	default "debug/omap2plus.S" if DEBUG_OMAP2PLUS_UART
 	default "debug/renesas-scif.S" if DEBUG_R7S72100_SCIF2
 	default "debug/renesas-scif.S" if DEBUG_RCAR_GEN1_SCIF0
@@ -1575,7 +1574,6 @@ config DEBUG_UART_8250
 
 config DEBUG_UART_PHYS
 	hex "Physical base address of debug UART"
-	default 0x00100a00 if DEBUG_NETX_UART
 	default 0x01c20000 if DEBUG_DAVINCI_DMx_UART0
 	default 0x01c28000 if DEBUG_SUNXI_UART0
 	default 0x01c28400 if DEBUG_SUNXI_UART1
@@ -1700,7 +1698,6 @@ config DEBUG_UART_PHYS
 	        DEBUG_LL_UART_8250 || DEBUG_LL_UART_PL01X || \
 		DEBUG_LL_UART_EFM32 || \
 		DEBUG_UART_8250 || DEBUG_UART_PL01X || DEBUG_MESON_UARTAO || \
-		DEBUG_NETX_UART || \
 		DEBUG_QCOM_UARTDM || DEBUG_R7S72100_SCIF2 || \
 		DEBUG_RCAR_GEN1_SCIF0 || DEBUG_RCAR_GEN1_SCIF2 || \
 		DEBUG_RCAR_GEN2_SCIF0 || DEBUG_RCAR_GEN2_SCIF1 || \
@@ -1717,7 +1714,6 @@ config DEBUG_UART_VIRT
 	default 0xc881f000 if DEBUG_RV1108_UART2
 	default 0xc8821000 if DEBUG_RV1108_UART1
 	default 0xc8912000 if DEBUG_RV1108_UART0
-	default 0xe0000a00 if DEBUG_NETX_UART
 	default 0xe0010fe0 if ARCH_RPC
 	default 0xf0000be0 if ARCH_EBSA110
 	default 0xf0010000 if DEBUG_ASM9260_UART
@@ -1822,7 +1818,6 @@ config DEBUG_UART_VIRT
 	default DEBUG_UART_PHYS if !MMU
 	depends on DEBUG_LL_UART_8250 || DEBUG_LL_UART_PL01X || \
 		DEBUG_UART_8250 || DEBUG_UART_PL01X || DEBUG_MESON_UARTAO || \
-		DEBUG_NETX_UART || \
 		DEBUG_QCOM_UARTDM || DEBUG_S3C24XX_UART || \
 		DEBUG_S3C64XX_UART || \
 		DEBUG_BCM63XX_UART || DEBUG_ASM9260_UART || \
diff --git a/arch/arm/mach-netx/Kconfig b/arch/arm/mach-netx/Kconfig
deleted file mode 100644
index 1e5d9c870784..000000000000
--- a/arch/arm/mach-netx/Kconfig
+++ /dev/null
@@ -1,22 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-menu "NetX Implementations"
-	depends on ARCH_NETX
-
-config MACH_NXDKN
-	bool "Enable Hilscher nxdkn Eval Board support"
-	help
-	  Board support for the Hilscher NetX Eval Board
-
-config MACH_NXDB500
-	bool "Enable Hilscher nxdb500 Eval Board support"
-	select ARM_AMBA
-	help
-	  Board support for the Hilscher nxdb500 Eval Board
-
-config MACH_NXEB500HMI
-	bool "Enable Hilscher nxeb500hmi Eval Board support"
-	select ARM_AMBA
-	help
-	  Board support for the Hilscher nxeb500hmi Eval Board
-
-endmenu
diff --git a/arch/arm/mach-netx/Makefile b/arch/arm/mach-netx/Makefile
deleted file mode 100644
index 44ea83f7d9c2..000000000000
--- a/arch/arm/mach-netx/Makefile
+++ /dev/null
@@ -1,13 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-#
-# Makefile for the linux kernel.
-#
-
-# Object file lists.
-
-obj-y			+= time.o generic.o pfifo.o xc.o
-
-# Specific board support
-obj-$(CONFIG_MACH_NXDKN) += nxdkn.o
-obj-$(CONFIG_MACH_NXDB500) += nxdb500.o fb.o
-obj-$(CONFIG_MACH_NXEB500HMI) += nxeb500hmi.o fb.o
diff --git a/arch/arm/mach-netx/Makefile.boot b/arch/arm/mach-netx/Makefile.boot
deleted file mode 100644
index 2eb23c0cb6b0..000000000000
--- a/arch/arm/mach-netx/Makefile.boot
+++ /dev/null
@@ -1,3 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-    zreladdr-y			+= 0x80008000
-
diff --git a/arch/arm/mach-netx/fb.c b/arch/arm/mach-netx/fb.c
deleted file mode 100644
index 2dc80db07390..000000000000
--- a/arch/arm/mach-netx/fb.c
+++ /dev/null
@@ -1,65 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * arch/arm/mach-netx/fb.c
- *
- * Copyright (c) 2005 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- */
-
-#include <linux/device.h>
-#include <linux/init.h>
-#include <linux/dma-mapping.h>
-#include <linux/amba/bus.h>
-#include <linux/amba/clcd.h>
-#include <linux/err.h>
-#include <linux/gfp.h>
-
-#include <asm/irq.h>
-
-#include <mach/netx-regs.h>
-#include <mach/hardware.h>
-
-static struct clcd_panel *netx_panel;
-
-void netx_clcd_enable(struct clcd_fb *fb)
-{
-}
-
-int netx_clcd_setup(struct clcd_fb *fb)
-{
-	dma_addr_t dma;
-
-	fb->panel = netx_panel;
-
-	fb->fb.screen_base = dma_alloc_wc(&fb->dev->dev, 1024 * 1024, &dma,
-					  GFP_KERNEL);
-	if (!fb->fb.screen_base) {
-		printk(KERN_ERR "CLCD: unable to map framebuffer\n");
-		return -ENOMEM;
-	}
-
-	fb->fb.fix.smem_start	= dma;
-	fb->fb.fix.smem_len	= 1024*1024;
-
-	return 0;
-}
-
-int netx_clcd_mmap(struct clcd_fb *fb, struct vm_area_struct *vma)
-{
-	return dma_mmap_wc(&fb->dev->dev, vma, fb->fb.screen_base,
-			   fb->fb.fix.smem_start, fb->fb.fix.smem_len);
-}
-
-void netx_clcd_remove(struct clcd_fb *fb)
-{
-	dma_free_wc(&fb->dev->dev, fb->fb.fix.smem_len, fb->fb.screen_base,
-		    fb->fb.fix.smem_start);
-}
-
-static AMBA_AHB_DEVICE(fb, "fb", 0, 0x00104000, { NETX_IRQ_LCD }, NULL);
-
-int netx_fb_init(struct clcd_board *board, struct clcd_panel *panel)
-{
-	netx_panel = panel;
-	fb_device.dev.platform_data = board;
-	return amba_device_register(&fb_device, &iomem_resource);
-}
diff --git a/arch/arm/mach-netx/fb.h b/arch/arm/mach-netx/fb.h
deleted file mode 100644
index 5cdc01fc3c86..000000000000
--- a/arch/arm/mach-netx/fb.h
+++ /dev/null
@@ -1,12 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * arch/arm/mach-netx/fb.h
- *
- * Copyright (c) 2005 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- */
-
-void netx_clcd_enable(struct clcd_fb *fb);
-int netx_clcd_setup(struct clcd_fb *fb);
-int netx_clcd_mmap(struct clcd_fb *fb, struct vm_area_struct *vma);
-void netx_clcd_remove(struct clcd_fb *fb);
-int netx_fb_init(struct clcd_board *board, struct clcd_panel *panel);
diff --git a/arch/arm/mach-netx/generic.c b/arch/arm/mach-netx/generic.c
deleted file mode 100644
index 88881fd45e9f..000000000000
--- a/arch/arm/mach-netx/generic.c
+++ /dev/null
@@ -1,182 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * arch/arm/mach-netx/generic.c
- *
- * Copyright (C) 2005 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- */
-
-#include <linux/device.h>
-#include <linux/init.h>
-#include <linux/kernel.h>
-#include <linux/module.h>
-#include <linux/platform_device.h>
-#include <linux/io.h>
-#include <linux/irqchip/arm-vic.h>
-#include <linux/reboot.h>
-#include <mach/hardware.h>
-#include <asm/mach/map.h>
-#include <mach/netx-regs.h>
-#include <asm/mach/irq.h>
-
-static struct map_desc netx_io_desc[] __initdata = {
-	{
-		.virtual        = NETX_IO_VIRT,
-		.pfn            = __phys_to_pfn(NETX_IO_PHYS),
-		.length         = NETX_IO_SIZE,
-		.type           = MT_DEVICE
-	}
-};
-
-void __init netx_map_io(void)
-{
-	iotable_init(netx_io_desc, ARRAY_SIZE(netx_io_desc));
-}
-
-static struct resource netx_rtc_resources[] = {
-	[0] = {
-		.start	= 0x00101200,
-		.end	= 0x00101220,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct platform_device netx_rtc_device = {
-	.name		= "netx-rtc",
-	.id		= 0,
-	.num_resources	= ARRAY_SIZE(netx_rtc_resources),
-	.resource	= netx_rtc_resources,
-};
-
-static struct platform_device *devices[] __initdata = {
-	&netx_rtc_device,
-};
-
-#if 0
-#define DEBUG_IRQ(fmt...)	printk(fmt)
-#else
-#define DEBUG_IRQ(fmt...)	while (0) {}
-#endif
-
-static void netx_hif_demux_handler(struct irq_desc *desc)
-{
-	unsigned int irq = NETX_IRQ_HIF_CHAINED(0);
-	unsigned int stat;
-
-	stat = ((readl(NETX_DPMAS_INT_EN) &
-		readl(NETX_DPMAS_INT_STAT)) >> 24) & 0x1f;
-
-	while (stat) {
-		if (stat & 1) {
-			DEBUG_IRQ("handling irq %d\n", irq);
-			generic_handle_irq(irq);
-		}
-		irq++;
-		stat >>= 1;
-	}
-}
-
-static int
-netx_hif_irq_type(struct irq_data *d, unsigned int type)
-{
-	unsigned int val, irq;
-
-	val = readl(NETX_DPMAS_IF_CONF1);
-
-	irq = d->irq - NETX_IRQ_HIF_CHAINED(0);
-
-	if (type & IRQ_TYPE_EDGE_RISING) {
-		DEBUG_IRQ("rising edges\n");
-		val |= (1 << 26) << irq;
-	}
-	if (type & IRQ_TYPE_EDGE_FALLING) {
-		DEBUG_IRQ("falling edges\n");
-		val &= ~((1 << 26) << irq);
-	}
-	if (type & IRQ_TYPE_LEVEL_LOW) {
-		DEBUG_IRQ("low level\n");
-		val &= ~((1 << 26) << irq);
-	}
-	if (type & IRQ_TYPE_LEVEL_HIGH) {
-		DEBUG_IRQ("high level\n");
-		val |= (1 << 26) << irq;
-	}
-
-	writel(val, NETX_DPMAS_IF_CONF1);
-
-	return 0;
-}
-
-static void
-netx_hif_ack_irq(struct irq_data *d)
-{
-	unsigned int val, irq;
-
-	irq = d->irq - NETX_IRQ_HIF_CHAINED(0);
-	writel((1 << 24) << irq, NETX_DPMAS_INT_STAT);
-
-	val = readl(NETX_DPMAS_INT_EN);
-	val &= ~((1 << 24) << irq);
-	writel(val, NETX_DPMAS_INT_EN);
-
-	DEBUG_IRQ("%s: irq %d\n", __func__, d->irq);
-}
-
-static void
-netx_hif_mask_irq(struct irq_data *d)
-{
-	unsigned int val, irq;
-
-	irq = d->irq - NETX_IRQ_HIF_CHAINED(0);
-	val = readl(NETX_DPMAS_INT_EN);
-	val &= ~((1 << 24) << irq);
-	writel(val, NETX_DPMAS_INT_EN);
-	DEBUG_IRQ("%s: irq %d\n", __func__, d->irq);
-}
-
-static void
-netx_hif_unmask_irq(struct irq_data *d)
-{
-	unsigned int val, irq;
-
-	irq = d->irq - NETX_IRQ_HIF_CHAINED(0);
-	val = readl(NETX_DPMAS_INT_EN);
-	val |= (1 << 24) << irq;
-	writel(val, NETX_DPMAS_INT_EN);
-	DEBUG_IRQ("%s: irq %d\n", __func__, d->irq);
-}
-
-static struct irq_chip netx_hif_chip = {
-	.irq_ack = netx_hif_ack_irq,
-	.irq_mask = netx_hif_mask_irq,
-	.irq_unmask = netx_hif_unmask_irq,
-	.irq_set_type = netx_hif_irq_type,
-};
-
-void __init netx_init_irq(void)
-{
-	int irq;
-
-	vic_init(io_p2v(NETX_PA_VIC), NETX_IRQ_VIC_START, ~0, 0);
-
-	for (irq = NETX_IRQ_HIF_CHAINED(0); irq <= NETX_IRQ_HIF_LAST; irq++) {
-		irq_set_chip_and_handler(irq, &netx_hif_chip,
-					 handle_level_irq);
-		irq_clear_status_flags(irq, IRQ_NOREQUEST);
-	}
-
-	writel(NETX_DPMAS_INT_EN_GLB_EN, NETX_DPMAS_INT_EN);
-	irq_set_chained_handler(NETX_IRQ_HIF, netx_hif_demux_handler);
-}
-
-static int __init netx_init(void)
-{
-	return platform_add_devices(devices, ARRAY_SIZE(devices));
-}
-
-subsys_initcall(netx_init);
-
-void netx_restart(enum reboot_mode mode, const char *cmd)
-{
-	writel(NETX_SYSTEM_RES_CR_FIRMW_RES_EN | NETX_SYSTEM_RES_CR_FIRMW_RES,
-	       NETX_SYSTEM_RES_CR);
-}
diff --git a/arch/arm/mach-netx/generic.h b/arch/arm/mach-netx/generic.h
deleted file mode 100644
index 223e304574a5..000000000000
--- a/arch/arm/mach-netx/generic.h
+++ /dev/null
@@ -1,14 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * arch/arm/mach-netx/generic.h
- *
- * Copyright (c) 2005 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- */
-
-#include <linux/reboot.h>
-
-extern void __init netx_map_io(void);
-extern void __init netx_init_irq(void);
-extern void netx_restart(enum reboot_mode, const char *);
-
-extern void netx_timer_init(void);
diff --git a/arch/arm/mach-netx/include/mach/hardware.h b/arch/arm/mach-netx/include/mach/hardware.h
deleted file mode 100644
index 84253993d1e0..000000000000
--- a/arch/arm/mach-netx/include/mach/hardware.h
+++ /dev/null
@@ -1,27 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * arch/arm/mach-netx/include/mach/hardware.h
- *
- * Copyright (C) 2005 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- */
-#ifndef __ASM_ARCH_HARDWARE_H
-#define __ASM_ARCH_HARDWARE_H
-
-#define NETX_IO_PHYS	0x00100000
-#define NETX_IO_VIRT	0xe0000000
-#define NETX_IO_SIZE	0x00100000
-
-#define SRAM_INTERNAL_PHYS_0 0x00000
-#define SRAM_INTERNAL_PHYS_1 0x08000
-#define SRAM_INTERNAL_PHYS_2 0x10000
-#define SRAM_INTERNAL_PHYS_3 0x18000
-#define SRAM_INTERNAL_PHYS(no) ((no) * 0x8000)
-
-#define XPEC_MEM_SIZE 0x4000
-#define XMAC_MEM_SIZE 0x1000
-#define SRAM_MEM_SIZE 0x8000
-
-#define io_p2v(x) IOMEM((x) - NETX_IO_PHYS + NETX_IO_VIRT)
-#define io_v2p(x) ((x) - NETX_IO_VIRT + NETX_IO_PHYS)
-
-#endif
diff --git a/arch/arm/mach-netx/include/mach/irqs.h b/arch/arm/mach-netx/include/mach/irqs.h
deleted file mode 100644
index 540c92104fe8..000000000000
--- a/arch/arm/mach-netx/include/mach/irqs.h
+++ /dev/null
@@ -1,58 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * arch/arm/mach-netx/include/mach/irqs.h
- *
- * Copyright (C) 2005 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- */
-
-#define NETX_IRQ_VIC_START	64
-#define NETX_IRQ_SOFTINT	(NETX_IRQ_VIC_START + 0)
-#define NETX_IRQ_TIMER0		(NETX_IRQ_VIC_START + 1)
-#define NETX_IRQ_TIMER1		(NETX_IRQ_VIC_START + 2)
-#define NETX_IRQ_TIMER2		(NETX_IRQ_VIC_START + 3)
-#define NETX_IRQ_SYSTIME_NS	(NETX_IRQ_VIC_START + 4)
-#define NETX_IRQ_SYSTIME_S	(NETX_IRQ_VIC_START + 5)
-#define NETX_IRQ_GPIO_15	(NETX_IRQ_VIC_START + 6)
-#define NETX_IRQ_WATCHDOG	(NETX_IRQ_VIC_START + 7)
-#define NETX_IRQ_UART0		(NETX_IRQ_VIC_START + 8)
-#define NETX_IRQ_UART1		(NETX_IRQ_VIC_START + 9)
-#define NETX_IRQ_UART2		(NETX_IRQ_VIC_START + 10)
-#define NETX_IRQ_USB		(NETX_IRQ_VIC_START + 11)
-#define NETX_IRQ_SPI		(NETX_IRQ_VIC_START + 12)
-#define NETX_IRQ_I2C		(NETX_IRQ_VIC_START + 13)
-#define NETX_IRQ_LCD		(NETX_IRQ_VIC_START + 14)
-#define NETX_IRQ_HIF		(NETX_IRQ_VIC_START + 15)
-#define NETX_IRQ_GPIO_0_14	(NETX_IRQ_VIC_START + 16)
-#define NETX_IRQ_XPEC0		(NETX_IRQ_VIC_START + 17)
-#define NETX_IRQ_XPEC1		(NETX_IRQ_VIC_START + 18)
-#define NETX_IRQ_XPEC2		(NETX_IRQ_VIC_START + 19)
-#define NETX_IRQ_XPEC3		(NETX_IRQ_VIC_START + 20)
-#define NETX_IRQ_XPEC(no)	(NETX_IRQ_VIC_START + 17 + (no))
-#define NETX_IRQ_MSYNC0		(NETX_IRQ_VIC_START + 21)
-#define NETX_IRQ_MSYNC1		(NETX_IRQ_VIC_START + 22)
-#define NETX_IRQ_MSYNC2		(NETX_IRQ_VIC_START + 23)
-#define NETX_IRQ_MSYNC3		(NETX_IRQ_VIC_START + 24)
-#define NETX_IRQ_IRQ_PHY	(NETX_IRQ_VIC_START + 25)
-#define NETX_IRQ_ISO_AREA	(NETX_IRQ_VIC_START + 26)
-/* int 27 is reserved */
-/* int 28 is reserved */
-#define NETX_IRQ_TIMER3		(NETX_IRQ_VIC_START + 29)
-#define NETX_IRQ_TIMER4		(NETX_IRQ_VIC_START + 30)
-/* int 31 is reserved */
-
-#define NETX_IRQS 		(NETX_IRQ_VIC_START + 32)
-
-/* for multiplexed irqs on gpio 0..14 */
-#define NETX_IRQ_GPIO(x) (NETX_IRQS + (x))
-#define NETX_IRQ_GPIO_LAST NETX_IRQ_GPIO(14)
-
-/* Host interface interrupts */
-#define NETX_IRQ_HIF_CHAINED(x)    (NETX_IRQ_GPIO_LAST + 1 + (x))
-#define NETX_IRQ_HIF_PIO35         NETX_IRQ_HIF_CHAINED(0)
-#define NETX_IRQ_HIF_PIO36         NETX_IRQ_HIF_CHAINED(1)
-#define NETX_IRQ_HIF_PIO40         NETX_IRQ_HIF_CHAINED(2)
-#define NETX_IRQ_HIF_PIO47         NETX_IRQ_HIF_CHAINED(3)
-#define NETX_IRQ_HIF_PIO72         NETX_IRQ_HIF_CHAINED(4)
-#define NETX_IRQ_HIF_LAST          NETX_IRQ_HIF_CHAINED(4)
-
-#define NR_IRQS (NETX_IRQ_HIF_LAST + 1)
diff --git a/arch/arm/mach-netx/include/mach/netx-regs.h b/arch/arm/mach-netx/include/mach/netx-regs.h
deleted file mode 100644
index 7c356a6ab80b..000000000000
--- a/arch/arm/mach-netx/include/mach/netx-regs.h
+++ /dev/null
@@ -1,420 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * arch/arm/mach-netx/include/mach/netx-regs.h
- *
- * Copyright (c) 2005 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- */
-
-#ifndef __ASM_ARCH_NETX_REGS_H
-#define __ASM_ARCH_NETX_REGS_H
-
-/* offsets relative to the beginning of the io space */
-#define NETX_OFS_SYSTEM  0x00000
-#define NETX_OFS_MEMCR   0x00100
-#define NETX_OFS_DPMAS   0x03000
-#define NETX_OFS_GPIO    0x00800
-#define NETX_OFS_PIO     0x00900
-#define NETX_OFS_UART0   0x00a00
-#define NETX_OFS_UART1   0x00a40
-#define NETX_OFS_UART2   0x00a80
-#define NETX_OF_MIIMU    0x00b00
-#define NETX_OFS_SPI     0x00c00
-#define NETX_OFS_I2C     0x00d00
-#define NETX_OFS_SYSTIME 0x01100
-#define NETX_OFS_RTC     0x01200
-#define NETX_OFS_EXTBUS  0x03600
-#define NETX_OFS_LCD     0x04000
-#define NETX_OFS_USB     0x20000
-#define NETX_OFS_XMAC0   0x60000
-#define NETX_OFS_XMAC1   0x61000
-#define NETX_OFS_XMAC2   0x62000
-#define NETX_OFS_XMAC3   0x63000
-#define NETX_OFS_XMAC(no) (0x60000 + (no) * 0x1000)
-#define NETX_OFS_PFIFO   0x64000
-#define NETX_OFS_XPEC0   0x70000
-#define NETX_OFS_XPEC1   0x74000
-#define NETX_OFS_XPEC2   0x78000
-#define NETX_OFS_XPEC3   0x7c000
-#define NETX_OFS_XPEC(no) (0x70000 + (no) * 0x4000)
-#define NETX_OFS_VIC     0xff000
-
-/* physical addresses */
-#define NETX_PA_SYSTEM   (NETX_IO_PHYS + NETX_OFS_SYSTEM)
-#define NETX_PA_MEMCR    (NETX_IO_PHYS + NETX_OFS_MEMCR)
-#define NETX_PA_DPMAS    (NETX_IO_PHYS + NETX_OFS_DPMAS)
-#define NETX_PA_GPIO     (NETX_IO_PHYS + NETX_OFS_GPIO)
-#define NETX_PA_PIO      (NETX_IO_PHYS + NETX_OFS_PIO)
-#define NETX_PA_UART0    (NETX_IO_PHYS + NETX_OFS_UART0)
-#define NETX_PA_UART1    (NETX_IO_PHYS + NETX_OFS_UART1)
-#define NETX_PA_UART2    (NETX_IO_PHYS + NETX_OFS_UART2)
-#define NETX_PA_MIIMU    (NETX_IO_PHYS + NETX_OF_MIIMU)
-#define NETX_PA_SPI      (NETX_IO_PHYS + NETX_OFS_SPI)
-#define NETX_PA_I2C      (NETX_IO_PHYS + NETX_OFS_I2C)
-#define NETX_PA_SYSTIME  (NETX_IO_PHYS + NETX_OFS_SYSTIME)
-#define NETX_PA_RTC      (NETX_IO_PHYS + NETX_OFS_RTC)
-#define NETX_PA_EXTBUS   (NETX_IO_PHYS + NETX_OFS_EXTBUS)
-#define NETX_PA_LCD      (NETX_IO_PHYS + NETX_OFS_LCD)
-#define NETX_PA_USB      (NETX_IO_PHYS + NETX_OFS_USB)
-#define NETX_PA_XMAC0    (NETX_IO_PHYS + NETX_OFS_XMAC0)
-#define NETX_PA_XMAC1    (NETX_IO_PHYS + NETX_OFS_XMAC1)
-#define NETX_PA_XMAC2    (NETX_IO_PHYS + NETX_OFS_XMAC2)
-#define NETX_PA_XMAC3    (NETX_IO_PHYS + NETX_OFS_XMAC3)
-#define NETX_PA_XMAC(no) (NETX_IO_PHYS + NETX_OFS_XMAC(no))
-#define NETX_PA_PFIFO    (NETX_IO_PHYS + NETX_OFS_PFIFO)
-#define NETX_PA_XPEC0    (NETX_IO_PHYS + NETX_OFS_XPEC0)
-#define NETX_PA_XPEC1    (NETX_IO_PHYS + NETX_OFS_XPEC1)
-#define NETX_PA_XPEC2    (NETX_IO_PHYS + NETX_OFS_XPEC2)
-#define NETX_PA_XPEC3    (NETX_IO_PHYS + NETX_OFS_XPEC3)
-#define NETX_PA_XPEC(no) (NETX_IO_PHYS + NETX_OFS_XPEC(no))
-#define NETX_PA_VIC      (NETX_IO_PHYS + NETX_OFS_VIC)
-
-/* virtual addresses */
-#define NETX_VA_SYSTEM   (NETX_IO_VIRT + NETX_OFS_SYSTEM)
-#define NETX_VA_MEMCR    (NETX_IO_VIRT + NETX_OFS_MEMCR)
-#define NETX_VA_DPMAS    (NETX_IO_VIRT + NETX_OFS_DPMAS)
-#define NETX_VA_GPIO     (NETX_IO_VIRT + NETX_OFS_GPIO)
-#define NETX_VA_PIO      (NETX_IO_VIRT + NETX_OFS_PIO)
-#define NETX_VA_UART0    (NETX_IO_VIRT + NETX_OFS_UART0)
-#define NETX_VA_UART1    (NETX_IO_VIRT + NETX_OFS_UART1)
-#define NETX_VA_UART2    (NETX_IO_VIRT + NETX_OFS_UART2)
-#define NETX_VA_MIIMU    (NETX_IO_VIRT + NETX_OF_MIIMU)
-#define NETX_VA_SPI      (NETX_IO_VIRT + NETX_OFS_SPI)
-#define NETX_VA_I2C      (NETX_IO_VIRT + NETX_OFS_I2C)
-#define NETX_VA_SYSTIME  (NETX_IO_VIRT + NETX_OFS_SYSTIME)
-#define NETX_VA_RTC      (NETX_IO_VIRT + NETX_OFS_RTC)
-#define NETX_VA_EXTBUS   (NETX_IO_VIRT + NETX_OFS_EXTBUS)
-#define NETX_VA_LCD      (NETX_IO_VIRT + NETX_OFS_LCD)
-#define NETX_VA_USB      (NETX_IO_VIRT + NETX_OFS_USB)
-#define NETX_VA_XMAC0    (NETX_IO_VIRT + NETX_OFS_XMAC0)
-#define NETX_VA_XMAC1    (NETX_IO_VIRT + NETX_OFS_XMAC1)
-#define NETX_VA_XMAC2    (NETX_IO_VIRT + NETX_OFS_XMAC2)
-#define NETX_VA_XMAC3    (NETX_IO_VIRT + NETX_OFS_XMAC3)
-#define NETX_VA_XMAC(no) (NETX_IO_VIRT + NETX_OFS_XMAC(no))
-#define NETX_VA_PFIFO    (NETX_IO_VIRT + NETX_OFS_PFIFO)
-#define NETX_VA_XPEC0    (NETX_IO_VIRT + NETX_OFS_XPEC0)
-#define NETX_VA_XPEC1    (NETX_IO_VIRT + NETX_OFS_XPEC1)
-#define NETX_VA_XPEC2    (NETX_IO_VIRT + NETX_OFS_XPEC2)
-#define NETX_VA_XPEC3    (NETX_IO_VIRT + NETX_OFS_XPEC3)
-#define NETX_VA_XPEC(no) (NETX_IO_VIRT + NETX_OFS_XPEC(no))
-#define NETX_VA_VIC      (NETX_IO_VIRT + NETX_OFS_VIC)
-
-/*********************************
- * System functions              *
- *********************************/
-
-/* Registers */
-#define NETX_SYSTEM_REG(ofs)            IOMEM(NETX_VA_SYSTEM + (ofs))
-#define NETX_SYSTEM_BOO_SR          NETX_SYSTEM_REG(0x00)
-#define NETX_SYSTEM_IOC_CR          NETX_SYSTEM_REG(0x04)
-#define NETX_SYSTEM_IOC_MR          NETX_SYSTEM_REG(0x08)
-
-/* FIXME: Docs are not consistent */
-/* #define NETX_SYSTEM_RES_CR          NETX_SYSTEM_REG(0x08) */
-#define NETX_SYSTEM_RES_CR          NETX_SYSTEM_REG(0x0c)
-
-#define NETX_SYSTEM_PHY_CONTROL     NETX_SYSTEM_REG(0x10)
-#define NETX_SYSTEM_REV             NETX_SYSTEM_REG(0x34)
-#define NETX_SYSTEM_IOC_ACCESS_KEY  NETX_SYSTEM_REG(0x70)
-#define NETX_SYSTEM_WDG_TR          NETX_SYSTEM_REG(0x200)
-#define NETX_SYSTEM_WDG_CTR         NETX_SYSTEM_REG(0x204)
-#define NETX_SYSTEM_WDG_IRQ_TIMEOUT NETX_SYSTEM_REG(0x208)
-#define NETX_SYSTEM_WDG_RES_TIMEOUT NETX_SYSTEM_REG(0x20c)
-
-/* Bits */
-#define NETX_SYSTEM_RES_CR_RSTIN         (1<<0)
-#define NETX_SYSTEM_RES_CR_WDG_RES       (1<<1)
-#define NETX_SYSTEM_RES_CR_HOST_RES      (1<<2)
-#define NETX_SYSTEM_RES_CR_FIRMW_RES     (1<<3)
-#define NETX_SYSTEM_RES_CR_XPEC0_RES     (1<<4)
-#define NETX_SYSTEM_RES_CR_XPEC1_RES     (1<<5)
-#define NETX_SYSTEM_RES_CR_XPEC2_RES     (1<<6)
-#define NETX_SYSTEM_RES_CR_XPEC3_RES     (1<<7)
-#define NETX_SYSTEM_RES_CR_DIS_XPEC0_RES (1<<16)
-#define NETX_SYSTEM_RES_CR_DIS_XPEC1_RES (1<<17)
-#define NETX_SYSTEM_RES_CR_DIS_XPEC2_RES (1<<18)
-#define NETX_SYSTEM_RES_CR_DIS_XPEC3_RES (1<<19)
-#define NETX_SYSTEM_RES_CR_FIRMW_FLG0    (1<<20)
-#define NETX_SYSTEM_RES_CR_FIRMW_FLG1    (1<<21)
-#define NETX_SYSTEM_RES_CR_FIRMW_FLG2    (1<<22)
-#define NETX_SYSTEM_RES_CR_FIRMW_FLG3    (1<<23)
-#define NETX_SYSTEM_RES_CR_FIRMW_RES_EN  (1<<24)
-#define NETX_SYSTEM_RES_CR_RSTOUT        (1<<25)
-#define NETX_SYSTEM_RES_CR_EN_RSTOUT     (1<<26)
-
-#define PHY_CONTROL_RESET            (1<<31)
-#define PHY_CONTROL_SIM_BYP          (1<<30)
-#define PHY_CONTROL_CLK_XLATIN       (1<<29)
-#define PHY_CONTROL_PHY1_EN          (1<<21)
-#define PHY_CONTROL_PHY1_NP_MSG_CODE
-#define PHY_CONTROL_PHY1_AUTOMDIX    (1<<17)
-#define PHY_CONTROL_PHY1_FIXMODE     (1<<16)
-#define PHY_CONTROL_PHY1_MODE(mode)  (((mode) & 0x7) << 13)
-#define PHY_CONTROL_PHY0_EN          (1<<12)
-#define PHY_CONTROL_PHY0_NP_MSG_CODE
-#define PHY_CONTROL_PHY0_AUTOMDIX    (1<<8)
-#define PHY_CONTROL_PHY0_FIXMODE     (1<<7)
-#define PHY_CONTROL_PHY0_MODE(mode)  (((mode) & 0x7) << 4)
-#define PHY_CONTROL_PHY_ADDRESS(adr) ((adr) & 0xf)
-
-#define PHY_MODE_10BASE_T_HALF      0
-#define PHY_MODE_10BASE_T_FULL      1
-#define PHY_MODE_100BASE_TX_FX_FULL 2
-#define PHY_MODE_100BASE_TX_FX_HALF 3
-#define PHY_MODE_100BASE_TX_HALF    4
-#define PHY_MODE_REPEATER           5
-#define PHY_MODE_POWER_DOWN         6
-#define PHY_MODE_ALL                7
-
-/* Bits */
-#define VECT_CNTL_ENABLE               (1 << 5)
-
-/*******************************
- * GPIO and timer module       *
- *******************************/
-
-/* Registers */
-#define NETX_GPIO_REG(ofs)                     IOMEM(NETX_VA_GPIO + (ofs))
-#define NETX_GPIO_CFG(gpio)                NETX_GPIO_REG(0x0  + ((gpio)<<2))
-#define NETX_GPIO_THRESHOLD_CAPTURE(gpio)  NETX_GPIO_REG(0x40 + ((gpio)<<2))
-#define NETX_GPIO_COUNTER_CTRL(counter)    NETX_GPIO_REG(0x80 + ((counter)<<2))
-#define NETX_GPIO_COUNTER_MAX(counter)     NETX_GPIO_REG(0x94 + ((counter)<<2))
-#define NETX_GPIO_COUNTER_CURRENT(counter) NETX_GPIO_REG(0xa8 + ((counter)<<2))
-#define NETX_GPIO_IRQ_ENABLE               NETX_GPIO_REG(0xbc)
-#define NETX_GPIO_IRQ_DISABLE              NETX_GPIO_REG(0xc0)
-#define NETX_GPIO_SYSTIME_NS_CMP           NETX_GPIO_REG(0xc4)
-#define NETX_GPIO_LINE                     NETX_GPIO_REG(0xc8)
-#define NETX_GPIO_IRQ                      NETX_GPIO_REG(0xd0)
-
-/* Bits */
-#define NETX_GPIO_CFG_IOCFG_GP_INPUT                 (0x0)
-#define NETX_GPIO_CFG_IOCFG_GP_OUTPUT                (0x1)
-#define NETX_GPIO_CFG_IOCFG_GP_UART                  (0x2)
-#define NETX_GPIO_CFG_INV                            (1<<2)
-#define NETX_GPIO_CFG_MODE_INPUT_READ                (0<<3)
-#define NETX_GPIO_CFG_MODE_INPUT_CAPTURE_CONT_RISING (1<<3)
-#define NETX_GPIO_CFG_MODE_INPUT_CAPTURE_ONCE_RISING (2<<3)
-#define NETX_GPIO_CFG_MODE_INPUT_CAPTURE_HIGH_LEVEL  (3<<3)
-#define NETX_GPIO_CFG_COUNT_REF_COUNTER0             (0<<5)
-#define NETX_GPIO_CFG_COUNT_REF_COUNTER1             (1<<5)
-#define NETX_GPIO_CFG_COUNT_REF_COUNTER2             (2<<5)
-#define NETX_GPIO_CFG_COUNT_REF_COUNTER3             (3<<5)
-#define NETX_GPIO_CFG_COUNT_REF_COUNTER4             (4<<5)
-#define NETX_GPIO_CFG_COUNT_REF_SYSTIME              (7<<5)
-
-#define NETX_GPIO_COUNTER_CTRL_RUN                   (1<<0)
-#define NETX_GPIO_COUNTER_CTRL_SYM                   (1<<1)
-#define NETX_GPIO_COUNTER_CTRL_ONCE                  (1<<2)
-#define NETX_GPIO_COUNTER_CTRL_IRQ_EN                (1<<3)
-#define NETX_GPIO_COUNTER_CTRL_CNT_EVENT             (1<<4)
-#define NETX_GPIO_COUNTER_CTRL_RST_EN                (1<<5)
-#define NETX_GPIO_COUNTER_CTRL_SEL_EVENT             (1<<6)
-#define NETX_GPIO_COUNTER_CTRL_GPIO_REF /* FIXME */
-
-#define GPIO_BIT(gpio)                     (1<<(gpio))
-#define COUNTER_BIT(counter)               ((1<<16)<<(counter))
-
-/*******************************
- * PIO                         *
- *******************************/
-
-/* Registers */
-#define NETX_PIO_REG(ofs)        IOMEM(NETX_VA_PIO + (ofs))
-#define NETX_PIO_INPIO       NETX_PIO_REG(0x0)
-#define NETX_PIO_OUTPIO      NETX_PIO_REG(0x4)
-#define NETX_PIO_OEPIO       NETX_PIO_REG(0x8)
-
-/*******************************
- * MII Unit                    *
- *******************************/
-
-/* Registers */
-#define NETX_MIIMU           IOMEM(NETX_VA_MIIMU)
-
-/* Bits */
-#define MIIMU_SNRDY        (1<<0)
-#define MIIMU_PREAMBLE     (1<<1)
-#define MIIMU_OPMODE_WRITE (1<<2)
-#define MIIMU_MDC_PERIOD   (1<<3)
-#define MIIMU_PHY_NRES     (1<<4)
-#define MIIMU_RTA          (1<<5)
-#define MIIMU_REGADDR(adr) (((adr) & 0x1f) << 6)
-#define MIIMU_PHYADDR(adr) (((adr) & 0x1f) << 11)
-#define MIIMU_DATA(data)   (((data) & 0xffff) << 16)
-
-/*******************************
- * xmac / xpec                 *
- *******************************/
-
-/* XPEC register offsets relative to NETX_VA_XPEC(no) */
-#define NETX_XPEC_R0_OFS           0x00
-#define NETX_XPEC_R1_OFS           0x04
-#define NETX_XPEC_R2_OFS           0x08
-#define NETX_XPEC_R3_OFS           0x0c
-#define NETX_XPEC_R4_OFS           0x10
-#define NETX_XPEC_R5_OFS           0x14
-#define NETX_XPEC_R6_OFS           0x18
-#define NETX_XPEC_R7_OFS           0x1c
-#define NETX_XPEC_RANGE01_OFS      0x20
-#define NETX_XPEC_RANGE23_OFS      0x24
-#define NETX_XPEC_RANGE45_OFS      0x28
-#define NETX_XPEC_RANGE67_OFS      0x2c
-#define NETX_XPEC_PC_OFS           0x48
-#define NETX_XPEC_TIMER_OFS(timer) (0x30 + ((timer)<<2))
-#define NETX_XPEC_IRQ_OFS          0x8c
-#define NETX_XPEC_SYSTIME_NS_OFS   0x90
-#define NETX_XPEC_FIFO_DATA_OFS    0x94
-#define NETX_XPEC_SYSTIME_S_OFS    0x98
-#define NETX_XPEC_ADC_OFS          0x9c
-#define NETX_XPEC_URX_COUNT_OFS    0x40
-#define NETX_XPEC_UTX_COUNT_OFS    0x44
-#define NETX_XPEC_PC_OFS           0x48
-#define NETX_XPEC_ZERO_OFS         0x4c
-#define NETX_XPEC_STATCFG_OFS      0x50
-#define NETX_XPEC_EC_MASKA_OFS     0x54
-#define NETX_XPEC_EC_MASKB_OFS     0x58
-#define NETX_XPEC_EC_MASK0_OFS     0x5c
-#define NETX_XPEC_EC_MASK8_OFS     0x7c
-#define NETX_XPEC_EC_MASK9_OFS     0x80
-#define NETX_XPEC_XPU_HOLD_PC_OFS  0x100
-#define NETX_XPEC_RAM_START_OFS    0x2000
-
-/* Bits */
-#define XPU_HOLD_PC (1<<0)
-
-/* XMAC register offsets relative to NETX_VA_XMAC(no) */
-#define NETX_XMAC_RPU_PROGRAM_START_OFS       0x000
-#define NETX_XMAC_RPU_PROGRAM_END_OFS         0x3ff
-#define NETX_XMAC_TPU_PROGRAM_START_OFS       0x400
-#define NETX_XMAC_TPU_PROGRAM_END_OFS         0x7ff
-#define NETX_XMAC_RPU_HOLD_PC_OFS             0xa00
-#define NETX_XMAC_TPU_HOLD_PC_OFS             0xa04
-#define NETX_XMAC_STATUS_SHARED0_OFS          0x840
-#define NETX_XMAC_CONFIG_SHARED0_OFS          0x844
-#define NETX_XMAC_STATUS_SHARED1_OFS          0x848
-#define NETX_XMAC_CONFIG_SHARED1_OFS          0x84c
-#define NETX_XMAC_STATUS_SHARED2_OFS          0x850
-#define NETX_XMAC_CONFIG_SHARED2_OFS          0x854
-#define NETX_XMAC_STATUS_SHARED3_OFS          0x858
-#define NETX_XMAC_CONFIG_SHARED3_OFS          0x85c
-
-#define RPU_HOLD_PC            (1<<15)
-#define TPU_HOLD_PC            (1<<15)
-
-/*******************************
- * Pointer FIFO                *
- *******************************/
-
-/* Registers */
-#define NETX_PFIFO_REG(ofs)               IOMEM(NETX_VA_PFIFO + (ofs))
-#define NETX_PFIFO_BASE(pfifo)        NETX_PFIFO_REG(0x00 + ((pfifo)<<2))
-#define NETX_PFIFO_BORDER_BASE(pfifo) NETX_PFIFO_REG(0x80 + ((pfifo)<<2))
-#define NETX_PFIFO_RESET              NETX_PFIFO_REG(0x100)
-#define NETX_PFIFO_FULL               NETX_PFIFO_REG(0x104)
-#define NETX_PFIFO_EMPTY              NETX_PFIFO_REG(0x108)
-#define NETX_PFIFO_OVEFLOW            NETX_PFIFO_REG(0x10c)
-#define NETX_PFIFO_UNDERRUN           NETX_PFIFO_REG(0x110)
-#define NETX_PFIFO_FILL_LEVEL(pfifo)  NETX_PFIFO_REG(0x180 + ((pfifo)<<2))
-#define NETX_PFIFO_XPEC_ISR(xpec)     NETX_PFIFO_REG(0x400 + ((xpec) << 2))
-
-
-/*******************************
- * Memory Controller           *
- *******************************/
-
-/* Registers */
-#define NETX_MEMCR_REG(ofs)               IOMEM(NETX_VA_MEMCR + (ofs))
-#define NETX_MEMCR_SRAM_CTRL(cs)      NETX_MEMCR_REG(0x0 + 4 * (cs)) /* SRAM for CS 0..2 */
-#define NETX_MEMCR_SDRAM_CFG_CTRL     NETX_MEMCR_REG(0x40)
-#define NETX_MEMCR_SDRAM_TIMING_CTRL  NETX_MEMCR_REG(0x44)
-#define NETX_MEMCR_SDRAM_MODE         NETX_MEMCR_REG(0x48)
-#define NETX_MEMCR_SDRAM_EXT_MODE     NETX_MEMCR_REG(0x4c)
-#define NETX_MEMCR_PRIO_TIMESLOT_CTRL NETX_MEMCR_REG(0x80)
-#define NETX_MEMCR_PRIO_ACCESS_CTRL   NETX_MEMCR_REG(0x84)
-
-/* Bits */
-#define NETX_MEMCR_SRAM_CTRL_WIDTHEXTMEM(x)       (((x) & 0x3)  << 24)
-#define NETX_MEMCR_SRAM_CTRL_WSPOSTPAUSEEXTMEM(x) (((x) & 0x3)  << 16)
-#define NETX_MEMCR_SRAM_CTRL_WSPREPASEEXTMEM(x)   (((x) & 0x3)  << 8)
-#define NETX_MEMCR_SRAM_CTRL_WSEXTMEM(x)          (((x) & 0x1f) << 0)
-
-
-/*******************************
- * Dual Port Memory            *
- *******************************/
-
-/* Registers */
-#define NETX_DPMAS_REG(ofs)               IOMEM(NETX_VA_DPMAS + (ofs))
-#define NETX_DPMAS_SYS_STAT           NETX_DPMAS_REG(0x4d8)
-#define NETX_DPMAS_INT_STAT           NETX_DPMAS_REG(0x4e0)
-#define NETX_DPMAS_INT_EN             NETX_DPMAS_REG(0x4f0)
-#define NETX_DPMAS_IF_CONF0           NETX_DPMAS_REG(0x608)
-#define NETX_DPMAS_IF_CONF1           NETX_DPMAS_REG(0x60c)
-#define NETX_DPMAS_EXT_CONFIG(cs)     NETX_DPMAS_REG(0x610 + 4 * (cs))
-#define NETX_DPMAS_IO_MODE0           NETX_DPMAS_REG(0x620) /* I/O 32..63 */
-#define NETX_DPMAS_DRV_EN0            NETX_DPMAS_REG(0x624)
-#define NETX_DPMAS_DATA0              NETX_DPMAS_REG(0x628)
-#define NETX_DPMAS_IO_MODE1           NETX_DPMAS_REG(0x630) /* I/O 64..84 */
-#define NETX_DPMAS_DRV_EN1            NETX_DPMAS_REG(0x634)
-#define NETX_DPMAS_DATA1              NETX_DPMAS_REG(0x638)
-
-/* Bits */
-#define NETX_DPMAS_INT_EN_GLB_EN         (1<<31)
-#define NETX_DPMAS_INT_EN_MEM_LCK        (1<<30)
-#define NETX_DPMAS_INT_EN_WDG            (1<<29)
-#define NETX_DPMAS_INT_EN_PIO72          (1<<28)
-#define NETX_DPMAS_INT_EN_PIO47          (1<<27)
-#define NETX_DPMAS_INT_EN_PIO40          (1<<26)
-#define NETX_DPMAS_INT_EN_PIO36          (1<<25)
-#define NETX_DPMAS_INT_EN_PIO35          (1<<24)
-
-#define NETX_DPMAS_IF_CONF0_HIF_DISABLED (0<<28)
-#define NETX_DPMAS_IF_CONF0_HIF_EXT_BUS  (1<<28)
-#define NETX_DPMAS_IF_CONF0_HIF_UP_8BIT  (2<<28)
-#define NETX_DPMAS_IF_CONF0_HIF_UP_16BIT (3<<28)
-#define NETX_DPMAS_IF_CONF0_HIF_IO       (4<<28)
-#define NETX_DPMAS_IF_CONF0_WAIT_DRV_PP  (1<<14)
-#define NETX_DPMAS_IF_CONF0_WAIT_DRV_OD  (2<<14)
-#define NETX_DPMAS_IF_CONF0_WAIT_DRV_TRI (3<<14)
-
-#define NETX_DPMAS_IF_CONF1_IRQ_POL_PIO35 (1<<26)
-#define NETX_DPMAS_IF_CONF1_IRQ_POL_PIO36 (1<<27)
-#define NETX_DPMAS_IF_CONF1_IRQ_POL_PIO40 (1<<28)
-#define NETX_DPMAS_IF_CONF1_IRQ_POL_PIO47 (1<<29)
-#define NETX_DPMAS_IF_CONF1_IRQ_POL_PIO72 (1<<30)
-
-#define NETX_EXT_CONFIG_TALEWIDTH(x) (((x) & 0x7) << 29)
-#define NETX_EXT_CONFIG_TADRHOLD(x)  (((x) & 0x7) << 26)
-#define NETX_EXT_CONFIG_TCSON(x)     (((x) & 0x7) << 23)
-#define NETX_EXT_CONFIG_TRDON(x)     (((x) & 0x7) << 20)
-#define NETX_EXT_CONFIG_TWRON(x)     (((x) & 0x7)  << 17)
-#define NETX_EXT_CONFIG_TWROFF(x)    (((x) & 0x1f) << 12)
-#define NETX_EXT_CONFIG_TRDWRCYC(x)  (((x) & 0x1f) << 7)
-#define NETX_EXT_CONFIG_WAIT_POL     (1<<6)
-#define NETX_EXT_CONFIG_WAIT_EN      (1<<5)
-#define NETX_EXT_CONFIG_NRD_MODE     (1<<4)
-#define NETX_EXT_CONFIG_DS_MODE      (1<<3)
-#define NETX_EXT_CONFIG_NWR_MODE     (1<<2)
-#define NETX_EXT_CONFIG_16BIT        (1<<1)
-#define NETX_EXT_CONFIG_CS_ENABLE    (1<<0)
-
-#define NETX_DPMAS_IO_MODE0_WRL   (1<<13)
-#define NETX_DPMAS_IO_MODE0_WAIT  (1<<14)
-#define NETX_DPMAS_IO_MODE0_READY (1<<15)
-#define NETX_DPMAS_IO_MODE0_CS0   (1<<19)
-#define NETX_DPMAS_IO_MODE0_EXTRD (1<<20)
-
-#define NETX_DPMAS_IO_MODE1_CS2           (1<<15)
-#define NETX_DPMAS_IO_MODE1_CS1           (1<<16)
-#define NETX_DPMAS_IO_MODE1_SAMPLE_NPOR   (0<<30)
-#define NETX_DPMAS_IO_MODE1_SAMPLE_100MHZ (1<<30)
-#define NETX_DPMAS_IO_MODE1_SAMPLE_NPIO36 (2<<30)
-#define NETX_DPMAS_IO_MODE1_SAMPLE_PIO36  (3<<30)
-
-/*******************************
- * I2C                         *
- *******************************/
-#define NETX_I2C_REG(ofs)	IOMEM(NETX_VA_I2C, (ofs))
-#define NETX_I2C_CTRL	NETX_I2C_REG(0x0)
-#define NETX_I2C_DATA	NETX_I2C_REG(0x4)
-
-#endif /* __ASM_ARCH_NETX_REGS_H */
diff --git a/arch/arm/mach-netx/include/mach/pfifo.h b/arch/arm/mach-netx/include/mach/pfifo.h
deleted file mode 100644
index de23180bc937..000000000000
--- a/arch/arm/mach-netx/include/mach/pfifo.h
+++ /dev/null
@@ -1,42 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * arch/arm/mach-netx/include/mach/pfifo.h
- *
- * Copyright (c) 2005 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- */
-
-
-#ifndef ASM_ARCH_PFIFO_H
-#define ASM_ARCH_PFIFO_H
-
-static inline int pfifo_push(int no, unsigned int pointer)
-{
-	writel(pointer, NETX_PFIFO_BASE(no));
-	return 0;
-}
-
-static inline unsigned int pfifo_pop(int no)
-{
-	return readl(NETX_PFIFO_BASE(no));
-}
-
-static inline int pfifo_fill_level(int no)
-{
-
-	return readl(NETX_PFIFO_FILL_LEVEL(no));
-}
-
-static inline int pfifo_full(int no)
-{
-	return readl(NETX_PFIFO_FULL) & (1<<no) ? 1 : 0;
-}
-
-static inline int pfifo_empty(int no)
-{
-	return readl(NETX_PFIFO_EMPTY) & (1<<no) ? 1 : 0;
-}
-
-int pfifo_request(unsigned int pfifo_mask);
-void pfifo_free(unsigned int pfifo_mask);
-
-#endif /* ASM_ARCH_PFIFO_H */
diff --git a/arch/arm/mach-netx/include/mach/uncompress.h b/arch/arm/mach-netx/include/mach/uncompress.h
deleted file mode 100644
index edc1ac997eab..000000000000
--- a/arch/arm/mach-netx/include/mach/uncompress.h
+++ /dev/null
@@ -1,63 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * arch/arm/mach-netx/include/mach/uncompress.h
- *
- * Copyright (C) 2005 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- */
-
-/*
- * The following code assumes the serial port has already been
- * initialized by the bootloader.  We search for the first enabled
- * port in the most probable order.  If you didn't setup a port in
- * your bootloader then nothing will appear (which might be desired).
- *
- * This does not append a newline
- */
-
-#define REG(x) (*(volatile unsigned long *)(x))
-
-#define UART1_BASE 0x100a00
-#define UART2_BASE 0x100a80
-
-#define UART_DR 0x0
-
-#define UART_CR 0x14
-#define CR_UART_EN (1<<0)
-
-#define UART_FR 0x18
-#define FR_BUSY (1<<3)
-#define FR_TXFF (1<<5)
-
-static inline void putc(char c)
-{
-	unsigned long base;
-
-	if (REG(UART1_BASE + UART_CR) & CR_UART_EN)
-		base = UART1_BASE;
-	else if (REG(UART2_BASE + UART_CR) & CR_UART_EN)
-		base = UART2_BASE;
-	else
-		return;
-
-	while (REG(base + UART_FR) & FR_TXFF);
-	REG(base + UART_DR) = c;
-}
-
-static inline void flush(void)
-{
-	unsigned long base;
-
-	if (REG(UART1_BASE + UART_CR) & CR_UART_EN)
-		base = UART1_BASE;
-	else if (REG(UART2_BASE + UART_CR) & CR_UART_EN)
-		base = UART2_BASE;
-	else
-		return;
-
-	while (REG(base + UART_FR) & FR_BUSY);
-}
-
-/*
- * nothing to do
- */
-#define arch_decomp_setup()
diff --git a/arch/arm/mach-netx/include/mach/xc.h b/arch/arm/mach-netx/include/mach/xc.h
deleted file mode 100644
index 465d5e250ab8..000000000000
--- a/arch/arm/mach-netx/include/mach/xc.h
+++ /dev/null
@@ -1,30 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- *  arch/arm/mach-netx/include/mach/xc.h
- *
- * Copyright (C) 2005 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- */
-
-#ifndef __ASM_ARCH_XC_H
-#define __ASM_ARCH_XC_H
-
-struct xc {
-	int no;
-	unsigned int type;
-	unsigned int version;
-	void __iomem *xpec_base;
-	void __iomem *xmac_base;
-	void __iomem *sram_base;
-	int irq;
-	struct device *dev;
-};
-
-int xc_reset(struct xc *x);
-int xc_stop(struct xc* x);
-int xc_start(struct xc *x);
-int xc_running(struct xc *x);
-int xc_request_firmware(struct xc* x);
-struct xc* request_xc(int xcno, struct device *dev);
-void free_xc(struct xc *x);
-
-#endif /* __ASM_ARCH_XC_H */
diff --git a/arch/arm/mach-netx/nxdb500.c b/arch/arm/mach-netx/nxdb500.c
deleted file mode 100644
index ad5e6747b834..000000000000
--- a/arch/arm/mach-netx/nxdb500.c
+++ /dev/null
@@ -1,197 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * arch/arm/mach-netx/nxdb500.c
- *
- * Copyright (c) 2005 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- */
-
-#include <linux/dma-mapping.h>
-#include <linux/init.h>
-#include <linux/interrupt.h>
-#include <linux/mtd/plat-ram.h>
-#include <linux/platform_device.h>
-#include <linux/amba/bus.h>
-#include <linux/amba/clcd.h>
-
-#include <mach/hardware.h>
-#include <asm/mach-types.h>
-#include <asm/mach/arch.h>
-#include <mach/netx-regs.h>
-#include <linux/platform_data/eth-netx.h>
-
-#include "generic.h"
-#include "fb.h"
-
-static struct clcd_panel qvga = {
-	.mode		= {
-		.name		= "QVGA",
-		.refresh	= 60,
-		.xres		= 240,
-		.yres		= 320,
-		.pixclock	= 187617,
-		.left_margin	= 6,
-		.right_margin	= 26,
-		.upper_margin	= 0,
-		.lower_margin	= 6,
-		.hsync_len	= 6,
-		.vsync_len	= 1,
-		.sync		= 0,
-		.vmode		= FB_VMODE_NONINTERLACED,
-	},
-	.width		= -1,
-	.height		= -1,
-	.tim2		=  16,
-	.cntl		= CNTL_LCDTFT | CNTL_BGR,
-	.bpp		= 16,
-	.grayscale	= 0,
-};
-
-static inline int nxdb500_check(struct clcd_fb *fb, struct fb_var_screeninfo *var)
-{
-	var->green.length = 5;
-	var->green.msb_right = 0;
-
-	return clcdfb_check(fb, var);
-}
-
-static int nxdb500_clcd_setup(struct clcd_fb *fb)
-{
-	unsigned int val;
-
-	fb->fb.var.green.length = 5;
-	fb->fb.var.green.msb_right = 0;
-
-	/* enable asic control */
-	val = readl(NETX_SYSTEM_IOC_ACCESS_KEY);
-	writel(val, NETX_SYSTEM_IOC_ACCESS_KEY);
-
-	writel(3, NETX_SYSTEM_IOC_CR);
-
-	val = readl(NETX_PIO_OUTPIO);
-	writel(val | 1, NETX_PIO_OUTPIO);
-
-	val = readl(NETX_PIO_OEPIO);
-	writel(val | 1, NETX_PIO_OEPIO);
-	return netx_clcd_setup(fb);
-}
-
-static struct clcd_board clcd_data = {
-	.name		= "netX",
-	.check		= nxdb500_check,
-	.decode		= clcdfb_decode,
-	.enable		= netx_clcd_enable,
-	.setup		= nxdb500_clcd_setup,
-	.mmap		= netx_clcd_mmap,
-	.remove		= netx_clcd_remove,
-};
-
-static struct netxeth_platform_data eth0_platform_data = {
-	.xcno = 0,
-};
-
-static struct platform_device netx_eth0_device = {
-	.name		= "netx-eth",
-	.id		= 0,
-	.num_resources	= 0,
-	.resource	= NULL,
-	.dev = {
-		.platform_data = &eth0_platform_data,
-	}
-};
-
-static struct netxeth_platform_data eth1_platform_data = {
-	.xcno = 1,
-};
-
-static struct platform_device netx_eth1_device = {
-	.name		= "netx-eth",
-	.id		= 1,
-	.num_resources	= 0,
-	.resource	= NULL,
-	.dev = {
-		.platform_data = &eth1_platform_data,
-	}
-};
-
-static struct resource netx_uart0_resources[] = {
-	[0] = {
-		.start	= 0x00100A00,
-		.end	= 0x00100A3F,
-		.flags	= IORESOURCE_MEM,
-	},
-	[1] = {
-		.start	= (NETX_IRQ_UART0),
-		.end	= (NETX_IRQ_UART0),
-		.flags	= IORESOURCE_IRQ,
-	},
-};
-
-static struct platform_device netx_uart0_device = {
-	.name		= "netx-uart",
-	.id		= 0,
-	.num_resources	= ARRAY_SIZE(netx_uart0_resources),
-	.resource	= netx_uart0_resources,
-};
-
-static struct resource netx_uart1_resources[] = {
-	[0] = {
-		.start	= 0x00100A40,
-		.end	= 0x00100A7F,
-		.flags	= IORESOURCE_MEM,
-	},
-	[1] = {
-		.start	= (NETX_IRQ_UART1),
-		.end	= (NETX_IRQ_UART1),
-		.flags	= IORESOURCE_IRQ,
-	},
-};
-
-static struct platform_device netx_uart1_device = {
-	.name		= "netx-uart",
-	.id		= 1,
-	.num_resources	= ARRAY_SIZE(netx_uart1_resources),
-	.resource	= netx_uart1_resources,
-};
-
-static struct resource netx_uart2_resources[] = {
-	[0] = {
-		.start	= 0x00100A80,
-		.end	= 0x00100ABF,
-		.flags	= IORESOURCE_MEM,
-	},
-	[1] = {
-		.start	= (NETX_IRQ_UART2),
-		.end	= (NETX_IRQ_UART2),
-		.flags	= IORESOURCE_IRQ,
-	},
-};
-
-static struct platform_device netx_uart2_device = {
-	.name		= "netx-uart",
-	.id		= 2,
-	.num_resources	= ARRAY_SIZE(netx_uart2_resources),
-	.resource	= netx_uart2_resources,
-};
-
-static struct platform_device *devices[] __initdata = {
-	&netx_eth0_device,
-	&netx_eth1_device,
-	&netx_uart0_device,
-	&netx_uart1_device,
-	&netx_uart2_device,
-};
-
-static void __init nxdb500_init(void)
-{
-	netx_fb_init(&clcd_data, &qvga);
-	platform_add_devices(devices, ARRAY_SIZE(devices));
-}
-
-MACHINE_START(NXDB500, "Hilscher nxdb500")
-	.atag_offset	= 0x100,
-	.map_io		= netx_map_io,
-	.init_irq	= netx_init_irq,
-	.init_time	= netx_timer_init,
-	.init_machine	= nxdb500_init,
-	.restart	= netx_restart,
-MACHINE_END
diff --git a/arch/arm/mach-netx/nxdkn.c b/arch/arm/mach-netx/nxdkn.c
deleted file mode 100644
index 917381559628..000000000000
--- a/arch/arm/mach-netx/nxdkn.c
+++ /dev/null
@@ -1,90 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * arch/arm/mach-netx/nxdkn.c
- *
- * Copyright (c) 2005 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- */
-
-#include <linux/dma-mapping.h>
-#include <linux/init.h>
-#include <linux/interrupt.h>
-#include <linux/mtd/plat-ram.h>
-#include <linux/platform_device.h>
-#include <linux/amba/bus.h>
-#include <linux/amba/clcd.h>
-
-#include <mach/hardware.h>
-#include <asm/mach-types.h>
-#include <asm/mach/arch.h>
-#include <mach/netx-regs.h>
-#include <linux/platform_data/eth-netx.h>
-
-#include "generic.h"
-
-static struct netxeth_platform_data eth0_platform_data = {
-	.xcno = 0,
-};
-
-static struct platform_device nxdkn_eth0_device = {
-	.name		= "netx-eth",
-	.id		= 0,
-	.num_resources	= 0,
-	.resource	= NULL,
-	.dev = {
-		.platform_data = &eth0_platform_data,
-	}
-};
-
-static struct netxeth_platform_data eth1_platform_data = {
-	.xcno = 1,
-};
-
-static struct platform_device nxdkn_eth1_device = {
-	.name		= "netx-eth",
-	.id		= 1,
-	.num_resources	= 0,
-	.resource	= NULL,
-	.dev = {
-		.platform_data = &eth1_platform_data,
-	}
-};
-
-static struct resource netx_uart0_resources[] = {
-	[0] = {
-		.start	= 0x00100A00,
-		.end	= 0x00100A3F,
-		.flags	= IORESOURCE_MEM,
-	},
-	[1] = {
-		.start	= (NETX_IRQ_UART0),
-		.end	= (NETX_IRQ_UART0),
-		.flags	= IORESOURCE_IRQ,
-	},
-};
-
-static struct platform_device netx_uart0_device = {
-	.name		= "netx-uart",
-	.id		= 0,
-	.num_resources	= ARRAY_SIZE(netx_uart0_resources),
-	.resource	= netx_uart0_resources,
-};
-
-static struct platform_device *devices[] __initdata = {
-	&nxdkn_eth0_device,
-	&nxdkn_eth1_device,
-	&netx_uart0_device,
-};
-
-static void __init nxdkn_init(void)
-{
-	platform_add_devices(devices, ARRAY_SIZE(devices));
-}
-
-MACHINE_START(NXDKN, "Hilscher nxdkn")
-	.atag_offset	= 0x100,
-	.map_io		= netx_map_io,
-	.init_irq	= netx_init_irq,
-	.init_time	= netx_timer_init,
-	.init_machine	= nxdkn_init,
-	.restart	= netx_restart,
-MACHINE_END
diff --git a/arch/arm/mach-netx/nxeb500hmi.c b/arch/arm/mach-netx/nxeb500hmi.c
deleted file mode 100644
index aa0d5b2ca712..000000000000
--- a/arch/arm/mach-netx/nxeb500hmi.c
+++ /dev/null
@@ -1,174 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * arch/arm/mach-netx/nxeb500hmi.c
- *
- * Copyright (c) 2005 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- */
-
-#include <linux/dma-mapping.h>
-#include <linux/init.h>
-#include <linux/interrupt.h>
-#include <linux/mtd/plat-ram.h>
-#include <linux/platform_device.h>
-#include <linux/amba/bus.h>
-#include <linux/amba/clcd.h>
-
-#include <mach/hardware.h>
-#include <asm/mach-types.h>
-#include <asm/mach/arch.h>
-#include <mach/netx-regs.h>
-#include <linux/platform_data/eth-netx.h>
-
-#include "generic.h"
-#include "fb.h"
-
-static struct clcd_panel qvga = {
-	.mode		= {
-		.name		= "QVGA",
-		.refresh	= 60,
-		.xres		= 240,
-		.yres		= 320,
-		.pixclock	= 187617,
-		.left_margin	= 6,
-		.right_margin	= 26,
-		.upper_margin	= 0,
-		.lower_margin	= 6,
-		.hsync_len	= 6,
-		.vsync_len	= 1,
-		.sync		= 0,
-		.vmode		= FB_VMODE_NONINTERLACED,
-	},
-	.width		= -1,
-	.height		= -1,
-	.tim2		=  16,
-	.cntl		= CNTL_LCDTFT | CNTL_BGR,
-	.bpp		= 16,
-	.grayscale	= 0,
-};
-
-static inline int nxeb500hmi_check(struct clcd_fb *fb, struct fb_var_screeninfo *var)
-{
-	var->green.length = 5;
-	var->green.msb_right = 0;
-
-	return clcdfb_check(fb, var);
-}
-
-static int nxeb500hmi_clcd_setup(struct clcd_fb *fb)
-{
-	unsigned int val;
-
-	fb->fb.var.green.length = 5;
-	fb->fb.var.green.msb_right = 0;
-
-	/* enable asic control */
-	val = readl(NETX_SYSTEM_IOC_ACCESS_KEY);
-	writel(val, NETX_SYSTEM_IOC_ACCESS_KEY);
-
-	writel(3, NETX_SYSTEM_IOC_CR);
-
-	/* GPIO 14 is used for display enable on newer boards */
-	writel(9, NETX_GPIO_CFG(14));
-
-	val = readl(NETX_PIO_OUTPIO);
-	writel(val | 1, NETX_PIO_OUTPIO);
-
-	val = readl(NETX_PIO_OEPIO);
-	writel(val | 1, NETX_PIO_OEPIO);
-	return netx_clcd_setup(fb);
-}
-
-static struct clcd_board clcd_data = {
-	.name		= "netX",
-	.check		= nxeb500hmi_check,
-	.decode		= clcdfb_decode,
-	.enable		= netx_clcd_enable,
-	.setup		= nxeb500hmi_clcd_setup,
-	.mmap		= netx_clcd_mmap,
-	.remove		= netx_clcd_remove,
-};
-
-static struct netxeth_platform_data eth0_platform_data = {
-	.xcno = 0,
-};
-
-static struct platform_device netx_eth0_device = {
-	.name		= "netx-eth",
-	.id		= 0,
-	.num_resources	= 0,
-	.resource	= NULL,
-	.dev = {
-		.platform_data = &eth0_platform_data,
-	}
-};
-
-static struct netxeth_platform_data eth1_platform_data = {
-	.xcno = 1,
-};
-
-static struct platform_device netx_eth1_device = {
-	.name		= "netx-eth",
-	.id		= 1,
-	.num_resources	= 0,
-	.resource	= NULL,
-	.dev = {
-		.platform_data = &eth1_platform_data,
-	}
-};
-
-static struct resource netx_cf_resources[] = {
-	[0] = {
-		.start	= 0x20000000,
-		.end	= 0x25ffffff,
-		.flags	= IORESOURCE_MEM | IORESOURCE_MEM_8AND16BIT,
-	},
-};
-
-static struct platform_device netx_cf_device = {
-	.name		= "netx-cf",
-	.id		= 0,
-	.resource	= netx_cf_resources,
-	.num_resources	= ARRAY_SIZE(netx_cf_resources),
-};
-
-static struct resource netx_uart0_resources[] = {
-	[0] = {
-		.start	= 0x00100A00,
-		.end	= 0x00100A3F,
-		.flags	= IORESOURCE_MEM,
-	},
-	[1] = {
-		.start	= (NETX_IRQ_UART0),
-		.end	= (NETX_IRQ_UART0),
-		.flags	= IORESOURCE_IRQ,
-	},
-};
-
-static struct platform_device netx_uart0_device = {
-	.name		= "netx-uart",
-	.id		= 0,
-	.num_resources	= ARRAY_SIZE(netx_uart0_resources),
-	.resource	= netx_uart0_resources,
-};
-
-static struct platform_device *devices[] __initdata = {
-	&netx_eth0_device,
-	&netx_eth1_device,
-	&netx_cf_device,
-	&netx_uart0_device,
-};
-
-static void __init nxeb500hmi_init(void)
-{
-	netx_fb_init(&clcd_data, &qvga);
-	platform_add_devices(devices, ARRAY_SIZE(devices));
-}
-
-MACHINE_START(NXEB500HMI, "Hilscher nxeb500hmi")
-	.atag_offset	= 0x100,
-	.map_io		= netx_map_io,
-	.init_irq	= netx_init_irq,
-	.init_time	= netx_timer_init,
-	.init_machine	= nxeb500hmi_init,
-	.restart	= netx_restart,
-MACHINE_END
diff --git a/arch/arm/mach-netx/pfifo.c b/arch/arm/mach-netx/pfifo.c
deleted file mode 100644
index 2e5cc777329f..000000000000
--- a/arch/arm/mach-netx/pfifo.c
+++ /dev/null
@@ -1,56 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * arch/arm/mach-netx/pfifo.c
- *
- * Copyright (c) 2005 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- */
-
-#include <linux/init.h>
-#include <linux/module.h>
-#include <linux/mutex.h>
-#include <linux/io.h>
-
-#include <mach/hardware.h>
-#include <mach/netx-regs.h>
-#include <mach/pfifo.h>
-
-static DEFINE_MUTEX(pfifo_lock);
-
-static unsigned int pfifo_used = 0;
-
-int pfifo_request(unsigned int pfifo_mask)
-{
-	int err = 0;
-	unsigned int val;
-
-	mutex_lock(&pfifo_lock);
-
-	if (pfifo_mask & pfifo_used) {
-		err = -EBUSY;
-		goto out;
-	}
-
-	pfifo_used |= pfifo_mask;
-
-	val = readl(NETX_PFIFO_RESET);
-	writel(val | pfifo_mask, NETX_PFIFO_RESET);
-	writel(val, NETX_PFIFO_RESET);
-
-out:
-	mutex_unlock(&pfifo_lock);
-	return err;
-}
-
-void pfifo_free(unsigned int pfifo_mask)
-{
-	mutex_lock(&pfifo_lock);
-	pfifo_used &= ~pfifo_mask;
-	mutex_unlock(&pfifo_lock);
-}
-
-EXPORT_SYMBOL(pfifo_push);
-EXPORT_SYMBOL(pfifo_pop);
-EXPORT_SYMBOL(pfifo_fill_level);
-EXPORT_SYMBOL(pfifo_empty);
-EXPORT_SYMBOL(pfifo_request);
-EXPORT_SYMBOL(pfifo_free);
diff --git a/arch/arm/mach-netx/time.c b/arch/arm/mach-netx/time.c
deleted file mode 100644
index d9defa1ab605..000000000000
--- a/arch/arm/mach-netx/time.c
+++ /dev/null
@@ -1,141 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * arch/arm/mach-netx/time.c
- *
- * Copyright (c) 2005 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- */
-
-#include <linux/init.h>
-#include <linux/interrupt.h>
-#include <linux/irq.h>
-#include <linux/clocksource.h>
-#include <linux/clockchips.h>
-#include <linux/io.h>
-
-#include <mach/hardware.h>
-#include <asm/mach/time.h>
-#include <mach/netx-regs.h>
-
-#define NETX_CLOCK_FREQ 100000000
-#define NETX_LATCH DIV_ROUND_CLOSEST(NETX_CLOCK_FREQ, HZ)
-
-#define TIMER_CLOCKEVENT 0
-#define TIMER_CLOCKSOURCE 1
-
-static inline void timer_shutdown(struct clock_event_device *evt)
-{
-	/* disable timer */
-	writel(0, NETX_GPIO_COUNTER_CTRL(TIMER_CLOCKEVENT));
-}
-
-static int netx_shutdown(struct clock_event_device *evt)
-{
-	timer_shutdown(evt);
-
-	return 0;
-}
-
-static int netx_set_oneshot(struct clock_event_device *evt)
-{
-	u32 tmode = NETX_GPIO_COUNTER_CTRL_IRQ_EN | NETX_GPIO_COUNTER_CTRL_RUN;
-
-	timer_shutdown(evt);
-	writel(0, NETX_GPIO_COUNTER_MAX(TIMER_CLOCKEVENT));
-	writel(tmode, NETX_GPIO_COUNTER_CTRL(TIMER_CLOCKEVENT));
-
-	return 0;
-}
-
-static int netx_set_periodic(struct clock_event_device *evt)
-{
-	u32 tmode = NETX_GPIO_COUNTER_CTRL_RST_EN |
-		    NETX_GPIO_COUNTER_CTRL_IRQ_EN | NETX_GPIO_COUNTER_CTRL_RUN;
-
-	timer_shutdown(evt);
-	writel(NETX_LATCH, NETX_GPIO_COUNTER_MAX(TIMER_CLOCKEVENT));
-	writel(tmode, NETX_GPIO_COUNTER_CTRL(TIMER_CLOCKEVENT));
-
-	return 0;
-}
-
-static int netx_set_next_event(unsigned long evt,
-		struct clock_event_device *clk)
-{
-	writel(0 - evt, NETX_GPIO_COUNTER_CURRENT(TIMER_CLOCKEVENT));
-	return 0;
-}
-
-static struct clock_event_device netx_clockevent = {
-	.name = "netx-timer" __stringify(TIMER_CLOCKEVENT),
-	.features = CLOCK_EVT_FEAT_PERIODIC | CLOCK_EVT_FEAT_ONESHOT,
-	.set_next_event = netx_set_next_event,
-	.set_state_shutdown = netx_shutdown,
-	.set_state_periodic = netx_set_periodic,
-	.set_state_oneshot = netx_set_oneshot,
-	.tick_resume = netx_shutdown,
-};
-
-/*
- * IRQ handler for the timer
- */
-static irqreturn_t
-netx_timer_interrupt(int irq, void *dev_id)
-{
-	struct clock_event_device *evt = &netx_clockevent;
-
-	/* acknowledge interrupt */
-	writel(COUNTER_BIT(0), NETX_GPIO_IRQ);
-
-	evt->event_handler(evt);
-
-	return IRQ_HANDLED;
-}
-
-static struct irqaction netx_timer_irq = {
-	.name		= "NetX Timer Tick",
-	.flags		= IRQF_TIMER | IRQF_IRQPOLL,
-	.handler	= netx_timer_interrupt,
-};
-
-/*
- * Set up timer interrupt
- */
-void __init netx_timer_init(void)
-{
-	/* disable timer initially */
-	writel(0, NETX_GPIO_COUNTER_CTRL(0));
-
-	/* Reset the timer value to zero */
-	writel(0, NETX_GPIO_COUNTER_CURRENT(0));
-
-	writel(NETX_LATCH, NETX_GPIO_COUNTER_MAX(0));
-
-	/* acknowledge interrupt */
-	writel(COUNTER_BIT(0), NETX_GPIO_IRQ);
-
-	/* Enable the interrupt in the specific timer
-	 * register and start timer
-	 */
-	writel(COUNTER_BIT(0), NETX_GPIO_IRQ_ENABLE);
-	writel(NETX_GPIO_COUNTER_CTRL_IRQ_EN | NETX_GPIO_COUNTER_CTRL_RUN,
-			NETX_GPIO_COUNTER_CTRL(0));
-
-	setup_irq(NETX_IRQ_TIMER0, &netx_timer_irq);
-
-	/* Setup timer one for clocksource */
-	writel(0, NETX_GPIO_COUNTER_CTRL(TIMER_CLOCKSOURCE));
-	writel(0, NETX_GPIO_COUNTER_CURRENT(TIMER_CLOCKSOURCE));
-	writel(0xffffffff, NETX_GPIO_COUNTER_MAX(TIMER_CLOCKSOURCE));
-
-	writel(NETX_GPIO_COUNTER_CTRL_RUN,
-			NETX_GPIO_COUNTER_CTRL(TIMER_CLOCKSOURCE));
-
-	clocksource_mmio_init(NETX_GPIO_COUNTER_CURRENT(TIMER_CLOCKSOURCE),
-		"netx_timer", NETX_CLOCK_FREQ, 200, 32, clocksource_mmio_readl_up);
-
-	/* with max_delta_ns >= delta2ns(0x800) the system currently runs fine.
-	 * Adding some safety ... */
-	netx_clockevent.cpumask = cpumask_of(0);
-	clockevents_config_and_register(&netx_clockevent, NETX_CLOCK_FREQ,
-					0xa00, 0xfffffffe);
-}
diff --git a/arch/arm/mach-netx/xc.c b/arch/arm/mach-netx/xc.c
deleted file mode 100644
index 885a618b2651..000000000000
--- a/arch/arm/mach-netx/xc.c
+++ /dev/null
@@ -1,246 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * arch/arm/mach-netx/xc.c
- *
- * Copyright (c) 2005 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- */
-
-#include <linux/init.h>
-#include <linux/device.h>
-#include <linux/firmware.h>
-#include <linux/mutex.h>
-#include <linux/slab.h>
-#include <linux/io.h>
-#include <linux/export.h>
-
-#include <mach/hardware.h>
-#include <mach/irqs.h>
-#include <mach/netx-regs.h>
-
-#include <mach/xc.h>
-
-static DEFINE_MUTEX(xc_lock);
-
-static int xc_in_use = 0;
-
-struct fw_desc {
-	unsigned int ofs;
-	unsigned int size;
-	unsigned int patch_ofs;
-	unsigned int patch_entries;
-};
-
-struct fw_header {
-	unsigned int magic;
-	unsigned int type;
-	unsigned int version;
-	unsigned int reserved[5];
-	struct fw_desc fw_desc[3];
-} __attribute__ ((packed));
-
-int xc_stop(struct xc *x)
-{
-	writel(RPU_HOLD_PC, x->xmac_base + NETX_XMAC_RPU_HOLD_PC_OFS);
-	writel(TPU_HOLD_PC, x->xmac_base + NETX_XMAC_TPU_HOLD_PC_OFS);
-	writel(XPU_HOLD_PC, x->xpec_base + NETX_XPEC_XPU_HOLD_PC_OFS);
-	return 0;
-}
-
-int xc_start(struct xc *x)
-{
-	writel(0, x->xmac_base + NETX_XMAC_RPU_HOLD_PC_OFS);
-	writel(0, x->xmac_base + NETX_XMAC_TPU_HOLD_PC_OFS);
-	writel(0, x->xpec_base + NETX_XPEC_XPU_HOLD_PC_OFS);
-	return 0;
-}
-
-int xc_running(struct xc *x)
-{
-	return (readl(x->xmac_base + NETX_XMAC_RPU_HOLD_PC_OFS) & RPU_HOLD_PC)
-	    || (readl(x->xmac_base + NETX_XMAC_TPU_HOLD_PC_OFS) & TPU_HOLD_PC)
-	    || (readl(x->xpec_base + NETX_XPEC_XPU_HOLD_PC_OFS) & XPU_HOLD_PC) ?
-		0 : 1;
-}
-
-int xc_reset(struct xc *x)
-{
-	writel(0, x->xpec_base + NETX_XPEC_PC_OFS);
-	return 0;
-}
-
-static int xc_check_ptr(struct xc *x, unsigned long adr, unsigned int size)
-{
-	if (adr >= NETX_PA_XMAC(x->no) &&
-	    adr + size < NETX_PA_XMAC(x->no) + XMAC_MEM_SIZE)
-		return 0;
-
-	if (adr >= NETX_PA_XPEC(x->no) &&
-	    adr + size < NETX_PA_XPEC(x->no) + XPEC_MEM_SIZE)
-		return 0;
-
-	dev_err(x->dev, "Illegal pointer in firmware found. aborting\n");
-
-	return -1;
-}
-
-static int xc_patch(struct xc *x, const void *patch, int count)
-{
-	unsigned int val, adr;
-	const unsigned int *data = patch;
-
-	int i;
-	for (i = 0; i < count; i++) {
-		adr = *data++;
-		val = *data++;
-		if (xc_check_ptr(x, adr, 4) < 0)
-			return -EINVAL;
-
-		writel(val, (void __iomem *)io_p2v(adr));
-	}
-	return 0;
-}
-
-int xc_request_firmware(struct xc *x)
-{
-	int ret;
-	char name[16];
-	const struct firmware *fw;
-	struct fw_header *head;
-	unsigned int size;
-	int i;
-	const void *src;
-	unsigned long dst;
-
-	sprintf(name, "xc%d.bin", x->no);
-
-	ret = request_firmware(&fw, name, x->dev);
-
-	if (ret < 0) {
-		dev_err(x->dev, "request_firmware failed\n");
-		return ret;
-	}
-
-	head = (struct fw_header *)fw->data;
-	if (head->magic != 0x4e657458) {
-		if (head->magic == 0x5874654e) {
-			dev_err(x->dev,
-			    "firmware magic is 'XteN'. Endianness problems?\n");
-			ret = -ENODEV;
-			goto exit_release_firmware;
-		}
-		dev_err(x->dev, "unrecognized firmware magic 0x%08x\n",
-			head->magic);
-		ret = -ENODEV;
-		goto exit_release_firmware;
-	}
-
-	x->type = head->type;
-	x->version = head->version;
-
-	ret = -EINVAL;
-
-	for (i = 0; i < 3; i++) {
-		src = fw->data + head->fw_desc[i].ofs;
-		dst = *(unsigned int *)src;
-		src += sizeof (unsigned int);
-		size = head->fw_desc[i].size - sizeof (unsigned int);
-
-		if (xc_check_ptr(x, dst, size))
-			goto exit_release_firmware;
-
-		memcpy((void *)io_p2v(dst), src, size);
-
-		src = fw->data + head->fw_desc[i].patch_ofs;
-		size = head->fw_desc[i].patch_entries;
-		ret = xc_patch(x, src, size);
-		if (ret < 0)
-			goto exit_release_firmware;
-	}
-
-	ret = 0;
-
-      exit_release_firmware:
-	release_firmware(fw);
-
-	return ret;
-}
-
-struct xc *request_xc(int xcno, struct device *dev)
-{
-	struct xc *x = NULL;
-
-	mutex_lock(&xc_lock);
-
-	if (xcno > 3)
-		goto exit;
-	if (xc_in_use & (1 << xcno))
-		goto exit;
-
-	x = kmalloc(sizeof (struct xc), GFP_KERNEL);
-	if (!x)
-		goto exit;
-
-	if (!request_mem_region
-	    (NETX_PA_XPEC(xcno), XPEC_MEM_SIZE, kobject_name(&dev->kobj)))
-		goto exit_free;
-
-	if (!request_mem_region
-	    (NETX_PA_XMAC(xcno), XMAC_MEM_SIZE, kobject_name(&dev->kobj)))
-		goto exit_release_1;
-
-	if (!request_mem_region
-	    (SRAM_INTERNAL_PHYS(xcno), SRAM_MEM_SIZE, kobject_name(&dev->kobj)))
-		goto exit_release_2;
-
-	x->xpec_base = (void * __iomem)io_p2v(NETX_PA_XPEC(xcno));
-	x->xmac_base = (void * __iomem)io_p2v(NETX_PA_XMAC(xcno));
-	x->sram_base = ioremap(SRAM_INTERNAL_PHYS(xcno), SRAM_MEM_SIZE);
-	if (!x->sram_base)
-		goto exit_release_3;
-
-	x->irq = NETX_IRQ_XPEC(xcno);
-
-	x->no = xcno;
-	x->dev = dev;
-
-	xc_in_use |= (1 << xcno);
-
-	goto exit;
-
-      exit_release_3:
-	release_mem_region(SRAM_INTERNAL_PHYS(xcno), SRAM_MEM_SIZE);
-      exit_release_2:
-	release_mem_region(NETX_PA_XMAC(xcno), XMAC_MEM_SIZE);
-      exit_release_1:
-	release_mem_region(NETX_PA_XPEC(xcno), XPEC_MEM_SIZE);
-      exit_free:
-	kfree(x);
-	x = NULL;
-      exit:
-	mutex_unlock(&xc_lock);
-	return x;
-}
-
-void free_xc(struct xc *x)
-{
-	int xcno = x->no;
-
-	mutex_lock(&xc_lock);
-
-	iounmap(x->sram_base);
-	release_mem_region(SRAM_INTERNAL_PHYS(xcno), SRAM_MEM_SIZE);
-	release_mem_region(NETX_PA_XMAC(xcno), XMAC_MEM_SIZE);
-	release_mem_region(NETX_PA_XPEC(xcno), XPEC_MEM_SIZE);
-	xc_in_use &= ~(1 << x->no);
-	kfree(x);
-
-	mutex_unlock(&xc_lock);
-}
-
-EXPORT_SYMBOL(free_xc);
-EXPORT_SYMBOL(request_xc);
-EXPORT_SYMBOL(xc_request_firmware);
-EXPORT_SYMBOL(xc_reset);
-EXPORT_SYMBOL(xc_running);
-EXPORT_SYMBOL(xc_start);
-EXPORT_SYMBOL(xc_stop);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
