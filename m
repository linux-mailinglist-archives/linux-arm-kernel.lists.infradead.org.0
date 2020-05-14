Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E366F1D3811
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 19:26:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Zz7tCmveZADu+yP9HosktSnjM/SvL9awQJpbKG6oWU=; b=o5fJaKzqQTJqrX
	w4agtwzj1KWq2e2GUDAbh3CpOIrAvTmSgiu24PFb83msLvEP3xIxmyVnGpeXCwO6WjBX/pXLhJpbx
	UPd6Ne/Rv8hYOwXkPPxc91AI+vi7R2PGIXOgDqpzMzwb4N4EJKyWC+QoOFnj4PF4HpEfpkFeFqIfA
	d387W3xIA81jNwvBahlccjyWvPQCGwebmp+ElHSNRmcZzSG3N+zIlOrNSGzjkxnlKjrgixuci1B3f
	op7UgJ4M9VKdRgFJL9XyVVAr7zgSZXX0ylvNqBL+8DBqaV0d5OAxR0DnVJDVp6JIRUFdAUbccFPRk
	lrEhng9EGZXJH07ajNDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZHcK-0001YW-8J; Thu, 14 May 2020 17:25:56 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZHTz-0005DO-Mp; Thu, 14 May 2020 17:17:34 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id B8FB2240002;
 Thu, 14 May 2020 17:17:15 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Subject: [PATCH v5 11/21] mtd: rawnand: Use the new ECC engine type enumeration
Date: Thu, 14 May 2020 19:16:41 +0200
Message-Id: <20200514171651.24851-12-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200514171651.24851-1-miquel.raynal@bootlin.com>
References: <20200514171651.24851-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_101720_271614_673BDF0A 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Tudor Ambarus <tudor.ambarus@microchip.com>,
 Julien Su <juliensu@mxic.com.tw>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Paul Cercueil <paul@crapouillou.net>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, Chuanhong Guo <gch981213@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Mechanical switch from the legacy enumeration to the new enumeration in
drivers and board files.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 arch/arm/mach-davinci/board-da830-evm.c       |  2 +-
 arch/arm/mach-davinci/board-da850-evm.c       |  2 +-
 arch/arm/mach-davinci/board-dm355-evm.c       |  2 +-
 arch/arm/mach-davinci/board-dm355-leopard.c   |  2 +-
 arch/arm/mach-davinci/board-dm365-evm.c       |  2 +-
 arch/arm/mach-davinci/board-dm644x-evm.c      |  2 +-
 arch/arm/mach-davinci/board-dm646x-evm.c      |  2 +-
 arch/arm/mach-davinci/board-mityomapl138.c    |  2 +-
 arch/arm/mach-davinci/board-neuros-osd2.c     |  2 +-
 arch/arm/mach-davinci/board-omapl138-hawk.c   |  2 +-
 arch/arm/mach-s3c24xx/common-smdk.c           |  2 +-
 arch/arm/mach-s3c24xx/mach-anubis.c           |  2 +-
 arch/arm/mach-s3c24xx/mach-at2440evb.c        |  2 +-
 arch/arm/mach-s3c24xx/mach-bast.c             |  2 +-
 arch/arm/mach-s3c24xx/mach-gta02.c            |  2 +-
 arch/arm/mach-s3c24xx/mach-jive.c             |  2 +-
 arch/arm/mach-s3c24xx/mach-mini2440.c         |  2 +-
 arch/arm/mach-s3c24xx/mach-osiris.c           |  2 +-
 arch/arm/mach-s3c24xx/mach-qt2410.c           |  2 +-
 arch/arm/mach-s3c24xx/mach-rx1950.c           |  2 +-
 arch/arm/mach-s3c24xx/mach-rx3715.c           |  2 +-
 arch/arm/mach-s3c24xx/mach-vstms.c            |  2 +-
 arch/arm/mach-s3c64xx/mach-hmt.c              |  2 +-
 arch/arm/mach-s3c64xx/mach-mini6410.c         |  2 +-
 arch/arm/mach-s3c64xx/mach-real6410.c         |  2 +-
 drivers/mtd/nand/raw/ams-delta.c              |  2 +-
 drivers/mtd/nand/raw/atmel/nand-controller.c  | 14 ++--
 drivers/mtd/nand/raw/au1550nd.c               |  2 +-
 .../mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c  |  3 +-
 drivers/mtd/nand/raw/brcmnand/brcmnand.c      |  8 +--
 .../mtd/nand/raw/cadence-nand-controller.c    |  4 +-
 drivers/mtd/nand/raw/cafe_nand.c              |  2 +-
 drivers/mtd/nand/raw/cmx270_nand.c            |  2 +-
 drivers/mtd/nand/raw/cs553x_nand.c            |  2 +-
 drivers/mtd/nand/raw/davinci_nand.c           | 22 +++---
 drivers/mtd/nand/raw/denali.c                 |  2 +-
 drivers/mtd/nand/raw/diskonchip.c             |  2 +-
 drivers/mtd/nand/raw/fsl_elbc_nand.c          | 18 ++---
 drivers/mtd/nand/raw/fsl_ifc_nand.c           | 10 +--
 drivers/mtd/nand/raw/fsl_upm.c                |  2 +-
 drivers/mtd/nand/raw/fsmc_nand.c              | 12 ++--
 drivers/mtd/nand/raw/gpio.c                   |  2 +-
 drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c    |  2 +-
 drivers/mtd/nand/raw/hisi504_nand.c           |  6 +-
 .../mtd/nand/raw/ingenic/ingenic_nand_drv.c   | 14 ++--
 drivers/mtd/nand/raw/lpc32xx_mlc.c            |  2 +-
 drivers/mtd/nand/raw/lpc32xx_slc.c            |  2 +-
 drivers/mtd/nand/raw/marvell_nand.c           | 17 ++---
 drivers/mtd/nand/raw/meson_nand.c             |  2 +-
 drivers/mtd/nand/raw/mpc5121_nfc.c            |  2 +-
 drivers/mtd/nand/raw/mtk_nand.c               |  6 +-
 drivers/mtd/nand/raw/mxc_nand.c               | 23 ++++---
 drivers/mtd/nand/raw/nand_base.c              | 68 +++++++++++--------
 drivers/mtd/nand/raw/nand_micron.c            |  4 +-
 drivers/mtd/nand/raw/nand_toshiba.c           |  3 +-
 drivers/mtd/nand/raw/nandsim.c                |  4 +-
 drivers/mtd/nand/raw/ndfc.c                   |  2 +-
 drivers/mtd/nand/raw/omap2.c                  | 20 +++---
 drivers/mtd/nand/raw/orion_nand.c             |  2 +-
 drivers/mtd/nand/raw/pasemi_nand.c            |  2 +-
 drivers/mtd/nand/raw/plat_nand.c              |  2 +-
 drivers/mtd/nand/raw/qcom_nandc.c             |  2 +-
 drivers/mtd/nand/raw/r852.c                   |  2 +-
 drivers/mtd/nand/raw/s3c2410.c                | 16 ++---
 drivers/mtd/nand/raw/sh_flctl.c               |  4 +-
 drivers/mtd/nand/raw/sharpsl.c                |  2 +-
 drivers/mtd/nand/raw/socrates_nand.c          |  3 +-
 drivers/mtd/nand/raw/stm32_fmc2_nand.c        |  9 +--
 drivers/mtd/nand/raw/sunxi_nand.c             | 18 ++---
 drivers/mtd/nand/raw/tango_nand.c             |  2 +-
 drivers/mtd/nand/raw/tegra_nand.c             |  2 +-
 drivers/mtd/nand/raw/tmio_nand.c              |  2 +-
 drivers/mtd/nand/raw/txx9ndfmc.c              |  2 +-
 drivers/mtd/nand/raw/vf610_nfc.c              |  4 +-
 drivers/mtd/nand/raw/xway_nand.c              |  2 +-
 include/linux/mtd/rawnand.h                   |  4 +-
 include/linux/platform_data/mtd-davinci.h     | 10 +--
 .../linux/platform_data/mtd-nand-s3c2410.h    |  2 +-
 78 files changed, 222 insertions(+), 206 deletions(-)

diff --git a/arch/arm/mach-davinci/board-da830-evm.c b/arch/arm/mach-davinci/board-da830-evm.c
index a273ab25c668..ce2b212d4834 100644
--- a/arch/arm/mach-davinci/board-da830-evm.c
+++ b/arch/arm/mach-davinci/board-da830-evm.c
@@ -306,7 +306,7 @@ static struct davinci_nand_pdata da830_evm_nand_pdata = {
 	.core_chipsel	= 1,
 	.parts		= da830_evm_nand_partitions,
 	.nr_parts	= ARRAY_SIZE(da830_evm_nand_partitions),
-	.ecc_mode	= NAND_ECC_HW,
+	.engine_type	= NAND_ECC_ENGINE_CONTROLLER,
 	.ecc_bits	= 4,
 	.bbt_options	= NAND_BBT_USE_FLASH,
 	.bbt_td		= &da830_evm_nand_bbt_main_descr,
diff --git a/arch/arm/mach-davinci/board-da850-evm.c b/arch/arm/mach-davinci/board-da850-evm.c
index 5b3549f1236c..fbf0eb33e988 100644
--- a/arch/arm/mach-davinci/board-da850-evm.c
+++ b/arch/arm/mach-davinci/board-da850-evm.c
@@ -239,7 +239,7 @@ static struct davinci_nand_pdata da850_evm_nandflash_data = {
 	.core_chipsel	= 1,
 	.parts		= da850_evm_nandflash_partition,
 	.nr_parts	= ARRAY_SIZE(da850_evm_nandflash_partition),
-	.ecc_mode	= NAND_ECC_HW,
+	.engine_type	= NAND_ECC_ENGINE_CONTROLLER,
 	.ecc_bits	= 4,
 	.bbt_options	= NAND_BBT_USE_FLASH,
 	.timing		= &da850_evm_nandflash_timing,
diff --git a/arch/arm/mach-davinci/board-dm355-evm.c b/arch/arm/mach-davinci/board-dm355-evm.c
index 5113273fda69..6548a8c79a93 100644
--- a/arch/arm/mach-davinci/board-dm355-evm.c
+++ b/arch/arm/mach-davinci/board-dm355-evm.c
@@ -82,7 +82,7 @@ static struct davinci_nand_pdata davinci_nand_data = {
 	.mask_chipsel		= BIT(14),
 	.parts			= davinci_nand_partitions,
 	.nr_parts		= ARRAY_SIZE(davinci_nand_partitions),
-	.ecc_mode		= NAND_ECC_HW,
+	.engine_type		= NAND_ECC_ENGINE_CONTROLLER,
 	.bbt_options		= NAND_BBT_USE_FLASH,
 	.ecc_bits		= 4,
 };
diff --git a/arch/arm/mach-davinci/board-dm355-leopard.c b/arch/arm/mach-davinci/board-dm355-leopard.c
index 4c8a592754ac..6d1e02c80d24 100644
--- a/arch/arm/mach-davinci/board-dm355-leopard.c
+++ b/arch/arm/mach-davinci/board-dm355-leopard.c
@@ -76,7 +76,7 @@ static struct davinci_nand_pdata davinci_nand_data = {
 	.mask_chipsel		= BIT(14),
 	.parts			= davinci_nand_partitions,
 	.nr_parts		= ARRAY_SIZE(davinci_nand_partitions),
-	.ecc_mode		= NAND_HW_ECC_ENGINE,
+	.engine_type		= NAND_ECC_ENGINE_CONTROLLER,
 	.ecc_placement		= NAND_ECC_PLACEMENT_INTERLEAVED,
 	.ecc_bits		= 4,
 	.bbt_options		= NAND_BBT_USE_FLASH,
diff --git a/arch/arm/mach-davinci/board-dm365-evm.c b/arch/arm/mach-davinci/board-dm365-evm.c
index 2328b15ac067..aebf0b4a4a88 100644
--- a/arch/arm/mach-davinci/board-dm365-evm.c
+++ b/arch/arm/mach-davinci/board-dm365-evm.c
@@ -146,7 +146,7 @@ static struct davinci_nand_pdata davinci_nand_data = {
 	.mask_chipsel		= BIT(14),
 	.parts			= davinci_nand_partitions,
 	.nr_parts		= ARRAY_SIZE(davinci_nand_partitions),
-	.ecc_mode		= NAND_ECC_HW,
+	.engine_type		= NAND_ECC_ENGINE_CONTROLLER,
 	.bbt_options		= NAND_BBT_USE_FLASH,
 	.ecc_bits		= 4,
 };
diff --git a/arch/arm/mach-davinci/board-dm644x-evm.c b/arch/arm/mach-davinci/board-dm644x-evm.c
index 3461d12bbfc0..2b1a2621f55e 100644
--- a/arch/arm/mach-davinci/board-dm644x-evm.c
+++ b/arch/arm/mach-davinci/board-dm644x-evm.c
@@ -162,7 +162,7 @@ static struct davinci_nand_pdata davinci_evm_nandflash_data = {
 	.core_chipsel	= 0,
 	.parts		= davinci_evm_nandflash_partition,
 	.nr_parts	= ARRAY_SIZE(davinci_evm_nandflash_partition),
-	.ecc_mode	= NAND_ECC_HW,
+	.engine_type	= NAND_ECC_ENGINE_CONTROLLER,
 	.ecc_bits	= 1,
 	.bbt_options	= NAND_BBT_USE_FLASH,
 	.timing		= &davinci_evm_nandflash_timing,
diff --git a/arch/arm/mach-davinci/board-dm646x-evm.c b/arch/arm/mach-davinci/board-dm646x-evm.c
index 4600b617f9b4..f600082baa12 100644
--- a/arch/arm/mach-davinci/board-dm646x-evm.c
+++ b/arch/arm/mach-davinci/board-dm646x-evm.c
@@ -91,7 +91,7 @@ static struct davinci_nand_pdata davinci_nand_data = {
 	.mask_ale 		= 0x40000,
 	.parts			= davinci_nand_partitions,
 	.nr_parts		= ARRAY_SIZE(davinci_nand_partitions),
-	.ecc_mode		= NAND_ECC_HW,
+	.engine_type		= NAND_ECC_ENGINE_CONTROLLER,
 	.ecc_bits		= 1,
 	.options		= 0,
 };
diff --git a/arch/arm/mach-davinci/board-mityomapl138.c b/arch/arm/mach-davinci/board-mityomapl138.c
index dfce421c0579..ecad01d62c56 100644
--- a/arch/arm/mach-davinci/board-mityomapl138.c
+++ b/arch/arm/mach-davinci/board-mityomapl138.c
@@ -432,7 +432,7 @@ static struct davinci_nand_pdata mityomapl138_nandflash_data = {
 	.core_chipsel	= 1,
 	.parts		= mityomapl138_nandflash_partition,
 	.nr_parts	= ARRAY_SIZE(mityomapl138_nandflash_partition),
-	.ecc_mode	= NAND_ECC_HW,
+	.engine_type	= NAND_ECC_ENGINE_CONTROLLER,
 	.bbt_options	= NAND_BBT_USE_FLASH,
 	.options	= NAND_BUSWIDTH_16,
 	.ecc_bits	= 1, /* 4 bit mode is not supported with 16 bit NAND */
diff --git a/arch/arm/mach-davinci/board-neuros-osd2.c b/arch/arm/mach-davinci/board-neuros-osd2.c
index ce99f782811a..a21099fbe414 100644
--- a/arch/arm/mach-davinci/board-neuros-osd2.c
+++ b/arch/arm/mach-davinci/board-neuros-osd2.c
@@ -90,7 +90,7 @@ static struct davinci_nand_pdata davinci_ntosd2_nandflash_data = {
 	.core_chipsel	= 0,
 	.parts		= davinci_ntosd2_nandflash_partition,
 	.nr_parts	= ARRAY_SIZE(davinci_ntosd2_nandflash_partition),
-	.ecc_mode	= NAND_ECC_HW,
+	.engine_type	= NAND_ECC_ENGINE_CONTROLLER,
 	.ecc_bits	= 1,
 	.bbt_options	= NAND_BBT_USE_FLASH,
 };
diff --git a/arch/arm/mach-davinci/board-omapl138-hawk.c b/arch/arm/mach-davinci/board-omapl138-hawk.c
index 5390a8630cf0..0c7fb78995a6 100644
--- a/arch/arm/mach-davinci/board-omapl138-hawk.c
+++ b/arch/arm/mach-davinci/board-omapl138-hawk.c
@@ -206,7 +206,7 @@ static struct davinci_nand_pdata omapl138_hawk_nandflash_data = {
 	.core_chipsel	= 1,
 	.parts		= omapl138_hawk_nandflash_partition,
 	.nr_parts	= ARRAY_SIZE(omapl138_hawk_nandflash_partition),
-	.ecc_mode	= NAND_ECC_HW,
+	.engine_type	= NAND_ECC_ENGINE_CONTROLLER,
 	.ecc_bits	= 4,
 	.bbt_options	= NAND_BBT_USE_FLASH,
 	.options	= NAND_BUSWIDTH_16,
diff --git a/arch/arm/mach-s3c24xx/common-smdk.c b/arch/arm/mach-s3c24xx/common-smdk.c
index 58e30cad386c..6aa598d5191b 100644
--- a/arch/arm/mach-s3c24xx/common-smdk.c
+++ b/arch/arm/mach-s3c24xx/common-smdk.c
@@ -166,7 +166,7 @@ static struct s3c2410_platform_nand smdk_nand_info = {
 	.twrph1		= 20,
 	.nr_sets	= ARRAY_SIZE(smdk_nand_sets),
 	.sets		= smdk_nand_sets,
-	.ecc_mode       = NAND_ECC_SOFT,
+	.engine_type	= NAND_ECC_ENGINE_SOFT,
 };
 
 /* devices we initialise */
diff --git a/arch/arm/mach-s3c24xx/mach-anubis.c b/arch/arm/mach-s3c24xx/mach-anubis.c
index 072966dcad78..60de8f86e66a 100644
--- a/arch/arm/mach-s3c24xx/mach-anubis.c
+++ b/arch/arm/mach-s3c24xx/mach-anubis.c
@@ -218,7 +218,7 @@ static struct s3c2410_platform_nand __initdata anubis_nand_info = {
 	.nr_sets	= ARRAY_SIZE(anubis_nand_sets),
 	.sets		= anubis_nand_sets,
 	.select_chip	= anubis_nand_select,
-	.ecc_mode       = NAND_ECC_SOFT,
+	.engine_type	= NAND_ECC_ENGINE_SOFT,
 };
 
 /* IDE channels */
diff --git a/arch/arm/mach-s3c24xx/mach-at2440evb.c b/arch/arm/mach-s3c24xx/mach-at2440evb.c
index 58c5ef3cf1d7..1d52a29f373a 100644
--- a/arch/arm/mach-s3c24xx/mach-at2440evb.c
+++ b/arch/arm/mach-s3c24xx/mach-at2440evb.c
@@ -109,7 +109,7 @@ static struct s3c2410_platform_nand __initdata at2440evb_nand_info = {
 	.twrph1		= 40,
 	.nr_sets	= ARRAY_SIZE(at2440evb_nand_sets),
 	.sets		= at2440evb_nand_sets,
-	.ecc_mode       = NAND_ECC_SOFT,
+	.engine_type	= NAND_ECC_ENGINE_SOFT,
 };
 
 /* DM9000AEP 10/100 ethernet controller */
diff --git a/arch/arm/mach-s3c24xx/mach-bast.c b/arch/arm/mach-s3c24xx/mach-bast.c
index a7c3955ae8f6..f8deca7e1d41 100644
--- a/arch/arm/mach-s3c24xx/mach-bast.c
+++ b/arch/arm/mach-s3c24xx/mach-bast.c
@@ -294,7 +294,7 @@ static struct s3c2410_platform_nand __initdata bast_nand_info = {
 	.nr_sets	= ARRAY_SIZE(bast_nand_sets),
 	.sets		= bast_nand_sets,
 	.select_chip	= bast_nand_select,
-	.ecc_mode       = NAND_ECC_SOFT,
+	.engine_type	= NAND_ECC_ENGINE_SOFT,
 };
 
 /* DM9000 */
diff --git a/arch/arm/mach-s3c24xx/mach-gta02.c b/arch/arm/mach-s3c24xx/mach-gta02.c
index 594901f3b8e5..d7ee1043b96a 100644
--- a/arch/arm/mach-s3c24xx/mach-gta02.c
+++ b/arch/arm/mach-s3c24xx/mach-gta02.c
@@ -416,7 +416,7 @@ static struct s3c2410_platform_nand __initdata gta02_nand_info = {
 	.twrph1		= 15,
 	.nr_sets	= ARRAY_SIZE(gta02_nand_sets),
 	.sets		= gta02_nand_sets,
-	.ecc_mode       = NAND_ECC_SOFT,
+	.engine_type	= NAND_ECC_ENGINE_SOFT,
 };
 
 
diff --git a/arch/arm/mach-s3c24xx/mach-jive.c b/arch/arm/mach-s3c24xx/mach-jive.c
index 885e8f12e4b9..ac2b98bc2d82 100644
--- a/arch/arm/mach-s3c24xx/mach-jive.c
+++ b/arch/arm/mach-s3c24xx/mach-jive.c
@@ -228,7 +228,7 @@ static struct s3c2410_platform_nand __initdata jive_nand_info = {
 	.twrph1		= 40,
 	.sets		= jive_nand_sets,
 	.nr_sets	= ARRAY_SIZE(jive_nand_sets),
-	.ecc_mode       = NAND_ECC_SOFT,
+	.engine_type	= NAND_ECC_ENGINE_SOFT,
 };
 
 static int __init jive_mtdset(char *options)
diff --git a/arch/arm/mach-s3c24xx/mach-mini2440.c b/arch/arm/mach-s3c24xx/mach-mini2440.c
index 9035f868fb34..1fbeab0dffa5 100644
--- a/arch/arm/mach-s3c24xx/mach-mini2440.c
+++ b/arch/arm/mach-s3c24xx/mach-mini2440.c
@@ -296,7 +296,7 @@ static struct s3c2410_platform_nand mini2440_nand_info __initdata = {
 	.nr_sets	= ARRAY_SIZE(mini2440_nand_sets),
 	.sets		= mini2440_nand_sets,
 	.ignore_unset_ecc = 1,
-	.ecc_mode	= NAND_ECC_HW,
+	.engine_type	= NAND_ECC_ENGINE_CONTROLLER,
 };
 
 /* DM9000AEP 10/100 ethernet controller */
diff --git a/arch/arm/mach-s3c24xx/mach-osiris.c b/arch/arm/mach-s3c24xx/mach-osiris.c
index ee3630cb236a..c241256843a5 100644
--- a/arch/arm/mach-s3c24xx/mach-osiris.c
+++ b/arch/arm/mach-s3c24xx/mach-osiris.c
@@ -234,7 +234,7 @@ static struct s3c2410_platform_nand __initdata osiris_nand_info = {
 	.nr_sets	= ARRAY_SIZE(osiris_nand_sets),
 	.sets		= osiris_nand_sets,
 	.select_chip	= osiris_nand_select,
-	.ecc_mode       = NAND_ECC_SOFT,
+	.engine_type	= NAND_ECC_ENGINE_SOFT,
 };
 
 /* PCMCIA control and configuration */
diff --git a/arch/arm/mach-s3c24xx/mach-qt2410.c b/arch/arm/mach-s3c24xx/mach-qt2410.c
index 5d48e5b6e738..ae986d0973c2 100644
--- a/arch/arm/mach-s3c24xx/mach-qt2410.c
+++ b/arch/arm/mach-s3c24xx/mach-qt2410.c
@@ -281,7 +281,7 @@ static struct s3c2410_platform_nand __initdata qt2410_nand_info = {
 	.twrph1		= 20,
 	.nr_sets	= ARRAY_SIZE(qt2410_nand_sets),
 	.sets		= qt2410_nand_sets,
-	.ecc_mode       = NAND_ECC_SOFT,
+	.engine_type	= NAND_ECC_ENGINE_SOFT,
 };
 
 /* UDC */
diff --git a/arch/arm/mach-s3c24xx/mach-rx1950.c b/arch/arm/mach-s3c24xx/mach-rx1950.c
index fde98b175c75..3acd2eacfd30 100644
--- a/arch/arm/mach-s3c24xx/mach-rx1950.c
+++ b/arch/arm/mach-s3c24xx/mach-rx1950.c
@@ -620,7 +620,7 @@ static struct s3c2410_platform_nand rx1950_nand_info = {
 	.twrph1 = 15,
 	.nr_sets = ARRAY_SIZE(rx1950_nand_sets),
 	.sets = rx1950_nand_sets,
-	.ecc_mode = NAND_ECC_SOFT,
+	.engine_type = NAND_ECC_ENGINE_SOFT,
 };
 
 static struct s3c2410_udc_mach_info rx1950_udc_cfg __initdata = {
diff --git a/arch/arm/mach-s3c24xx/mach-rx3715.c b/arch/arm/mach-s3c24xx/mach-rx3715.c
index 529c6faf862f..e17f067e6e66 100644
--- a/arch/arm/mach-s3c24xx/mach-rx3715.c
+++ b/arch/arm/mach-s3c24xx/mach-rx3715.c
@@ -158,7 +158,7 @@ static struct s3c2410_platform_nand __initdata rx3715_nand_info = {
 	.twrph1		= 15,
 	.nr_sets	= ARRAY_SIZE(rx3715_nand_sets),
 	.sets		= rx3715_nand_sets,
-	.ecc_mode       = NAND_ECC_SOFT,
+	.engine_type	= NAND_ECC_ENGINE_SOFT,
 };
 
 static struct platform_device *rx3715_devices[] __initdata = {
diff --git a/arch/arm/mach-s3c24xx/mach-vstms.c b/arch/arm/mach-s3c24xx/mach-vstms.c
index d76b28b65e65..3950afb70e82 100644
--- a/arch/arm/mach-s3c24xx/mach-vstms.c
+++ b/arch/arm/mach-s3c24xx/mach-vstms.c
@@ -112,7 +112,7 @@ static struct s3c2410_platform_nand __initdata vstms_nand_info = {
 	.twrph1		= 20,
 	.nr_sets	= ARRAY_SIZE(vstms_nand_sets),
 	.sets		= vstms_nand_sets,
-	.ecc_mode       = NAND_ECC_SOFT,
+	.engine_type	= NAND_ECC_ENGINE_SOFT,
 };
 
 static struct platform_device *vstms_devices[] __initdata = {
diff --git a/arch/arm/mach-s3c64xx/mach-hmt.c b/arch/arm/mach-s3c64xx/mach-hmt.c
index e7080215c624..c1b9af42535a 100644
--- a/arch/arm/mach-s3c64xx/mach-hmt.c
+++ b/arch/arm/mach-s3c64xx/mach-hmt.c
@@ -199,7 +199,7 @@ static struct s3c2410_platform_nand hmt_nand_info = {
 	.twrph1		= 40,
 	.nr_sets	= ARRAY_SIZE(hmt_nand_sets),
 	.sets		= hmt_nand_sets,
-	.ecc_mode       = NAND_ECC_SOFT,
+	.engine_type	= NAND_ECC_ENGINE_SOFT,
 };
 
 static struct gpio_led hmt_leds[] = {
diff --git a/arch/arm/mach-s3c64xx/mach-mini6410.c b/arch/arm/mach-s3c64xx/mach-mini6410.c
index 0dd36ae49e6a..4ddfa97a418e 100644
--- a/arch/arm/mach-s3c64xx/mach-mini6410.c
+++ b/arch/arm/mach-s3c64xx/mach-mini6410.c
@@ -136,7 +136,7 @@ static struct s3c2410_platform_nand mini6410_nand_info = {
 	.twrph1		= 40,
 	.nr_sets	= ARRAY_SIZE(mini6410_nand_sets),
 	.sets		= mini6410_nand_sets,
-	.ecc_mode       = NAND_ECC_SOFT,
+	.engine_type	= NAND_ECC_ENGINE_SOFT,
 };
 
 static struct s3c_fb_pd_win mini6410_lcd_type0_fb_win = {
diff --git a/arch/arm/mach-s3c64xx/mach-real6410.c b/arch/arm/mach-s3c64xx/mach-real6410.c
index 0ff88b6859c4..db7c6edd7551 100644
--- a/arch/arm/mach-s3c64xx/mach-real6410.c
+++ b/arch/arm/mach-s3c64xx/mach-real6410.c
@@ -188,7 +188,7 @@ static struct s3c2410_platform_nand real6410_nand_info = {
 	.twrph1		= 40,
 	.nr_sets	= ARRAY_SIZE(real6410_nand_sets),
 	.sets		= real6410_nand_sets,
-	.ecc_mode       = NAND_ECC_SOFT,
+	.engine_type	= NAND_ECC_ENGINE_SOFT,
 };
 
 static struct platform_device *real6410_devices[] __initdata = {
diff --git a/drivers/mtd/nand/raw/ams-delta.c b/drivers/mtd/nand/raw/ams-delta.c
index d66dab25df20..b83b600825e2 100644
--- a/drivers/mtd/nand/raw/ams-delta.c
+++ b/drivers/mtd/nand/raw/ams-delta.c
@@ -260,7 +260,7 @@ static int gpio_nand_probe(struct platform_device *pdev)
 		return err;
 	}
 
-	this->ecc.mode = NAND_ECC_SOFT;
+	this->ecc.engine_type = NAND_ECC_ENGINE_SOFT;
 	this->ecc.algo = NAND_ECC_HAMMING;
 
 	platform_set_drvdata(pdev, priv);
diff --git a/drivers/mtd/nand/raw/atmel/nand-controller.c b/drivers/mtd/nand/raw/atmel/nand-controller.c
index 46a3724a788e..cbe9ced0810b 100644
--- a/drivers/mtd/nand/raw/atmel/nand-controller.c
+++ b/drivers/mtd/nand/raw/atmel/nand-controller.c
@@ -1118,15 +1118,15 @@ static int atmel_nand_ecc_init(struct nand_chip *chip)
 
 	nc = to_nand_controller(chip->controller);
 
-	switch (chip->ecc.mode) {
-	case NAND_ECC_NONE:
-	case NAND_ECC_SOFT:
+	switch (chip->ecc.engine_type) {
+	case NAND_ECC_ENGINE_NONE:
+	case NAND_ECC_ENGINE_SOFT:
 		/*
 		 * Nothing to do, the core will initialize everything for us.
 		 */
 		break;
 
-	case NAND_ECC_HW:
+	case NAND_ECC_ENGINE_CONTROLLER:
 		ret = atmel_nand_pmecc_init(chip);
 		if (ret)
 			return ret;
@@ -1140,7 +1140,7 @@ static int atmel_nand_ecc_init(struct nand_chip *chip)
 	default:
 		/* Other modes are not supported. */
 		dev_err(nc->dev, "Unsupported ECC mode: %d\n",
-			chip->ecc.mode);
+			chip->ecc.engine_type);
 		return -ENOTSUPP;
 	}
 
@@ -1155,7 +1155,7 @@ static int atmel_hsmc_nand_ecc_init(struct nand_chip *chip)
 	if (ret)
 		return ret;
 
-	if (chip->ecc.mode != NAND_ECC_HW)
+	if (chip->ecc.engine_type != NAND_ECC_ENGINE_CONTROLLER)
 		return 0;
 
 	/* Adjust the ECC operations for the HSMC IP. */
@@ -1498,7 +1498,7 @@ static void atmel_nand_init(struct atmel_nand_controller *nc,
 
 	/* Default to HW ECC if pmecc is available. */
 	if (nc->pmecc)
-		chip->ecc.mode = NAND_ECC_HW;
+		chip->ecc.engine_type = NAND_ECC_ENGINE_CONTROLLER;
 }
 
 static void atmel_smc_nand_init(struct atmel_nand_controller *nc,
diff --git a/drivers/mtd/nand/raw/au1550nd.c b/drivers/mtd/nand/raw/au1550nd.c
index 2ac84cb0501d..6ca3e905a0b6 100644
--- a/drivers/mtd/nand/raw/au1550nd.c
+++ b/drivers/mtd/nand/raw/au1550nd.c
@@ -294,7 +294,7 @@ static int au1550nd_probe(struct platform_device *pdev)
 	nand_controller_init(&ctx->controller);
 	ctx->controller.ops = &au1550nd_ops;
 	this->controller = &ctx->controller;
-	this->ecc.mode = NAND_ECC_SOFT;
+	this->ecc.engine_type = NAND_ECC_ENGINE_SOFT;
 	this->ecc.algo = NAND_ECC_HAMMING;
 
 	if (pd->devwidth)
diff --git a/drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c b/drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c
index 591775173034..2a284f1d29b8 100644
--- a/drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c
+++ b/drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c
@@ -391,7 +391,8 @@ int bcm47xxnflash_ops_bcm4706_init(struct bcm47xxnflash *b47n)
 
 	nand_chip->legacy.chip_delay = 50;
 	b47n->nand_chip.bbt_options = NAND_BBT_USE_FLASH;
-	b47n->nand_chip.ecc.mode = NAND_ECC_NONE; /* TODO: implement ECC */
+	/* TODO: implement ECC */
+	b47n->nand_chip.ecc.engine_type = NAND_ECC_ENGINE_NONE;
 
 	/* Enable NAND flash access */
 	bcma_cc_set32(b47n->cc, BCMA_CC_4706_FLASHSCFG,
diff --git a/drivers/mtd/nand/raw/brcmnand/brcmnand.c b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
index fe7cd3aa0cd6..bd4fb55ce71c 100644
--- a/drivers/mtd/nand/raw/brcmnand/brcmnand.c
+++ b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
@@ -2470,9 +2470,9 @@ static int brcmnand_setup_dev(struct brcmnand_host *host)
 	cfg->col_adr_bytes = 2;
 	cfg->blk_adr_bytes = get_blk_adr_bytes(mtd->size, mtd->writesize);
 
-	if (chip->ecc.mode != NAND_ECC_HW) {
+	if (chip->ecc.engine_type != NAND_ECC_ENGINE_CONTROLLER) {
 		dev_err(ctrl->dev, "only HW ECC supported; selected: %d\n",
-			chip->ecc.mode);
+			chip->ecc.engine_type);
 		return -EINVAL;
 	}
 
@@ -2492,7 +2492,7 @@ static int brcmnand_setup_dev(struct brcmnand_host *host)
 		return -EINVAL;
 	}
 
-	if (chip->ecc.mode != NAND_ECC_NONE &&
+	if (chip->ecc.engine_type != NAND_ECC_ENGINE_NONE &&
 	    (!chip->ecc.size || !chip->ecc.strength)) {
 		if (chip->base.eccreq.step_size && chip->base.eccreq.strength) {
 			/* use detected ECC parameters */
@@ -2633,7 +2633,7 @@ static int brcmnand_init_cs(struct brcmnand_host *host, struct device_node *dn)
 	chip->legacy.read_buf = brcmnand_read_buf;
 	chip->legacy.write_buf = brcmnand_write_buf;
 
-	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.engine_type = NAND_ECC_ENGINE_CONTROLLER;
 	chip->ecc.read_page = brcmnand_read_page;
 	chip->ecc.write_page = brcmnand_write_page;
 	chip->ecc.read_page_raw = brcmnand_read_page_raw;
diff --git a/drivers/mtd/nand/raw/cadence-nand-controller.c b/drivers/mtd/nand/raw/cadence-nand-controller.c
index e7abb15c7253..ec2fd9100cef 100644
--- a/drivers/mtd/nand/raw/cadence-nand-controller.c
+++ b/drivers/mtd/nand/raw/cadence-nand-controller.c
@@ -2610,7 +2610,7 @@ static int cadence_nand_attach_chip(struct nand_chip *chip)
 
 	chip->bbt_options |= NAND_BBT_USE_FLASH;
 	chip->bbt_options |= NAND_BBT_NO_OOB;
-	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.engine_type = NAND_ECC_ENGINE_CONTROLLER;
 
 	chip->options |= NAND_NO_SUBPAGE_WRITE;
 
@@ -2756,7 +2756,7 @@ static int cadence_nand_chip_init(struct cdns_nand_ctrl *cdns_ctrl,
 	 * Default to HW ECC engine mode. If the nand-ecc-mode property is given
 	 * in the DT node, this entry will be overwritten in nand_scan_ident().
 	 */
-	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.engine_type = NAND_ECC_ENGINE_CONTROLLER;
 
 	ret = nand_scan(chip, cdns_chip->nsels);
 	if (ret) {
diff --git a/drivers/mtd/nand/raw/cafe_nand.c b/drivers/mtd/nand/raw/cafe_nand.c
index 6afafc8bda2a..2f56a9383282 100644
--- a/drivers/mtd/nand/raw/cafe_nand.c
+++ b/drivers/mtd/nand/raw/cafe_nand.c
@@ -629,7 +629,7 @@ static int cafe_nand_attach_chip(struct nand_chip *chip)
 		goto out_free_dma;
 	}
 
-	cafe->nand.ecc.mode = NAND_ECC_HW;
+	cafe->nand.ecc.engine_type = NAND_ECC_ENGINE_CONTROLLER;
 	cafe->nand.ecc.placement = NAND_ECC_PLACEMENT_INTERLEAVED;
 	cafe->nand.ecc.size = mtd->writesize;
 	cafe->nand.ecc.bytes = 14;
diff --git a/drivers/mtd/nand/raw/cmx270_nand.c b/drivers/mtd/nand/raw/cmx270_nand.c
index 045b6175ae79..cabc7e5d4b31 100644
--- a/drivers/mtd/nand/raw/cmx270_nand.c
+++ b/drivers/mtd/nand/raw/cmx270_nand.c
@@ -176,7 +176,7 @@ static int __init cmx270_init(void)
 
 	/* 15 us command delay time */
 	this->legacy.chip_delay = 20;
-	this->ecc.mode = NAND_ECC_SOFT;
+	this->ecc.engine_type = NAND_ECC_ENGINE_SOFT;
 	this->ecc.algo = NAND_ECC_HAMMING;
 
 	/* read/write functions */
diff --git a/drivers/mtd/nand/raw/cs553x_nand.c b/drivers/mtd/nand/raw/cs553x_nand.c
index df5e24a2bbd7..4badeb99048f 100644
--- a/drivers/mtd/nand/raw/cs553x_nand.c
+++ b/drivers/mtd/nand/raw/cs553x_nand.c
@@ -286,7 +286,7 @@ static int __init cs553x_init_one(int cs, int mmio, unsigned long adr)
 		goto out_mtd;
 	}
 
-	this->ecc.mode = NAND_ECC_HW;
+	this->ecc.engine_type = NAND_ECC_ENGINE_CONTROLLER;
 	this->ecc.size = 256;
 	this->ecc.bytes = 3;
 	this->ecc.hwctl  = cs_enable_hwecc;
diff --git a/drivers/mtd/nand/raw/davinci_nand.c b/drivers/mtd/nand/raw/davinci_nand.c
index 9ac1636fb9ae..3e4c9f6294f3 100644
--- a/drivers/mtd/nand/raw/davinci_nand.c
+++ b/drivers/mtd/nand/raw/davinci_nand.c
@@ -613,11 +613,11 @@ static struct davinci_nand_pdata
 		if (!of_property_read_string(pdev->dev.of_node,
 			"ti,davinci-ecc-mode", &mode)) {
 			if (!strncmp("none", mode, 4))
-				pdata->ecc_mode = NAND_ECC_NONE;
+				pdata->engine_type = NAND_ECC_ENGINE_NONE;
 			if (!strncmp("soft", mode, 4))
-				pdata->ecc_mode = NAND_ECC_SOFT;
+				pdata->engine_type = NAND_ECC_ENGINE_SOFT;
 			if (!strncmp("hw", mode, 2))
-				pdata->ecc_mode = NAND_ECC_HW;
+				pdata->engine_type = NAND_ECC_ENGINE_CONTROLLER;
 		}
 		if (!of_property_read_u32(pdev->dev.of_node,
 			"ti,davinci-ecc-bits", &prop))
@@ -668,21 +668,21 @@ static int davinci_nand_attach_chip(struct nand_chip *chip)
 	if (IS_ERR(pdata))
 		return PTR_ERR(pdata);
 
-	switch (info->chip.ecc.mode) {
-	case NAND_ECC_NONE:
+	switch (info->chip.ecc.engine_type) {
+	case NAND_ECC_ENGINE_NONE:
 		pdata->ecc_bits = 0;
 		break;
-	case NAND_ECC_SOFT:
+	case NAND_ECC_ENGINE_SOFT:
 		pdata->ecc_bits = 0;
 		/*
-		 * This driver expects Hamming based ECC when ecc_mode is set
-		 * to NAND_ECC_SOFT. Force ecc.algo to NAND_ECC_HAMMING to
-		 * avoid adding an extra ->ecc_algo field to
+		 * This driver expects Hamming based ECC when engine_type is set
+		 * to NAND_ECC_ENGINE_SOFT. Force ecc.algo to NAND_ECC_HAMMING
+		 * to avoid adding an extra ->ecc_algo field to
 		 * davinci_nand_pdata.
 		 */
 		info->chip.ecc.algo = NAND_ECC_HAMMING;
 		break;
-	case NAND_ECC_HW:
+	case NAND_ECC_ENGINE_CONTROLLER:
 		if (pdata->ecc_bits == 4) {
 			int chunks = mtd->writesize / 512;
 
@@ -846,7 +846,7 @@ static int nand_davinci_probe(struct platform_device *pdev)
 	info->chip.legacy.write_buf    = nand_davinci_write_buf;
 
 	/* Use board-specific ECC config */
-	info->chip.ecc.mode	= pdata->ecc_mode;
+	info->chip.ecc.engine_type = pdata->engine_type;
 	info->chip.ecc.placement = pdata->ecc_placement;
 
 	spin_lock_irq(&davinci_nand_lock);
diff --git a/drivers/mtd/nand/raw/denali.c b/drivers/mtd/nand/raw/denali.c
index f52b59403895..6a5818c4429b 100644
--- a/drivers/mtd/nand/raw/denali.c
+++ b/drivers/mtd/nand/raw/denali.c
@@ -1237,7 +1237,7 @@ int denali_chip_init(struct denali_controller *denali,
 	chip->bbt_options |= NAND_BBT_USE_FLASH;
 	chip->bbt_options |= NAND_BBT_NO_OOB;
 	chip->options |= NAND_NO_SUBPAGE_WRITE;
-	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.engine_type = NAND_ECC_ENGINE_CONTROLLER;
 	chip->ecc.placement = NAND_ECC_PLACEMENT_INTERLEAVED;
 	chip->ecc.read_page = denali_read_page;
 	chip->ecc.write_page = denali_write_page;
diff --git a/drivers/mtd/nand/raw/diskonchip.c b/drivers/mtd/nand/raw/diskonchip.c
index a836de521535..c6b64a0ff297 100644
--- a/drivers/mtd/nand/raw/diskonchip.c
+++ b/drivers/mtd/nand/raw/diskonchip.c
@@ -1456,7 +1456,7 @@ static int __init doc_probe(unsigned long physadr)
 	nand->ecc.calculate	= doc200x_calculate_ecc;
 	nand->ecc.correct	= doc200x_correct_data;
 
-	nand->ecc.mode		= NAND_ECC_HW;
+	nand->ecc.engine_type	= NAND_ECC_ENGINE_CONTROLLER;
 	nand->ecc.placement	= NAND_ECC_PLACEMENT_INTERLEAVED;
 	nand->ecc.size		= 512;
 	nand->ecc.bytes		= 6;
diff --git a/drivers/mtd/nand/raw/fsl_elbc_nand.c b/drivers/mtd/nand/raw/fsl_elbc_nand.c
index e1dc675b12bb..5b2624e32291 100644
--- a/drivers/mtd/nand/raw/fsl_elbc_nand.c
+++ b/drivers/mtd/nand/raw/fsl_elbc_nand.c
@@ -244,7 +244,7 @@ static int fsl_elbc_run_command(struct mtd_info *mtd)
 		return -EIO;
 	}
 
-	if (chip->ecc.mode != NAND_ECC_HW)
+	if (chip->ecc.engine_type != NAND_ECC_ENGINE_CONTROLLER)
 		return 0;
 
 	elbc_fcm_ctrl->max_bitflips = 0;
@@ -727,12 +727,12 @@ static int fsl_elbc_attach_chip(struct nand_chip *chip)
 	struct fsl_lbc_regs __iomem *lbc = ctrl->regs;
 	unsigned int al;
 
-	switch (chip->ecc.mode) {
+	switch (chip->ecc.engine_type) {
 	/*
 	 * if ECC was not chosen in DT, decide whether to use HW or SW ECC from
 	 * CS Base Register
 	 */
-	case NAND_ECC_NONE:
+	case NAND_ECC_ENGINE_NONE:
 		/* If CS Base Register selects full hardware ECC then use it */
 		if ((in_be32(&lbc->bank[priv->bank].br) & BR_DECC) ==
 		    BR_DECC_CHK_GEN) {
@@ -740,23 +740,23 @@ static int fsl_elbc_attach_chip(struct nand_chip *chip)
 			chip->ecc.write_page = fsl_elbc_write_page;
 			chip->ecc.write_subpage = fsl_elbc_write_subpage;
 
-			chip->ecc.mode = NAND_ECC_HW;
+			chip->ecc.engine_type = NAND_ECC_ENGINE_CONTROLLER;
 			mtd_set_ooblayout(mtd, &fsl_elbc_ooblayout_ops);
 			chip->ecc.size = 512;
 			chip->ecc.bytes = 3;
 			chip->ecc.strength = 1;
 		} else {
 			/* otherwise fall back to default software ECC */
-			chip->ecc.mode = NAND_ECC_SOFT;
+			chip->ecc.engine_type = NAND_ECC_ENGINE_SOFT;
 			chip->ecc.algo = NAND_ECC_HAMMING;
 		}
 		break;
 
 	/* if SW ECC was chosen in DT, we do not need to set anything here */
-	case NAND_ECC_SOFT:
+	case NAND_ECC_ENGINE_SOFT:
 		break;
 
-	/* should we also implement NAND_ECC_HW to do as the code above? */
+	/* should we also implement *_ECC_ENGINE_CONTROLLER to do as above? */
 	default:
 		return -EINVAL;
 	}
@@ -786,8 +786,8 @@ static int fsl_elbc_attach_chip(struct nand_chip *chip)
 	        chip->page_shift);
 	dev_dbg(priv->dev, "fsl_elbc_init: nand->phys_erase_shift = %d\n",
 	        chip->phys_erase_shift);
-	dev_dbg(priv->dev, "fsl_elbc_init: nand->ecc.mode = %d\n",
-	        chip->ecc.mode);
+	dev_dbg(priv->dev, "fsl_elbc_init: nand->ecc.engine_type = %d\n",
+		chip->ecc.engine_type);
 	dev_dbg(priv->dev, "fsl_elbc_init: nand->ecc.steps = %d\n",
 	        chip->ecc.steps);
 	dev_dbg(priv->dev, "fsl_elbc_init: nand->ecc.bytes = %d\n",
diff --git a/drivers/mtd/nand/raw/fsl_ifc_nand.c b/drivers/mtd/nand/raw/fsl_ifc_nand.c
index 2af09edf405b..856988fd6a70 100644
--- a/drivers/mtd/nand/raw/fsl_ifc_nand.c
+++ b/drivers/mtd/nand/raw/fsl_ifc_nand.c
@@ -309,7 +309,7 @@ static void fsl_ifc_cmdfunc(struct nand_chip *chip, unsigned int command,
 		ifc_nand_ctrl->read_bytes = mtd->writesize + mtd->oobsize;
 		ifc_nand_ctrl->index += column;
 
-		if (chip->ecc.mode == NAND_ECC_HW)
+		if (chip->ecc.engine_type == NAND_ECC_ENGINE_CONTROLLER)
 			ifc_nand_ctrl->eccread = 1;
 
 		fsl_ifc_do_read(chip, 0, mtd);
@@ -724,8 +724,8 @@ static int fsl_ifc_attach_chip(struct nand_chip *chip)
 							chip->page_shift);
 	dev_dbg(priv->dev, "%s: nand->phys_erase_shift = %d\n", __func__,
 							chip->phys_erase_shift);
-	dev_dbg(priv->dev, "%s: nand->ecc.mode = %d\n", __func__,
-							chip->ecc.mode);
+	dev_dbg(priv->dev, "%s: nand->ecc.engine_type = %d\n", __func__,
+							chip->ecc.engine_type);
 	dev_dbg(priv->dev, "%s: nand->ecc.steps = %d\n", __func__,
 							chip->ecc.steps);
 	dev_dbg(priv->dev, "%s: nand->ecc.bytes = %d\n", __func__,
@@ -912,7 +912,7 @@ static int fsl_ifc_chip_init(struct fsl_ifc_mtd *priv)
 
 	/* Must also set CSOR_NAND_ECC_ENC_EN if DEC_EN set */
 	if (csor & CSOR_NAND_ECC_DEC_EN) {
-		chip->ecc.mode = NAND_ECC_HW;
+		chip->ecc.engine_type = NAND_ECC_ENGINE_CONTROLLER;
 		mtd_set_ooblayout(mtd, &fsl_ifc_ooblayout_ops);
 
 		/* Hardware generates ECC per 512 Bytes */
@@ -925,7 +925,7 @@ static int fsl_ifc_chip_init(struct fsl_ifc_mtd *priv)
 			chip->ecc.strength = 8;
 		}
 	} else {
-		chip->ecc.mode = NAND_ECC_SOFT;
+		chip->ecc.engine_type = NAND_ECC_ENGINE_SOFT;
 		chip->ecc.algo = NAND_ECC_HAMMING;
 	}
 
diff --git a/drivers/mtd/nand/raw/fsl_upm.c b/drivers/mtd/nand/raw/fsl_upm.c
index f31fae3a4c68..d33ccb082c88 100644
--- a/drivers/mtd/nand/raw/fsl_upm.c
+++ b/drivers/mtd/nand/raw/fsl_upm.c
@@ -163,7 +163,7 @@ static int fun_chip_init(struct fsl_upm_nand *fun,
 	fun->chip.legacy.read_byte = fun_read_byte;
 	fun->chip.legacy.read_buf = fun_read_buf;
 	fun->chip.legacy.write_buf = fun_write_buf;
-	fun->chip.ecc.mode = NAND_ECC_SOFT;
+	fun->chip.ecc.engine_type = NAND_ECC_ENGINE_SOFT;
 	fun->chip.ecc.algo = NAND_ECC_HAMMING;
 	if (fun->mchip_count > 1)
 		fun->chip.legacy.select_chip = fun_select_chip;
diff --git a/drivers/mtd/nand/raw/fsmc_nand.c b/drivers/mtd/nand/raw/fsmc_nand.c
index 2a9222e99bcc..4d3325aa40ae 100644
--- a/drivers/mtd/nand/raw/fsmc_nand.c
+++ b/drivers/mtd/nand/raw/fsmc_nand.c
@@ -900,8 +900,8 @@ static int fsmc_nand_attach_chip(struct nand_chip *nand)
 		return 0;
 	}
 
-	switch (nand->ecc.mode) {
-	case NAND_ECC_HW:
+	switch (nand->ecc.engine_type) {
+	case NAND_ECC_ENGINE_CONTROLLER:
 		dev_info(host->dev, "Using 1-bit HW ECC scheme\n");
 		nand->ecc.calculate = fsmc_read_hwecc_ecc1;
 		nand->ecc.correct = nand_correct_data;
@@ -910,14 +910,14 @@ static int fsmc_nand_attach_chip(struct nand_chip *nand)
 		nand->ecc.options |= NAND_ECC_SOFT_HAMMING_SM_ORDER;
 		break;
 
-	case NAND_ECC_SOFT:
+	case NAND_ECC_ENGINE_SOFT:
 		if (nand->ecc.algo == NAND_ECC_BCH) {
 			dev_info(host->dev,
 				 "Using 4-bit SW BCH ECC scheme\n");
 			break;
 		}
 
-	case NAND_ECC_ON_DIE:
+	case NAND_ECC_ENGINE_ON_DIE:
 		break;
 
 	default:
@@ -929,7 +929,7 @@ static int fsmc_nand_attach_chip(struct nand_chip *nand)
 	 * Don't set layout for BCH4 SW ECC. This will be
 	 * generated later in nand_bch_init() later.
 	 */
-	if (nand->ecc.mode == NAND_ECC_HW) {
+	if (nand->ecc.engine_type == NAND_ECC_ENGINE_CONTROLLER) {
 		switch (mtd->oobsize) {
 		case 16:
 		case 64:
@@ -1059,7 +1059,7 @@ static int __init fsmc_nand_probe(struct platform_device *pdev)
 	 * Setup default ECC mode. nand_dt_init() called from nand_scan_ident()
 	 * can overwrite this value if the DT provides a different value.
 	 */
-	nand->ecc.mode = NAND_ECC_HW;
+	nand->ecc.engine_type = NAND_ECC_ENGINE_CONTROLLER;
 	nand->ecc.hwctl = fsmc_enable_hwecc;
 	nand->ecc.size = 512;
 	nand->badblockbits = 7;
diff --git a/drivers/mtd/nand/raw/gpio.c b/drivers/mtd/nand/raw/gpio.c
index f6b12354024f..aab80484d782 100644
--- a/drivers/mtd/nand/raw/gpio.c
+++ b/drivers/mtd/nand/raw/gpio.c
@@ -271,7 +271,7 @@ static int gpio_nand_probe(struct platform_device *pdev)
 
 	nand_set_flash_node(chip, pdev->dev.of_node);
 	chip->legacy.IO_ADDR_W	= chip->legacy.IO_ADDR_R;
-	chip->ecc.mode		= NAND_ECC_SOFT;
+	chip->ecc.engine_type	= NAND_ECC_ENGINE_SOFT;
 	chip->ecc.algo		= NAND_ECC_HAMMING;
 	chip->options		= gpiomtd->plat.options;
 	chip->legacy.chip_delay	= gpiomtd->plat.chip_delay;
diff --git a/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c b/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
index cc4cb190968e..fe445d1d32cb 100644
--- a/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
+++ b/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
@@ -2184,7 +2184,7 @@ static int gpmi_init_last(struct gpmi_nand_data *this)
 	ecc->write_page_raw = gpmi_ecc_write_page_raw;
 	ecc->read_oob_raw = gpmi_ecc_read_oob_raw;
 	ecc->write_oob_raw = gpmi_ecc_write_oob_raw;
-	ecc->mode	= NAND_ECC_HW;
+	ecc->engine_type = NAND_ECC_ENGINE_CONTROLLER;
 	ecc->size	= bch_geo->ecc_chunk_size;
 	ecc->strength	= bch_geo->ecc_strength;
 	mtd_set_ooblayout(mtd, &gpmi_ooblayout_ops);
diff --git a/drivers/mtd/nand/raw/hisi504_nand.c b/drivers/mtd/nand/raw/hisi504_nand.c
index 0b48be54ba6f..34ce43945a00 100644
--- a/drivers/mtd/nand/raw/hisi504_nand.c
+++ b/drivers/mtd/nand/raw/hisi504_nand.c
@@ -186,7 +186,7 @@ static void hisi_nfc_dma_transfer(struct hinfc_host *host, int todev)
 	hinfc_write(host, host->dma_buffer, HINFC504_DMA_ADDR_DATA);
 	hinfc_write(host, host->dma_oob, HINFC504_DMA_ADDR_OOB);
 
-	if (chip->ecc.mode == NAND_ECC_NONE) {
+	if (chip->ecc.engine_type == NAND_ECC_ENGINE_NONE) {
 		hinfc_write(host, ((mtd->oobsize & HINFC504_DMA_LEN_OOB_MASK)
 			<< HINFC504_DMA_LEN_OOB_SHIFT), HINFC504_DMA_LEN);
 
@@ -468,7 +468,7 @@ static void hisi_nfc_cmdfunc(struct nand_chip *chip, unsigned command,
 
 	case NAND_CMD_STATUS:
 		flag = hinfc_read(host, HINFC504_CON);
-		if (chip->ecc.mode == NAND_ECC_HW)
+		if (chip->ecc.engine_type == NAND_ECC_ENGINE_CONTROLLER)
 			hinfc_write(host,
 				    flag & ~(HINFC504_CON_ECCTYPE_MASK <<
 				    HINFC504_CON_ECCTYPE_SHIFT), HINFC504_CON);
@@ -721,7 +721,7 @@ static int hisi_nfc_attach_chip(struct nand_chip *chip)
 	}
 	hinfc_write(host, flag, HINFC504_CON);
 
-	if (chip->ecc.mode == NAND_ECC_HW)
+	if (chip->ecc.engine_type == NAND_ECC_ENGINE_CONTROLLER)
 		hisi_nfc_ecc_probe(host);
 
 	return 0;
diff --git a/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c b/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c
index e7bd845fdbf5..889024bdbdec 100644
--- a/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c
+++ b/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c
@@ -243,8 +243,8 @@ static int ingenic_nand_attach_chip(struct nand_chip *chip)
 				  (chip->ecc.strength / 8);
 	}
 
-	switch (chip->ecc.mode) {
-	case NAND_ECC_HW:
+	switch (chip->ecc.engine_type) {
+	case NAND_ECC_ENGINE_CONTROLLER:
 		if (!nfc->ecc) {
 			dev_err(nfc->dev, "HW ECC selected, but ECC controller not found\n");
 			return -ENODEV;
@@ -254,22 +254,22 @@ static int ingenic_nand_attach_chip(struct nand_chip *chip)
 		chip->ecc.calculate = ingenic_nand_ecc_calculate;
 		chip->ecc.correct = ingenic_nand_ecc_correct;
 		fallthrough;
-	case NAND_ECC_SOFT:
+	case NAND_ECC_ENGINE_SOFT:
 		dev_info(nfc->dev, "using %s (strength %d, size %d, bytes %d)\n",
 			 (nfc->ecc) ? "hardware ECC" : "software ECC",
 			 chip->ecc.strength, chip->ecc.size, chip->ecc.bytes);
 		break;
-	case NAND_ECC_NONE:
+	case NAND_ECC_ENGINE_NONE:
 		dev_info(nfc->dev, "not using ECC\n");
 		break;
 	default:
 		dev_err(nfc->dev, "ECC mode %d not supported\n",
-			chip->ecc.mode);
+			chip->ecc.engine_type);
 		return -EINVAL;
 	}
 
 	/* The NAND core will generate the ECC layout for SW ECC */
-	if (chip->ecc.mode != NAND_ECC_HW)
+	if (chip->ecc.engine_type != NAND_ECC_ENGINE_CONTROLLER)
 		return 0;
 
 	/* Generate ECC layout. ECC codes are right aligned in the OOB area. */
@@ -365,7 +365,7 @@ static int ingenic_nand_init_chip(struct platform_device *pdev,
 	chip->options = NAND_NO_SUBPAGE_WRITE;
 	chip->legacy.select_chip = ingenic_nand_select_chip;
 	chip->legacy.cmd_ctrl = ingenic_nand_cmd_ctrl;
-	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.engine_type = NAND_ECC_ENGINE_CONTROLLER;
 	chip->controller = &nfc->controller;
 	nand_set_flash_node(chip, np);
 
diff --git a/drivers/mtd/nand/raw/lpc32xx_mlc.c b/drivers/mtd/nand/raw/lpc32xx_mlc.c
index 241b58b83240..53fa2b2f6be2 100644
--- a/drivers/mtd/nand/raw/lpc32xx_mlc.c
+++ b/drivers/mtd/nand/raw/lpc32xx_mlc.c
@@ -656,7 +656,7 @@ static int lpc32xx_nand_attach_chip(struct nand_chip *chip)
 	if (!host->dummy_buf)
 		return -ENOMEM;
 
-	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.engine_type = NAND_ECC_ENGINE_CONTROLLER;
 	chip->ecc.size = 512;
 	mtd_set_ooblayout(mtd, &lpc32xx_ooblayout_ops);
 	host->mlcsubpages = mtd->writesize / 512;
diff --git a/drivers/mtd/nand/raw/lpc32xx_slc.c b/drivers/mtd/nand/raw/lpc32xx_slc.c
index 522c7a276d6f..3371a9e84188 100644
--- a/drivers/mtd/nand/raw/lpc32xx_slc.c
+++ b/drivers/mtd/nand/raw/lpc32xx_slc.c
@@ -881,7 +881,7 @@ static int lpc32xx_nand_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, host);
 
 	/* NAND callbacks for LPC32xx SLC hardware */
-	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.engine_type = NAND_ECC_ENGINE_CONTROLLER;
 	chip->ecc.placement = NAND_ECC_PLACEMENT_INTERLEAVED;
 	chip->legacy.read_byte = lpc32xx_nand_read_byte;
 	chip->legacy.read_buf = lpc32xx_nand_read_buf;
diff --git a/drivers/mtd/nand/raw/marvell_nand.c b/drivers/mtd/nand/raw/marvell_nand.c
index a79ce4bdd31c..91cfc9547ba6 100644
--- a/drivers/mtd/nand/raw/marvell_nand.c
+++ b/drivers/mtd/nand/raw/marvell_nand.c
@@ -2247,7 +2247,8 @@ static int marvell_nand_ecc_init(struct mtd_info *mtd,
 	struct marvell_nfc *nfc = to_marvell_nfc(chip->controller);
 	int ret;
 
-	if (ecc->mode != NAND_ECC_NONE && (!ecc->size || !ecc->strength)) {
+	if (ecc->engine_type != NAND_ECC_ENGINE_NONE &&
+	    (!ecc->size || !ecc->strength)) {
 		if (chip->base.eccreq.step_size && chip->base.eccreq.strength) {
 			ecc->size = chip->base.eccreq.step_size;
 			ecc->strength = chip->base.eccreq.strength;
@@ -2259,15 +2260,15 @@ static int marvell_nand_ecc_init(struct mtd_info *mtd,
 		}
 	}
 
-	switch (ecc->mode) {
-	case NAND_ECC_HW:
+	switch (ecc->engine_type) {
+	case NAND_ECC_ENGINE_CONTROLLER:
 		ret = marvell_nand_hw_ecc_controller_init(mtd, ecc);
 		if (ret)
 			return ret;
 		break;
-	case NAND_ECC_NONE:
-	case NAND_ECC_SOFT:
-	case NAND_ECC_ON_DIE:
+	case NAND_ECC_ENGINE_NONE:
+	case NAND_ECC_ENGINE_SOFT:
+	case NAND_ECC_ENGINE_ON_DIE:
 		if (!nfc->caps->is_nfcv2 && mtd->writesize != SZ_512 &&
 		    mtd->writesize != SZ_2K) {
 			dev_err(nfc->dev, "NFCv1 cannot write %d bytes pages\n",
@@ -2465,7 +2466,7 @@ static int marvell_nand_attach_chip(struct nand_chip *chip)
 		return ret;
 	}
 
-	if (chip->ecc.mode == NAND_ECC_HW) {
+	if (chip->ecc.engine_type == NAND_ECC_ENGINE_CONTROLLER) {
 		/*
 		 * Subpage write not available with hardware ECC, prohibit also
 		 * subpage read as in userspace subpage access would still be
@@ -2640,7 +2641,7 @@ static int marvell_nand_chip_init(struct device *dev, struct marvell_nfc *nfc,
 	 * Default to HW ECC engine mode. If the nand-ecc-mode property is given
 	 * in the DT node, this entry will be overwritten in nand_scan_ident().
 	 */
-	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.engine_type = NAND_ECC_ENGINE_CONTROLLER;
 
 	/*
 	 * Save a reference value for timing registers before
diff --git a/drivers/mtd/nand/raw/meson_nand.c b/drivers/mtd/nand/raw/meson_nand.c
index 3f376471f3f7..c7bbdb4239a9 100644
--- a/drivers/mtd/nand/raw/meson_nand.c
+++ b/drivers/mtd/nand/raw/meson_nand.c
@@ -1197,7 +1197,7 @@ static int meson_nand_attach_chip(struct nand_chip *nand)
 	if (ret)
 		return -EINVAL;
 
-	nand->ecc.mode = NAND_ECC_HW;
+	nand->ecc.engine_type = NAND_ECC_ENGINE_CONTROLLER;
 	nand->ecc.write_page_raw = meson_nfc_write_page_raw;
 	nand->ecc.write_page = meson_nfc_write_page_hwecc;
 	nand->ecc.write_oob_raw = nand_write_oob_std;
diff --git a/drivers/mtd/nand/raw/mpc5121_nfc.c b/drivers/mtd/nand/raw/mpc5121_nfc.c
index a2fcb739e5f8..d2889fb0b81a 100644
--- a/drivers/mtd/nand/raw/mpc5121_nfc.c
+++ b/drivers/mtd/nand/raw/mpc5121_nfc.c
@@ -688,7 +688,7 @@ static int mpc5121_nfc_probe(struct platform_device *op)
 	chip->legacy.set_features = nand_get_set_features_notsupp;
 	chip->legacy.get_features = nand_get_set_features_notsupp;
 	chip->bbt_options = NAND_BBT_USE_FLASH;
-	chip->ecc.mode = NAND_ECC_SOFT;
+	chip->ecc.engine_type = NAND_ECC_ENGINE_SOFT;
 	chip->ecc.algo = NAND_ECC_HAMMING;
 
 	/* Support external chip-select logic on ADS5121 board */
diff --git a/drivers/mtd/nand/raw/mtk_nand.c b/drivers/mtd/nand/raw/mtk_nand.c
index e7ec30e784fd..4d028676df8f 100644
--- a/drivers/mtd/nand/raw/mtk_nand.c
+++ b/drivers/mtd/nand/raw/mtk_nand.c
@@ -1226,8 +1226,8 @@ static int mtk_nfc_ecc_init(struct device *dev, struct mtd_info *mtd)
 	int free, ret;
 
 	/* support only ecc hw mode */
-	if (nand->ecc.mode != NAND_ECC_HW) {
-		dev_err(dev, "ecc.mode not supported\n");
+	if (nand->ecc.engine_type != NAND_ECC_ENGINE_CONTROLLER) {
+		dev_err(dev, "ecc.engine_type not supported\n");
 		return -EINVAL;
 	}
 
@@ -1390,7 +1390,7 @@ static int mtk_nfc_nand_chip_init(struct device *dev, struct mtk_nfc *nfc,
 	nand->legacy.cmd_ctrl = mtk_nfc_cmd_ctrl;
 
 	/* set default mode in case dt entry is missing */
-	nand->ecc.mode = NAND_ECC_HW;
+	nand->ecc.engine_type = NAND_ECC_ENGINE_CONTROLLER;
 
 	nand->ecc.write_subpage = mtk_nfc_write_subpage_hwecc;
 	nand->ecc.write_page_raw = mtk_nfc_write_page_raw;
diff --git a/drivers/mtd/nand/raw/mxc_nand.c b/drivers/mtd/nand/raw/mxc_nand.c
index 59554c187e01..4b7cc756dadf 100644
--- a/drivers/mtd/nand/raw/mxc_nand.c
+++ b/drivers/mtd/nand/raw/mxc_nand.c
@@ -669,7 +669,7 @@ static void mxc_nand_enable_hwecc_v1_v2(struct nand_chip *chip, bool enable)
 	struct mxc_nand_host *host = nand_get_controller_data(chip);
 	uint16_t config1;
 
-	if (chip->ecc.mode != NAND_ECC_HW)
+	if (chip->ecc.engine_type != NAND_ECC_ENGINE_CONTROLLER)
 		return;
 
 	config1 = readw(NFC_V1_V2_CONFIG1);
@@ -687,7 +687,7 @@ static void mxc_nand_enable_hwecc_v3(struct nand_chip *chip, bool enable)
 	struct mxc_nand_host *host = nand_get_controller_data(chip);
 	uint32_t config2;
 
-	if (chip->ecc.mode != NAND_ECC_HW)
+	if (chip->ecc.engine_type != NAND_ECC_ENGINE_CONTROLLER)
 		return;
 
 	config2 = readl(NFC_V3_CONFIG2);
@@ -1117,7 +1117,8 @@ static void preset_v1(struct mtd_info *mtd)
 	struct mxc_nand_host *host = nand_get_controller_data(nand_chip);
 	uint16_t config1 = 0;
 
-	if (nand_chip->ecc.mode == NAND_ECC_HW && mtd->writesize)
+	if (nand_chip->ecc.engine_type == NAND_ECC_ENGINE_CONTROLLER &&
+	    mtd->writesize)
 		config1 |= NFC_V1_V2_CONFIG1_ECC_EN;
 
 	if (!host->devtype_data->irqpending_quirk)
@@ -1227,7 +1228,7 @@ static void preset_v2(struct mtd_info *mtd)
 	if (mtd->writesize) {
 		uint16_t pages_per_block = mtd->erasesize / mtd->writesize;
 
-		if (nand_chip->ecc.mode == NAND_ECC_HW)
+		if (nand_chip->ecc.engine_type == NAND_ECC_ENGINE_CONTROLLER)
 			config1 |= NFC_V1_V2_CONFIG1_ECC_EN;
 
 		host->eccsize = get_eccsize(mtd);
@@ -1303,7 +1304,7 @@ static void preset_v3(struct mtd_info *mtd)
 	}
 
 	if (mtd->writesize) {
-		if (chip->ecc.mode == NAND_ECC_HW)
+		if (chip->ecc.engine_type == NAND_ECC_ENGINE_CONTROLLER)
 			config2 |= NFC_V3_CONFIG2_ECC_EN;
 
 		config2 |= NFC_V3_CONFIG2_PPB(
@@ -1680,8 +1681,8 @@ static int mxcnd_attach_chip(struct nand_chip *chip)
 	struct mxc_nand_host *host = nand_get_controller_data(chip);
 	struct device *dev = mtd->dev.parent;
 
-	switch (chip->ecc.mode) {
-	case NAND_ECC_HW:
+	switch (chip->ecc.engine_type) {
+	case NAND_ECC_ENGINE_CONTROLLER:
 		chip->ecc.read_page = mxc_nand_read_page;
 		chip->ecc.read_page_raw = mxc_nand_read_page_raw;
 		chip->ecc.read_oob = mxc_nand_read_oob;
@@ -1690,7 +1691,7 @@ static int mxcnd_attach_chip(struct nand_chip *chip)
 		chip->ecc.write_oob = mxc_nand_write_oob;
 		break;
 
-	case NAND_ECC_SOFT:
+	case NAND_ECC_ENGINE_SOFT:
 		break;
 
 	default:
@@ -1728,7 +1729,7 @@ static int mxcnd_attach_chip(struct nand_chip *chip)
 	 */
 	host->used_oobsize = min(mtd->oobsize, 218U);
 
-	if (chip->ecc.mode == NAND_ECC_HW) {
+	if (chip->ecc.engine_type == NAND_ECC_ENGINE_CONTROLLER) {
 		if (is_imx21_nfc(host) || is_imx27_nfc(host))
 			chip->ecc.strength = 1;
 		else
@@ -1843,9 +1844,9 @@ static int mxcnd_probe(struct platform_device *pdev)
 	mtd_set_ooblayout(mtd, host->devtype_data->ooblayout);
 
 	if (host->pdata.hw_ecc) {
-		this->ecc.mode = NAND_ECC_HW;
+		this->ecc.engine_type = NAND_ECC_ENGINE_CONTROLLER;
 	} else {
-		this->ecc.mode = NAND_ECC_SOFT;
+		this->ecc.engine_type = NAND_ECC_ENGINE_SOFT;
 		this->ecc.algo = NAND_ECC_HAMMING;
 	}
 
diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index f69a3336bc17..17af2fef8f71 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -4978,28 +4978,35 @@ static const char * const nand_ecc_placement[] = {
 	[NAND_ECC_PLACEMENT_INTERLEAVED] = "interleaved",
 };
 
-static int of_get_nand_ecc_mode(struct device_node *np)
+static enum nand_ecc_engine_type
+of_get_nand_ecc_engine_type(struct device_node *np)
 {
+	enum nand_ecc_engine_type eng_type;
 	const char *pm;
-	int err, i;
+	int err;
 
 	err = of_property_read_string(np, "nand-ecc-mode", &pm);
-	if (err < 0)
-		return err;
+	if (err)
+		return NAND_ECC_ENGINE_INVALID;
 
-	for (i = NAND_ECC_NONE; i < ARRAY_SIZE(nand_ecc_modes); i++)
-		if (!strcasecmp(pm, nand_ecc_modes[i]))
-			return i;
+	for (eng_type = NAND_ECC_ENGINE_NONE;
+	     eng_type < ARRAY_SIZE(nand_ecc_engine_providers); eng_type++) {
+		if (!strcasecmp(pm, nand_ecc_engine_providers[eng_type]))
+			return eng_type;
+	}
 
 	/*
 	 * For backward compatibility we support few obsoleted values that don't
-	 * have their mappings into the nand_ecc_mode enum anymore (they were
-	 * merged with other enums).
+	 * have their mappings into the nand_ecc_engine_providers enum anymore
+	 * (they were merged with other enums).
 	 */
 	if (!strcasecmp(pm, "soft_bch"))
-		return NAND_ECC_SOFT;
+		return NAND_ECC_ENGINE_SOFT;
 
-	return -ENODEV;
+	if (!strcasecmp(pm, "hw_syndrome"))
+		return NAND_ECC_ENGINE_CONTROLLER;
+
+	return NAND_ECC_ENGINE_INVALID;
 }
 
 enum nand_ecc_placement of_get_nand_ecc_placement(struct device_node *np)
@@ -5109,8 +5116,9 @@ static bool of_get_nand_on_flash_bbt(struct device_node *np)
 static int nand_dt_init(struct nand_chip *chip)
 {
 	struct device_node *dn = nand_get_flash_node(chip);
+	enum nand_ecc_engine_type ecc_type;
 	enum nand_ecc_algo ecc_algo;
-	int ecc_mode, ecc_strength, ecc_step;
+	int ecc_strength, ecc_step;
 
 	if (!dn)
 		return 0;
@@ -5124,14 +5132,14 @@ static int nand_dt_init(struct nand_chip *chip)
 	if (of_get_nand_on_flash_bbt(dn))
 		chip->bbt_options |= NAND_BBT_USE_FLASH;
 
-	ecc_mode = of_get_nand_ecc_mode(dn);
+	ecc_type = of_get_nand_ecc_engine_type(dn);
 	ecc_algo = of_get_nand_ecc_algo(dn);
 	chip->ecc.placement = of_get_nand_ecc_placement(dn);
 	ecc_strength = of_get_nand_ecc_strength(dn);
 	ecc_step = of_get_nand_ecc_step_size(dn);
 
-	if (ecc_mode >= 0)
-		chip->ecc.mode = ecc_mode;
+	if (ecc_type != NAND_ECC_ENGINE_INVALID)
+		chip->ecc.engine_type = ecc_type;
 
 	if (ecc_algo != NAND_ECC_UNKNOWN)
 		chip->ecc.algo = ecc_algo;
@@ -5253,7 +5261,7 @@ static int nand_set_ecc_soft_ops(struct nand_chip *chip)
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct nand_ecc_ctrl *ecc = &chip->ecc;
 
-	if (WARN_ON(ecc->mode != NAND_ECC_SOFT))
+	if (WARN_ON(ecc->engine_type != NAND_ECC_ENGINE_SOFT))
 		return -EINVAL;
 
 	switch (ecc->algo) {
@@ -5718,7 +5726,8 @@ static int nand_scan_tail(struct nand_chip *chip)
 	 * If no default placement scheme is given, select an appropriate one.
 	 */
 	if (!mtd->ooblayout &&
-	    !(ecc->mode == NAND_ECC_SOFT && ecc->algo == NAND_ECC_BCH)) {
+	    !(ecc->engine_type == NAND_ECC_ENGINE_SOFT &&
+	      ecc->algo == NAND_ECC_BCH)) {
 		switch (mtd->oobsize) {
 		case 8:
 		case 16:
@@ -5736,7 +5745,7 @@ static int nand_scan_tail(struct nand_chip *chip)
 			 * page with ECC layout when ->oobsize <= 128 for
 			 * compatibility reasons.
 			 */
-			if (ecc->mode == NAND_ECC_NONE) {
+			if (ecc->engine_type == NAND_ECC_ENGINE_NONE) {
 				mtd_set_ooblayout(mtd,
 						&nand_ooblayout_lp_ops);
 				break;
@@ -5754,8 +5763,9 @@ static int nand_scan_tail(struct nand_chip *chip)
 	 * selected and we have 256 byte pagesize fallback to software ECC
 	 */
 
-	switch (ecc->mode) {
-	case NAND_ECC_HW:
+	switch (ecc->engine_type) {
+	case NAND_ECC_ENGINE_CONTROLLER:
+
 		switch (ecc->placement) {
 		case NAND_ECC_PLACEMENT_FREE:
 			/* Use standard hwecc read page function? */
@@ -5811,7 +5821,7 @@ static int nand_scan_tail(struct nand_chip *chip)
 			}
 			pr_warn("%d byte HW ECC not possible on %d byte page size, fallback to SW ECC\n",
 				ecc->size, mtd->writesize);
-			ecc->mode = NAND_ECC_SOFT;
+			ecc->engine_type = NAND_ECC_ENGINE_SOFT;
 			ecc->algo = NAND_ECC_HAMMING;
 			break;
 
@@ -5823,7 +5833,7 @@ static int nand_scan_tail(struct nand_chip *chip)
 		}
 		fallthrough;
 
-	case NAND_ECC_SOFT:
+	case NAND_ECC_ENGINE_SOFT:
 		ret = nand_set_ecc_soft_ops(chip);
 		if (ret) {
 			ret = -EINVAL;
@@ -5831,7 +5841,7 @@ static int nand_scan_tail(struct nand_chip *chip)
 		}
 		break;
 
-	case NAND_ECC_ON_DIE:
+	case NAND_ECC_ENGINE_ON_DIE:
 		if (!ecc->read_page || !ecc->write_page) {
 			WARN(1, "No ECC functions supplied; on-die ECC not possible\n");
 			ret = -EINVAL;
@@ -5843,8 +5853,8 @@ static int nand_scan_tail(struct nand_chip *chip)
 			ecc->write_oob = nand_write_oob_std;
 		break;
 
-	case NAND_ECC_NONE:
-		pr_warn("NAND_ECC_NONE selected by board driver. This is not recommended!\n");
+	case NAND_ECC_ENGINE_NONE:
+		pr_warn("NAND_ECC_ENGINE_NONE selected by board driver. This is not recommended!\n");
 		ecc->read_page = nand_read_page_raw;
 		ecc->write_page = nand_write_page_raw;
 		ecc->read_oob = nand_read_oob_std;
@@ -5857,7 +5867,7 @@ static int nand_scan_tail(struct nand_chip *chip)
 		break;
 
 	default:
-		WARN(1, "Invalid NAND_ECC_MODE %d\n", ecc->mode);
+		WARN(1, "Invalid NAND_ECC_MODE %d\n", ecc->engine_type);
 		ret = -EINVAL;
 		goto err_nand_manuf_cleanup;
 	}
@@ -5934,8 +5944,8 @@ static int nand_scan_tail(struct nand_chip *chip)
 	chip->pagecache.page = -1;
 
 	/* Large page NAND with SOFT_ECC should support subpage reads */
-	switch (ecc->mode) {
-	case NAND_ECC_SOFT:
+	switch (ecc->engine_type) {
+	case NAND_ECC_ENGINE_SOFT:
 		if (chip->page_shift > 9)
 			chip->options |= NAND_SUBPAGE_READ;
 		break;
@@ -6077,7 +6087,7 @@ EXPORT_SYMBOL(nand_scan_with_ids);
  */
 void nand_cleanup(struct nand_chip *chip)
 {
-	if (chip->ecc.mode == NAND_ECC_SOFT &&
+	if (chip->ecc.engine_type == NAND_ECC_ENGINE_SOFT &&
 	    chip->ecc.algo == NAND_ECC_BCH)
 		nand_bch_free((struct nand_bch_control *)chip->ecc.priv);
 
diff --git a/drivers/mtd/nand/raw/nand_micron.c b/drivers/mtd/nand/raw/nand_micron.c
index b2b047b245f4..fc7f69b65b2c 100644
--- a/drivers/mtd/nand/raw/nand_micron.c
+++ b/drivers/mtd/nand/raw/nand_micron.c
@@ -454,13 +454,13 @@ static int micron_nand_init(struct nand_chip *chip)
 	ondie = micron_supports_on_die_ecc(chip);
 
 	if (ondie == MICRON_ON_DIE_MANDATORY &&
-	    chip->ecc.mode != NAND_ECC_ON_DIE) {
+	    chip->ecc.engine_type != NAND_ECC_ENGINE_ON_DIE) {
 		pr_err("On-die ECC forcefully enabled, not supported\n");
 		ret = -EINVAL;
 		goto err_free_manuf_data;
 	}
 
-	if (chip->ecc.mode == NAND_ECC_ON_DIE) {
+	if (chip->ecc.engine_type == NAND_ECC_ENGINE_ON_DIE) {
 		if (ondie == MICRON_ON_DIE_UNSUPPORTED) {
 			pr_err("On-die ECC selected but not supported\n");
 			ret = -EINVAL;
diff --git a/drivers/mtd/nand/raw/nand_toshiba.c b/drivers/mtd/nand/raw/nand_toshiba.c
index ae069905d7e4..d36608e53bb0 100644
--- a/drivers/mtd/nand/raw/nand_toshiba.c
+++ b/drivers/mtd/nand/raw/nand_toshiba.c
@@ -211,7 +211,8 @@ static int toshiba_nand_init(struct nand_chip *chip)
 		chip->options |= NAND_BBM_FIRSTPAGE | NAND_BBM_SECONDPAGE;
 
 	/* Check that chip is BENAND and ECC mode is on-die */
-	if (nand_is_slc(chip) && chip->ecc.mode == NAND_ECC_ON_DIE &&
+	if (nand_is_slc(chip) &&
+	    chip->ecc.engine_type == NAND_ECC_ENGINE_ON_DIE &&
 	    chip->id.data[4] & TOSHIBA_NAND_ID4_IS_BENAND)
 		toshiba_nand_benand_init(chip);
 
diff --git a/drivers/mtd/nand/raw/nandsim.c b/drivers/mtd/nand/raw/nandsim.c
index 23cda67a3f53..cc6d99b93cd4 100644
--- a/drivers/mtd/nand/raw/nandsim.c
+++ b/drivers/mtd/nand/raw/nandsim.c
@@ -2206,7 +2206,7 @@ static int ns_attach_chip(struct nand_chip *chip)
 		return -EINVAL;
 	}
 
-	chip->ecc.mode = NAND_ECC_SOFT;
+	chip->ecc.engine_type = NAND_ECC_ENGINE_SOFT;
 	chip->ecc.algo = NAND_ECC_BCH;
 	chip->ecc.size = 512;
 	chip->ecc.strength = bch;
@@ -2245,7 +2245,7 @@ static int __init ns_init_module(void)
 	nsmtd       = nand_to_mtd(chip);
 	nand_set_controller_data(chip, (void *)ns);
 
-	chip->ecc.mode   = NAND_ECC_SOFT;
+	chip->ecc.engine_type = NAND_ECC_ENGINE_SOFT;
 	chip->ecc.algo   = NAND_ECC_HAMMING;
 	/* The NAND_SKIP_BBTSCAN option is necessary for 'overridesize' */
 	/* and 'badblocks' parameters to work */
diff --git a/drivers/mtd/nand/raw/ndfc.c b/drivers/mtd/nand/raw/ndfc.c
index d324396ab7ff..e387c7e175fd 100644
--- a/drivers/mtd/nand/raw/ndfc.c
+++ b/drivers/mtd/nand/raw/ndfc.c
@@ -149,7 +149,7 @@ static int ndfc_chip_init(struct ndfc_controller *ndfc,
 	chip->ecc.correct = nand_correct_data;
 	chip->ecc.hwctl = ndfc_enable_hwecc;
 	chip->ecc.calculate = ndfc_calculate_ecc;
-	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.engine_type = NAND_ECC_ENGINE_CONTROLLER;
 	chip->ecc.size = 256;
 	chip->ecc.bytes = 3;
 	chip->ecc.strength = 1;
diff --git a/drivers/mtd/nand/raw/omap2.c b/drivers/mtd/nand/raw/omap2.c
index ad77c112a78a..fecb9634bea5 100644
--- a/drivers/mtd/nand/raw/omap2.c
+++ b/drivers/mtd/nand/raw/omap2.c
@@ -884,8 +884,8 @@ static int omap_correct_data(struct nand_chip *chip, u_char *dat,
 	int stat = 0;
 
 	/* Ex NAND_ECC_HW12_2048 */
-	if ((info->nand.ecc.mode == NAND_ECC_HW) &&
-			(info->nand.ecc.size  == 2048))
+	if (info->nand.ecc.engine_type == NAND_ECC_ENGINE_CONTROLLER &&
+	    info->nand.ecc.size == 2048)
 		blockCnt = 4;
 	else
 		blockCnt = 1;
@@ -2006,11 +2006,11 @@ static int omap_nand_attach_chip(struct nand_chip *chip)
 		return -EINVAL;
 
 	/*
-	 * Bail out earlier to let NAND_ECC_SOFT code create its own
+	 * Bail out earlier to let NAND_ECC_ENGINE_SOFT code create its own
 	 * ooblayout instead of using ours.
 	 */
 	if (info->ecc_opt == OMAP_ECC_HAM1_CODE_SW) {
-		chip->ecc.mode = NAND_ECC_SOFT;
+		chip->ecc.engine_type = NAND_ECC_ENGINE_SOFT;
 		chip->ecc.algo = NAND_ECC_HAMMING;
 		return 0;
 	}
@@ -2019,7 +2019,7 @@ static int omap_nand_attach_chip(struct nand_chip *chip)
 	switch (info->ecc_opt) {
 	case OMAP_ECC_HAM1_CODE_HW:
 		dev_info(dev, "nand: using OMAP_ECC_HAM1_CODE_HW\n");
-		chip->ecc.mode		= NAND_ECC_HW;
+		chip->ecc.engine_type	= NAND_ECC_ENGINE_CONTROLLER;
 		chip->ecc.bytes		= 3;
 		chip->ecc.size		= 512;
 		chip->ecc.strength	= 1;
@@ -2036,7 +2036,7 @@ static int omap_nand_attach_chip(struct nand_chip *chip)
 
 	case OMAP_ECC_BCH4_CODE_HW_DETECTION_SW:
 		pr_info("nand: using OMAP_ECC_BCH4_CODE_HW_DETECTION_SW\n");
-		chip->ecc.mode		= NAND_ECC_HW;
+		chip->ecc.engine_type	= NAND_ECC_ENGINE_CONTROLLER;
 		chip->ecc.size		= 512;
 		chip->ecc.bytes		= 7;
 		chip->ecc.strength	= 4;
@@ -2056,7 +2056,7 @@ static int omap_nand_attach_chip(struct nand_chip *chip)
 
 	case OMAP_ECC_BCH4_CODE_HW:
 		pr_info("nand: using OMAP_ECC_BCH4_CODE_HW ECC scheme\n");
-		chip->ecc.mode		= NAND_ECC_HW;
+		chip->ecc.engine_type	= NAND_ECC_ENGINE_CONTROLLER;
 		chip->ecc.size		= 512;
 		/* 14th bit is kept reserved for ROM-code compatibility */
 		chip->ecc.bytes		= 7 + 1;
@@ -2078,7 +2078,7 @@ static int omap_nand_attach_chip(struct nand_chip *chip)
 
 	case OMAP_ECC_BCH8_CODE_HW_DETECTION_SW:
 		pr_info("nand: using OMAP_ECC_BCH8_CODE_HW_DETECTION_SW\n");
-		chip->ecc.mode		= NAND_ECC_HW;
+		chip->ecc.engine_type	= NAND_ECC_ENGINE_CONTROLLER;
 		chip->ecc.size		= 512;
 		chip->ecc.bytes		= 13;
 		chip->ecc.strength	= 8;
@@ -2098,7 +2098,7 @@ static int omap_nand_attach_chip(struct nand_chip *chip)
 
 	case OMAP_ECC_BCH8_CODE_HW:
 		pr_info("nand: using OMAP_ECC_BCH8_CODE_HW ECC scheme\n");
-		chip->ecc.mode		= NAND_ECC_HW;
+		chip->ecc.engine_type	= NAND_ECC_ENGINE_CONTROLLER;
 		chip->ecc.size		= 512;
 		/* 14th bit is kept reserved for ROM-code compatibility */
 		chip->ecc.bytes		= 13 + 1;
@@ -2121,7 +2121,7 @@ static int omap_nand_attach_chip(struct nand_chip *chip)
 
 	case OMAP_ECC_BCH16_CODE_HW:
 		pr_info("Using OMAP_ECC_BCH16_CODE_HW ECC scheme\n");
-		chip->ecc.mode		= NAND_ECC_HW;
+		chip->ecc.engine_type	= NAND_ECC_ENGINE_CONTROLLER;
 		chip->ecc.size		= 512;
 		chip->ecc.bytes		= 26;
 		chip->ecc.strength	= 16;
diff --git a/drivers/mtd/nand/raw/orion_nand.c b/drivers/mtd/nand/raw/orion_nand.c
index d27b39a7223c..9c3d530fc565 100644
--- a/drivers/mtd/nand/raw/orion_nand.c
+++ b/drivers/mtd/nand/raw/orion_nand.c
@@ -139,7 +139,7 @@ static int __init orion_nand_probe(struct platform_device *pdev)
 	nc->legacy.IO_ADDR_R = nc->legacy.IO_ADDR_W = io_base;
 	nc->legacy.cmd_ctrl = orion_nand_cmd_ctrl;
 	nc->legacy.read_buf = orion_nand_read_buf;
-	nc->ecc.mode = NAND_ECC_SOFT;
+	nc->ecc.engine_type = NAND_ECC_ENGINE_SOFT;
 	nc->ecc.algo = NAND_ECC_HAMMING;
 
 	if (board->chip_delay)
diff --git a/drivers/mtd/nand/raw/pasemi_nand.c b/drivers/mtd/nand/raw/pasemi_nand.c
index 9cfe7395172a..e896b70ca58f 100644
--- a/drivers/mtd/nand/raw/pasemi_nand.c
+++ b/drivers/mtd/nand/raw/pasemi_nand.c
@@ -132,7 +132,7 @@ static int pasemi_nand_probe(struct platform_device *ofdev)
 	chip->legacy.read_buf = pasemi_read_buf;
 	chip->legacy.write_buf = pasemi_write_buf;
 	chip->legacy.chip_delay = 0;
-	chip->ecc.mode = NAND_ECC_SOFT;
+	chip->ecc.engine_type = NAND_ECC_ENGINE_SOFT;
 	chip->ecc.algo = NAND_ECC_HAMMING;
 
 	/* Enable the following for a flash based bad block table */
diff --git a/drivers/mtd/nand/raw/plat_nand.c b/drivers/mtd/nand/raw/plat_nand.c
index dc0f3074ddbf..a9e949096096 100644
--- a/drivers/mtd/nand/raw/plat_nand.c
+++ b/drivers/mtd/nand/raw/plat_nand.c
@@ -66,7 +66,7 @@ static int plat_nand_probe(struct platform_device *pdev)
 	data->chip.options |= pdata->chip.options;
 	data->chip.bbt_options |= pdata->chip.bbt_options;
 
-	data->chip.ecc.mode = NAND_ECC_SOFT;
+	data->chip.ecc.engine_type = NAND_ECC_ENGINE_SOFT;
 	data->chip.ecc.algo = NAND_ECC_HAMMING;
 
 	platform_set_drvdata(pdev, data);
diff --git a/drivers/mtd/nand/raw/qcom_nandc.c b/drivers/mtd/nand/raw/qcom_nandc.c
index 9ab22c5d4166..71bb0bdec126 100644
--- a/drivers/mtd/nand/raw/qcom_nandc.c
+++ b/drivers/mtd/nand/raw/qcom_nandc.c
@@ -2548,7 +2548,7 @@ static int qcom_nand_attach_chip(struct nand_chip *chip)
 	ecc->write_page_raw	= qcom_nandc_write_page_raw;
 	ecc->write_oob		= qcom_nandc_write_oob;
 
-	ecc->mode = NAND_ECC_HW;
+	ecc->engine_type = NAND_ECC_ENGINE_CONTROLLER;
 
 	mtd_set_ooblayout(mtd, &qcom_nand_ooblayout_ops);
 
diff --git a/drivers/mtd/nand/raw/r852.c b/drivers/mtd/nand/raw/r852.c
index 764715bae6a6..5faf98705881 100644
--- a/drivers/mtd/nand/raw/r852.c
+++ b/drivers/mtd/nand/raw/r852.c
@@ -857,7 +857,7 @@ static int  r852_probe(struct pci_dev *pci_dev, const struct pci_device_id *id)
 	chip->legacy.write_buf = r852_write_buf;
 
 	/* ecc */
-	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.engine_type = NAND_ECC_ENGINE_CONTROLLER;
 	chip->ecc.placement = NAND_ECC_PLACEMENT_INTERLEAVED;
 	chip->ecc.size = R852_DMA_LEN;
 	chip->ecc.bytes = SM_OOB_SIZE;
diff --git a/drivers/mtd/nand/raw/s3c2410.c b/drivers/mtd/nand/raw/s3c2410.c
index 0009c1820e21..4499e2020c24 100644
--- a/drivers/mtd/nand/raw/s3c2410.c
+++ b/drivers/mtd/nand/raw/s3c2410.c
@@ -903,7 +903,7 @@ static void s3c2410_nand_init_chip(struct s3c2410_nand_info *info,
 	nmtd->info	   = info;
 	nmtd->set	   = set;
 
-	chip->ecc.mode = info->platform->ecc_mode;
+	chip->ecc.engine_type = info->platform->engine_type;
 
 	/*
 	 * If you use u-boot BBT creation code, specifying this flag will
@@ -928,24 +928,24 @@ static int s3c2410_nand_attach_chip(struct nand_chip *chip)
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct s3c2410_nand_info *info = s3c2410_nand_mtd_toinfo(mtd);
 
-	switch (chip->ecc.mode) {
+	switch (chip->ecc.engine_type) {
 
-	case NAND_ECC_NONE:
+	case NAND_ECC_ENGINE_NONE:
 		dev_info(info->device, "ECC disabled\n");
 		break;
 
-	case NAND_ECC_SOFT:
+	case NAND_ECC_ENGINE_SOFT:
 		/*
-		 * This driver expects Hamming based ECC when ecc_mode is set
-		 * to NAND_ECC_SOFT. Force ecc.algo to NAND_ECC_HAMMING to
-		 * avoid adding an extra ecc_algo field to
+		 * This driver expects Hamming based ECC when engine_type is set
+		 * to NAND_ECC_ENGINE_SOFT. Force ecc.algo to NAND_ECC_HAMMING
+		 * to avoid adding an extra ecc_algo field to
 		 * s3c2410_platform_nand.
 		 */
 		chip->ecc.algo = NAND_ECC_HAMMING;
 		dev_info(info->device, "soft ECC\n");
 		break;
 
-	case NAND_ECC_HW:
+	case NAND_ECC_ENGINE_CONTROLLER:
 		chip->ecc.calculate = s3c2410_nand_calculate_ecc;
 		chip->ecc.correct   = s3c2410_nand_correct_data;
 		chip->ecc.strength  = 1;
diff --git a/drivers/mtd/nand/raw/sh_flctl.c b/drivers/mtd/nand/raw/sh_flctl.c
index 058e99d0cbcf..cf87436a62d9 100644
--- a/drivers/mtd/nand/raw/sh_flctl.c
+++ b/drivers/mtd/nand/raw/sh_flctl.c
@@ -1039,12 +1039,12 @@ static int flctl_chip_attach_chip(struct nand_chip *chip)
 		chip->ecc.strength = 4;
 		chip->ecc.read_page = flctl_read_page_hwecc;
 		chip->ecc.write_page = flctl_write_page_hwecc;
-		chip->ecc.mode = NAND_ECC_HW;
+		chip->ecc.engine_type = NAND_ECC_ENGINE_CONTROLLER;
 
 		/* 4 symbols ECC enabled */
 		flctl->flcmncr_base |= _4ECCEN;
 	} else {
-		chip->ecc.mode = NAND_ECC_SOFT;
+		chip->ecc.engine_type = NAND_ECC_ENGINE_SOFT;
 		chip->ecc.algo = NAND_ECC_HAMMING;
 	}
 
diff --git a/drivers/mtd/nand/raw/sharpsl.c b/drivers/mtd/nand/raw/sharpsl.c
index b47a9eaff89b..8a280b2e8e90 100644
--- a/drivers/mtd/nand/raw/sharpsl.c
+++ b/drivers/mtd/nand/raw/sharpsl.c
@@ -157,7 +157,7 @@ static int sharpsl_nand_probe(struct platform_device *pdev)
 	/* 15 us command delay time */
 	this->legacy.chip_delay = 15;
 	/* set eccmode using hardware ECC */
-	this->ecc.mode = NAND_ECC_HW;
+	this->ecc.engine_type = NAND_ECC_ENGINE_CONTROLLER;
 	this->ecc.size = 256;
 	this->ecc.bytes = 3;
 	this->ecc.strength = 1;
diff --git a/drivers/mtd/nand/raw/socrates_nand.c b/drivers/mtd/nand/raw/socrates_nand.c
index 20f40c0e812c..1b96840b6025 100644
--- a/drivers/mtd/nand/raw/socrates_nand.c
+++ b/drivers/mtd/nand/raw/socrates_nand.c
@@ -153,7 +153,8 @@ static int socrates_nand_probe(struct platform_device *ofdev)
 	nand_chip->legacy.read_buf = socrates_nand_read_buf;
 	nand_chip->legacy.dev_ready = socrates_nand_device_ready;
 
-	nand_chip->ecc.mode = NAND_ECC_SOFT;	/* enable ECC */
+	/* enable ECC */
+	nand_chip->ecc.engine_type = NAND_ECC_ENGINE_SOFT;
 	nand_chip->ecc.algo = NAND_ECC_HAMMING;
 
 	/* TODO: I have no idea what real delay is. */
diff --git a/drivers/mtd/nand/raw/stm32_fmc2_nand.c b/drivers/mtd/nand/raw/stm32_fmc2_nand.c
index 30083e52b2fc..d1275d3b15ad 100644
--- a/drivers/mtd/nand/raw/stm32_fmc2_nand.c
+++ b/drivers/mtd/nand/raw/stm32_fmc2_nand.c
@@ -1736,14 +1736,15 @@ static int stm32_fmc2_attach_chip(struct nand_chip *chip)
 	int ret;
 
 	/*
-	 * Only NAND_ECC_HW mode is actually supported
+	 * Only NAND_ECC_ENGINE_CONTROLLER mode is actually supported
 	 * Hamming => ecc.strength = 1
 	 * BCH4 => ecc.strength = 4
 	 * BCH8 => ecc.strength = 8
 	 * ECC sector size = 512
 	 */
-	if (chip->ecc.mode != NAND_ECC_HW) {
-		dev_err(fmc2->dev, "nand_ecc_mode is not well defined in the DT\n");
+	if (chip->ecc.engine_type != NAND_ECC_ENGINE_CONTROLLER) {
+		dev_err(fmc2->dev,
+			"nand_ecc_engine_type is not well defined in the DT\n");
 		return -EINVAL;
 	}
 
@@ -1953,7 +1954,7 @@ static int stm32_fmc2_probe(struct platform_device *pdev)
 			 NAND_USES_DMA;
 
 	/* Default ECC settings */
-	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.engine_type = NAND_ECC_ENGINE_CONTROLLER;
 	chip->ecc.size = FMC2_ECC_STEP_SIZE;
 	chip->ecc.strength = FMC2_ECC_BCH8;
 
diff --git a/drivers/mtd/nand/raw/sunxi_nand.c b/drivers/mtd/nand/raw/sunxi_nand.c
index 26d862213cac..1239107e16cc 100644
--- a/drivers/mtd/nand/raw/sunxi_nand.c
+++ b/drivers/mtd/nand/raw/sunxi_nand.c
@@ -1575,7 +1575,7 @@ static int sunxi_nand_ooblayout_free(struct mtd_info *mtd, int section,
 	 * only have 2 bytes available in the first user data
 	 * section.
 	 */
-	if (!section && ecc->mode == NAND_ECC_HW) {
+	if (!section && ecc->engine_type == NAND_ECC_ENGINE_CONTROLLER) {
 		oobregion->offset = 2;
 		oobregion->length = 2;
 
@@ -1720,11 +1720,11 @@ static int sunxi_nand_hw_ecc_ctrl_init(struct nand_chip *nand,
 
 static void sunxi_nand_ecc_cleanup(struct nand_ecc_ctrl *ecc)
 {
-	switch (ecc->mode) {
-	case NAND_ECC_HW:
+	switch (ecc->engine_type) {
+	case NAND_ECC_ENGINE_CONTROLLER:
 		sunxi_nand_hw_ecc_ctrl_cleanup(ecc);
 		break;
-	case NAND_ECC_NONE:
+	case NAND_ECC_ENGINE_NONE:
 	default:
 		break;
 	}
@@ -1752,14 +1752,14 @@ static int sunxi_nand_attach_chip(struct nand_chip *nand)
 	if (!ecc->size || !ecc->strength)
 		return -EINVAL;
 
-	switch (ecc->mode) {
-	case NAND_ECC_HW:
+	switch (ecc->engine_type) {
+	case NAND_ECC_ENGINE_CONTROLLER:
 		ret = sunxi_nand_hw_ecc_ctrl_init(nand, ecc, np);
 		if (ret)
 			return ret;
 		break;
-	case NAND_ECC_NONE:
-	case NAND_ECC_SOFT:
+	case NAND_ECC_ENGINE_NONE:
+	case NAND_ECC_ENGINE_SOFT:
 		break;
 	default:
 		return -EINVAL;
@@ -1991,7 +1991,7 @@ static int sunxi_nand_chip_init(struct device *dev, struct sunxi_nfc *nfc,
 	 * Set the ECC mode to the default value in case nothing is specified
 	 * in the DT.
 	 */
-	nand->ecc.mode = NAND_ECC_HW;
+	nand->ecc.engine_type = NAND_ECC_ENGINE_CONTROLLER;
 	nand_set_flash_node(nand, np);
 
 	mtd = nand_to_mtd(nand);
diff --git a/drivers/mtd/nand/raw/tango_nand.c b/drivers/mtd/nand/raw/tango_nand.c
index b92de603e6db..bfbe71f65523 100644
--- a/drivers/mtd/nand/raw/tango_nand.c
+++ b/drivers/mtd/nand/raw/tango_nand.c
@@ -511,7 +511,7 @@ static int tango_attach_chip(struct nand_chip *chip)
 {
 	struct nand_ecc_ctrl *ecc = &chip->ecc;
 
-	ecc->mode = NAND_ECC_HW;
+	ecc->engine_type = NAND_ECC_ENGINE_CONTROLLER;
 	ecc->algo = NAND_ECC_BCH;
 	ecc->bytes = DIV_ROUND_UP(ecc->strength * FIELD_ORDER, BITS_PER_BYTE);
 
diff --git a/drivers/mtd/nand/raw/tegra_nand.c b/drivers/mtd/nand/raw/tegra_nand.c
index f9d046b2cd3b..feb26494443e 100644
--- a/drivers/mtd/nand/raw/tegra_nand.c
+++ b/drivers/mtd/nand/raw/tegra_nand.c
@@ -916,7 +916,7 @@ static int tegra_nand_attach_chip(struct nand_chip *chip)
 	if (chip->bbt_options & NAND_BBT_USE_FLASH)
 		chip->bbt_options |= NAND_BBT_NO_OOB;
 
-	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.engine_type = NAND_ECC_ENGINE_CONTROLLER;
 	chip->ecc.size = 512;
 	chip->ecc.steps = mtd->writesize / chip->ecc.size;
 	if (chip->base.eccreq.step_size != 512) {
diff --git a/drivers/mtd/nand/raw/tmio_nand.c b/drivers/mtd/nand/raw/tmio_nand.c
index db030f1701ee..c299ea6a611b 100644
--- a/drivers/mtd/nand/raw/tmio_nand.c
+++ b/drivers/mtd/nand/raw/tmio_nand.c
@@ -410,7 +410,7 @@ static int tmio_probe(struct platform_device *dev)
 	nand_chip->legacy.read_buf = tmio_nand_read_buf;
 
 	/* set eccmode using hardware ECC */
-	nand_chip->ecc.mode = NAND_ECC_HW;
+	nand_chip->ecc.engine_type = NAND_ECC_ENGINE_CONTROLLER;
 	nand_chip->ecc.size = 512;
 	nand_chip->ecc.bytes = 6;
 	nand_chip->ecc.strength = 2;
diff --git a/drivers/mtd/nand/raw/txx9ndfmc.c b/drivers/mtd/nand/raw/txx9ndfmc.c
index 2642d5bb3241..cf9c4bd56e1a 100644
--- a/drivers/mtd/nand/raw/txx9ndfmc.c
+++ b/drivers/mtd/nand/raw/txx9ndfmc.c
@@ -329,7 +329,7 @@ static int __init txx9ndfmc_probe(struct platform_device *dev)
 		chip->ecc.calculate = txx9ndfmc_calculate_ecc;
 		chip->ecc.correct = txx9ndfmc_correct_data;
 		chip->ecc.hwctl = txx9ndfmc_enable_hwecc;
-		chip->ecc.mode = NAND_ECC_HW;
+		chip->ecc.engine_type = NAND_ECC_ENGINE_CONTROLLER;
 		chip->ecc.strength = 1;
 		chip->legacy.chip_delay = 100;
 		chip->controller = &drvdata->controller;
diff --git a/drivers/mtd/nand/raw/vf610_nfc.c b/drivers/mtd/nand/raw/vf610_nfc.c
index bd9e16de78a2..a9fa1ae22634 100644
--- a/drivers/mtd/nand/raw/vf610_nfc.c
+++ b/drivers/mtd/nand/raw/vf610_nfc.c
@@ -732,7 +732,7 @@ static void vf610_nfc_init_controller(struct vf610_nfc *nfc)
 	else
 		vf610_nfc_clear(nfc, NFC_FLASH_CONFIG, CONFIG_16BIT);
 
-	if (nfc->chip.ecc.mode == NAND_ECC_HW) {
+	if (nfc->chip.ecc.engine_type == NAND_ECC_ENGINE_CONTROLLER) {
 		/* Set ECC status offset in SRAM */
 		vf610_nfc_set_field(nfc, NFC_FLASH_CONFIG,
 				    CONFIG_ECC_SRAM_ADDR_MASK,
@@ -761,7 +761,7 @@ static int vf610_nfc_attach_chip(struct nand_chip *chip)
 		return -ENXIO;
 	}
 
-	if (chip->ecc.mode != NAND_ECC_HW)
+	if (chip->ecc.engine_type != NAND_ECC_ENGINE_CONTROLLER)
 		return 0;
 
 	if (mtd->writesize != PAGE_2K && mtd->oobsize < 64) {
diff --git a/drivers/mtd/nand/raw/xway_nand.c b/drivers/mtd/nand/raw/xway_nand.c
index 834f794816a9..36dea82063bd 100644
--- a/drivers/mtd/nand/raw/xway_nand.c
+++ b/drivers/mtd/nand/raw/xway_nand.c
@@ -180,7 +180,7 @@ static int xway_nand_probe(struct platform_device *pdev)
 	data->chip.legacy.read_byte = xway_read_byte;
 	data->chip.legacy.chip_delay = 30;
 
-	data->chip.ecc.mode = NAND_ECC_SOFT;
+	data->chip.ecc.engine_type = NAND_ECC_ENGINE_SOFT;
 	data->chip.ecc.algo = NAND_ECC_HAMMING;
 
 	platform_set_drvdata(pdev, data);
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 0c2cfe4a5928..ce7f1f301bf6 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -338,7 +338,7 @@ static const struct nand_ecc_caps __name = {			\
 
 /**
  * struct nand_ecc_ctrl - Control structure for ECC
- * @mode:	ECC mode
+ * @engine_type: ECC engine type
  * @placement:	OOB bytes placement
  * @algo:	ECC algorithm
  * @steps:	number of ECC steps per page
@@ -391,7 +391,7 @@ static const struct nand_ecc_caps __name = {			\
  * @write_oob:	function to write chip OOB data
  */
 struct nand_ecc_ctrl {
-	enum nand_ecc_mode mode;
+	enum nand_ecc_engine_type engine_type;
 	enum nand_ecc_placement placement;
 	enum nand_ecc_algo algo;
 	int steps;
diff --git a/include/linux/platform_data/mtd-davinci.h b/include/linux/platform_data/mtd-davinci.h
index 3383101c233b..e632f392291a 100644
--- a/include/linux/platform_data/mtd-davinci.h
+++ b/include/linux/platform_data/mtd-davinci.h
@@ -60,16 +60,16 @@ struct davinci_nand_pdata {		/* platform_data */
 	struct mtd_partition	*parts;
 	unsigned		nr_parts;
 
-	/* none  == NAND_ECC_NONE (strongly *not* advised!!)
-	 * soft  == NAND_ECC_SOFT
-	 * else  == NAND_ECC_HW, according to ecc_bits
+	/* none  == NAND_ECC_ENGINE_NONE (strongly *not* advised!!)
+	 * soft  == NAND_ECC_ENGINE_SOFT
+	 * else  == NAND_ECC_ENGINE_CONTROLLER, according to ecc_bits
 	 *
 	 * All DaVinci-family chips support 1-bit hardware ECC.
 	 * Newer ones also support 4-bit ECC, but are awkward
 	 * using it with large page chips.
 	 */
-	enum nand_ecc_mode	ecc_mode;
-	enum nand_ecc_placement	ecc_placement;
+	enum nand_ecc_engine_type engine_type;
+	enum nand_ecc_placement ecc_placement;
 	u8			ecc_bits;
 
 	/* e.g. NAND_BUSWIDTH_16 */
diff --git a/include/linux/platform_data/mtd-nand-s3c2410.h b/include/linux/platform_data/mtd-nand-s3c2410.h
index 08675b16f9e1..25390fc3e795 100644
--- a/include/linux/platform_data/mtd-nand-s3c2410.h
+++ b/include/linux/platform_data/mtd-nand-s3c2410.h
@@ -49,7 +49,7 @@ struct s3c2410_platform_nand {
 
 	unsigned int	ignore_unset_ecc:1;
 
-	enum nand_ecc_mode	ecc_mode;
+	enum nand_ecc_engine_type engine_type;
 
 	int			nr_sets;
 	struct s3c2410_nand_set *sets;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
