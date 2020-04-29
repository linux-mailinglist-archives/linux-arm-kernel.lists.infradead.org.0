Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B2D1BEC16
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 00:32:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fe+luIx5zrRypFqvh/7qK0w58BCzGs/I4bDBAIM8eds=; b=dKQsBYV3te8PH8
	xXx5/HQc7zhwzupLTMWt+ISw9H7WrN8kRZrvFSVlzW6eIyZOK7GPvvOt1Cksxt+i8390v7Oh1RPfK
	+EmfJp3Rx2b7MbktsX+DYedzJ6mFFFBY2fisBHTXP5BR1oDMM8YlqZESomPOnsCSSw4/eVyPsW9Fj
	aacFiNWh8x5fSbyGdp3b8gSbZBd1wGgUr9ngXvIC/0CtdIb9UNoAvayAbcwqgh2TJG7RRKq1X4n55
	tEtQvejMuK8OkjaKVWab0qjBzneGfaQsYXuOBywQDkYNS7y0a5PgBpFJKlkFsUknmZQvMgOsTUUp0
	KOWq+evZDrULMJ1JOOiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTvG3-0004y5-Ma; Wed, 29 Apr 2020 22:32:47 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTvFL-0004TZ-Ov; Wed, 29 Apr 2020 22:32:05 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 0AB012A1742;
 Wed, 29 Apr 2020 23:31:59 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org
Subject: [PATCH 1/3] ARM: pxa: cm-x270: Use gen_nand to expose the NAND device
Date: Thu, 30 Apr 2020 00:31:32 +0200
Message-Id: <20200429223134.789322-2-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.3
In-Reply-To: <20200429223134.789322-1-boris.brezillon@collabora.com>
References: <20200429223134.789322-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_153203_944180_20CD7D12 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Arnd Bergmann <arnd@arndb.de>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Mike Rapoport <mike@compulab.co.il>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

No need to have a dedicated driver for this controller, all we need to
do is adjust the memory range offset to account for the fact that the
chip is connected to D[16:23] and not D[0:7].

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 arch/arm/mach-pxa/cm-x270.c | 131 ++++++++++++++++++++++++++++++++++++
 1 file changed, 131 insertions(+)

diff --git a/arch/arm/mach-pxa/cm-x270.c b/arch/arm/mach-pxa/cm-x270.c
index 9baad11314f2..63bd3be60322 100644
--- a/arch/arm/mach-pxa/cm-x270.c
+++ b/arch/arm/mach-pxa/cm-x270.c
@@ -23,6 +23,8 @@
 #include <linux/platform_data/usb-ohci-pxa27x.h>
 #include <linux/platform_data/mmc-pxamci.h>
 
+#include <linux/mtd/platnand.h>
+
 #include "generic.h"
 
 /* physical address if local-bus attached devices */
@@ -36,6 +38,10 @@
 /* MMC power enable */
 #define GPIO105_MMC_POWER	(105)
 
+/* NAND GPIOs */
+#define GPIO11_NAND_CS		(11)
+#define GPIO89_NAND_RB		(89)
+
 /* WLAN GPIOS */
 #define GPIO19_WLAN_STRAP	(19)
 #define GPIO102_WLAN_RST	(102)
@@ -309,6 +315,130 @@ static void __init cmx270_init_mmc(void)
 static inline void cmx270_init_mmc(void) {}
 #endif
 
+/* NAND flash */
+#if IS_ENABLED(CONFIG_MTD_NAND_PLATFORM)
+static inline void nand_cs_on(void)
+{
+	gpio_set_value(GPIO11_NAND_CS, 0);
+}
+
+static void nand_cs_off(void)
+{
+	dsb();
+
+	gpio_set_value(GPIO11_NAND_CS, 1);
+}
+
+/* hardware specific access to control-lines */
+static void cmx270_nand_cmd_ctl(struct nand_chip *this, int dat,
+				unsigned int ctrl)
+{
+	unsigned long nandaddr = (unsigned long)this->legacy.IO_ADDR_W;
+
+	dsb();
+
+	if (ctrl & NAND_CTRL_CHANGE) {
+		if (ctrl & NAND_ALE)
+			nandaddr |=  (1 << 3);
+		else
+			nandaddr &= ~(1 << 3);
+		if (ctrl & NAND_CLE)
+			nandaddr |=  (1 << 2);
+		else
+			nandaddr &= ~(1 << 2);
+		if (ctrl & NAND_NCE)
+			nand_cs_on();
+		else
+			nand_cs_off();
+	}
+
+	dsb();
+	this->legacy.IO_ADDR_W = (void __iomem *)nandaddr;
+	if (dat != NAND_CMD_NONE)
+		writeb(dat, this->legacy.IO_ADDR_W);
+
+	dsb();
+}
+
+/* read device ready pin */
+static int cmx270_nand_device_ready(struct nand_chip *this)
+{
+	dsb();
+
+	return gpio_get_value(GPIO89_NAND_RB);
+}
+
+static struct mtd_partition cmx270_partition_info[] = {
+	[0] = {
+		.name	= "cmx270-0",
+		.offset	= 0,
+		.size	= MTDPART_SIZ_FULL
+	},
+};
+
+struct platform_nand_data cmx270_nand_platdata = {
+	.chip = {
+		.nr_chips = 1,
+		.chip_offset = 0,
+		.nr_partitions = ARRAY_SIZE(cmx270_partition_info),
+		.partitions = cmx270_partition_info,
+		.chip_delay = 20,
+	},
+	.ctrl = {
+		.dev_ready = cmx270_nand_device_ready,
+		.cmd_ctrl = cmx270_nand_cmd_ctl,
+	},
+};
+
+static struct resource cmx270_nand_resource[] = {
+	[0] = {
+		/*
+		 * The NAND is connected to D[16:23], hence the 2 byte offset
+		 * here.
+		 */
+		.start = PXA_CS1_PHYS + 2,
+		.end   = PXA_CS1_PHYS + 2 + 12,
+		.flags = IORESOURCE_MEM,
+	},
+};
+
+static struct platform_device cmx270_nand = {
+	.name		= "gen_nand",
+	.num_resources	= ARRAY_SIZE(cmx270_nand_resource),
+	.resource	= cmx270_nand_resource,
+	.id		= -1,
+	.dev		= {
+		.platform_data = &cmx270_nand_platdata,
+	}
+};
+
+static void __init cmx270_init_nand(void)
+{
+	int err;
+
+	err = gpio_request(GPIO11_NAND_CS, "NAND CS");
+	if (err) {
+		pr_warn("CMX270: failed to request NAND CS gpio\n");
+		return;
+	}
+
+	gpio_direction_output(GPIO11_NAND_CS, 1);
+
+	err = gpio_request(GPIO89_NAND_RB, "NAND R/B");
+	if (err) {
+		pr_warn("CMX270: failed to request NAND R/B gpio\n");
+		gpio_free(GPIO11_NAND_CS);
+		return;
+	}
+
+	gpio_direction_input(GPIO89_NAND_RB);
+
+	platform_device_register(&cmx270_nand);
+}
+#else
+static inline void cmx270_init_nand(void) {}
+#endif
+
 #if defined(CONFIG_SPI_PXA2XX) || defined(CONFIG_SPI_PXA2XX_MODULE)
 static struct pxa2xx_spi_controller cm_x270_spi_info = {
 	.num_chipselect	= 1,
@@ -413,6 +543,7 @@ void __init cmx270_init(void)
 
 	cmx270_init_rtc();
 	cmx270_init_mmc();
+	cmx270_init_nand();
 	cmx270_init_ohci();
 	cmx270_init_2700G();
 	cmx270_init_spi();
-- 
2.25.3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
