Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E64361DC765
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 09:13:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ck9CtKfAFrWHWvUtxIlbsgJyUUMuZVoLE9KHcJuoGQ=; b=IAMbIErpr0itft
	1FmESBXbslGs/W8Y9LIJ8Xu0l/j9atb2E05LEpcB/JENudEaaQimsbeN4IgdnBUrATXhVv7dLbnrk
	Dsnbgq8wgHuzDpfBPhMffCsZddHV/vtEMBIl5f9pr4hvT11p/etYxT7uekbejGcHPkRiFFJOlQiZ6
	D0yvQA5zIwQpRCmKEnzG/dl9dWkQXySFdcMr/mqrPqPV9rOBVI3I4KhhmFc/JKcNjTVlHTMk9kDqk
	E9TZXhFUS0V9Tv6ddLQXFsLOd3aJoewzl/D8brTHLZrQAzY1S8PjPI2RmbAhoQMvhp6nvBLUico5J
	NbrWQR4D84gHrYyrpI9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbfNp-0005Pw-Hl; Thu, 21 May 2020 07:12:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbfNd-0005Ou-9H; Thu, 21 May 2020 07:12:38 +0000
Received: from kernel.org (unknown [87.71.47.117])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8D65120748;
 Thu, 21 May 2020 07:12:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590045147;
 bh=ZCo2Qr4zDfJcQnBNHPVvHzctbL82Sl8FybInaRqaE1E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tfLg/3cCMdXqlno2jRSh1nqdE/ZHJ2Va3owjsQrbUmIS2aSjpQF3BYYx6c3rBgCdQ
 c1hEIJTTmrNVM/OnXOkmxNM4dPP7dxydBt78a14vJU2WYHhZtTmd8g6U2HOmuULMtK
 qYypHX+yf+dIaMKlh2NT5J3bt+ucKVvJqlwg0f9o=
Date: Thu, 21 May 2020 10:12:13 +0300
From: Mike Rapoport <rppt@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v2 1/3] ARM: pxa: remove Compulab pxa2xx boards
Message-ID: <20200521071213.GI1118872@kernel.org>
References: <20200520102125.8934-1-robert.jarzmik@free.fr>
 <CAK8P3a2+auSWBROZR-hobM_qSWtKiG1DRYP3Y7uvbCy_ZLy+gg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2+auSWBROZR-hobM_qSWtKiG1DRYP3Y7uvbCy_ZLy+gg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_001237_365989_7AF257F6 
X-CRM114-Status: GOOD (  25.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-mtd <linux-mtd@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 05:21:51PM +0200, Arnd Bergmann wrote:
> On Wed, May 20, 2020 at 12:21 PM Robert Jarzmik <robert.jarzmik@free.fr> =
wrote:
> >
> > As these boards have no more users nor testers, and patching them has
> > become a burden, be that because of the PCI part or the MTD NAND
> > support, let's remove them.
> >
> > The cm-x300 will for now remain and represent Compulab boards at its
> > best in the PXA department.

I think this series missed the cm-x270 NAND driver, so this could be
PATCH 4/3 (not even compile tested).

From 56a11987f82ef8b32b25dfc17b849f9bbbf03e4d Mon Sep 17 00:00:00 2001
From: Mike Rapoport <rppt@linux.ibm.com>
Date: Thu, 21 May 2020 10:09:47 +0300
Subject: [PATCH] mtd: rawnand: remove CM-X270 NAND driver

The cm-x270 board have been removed and theres is no point to keep this
driver.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 drivers/mtd/nand/raw/Kconfig       |   4 -
 drivers/mtd/nand/raw/Makefile      |   1 -
 drivers/mtd/nand/raw/cmx270_nand.c | 236 -----------------------------
 3 files changed, 241 deletions(-)
 delete mode 100644 drivers/mtd/nand/raw/cmx270_nand.c

diff --git a/drivers/mtd/nand/raw/Kconfig b/drivers/mtd/nand/raw/Kconfig
index a80a46bb5b8b..9b08a58ae88e 100644
--- a/drivers/mtd/nand/raw/Kconfig
+++ b/drivers/mtd/nand/raw/Kconfig
@@ -213,10 +213,6 @@ config MTD_NAND_MLC_LPC32XX
 	  Please check the actual NAND chip connected and its support
 	  by the MLC NAND controller.
 =

-config MTD_NAND_CM_X270
-	tristate "CM-X270 modules NAND controller"
-	depends on MACH_ARMCORE
-
 config MTD_NAND_PASEMI
 	tristate "PA Semi PWRficient NAND controller"
 	depends on PPC_PASEMI
diff --git a/drivers/mtd/nand/raw/Makefile b/drivers/mtd/nand/raw/Makefile
index 2d136b158fb7..a817052286c7 100644
--- a/drivers/mtd/nand/raw/Makefile
+++ b/drivers/mtd/nand/raw/Makefile
@@ -25,7 +25,6 @@ obj-$(CONFIG_MTD_NAND_GPIO)		+=3D gpio.o
 omap2_nand-objs :=3D omap2.o
 obj-$(CONFIG_MTD_NAND_OMAP2) 		+=3D omap2_nand.o
 obj-$(CONFIG_MTD_NAND_OMAP_BCH_BUILD)	+=3D omap_elm.o
-obj-$(CONFIG_MTD_NAND_CM_X270)		+=3D cmx270_nand.o
 obj-$(CONFIG_MTD_NAND_MARVELL)		+=3D marvell_nand.o
 obj-$(CONFIG_MTD_NAND_TMIO)		+=3D tmio_nand.o
 obj-$(CONFIG_MTD_NAND_PLATFORM)		+=3D plat_nand.o
diff --git a/drivers/mtd/nand/raw/cmx270_nand.c b/drivers/mtd/nand/raw/cmx2=
70_nand.c
deleted file mode 100644
index 045b6175ae79..000000000000
--- a/drivers/mtd/nand/raw/cmx270_nand.c
+++ /dev/null
@@ -1,236 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- *  Copyright (C) 2006 Compulab, Ltd.
- *  Mike Rapoport <mike@compulab.co.il>
- *
- *  Derived from drivers/mtd/nand/h1910.c (removed in v3.10)
- *       Copyright (C) 2002 Marius Gr=F6ger (mag@sysgo.de)
- *       Copyright (c) 2001 Thomas Gleixner (gleixner@autronix.de)
- *
- *  Overview:
- *   This is a device driver for the NAND flash device found on the
- *   CM-X270 board.
- */
-
-#include <linux/mtd/rawnand.h>
-#include <linux/mtd/partitions.h>
-#include <linux/slab.h>
-#include <linux/gpio.h>
-#include <linux/module.h>
-
-#include <asm/io.h>
-#include <asm/irq.h>
-#include <asm/mach-types.h>
-
-#include <mach/pxa2xx-regs.h>
-
-#define GPIO_NAND_CS	(11)
-#define GPIO_NAND_RB	(89)
-
-/* MTD structure for CM-X270 board */
-static struct mtd_info *cmx270_nand_mtd;
-
-/* remaped IO address of the device */
-static void __iomem *cmx270_nand_io;
-
-/*
- * Define static partitions for flash device
- */
-static const struct mtd_partition partition_info[] =3D {
-	[0] =3D {
-		.name	=3D "cmx270-0",
-		.offset	=3D 0,
-		.size	=3D MTDPART_SIZ_FULL
-	}
-};
-#define NUM_PARTITIONS (ARRAY_SIZE(partition_info))
-
-static u_char cmx270_read_byte(struct nand_chip *this)
-{
-	return (readl(this->legacy.IO_ADDR_R) >> 16);
-}
-
-static void cmx270_write_buf(struct nand_chip *this, const u_char *buf,
-			     int len)
-{
-	int i;
-
-	for (i=3D0; i<len; i++)
-		writel((*buf++ << 16), this->legacy.IO_ADDR_W);
-}
-
-static void cmx270_read_buf(struct nand_chip *this, u_char *buf, int len)
-{
-	int i;
-
-	for (i=3D0; i<len; i++)
-		*buf++ =3D readl(this->legacy.IO_ADDR_R) >> 16;
-}
-
-static inline void nand_cs_on(void)
-{
-	gpio_set_value(GPIO_NAND_CS, 0);
-}
-
-static void nand_cs_off(void)
-{
-	dsb();
-
-	gpio_set_value(GPIO_NAND_CS, 1);
-}
-
-/*
- *	hardware specific access to control-lines
- */
-static void cmx270_hwcontrol(struct nand_chip *this, int dat,
-			     unsigned int ctrl)
-{
-	unsigned int nandaddr =3D (unsigned int)this->legacy.IO_ADDR_W;
-
-	dsb();
-
-	if (ctrl & NAND_CTRL_CHANGE) {
-		if ( ctrl & NAND_ALE )
-			nandaddr |=3D  (1 << 3);
-		else
-			nandaddr &=3D ~(1 << 3);
-		if ( ctrl & NAND_CLE )
-			nandaddr |=3D  (1 << 2);
-		else
-			nandaddr &=3D ~(1 << 2);
-		if ( ctrl & NAND_NCE )
-			nand_cs_on();
-		else
-			nand_cs_off();
-	}
-
-	dsb();
-	this->legacy.IO_ADDR_W =3D (void __iomem*)nandaddr;
-	if (dat !=3D NAND_CMD_NONE)
-		writel((dat << 16), this->legacy.IO_ADDR_W);
-
-	dsb();
-}
-
-/*
- *	read device ready pin
- */
-static int cmx270_device_ready(struct nand_chip *this)
-{
-	dsb();
-
-	return (gpio_get_value(GPIO_NAND_RB));
-}
-
-/*
- * Main initialization routine
- */
-static int __init cmx270_init(void)
-{
-	struct nand_chip *this;
-	int ret;
-
-	if (!(machine_is_armcore() && cpu_is_pxa27x()))
-		return -ENODEV;
-
-	ret =3D gpio_request(GPIO_NAND_CS, "NAND CS");
-	if (ret) {
-		pr_warn("CM-X270: failed to request NAND CS gpio\n");
-		return ret;
-	}
-
-	gpio_direction_output(GPIO_NAND_CS, 1);
-
-	ret =3D gpio_request(GPIO_NAND_RB, "NAND R/B");
-	if (ret) {
-		pr_warn("CM-X270: failed to request NAND R/B gpio\n");
-		goto err_gpio_request;
-	}
-
-	gpio_direction_input(GPIO_NAND_RB);
-
-	/* Allocate memory for MTD device structure and private data */
-	this =3D kzalloc(sizeof(struct nand_chip), GFP_KERNEL);
-	if (!this) {
-		ret =3D -ENOMEM;
-		goto err_kzalloc;
-	}
-
-	cmx270_nand_io =3D ioremap(PXA_CS1_PHYS, 12);
-	if (!cmx270_nand_io) {
-		pr_debug("Unable to ioremap NAND device\n");
-		ret =3D -EINVAL;
-		goto err_ioremap;
-	}
-
-	cmx270_nand_mtd =3D nand_to_mtd(this);
-
-	/* Link the private data with the MTD structure */
-	cmx270_nand_mtd->owner =3D THIS_MODULE;
-
-	/* insert callbacks */
-	this->legacy.IO_ADDR_R =3D cmx270_nand_io;
-	this->legacy.IO_ADDR_W =3D cmx270_nand_io;
-	this->legacy.cmd_ctrl =3D cmx270_hwcontrol;
-	this->legacy.dev_ready =3D cmx270_device_ready;
-
-	/* 15 us command delay time */
-	this->legacy.chip_delay =3D 20;
-	this->ecc.mode =3D NAND_ECC_SOFT;
-	this->ecc.algo =3D NAND_ECC_HAMMING;
-
-	/* read/write functions */
-	this->legacy.read_byte =3D cmx270_read_byte;
-	this->legacy.read_buf =3D cmx270_read_buf;
-	this->legacy.write_buf =3D cmx270_write_buf;
-
-	/* Scan to find existence of the device */
-	ret =3D nand_scan(this, 1);
-	if (ret) {
-		pr_notice("No NAND device\n");
-		goto err_scan;
-	}
-
-	/* Register the partitions */
-	ret =3D mtd_device_register(cmx270_nand_mtd, partition_info,
-				  NUM_PARTITIONS);
-	if (ret)
-		goto err_scan;
-
-	/* Return happy */
-	return 0;
-
-err_scan:
-	iounmap(cmx270_nand_io);
-err_ioremap:
-	kfree(this);
-err_kzalloc:
-	gpio_free(GPIO_NAND_RB);
-err_gpio_request:
-	gpio_free(GPIO_NAND_CS);
-
-	return ret;
-
-}
-module_init(cmx270_init);
-
-/*
- * Clean up routine
- */
-static void __exit cmx270_cleanup(void)
-{
-	/* Release resources, unregister device */
-	nand_release(mtd_to_nand(cmx270_nand_mtd));
-
-	gpio_free(GPIO_NAND_RB);
-	gpio_free(GPIO_NAND_CS);
-
-	iounmap(cmx270_nand_io);
-
-	kfree(mtd_to_nand(cmx270_nand_mtd));
-}
-module_exit(cmx270_cleanup);
-
-MODULE_LICENSE("GPL");
-MODULE_AUTHOR("Mike Rapoport <mike@compulab.co.il>");
-MODULE_DESCRIPTION("NAND flash driver for Compulab CM-X270 Module");
-- =

2.25.2



> > Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
> =

> Acked-by: Arnd Bergmann <arnd@arndb.de>
> =

> Should we take the series through the soc tree? If so, please
> send them to soc@kernel.org if there are no objections;
> or along with other patches you might have in the pull requests.
> =

>       Arnd

-- =

Sincerely yours,
Mike.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
