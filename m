Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F31913EBE7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 18:54:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VOl75j6R4usT2324jsO+y3UsUMUu/atN9jX+cFxrBTU=; b=lQLPyI1huU4W4t
	vCkQ57zFKKs1HCy4jdRoIosJIJj0HikYdYM9oiTLJW5VBF5qLJ6fKKiJLX4dAHxhvDYAy+qaOxPMM
	LEUt6/pVA++fZDasPES/7F6mNAJ6pZTod3qUescjEtF1JAXkZorUH4Tjyx+64ak+gpsWSS3HTFqUA
	3LENrOQrVpN9PTNCW0UEZohDoiTdwQzOC2+ZhVFgh5Q/Nv3Ti0lq81T+zHlV5bY6QVsEucbr2Efzl
	1ZSPZd/drlQE+owebXaYGAHr5HNyrRlI55G3yMQ3SYyFu0UBYmNDLRiTS/UjK0QOal/HQIVaAs4Ua
	a8p7BCD2iHPWpvMtaieA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is9L9-0004jO-HO; Thu, 16 Jan 2020 17:53:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8mp-0003dQ-EB
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:18:29 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8779920728;
 Thu, 16 Jan 2020 17:18:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579195106;
 bh=OcyjwP9xy+dQFPo7oxtaVghCK0aZ2i39FwzIKaUQLv0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=L9agKYm3Iy1q7BPIFy+V9CmBolNu5r2nU/zkJ32hyLb5YFOq2wpco7LrpwuybtRli
 A8VRkWO5CLK7+JNDyzkDGHrfPCsxchKEv/N/0y/dL6/OpVGBXqIHvLVPsqDcsN14g5
 vjMDY2DiRtkKFFbv+tiozfDBVUd7bfNl2MXzFByU=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 049/371] MIPS: BCM63XX: drop unused and broken
 DSP platform device
Date: Thu, 16 Jan 2020 12:11:57 -0500
Message-Id: <20200116171719.16965-49-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116171719.16965-1-sashal@kernel.org>
References: <20200116171719.16965-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_091827_605026_A05F089C 
X-CRM114-Status: GOOD (  18.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, linux-mips@linux-mips.org,
 Florian Fainelli <f.fainelli@gmail.com>, James Hogan <jhogan@kernel.org>,
 linux-mips@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Paul Burton <paul.burton@mips.com>, Jonas Gorski <jonas.gorski@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jonas Gorski <jonas.gorski@gmail.com>

[ Upstream commit 682fee802843b332f9c51ffc8e062de5ff773f2e ]

Trying to register the DSP platform device results in a null pointer
access:

[    0.124184] CPU 0 Unable to handle kernel paging request at virtual address 00000000, epc == 804e305c, ra == 804e6f20
[    0.135208] Oops[#1]:
[    0.137514] CPU: 0 PID: 1 Comm: swapper Not tainted 4.14.87
...
[    0.197117] epc   : 804e305c bcm63xx_dsp_register+0x80/0xa4
[    0.202838] ra    : 804e6f20 board_register_devices+0x258/0x390
...

This happens because it tries to copy the passed platform data over the
platform_device's unpopulated platform_data.

Since this code has been broken since its submission, no driver was ever
submitted for it, and apparently nobody was using it, just remove it
instead of trying to fix it.

Fixes: e7300d04bd08 ("MIPS: BCM63xx: Add support for the Broadcom BCM63xx family of SOCs.")
Signed-off-by: Jonas Gorski <jonas.gorski@gmail.com>
Signed-off-by: Paul Burton <paul.burton@mips.com>
Acked-by: Florian Fainelli <f.fainelli@gmail.com>
Cc: linux-mips@linux-mips.org
Cc: Ralf Baechle <ralf@linux-mips.org>
Cc: James Hogan <jhogan@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/mips/bcm63xx/Makefile                    |  6 +-
 arch/mips/bcm63xx/boards/board_bcm963xx.c     | 20 -------
 arch/mips/bcm63xx/dev-dsp.c                   | 56 -------------------
 .../asm/mach-bcm63xx/bcm63xx_dev_dsp.h        | 14 -----
 .../include/asm/mach-bcm63xx/board_bcm963xx.h |  5 --
 5 files changed, 3 insertions(+), 98 deletions(-)
 delete mode 100644 arch/mips/bcm63xx/dev-dsp.c
 delete mode 100644 arch/mips/include/asm/mach-bcm63xx/bcm63xx_dev_dsp.h

diff --git a/arch/mips/bcm63xx/Makefile b/arch/mips/bcm63xx/Makefile
index c69f297fc1df..d89651e538f6 100644
--- a/arch/mips/bcm63xx/Makefile
+++ b/arch/mips/bcm63xx/Makefile
@@ -1,8 +1,8 @@
 # SPDX-License-Identifier: GPL-2.0
 obj-y		+= clk.o cpu.o cs.o gpio.o irq.o nvram.o prom.o reset.o \
-		   setup.o timer.o dev-dsp.o dev-enet.o dev-flash.o \
-		   dev-pcmcia.o dev-rng.o dev-spi.o dev-hsspi.o dev-uart.o \
-		   dev-wdt.o dev-usb-usbd.o
+		   setup.o timer.o dev-enet.o dev-flash.o dev-pcmcia.o \
+		   dev-rng.o dev-spi.o dev-hsspi.o dev-uart.o dev-wdt.o \
+		   dev-usb-usbd.o
 obj-$(CONFIG_EARLY_PRINTK)	+= early_printk.o
 
 obj-y		+= boards/
diff --git a/arch/mips/bcm63xx/boards/board_bcm963xx.c b/arch/mips/bcm63xx/boards/board_bcm963xx.c
index b2097c0d2ed7..36ec3dc2c999 100644
--- a/arch/mips/bcm63xx/boards/board_bcm963xx.c
+++ b/arch/mips/bcm63xx/boards/board_bcm963xx.c
@@ -23,7 +23,6 @@
 #include <bcm63xx_nvram.h>
 #include <bcm63xx_dev_pci.h>
 #include <bcm63xx_dev_enet.h>
-#include <bcm63xx_dev_dsp.h>
 #include <bcm63xx_dev_flash.h>
 #include <bcm63xx_dev_hsspi.h>
 #include <bcm63xx_dev_pcmcia.h>
@@ -289,14 +288,6 @@ static struct board_info __initdata board_96348gw_10 = {
 	.has_pccard			= 1,
 	.has_ehci0			= 1,
 
-	.has_dsp			= 1,
-	.dsp = {
-		.gpio_rst		= 6,
-		.gpio_int		= 34,
-		.cs			= 2,
-		.ext_irq		= 2,
-	},
-
 	.leds = {
 		{
 			.name		= "adsl-fail",
@@ -401,14 +392,6 @@ static struct board_info __initdata board_96348gw = {
 
 	.has_ohci0 = 1,
 
-	.has_dsp			= 1,
-	.dsp = {
-		.gpio_rst		= 6,
-		.gpio_int		= 34,
-		.ext_irq		= 2,
-		.cs			= 2,
-	},
-
 	.leds = {
 		{
 			.name		= "adsl-fail",
@@ -898,9 +881,6 @@ int __init board_register_devices(void)
 	if (board.has_usbd)
 		bcm63xx_usbd_register(&board.usbd);
 
-	if (board.has_dsp)
-		bcm63xx_dsp_register(&board.dsp);
-
 	/* Generate MAC address for WLAN and register our SPROM,
 	 * do this after registering enet devices
 	 */
diff --git a/arch/mips/bcm63xx/dev-dsp.c b/arch/mips/bcm63xx/dev-dsp.c
deleted file mode 100644
index 5bb5b154c9bd..000000000000
--- a/arch/mips/bcm63xx/dev-dsp.c
+++ /dev/null
@@ -1,56 +0,0 @@
-/*
- * Broadcom BCM63xx VoIP DSP registration
- *
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file "COPYING" in the main directory of this archive
- * for more details.
- *
- * Copyright (C) 2009 Florian Fainelli <florian@openwrt.org>
- */
-
-#include <linux/init.h>
-#include <linux/kernel.h>
-#include <linux/platform_device.h>
-
-#include <bcm63xx_cpu.h>
-#include <bcm63xx_dev_dsp.h>
-#include <bcm63xx_regs.h>
-#include <bcm63xx_io.h>
-
-static struct resource voip_dsp_resources[] = {
-	{
-		.start		= -1, /* filled at runtime */
-		.end		= -1, /* filled at runtime */
-		.flags		= IORESOURCE_MEM,
-	},
-	{
-		.start		= -1, /* filled at runtime */
-		.flags		= IORESOURCE_IRQ,
-	},
-};
-
-static struct platform_device bcm63xx_voip_dsp_device = {
-	.name		= "bcm63xx-voip-dsp",
-	.id		= -1,
-	.num_resources	= ARRAY_SIZE(voip_dsp_resources),
-	.resource	= voip_dsp_resources,
-};
-
-int __init bcm63xx_dsp_register(const struct bcm63xx_dsp_platform_data *pd)
-{
-	struct bcm63xx_dsp_platform_data *dpd;
-	u32 val;
-
-	/* Get the memory window */
-	val = bcm_mpi_readl(MPI_CSBASE_REG(pd->cs - 1));
-	val &= MPI_CSBASE_BASE_MASK;
-	voip_dsp_resources[0].start = val;
-	voip_dsp_resources[0].end = val + 0xFFFFFFF;
-	voip_dsp_resources[1].start = pd->ext_irq;
-
-	/* copy given platform data */
-	dpd = bcm63xx_voip_dsp_device.dev.platform_data;
-	memcpy(dpd, pd, sizeof (*pd));
-
-	return platform_device_register(&bcm63xx_voip_dsp_device);
-}
diff --git a/arch/mips/include/asm/mach-bcm63xx/bcm63xx_dev_dsp.h b/arch/mips/include/asm/mach-bcm63xx/bcm63xx_dev_dsp.h
deleted file mode 100644
index 4e4970787371..000000000000
--- a/arch/mips/include/asm/mach-bcm63xx/bcm63xx_dev_dsp.h
+++ /dev/null
@@ -1,14 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-#ifndef __BCM63XX_DSP_H
-#define __BCM63XX_DSP_H
-
-struct bcm63xx_dsp_platform_data {
-	unsigned gpio_rst;
-	unsigned gpio_int;
-	unsigned cs;
-	unsigned ext_irq;
-};
-
-int __init bcm63xx_dsp_register(const struct bcm63xx_dsp_platform_data *pd);
-
-#endif /* __BCM63XX_DSP_H */
diff --git a/arch/mips/include/asm/mach-bcm63xx/board_bcm963xx.h b/arch/mips/include/asm/mach-bcm63xx/board_bcm963xx.h
index 5e5b1bc4a324..830f53f28e3f 100644
--- a/arch/mips/include/asm/mach-bcm63xx/board_bcm963xx.h
+++ b/arch/mips/include/asm/mach-bcm63xx/board_bcm963xx.h
@@ -7,7 +7,6 @@
 #include <linux/leds.h>
 #include <bcm63xx_dev_enet.h>
 #include <bcm63xx_dev_usb_usbd.h>
-#include <bcm63xx_dev_dsp.h>
 
 /*
  * flash mapping
@@ -31,7 +30,6 @@ struct board_info {
 	unsigned int	has_ohci0:1;
 	unsigned int	has_ehci0:1;
 	unsigned int	has_usbd:1;
-	unsigned int	has_dsp:1;
 	unsigned int	has_uart0:1;
 	unsigned int	has_uart1:1;
 
@@ -43,9 +41,6 @@ struct board_info {
 	/* USB config */
 	struct bcm63xx_usbd_platform_data usbd;
 
-	/* DSP config */
-	struct bcm63xx_dsp_platform_data dsp;
-
 	/* GPIO LEDs */
 	struct gpio_led leds[5];
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
