Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51DC0B818D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 21:40:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jNbims0kKmgcpc9TaUCTXPzspEwx94MeiSoP1KtLod8=; b=EYEBKqWofuWZBN
	YIFpmzfwlC503Mk/zRxKn9XbbN3XvDgVbeRN/7HwHP1RaMNuRKazp+D/CJpBdSyrbtRRxr9Zf373t
	z+jcz6xU91yZZrz+7rpqlOj6/18djX9ae32zpSo0xwhdTN07r6Axibhaoefh2/yarM3pvXm9vUDCH
	cnJfmOhBY9IP7OMg9mSAWBkSuHSU2EGSVjggK6Oa5OHeV01A3r6uK79CjNalWFfEm24DTQu28Yh/s
	Q31dRoWAz+IxG1pl+wFqcWZ3ahAatXfL8WTV0qgy2NE9ZK/rbZnPg0Y5MMbiW1K+U23DvU2O41W8+
	iK6SaF/XLNXs/BVNm1JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB2IF-00084P-MS; Thu, 19 Sep 2019 19:40:43 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB29p-0001vl-Qb; Thu, 19 Sep 2019 19:32:07 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 2938A240007;
 Thu, 19 Sep 2019 19:31:58 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH v3 06/40] mtd: rawnand: Use the new ECC engine type enumeration
Date: Thu, 19 Sep 2019 21:31:06 +0200
Message-Id: <20190919193141.7865-7-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190919193141.7865-1-miquel.raynal@bootlin.com>
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_123202_394889_F14E4236 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
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
Cc: Tudor Ambarus <tudor.ambarus@microchip.com>,
 Julien Su <juliensu@mxic.com.tw>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Paul Cercueil <paul@crapouillou.net>,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
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
 drivers/mtd/nand/raw/atmel/nand-controller.c  | 10 +--
 drivers/mtd/nand/raw/au1550nd.c               |  2 +-
 .../mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c  |  2 +-
 drivers/mtd/nand/raw/brcmnand/brcmnand.c      |  4 +-
 drivers/mtd/nand/raw/cafe_nand.c              |  2 +-
 drivers/mtd/nand/raw/cmx270_nand.c            |  2 +-
 drivers/mtd/nand/raw/cs553x_nand.c            |  2 +-
 drivers/mtd/nand/raw/davinci_nand.c           | 16 ++---
 drivers/mtd/nand/raw/denali.c                 |  2 +-
 drivers/mtd/nand/raw/diskonchip.c             |  2 +-
 drivers/mtd/nand/raw/fsl_elbc_nand.c          | 12 ++--
 drivers/mtd/nand/raw/fsl_ifc_nand.c           |  6 +-
 drivers/mtd/nand/raw/fsl_upm.c                |  2 +-
 drivers/mtd/nand/raw/fsmc_nand.c              | 10 +--
 drivers/mtd/nand/raw/gpio.c                   |  2 +-
 drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c    |  2 +-
 drivers/mtd/nand/raw/hisi504_nand.c           |  6 +-
 .../mtd/nand/raw/ingenic/ingenic_nand_drv.c   | 10 +--
 drivers/mtd/nand/raw/ingenic/jz4740_nand.c    |  2 +-
 drivers/mtd/nand/raw/lpc32xx_mlc.c            |  2 +-
 drivers/mtd/nand/raw/lpc32xx_slc.c            |  2 +-
 drivers/mtd/nand/raw/marvell_nand.c           | 14 ++--
 drivers/mtd/nand/raw/meson_nand.c             |  2 +-
 drivers/mtd/nand/raw/mpc5121_nfc.c            |  2 +-
 drivers/mtd/nand/raw/mtk_nand.c               |  4 +-
 drivers/mtd/nand/raw/mxc_nand.c               | 20 +++---
 drivers/mtd/nand/raw/nand_base.c              | 65 +++++++++++++------
 drivers/mtd/nand/raw/nand_micron.c            |  4 +-
 drivers/mtd/nand/raw/nand_toshiba.c           |  2 +-
 drivers/mtd/nand/raw/nandsim.c                |  4 +-
 drivers/mtd/nand/raw/ndfc.c                   |  2 +-
 drivers/mtd/nand/raw/nuc900_nand.c            |  2 +-
 drivers/mtd/nand/raw/omap2.c                  | 18 ++---
 drivers/mtd/nand/raw/orion_nand.c             |  2 +-
 drivers/mtd/nand/raw/pasemi_nand.c            |  2 +-
 drivers/mtd/nand/raw/plat_nand.c              |  2 +-
 drivers/mtd/nand/raw/qcom_nandc.c             |  2 +-
 drivers/mtd/nand/raw/r852.c                   |  2 +-
 drivers/mtd/nand/raw/s3c2410.c                |  8 +--
 drivers/mtd/nand/raw/sh_flctl.c               |  4 +-
 drivers/mtd/nand/raw/sharpsl.c                |  2 +-
 drivers/mtd/nand/raw/socrates_nand.c          |  2 +-
 drivers/mtd/nand/raw/stm32_fmc2_nand.c        |  8 +--
 drivers/mtd/nand/raw/sunxi_nand.c             | 14 ++--
 drivers/mtd/nand/raw/tango_nand.c             |  2 +-
 drivers/mtd/nand/raw/tegra_nand.c             |  2 +-
 drivers/mtd/nand/raw/tmio_nand.c              |  2 +-
 drivers/mtd/nand/raw/txx9ndfmc.c              |  2 +-
 drivers/mtd/nand/raw/vf610_nfc.c              |  4 +-
 drivers/mtd/nand/raw/xway_nand.c              |  2 +-
 include/linux/mtd/rawnand.h                   |  2 +-
 include/linux/platform_data/mtd-davinci.h     |  8 +--
 .../linux/platform_data/mtd-nand-s3c2410.h    |  2 +-
 79 files changed, 196 insertions(+), 169 deletions(-)

diff --git a/arch/arm/mach-davinci/board-da830-evm.c b/arch/arm/mach-davinci/board-da830-evm.c
index a273ab25c668..6e1984289924 100644
--- a/arch/arm/mach-davinci/board-da830-evm.c
+++ b/arch/arm/mach-davinci/board-da830-evm.c
@@ -306,7 +306,7 @@ static struct davinci_nand_pdata da830_evm_nand_pdata = {
 	.core_chipsel	= 1,
 	.parts		= da830_evm_nand_partitions,
 	.nr_parts	= ARRAY_SIZE(da830_evm_nand_partitions),
-	.ecc_mode	= NAND_ECC_HW,
+	.ecc_mode	= NAND_HW_ECC_ENGINE,
 	.ecc_bits	= 4,
 	.bbt_options	= NAND_BBT_USE_FLASH,
 	.bbt_td		= &da830_evm_nand_bbt_main_descr,
diff --git a/arch/arm/mach-davinci/board-da850-evm.c b/arch/arm/mach-davinci/board-da850-evm.c
index 0628e7d7dcf3..68eecf3d70d5 100644
--- a/arch/arm/mach-davinci/board-da850-evm.c
+++ b/arch/arm/mach-davinci/board-da850-evm.c
@@ -238,7 +238,7 @@ static struct davinci_nand_pdata da850_evm_nandflash_data = {
 	.core_chipsel	= 1,
 	.parts		= da850_evm_nandflash_partition,
 	.nr_parts	= ARRAY_SIZE(da850_evm_nandflash_partition),
-	.ecc_mode	= NAND_ECC_HW,
+	.ecc_mode	= NAND_HW_ECC_ENGINE,
 	.ecc_bits	= 4,
 	.bbt_options	= NAND_BBT_USE_FLASH,
 	.timing		= &da850_evm_nandflash_timing,
diff --git a/arch/arm/mach-davinci/board-dm355-evm.c b/arch/arm/mach-davinci/board-dm355-evm.c
index 5113273fda69..7490e7fb2a47 100644
--- a/arch/arm/mach-davinci/board-dm355-evm.c
+++ b/arch/arm/mach-davinci/board-dm355-evm.c
@@ -82,7 +82,7 @@ static struct davinci_nand_pdata davinci_nand_data = {
 	.mask_chipsel		= BIT(14),
 	.parts			= davinci_nand_partitions,
 	.nr_parts		= ARRAY_SIZE(davinci_nand_partitions),
-	.ecc_mode		= NAND_ECC_HW,
+	.ecc_mode		= NAND_HW_ECC_ENGINE,
 	.bbt_options		= NAND_BBT_USE_FLASH,
 	.ecc_bits		= 4,
 };
diff --git a/arch/arm/mach-davinci/board-dm355-leopard.c b/arch/arm/mach-davinci/board-dm355-leopard.c
index 99f4388e8864..e4bd6ed226ea 100644
--- a/arch/arm/mach-davinci/board-dm355-leopard.c
+++ b/arch/arm/mach-davinci/board-dm355-leopard.c
@@ -76,7 +76,7 @@ static struct davinci_nand_pdata davinci_nand_data = {
 	.mask_chipsel		= BIT(14),
 	.parts			= davinci_nand_partitions,
 	.nr_parts		= ARRAY_SIZE(davinci_nand_partitions),
-	.ecc_mode		= NAND_ECC_HW,
+	.ecc_mode		= NAND_HW_ECC_ENGINE,
 	.ecc_oob_placement	= NAND_ECC_SYNDROME_OOB_PLACEMENT,
 	.ecc_bits		= 4,
 	.bbt_options		= NAND_BBT_USE_FLASH,
diff --git a/arch/arm/mach-davinci/board-dm365-evm.c b/arch/arm/mach-davinci/board-dm365-evm.c
index 150a36f333df..f92dbe2a20a3 100644
--- a/arch/arm/mach-davinci/board-dm365-evm.c
+++ b/arch/arm/mach-davinci/board-dm365-evm.c
@@ -144,7 +144,7 @@ static struct davinci_nand_pdata davinci_nand_data = {
 	.mask_chipsel		= BIT(14),
 	.parts			= davinci_nand_partitions,
 	.nr_parts		= ARRAY_SIZE(davinci_nand_partitions),
-	.ecc_mode		= NAND_ECC_HW,
+	.ecc_mode		= NAND_HW_ECC_ENGINE,
 	.bbt_options		= NAND_BBT_USE_FLASH,
 	.ecc_bits		= 4,
 };
diff --git a/arch/arm/mach-davinci/board-dm644x-evm.c b/arch/arm/mach-davinci/board-dm644x-evm.c
index 9d87d4e440ea..778b0199c951 100644
--- a/arch/arm/mach-davinci/board-dm644x-evm.c
+++ b/arch/arm/mach-davinci/board-dm644x-evm.c
@@ -160,7 +160,7 @@ static struct davinci_nand_pdata davinci_evm_nandflash_data = {
 	.core_chipsel	= 0,
 	.parts		= davinci_evm_nandflash_partition,
 	.nr_parts	= ARRAY_SIZE(davinci_evm_nandflash_partition),
-	.ecc_mode	= NAND_ECC_HW,
+	.ecc_mode	= NAND_HW_ECC_ENGINE,
 	.ecc_bits	= 1,
 	.bbt_options	= NAND_BBT_USE_FLASH,
 	.timing		= &davinci_evm_nandflash_timing,
diff --git a/arch/arm/mach-davinci/board-dm646x-evm.c b/arch/arm/mach-davinci/board-dm646x-evm.c
index 4600b617f9b4..e993c680985b 100644
--- a/arch/arm/mach-davinci/board-dm646x-evm.c
+++ b/arch/arm/mach-davinci/board-dm646x-evm.c
@@ -91,7 +91,7 @@ static struct davinci_nand_pdata davinci_nand_data = {
 	.mask_ale 		= 0x40000,
 	.parts			= davinci_nand_partitions,
 	.nr_parts		= ARRAY_SIZE(davinci_nand_partitions),
-	.ecc_mode		= NAND_ECC_HW,
+	.ecc_mode		= NAND_HW_ECC_ENGINE,
 	.ecc_bits		= 1,
 	.options		= 0,
 };
diff --git a/arch/arm/mach-davinci/board-mityomapl138.c b/arch/arm/mach-davinci/board-mityomapl138.c
index dfce421c0579..4fac0bda8d5b 100644
--- a/arch/arm/mach-davinci/board-mityomapl138.c
+++ b/arch/arm/mach-davinci/board-mityomapl138.c
@@ -432,7 +432,7 @@ static struct davinci_nand_pdata mityomapl138_nandflash_data = {
 	.core_chipsel	= 1,
 	.parts		= mityomapl138_nandflash_partition,
 	.nr_parts	= ARRAY_SIZE(mityomapl138_nandflash_partition),
-	.ecc_mode	= NAND_ECC_HW,
+	.ecc_mode	= NAND_HW_ECC_ENGINE,
 	.bbt_options	= NAND_BBT_USE_FLASH,
 	.options	= NAND_BUSWIDTH_16,
 	.ecc_bits	= 1, /* 4 bit mode is not supported with 16 bit NAND */
diff --git a/arch/arm/mach-davinci/board-neuros-osd2.c b/arch/arm/mach-davinci/board-neuros-osd2.c
index ce99f782811a..af37ed6441ad 100644
--- a/arch/arm/mach-davinci/board-neuros-osd2.c
+++ b/arch/arm/mach-davinci/board-neuros-osd2.c
@@ -90,7 +90,7 @@ static struct davinci_nand_pdata davinci_ntosd2_nandflash_data = {
 	.core_chipsel	= 0,
 	.parts		= davinci_ntosd2_nandflash_partition,
 	.nr_parts	= ARRAY_SIZE(davinci_ntosd2_nandflash_partition),
-	.ecc_mode	= NAND_ECC_HW,
+	.ecc_mode	= NAND_HW_ECC_ENGINE,
 	.ecc_bits	= 1,
 	.bbt_options	= NAND_BBT_USE_FLASH,
 };
diff --git a/arch/arm/mach-davinci/board-omapl138-hawk.c b/arch/arm/mach-davinci/board-omapl138-hawk.c
index 5390a8630cf0..d178a04cf36b 100644
--- a/arch/arm/mach-davinci/board-omapl138-hawk.c
+++ b/arch/arm/mach-davinci/board-omapl138-hawk.c
@@ -206,7 +206,7 @@ static struct davinci_nand_pdata omapl138_hawk_nandflash_data = {
 	.core_chipsel	= 1,
 	.parts		= omapl138_hawk_nandflash_partition,
 	.nr_parts	= ARRAY_SIZE(omapl138_hawk_nandflash_partition),
-	.ecc_mode	= NAND_ECC_HW,
+	.ecc_mode	= NAND_HW_ECC_ENGINE,
 	.ecc_bits	= 4,
 	.bbt_options	= NAND_BBT_USE_FLASH,
 	.options	= NAND_BUSWIDTH_16,
diff --git a/arch/arm/mach-s3c24xx/common-smdk.c b/arch/arm/mach-s3c24xx/common-smdk.c
index 58e30cad386c..58176ee78219 100644
--- a/arch/arm/mach-s3c24xx/common-smdk.c
+++ b/arch/arm/mach-s3c24xx/common-smdk.c
@@ -166,7 +166,7 @@ static struct s3c2410_platform_nand smdk_nand_info = {
 	.twrph1		= 20,
 	.nr_sets	= ARRAY_SIZE(smdk_nand_sets),
 	.sets		= smdk_nand_sets,
-	.ecc_mode       = NAND_ECC_SOFT,
+	.ecc_mode       = NAND_SOFT_ECC_ENGINE,
 };
 
 /* devices we initialise */
diff --git a/arch/arm/mach-s3c24xx/mach-anubis.c b/arch/arm/mach-s3c24xx/mach-anubis.c
index 072966dcad78..7435f8088913 100644
--- a/arch/arm/mach-s3c24xx/mach-anubis.c
+++ b/arch/arm/mach-s3c24xx/mach-anubis.c
@@ -218,7 +218,7 @@ static struct s3c2410_platform_nand __initdata anubis_nand_info = {
 	.nr_sets	= ARRAY_SIZE(anubis_nand_sets),
 	.sets		= anubis_nand_sets,
 	.select_chip	= anubis_nand_select,
-	.ecc_mode       = NAND_ECC_SOFT,
+	.ecc_mode       = NAND_SOFT_ECC_ENGINE,
 };
 
 /* IDE channels */
diff --git a/arch/arm/mach-s3c24xx/mach-at2440evb.c b/arch/arm/mach-s3c24xx/mach-at2440evb.c
index 58c5ef3cf1d7..89448140d101 100644
--- a/arch/arm/mach-s3c24xx/mach-at2440evb.c
+++ b/arch/arm/mach-s3c24xx/mach-at2440evb.c
@@ -109,7 +109,7 @@ static struct s3c2410_platform_nand __initdata at2440evb_nand_info = {
 	.twrph1		= 40,
 	.nr_sets	= ARRAY_SIZE(at2440evb_nand_sets),
 	.sets		= at2440evb_nand_sets,
-	.ecc_mode       = NAND_ECC_SOFT,
+	.ecc_mode       = NAND_SOFT_ECC_ENGINE,
 };
 
 /* DM9000AEP 10/100 ethernet controller */
diff --git a/arch/arm/mach-s3c24xx/mach-bast.c b/arch/arm/mach-s3c24xx/mach-bast.c
index a7c3955ae8f6..fa4506087a92 100644
--- a/arch/arm/mach-s3c24xx/mach-bast.c
+++ b/arch/arm/mach-s3c24xx/mach-bast.c
@@ -294,7 +294,7 @@ static struct s3c2410_platform_nand __initdata bast_nand_info = {
 	.nr_sets	= ARRAY_SIZE(bast_nand_sets),
 	.sets		= bast_nand_sets,
 	.select_chip	= bast_nand_select,
-	.ecc_mode       = NAND_ECC_SOFT,
+	.ecc_mode       = NAND_SOFT_ECC_ENGINE,
 };
 
 /* DM9000 */
diff --git a/arch/arm/mach-s3c24xx/mach-gta02.c b/arch/arm/mach-s3c24xx/mach-gta02.c
index 594901f3b8e5..c4f0580addff 100644
--- a/arch/arm/mach-s3c24xx/mach-gta02.c
+++ b/arch/arm/mach-s3c24xx/mach-gta02.c
@@ -416,7 +416,7 @@ static struct s3c2410_platform_nand __initdata gta02_nand_info = {
 	.twrph1		= 15,
 	.nr_sets	= ARRAY_SIZE(gta02_nand_sets),
 	.sets		= gta02_nand_sets,
-	.ecc_mode       = NAND_ECC_SOFT,
+	.ecc_mode       = NAND_SOFT_ECC_ENGINE,
 };
 
 
diff --git a/arch/arm/mach-s3c24xx/mach-jive.c b/arch/arm/mach-s3c24xx/mach-jive.c
index 885e8f12e4b9..e9725115231f 100644
--- a/arch/arm/mach-s3c24xx/mach-jive.c
+++ b/arch/arm/mach-s3c24xx/mach-jive.c
@@ -228,7 +228,7 @@ static struct s3c2410_platform_nand __initdata jive_nand_info = {
 	.twrph1		= 40,
 	.sets		= jive_nand_sets,
 	.nr_sets	= ARRAY_SIZE(jive_nand_sets),
-	.ecc_mode       = NAND_ECC_SOFT,
+	.ecc_mode       = NAND_SOFT_ECC_ENGINE,
 };
 
 static int __init jive_mtdset(char *options)
diff --git a/arch/arm/mach-s3c24xx/mach-mini2440.c b/arch/arm/mach-s3c24xx/mach-mini2440.c
index 9035f868fb34..58445b77f242 100644
--- a/arch/arm/mach-s3c24xx/mach-mini2440.c
+++ b/arch/arm/mach-s3c24xx/mach-mini2440.c
@@ -296,7 +296,7 @@ static struct s3c2410_platform_nand mini2440_nand_info __initdata = {
 	.nr_sets	= ARRAY_SIZE(mini2440_nand_sets),
 	.sets		= mini2440_nand_sets,
 	.ignore_unset_ecc = 1,
-	.ecc_mode	= NAND_ECC_HW,
+	.ecc_mode	= NAND_HW_ECC_ENGINE,
 };
 
 /* DM9000AEP 10/100 ethernet controller */
diff --git a/arch/arm/mach-s3c24xx/mach-osiris.c b/arch/arm/mach-s3c24xx/mach-osiris.c
index ee3630cb236a..8829e155c7c1 100644
--- a/arch/arm/mach-s3c24xx/mach-osiris.c
+++ b/arch/arm/mach-s3c24xx/mach-osiris.c
@@ -234,7 +234,7 @@ static struct s3c2410_platform_nand __initdata osiris_nand_info = {
 	.nr_sets	= ARRAY_SIZE(osiris_nand_sets),
 	.sets		= osiris_nand_sets,
 	.select_chip	= osiris_nand_select,
-	.ecc_mode       = NAND_ECC_SOFT,
+	.ecc_mode       = NAND_SOFT_ECC_ENGINE,
 };
 
 /* PCMCIA control and configuration */
diff --git a/arch/arm/mach-s3c24xx/mach-qt2410.c b/arch/arm/mach-s3c24xx/mach-qt2410.c
index 5d48e5b6e738..29264451e951 100644
--- a/arch/arm/mach-s3c24xx/mach-qt2410.c
+++ b/arch/arm/mach-s3c24xx/mach-qt2410.c
@@ -281,7 +281,7 @@ static struct s3c2410_platform_nand __initdata qt2410_nand_info = {
 	.twrph1		= 20,
 	.nr_sets	= ARRAY_SIZE(qt2410_nand_sets),
 	.sets		= qt2410_nand_sets,
-	.ecc_mode       = NAND_ECC_SOFT,
+	.ecc_mode       = NAND_SOFT_ECC_ENGINE,
 };
 
 /* UDC */
diff --git a/arch/arm/mach-s3c24xx/mach-rx1950.c b/arch/arm/mach-s3c24xx/mach-rx1950.c
index 29f9b345a531..a686939bc28e 100644
--- a/arch/arm/mach-s3c24xx/mach-rx1950.c
+++ b/arch/arm/mach-s3c24xx/mach-rx1950.c
@@ -616,7 +616,7 @@ static struct s3c2410_platform_nand rx1950_nand_info = {
 	.twrph1 = 15,
 	.nr_sets = ARRAY_SIZE(rx1950_nand_sets),
 	.sets = rx1950_nand_sets,
-	.ecc_mode = NAND_ECC_SOFT,
+	.ecc_mode = NAND_SOFT_ECC_ENGINE,
 };
 
 static struct s3c2410_udc_mach_info rx1950_udc_cfg __initdata = {
diff --git a/arch/arm/mach-s3c24xx/mach-rx3715.c b/arch/arm/mach-s3c24xx/mach-rx3715.c
index 529c6faf862f..4a36af2f8131 100644
--- a/arch/arm/mach-s3c24xx/mach-rx3715.c
+++ b/arch/arm/mach-s3c24xx/mach-rx3715.c
@@ -158,7 +158,7 @@ static struct s3c2410_platform_nand __initdata rx3715_nand_info = {
 	.twrph1		= 15,
 	.nr_sets	= ARRAY_SIZE(rx3715_nand_sets),
 	.sets		= rx3715_nand_sets,
-	.ecc_mode       = NAND_ECC_SOFT,
+	.ecc_mode       = NAND_SOFT_ECC_ENGINE,
 };
 
 static struct platform_device *rx3715_devices[] __initdata = {
diff --git a/arch/arm/mach-s3c24xx/mach-vstms.c b/arch/arm/mach-s3c24xx/mach-vstms.c
index d76b28b65e65..b00a2fe649d4 100644
--- a/arch/arm/mach-s3c24xx/mach-vstms.c
+++ b/arch/arm/mach-s3c24xx/mach-vstms.c
@@ -112,7 +112,7 @@ static struct s3c2410_platform_nand __initdata vstms_nand_info = {
 	.twrph1		= 20,
 	.nr_sets	= ARRAY_SIZE(vstms_nand_sets),
 	.sets		= vstms_nand_sets,
-	.ecc_mode       = NAND_ECC_SOFT,
+	.ecc_mode       = NAND_SOFT_ECC_ENGINE,
 };
 
 static struct platform_device *vstms_devices[] __initdata = {
diff --git a/arch/arm/mach-s3c64xx/mach-hmt.c b/arch/arm/mach-s3c64xx/mach-hmt.c
index bfe9881d12cc..da63a170d02c 100644
--- a/arch/arm/mach-s3c64xx/mach-hmt.c
+++ b/arch/arm/mach-s3c64xx/mach-hmt.c
@@ -200,7 +200,7 @@ static struct s3c2410_platform_nand hmt_nand_info = {
 	.twrph1		= 40,
 	.nr_sets	= ARRAY_SIZE(hmt_nand_sets),
 	.sets		= hmt_nand_sets,
-	.ecc_mode       = NAND_ECC_SOFT,
+	.ecc_mode       = NAND_SOFT_ECC_ENGINE,
 };
 
 static struct gpio_led hmt_leds[] = {
diff --git a/arch/arm/mach-s3c64xx/mach-mini6410.c b/arch/arm/mach-s3c64xx/mach-mini6410.c
index 0dd36ae49e6a..9d8419503c26 100644
--- a/arch/arm/mach-s3c64xx/mach-mini6410.c
+++ b/arch/arm/mach-s3c64xx/mach-mini6410.c
@@ -136,7 +136,7 @@ static struct s3c2410_platform_nand mini6410_nand_info = {
 	.twrph1		= 40,
 	.nr_sets	= ARRAY_SIZE(mini6410_nand_sets),
 	.sets		= mini6410_nand_sets,
-	.ecc_mode       = NAND_ECC_SOFT,
+	.ecc_mode       = NAND_SOFT_ECC_ENGINE,
 };
 
 static struct s3c_fb_pd_win mini6410_lcd_type0_fb_win = {
diff --git a/arch/arm/mach-s3c64xx/mach-real6410.c b/arch/arm/mach-s3c64xx/mach-real6410.c
index 0ff88b6859c4..80efe678ba6d 100644
--- a/arch/arm/mach-s3c64xx/mach-real6410.c
+++ b/arch/arm/mach-s3c64xx/mach-real6410.c
@@ -188,7 +188,7 @@ static struct s3c2410_platform_nand real6410_nand_info = {
 	.twrph1		= 40,
 	.nr_sets	= ARRAY_SIZE(real6410_nand_sets),
 	.sets		= real6410_nand_sets,
-	.ecc_mode       = NAND_ECC_SOFT,
+	.ecc_mode       = NAND_SOFT_ECC_ENGINE,
 };
 
 static struct platform_device *real6410_devices[] __initdata = {
diff --git a/drivers/mtd/nand/raw/ams-delta.c b/drivers/mtd/nand/raw/ams-delta.c
index 8312182088c1..190cbe232943 100644
--- a/drivers/mtd/nand/raw/ams-delta.c
+++ b/drivers/mtd/nand/raw/ams-delta.c
@@ -246,7 +246,7 @@ static int ams_delta_init(struct platform_device *pdev)
 		return err;
 	}
 
-	this->ecc.mode = NAND_ECC_SOFT;
+	this->ecc.mode = NAND_SOFT_ECC_ENGINE;
 	this->ecc.algo = NAND_ECC_HAMMING;
 
 	platform_set_drvdata(pdev, priv);
diff --git a/drivers/mtd/nand/raw/atmel/nand-controller.c b/drivers/mtd/nand/raw/atmel/nand-controller.c
index 8d6be90a6fe8..178ae1280729 100644
--- a/drivers/mtd/nand/raw/atmel/nand-controller.c
+++ b/drivers/mtd/nand/raw/atmel/nand-controller.c
@@ -1119,14 +1119,14 @@ static int atmel_nand_ecc_init(struct nand_chip *chip)
 	nc = to_nand_controller(chip->controller);
 
 	switch (chip->ecc.mode) {
-	case NAND_ECC_NONE:
-	case NAND_ECC_SOFT:
+	case NAND_NO_ECC_ENGINE:
+	case NAND_SOFT_ECC_ENGINE:
 		/*
 		 * Nothing to do, the core will initialize everything for us.
 		 */
 		break;
 
-	case NAND_ECC_HW:
+	case NAND_HW_ECC_ENGINE:
 		ret = atmel_nand_pmecc_init(chip);
 		if (ret)
 			return ret;
@@ -1155,7 +1155,7 @@ static int atmel_hsmc_nand_ecc_init(struct nand_chip *chip)
 	if (ret)
 		return ret;
 
-	if (chip->ecc.mode != NAND_ECC_HW)
+	if (chip->ecc.mode != NAND_HW_ECC_ENGINE)
 		return 0;
 
 	/* Adjust the ECC operations for the HSMC IP. */
@@ -1498,7 +1498,7 @@ static void atmel_nand_init(struct atmel_nand_controller *nc,
 
 	/* Default to HW ECC if pmecc is available. */
 	if (nc->pmecc)
-		chip->ecc.mode = NAND_ECC_HW;
+		chip->ecc.mode = NAND_HW_ECC_ENGINE;
 }
 
 static void atmel_smc_nand_init(struct atmel_nand_controller *nc,
diff --git a/drivers/mtd/nand/raw/au1550nd.c b/drivers/mtd/nand/raw/au1550nd.c
index 97a97a9ccc36..4e3678a143ae 100644
--- a/drivers/mtd/nand/raw/au1550nd.c
+++ b/drivers/mtd/nand/raw/au1550nd.c
@@ -431,7 +431,7 @@ static int au1550nd_probe(struct platform_device *pdev)
 
 	/* 30 us command delay time */
 	this->legacy.chip_delay = 30;
-	this->ecc.mode = NAND_ECC_SOFT;
+	this->ecc.mode = NAND_SOFT_ECC_ENGINE;
 	this->ecc.algo = NAND_ECC_HAMMING;
 
 	if (pd->devwidth)
diff --git a/drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c b/drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c
index 591775173034..d0e4f1917975 100644
--- a/drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c
+++ b/drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c
@@ -391,7 +391,7 @@ int bcm47xxnflash_ops_bcm4706_init(struct bcm47xxnflash *b47n)
 
 	nand_chip->legacy.chip_delay = 50;
 	b47n->nand_chip.bbt_options = NAND_BBT_USE_FLASH;
-	b47n->nand_chip.ecc.mode = NAND_ECC_NONE; /* TODO: implement ECC */
+	b47n->nand_chip.ecc.mode = NAND_NO_ECC_ENGINE; /* TODO: implement ECC */
 
 	/* Enable NAND flash access */
 	bcma_cc_set32(b47n->cc, BCMA_CC_4706_FLASHSCFG,
diff --git a/drivers/mtd/nand/raw/brcmnand/brcmnand.c b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
index 33310b8a6eb8..68c40b993bc1 100644
--- a/drivers/mtd/nand/raw/brcmnand/brcmnand.c
+++ b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
@@ -2233,7 +2233,7 @@ static int brcmnand_setup_dev(struct brcmnand_host *host)
 	cfg->col_adr_bytes = 2;
 	cfg->blk_adr_bytes = get_blk_adr_bytes(mtd->size, mtd->writesize);
 
-	if (chip->ecc.mode != NAND_ECC_HW) {
+	if (chip->ecc.mode != NAND_HW_ECC_ENGINE) {
 		dev_err(ctrl->dev, "only HW ECC supported; selected: %d\n",
 			chip->ecc.mode);
 		return -EINVAL;
@@ -2396,7 +2396,7 @@ static int brcmnand_init_cs(struct brcmnand_host *host, struct device_node *dn)
 	chip->legacy.read_buf = brcmnand_read_buf;
 	chip->legacy.write_buf = brcmnand_write_buf;
 
-	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.mode = NAND_HW_ECC_ENGINE;
 	chip->ecc.read_page = brcmnand_read_page;
 	chip->ecc.write_page = brcmnand_write_page;
 	chip->ecc.read_page_raw = brcmnand_read_page_raw;
diff --git a/drivers/mtd/nand/raw/cafe_nand.c b/drivers/mtd/nand/raw/cafe_nand.c
index 56b02ddbffd6..88f74d8f64a9 100644
--- a/drivers/mtd/nand/raw/cafe_nand.c
+++ b/drivers/mtd/nand/raw/cafe_nand.c
@@ -634,7 +634,7 @@ static int cafe_nand_attach_chip(struct nand_chip *chip)
 		goto out_free_dma;
 	}
 
-	cafe->nand.ecc.mode = NAND_ECC_HW;
+	cafe->nand.ecc.mode = NAND_HW_ECC_ENGINE;
 	cafe->nand.ecc.placement = NAND_ECC_SYNDROME_OOB_PLACEMENT;
 	cafe->nand.ecc.size = mtd->writesize;
 	cafe->nand.ecc.bytes = 14;
diff --git a/drivers/mtd/nand/raw/cmx270_nand.c b/drivers/mtd/nand/raw/cmx270_nand.c
index 045b6175ae79..7549489c024b 100644
--- a/drivers/mtd/nand/raw/cmx270_nand.c
+++ b/drivers/mtd/nand/raw/cmx270_nand.c
@@ -176,7 +176,7 @@ static int __init cmx270_init(void)
 
 	/* 15 us command delay time */
 	this->legacy.chip_delay = 20;
-	this->ecc.mode = NAND_ECC_SOFT;
+	this->ecc.mode = NAND_SOFT_ECC_ENGINE;
 	this->ecc.algo = NAND_ECC_HAMMING;
 
 	/* read/write functions */
diff --git a/drivers/mtd/nand/raw/cs553x_nand.c b/drivers/mtd/nand/raw/cs553x_nand.c
index e2322cee3229..fea3d6a44c18 100644
--- a/drivers/mtd/nand/raw/cs553x_nand.c
+++ b/drivers/mtd/nand/raw/cs553x_nand.c
@@ -210,7 +210,7 @@ static int __init cs553x_init_one(int cs, int mmio, unsigned long adr)
 
 	this->legacy.chip_delay = 0;
 
-	this->ecc.mode = NAND_ECC_HW;
+	this->ecc.mode = NAND_HW_ECC_ENGINE;
 	this->ecc.size = 256;
 	this->ecc.bytes = 3;
 	this->ecc.hwctl  = cs_enable_hwecc;
diff --git a/drivers/mtd/nand/raw/davinci_nand.c b/drivers/mtd/nand/raw/davinci_nand.c
index 5f5fcff46944..9a9ed3034710 100644
--- a/drivers/mtd/nand/raw/davinci_nand.c
+++ b/drivers/mtd/nand/raw/davinci_nand.c
@@ -542,11 +542,11 @@ static struct davinci_nand_pdata
 		if (!of_property_read_string(pdev->dev.of_node,
 			"ti,davinci-ecc-mode", &mode)) {
 			if (!strncmp("none", mode, 4))
-				pdata->ecc_mode = NAND_ECC_NONE;
+				pdata->ecc_mode = NAND_NO_ECC_ENGINE;
 			if (!strncmp("soft", mode, 4))
-				pdata->ecc_mode = NAND_ECC_SOFT;
+				pdata->ecc_mode = NAND_SOFT_ECC_ENGINE;
 			if (!strncmp("hw", mode, 2))
-				pdata->ecc_mode = NAND_ECC_HW;
+				pdata->ecc_mode = NAND_HW_ECC_ENGINE;
 		}
 		if (!of_property_read_u32(pdev->dev.of_node,
 			"ti,davinci-ecc-bits", &prop))
@@ -598,20 +598,20 @@ static int davinci_nand_attach_chip(struct nand_chip *chip)
 		return PTR_ERR(pdata);
 
 	switch (info->chip.ecc.mode) {
-	case NAND_ECC_NONE:
+	case NAND_NO_ECC_ENGINE:
 		pdata->ecc_bits = 0;
 		break;
-	case NAND_ECC_SOFT:
+	case NAND_SOFT_ECC_ENGINE:
 		pdata->ecc_bits = 0;
 		/*
 		 * This driver expects Hamming based ECC when ecc_mode is set
-		 * to NAND_ECC_SOFT. Force ecc.algo to NAND_ECC_HAMMING to
+		 * to NAND_SOFT_ECC_ENGINE. Force ecc.algo to NAND_ECC_HAMMING to
 		 * avoid adding an extra ->ecc_algo field to
 		 * davinci_nand_pdata.
 		 */
 		info->chip.ecc.algo = NAND_ECC_HAMMING;
 		break;
-	case NAND_ECC_HW:
+	case NAND_HW_ECC_ENGINE:
 		if (pdata->ecc_bits == 4) {
 			/*
 			 * No sanity checks:  CPUs must support this,
@@ -672,7 +672,7 @@ static int davinci_nand_attach_chip(struct nand_chip *chip)
 			mtd_set_ooblayout(mtd, &hwecc4_small_ooblayout_ops);
 		} else if (chunks == 4 || chunks == 8) {
 			mtd_set_ooblayout(mtd, &nand_ooblayout_lp_ops);
-			info->chip.ecc.mode = NAND_ECC_HW;
+			info->chip.ecc.mode = NAND_HW_ECC_ENGINE;
 			info->chip.ecc.placement = NAND_ECC_OOB_FIRST_PLACEMENT;
 		} else {
 			return -EIO;
diff --git a/drivers/mtd/nand/raw/denali.c b/drivers/mtd/nand/raw/denali.c
index 27233f1dc449..c47967c1ed90 100644
--- a/drivers/mtd/nand/raw/denali.c
+++ b/drivers/mtd/nand/raw/denali.c
@@ -1215,7 +1215,7 @@ int denali_chip_init(struct denali_controller *denali,
 	chip->bbt_options |= NAND_BBT_USE_FLASH;
 	chip->bbt_options |= NAND_BBT_NO_OOB;
 	chip->options |= NAND_NO_SUBPAGE_WRITE;
-	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.mode = NAND_HW_ECC_ENGINE;
 	chip->ecc.placement = NAND_ECC_SYNDROME_OOB_PLACEMENT;
 	chip->ecc.read_page = denali_read_page;
 	chip->ecc.write_page = denali_write_page;
diff --git a/drivers/mtd/nand/raw/diskonchip.c b/drivers/mtd/nand/raw/diskonchip.c
index b4d55e49600c..29d41c270422 100644
--- a/drivers/mtd/nand/raw/diskonchip.c
+++ b/drivers/mtd/nand/raw/diskonchip.c
@@ -1583,7 +1583,7 @@ static int __init doc_probe(unsigned long physadr)
 	nand->ecc.calculate	= doc200x_calculate_ecc;
 	nand->ecc.correct	= doc200x_correct_data;
 
-	nand->ecc.mode		= NAND_ECC_HW;
+	nand->ecc.mode		= NAND_HW_ECC_ENGINE;
 	nand->ecc.placement	= NAND_ECC_SYNDROME_OOB_PLACEMENT;
 	nand->ecc.size		= 512;
 	nand->ecc.bytes		= 6;
diff --git a/drivers/mtd/nand/raw/fsl_elbc_nand.c b/drivers/mtd/nand/raw/fsl_elbc_nand.c
index 634c550db13a..da1f21a1bbd7 100644
--- a/drivers/mtd/nand/raw/fsl_elbc_nand.c
+++ b/drivers/mtd/nand/raw/fsl_elbc_nand.c
@@ -244,7 +244,7 @@ static int fsl_elbc_run_command(struct mtd_info *mtd)
 		return -EIO;
 	}
 
-	if (chip->ecc.mode != NAND_ECC_HW)
+	if (chip->ecc.mode != NAND_HW_ECC_ENGINE)
 		return 0;
 
 	elbc_fcm_ctrl->max_bitflips = 0;
@@ -733,7 +733,7 @@ static int fsl_elbc_attach_chip(struct nand_chip *chip)
 	 * if ECC was not chosen in DT, decide whether to use HW or SW ECC from
 	 * CS Base Register
 	 */
-	case NAND_ECC_NONE:
+	case NAND_NO_ECC_ENGINE:
 		/* If CS Base Register selects full hardware ECC then use it */
 		if ((in_be32(&lbc->bank[priv->bank].br) & BR_DECC) ==
 		    BR_DECC_CHK_GEN) {
@@ -741,23 +741,23 @@ static int fsl_elbc_attach_chip(struct nand_chip *chip)
 			chip->ecc.write_page = fsl_elbc_write_page;
 			chip->ecc.write_subpage = fsl_elbc_write_subpage;
 
-			chip->ecc.mode = NAND_ECC_HW;
+			chip->ecc.mode = NAND_HW_ECC_ENGINE;
 			mtd_set_ooblayout(mtd, &fsl_elbc_ooblayout_ops);
 			chip->ecc.size = 512;
 			chip->ecc.bytes = 3;
 			chip->ecc.strength = 1;
 		} else {
 			/* otherwise fall back to default software ECC */
-			chip->ecc.mode = NAND_ECC_SOFT;
+			chip->ecc.mode = NAND_SOFT_ECC_ENGINE;
 			chip->ecc.algo = NAND_ECC_HAMMING;
 		}
 		break;
 
 	/* if SW ECC was chosen in DT, we do not need to set anything here */
-	case NAND_ECC_SOFT:
+	case NAND_SOFT_ECC_ENGINE:
 		break;
 
-	/* should we also implement NAND_ECC_HW to do as the code above? */
+	/* should we also implement NAND_HW_ECC_ENGINE to do as the code above? */
 	default:
 		return -EINVAL;
 	}
diff --git a/drivers/mtd/nand/raw/fsl_ifc_nand.c b/drivers/mtd/nand/raw/fsl_ifc_nand.c
index 2af09edf405b..4aa3a527838f 100644
--- a/drivers/mtd/nand/raw/fsl_ifc_nand.c
+++ b/drivers/mtd/nand/raw/fsl_ifc_nand.c
@@ -309,7 +309,7 @@ static void fsl_ifc_cmdfunc(struct nand_chip *chip, unsigned int command,
 		ifc_nand_ctrl->read_bytes = mtd->writesize + mtd->oobsize;
 		ifc_nand_ctrl->index += column;
 
-		if (chip->ecc.mode == NAND_ECC_HW)
+		if (chip->ecc.mode == NAND_HW_ECC_ENGINE)
 			ifc_nand_ctrl->eccread = 1;
 
 		fsl_ifc_do_read(chip, 0, mtd);
@@ -912,7 +912,7 @@ static int fsl_ifc_chip_init(struct fsl_ifc_mtd *priv)
 
 	/* Must also set CSOR_NAND_ECC_ENC_EN if DEC_EN set */
 	if (csor & CSOR_NAND_ECC_DEC_EN) {
-		chip->ecc.mode = NAND_ECC_HW;
+		chip->ecc.mode = NAND_HW_ECC_ENGINE;
 		mtd_set_ooblayout(mtd, &fsl_ifc_ooblayout_ops);
 
 		/* Hardware generates ECC per 512 Bytes */
@@ -925,7 +925,7 @@ static int fsl_ifc_chip_init(struct fsl_ifc_mtd *priv)
 			chip->ecc.strength = 8;
 		}
 	} else {
-		chip->ecc.mode = NAND_ECC_SOFT;
+		chip->ecc.mode = NAND_SOFT_ECC_ENGINE;
 		chip->ecc.algo = NAND_ECC_HAMMING;
 	}
 
diff --git a/drivers/mtd/nand/raw/fsl_upm.c b/drivers/mtd/nand/raw/fsl_upm.c
index 1054cc070747..85ce533bc172 100644
--- a/drivers/mtd/nand/raw/fsl_upm.c
+++ b/drivers/mtd/nand/raw/fsl_upm.c
@@ -163,7 +163,7 @@ static int fun_chip_init(struct fsl_upm_nand *fun,
 	fun->chip.legacy.read_byte = fun_read_byte;
 	fun->chip.legacy.read_buf = fun_read_buf;
 	fun->chip.legacy.write_buf = fun_write_buf;
-	fun->chip.ecc.mode = NAND_ECC_SOFT;
+	fun->chip.ecc.mode = NAND_SOFT_ECC_ENGINE;
 	fun->chip.ecc.algo = NAND_ECC_HAMMING;
 	if (fun->mchip_count > 1)
 		fun->chip.legacy.select_chip = fun_select_chip;
diff --git a/drivers/mtd/nand/raw/fsmc_nand.c b/drivers/mtd/nand/raw/fsmc_nand.c
index a6964feeec77..4c5610dbe57b 100644
--- a/drivers/mtd/nand/raw/fsmc_nand.c
+++ b/drivers/mtd/nand/raw/fsmc_nand.c
@@ -897,7 +897,7 @@ static int fsmc_nand_attach_chip(struct nand_chip *nand)
 	}
 
 	switch (nand->ecc.mode) {
-	case NAND_ECC_HW:
+	case NAND_HW_ECC_ENGINE:
 		dev_info(host->dev, "Using 1-bit HW ECC scheme\n");
 		nand->ecc.calculate = fsmc_read_hwecc_ecc1;
 		nand->ecc.correct = nand_correct_data;
@@ -906,14 +906,14 @@ static int fsmc_nand_attach_chip(struct nand_chip *nand)
 		nand->ecc.options |= NAND_ECC_SOFT_HAMMING_SM_ORDER;
 		break;
 
-	case NAND_ECC_SOFT:
+	case NAND_SOFT_ECC_ENGINE:
 		if (nand->ecc.algo == NAND_ECC_BCH) {
 			dev_info(host->dev,
 				 "Using 4-bit SW BCH ECC scheme\n");
 			break;
 		}
 
-	case NAND_ECC_ON_DIE:
+	case NAND_ON_DIE_ECC_ENGINE:
 		break;
 
 	default:
@@ -925,7 +925,7 @@ static int fsmc_nand_attach_chip(struct nand_chip *nand)
 	 * Don't set layout for BCH4 SW ECC. This will be
 	 * generated later in nand_bch_init() later.
 	 */
-	if (nand->ecc.mode == NAND_ECC_HW) {
+	if (nand->ecc.mode == NAND_HW_ECC_ENGINE) {
 		switch (mtd->oobsize) {
 		case 16:
 		case 64:
@@ -1055,7 +1055,7 @@ static int __init fsmc_nand_probe(struct platform_device *pdev)
 	 * Setup default ECC mode. nand_dt_init() called from nand_scan_ident()
 	 * can overwrite this value if the DT provides a different value.
 	 */
-	nand->ecc.mode = NAND_ECC_HW;
+	nand->ecc.mode = NAND_HW_ECC_ENGINE;
 	nand->ecc.hwctl = fsmc_enable_hwecc;
 	nand->ecc.size = 512;
 	nand->badblockbits = 7;
diff --git a/drivers/mtd/nand/raw/gpio.c b/drivers/mtd/nand/raw/gpio.c
index f6b12354024f..2bcb7a05645b 100644
--- a/drivers/mtd/nand/raw/gpio.c
+++ b/drivers/mtd/nand/raw/gpio.c
@@ -271,7 +271,7 @@ static int gpio_nand_probe(struct platform_device *pdev)
 
 	nand_set_flash_node(chip, pdev->dev.of_node);
 	chip->legacy.IO_ADDR_W	= chip->legacy.IO_ADDR_R;
-	chip->ecc.mode		= NAND_ECC_SOFT;
+	chip->ecc.mode		= NAND_SOFT_ECC_ENGINE;
 	chip->ecc.algo		= NAND_ECC_HAMMING;
 	chip->options		= gpiomtd->plat.options;
 	chip->legacy.chip_delay	= gpiomtd->plat.chip_delay;
diff --git a/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c b/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
index 334fe3130285..36d996f95656 100644
--- a/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
+++ b/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
@@ -2178,7 +2178,7 @@ static int gpmi_init_last(struct gpmi_nand_data *this)
 	ecc->write_page_raw = gpmi_ecc_write_page_raw;
 	ecc->read_oob_raw = gpmi_ecc_read_oob_raw;
 	ecc->write_oob_raw = gpmi_ecc_write_oob_raw;
-	ecc->mode	= NAND_ECC_HW;
+	ecc->mode	= NAND_HW_ECC_ENGINE;
 	ecc->size	= bch_geo->ecc_chunk_size;
 	ecc->strength	= bch_geo->ecc_strength;
 	mtd_set_ooblayout(mtd, &gpmi_ooblayout_ops);
diff --git a/drivers/mtd/nand/raw/hisi504_nand.c b/drivers/mtd/nand/raw/hisi504_nand.c
index 6a4626a8bf95..1adb79020188 100644
--- a/drivers/mtd/nand/raw/hisi504_nand.c
+++ b/drivers/mtd/nand/raw/hisi504_nand.c
@@ -186,7 +186,7 @@ static void hisi_nfc_dma_transfer(struct hinfc_host *host, int todev)
 	hinfc_write(host, host->dma_buffer, HINFC504_DMA_ADDR_DATA);
 	hinfc_write(host, host->dma_oob, HINFC504_DMA_ADDR_OOB);
 
-	if (chip->ecc.mode == NAND_ECC_NONE) {
+	if (chip->ecc.mode == NAND_NO_ECC_ENGINE) {
 		hinfc_write(host, ((mtd->oobsize & HINFC504_DMA_LEN_OOB_MASK)
 			<< HINFC504_DMA_LEN_OOB_SHIFT), HINFC504_DMA_LEN);
 
@@ -468,7 +468,7 @@ static void hisi_nfc_cmdfunc(struct nand_chip *chip, unsigned command,
 
 	case NAND_CMD_STATUS:
 		flag = hinfc_read(host, HINFC504_CON);
-		if (chip->ecc.mode == NAND_ECC_HW)
+		if (chip->ecc.mode == NAND_HW_ECC_ENGINE)
 			hinfc_write(host,
 				    flag & ~(HINFC504_CON_ECCTYPE_MASK <<
 				    HINFC504_CON_ECCTYPE_SHIFT), HINFC504_CON);
@@ -721,7 +721,7 @@ static int hisi_nfc_attach_chip(struct nand_chip *chip)
 	}
 	hinfc_write(host, flag, HINFC504_CON);
 
-	if (chip->ecc.mode == NAND_ECC_HW)
+	if (chip->ecc.mode == NAND_HW_ECC_ENGINE)
 		hisi_nfc_ecc_probe(host);
 
 	return 0;
diff --git a/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c b/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c
index d7b7c0f13909..bac6cf56f355 100644
--- a/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c
+++ b/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c
@@ -244,7 +244,7 @@ static int ingenic_nand_attach_chip(struct nand_chip *chip)
 	}
 
 	switch (chip->ecc.mode) {
-	case NAND_ECC_HW:
+	case NAND_HW_ECC_ENGINE:
 		if (!nfc->ecc) {
 			dev_err(nfc->dev, "HW ECC selected, but ECC controller not found\n");
 			return -ENODEV;
@@ -254,12 +254,12 @@ static int ingenic_nand_attach_chip(struct nand_chip *chip)
 		chip->ecc.calculate = ingenic_nand_ecc_calculate;
 		chip->ecc.correct = ingenic_nand_ecc_correct;
 		/* fall through */
-	case NAND_ECC_SOFT:
+	case NAND_SOFT_ECC_ENGINE:
 		dev_info(nfc->dev, "using %s (strength %d, size %d, bytes %d)\n",
 			 (nfc->ecc) ? "hardware ECC" : "software ECC",
 			 chip->ecc.strength, chip->ecc.size, chip->ecc.bytes);
 		break;
-	case NAND_ECC_NONE:
+	case NAND_NO_ECC_ENGINE:
 		dev_info(nfc->dev, "not using ECC\n");
 		break;
 	default:
@@ -269,7 +269,7 @@ static int ingenic_nand_attach_chip(struct nand_chip *chip)
 	}
 
 	/* The NAND core will generate the ECC layout for SW ECC */
-	if (chip->ecc.mode != NAND_ECC_HW)
+	if (chip->ecc.mode != NAND_HW_ECC_ENGINE)
 		return 0;
 
 	/* Generate ECC layout. ECC codes are right aligned in the OOB area. */
@@ -367,7 +367,7 @@ static int ingenic_nand_init_chip(struct platform_device *pdev,
 	chip->options = NAND_NO_SUBPAGE_WRITE;
 	chip->legacy.select_chip = ingenic_nand_select_chip;
 	chip->legacy.cmd_ctrl = ingenic_nand_cmd_ctrl;
-	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.mode = NAND_HW_ECC_ENGINE;
 	chip->controller = &nfc->controller;
 	nand_set_flash_node(chip, np);
 
diff --git a/drivers/mtd/nand/raw/ingenic/jz4740_nand.c b/drivers/mtd/nand/raw/ingenic/jz4740_nand.c
index ed6d21fa0b00..a53fd89fcc2d 100644
--- a/drivers/mtd/nand/raw/ingenic/jz4740_nand.c
+++ b/drivers/mtd/nand/raw/ingenic/jz4740_nand.c
@@ -413,7 +413,7 @@ static int jz_nand_probe(struct platform_device *pdev)
 	chip->ecc.hwctl		= jz_nand_hwctl;
 	chip->ecc.calculate	= jz_nand_calculate_ecc_rs;
 	chip->ecc.correct	= jz_nand_correct_ecc_rs;
-	chip->ecc.mode		= NAND_ECC_HW;
+	chip->ecc.mode		= NAND_HW_ECC_ENGINE;
 	chip->ecc.placement	= NAND_ECC_OOB_FIRST_PLACEMENT;
 	chip->ecc.size		= 512;
 	chip->ecc.bytes		= 9;
diff --git a/drivers/mtd/nand/raw/lpc32xx_mlc.c b/drivers/mtd/nand/raw/lpc32xx_mlc.c
index 78b31f845c50..5e863fdefe11 100644
--- a/drivers/mtd/nand/raw/lpc32xx_mlc.c
+++ b/drivers/mtd/nand/raw/lpc32xx_mlc.c
@@ -656,7 +656,7 @@ static int lpc32xx_nand_attach_chip(struct nand_chip *chip)
 	if (!host->dummy_buf)
 		return -ENOMEM;
 
-	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.mode = NAND_HW_ECC_ENGINE;
 	chip->ecc.size = 512;
 	mtd_set_ooblayout(mtd, &lpc32xx_ooblayout_ops);
 	host->mlcsubpages = mtd->writesize / 512;
diff --git a/drivers/mtd/nand/raw/lpc32xx_slc.c b/drivers/mtd/nand/raw/lpc32xx_slc.c
index 4b9f3fd678b9..48ad1277b82e 100644
--- a/drivers/mtd/nand/raw/lpc32xx_slc.c
+++ b/drivers/mtd/nand/raw/lpc32xx_slc.c
@@ -881,7 +881,7 @@ static int lpc32xx_nand_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, host);
 
 	/* NAND callbacks for LPC32xx SLC hardware */
-	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.mode = NAND_HW_ECC_ENGINE;
 	chip->ecc.placement = NAND_ECC_SYNDROME_OOB_PLACEMENT;
 	chip->legacy.read_byte = lpc32xx_nand_read_byte;
 	chip->legacy.read_buf = lpc32xx_nand_read_buf;
diff --git a/drivers/mtd/nand/raw/marvell_nand.c b/drivers/mtd/nand/raw/marvell_nand.c
index fc49e13d81ec..4199ed3f91d6 100644
--- a/drivers/mtd/nand/raw/marvell_nand.c
+++ b/drivers/mtd/nand/raw/marvell_nand.c
@@ -2247,7 +2247,7 @@ static int marvell_nand_ecc_init(struct mtd_info *mtd,
 	struct marvell_nfc *nfc = to_marvell_nfc(chip->controller);
 	int ret;
 
-	if (ecc->mode != NAND_ECC_NONE && (!ecc->size || !ecc->strength)) {
+	if (ecc->mode != NAND_NO_ECC_ENGINE && (!ecc->size || !ecc->strength)) {
 		if (chip->base.eccreq.step_size && chip->base.eccreq.strength) {
 			ecc->size = chip->base.eccreq.step_size;
 			ecc->strength = chip->base.eccreq.strength;
@@ -2260,14 +2260,14 @@ static int marvell_nand_ecc_init(struct mtd_info *mtd,
 	}
 
 	switch (ecc->mode) {
-	case NAND_ECC_HW:
+	case NAND_HW_ECC_ENGINE:
 		ret = marvell_nand_hw_ecc_ctrl_init(mtd, ecc);
 		if (ret)
 			return ret;
 		break;
-	case NAND_ECC_NONE:
-	case NAND_ECC_SOFT:
-	case NAND_ECC_ON_DIE:
+	case NAND_NO_ECC_ENGINE:
+	case NAND_SOFT_ECC_ENGINE:
+	case NAND_ON_DIE_ECC_ENGINE:
 		if (!nfc->caps->is_nfcv2 && mtd->writesize != SZ_512 &&
 		    mtd->writesize != SZ_2K) {
 			dev_err(nfc->dev, "NFCv1 cannot write %d bytes pages\n",
@@ -2465,7 +2465,7 @@ static int marvell_nand_attach_chip(struct nand_chip *chip)
 		return ret;
 	}
 
-	if (chip->ecc.mode == NAND_ECC_HW) {
+	if (chip->ecc.mode == NAND_HW_ECC_ENGINE) {
 		/*
 		 * Subpage write not available with hardware ECC, prohibit also
 		 * subpage read as in userspace subpage access would still be
@@ -2640,7 +2640,7 @@ static int marvell_nand_chip_init(struct device *dev, struct marvell_nfc *nfc,
 	 * Default to HW ECC engine mode. If the nand-ecc-mode property is given
 	 * in the DT node, this entry will be overwritten in nand_scan_ident().
 	 */
-	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.mode = NAND_HW_ECC_ENGINE;
 
 	/*
 	 * Save a reference value for timing registers before
diff --git a/drivers/mtd/nand/raw/meson_nand.c b/drivers/mtd/nand/raw/meson_nand.c
index ea57ddcec41e..f501e4538b47 100644
--- a/drivers/mtd/nand/raw/meson_nand.c
+++ b/drivers/mtd/nand/raw/meson_nand.c
@@ -1194,7 +1194,7 @@ static int meson_nand_attach_chip(struct nand_chip *nand)
 	if (ret)
 		return -EINVAL;
 
-	nand->ecc.mode = NAND_ECC_HW;
+	nand->ecc.mode = NAND_HW_ECC_ENGINE;
 	nand->ecc.write_page_raw = meson_nfc_write_page_raw;
 	nand->ecc.write_page = meson_nfc_write_page_hwecc;
 	nand->ecc.write_oob_raw = nand_write_oob_std;
diff --git a/drivers/mtd/nand/raw/mpc5121_nfc.c b/drivers/mtd/nand/raw/mpc5121_nfc.c
index 8b90def6686f..b15f065156a0 100644
--- a/drivers/mtd/nand/raw/mpc5121_nfc.c
+++ b/drivers/mtd/nand/raw/mpc5121_nfc.c
@@ -688,7 +688,7 @@ static int mpc5121_nfc_probe(struct platform_device *op)
 	chip->legacy.set_features = nand_get_set_features_notsupp;
 	chip->legacy.get_features = nand_get_set_features_notsupp;
 	chip->bbt_options = NAND_BBT_USE_FLASH;
-	chip->ecc.mode = NAND_ECC_SOFT;
+	chip->ecc.mode = NAND_SOFT_ECC_ENGINE;
 	chip->ecc.algo = NAND_ECC_HAMMING;
 
 	/* Support external chip-select logic on ADS5121 board */
diff --git a/drivers/mtd/nand/raw/mtk_nand.c b/drivers/mtd/nand/raw/mtk_nand.c
index 373d47d1ba4c..75e49b3c5f2b 100644
--- a/drivers/mtd/nand/raw/mtk_nand.c
+++ b/drivers/mtd/nand/raw/mtk_nand.c
@@ -1226,7 +1226,7 @@ static int mtk_nfc_ecc_init(struct device *dev, struct mtd_info *mtd)
 	int free, ret;
 
 	/* support only ecc hw mode */
-	if (nand->ecc.mode != NAND_ECC_HW) {
+	if (nand->ecc.mode != NAND_HW_ECC_ENGINE) {
 		dev_err(dev, "ecc.mode not supported\n");
 		return -EINVAL;
 	}
@@ -1390,7 +1390,7 @@ static int mtk_nfc_nand_chip_init(struct device *dev, struct mtk_nfc *nfc,
 	nand->legacy.cmd_ctrl = mtk_nfc_cmd_ctrl;
 
 	/* set default mode in case dt entry is missing */
-	nand->ecc.mode = NAND_ECC_HW;
+	nand->ecc.mode = NAND_HW_ECC_ENGINE;
 
 	nand->ecc.write_subpage = mtk_nfc_write_subpage_hwecc;
 	nand->ecc.write_page_raw = mtk_nfc_write_page_raw;
diff --git a/drivers/mtd/nand/raw/mxc_nand.c b/drivers/mtd/nand/raw/mxc_nand.c
index 59554c187e01..be1f923c3c7b 100644
--- a/drivers/mtd/nand/raw/mxc_nand.c
+++ b/drivers/mtd/nand/raw/mxc_nand.c
@@ -669,7 +669,7 @@ static void mxc_nand_enable_hwecc_v1_v2(struct nand_chip *chip, bool enable)
 	struct mxc_nand_host *host = nand_get_controller_data(chip);
 	uint16_t config1;
 
-	if (chip->ecc.mode != NAND_ECC_HW)
+	if (chip->ecc.mode != NAND_HW_ECC_ENGINE)
 		return;
 
 	config1 = readw(NFC_V1_V2_CONFIG1);
@@ -687,7 +687,7 @@ static void mxc_nand_enable_hwecc_v3(struct nand_chip *chip, bool enable)
 	struct mxc_nand_host *host = nand_get_controller_data(chip);
 	uint32_t config2;
 
-	if (chip->ecc.mode != NAND_ECC_HW)
+	if (chip->ecc.mode != NAND_HW_ECC_ENGINE)
 		return;
 
 	config2 = readl(NFC_V3_CONFIG2);
@@ -1117,7 +1117,7 @@ static void preset_v1(struct mtd_info *mtd)
 	struct mxc_nand_host *host = nand_get_controller_data(nand_chip);
 	uint16_t config1 = 0;
 
-	if (nand_chip->ecc.mode == NAND_ECC_HW && mtd->writesize)
+	if (nand_chip->ecc.mode == NAND_HW_ECC_ENGINE && mtd->writesize)
 		config1 |= NFC_V1_V2_CONFIG1_ECC_EN;
 
 	if (!host->devtype_data->irqpending_quirk)
@@ -1227,7 +1227,7 @@ static void preset_v2(struct mtd_info *mtd)
 	if (mtd->writesize) {
 		uint16_t pages_per_block = mtd->erasesize / mtd->writesize;
 
-		if (nand_chip->ecc.mode == NAND_ECC_HW)
+		if (nand_chip->ecc.mode == NAND_HW_ECC_ENGINE)
 			config1 |= NFC_V1_V2_CONFIG1_ECC_EN;
 
 		host->eccsize = get_eccsize(mtd);
@@ -1303,7 +1303,7 @@ static void preset_v3(struct mtd_info *mtd)
 	}
 
 	if (mtd->writesize) {
-		if (chip->ecc.mode == NAND_ECC_HW)
+		if (chip->ecc.mode == NAND_HW_ECC_ENGINE)
 			config2 |= NFC_V3_CONFIG2_ECC_EN;
 
 		config2 |= NFC_V3_CONFIG2_PPB(
@@ -1681,7 +1681,7 @@ static int mxcnd_attach_chip(struct nand_chip *chip)
 	struct device *dev = mtd->dev.parent;
 
 	switch (chip->ecc.mode) {
-	case NAND_ECC_HW:
+	case NAND_HW_ECC_ENGINE:
 		chip->ecc.read_page = mxc_nand_read_page;
 		chip->ecc.read_page_raw = mxc_nand_read_page_raw;
 		chip->ecc.read_oob = mxc_nand_read_oob;
@@ -1690,7 +1690,7 @@ static int mxcnd_attach_chip(struct nand_chip *chip)
 		chip->ecc.write_oob = mxc_nand_write_oob;
 		break;
 
-	case NAND_ECC_SOFT:
+	case NAND_SOFT_ECC_ENGINE:
 		break;
 
 	default:
@@ -1728,7 +1728,7 @@ static int mxcnd_attach_chip(struct nand_chip *chip)
 	 */
 	host->used_oobsize = min(mtd->oobsize, 218U);
 
-	if (chip->ecc.mode == NAND_ECC_HW) {
+	if (chip->ecc.mode == NAND_HW_ECC_ENGINE) {
 		if (is_imx21_nfc(host) || is_imx27_nfc(host))
 			chip->ecc.strength = 1;
 		else
@@ -1843,9 +1843,9 @@ static int mxcnd_probe(struct platform_device *pdev)
 	mtd_set_ooblayout(mtd, host->devtype_data->ooblayout);
 
 	if (host->pdata.hw_ecc) {
-		this->ecc.mode = NAND_ECC_HW;
+		this->ecc.mode = NAND_HW_ECC_ENGINE;
 	} else {
-		this->ecc.mode = NAND_ECC_SOFT;
+		this->ecc.mode = NAND_SOFT_ECC_ENGINE;
 		this->ecc.algo = NAND_ECC_HAMMING;
 	}
 
diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 00a261284aad..ad0b892c2523 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -4835,7 +4835,7 @@ static int nand_detect(struct nand_chip *chip, struct nand_flash_dev *type)
 
 static const char * const nand_ecc_modes[] = {
 	[NAND_ECC_NONE]		= "none",
-	[NAND_ECC_SOFT]		= "soft",
+	[NAND_SOFT_ECC_ENGINE]		= "soft",
 	[NAND_ECC_HW]		= "hw",
 	[NAND_ECC_HW_SYNDROME]	= "hw_syndrome",
 	[NAND_ECC_HW_OOB_FIRST]	= "hw_oob_first",
@@ -4863,21 +4863,44 @@ static int of_get_nand_ecc_mode(struct device_node *np)
 	if (err < 0)
 		return err;
 
-	for (i = NAND_ECC_NONE; i < ARRAY_SIZE(nand_ecc_modes); i++)
-		if (!strcasecmp(pm, nand_ecc_modes[i]))
+	for (i = NAND_NO_ECC_ENGINE;
+	     i < ARRAY_SIZE(nand_ecc_engine_providers); i++)
+		if (!strcasecmp(pm, nand_ecc_engine_providers[i]))
 			return i;
 
+	for (i = NAND_ECC_SYNDROME_OOB_PLACEMENT;
+	     i < ARRAY_SIZE(nand_ecc_engine_oob_placement); i++)
+		if (!strcasecmp(pm, nand_ecc_engine_oob_placement[i]))
+			return NAND_HW_ECC_ENGINE;
+
 	/*
 	 * For backward compatibility we support few obsoleted values that don't
-	 * have their mappings into the nand_ecc_mode enum anymore (they were
-	 * merged with other enums).
+	 * have their mappings into the nand_ecc_engine_providers enum anymore
+	 * (they were merged with other enums).
 	 */
 	if (!strcasecmp(pm, "soft_bch"))
-		return NAND_ECC_SOFT;
+		return NAND_SOFT_ECC_ENGINE;
 
 	return -ENODEV;
 }
 
+static int of_get_nand_ecc_oob_placement(struct device_node *np)
+{
+	const char *pm;
+	int err, i;
+
+	err = of_property_read_string(np, "nand-ecc-mode", &pm);
+	if (err < 0)
+		return err;
+
+	for (i = NAND_ECC_SYNDROME_OOB_PLACEMENT;
+	     i < ARRAY_SIZE(nand_ecc_engine_oob_placement); i++)
+		if (!strcasecmp(pm, nand_ecc_engine_providers[i]))
+			return i;
+
+	return NAND_ECC_DEFAULT_OOB_PLACEMENT;
+}
+
 static const char * const nand_ecc_algos[] = {
 	[NAND_ECC_HAMMING]	= "hamming",
 	[NAND_ECC_BCH]		= "bch",
@@ -4955,7 +4978,7 @@ static bool of_get_nand_on_flash_bbt(struct device_node *np)
 static int nand_dt_init(struct nand_chip *chip)
 {
 	struct device_node *dn = nand_get_flash_node(chip);
-	int ecc_mode, ecc_algo, ecc_strength, ecc_step;
+	int ecc_mode, ecc_oob_placement, ecc_algo, ecc_strength, ecc_step;
 
 	if (!dn)
 		return 0;
@@ -4970,6 +4993,7 @@ static int nand_dt_init(struct nand_chip *chip)
 		chip->bbt_options |= NAND_BBT_USE_FLASH;
 
 	ecc_mode = of_get_nand_ecc_mode(dn);
+	ecc_oob_placement = of_get_nand_ecc_oob_placement(dn);
 	ecc_algo = of_get_nand_ecc_algo(dn);
 	ecc_strength = of_get_nand_ecc_strength(dn);
 	ecc_step = of_get_nand_ecc_step_size(dn);
@@ -4977,6 +5001,9 @@ static int nand_dt_init(struct nand_chip *chip)
 	if (ecc_mode >= 0)
 		chip->ecc.mode = ecc_mode;
 
+	if (ecc_oob_placement >= 0)
+		chip->ecc.placement = ecc_oob_placement;
+
 	if (ecc_algo >= 0)
 		chip->ecc.algo = ecc_algo;
 
@@ -5097,7 +5124,7 @@ static int nand_set_ecc_soft_ops(struct nand_chip *chip)
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct nand_ecc_ctrl *ecc = &chip->ecc;
 
-	if (WARN_ON(ecc->mode != NAND_ECC_SOFT))
+	if (WARN_ON(ecc->mode != NAND_SOFT_ECC_ENGINE))
 		return -EINVAL;
 
 	switch (ecc->algo) {
@@ -5558,7 +5585,7 @@ static int nand_scan_tail(struct nand_chip *chip)
 	 * If no default placement scheme is given, select an appropriate one.
 	 */
 	if (!mtd->ooblayout &&
-	    !(ecc->mode == NAND_ECC_SOFT && ecc->algo == NAND_ECC_BCH)) {
+	    !(ecc->mode == NAND_SOFT_ECC_ENGINE && ecc->algo == NAND_ECC_BCH)) {
 		switch (mtd->oobsize) {
 		case 8:
 		case 16:
@@ -5576,7 +5603,7 @@ static int nand_scan_tail(struct nand_chip *chip)
 			 * page with ECC layout when ->oobsize <= 128 for
 			 * compatibility reasons.
 			 */
-			if (ecc->mode == NAND_ECC_NONE) {
+			if (ecc->mode == NAND_NO_ECC_ENGINE) {
 				mtd_set_ooblayout(mtd,
 						&nand_ooblayout_lp_ops);
 				break;
@@ -5595,12 +5622,12 @@ static int nand_scan_tail(struct nand_chip *chip)
 	 */
 
 	switch (ecc->mode) {
-	case NAND_ECC_HW:
+	case NAND_HW_ECC_ENGINE:
 
 		switch (ecc->placement) {
 		case NAND_ECC_OOB_FIRST_PLACEMENT:
 			/*
-			 * Similar to NAND_ECC_HW, but a separate read_page handle */
+			 * Similar to NAND_HW_ECC_ENGINE, but a separate read_page handle */
 			if (!ecc->calculate || !ecc->correct || !ecc->hwctl) {
 				WARN(1, "No ECC functions supplied; hardware ECC not possible\n");
 				ret = -EINVAL;
@@ -5664,12 +5691,12 @@ static int nand_scan_tail(struct nand_chip *chip)
 			}
 			pr_warn("%d byte HW ECC not possible on %d byte page size, fallback to SW ECC\n",
 				ecc->size, mtd->writesize);
-			ecc->mode = NAND_ECC_SOFT;
+			ecc->mode = NAND_SOFT_ECC_ENGINE;
 			ecc->algo = NAND_ECC_HAMMING;
 		}
 		/* fall through */
 
-	case NAND_ECC_SOFT:
+	case NAND_SOFT_ECC_ENGINE:
 		ret = nand_set_ecc_soft_ops(chip);
 		if (ret) {
 			ret = -EINVAL;
@@ -5677,7 +5704,7 @@ static int nand_scan_tail(struct nand_chip *chip)
 		}
 		break;
 
-	case NAND_ECC_ON_DIE:
+	case NAND_ON_DIE_ECC_ENGINE:
 		if (!ecc->read_page || !ecc->write_page) {
 			WARN(1, "No ECC functions supplied; on-die ECC not possible\n");
 			ret = -EINVAL;
@@ -5689,8 +5716,8 @@ static int nand_scan_tail(struct nand_chip *chip)
 			ecc->write_oob = nand_write_oob_std;
 		break;
 
-	case NAND_ECC_NONE:
-		pr_warn("NAND_ECC_NONE selected by board driver. This is not recommended!\n");
+	case NAND_NO_ECC_ENGINE:
+		pr_warn("NAND_NO_ECC_ENGINE selected by board driver. This is not recommended!\n");
 		ecc->read_page = nand_read_page_raw;
 		ecc->write_page = nand_write_page_raw;
 		ecc->read_oob = nand_read_oob_std;
@@ -5779,7 +5806,7 @@ static int nand_scan_tail(struct nand_chip *chip)
 
 	/* Large page NAND with SOFT_ECC should support subpage reads */
 	switch (ecc->mode) {
-	case NAND_ECC_SOFT:
+	case NAND_SOFT_ECC_ENGINE:
 		if (chip->page_shift > 9)
 			chip->options |= NAND_SUBPAGE_READ;
 		break;
@@ -5921,7 +5948,7 @@ EXPORT_SYMBOL(nand_scan_with_ids);
  */
 void nand_cleanup(struct nand_chip *chip)
 {
-	if (chip->ecc.mode == NAND_ECC_SOFT &&
+	if (chip->ecc.mode == NAND_SOFT_ECC_ENGINE &&
 	    chip->ecc.algo == NAND_ECC_BCH)
 		nand_bch_free((struct nand_bch_control *)chip->ecc.priv);
 
diff --git a/drivers/mtd/nand/raw/nand_micron.c b/drivers/mtd/nand/raw/nand_micron.c
index 1622d3145587..d0a640e6f3c9 100644
--- a/drivers/mtd/nand/raw/nand_micron.c
+++ b/drivers/mtd/nand/raw/nand_micron.c
@@ -444,13 +444,13 @@ static int micron_nand_init(struct nand_chip *chip)
 	ondie = micron_supports_on_die_ecc(chip);
 
 	if (ondie == MICRON_ON_DIE_MANDATORY &&
-	    chip->ecc.mode != NAND_ECC_ON_DIE) {
+	    chip->ecc.mode != NAND_ON_DIE_ECC_ENGINE) {
 		pr_err("On-die ECC forcefully enabled, not supported\n");
 		ret = -EINVAL;
 		goto err_free_manuf_data;
 	}
 
-	if (chip->ecc.mode == NAND_ECC_ON_DIE) {
+	if (chip->ecc.mode == NAND_ON_DIE_ECC_ENGINE) {
 		if (ondie == MICRON_ON_DIE_UNSUPPORTED) {
 			pr_err("On-die ECC selected but not supported\n");
 			ret = -EINVAL;
diff --git a/drivers/mtd/nand/raw/nand_toshiba.c b/drivers/mtd/nand/raw/nand_toshiba.c
index 9c03fbb1f47d..e13930e8ccc8 100644
--- a/drivers/mtd/nand/raw/nand_toshiba.c
+++ b/drivers/mtd/nand/raw/nand_toshiba.c
@@ -146,7 +146,7 @@ static int toshiba_nand_init(struct nand_chip *chip)
 		chip->options |= NAND_BBM_FIRSTPAGE | NAND_BBM_SECONDPAGE;
 
 	/* Check that chip is BENAND and ECC mode is on-die */
-	if (nand_is_slc(chip) && chip->ecc.mode == NAND_ECC_ON_DIE &&
+	if (nand_is_slc(chip) && chip->ecc.mode == NAND_ON_DIE_ECC_ENGINE &&
 	    chip->id.data[4] & TOSHIBA_NAND_ID4_IS_BENAND)
 		toshiba_nand_benand_init(chip);
 
diff --git a/drivers/mtd/nand/raw/nandsim.c b/drivers/mtd/nand/raw/nandsim.c
index 9a70754a61ef..72c7395e2671 100644
--- a/drivers/mtd/nand/raw/nandsim.c
+++ b/drivers/mtd/nand/raw/nandsim.c
@@ -2203,7 +2203,7 @@ static int ns_attach_chip(struct nand_chip *chip)
 		return -EINVAL;
 	}
 
-	chip->ecc.mode = NAND_ECC_SOFT;
+	chip->ecc.mode = NAND_SOFT_ECC_ENGINE;
 	chip->ecc.algo = NAND_ECC_BCH;
 	chip->ecc.size = 512;
 	chip->ecc.strength = bch;
@@ -2242,7 +2242,7 @@ static int __init ns_init_module(void)
 	nsmtd       = nand_to_mtd(chip);
 	nand_set_controller_data(chip, (void *)ns);
 
-	chip->ecc.mode   = NAND_ECC_SOFT;
+	chip->ecc.mode   = NAND_SOFT_ECC_ENGINE;
 	chip->ecc.algo   = NAND_ECC_HAMMING;
 	/* The NAND_SKIP_BBTSCAN option is necessary for 'overridesize' */
 	/* and 'badblocks' parameters to work */
diff --git a/drivers/mtd/nand/raw/ndfc.c b/drivers/mtd/nand/raw/ndfc.c
index d324396ab7ff..46b0f09db171 100644
--- a/drivers/mtd/nand/raw/ndfc.c
+++ b/drivers/mtd/nand/raw/ndfc.c
@@ -149,7 +149,7 @@ static int ndfc_chip_init(struct ndfc_controller *ndfc,
 	chip->ecc.correct = nand_correct_data;
 	chip->ecc.hwctl = ndfc_enable_hwecc;
 	chip->ecc.calculate = ndfc_calculate_ecc;
-	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.mode = NAND_HW_ECC_ENGINE;
 	chip->ecc.size = 256;
 	chip->ecc.bytes = 3;
 	chip->ecc.strength = 1;
diff --git a/drivers/mtd/nand/raw/nuc900_nand.c b/drivers/mtd/nand/raw/nuc900_nand.c
index 13bf7b2894d3..fc7be1970916 100644
--- a/drivers/mtd/nand/raw/nuc900_nand.c
+++ b/drivers/mtd/nand/raw/nuc900_nand.c
@@ -258,7 +258,7 @@ static int nuc900_nand_probe(struct platform_device *pdev)
 	chip->legacy.read_buf	= nuc900_nand_read_buf;
 	chip->legacy.chip_delay	= 50;
 	chip->options		= 0;
-	chip->ecc.mode		= NAND_ECC_SOFT;
+	chip->ecc.mode		= NAND_SOFT_ECC_ENGINE;
 	chip->ecc.algo		= NAND_ECC_HAMMING;
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
diff --git a/drivers/mtd/nand/raw/omap2.c b/drivers/mtd/nand/raw/omap2.c
index 8d881a28140e..1a7d17f46ca3 100644
--- a/drivers/mtd/nand/raw/omap2.c
+++ b/drivers/mtd/nand/raw/omap2.c
@@ -884,7 +884,7 @@ static int omap_correct_data(struct nand_chip *chip, u_char *dat,
 	int stat = 0;
 
 	/* Ex NAND_ECC_HW12_2048 */
-	if ((info->nand.ecc.mode == NAND_ECC_HW) &&
+	if ((info->nand.ecc.mode == NAND_HW_ECC_ENGINE) &&
 			(info->nand.ecc.size  == 2048))
 		blockCnt = 4;
 	else
@@ -2010,11 +2010,11 @@ static int omap_nand_attach_chip(struct nand_chip *chip)
 		return -EINVAL;
 
 	/*
-	 * Bail out earlier to let NAND_ECC_SOFT code create its own
+	 * Bail out earlier to let NAND_SOFT_ECC_ENGINE code create its own
 	 * ooblayout instead of using ours.
 	 */
 	if (info->ecc_opt == OMAP_ECC_HAM1_CODE_SW) {
-		chip->ecc.mode = NAND_ECC_SOFT;
+		chip->ecc.mode = NAND_SOFT_ECC_ENGINE;
 		chip->ecc.algo = NAND_ECC_HAMMING;
 		return 0;
 	}
@@ -2023,7 +2023,7 @@ static int omap_nand_attach_chip(struct nand_chip *chip)
 	switch (info->ecc_opt) {
 	case OMAP_ECC_HAM1_CODE_HW:
 		dev_info(dev, "nand: using OMAP_ECC_HAM1_CODE_HW\n");
-		chip->ecc.mode		= NAND_ECC_HW;
+		chip->ecc.mode		= NAND_HW_ECC_ENGINE;
 		chip->ecc.bytes		= 3;
 		chip->ecc.size		= 512;
 		chip->ecc.strength	= 1;
@@ -2040,7 +2040,7 @@ static int omap_nand_attach_chip(struct nand_chip *chip)
 
 	case OMAP_ECC_BCH4_CODE_HW_DETECTION_SW:
 		pr_info("nand: using OMAP_ECC_BCH4_CODE_HW_DETECTION_SW\n");
-		chip->ecc.mode		= NAND_ECC_HW;
+		chip->ecc.mode		= NAND_HW_ECC_ENGINE;
 		chip->ecc.size		= 512;
 		chip->ecc.bytes		= 7;
 		chip->ecc.strength	= 4;
@@ -2060,7 +2060,7 @@ static int omap_nand_attach_chip(struct nand_chip *chip)
 
 	case OMAP_ECC_BCH4_CODE_HW:
 		pr_info("nand: using OMAP_ECC_BCH4_CODE_HW ECC scheme\n");
-		chip->ecc.mode		= NAND_ECC_HW;
+		chip->ecc.mode		= NAND_HW_ECC_ENGINE;
 		chip->ecc.size		= 512;
 		/* 14th bit is kept reserved for ROM-code compatibility */
 		chip->ecc.bytes		= 7 + 1;
@@ -2082,7 +2082,7 @@ static int omap_nand_attach_chip(struct nand_chip *chip)
 
 	case OMAP_ECC_BCH8_CODE_HW_DETECTION_SW:
 		pr_info("nand: using OMAP_ECC_BCH8_CODE_HW_DETECTION_SW\n");
-		chip->ecc.mode		= NAND_ECC_HW;
+		chip->ecc.mode		= NAND_HW_ECC_ENGINE;
 		chip->ecc.size		= 512;
 		chip->ecc.bytes		= 13;
 		chip->ecc.strength	= 8;
@@ -2102,7 +2102,7 @@ static int omap_nand_attach_chip(struct nand_chip *chip)
 
 	case OMAP_ECC_BCH8_CODE_HW:
 		pr_info("nand: using OMAP_ECC_BCH8_CODE_HW ECC scheme\n");
-		chip->ecc.mode		= NAND_ECC_HW;
+		chip->ecc.mode		= NAND_HW_ECC_ENGINE;
 		chip->ecc.size		= 512;
 		/* 14th bit is kept reserved for ROM-code compatibility */
 		chip->ecc.bytes		= 13 + 1;
@@ -2125,7 +2125,7 @@ static int omap_nand_attach_chip(struct nand_chip *chip)
 
 	case OMAP_ECC_BCH16_CODE_HW:
 		pr_info("Using OMAP_ECC_BCH16_CODE_HW ECC scheme\n");
-		chip->ecc.mode		= NAND_ECC_HW;
+		chip->ecc.mode		= NAND_HW_ECC_ENGINE;
 		chip->ecc.size		= 512;
 		chip->ecc.bytes		= 26;
 		chip->ecc.strength	= 16;
diff --git a/drivers/mtd/nand/raw/orion_nand.c b/drivers/mtd/nand/raw/orion_nand.c
index d27b39a7223c..e89032e4120f 100644
--- a/drivers/mtd/nand/raw/orion_nand.c
+++ b/drivers/mtd/nand/raw/orion_nand.c
@@ -139,7 +139,7 @@ static int __init orion_nand_probe(struct platform_device *pdev)
 	nc->legacy.IO_ADDR_R = nc->legacy.IO_ADDR_W = io_base;
 	nc->legacy.cmd_ctrl = orion_nand_cmd_ctrl;
 	nc->legacy.read_buf = orion_nand_read_buf;
-	nc->ecc.mode = NAND_ECC_SOFT;
+	nc->ecc.mode = NAND_SOFT_ECC_ENGINE;
 	nc->ecc.algo = NAND_ECC_HAMMING;
 
 	if (board->chip_delay)
diff --git a/drivers/mtd/nand/raw/pasemi_nand.c b/drivers/mtd/nand/raw/pasemi_nand.c
index 9cfe7395172a..3ce489765274 100644
--- a/drivers/mtd/nand/raw/pasemi_nand.c
+++ b/drivers/mtd/nand/raw/pasemi_nand.c
@@ -132,7 +132,7 @@ static int pasemi_nand_probe(struct platform_device *ofdev)
 	chip->legacy.read_buf = pasemi_read_buf;
 	chip->legacy.write_buf = pasemi_write_buf;
 	chip->legacy.chip_delay = 0;
-	chip->ecc.mode = NAND_ECC_SOFT;
+	chip->ecc.mode = NAND_SOFT_ECC_ENGINE;
 	chip->ecc.algo = NAND_ECC_HAMMING;
 
 	/* Enable the following for a flash based bad block table */
diff --git a/drivers/mtd/nand/raw/plat_nand.c b/drivers/mtd/nand/raw/plat_nand.c
index dc0f3074ddbf..3c3b7b751944 100644
--- a/drivers/mtd/nand/raw/plat_nand.c
+++ b/drivers/mtd/nand/raw/plat_nand.c
@@ -66,7 +66,7 @@ static int plat_nand_probe(struct platform_device *pdev)
 	data->chip.options |= pdata->chip.options;
 	data->chip.bbt_options |= pdata->chip.bbt_options;
 
-	data->chip.ecc.mode = NAND_ECC_SOFT;
+	data->chip.ecc.mode = NAND_SOFT_ECC_ENGINE;
 	data->chip.ecc.algo = NAND_ECC_HAMMING;
 
 	platform_set_drvdata(pdev, data);
diff --git a/drivers/mtd/nand/raw/qcom_nandc.c b/drivers/mtd/nand/raw/qcom_nandc.c
index 7bb9a7e8e1e7..c903cfad7910 100644
--- a/drivers/mtd/nand/raw/qcom_nandc.c
+++ b/drivers/mtd/nand/raw/qcom_nandc.c
@@ -2548,7 +2548,7 @@ static int qcom_nand_attach_chip(struct nand_chip *chip)
 	ecc->write_page_raw	= qcom_nandc_write_page_raw;
 	ecc->write_oob		= qcom_nandc_write_oob;
 
-	ecc->mode = NAND_ECC_HW;
+	ecc->mode = NAND_HW_ECC_ENGINE;
 
 	mtd_set_ooblayout(mtd, &qcom_nand_ooblayout_ops);
 
diff --git a/drivers/mtd/nand/raw/r852.c b/drivers/mtd/nand/raw/r852.c
index de4e6977cff4..fcb49cb1db4a 100644
--- a/drivers/mtd/nand/raw/r852.c
+++ b/drivers/mtd/nand/raw/r852.c
@@ -857,7 +857,7 @@ static int  r852_probe(struct pci_dev *pci_dev, const struct pci_device_id *id)
 	chip->legacy.write_buf = r852_write_buf;
 
 	/* ecc */
-	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.mode = NAND_HW_ECC_ENGINE;
 	chip->ecc.placement = NAND_ECC_SYNDROME_OOB_PLACEMENT;
 	chip->ecc.size = R852_DMA_LEN;
 	chip->ecc.bytes = SM_OOB_SIZE;
diff --git a/drivers/mtd/nand/raw/s3c2410.c b/drivers/mtd/nand/raw/s3c2410.c
index 0009c1820e21..f9d8e848bfde 100644
--- a/drivers/mtd/nand/raw/s3c2410.c
+++ b/drivers/mtd/nand/raw/s3c2410.c
@@ -930,14 +930,14 @@ static int s3c2410_nand_attach_chip(struct nand_chip *chip)
 
 	switch (chip->ecc.mode) {
 
-	case NAND_ECC_NONE:
+	case NAND_NO_ECC_ENGINE:
 		dev_info(info->device, "ECC disabled\n");
 		break;
 
-	case NAND_ECC_SOFT:
+	case NAND_SOFT_ECC_ENGINE:
 		/*
 		 * This driver expects Hamming based ECC when ecc_mode is set
-		 * to NAND_ECC_SOFT. Force ecc.algo to NAND_ECC_HAMMING to
+		 * to NAND_SOFT_ECC_ENGINE. Force ecc.algo to NAND_ECC_HAMMING to
 		 * avoid adding an extra ecc_algo field to
 		 * s3c2410_platform_nand.
 		 */
@@ -945,7 +945,7 @@ static int s3c2410_nand_attach_chip(struct nand_chip *chip)
 		dev_info(info->device, "soft ECC\n");
 		break;
 
-	case NAND_ECC_HW:
+	case NAND_HW_ECC_ENGINE:
 		chip->ecc.calculate = s3c2410_nand_calculate_ecc;
 		chip->ecc.correct   = s3c2410_nand_correct_data;
 		chip->ecc.strength  = 1;
diff --git a/drivers/mtd/nand/raw/sh_flctl.c b/drivers/mtd/nand/raw/sh_flctl.c
index e509c93737c4..43ff453afc9e 100644
--- a/drivers/mtd/nand/raw/sh_flctl.c
+++ b/drivers/mtd/nand/raw/sh_flctl.c
@@ -1039,12 +1039,12 @@ static int flctl_chip_attach_chip(struct nand_chip *chip)
 		chip->ecc.strength = 4;
 		chip->ecc.read_page = flctl_read_page_hwecc;
 		chip->ecc.write_page = flctl_write_page_hwecc;
-		chip->ecc.mode = NAND_ECC_HW;
+		chip->ecc.mode = NAND_HW_ECC_ENGINE;
 
 		/* 4 symbols ECC enabled */
 		flctl->flcmncr_base |= _4ECCEN;
 	} else {
-		chip->ecc.mode = NAND_ECC_SOFT;
+		chip->ecc.mode = NAND_SOFT_ECC_ENGINE;
 		chip->ecc.algo = NAND_ECC_HAMMING;
 	}
 
diff --git a/drivers/mtd/nand/raw/sharpsl.c b/drivers/mtd/nand/raw/sharpsl.c
index b47a9eaff89b..dd91e45ea51a 100644
--- a/drivers/mtd/nand/raw/sharpsl.c
+++ b/drivers/mtd/nand/raw/sharpsl.c
@@ -157,7 +157,7 @@ static int sharpsl_nand_probe(struct platform_device *pdev)
 	/* 15 us command delay time */
 	this->legacy.chip_delay = 15;
 	/* set eccmode using hardware ECC */
-	this->ecc.mode = NAND_ECC_HW;
+	this->ecc.mode = NAND_HW_ECC_ENGINE;
 	this->ecc.size = 256;
 	this->ecc.bytes = 3;
 	this->ecc.strength = 1;
diff --git a/drivers/mtd/nand/raw/socrates_nand.c b/drivers/mtd/nand/raw/socrates_nand.c
index 20f40c0e812c..595df9da6d66 100644
--- a/drivers/mtd/nand/raw/socrates_nand.c
+++ b/drivers/mtd/nand/raw/socrates_nand.c
@@ -153,7 +153,7 @@ static int socrates_nand_probe(struct platform_device *ofdev)
 	nand_chip->legacy.read_buf = socrates_nand_read_buf;
 	nand_chip->legacy.dev_ready = socrates_nand_device_ready;
 
-	nand_chip->ecc.mode = NAND_ECC_SOFT;	/* enable ECC */
+	nand_chip->ecc.mode = NAND_SOFT_ECC_ENGINE;	/* enable ECC */
 	nand_chip->ecc.algo = NAND_ECC_HAMMING;
 
 	/* TODO: I have no idea what real delay is. */
diff --git a/drivers/mtd/nand/raw/stm32_fmc2_nand.c b/drivers/mtd/nand/raw/stm32_fmc2_nand.c
index e63acc077c18..0f662654b8e5 100644
--- a/drivers/mtd/nand/raw/stm32_fmc2_nand.c
+++ b/drivers/mtd/nand/raw/stm32_fmc2_nand.c
@@ -1739,14 +1739,14 @@ static int stm32_fmc2_attach_chip(struct nand_chip *chip)
 	int ret;
 
 	/*
-	 * Only NAND_ECC_HW mode is actually supported
+	 * Only NAND_HW_ECC_ENGINE mode is actually supported
 	 * Hamming => ecc.strength = 1
 	 * BCH4 => ecc.strength = 4
 	 * BCH8 => ecc.strength = 8
 	 * ECC sector size = 512
 	 */
-	if (chip->ecc.mode != NAND_ECC_HW) {
-		dev_err(fmc2->dev, "nand_ecc_mode is not well defined in the DT\n");
+	if (chip->ecc.mode != NAND_HW_ECC_ENGINE) {
+		dev_err(fmc2->dev, "nand_ecc_engine_type is not well defined in the DT\n");
 		return -EINVAL;
 	}
 
@@ -1961,7 +1961,7 @@ static int stm32_fmc2_probe(struct platform_device *pdev)
 			 NAND_USE_BOUNCE_BUFFER;
 
 	/* Default ECC settings */
-	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.mode = NAND_HW_ECC_ENGINE;
 	chip->ecc.size = FMC2_ECC_STEP_SIZE;
 	chip->ecc.strength = FMC2_ECC_BCH8;
 
diff --git a/drivers/mtd/nand/raw/sunxi_nand.c b/drivers/mtd/nand/raw/sunxi_nand.c
index 89773293c64d..09dbca3eda63 100644
--- a/drivers/mtd/nand/raw/sunxi_nand.c
+++ b/drivers/mtd/nand/raw/sunxi_nand.c
@@ -1575,7 +1575,7 @@ static int sunxi_nand_ooblayout_free(struct mtd_info *mtd, int section,
 	 * only have 2 bytes available in the first user data
 	 * section.
 	 */
-	if (!section && ecc->mode == NAND_ECC_HW) {
+	if (!section && ecc->mode == NAND_HW_ECC_ENGINE) {
 		oobregion->offset = 2;
 		oobregion->length = 2;
 
@@ -1721,10 +1721,10 @@ static int sunxi_nand_hw_ecc_ctrl_init(struct nand_chip *nand,
 static void sunxi_nand_ecc_cleanup(struct nand_ecc_ctrl *ecc)
 {
 	switch (ecc->mode) {
-	case NAND_ECC_HW:
+	case NAND_HW_ECC_ENGINE:
 		sunxi_nand_hw_ecc_ctrl_cleanup(ecc);
 		break;
-	case NAND_ECC_NONE:
+	case NAND_NO_ECC_ENGINE:
 	default:
 		break;
 	}
@@ -1753,13 +1753,13 @@ static int sunxi_nand_attach_chip(struct nand_chip *nand)
 		return -EINVAL;
 
 	switch (ecc->mode) {
-	case NAND_ECC_HW:
+	case NAND_HW_ECC_ENGINE:
 		ret = sunxi_nand_hw_ecc_ctrl_init(nand, ecc, np);
 		if (ret)
 			return ret;
 		break;
-	case NAND_ECC_NONE:
-	case NAND_ECC_SOFT:
+	case NAND_NO_ECC_ENGINE:
+	case NAND_SOFT_ECC_ENGINE:
 		break;
 	default:
 		return -EINVAL;
@@ -1990,7 +1990,7 @@ static int sunxi_nand_chip_init(struct device *dev, struct sunxi_nfc *nfc,
 	 * Set the ECC mode to the default value in case nothing is specified
 	 * in the DT.
 	 */
-	nand->ecc.mode = NAND_ECC_HW;
+	nand->ecc.mode = NAND_HW_ECC_ENGINE;
 	nand_set_flash_node(nand, np);
 
 	mtd = nand_to_mtd(nand);
diff --git a/drivers/mtd/nand/raw/tango_nand.c b/drivers/mtd/nand/raw/tango_nand.c
index b3f2cabcc7c0..823660fd55af 100644
--- a/drivers/mtd/nand/raw/tango_nand.c
+++ b/drivers/mtd/nand/raw/tango_nand.c
@@ -511,7 +511,7 @@ static int tango_attach_chip(struct nand_chip *chip)
 {
 	struct nand_ecc_ctrl *ecc = &chip->ecc;
 
-	ecc->mode = NAND_ECC_HW;
+	ecc->mode = NAND_HW_ECC_ENGINE;
 	ecc->algo = NAND_ECC_BCH;
 	ecc->bytes = DIV_ROUND_UP(ecc->strength * FIELD_ORDER, BITS_PER_BYTE);
 
diff --git a/drivers/mtd/nand/raw/tegra_nand.c b/drivers/mtd/nand/raw/tegra_nand.c
index 3cc9a4c41443..69a923f83780 100644
--- a/drivers/mtd/nand/raw/tegra_nand.c
+++ b/drivers/mtd/nand/raw/tegra_nand.c
@@ -914,7 +914,7 @@ static int tegra_nand_attach_chip(struct nand_chip *chip)
 	if (chip->bbt_options & NAND_BBT_USE_FLASH)
 		chip->bbt_options |= NAND_BBT_NO_OOB;
 
-	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.mode = NAND_HW_ECC_ENGINE;
 	chip->ecc.size = 512;
 	chip->ecc.steps = mtd->writesize / chip->ecc.size;
 	if (chip->base.eccreq.step_size != 512) {
diff --git a/drivers/mtd/nand/raw/tmio_nand.c b/drivers/mtd/nand/raw/tmio_nand.c
index db030f1701ee..7307e168d367 100644
--- a/drivers/mtd/nand/raw/tmio_nand.c
+++ b/drivers/mtd/nand/raw/tmio_nand.c
@@ -410,7 +410,7 @@ static int tmio_probe(struct platform_device *dev)
 	nand_chip->legacy.read_buf = tmio_nand_read_buf;
 
 	/* set eccmode using hardware ECC */
-	nand_chip->ecc.mode = NAND_ECC_HW;
+	nand_chip->ecc.mode = NAND_HW_ECC_ENGINE;
 	nand_chip->ecc.size = 512;
 	nand_chip->ecc.bytes = 6;
 	nand_chip->ecc.strength = 2;
diff --git a/drivers/mtd/nand/raw/txx9ndfmc.c b/drivers/mtd/nand/raw/txx9ndfmc.c
index 2642d5bb3241..2d2c5e0f094c 100644
--- a/drivers/mtd/nand/raw/txx9ndfmc.c
+++ b/drivers/mtd/nand/raw/txx9ndfmc.c
@@ -329,7 +329,7 @@ static int __init txx9ndfmc_probe(struct platform_device *dev)
 		chip->ecc.calculate = txx9ndfmc_calculate_ecc;
 		chip->ecc.correct = txx9ndfmc_correct_data;
 		chip->ecc.hwctl = txx9ndfmc_enable_hwecc;
-		chip->ecc.mode = NAND_ECC_HW;
+		chip->ecc.mode = NAND_HW_ECC_ENGINE;
 		chip->ecc.strength = 1;
 		chip->legacy.chip_delay = 100;
 		chip->controller = &drvdata->controller;
diff --git a/drivers/mtd/nand/raw/vf610_nfc.c b/drivers/mtd/nand/raw/vf610_nfc.c
index e4fe8c4bc711..aa1ccb512bbc 100644
--- a/drivers/mtd/nand/raw/vf610_nfc.c
+++ b/drivers/mtd/nand/raw/vf610_nfc.c
@@ -730,7 +730,7 @@ static void vf610_nfc_init_controller(struct vf610_nfc *nfc)
 	else
 		vf610_nfc_clear(nfc, NFC_FLASH_CONFIG, CONFIG_16BIT);
 
-	if (nfc->chip.ecc.mode == NAND_ECC_HW) {
+	if (nfc->chip.ecc.mode == NAND_HW_ECC_ENGINE) {
 		/* Set ECC status offset in SRAM */
 		vf610_nfc_set_field(nfc, NFC_FLASH_CONFIG,
 				    CONFIG_ECC_SRAM_ADDR_MASK,
@@ -759,7 +759,7 @@ static int vf610_nfc_attach_chip(struct nand_chip *chip)
 		return -ENXIO;
 	}
 
-	if (chip->ecc.mode != NAND_ECC_HW)
+	if (chip->ecc.mode != NAND_HW_ECC_ENGINE)
 		return 0;
 
 	if (mtd->writesize != PAGE_2K && mtd->oobsize < 64) {
diff --git a/drivers/mtd/nand/raw/xway_nand.c b/drivers/mtd/nand/raw/xway_nand.c
index 834f794816a9..16d2d65bb33f 100644
--- a/drivers/mtd/nand/raw/xway_nand.c
+++ b/drivers/mtd/nand/raw/xway_nand.c
@@ -180,7 +180,7 @@ static int xway_nand_probe(struct platform_device *pdev)
 	data->chip.legacy.read_byte = xway_read_byte;
 	data->chip.legacy.chip_delay = 30;
 
-	data->chip.ecc.mode = NAND_ECC_SOFT;
+	data->chip.ecc.mode = NAND_SOFT_ECC_ENGINE;
 	data->chip.ecc.algo = NAND_ECC_HAMMING;
 
 	platform_set_drvdata(pdev, data);
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 23feab162bc2..08964ce8b65f 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -381,7 +381,7 @@ static const struct nand_ecc_caps __name = {			\
  * @write_oob:	function to write chip OOB data
  */
 struct nand_ecc_ctrl {
-	enum nand_ecc_mode mode;
+	enum nand_ecc_engine_type mode;
 	enum nand_ecc_engine_oob_placement placement;
 	enum nand_ecc_algo algo;
 	int steps;
diff --git a/include/linux/platform_data/mtd-davinci.h b/include/linux/platform_data/mtd-davinci.h
index 68ca9be60ba0..914ee61a6d6f 100644
--- a/include/linux/platform_data/mtd-davinci.h
+++ b/include/linux/platform_data/mtd-davinci.h
@@ -60,15 +60,15 @@ struct davinci_nand_pdata {		/* platform_data */
 	struct mtd_partition	*parts;
 	unsigned		nr_parts;
 
-	/* none  == NAND_ECC_NONE (strongly *not* advised!!)
-	 * soft  == NAND_ECC_SOFT
-	 * else  == NAND_ECC_HW, according to ecc_bits
+	/* none  == NAND_NO_ECC_ENGINE (strongly *not* advised!!)
+	 * soft  == NAND_SOFT_ECC_ENGINE
+	 * else  == NAND_HW_ECC_ENGINE, according to ecc_bits
 	 *
 	 * All DaVinci-family chips support 1-bit hardware ECC.
 	 * Newer ones also support 4-bit ECC, but are awkward
 	 * using it with large page chips.
 	 */
-	enum nand_ecc_mode	ecc_mode;
+	enum nand_ecc_engine_type ecc_mode;
 	enum nand_ecc_engine_oob_placement oob_placement;
 	u8			ecc_bits;
 
diff --git a/include/linux/platform_data/mtd-nand-s3c2410.h b/include/linux/platform_data/mtd-nand-s3c2410.h
index 08675b16f9e1..e30cb228c0d7 100644
--- a/include/linux/platform_data/mtd-nand-s3c2410.h
+++ b/include/linux/platform_data/mtd-nand-s3c2410.h
@@ -49,7 +49,7 @@ struct s3c2410_platform_nand {
 
 	unsigned int	ignore_unset_ecc:1;
 
-	enum nand_ecc_mode	ecc_mode;
+	enum nand_ecc_engine_type ecc_mode;
 
 	int			nr_sets;
 	struct s3c2410_nand_set *sets;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
