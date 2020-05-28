Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 589721E5E6F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 13:37:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ax+j/lbN6dmlfQfoti3J/cyTIufHHWOrD23+fsX4NZk=; b=cc+vFHW+RrSwRY
	NKM4fQlDxNSgOxj4nMXkAX+6PxE49GVFiRrgPZNht2wZCnkxvfzmIs2KMfDO1uLZSBq0s/va61PnW
	Pgk1MXDk/+d41JJbY2hLw00R0EjoZqChdQz+8eQFBs5sGXoAJAEy8hys/4Z0Ux157HKJ1Lj+ONVsg
	MbibNxHI2hJmgr2Pn36F4O5rKwi0Su5tqH+HteaPXzwiPiTTtKwIUdtAKc+B2WBkSHUKAimOcWO+j
	F5JdfjtRT/ajDKImNnSJmyluaDkriZwvN/yh+UV/G4eE2gSiVlUJeipuK01x6ImRSOJNRxFgsqVGp
	P38F/WLOlISbQbM6ImVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeGqS-0007r7-OP; Thu, 28 May 2020 11:37:08 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeGl8-0001YR-49; Thu, 28 May 2020 11:31:45 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 5914B200012;
 Thu, 28 May 2020 11:31:34 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
Subject: [PATCH v6 08/18] mtd: rawnand: Use the new ECC engine type enumeration
Date: Thu, 28 May 2020 13:31:03 +0200
Message-Id: <20200528113113.9166-9-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200528113113.9166-1-miquel.raynal@bootlin.com>
References: <20200528113113.9166-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_043138_607158_FA203EBD 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.232 listed in wl.mailspike.net]
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
Cc: Julien Su <juliensu@mxic.com.tw>, Weijie Gao <weijie.gao@mediatek.com>,
 Paul Cercueil <paul@crapouillou.net>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, Chuanhong Guo <gch981213@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Mechanical switch from the legacy "mode" enumeration to the new
"engine type" enumeration in drivers and board files.

The device tree parsing is also updated to return the new enumeration
from the old strings.

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
 drivers/mtd/nand/raw/arasan-nand-controller.c | 12 +--
 drivers/mtd/nand/raw/atmel/nand-controller.c  | 14 ++--
 drivers/mtd/nand/raw/au1550nd.c               |  2 +-
 .../mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c  |  3 +-
 drivers/mtd/nand/raw/brcmnand/brcmnand.c      |  8 +-
 .../mtd/nand/raw/cadence-nand-controller.c    |  4 +-
 drivers/mtd/nand/raw/cafe_nand.c              |  2 +-
 drivers/mtd/nand/raw/cs553x_nand.c            |  2 +-
 drivers/mtd/nand/raw/davinci_nand.c           | 24 +++---
 drivers/mtd/nand/raw/denali.c                 |  2 +-
 drivers/mtd/nand/raw/diskonchip.c             |  2 +-
 drivers/mtd/nand/raw/fsl_elbc_nand.c          | 18 ++---
 drivers/mtd/nand/raw/fsl_ifc_nand.c           | 10 +--
 drivers/mtd/nand/raw/fsl_upm.c                |  2 +-
 drivers/mtd/nand/raw/fsmc_nand.c              | 12 +--
 drivers/mtd/nand/raw/gpio.c                   |  2 +-
 drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c    |  2 +-
 drivers/mtd/nand/raw/hisi504_nand.c           |  6 +-
 .../mtd/nand/raw/ingenic/ingenic_nand_drv.c   | 14 ++--
 drivers/mtd/nand/raw/lpc32xx_mlc.c            |  2 +-
 drivers/mtd/nand/raw/lpc32xx_slc.c            |  2 +-
 drivers/mtd/nand/raw/marvell_nand.c           | 17 ++--
 drivers/mtd/nand/raw/meson_nand.c             |  2 +-
 drivers/mtd/nand/raw/mpc5121_nfc.c            |  2 +-
 drivers/mtd/nand/raw/mtk_nand.c               |  6 +-
 drivers/mtd/nand/raw/mxc_nand.c               | 23 +++---
 drivers/mtd/nand/raw/nand_base.c              | 78 ++++++++++++-------
 drivers/mtd/nand/raw/nand_micron.c            |  4 +-
 drivers/mtd/nand/raw/nand_toshiba.c           |  3 +-
 drivers/mtd/nand/raw/nandsim.c                |  4 +-
 drivers/mtd/nand/raw/ndfc.c                   |  2 +-
 drivers/mtd/nand/raw/omap2.c                  | 20 ++---
 drivers/mtd/nand/raw/orion_nand.c             |  2 +-
 drivers/mtd/nand/raw/pasemi_nand.c            |  2 +-
 drivers/mtd/nand/raw/plat_nand.c              |  2 +-
 drivers/mtd/nand/raw/qcom_nandc.c             |  2 +-
 drivers/mtd/nand/raw/r852.c                   |  2 +-
 drivers/mtd/nand/raw/s3c2410.c                | 18 ++---
 drivers/mtd/nand/raw/sh_flctl.c               |  4 +-
 drivers/mtd/nand/raw/sharpsl.c                |  2 +-
 drivers/mtd/nand/raw/socrates_nand.c          |  3 +-
 drivers/mtd/nand/raw/stm32_fmc2_nand.c        |  9 ++-
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
 78 files changed, 239 insertions(+), 213 deletions(-)

diff --git a/arch/arm/mach-davinci/board-da830-evm.c b/arch/arm/mach-davinci/board-da830-evm.c
index a273ab25c668..3b16a31da8b7 100644
--- a/arch/arm/mach-davinci/board-da830-evm.c
+++ b/arch/arm/mach-davinci/board-da830-evm.c
@@ -306,7 +306,7 @@ static struct davinci_nand_pdata da830_evm_nand_pdata = {
 	.core_chipsel	= 1,
 	.parts		= da830_evm_nand_partitions,
 	.nr_parts	= ARRAY_SIZE(da830_evm_nand_partitions),
-	.ecc_mode	= NAND_ECC_HW,
+	.engine_type	= NAND_ECC_ENGINE_TYPE_ON_HOST,
 	.ecc_bits	= 4,
 	.bbt_options	= NAND_BBT_USE_FLASH,
 	.bbt_td		= &da830_evm_nand_bbt_main_descr,
diff --git a/arch/arm/mach-davinci/board-da850-evm.c b/arch/arm/mach-davinci/board-da850-evm.c
index 5b3549f1236c..6b96065c015a 100644
--- a/arch/arm/mach-davinci/board-da850-evm.c
+++ b/arch/arm/mach-davinci/board-da850-evm.c
@@ -239,7 +239,7 @@ static struct davinci_nand_pdata da850_evm_nandflash_data = {
 	.core_chipsel	= 1,
 	.parts		= da850_evm_nandflash_partition,
 	.nr_parts	= ARRAY_SIZE(da850_evm_nandflash_partition),
-	.ecc_mode	= NAND_ECC_HW,
+	.engine_type	= NAND_ECC_ENGINE_TYPE_ON_HOST,
 	.ecc_bits	= 4,
 	.bbt_options	= NAND_BBT_USE_FLASH,
 	.timing		= &da850_evm_nandflash_timing,
diff --git a/arch/arm/mach-davinci/board-dm355-evm.c b/arch/arm/mach-davinci/board-dm355-evm.c
index 5113273fda69..3c5a9e3c128a 100644
--- a/arch/arm/mach-davinci/board-dm355-evm.c
+++ b/arch/arm/mach-davinci/board-dm355-evm.c
@@ -82,7 +82,7 @@ static struct davinci_nand_pdata davinci_nand_data = {
 	.mask_chipsel		= BIT(14),
 	.parts			= davinci_nand_partitions,
 	.nr_parts		= ARRAY_SIZE(davinci_nand_partitions),
-	.ecc_mode		= NAND_ECC_HW,
+	.engine_type		= NAND_ECC_ENGINE_TYPE_ON_HOST,
 	.bbt_options		= NAND_BBT_USE_FLASH,
 	.ecc_bits		= 4,
 };
diff --git a/arch/arm/mach-davinci/board-dm355-leopard.c b/arch/arm/mach-davinci/board-dm355-leopard.c
index 4c8a592754ac..e475b2113e70 100644
--- a/arch/arm/mach-davinci/board-dm355-leopard.c
+++ b/arch/arm/mach-davinci/board-dm355-leopard.c
@@ -76,7 +76,7 @@ static struct davinci_nand_pdata davinci_nand_data = {
 	.mask_chipsel		= BIT(14),
 	.parts			= davinci_nand_partitions,
 	.nr_parts		= ARRAY_SIZE(davinci_nand_partitions),
-	.ecc_mode		= NAND_HW_ECC_ENGINE,
+	.engine_type		= NAND_ECC_ENGINE_TYPE_ON_HOST,
 	.ecc_placement		= NAND_ECC_PLACEMENT_INTERLEAVED,
 	.ecc_bits		= 4,
 	.bbt_options		= NAND_BBT_USE_FLASH,
diff --git a/arch/arm/mach-davinci/board-dm365-evm.c b/arch/arm/mach-davinci/board-dm365-evm.c
index 2328b15ac067..bdf31eb77620 100644
--- a/arch/arm/mach-davinci/board-dm365-evm.c
+++ b/arch/arm/mach-davinci/board-dm365-evm.c
@@ -146,7 +146,7 @@ static struct davinci_nand_pdata davinci_nand_data = {
 	.mask_chipsel		= BIT(14),
 	.parts			= davinci_nand_partitions,
 	.nr_parts		= ARRAY_SIZE(davinci_nand_partitions),
-	.ecc_mode		= NAND_ECC_HW,
+	.engine_type		= NAND_ECC_ENGINE_TYPE_ON_HOST,
 	.bbt_options		= NAND_BBT_USE_FLASH,
 	.ecc_bits		= 4,
 };
diff --git a/arch/arm/mach-davinci/board-dm644x-evm.c b/arch/arm/mach-davinci/board-dm644x-evm.c
index 3461d12bbfc0..457ed8dd57d8 100644
--- a/arch/arm/mach-davinci/board-dm644x-evm.c
+++ b/arch/arm/mach-davinci/board-dm644x-evm.c
@@ -162,7 +162,7 @@ static struct davinci_nand_pdata davinci_evm_nandflash_data = {
 	.core_chipsel	= 0,
 	.parts		= davinci_evm_nandflash_partition,
 	.nr_parts	= ARRAY_SIZE(davinci_evm_nandflash_partition),
-	.ecc_mode	= NAND_ECC_HW,
+	.engine_type	= NAND_ECC_ENGINE_TYPE_ON_HOST,
 	.ecc_bits	= 1,
 	.bbt_options	= NAND_BBT_USE_FLASH,
 	.timing		= &davinci_evm_nandflash_timing,
diff --git a/arch/arm/mach-davinci/board-dm646x-evm.c b/arch/arm/mach-davinci/board-dm646x-evm.c
index 4600b617f9b4..0d55661e7a1f 100644
--- a/arch/arm/mach-davinci/board-dm646x-evm.c
+++ b/arch/arm/mach-davinci/board-dm646x-evm.c
@@ -91,7 +91,7 @@ static struct davinci_nand_pdata davinci_nand_data = {
 	.mask_ale 		= 0x40000,
 	.parts			= davinci_nand_partitions,
 	.nr_parts		= ARRAY_SIZE(davinci_nand_partitions),
-	.ecc_mode		= NAND_ECC_HW,
+	.engine_type		= NAND_ECC_ENGINE_TYPE_ON_HOST,
 	.ecc_bits		= 1,
 	.options		= 0,
 };
diff --git a/arch/arm/mach-davinci/board-mityomapl138.c b/arch/arm/mach-davinci/board-mityomapl138.c
index dfce421c0579..0c156fd18465 100644
--- a/arch/arm/mach-davinci/board-mityomapl138.c
+++ b/arch/arm/mach-davinci/board-mityomapl138.c
@@ -432,7 +432,7 @@ static struct davinci_nand_pdata mityomapl138_nandflash_data = {
 	.core_chipsel	= 1,
 	.parts		= mityomapl138_nandflash_partition,
 	.nr_parts	= ARRAY_SIZE(mityomapl138_nandflash_partition),
-	.ecc_mode	= NAND_ECC_HW,
+	.engine_type	= NAND_ECC_ENGINE_TYPE_ON_HOST,
 	.bbt_options	= NAND_BBT_USE_FLASH,
 	.options	= NAND_BUSWIDTH_16,
 	.ecc_bits	= 1, /* 4 bit mode is not supported with 16 bit NAND */
diff --git a/arch/arm/mach-davinci/board-neuros-osd2.c b/arch/arm/mach-davinci/board-neuros-osd2.c
index ce99f782811a..cb1ff8edc73d 100644
--- a/arch/arm/mach-davinci/board-neuros-osd2.c
+++ b/arch/arm/mach-davinci/board-neuros-osd2.c
@@ -90,7 +90,7 @@ static struct davinci_nand_pdata davinci_ntosd2_nandflash_data = {
 	.core_chipsel	= 0,
 	.parts		= davinci_ntosd2_nandflash_partition,
 	.nr_parts	= ARRAY_SIZE(davinci_ntosd2_nandflash_partition),
-	.ecc_mode	= NAND_ECC_HW,
+	.engine_type	= NAND_ECC_ENGINE_TYPE_ON_HOST,
 	.ecc_bits	= 1,
 	.bbt_options	= NAND_BBT_USE_FLASH,
 };
diff --git a/arch/arm/mach-davinci/board-omapl138-hawk.c b/arch/arm/mach-davinci/board-omapl138-hawk.c
index 5390a8630cf0..2c45ae392485 100644
--- a/arch/arm/mach-davinci/board-omapl138-hawk.c
+++ b/arch/arm/mach-davinci/board-omapl138-hawk.c
@@ -206,7 +206,7 @@ static struct davinci_nand_pdata omapl138_hawk_nandflash_data = {
 	.core_chipsel	= 1,
 	.parts		= omapl138_hawk_nandflash_partition,
 	.nr_parts	= ARRAY_SIZE(omapl138_hawk_nandflash_partition),
-	.ecc_mode	= NAND_ECC_HW,
+	.engine_type	= NAND_ECC_ENGINE_TYPE_ON_HOST,
 	.ecc_bits	= 4,
 	.bbt_options	= NAND_BBT_USE_FLASH,
 	.options	= NAND_BUSWIDTH_16,
diff --git a/arch/arm/mach-s3c24xx/common-smdk.c b/arch/arm/mach-s3c24xx/common-smdk.c
index 58e30cad386c..f845bd5ede54 100644
--- a/arch/arm/mach-s3c24xx/common-smdk.c
+++ b/arch/arm/mach-s3c24xx/common-smdk.c
@@ -166,7 +166,7 @@ static struct s3c2410_platform_nand smdk_nand_info = {
 	.twrph1		= 20,
 	.nr_sets	= ARRAY_SIZE(smdk_nand_sets),
 	.sets		= smdk_nand_sets,
-	.ecc_mode       = NAND_ECC_SOFT,
+	.engine_type	= NAND_ECC_ENGINE_TYPE_SOFT,
 };
 
 /* devices we initialise */
diff --git a/arch/arm/mach-s3c24xx/mach-anubis.c b/arch/arm/mach-s3c24xx/mach-anubis.c
index 072966dcad78..28326241e360 100644
--- a/arch/arm/mach-s3c24xx/mach-anubis.c
+++ b/arch/arm/mach-s3c24xx/mach-anubis.c
@@ -218,7 +218,7 @@ static struct s3c2410_platform_nand __initdata anubis_nand_info = {
 	.nr_sets	= ARRAY_SIZE(anubis_nand_sets),
 	.sets		= anubis_nand_sets,
 	.select_chip	= anubis_nand_select,
-	.ecc_mode       = NAND_ECC_SOFT,
+	.engine_type	= NAND_ECC_ENGINE_TYPE_SOFT,
 };
 
 /* IDE channels */
diff --git a/arch/arm/mach-s3c24xx/mach-at2440evb.c b/arch/arm/mach-s3c24xx/mach-at2440evb.c
index 58c5ef3cf1d7..04dedebdb57c 100644
--- a/arch/arm/mach-s3c24xx/mach-at2440evb.c
+++ b/arch/arm/mach-s3c24xx/mach-at2440evb.c
@@ -109,7 +109,7 @@ static struct s3c2410_platform_nand __initdata at2440evb_nand_info = {
 	.twrph1		= 40,
 	.nr_sets	= ARRAY_SIZE(at2440evb_nand_sets),
 	.sets		= at2440evb_nand_sets,
-	.ecc_mode       = NAND_ECC_SOFT,
+	.engine_type	= NAND_ECC_ENGINE_TYPE_SOFT,
 };
 
 /* DM9000AEP 10/100 ethernet controller */
diff --git a/arch/arm/mach-s3c24xx/mach-bast.c b/arch/arm/mach-s3c24xx/mach-bast.c
index a7c3955ae8f6..6465eab0ab3a 100644
--- a/arch/arm/mach-s3c24xx/mach-bast.c
+++ b/arch/arm/mach-s3c24xx/mach-bast.c
@@ -294,7 +294,7 @@ static struct s3c2410_platform_nand __initdata bast_nand_info = {
 	.nr_sets	= ARRAY_SIZE(bast_nand_sets),
 	.sets		= bast_nand_sets,
 	.select_chip	= bast_nand_select,
-	.ecc_mode       = NAND_ECC_SOFT,
+	.engine_type	= NAND_ECC_ENGINE_TYPE_SOFT,
 };
 
 /* DM9000 */
diff --git a/arch/arm/mach-s3c24xx/mach-gta02.c b/arch/arm/mach-s3c24xx/mach-gta02.c
index 594901f3b8e5..db1b64f6e0a5 100644
--- a/arch/arm/mach-s3c24xx/mach-gta02.c
+++ b/arch/arm/mach-s3c24xx/mach-gta02.c
@@ -416,7 +416,7 @@ static struct s3c2410_platform_nand __initdata gta02_nand_info = {
 	.twrph1		= 15,
 	.nr_sets	= ARRAY_SIZE(gta02_nand_sets),
 	.sets		= gta02_nand_sets,
-	.ecc_mode       = NAND_ECC_SOFT,
+	.engine_type	= NAND_ECC_ENGINE_TYPE_SOFT,
 };
 
 
diff --git a/arch/arm/mach-s3c24xx/mach-jive.c b/arch/arm/mach-s3c24xx/mach-jive.c
index 885e8f12e4b9..8233dcff19e7 100644
--- a/arch/arm/mach-s3c24xx/mach-jive.c
+++ b/arch/arm/mach-s3c24xx/mach-jive.c
@@ -228,7 +228,7 @@ static struct s3c2410_platform_nand __initdata jive_nand_info = {
 	.twrph1		= 40,
 	.sets		= jive_nand_sets,
 	.nr_sets	= ARRAY_SIZE(jive_nand_sets),
-	.ecc_mode       = NAND_ECC_SOFT,
+	.engine_type	= NAND_ECC_ENGINE_TYPE_SOFT,
 };
 
 static int __init jive_mtdset(char *options)
diff --git a/arch/arm/mach-s3c24xx/mach-mini2440.c b/arch/arm/mach-s3c24xx/mach-mini2440.c
index 9035f868fb34..bd7c3ff675e3 100644
--- a/arch/arm/mach-s3c24xx/mach-mini2440.c
+++ b/arch/arm/mach-s3c24xx/mach-mini2440.c
@@ -296,7 +296,7 @@ static struct s3c2410_platform_nand mini2440_nand_info __initdata = {
 	.nr_sets	= ARRAY_SIZE(mini2440_nand_sets),
 	.sets		= mini2440_nand_sets,
 	.ignore_unset_ecc = 1,
-	.ecc_mode	= NAND_ECC_HW,
+	.engine_type	= NAND_ECC_ENGINE_TYPE_ON_HOST,
 };
 
 /* DM9000AEP 10/100 ethernet controller */
diff --git a/arch/arm/mach-s3c24xx/mach-osiris.c b/arch/arm/mach-s3c24xx/mach-osiris.c
index ee3630cb236a..157448827f61 100644
--- a/arch/arm/mach-s3c24xx/mach-osiris.c
+++ b/arch/arm/mach-s3c24xx/mach-osiris.c
@@ -234,7 +234,7 @@ static struct s3c2410_platform_nand __initdata osiris_nand_info = {
 	.nr_sets	= ARRAY_SIZE(osiris_nand_sets),
 	.sets		= osiris_nand_sets,
 	.select_chip	= osiris_nand_select,
-	.ecc_mode       = NAND_ECC_SOFT,
+	.engine_type	= NAND_ECC_ENGINE_TYPE_SOFT,
 };
 
 /* PCMCIA control and configuration */
diff --git a/arch/arm/mach-s3c24xx/mach-qt2410.c b/arch/arm/mach-s3c24xx/mach-qt2410.c
index 5d48e5b6e738..16a05bf7cccb 100644
--- a/arch/arm/mach-s3c24xx/mach-qt2410.c
+++ b/arch/arm/mach-s3c24xx/mach-qt2410.c
@@ -281,7 +281,7 @@ static struct s3c2410_platform_nand __initdata qt2410_nand_info = {
 	.twrph1		= 20,
 	.nr_sets	= ARRAY_SIZE(qt2410_nand_sets),
 	.sets		= qt2410_nand_sets,
-	.ecc_mode       = NAND_ECC_SOFT,
+	.engine_type	= NAND_ECC_ENGINE_TYPE_SOFT,
 };
 
 /* UDC */
diff --git a/arch/arm/mach-s3c24xx/mach-rx1950.c b/arch/arm/mach-s3c24xx/mach-rx1950.c
index fde98b175c75..5ecb42e8a028 100644
--- a/arch/arm/mach-s3c24xx/mach-rx1950.c
+++ b/arch/arm/mach-s3c24xx/mach-rx1950.c
@@ -620,7 +620,7 @@ static struct s3c2410_platform_nand rx1950_nand_info = {
 	.twrph1 = 15,
 	.nr_sets = ARRAY_SIZE(rx1950_nand_sets),
 	.sets = rx1950_nand_sets,
-	.ecc_mode = NAND_ECC_SOFT,
+	.engine_type = NAND_ECC_ENGINE_TYPE_SOFT,
 };
 
 static struct s3c2410_udc_mach_info rx1950_udc_cfg __initdata = {
diff --git a/arch/arm/mach-s3c24xx/mach-rx3715.c b/arch/arm/mach-s3c24xx/mach-rx3715.c
index 529c6faf862f..a9408811dbdb 100644
--- a/arch/arm/mach-s3c24xx/mach-rx3715.c
+++ b/arch/arm/mach-s3c24xx/mach-rx3715.c
@@ -158,7 +158,7 @@ static struct s3c2410_platform_nand __initdata rx3715_nand_info = {
 	.twrph1		= 15,
 	.nr_sets	= ARRAY_SIZE(rx3715_nand_sets),
 	.sets		= rx3715_nand_sets,
-	.ecc_mode       = NAND_ECC_SOFT,
+	.engine_type	= NAND_ECC_ENGINE_TYPE_SOFT,
 };
 
 static struct platform_device *rx3715_devices[] __initdata = {
diff --git a/arch/arm/mach-s3c24xx/mach-vstms.c b/arch/arm/mach-s3c24xx/mach-vstms.c
index d76b28b65e65..c5fa215a527e 100644
--- a/arch/arm/mach-s3c24xx/mach-vstms.c
+++ b/arch/arm/mach-s3c24xx/mach-vstms.c
@@ -112,7 +112,7 @@ static struct s3c2410_platform_nand __initdata vstms_nand_info = {
 	.twrph1		= 20,
 	.nr_sets	= ARRAY_SIZE(vstms_nand_sets),
 	.sets		= vstms_nand_sets,
-	.ecc_mode       = NAND_ECC_SOFT,
+	.engine_type	= NAND_ECC_ENGINE_TYPE_SOFT,
 };
 
 static struct platform_device *vstms_devices[] __initdata = {
diff --git a/arch/arm/mach-s3c64xx/mach-hmt.c b/arch/arm/mach-s3c64xx/mach-hmt.c
index e7080215c624..0d9acaf91701 100644
--- a/arch/arm/mach-s3c64xx/mach-hmt.c
+++ b/arch/arm/mach-s3c64xx/mach-hmt.c
@@ -199,7 +199,7 @@ static struct s3c2410_platform_nand hmt_nand_info = {
 	.twrph1		= 40,
 	.nr_sets	= ARRAY_SIZE(hmt_nand_sets),
 	.sets		= hmt_nand_sets,
-	.ecc_mode       = NAND_ECC_SOFT,
+	.engine_type	= NAND_ECC_ENGINE_TYPE_SOFT,
 };
 
 static struct gpio_led hmt_leds[] = {
diff --git a/arch/arm/mach-s3c64xx/mach-mini6410.c b/arch/arm/mach-s3c64xx/mach-mini6410.c
index 0dd36ae49e6a..6fbb57878746 100644
--- a/arch/arm/mach-s3c64xx/mach-mini6410.c
+++ b/arch/arm/mach-s3c64xx/mach-mini6410.c
@@ -136,7 +136,7 @@ static struct s3c2410_platform_nand mini6410_nand_info = {
 	.twrph1		= 40,
 	.nr_sets	= ARRAY_SIZE(mini6410_nand_sets),
 	.sets		= mini6410_nand_sets,
-	.ecc_mode       = NAND_ECC_SOFT,
+	.engine_type	= NAND_ECC_ENGINE_TYPE_SOFT,
 };
 
 static struct s3c_fb_pd_win mini6410_lcd_type0_fb_win = {
diff --git a/arch/arm/mach-s3c64xx/mach-real6410.c b/arch/arm/mach-s3c64xx/mach-real6410.c
index 0ff88b6859c4..1e98e530a6aa 100644
--- a/arch/arm/mach-s3c64xx/mach-real6410.c
+++ b/arch/arm/mach-s3c64xx/mach-real6410.c
@@ -188,7 +188,7 @@ static struct s3c2410_platform_nand real6410_nand_info = {
 	.twrph1		= 40,
 	.nr_sets	= ARRAY_SIZE(real6410_nand_sets),
 	.sets		= real6410_nand_sets,
-	.ecc_mode       = NAND_ECC_SOFT,
+	.engine_type	= NAND_ECC_ENGINE_TYPE_SOFT,
 };
 
 static struct platform_device *real6410_devices[] __initdata = {
diff --git a/drivers/mtd/nand/raw/ams-delta.c b/drivers/mtd/nand/raw/ams-delta.c
index 72a44b2411c1..bf7c73ede98f 100644
--- a/drivers/mtd/nand/raw/ams-delta.c
+++ b/drivers/mtd/nand/raw/ams-delta.c
@@ -260,7 +260,7 @@ static int gpio_nand_probe(struct platform_device *pdev)
 		return err;
 	}
 
-	this->ecc.mode = NAND_ECC_SOFT;
+	this->ecc.engine_type = NAND_ECC_ENGINE_TYPE_SOFT;
 	this->ecc.algo = NAND_ECC_ALGO_HAMMING;
 
 	platform_set_drvdata(pdev, priv);
diff --git a/drivers/mtd/nand/raw/arasan-nand-controller.c b/drivers/mtd/nand/raw/arasan-nand-controller.c
index 076736351bc6..a0b5c539ca73 100644
--- a/drivers/mtd/nand/raw/arasan-nand-controller.c
+++ b/drivers/mtd/nand/raw/arasan-nand-controller.c
@@ -1056,17 +1056,17 @@ static int anfc_attach_chip(struct nand_chip *chip)
 	chip->ecc.read_page_raw = nand_monolithic_read_page_raw;
 	chip->ecc.write_page_raw = nand_monolithic_write_page_raw;
 
-	switch (chip->ecc.mode) {
-	case NAND_ECC_NONE:
-	case NAND_ECC_SOFT:
-	case NAND_ECC_ON_DIE:
+	switch (chip->ecc.engine_type) {
+	case NAND_ECC_ENGINE_TYPE_NONE:
+	case NAND_ECC_ENGINE_TYPE_SOFT:
+	case NAND_ECC_ENGINE_TYPE_ON_DIE:
 		break;
-	case NAND_ECC_HW:
+	case NAND_ECC_ENGINE_TYPE_ON_HOST:
 		ret = anfc_init_hw_ecc_controller(nfc, chip);
 		break;
 	default:
 		dev_err(nfc->dev, "Unsupported ECC mode: %d\n",
-			chip->ecc.mode);
+			chip->ecc.engine_type);
 		return -EINVAL;
 	}
 
diff --git a/drivers/mtd/nand/raw/atmel/nand-controller.c b/drivers/mtd/nand/raw/atmel/nand-controller.c
index d9839461e460..85cf396731ce 100644
--- a/drivers/mtd/nand/raw/atmel/nand-controller.c
+++ b/drivers/mtd/nand/raw/atmel/nand-controller.c
@@ -1118,15 +1118,15 @@ static int atmel_nand_ecc_init(struct nand_chip *chip)
 
 	nc = to_nand_controller(chip->controller);
 
-	switch (chip->ecc.mode) {
-	case NAND_ECC_NONE:
-	case NAND_ECC_SOFT:
+	switch (chip->ecc.engine_type) {
+	case NAND_ECC_ENGINE_TYPE_NONE:
+	case NAND_ECC_ENGINE_TYPE_SOFT:
 		/*
 		 * Nothing to do, the core will initialize everything for us.
 		 */
 		break;
 
-	case NAND_ECC_HW:
+	case NAND_ECC_ENGINE_TYPE_ON_HOST:
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
+	if (chip->ecc.engine_type != NAND_ECC_ENGINE_TYPE_ON_HOST)
 		return 0;
 
 	/* Adjust the ECC operations for the HSMC IP. */
@@ -1498,7 +1498,7 @@ static void atmel_nand_init(struct atmel_nand_controller *nc,
 
 	/* Default to HW ECC if pmecc is available. */
 	if (nc->pmecc)
-		chip->ecc.mode = NAND_ECC_HW;
+		chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 }
 
 static void atmel_smc_nand_init(struct atmel_nand_controller *nc,
diff --git a/drivers/mtd/nand/raw/au1550nd.c b/drivers/mtd/nand/raw/au1550nd.c
index e9140bf5cbac..1e537a9ce5d3 100644
--- a/drivers/mtd/nand/raw/au1550nd.c
+++ b/drivers/mtd/nand/raw/au1550nd.c
@@ -294,7 +294,7 @@ static int au1550nd_probe(struct platform_device *pdev)
 	nand_controller_init(&ctx->controller);
 	ctx->controller.ops = &au1550nd_ops;
 	this->controller = &ctx->controller;
-	this->ecc.mode = NAND_ECC_SOFT;
+	this->ecc.engine_type = NAND_ECC_ENGINE_TYPE_SOFT;
 	this->ecc.algo = NAND_ECC_ALGO_HAMMING;
 
 	if (pd->devwidth)
diff --git a/drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c b/drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c
index 591775173034..8bb17c5a66c3 100644
--- a/drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c
+++ b/drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c
@@ -391,7 +391,8 @@ int bcm47xxnflash_ops_bcm4706_init(struct bcm47xxnflash *b47n)
 
 	nand_chip->legacy.chip_delay = 50;
 	b47n->nand_chip.bbt_options = NAND_BBT_USE_FLASH;
-	b47n->nand_chip.ecc.mode = NAND_ECC_NONE; /* TODO: implement ECC */
+	/* TODO: implement ECC */
+	b47n->nand_chip.ecc.engine_type = NAND_ECC_ENGINE_TYPE_NONE;
 
 	/* Enable NAND flash access */
 	bcma_cc_set32(b47n->cc, BCMA_CC_4706_FLASHSCFG,
diff --git a/drivers/mtd/nand/raw/brcmnand/brcmnand.c b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
index 2a9f2ff89fe7..164617b33942 100644
--- a/drivers/mtd/nand/raw/brcmnand/brcmnand.c
+++ b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
@@ -2539,9 +2539,9 @@ static int brcmnand_setup_dev(struct brcmnand_host *host)
 	cfg->col_adr_bytes = 2;
 	cfg->blk_adr_bytes = get_blk_adr_bytes(mtd->size, mtd->writesize);
 
-	if (chip->ecc.mode != NAND_ECC_HW) {
+	if (chip->ecc.engine_type != NAND_ECC_ENGINE_TYPE_ON_HOST) {
 		dev_err(ctrl->dev, "only HW ECC supported; selected: %d\n",
-			chip->ecc.mode);
+			chip->ecc.engine_type);
 		return -EINVAL;
 	}
 
@@ -2561,7 +2561,7 @@ static int brcmnand_setup_dev(struct brcmnand_host *host)
 		return -EINVAL;
 	}
 
-	if (chip->ecc.mode != NAND_ECC_NONE &&
+	if (chip->ecc.engine_type != NAND_ECC_ENGINE_TYPE_NONE &&
 	    (!chip->ecc.size || !chip->ecc.strength)) {
 		if (chip->base.eccreq.step_size && chip->base.eccreq.strength) {
 			/* use detected ECC parameters */
@@ -2702,7 +2702,7 @@ static int brcmnand_init_cs(struct brcmnand_host *host, struct device_node *dn)
 	chip->legacy.read_buf = brcmnand_read_buf;
 	chip->legacy.write_buf = brcmnand_write_buf;
 
-	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 	chip->ecc.read_page = brcmnand_read_page;
 	chip->ecc.write_page = brcmnand_write_page;
 	chip->ecc.read_page_raw = brcmnand_read_page_raw;
diff --git a/drivers/mtd/nand/raw/cadence-nand-controller.c b/drivers/mtd/nand/raw/cadence-nand-controller.c
index c405722adfe1..1bdec12f7893 100644
--- a/drivers/mtd/nand/raw/cadence-nand-controller.c
+++ b/drivers/mtd/nand/raw/cadence-nand-controller.c
@@ -2610,7 +2610,7 @@ static int cadence_nand_attach_chip(struct nand_chip *chip)
 
 	chip->bbt_options |= NAND_BBT_USE_FLASH;
 	chip->bbt_options |= NAND_BBT_NO_OOB;
-	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 
 	chip->options |= NAND_NO_SUBPAGE_WRITE;
 
@@ -2756,7 +2756,7 @@ static int cadence_nand_chip_init(struct cdns_nand_ctrl *cdns_ctrl,
 	 * Default to HW ECC engine mode. If the nand-ecc-mode property is given
 	 * in the DT node, this entry will be overwritten in nand_scan_ident().
 	 */
-	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 
 	ret = nand_scan(chip, cdns_chip->nsels);
 	if (ret) {
diff --git a/drivers/mtd/nand/raw/cafe_nand.c b/drivers/mtd/nand/raw/cafe_nand.c
index 2bf8ab542e38..2b94f385a1a8 100644
--- a/drivers/mtd/nand/raw/cafe_nand.c
+++ b/drivers/mtd/nand/raw/cafe_nand.c
@@ -629,7 +629,7 @@ static int cafe_nand_attach_chip(struct nand_chip *chip)
 		goto out_free_dma;
 	}
 
-	cafe->nand.ecc.mode = NAND_ECC_HW;
+	cafe->nand.ecc.engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 	cafe->nand.ecc.placement = NAND_ECC_PLACEMENT_INTERLEAVED;
 	cafe->nand.ecc.size = mtd->writesize;
 	cafe->nand.ecc.bytes = 14;
diff --git a/drivers/mtd/nand/raw/cs553x_nand.c b/drivers/mtd/nand/raw/cs553x_nand.c
index 9472bf798ed5..b7f3f6347761 100644
--- a/drivers/mtd/nand/raw/cs553x_nand.c
+++ b/drivers/mtd/nand/raw/cs553x_nand.c
@@ -286,7 +286,7 @@ static int __init cs553x_init_one(int cs, int mmio, unsigned long adr)
 		goto out_mtd;
 	}
 
-	this->ecc.mode = NAND_ECC_HW;
+	this->ecc.engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 	this->ecc.size = 256;
 	this->ecc.bytes = 3;
 	this->ecc.hwctl  = cs_enable_hwecc;
diff --git a/drivers/mtd/nand/raw/davinci_nand.c b/drivers/mtd/nand/raw/davinci_nand.c
index 3640c7e45e15..58966a9706b1 100644
--- a/drivers/mtd/nand/raw/davinci_nand.c
+++ b/drivers/mtd/nand/raw/davinci_nand.c
@@ -530,11 +530,11 @@ static struct davinci_nand_pdata
 		if (!of_property_read_string(pdev->dev.of_node,
 			"ti,davinci-ecc-mode", &mode)) {
 			if (!strncmp("none", mode, 4))
-				pdata->ecc_mode = NAND_ECC_NONE;
+				pdata->engine_type = NAND_ECC_ENGINE_TYPE_NONE;
 			if (!strncmp("soft", mode, 4))
-				pdata->ecc_mode = NAND_ECC_SOFT;
+				pdata->engine_type = NAND_ECC_ENGINE_TYPE_SOFT;
 			if (!strncmp("hw", mode, 2))
-				pdata->ecc_mode = NAND_ECC_HW;
+				pdata->engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 		}
 		if (!of_property_read_u32(pdev->dev.of_node,
 			"ti,davinci-ecc-bits", &prop))
@@ -585,21 +585,21 @@ static int davinci_nand_attach_chip(struct nand_chip *chip)
 	if (IS_ERR(pdata))
 		return PTR_ERR(pdata);
 
-	switch (info->chip.ecc.mode) {
-	case NAND_ECC_NONE:
+	switch (info->chip.ecc.engine_type) {
+	case NAND_ECC_ENGINE_TYPE_NONE:
 		pdata->ecc_bits = 0;
 		break;
-	case NAND_ECC_SOFT:
+	case NAND_ECC_ENGINE_TYPE_SOFT:
 		pdata->ecc_bits = 0;
 		/*
-		 * This driver expects Hamming based ECC when ecc_mode is set
-		 * to NAND_ECC_SOFT. Force ecc.algo to NAND_ECC_ALGO_HAMMING to
-		 * avoid adding an extra ->ecc_algo field to
-		 * davinci_nand_pdata.
+		 * This driver expects Hamming based ECC when engine_type is set
+		 * to NAND_ECC_ENGINE_TYPE_SOFT. Force ecc.algo to
+		 * NAND_ECC_ALGO_HAMMING to avoid adding an extra ->ecc_algo
+		 * field to davinci_nand_pdata.
 		 */
 		info->chip.ecc.algo = NAND_ECC_ALGO_HAMMING;
 		break;
-	case NAND_ECC_HW:
+	case NAND_ECC_ENGINE_TYPE_ON_HOST:
 		if (pdata->ecc_bits == 4) {
 			int chunks = mtd->writesize / 512;
 
@@ -850,7 +850,7 @@ static int nand_davinci_probe(struct platform_device *pdev)
 	info->mask_cle		= pdata->mask_cle ? : MASK_CLE;
 
 	/* Use board-specific ECC config */
-	info->chip.ecc.mode	= pdata->ecc_mode;
+	info->chip.ecc.engine_type = pdata->engine_type;
 	info->chip.ecc.placement = pdata->ecc_placement;
 
 	spin_lock_irq(&davinci_nand_lock);
diff --git a/drivers/mtd/nand/raw/denali.c b/drivers/mtd/nand/raw/denali.c
index 514a97ea4450..a6a6464974ec 100644
--- a/drivers/mtd/nand/raw/denali.c
+++ b/drivers/mtd/nand/raw/denali.c
@@ -1237,7 +1237,7 @@ int denali_chip_init(struct denali_controller *denali,
 	chip->bbt_options |= NAND_BBT_USE_FLASH;
 	chip->bbt_options |= NAND_BBT_NO_OOB;
 	chip->options |= NAND_NO_SUBPAGE_WRITE;
-	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 	chip->ecc.placement = NAND_ECC_PLACEMENT_INTERLEAVED;
 	chip->ecc.read_page = denali_read_page;
 	chip->ecc.write_page = denali_write_page;
diff --git a/drivers/mtd/nand/raw/diskonchip.c b/drivers/mtd/nand/raw/diskonchip.c
index 40360352136b..94432a453e5e 100644
--- a/drivers/mtd/nand/raw/diskonchip.c
+++ b/drivers/mtd/nand/raw/diskonchip.c
@@ -1456,7 +1456,7 @@ static int __init doc_probe(unsigned long physadr)
 	nand->ecc.calculate	= doc200x_calculate_ecc;
 	nand->ecc.correct	= doc200x_correct_data;
 
-	nand->ecc.mode		= NAND_ECC_HW;
+	nand->ecc.engine_type	= NAND_ECC_ENGINE_TYPE_ON_HOST;
 	nand->ecc.placement	= NAND_ECC_PLACEMENT_INTERLEAVED;
 	nand->ecc.size		= 512;
 	nand->ecc.bytes		= 6;
diff --git a/drivers/mtd/nand/raw/fsl_elbc_nand.c b/drivers/mtd/nand/raw/fsl_elbc_nand.c
index da89389faaae..b2af7f81fdf8 100644
--- a/drivers/mtd/nand/raw/fsl_elbc_nand.c
+++ b/drivers/mtd/nand/raw/fsl_elbc_nand.c
@@ -244,7 +244,7 @@ static int fsl_elbc_run_command(struct mtd_info *mtd)
 		return -EIO;
 	}
 
-	if (chip->ecc.mode != NAND_ECC_HW)
+	if (chip->ecc.engine_type != NAND_ECC_ENGINE_TYPE_ON_HOST)
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
+	case NAND_ECC_ENGINE_TYPE_NONE:
 		/* If CS Base Register selects full hardware ECC then use it */
 		if ((in_be32(&lbc->bank[priv->bank].br) & BR_DECC) ==
 		    BR_DECC_CHK_GEN) {
@@ -740,23 +740,23 @@ static int fsl_elbc_attach_chip(struct nand_chip *chip)
 			chip->ecc.write_page = fsl_elbc_write_page;
 			chip->ecc.write_subpage = fsl_elbc_write_subpage;
 
-			chip->ecc.mode = NAND_ECC_HW;
+			chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 			mtd_set_ooblayout(mtd, &fsl_elbc_ooblayout_ops);
 			chip->ecc.size = 512;
 			chip->ecc.bytes = 3;
 			chip->ecc.strength = 1;
 		} else {
 			/* otherwise fall back to default software ECC */
-			chip->ecc.mode = NAND_ECC_SOFT;
+			chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_SOFT;
 			chip->ecc.algo = NAND_ECC_ALGO_HAMMING;
 		}
 		break;
 
 	/* if SW ECC was chosen in DT, we do not need to set anything here */
-	case NAND_ECC_SOFT:
+	case NAND_ECC_ENGINE_TYPE_SOFT:
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
index b2ae759dd14e..0e7a9b64301e 100644
--- a/drivers/mtd/nand/raw/fsl_ifc_nand.c
+++ b/drivers/mtd/nand/raw/fsl_ifc_nand.c
@@ -309,7 +309,7 @@ static void fsl_ifc_cmdfunc(struct nand_chip *chip, unsigned int command,
 		ifc_nand_ctrl->read_bytes = mtd->writesize + mtd->oobsize;
 		ifc_nand_ctrl->index += column;
 
-		if (chip->ecc.mode == NAND_ECC_HW)
+		if (chip->ecc.engine_type == NAND_ECC_ENGINE_TYPE_ON_HOST)
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
+		chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 		mtd_set_ooblayout(mtd, &fsl_ifc_ooblayout_ops);
 
 		/* Hardware generates ECC per 512 Bytes */
@@ -925,7 +925,7 @@ static int fsl_ifc_chip_init(struct fsl_ifc_mtd *priv)
 			chip->ecc.strength = 8;
 		}
 	} else {
-		chip->ecc.mode = NAND_ECC_SOFT;
+		chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_SOFT;
 		chip->ecc.algo = NAND_ECC_ALGO_HAMMING;
 	}
 
diff --git a/drivers/mtd/nand/raw/fsl_upm.c b/drivers/mtd/nand/raw/fsl_upm.c
index 49592b7e03a3..fc5a9df27cf1 100644
--- a/drivers/mtd/nand/raw/fsl_upm.c
+++ b/drivers/mtd/nand/raw/fsl_upm.c
@@ -163,7 +163,7 @@ static int fun_chip_init(struct fsl_upm_nand *fun,
 	fun->chip.legacy.read_byte = fun_read_byte;
 	fun->chip.legacy.read_buf = fun_read_buf;
 	fun->chip.legacy.write_buf = fun_write_buf;
-	fun->chip.ecc.mode = NAND_ECC_SOFT;
+	fun->chip.ecc.engine_type = NAND_ECC_ENGINE_TYPE_SOFT;
 	fun->chip.ecc.algo = NAND_ECC_ALGO_HAMMING;
 	if (fun->mchip_count > 1)
 		fun->chip.legacy.select_chip = fun_select_chip;
diff --git a/drivers/mtd/nand/raw/fsmc_nand.c b/drivers/mtd/nand/raw/fsmc_nand.c
index ced570987e85..fd2926d6f5b2 100644
--- a/drivers/mtd/nand/raw/fsmc_nand.c
+++ b/drivers/mtd/nand/raw/fsmc_nand.c
@@ -900,8 +900,8 @@ static int fsmc_nand_attach_chip(struct nand_chip *nand)
 		return 0;
 	}
 
-	switch (nand->ecc.mode) {
-	case NAND_ECC_HW:
+	switch (nand->ecc.engine_type) {
+	case NAND_ECC_ENGINE_TYPE_ON_HOST:
 		dev_info(host->dev, "Using 1-bit HW ECC scheme\n");
 		nand->ecc.calculate = fsmc_read_hwecc_ecc1;
 		nand->ecc.correct = nand_correct_data;
@@ -910,14 +910,14 @@ static int fsmc_nand_attach_chip(struct nand_chip *nand)
 		nand->ecc.options |= NAND_ECC_SOFT_HAMMING_SM_ORDER;
 		break;
 
-	case NAND_ECC_SOFT:
+	case NAND_ECC_ENGINE_TYPE_SOFT:
 		if (nand->ecc.algo == NAND_ECC_ALGO_BCH) {
 			dev_info(host->dev,
 				 "Using 4-bit SW BCH ECC scheme\n");
 			break;
 		}
 
-	case NAND_ECC_ON_DIE:
+	case NAND_ECC_ENGINE_TYPE_ON_DIE:
 		break;
 
 	default:
@@ -929,7 +929,7 @@ static int fsmc_nand_attach_chip(struct nand_chip *nand)
 	 * Don't set layout for BCH4 SW ECC. This will be
 	 * generated later in nand_bch_init() later.
 	 */
-	if (nand->ecc.mode == NAND_ECC_HW) {
+	if (nand->ecc.engine_type == NAND_ECC_ENGINE_TYPE_ON_HOST) {
 		switch (mtd->oobsize) {
 		case 16:
 		case 64:
@@ -1059,7 +1059,7 @@ static int __init fsmc_nand_probe(struct platform_device *pdev)
 	 * Setup default ECC mode. nand_dt_init() called from nand_scan_ident()
 	 * can overwrite this value if the DT provides a different value.
 	 */
-	nand->ecc.mode = NAND_ECC_HW;
+	nand->ecc.engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 	nand->ecc.hwctl = fsmc_enable_hwecc;
 	nand->ecc.size = 512;
 	nand->badblockbits = 7;
diff --git a/drivers/mtd/nand/raw/gpio.c b/drivers/mtd/nand/raw/gpio.c
index 667807c7100b..13645a8157a8 100644
--- a/drivers/mtd/nand/raw/gpio.c
+++ b/drivers/mtd/nand/raw/gpio.c
@@ -275,7 +275,7 @@ static int gpio_nand_probe(struct platform_device *pdev)
 
 	nand_set_flash_node(chip, pdev->dev.of_node);
 	chip->legacy.IO_ADDR_W	= chip->legacy.IO_ADDR_R;
-	chip->ecc.mode		= NAND_ECC_SOFT;
+	chip->ecc.engine_type	= NAND_ECC_ENGINE_TYPE_SOFT;
 	chip->ecc.algo		= NAND_ECC_ALGO_HAMMING;
 	chip->options		= gpiomtd->plat.options;
 	chip->legacy.chip_delay	= gpiomtd->plat.chip_delay;
diff --git a/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c b/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
index 061a8ddda275..d1ea6df9fd64 100644
--- a/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
+++ b/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
@@ -2032,7 +2032,7 @@ static int gpmi_init_last(struct gpmi_nand_data *this)
 	ecc->write_page_raw = gpmi_ecc_write_page_raw;
 	ecc->read_oob_raw = gpmi_ecc_read_oob_raw;
 	ecc->write_oob_raw = gpmi_ecc_write_oob_raw;
-	ecc->mode	= NAND_ECC_HW;
+	ecc->engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 	ecc->size	= bch_geo->ecc_chunk_size;
 	ecc->strength	= bch_geo->ecc_strength;
 	mtd_set_ooblayout(mtd, &gpmi_ooblayout_ops);
diff --git a/drivers/mtd/nand/raw/hisi504_nand.c b/drivers/mtd/nand/raw/hisi504_nand.c
index b84238e2268a..8b2122ce6ec3 100644
--- a/drivers/mtd/nand/raw/hisi504_nand.c
+++ b/drivers/mtd/nand/raw/hisi504_nand.c
@@ -186,7 +186,7 @@ static void hisi_nfc_dma_transfer(struct hinfc_host *host, int todev)
 	hinfc_write(host, host->dma_buffer, HINFC504_DMA_ADDR_DATA);
 	hinfc_write(host, host->dma_oob, HINFC504_DMA_ADDR_OOB);
 
-	if (chip->ecc.mode == NAND_ECC_NONE) {
+	if (chip->ecc.engine_type == NAND_ECC_ENGINE_TYPE_NONE) {
 		hinfc_write(host, ((mtd->oobsize & HINFC504_DMA_LEN_OOB_MASK)
 			<< HINFC504_DMA_LEN_OOB_SHIFT), HINFC504_DMA_LEN);
 
@@ -468,7 +468,7 @@ static void hisi_nfc_cmdfunc(struct nand_chip *chip, unsigned command,
 
 	case NAND_CMD_STATUS:
 		flag = hinfc_read(host, HINFC504_CON);
-		if (chip->ecc.mode == NAND_ECC_HW)
+		if (chip->ecc.engine_type == NAND_ECC_ENGINE_TYPE_ON_HOST)
 			hinfc_write(host,
 				    flag & ~(HINFC504_CON_ECCTYPE_MASK <<
 				    HINFC504_CON_ECCTYPE_SHIFT), HINFC504_CON);
@@ -721,7 +721,7 @@ static int hisi_nfc_attach_chip(struct nand_chip *chip)
 	}
 	hinfc_write(host, flag, HINFC504_CON);
 
-	if (chip->ecc.mode == NAND_ECC_HW)
+	if (chip->ecc.engine_type == NAND_ECC_ENGINE_TYPE_ON_HOST)
 		hisi_nfc_ecc_probe(host);
 
 	return 0;
diff --git a/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c b/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c
index 69423bb29adb..70309f18124c 100644
--- a/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c
+++ b/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c
@@ -194,8 +194,8 @@ static int ingenic_nand_attach_chip(struct nand_chip *chip)
 				  (chip->ecc.strength / 8);
 	}
 
-	switch (chip->ecc.mode) {
-	case NAND_ECC_HW:
+	switch (chip->ecc.engine_type) {
+	case NAND_ECC_ENGINE_TYPE_ON_HOST:
 		if (!nfc->ecc) {
 			dev_err(nfc->dev, "HW ECC selected, but ECC controller not found\n");
 			return -ENODEV;
@@ -205,22 +205,22 @@ static int ingenic_nand_attach_chip(struct nand_chip *chip)
 		chip->ecc.calculate = ingenic_nand_ecc_calculate;
 		chip->ecc.correct = ingenic_nand_ecc_correct;
 		fallthrough;
-	case NAND_ECC_SOFT:
+	case NAND_ECC_ENGINE_TYPE_SOFT:
 		dev_info(nfc->dev, "using %s (strength %d, size %d, bytes %d)\n",
 			 (nfc->ecc) ? "hardware ECC" : "software ECC",
 			 chip->ecc.strength, chip->ecc.size, chip->ecc.bytes);
 		break;
-	case NAND_ECC_NONE:
+	case NAND_ECC_ENGINE_TYPE_NONE:
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
+	if (chip->ecc.engine_type != NAND_ECC_ENGINE_TYPE_ON_HOST)
 		return 0;
 
 	/* Generate ECC layout. ECC codes are right aligned in the OOB area. */
@@ -404,7 +404,7 @@ static int ingenic_nand_init_chip(struct platform_device *pdev,
 	mtd->dev.parent = dev;
 
 	chip->options = NAND_NO_SUBPAGE_WRITE;
-	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 	chip->controller = &nfc->controller;
 	nand_set_flash_node(chip, np);
 
diff --git a/drivers/mtd/nand/raw/lpc32xx_mlc.c b/drivers/mtd/nand/raw/lpc32xx_mlc.c
index 7521038af2ef..4940bb2e3c07 100644
--- a/drivers/mtd/nand/raw/lpc32xx_mlc.c
+++ b/drivers/mtd/nand/raw/lpc32xx_mlc.c
@@ -656,7 +656,7 @@ static int lpc32xx_nand_attach_chip(struct nand_chip *chip)
 	if (!host->dummy_buf)
 		return -ENOMEM;
 
-	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 	chip->ecc.size = 512;
 	mtd_set_ooblayout(mtd, &lpc32xx_ooblayout_ops);
 	host->mlcsubpages = mtd->writesize / 512;
diff --git a/drivers/mtd/nand/raw/lpc32xx_slc.c b/drivers/mtd/nand/raw/lpc32xx_slc.c
index ccb189c8e343..6db9d2ed6881 100644
--- a/drivers/mtd/nand/raw/lpc32xx_slc.c
+++ b/drivers/mtd/nand/raw/lpc32xx_slc.c
@@ -881,7 +881,7 @@ static int lpc32xx_nand_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, host);
 
 	/* NAND callbacks for LPC32xx SLC hardware */
-	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 	chip->ecc.placement = NAND_ECC_PLACEMENT_INTERLEAVED;
 	chip->legacy.read_byte = lpc32xx_nand_read_byte;
 	chip->legacy.read_buf = lpc32xx_nand_read_buf;
diff --git a/drivers/mtd/nand/raw/marvell_nand.c b/drivers/mtd/nand/raw/marvell_nand.c
index 3969cca7d925..f9cc03c11deb 100644
--- a/drivers/mtd/nand/raw/marvell_nand.c
+++ b/drivers/mtd/nand/raw/marvell_nand.c
@@ -2247,7 +2247,8 @@ static int marvell_nand_ecc_init(struct mtd_info *mtd,
 	struct marvell_nfc *nfc = to_marvell_nfc(chip->controller);
 	int ret;
 
-	if (ecc->mode != NAND_ECC_NONE && (!ecc->size || !ecc->strength)) {
+	if (ecc->engine_type != NAND_ECC_ENGINE_TYPE_NONE &&
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
+	case NAND_ECC_ENGINE_TYPE_ON_HOST:
 		ret = marvell_nand_hw_ecc_controller_init(mtd, ecc);
 		if (ret)
 			return ret;
 		break;
-	case NAND_ECC_NONE:
-	case NAND_ECC_SOFT:
-	case NAND_ECC_ON_DIE:
+	case NAND_ECC_ENGINE_TYPE_NONE:
+	case NAND_ECC_ENGINE_TYPE_SOFT:
+	case NAND_ECC_ENGINE_TYPE_ON_DIE:
 		if (!nfc->caps->is_nfcv2 && mtd->writesize != SZ_512 &&
 		    mtd->writesize != SZ_2K) {
 			dev_err(nfc->dev, "NFCv1 cannot write %d bytes pages\n",
@@ -2465,7 +2466,7 @@ static int marvell_nand_attach_chip(struct nand_chip *chip)
 		return ret;
 	}
 
-	if (chip->ecc.mode == NAND_ECC_HW) {
+	if (chip->ecc.engine_type == NAND_ECC_ENGINE_TYPE_ON_HOST) {
 		/*
 		 * Subpage write not available with hardware ECC, prohibit also
 		 * subpage read as in userspace subpage access would still be
@@ -2640,7 +2641,7 @@ static int marvell_nand_chip_init(struct device *dev, struct marvell_nfc *nfc,
 	 * Default to HW ECC engine mode. If the nand-ecc-mode property is given
 	 * in the DT node, this entry will be overwritten in nand_scan_ident().
 	 */
-	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 
 	/*
 	 * Save a reference value for timing registers before
diff --git a/drivers/mtd/nand/raw/meson_nand.c b/drivers/mtd/nand/raw/meson_nand.c
index 3f376471f3f7..4d1f5c8da270 100644
--- a/drivers/mtd/nand/raw/meson_nand.c
+++ b/drivers/mtd/nand/raw/meson_nand.c
@@ -1197,7 +1197,7 @@ static int meson_nand_attach_chip(struct nand_chip *nand)
 	if (ret)
 		return -EINVAL;
 
-	nand->ecc.mode = NAND_ECC_HW;
+	nand->ecc.engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 	nand->ecc.write_page_raw = meson_nfc_write_page_raw;
 	nand->ecc.write_page = meson_nfc_write_page_hwecc;
 	nand->ecc.write_oob_raw = nand_write_oob_std;
diff --git a/drivers/mtd/nand/raw/mpc5121_nfc.c b/drivers/mtd/nand/raw/mpc5121_nfc.c
index a67eded226db..dfd0d3ed5ed0 100644
--- a/drivers/mtd/nand/raw/mpc5121_nfc.c
+++ b/drivers/mtd/nand/raw/mpc5121_nfc.c
@@ -688,7 +688,7 @@ static int mpc5121_nfc_probe(struct platform_device *op)
 	chip->legacy.set_features = nand_get_set_features_notsupp;
 	chip->legacy.get_features = nand_get_set_features_notsupp;
 	chip->bbt_options = NAND_BBT_USE_FLASH;
-	chip->ecc.mode = NAND_ECC_SOFT;
+	chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_SOFT;
 	chip->ecc.algo = NAND_ECC_ALGO_HAMMING;
 
 	/* Support external chip-select logic on ADS5121 board */
diff --git a/drivers/mtd/nand/raw/mtk_nand.c b/drivers/mtd/nand/raw/mtk_nand.c
index c1a6e31aabb8..a0294c9161dd 100644
--- a/drivers/mtd/nand/raw/mtk_nand.c
+++ b/drivers/mtd/nand/raw/mtk_nand.c
@@ -1226,8 +1226,8 @@ static int mtk_nfc_ecc_init(struct device *dev, struct mtd_info *mtd)
 	int free, ret;
 
 	/* support only ecc hw mode */
-	if (nand->ecc.mode != NAND_ECC_HW) {
-		dev_err(dev, "ecc.mode not supported\n");
+	if (nand->ecc.engine_type != NAND_ECC_ENGINE_TYPE_ON_HOST) {
+		dev_err(dev, "ecc.engine_type not supported\n");
 		return -EINVAL;
 	}
 
@@ -1390,7 +1390,7 @@ static int mtk_nfc_nand_chip_init(struct device *dev, struct mtk_nfc *nfc,
 	nand->legacy.cmd_ctrl = mtk_nfc_cmd_ctrl;
 
 	/* set default mode in case dt entry is missing */
-	nand->ecc.mode = NAND_ECC_HW;
+	nand->ecc.engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 
 	nand->ecc.write_subpage = mtk_nfc_write_subpage_hwecc;
 	nand->ecc.write_page_raw = mtk_nfc_write_page_raw;
diff --git a/drivers/mtd/nand/raw/mxc_nand.c b/drivers/mtd/nand/raw/mxc_nand.c
index c2e9759cfba8..de3bd36f99e9 100644
--- a/drivers/mtd/nand/raw/mxc_nand.c
+++ b/drivers/mtd/nand/raw/mxc_nand.c
@@ -669,7 +669,7 @@ static void mxc_nand_enable_hwecc_v1_v2(struct nand_chip *chip, bool enable)
 	struct mxc_nand_host *host = nand_get_controller_data(chip);
 	uint16_t config1;
 
-	if (chip->ecc.mode != NAND_ECC_HW)
+	if (chip->ecc.engine_type != NAND_ECC_ENGINE_TYPE_ON_HOST)
 		return;
 
 	config1 = readw(NFC_V1_V2_CONFIG1);
@@ -687,7 +687,7 @@ static void mxc_nand_enable_hwecc_v3(struct nand_chip *chip, bool enable)
 	struct mxc_nand_host *host = nand_get_controller_data(chip);
 	uint32_t config2;
 
-	if (chip->ecc.mode != NAND_ECC_HW)
+	if (chip->ecc.engine_type != NAND_ECC_ENGINE_TYPE_ON_HOST)
 		return;
 
 	config2 = readl(NFC_V3_CONFIG2);
@@ -1117,7 +1117,8 @@ static void preset_v1(struct mtd_info *mtd)
 	struct mxc_nand_host *host = nand_get_controller_data(nand_chip);
 	uint16_t config1 = 0;
 
-	if (nand_chip->ecc.mode == NAND_ECC_HW && mtd->writesize)
+	if (nand_chip->ecc.engine_type == NAND_ECC_ENGINE_TYPE_ON_HOST &&
+	    mtd->writesize)
 		config1 |= NFC_V1_V2_CONFIG1_ECC_EN;
 
 	if (!host->devtype_data->irqpending_quirk)
@@ -1227,7 +1228,7 @@ static void preset_v2(struct mtd_info *mtd)
 	if (mtd->writesize) {
 		uint16_t pages_per_block = mtd->erasesize / mtd->writesize;
 
-		if (nand_chip->ecc.mode == NAND_ECC_HW)
+		if (nand_chip->ecc.engine_type == NAND_ECC_ENGINE_TYPE_ON_HOST)
 			config1 |= NFC_V1_V2_CONFIG1_ECC_EN;
 
 		host->eccsize = get_eccsize(mtd);
@@ -1303,7 +1304,7 @@ static void preset_v3(struct mtd_info *mtd)
 	}
 
 	if (mtd->writesize) {
-		if (chip->ecc.mode == NAND_ECC_HW)
+		if (chip->ecc.engine_type == NAND_ECC_ENGINE_TYPE_ON_HOST)
 			config2 |= NFC_V3_CONFIG2_ECC_EN;
 
 		config2 |= NFC_V3_CONFIG2_PPB(
@@ -1680,8 +1681,8 @@ static int mxcnd_attach_chip(struct nand_chip *chip)
 	struct mxc_nand_host *host = nand_get_controller_data(chip);
 	struct device *dev = mtd->dev.parent;
 
-	switch (chip->ecc.mode) {
-	case NAND_ECC_HW:
+	switch (chip->ecc.engine_type) {
+	case NAND_ECC_ENGINE_TYPE_ON_HOST:
 		chip->ecc.read_page = mxc_nand_read_page;
 		chip->ecc.read_page_raw = mxc_nand_read_page_raw;
 		chip->ecc.read_oob = mxc_nand_read_oob;
@@ -1690,7 +1691,7 @@ static int mxcnd_attach_chip(struct nand_chip *chip)
 		chip->ecc.write_oob = mxc_nand_write_oob;
 		break;
 
-	case NAND_ECC_SOFT:
+	case NAND_ECC_ENGINE_TYPE_SOFT:
 		break;
 
 	default:
@@ -1728,7 +1729,7 @@ static int mxcnd_attach_chip(struct nand_chip *chip)
 	 */
 	host->used_oobsize = min(mtd->oobsize, 218U);
 
-	if (chip->ecc.mode == NAND_ECC_HW) {
+	if (chip->ecc.engine_type == NAND_ECC_ENGINE_TYPE_ON_HOST) {
 		if (is_imx21_nfc(host) || is_imx27_nfc(host))
 			chip->ecc.strength = 1;
 		else
@@ -1843,9 +1844,9 @@ static int mxcnd_probe(struct platform_device *pdev)
 	mtd_set_ooblayout(mtd, host->devtype_data->ooblayout);
 
 	if (host->pdata.hw_ecc) {
-		this->ecc.mode = NAND_ECC_HW;
+		this->ecc.engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 	} else {
-		this->ecc.mode = NAND_ECC_SOFT;
+		this->ecc.engine_type = NAND_ECC_ENGINE_TYPE_SOFT;
 		this->ecc.algo = NAND_ECC_ALGO_HAMMING;
 	}
 
diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 4cf53b9dddee..1ce2cbe72e4c 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -5023,28 +5023,45 @@ static const char * const nand_ecc_placement[] = {
 	[NAND_ECC_PLACEMENT_INTERLEAVED] = "interleaved",
 };
 
-static int of_get_nand_ecc_mode(struct device_node *np)
+static enum nand_ecc_engine_type
+of_get_nand_ecc_engine_type(struct device_node *np)
 {
+	enum nand_ecc_mode eng_type;
 	const char *pm;
-	int err, i;
+	int err;
 
 	err = of_property_read_string(np, "nand-ecc-mode", &pm);
-	if (err < 0)
-		return err;
+	if (err)
+		return NAND_ECC_ENGINE_TYPE_INVALID;
 
-	for (i = NAND_ECC_NONE; i < ARRAY_SIZE(nand_ecc_modes); i++)
-		if (!strcasecmp(pm, nand_ecc_modes[i]))
-			return i;
+	for (eng_type = NAND_ECC_NONE;
+	     eng_type < ARRAY_SIZE(nand_ecc_modes); eng_type++) {
+		if (!strcasecmp(pm, nand_ecc_modes[eng_type])) {
+			switch (eng_type) {
+			case NAND_ECC_NONE:
+				return NAND_ECC_ENGINE_TYPE_NONE;
+			case NAND_ECC_SOFT:
+				return NAND_ECC_ENGINE_TYPE_SOFT;
+			case NAND_ECC_HW:
+			case NAND_ECC_HW_SYNDROME:
+				return NAND_ECC_ENGINE_TYPE_ON_HOST;
+			case NAND_ECC_ON_DIE:
+				return NAND_ECC_ENGINE_TYPE_ON_DIE;
+			default:
+				break;
+			}
+		}
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
+		return NAND_ECC_ENGINE_TYPE_SOFT;
 
-	return -ENODEV;
+	return NAND_ECC_ENGINE_TYPE_INVALID;
 }
 
 enum nand_ecc_placement of_get_nand_ecc_placement(struct device_node *np)
@@ -5154,8 +5171,9 @@ static bool of_get_nand_on_flash_bbt(struct device_node *np)
 static int nand_dt_init(struct nand_chip *chip)
 {
 	struct device_node *dn = nand_get_flash_node(chip);
+	enum nand_ecc_engine_type ecc_type;
 	enum nand_ecc_algo ecc_algo;
-	int ecc_mode, ecc_strength, ecc_step;
+	int ecc_strength, ecc_step;
 
 	if (!dn)
 		return 0;
@@ -5169,14 +5187,14 @@ static int nand_dt_init(struct nand_chip *chip)
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
+	if (ecc_type != NAND_ECC_ENGINE_TYPE_INVALID)
+		chip->ecc.engine_type = ecc_type;
 
 	if (ecc_algo != NAND_ECC_ALGO_UNKNOWN)
 		chip->ecc.algo = ecc_algo;
@@ -5298,7 +5316,7 @@ static int nand_set_ecc_soft_ops(struct nand_chip *chip)
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct nand_ecc_ctrl *ecc = &chip->ecc;
 
-	if (WARN_ON(ecc->mode != NAND_ECC_SOFT))
+	if (WARN_ON(ecc->engine_type != NAND_ECC_ENGINE_TYPE_SOFT))
 		return -EINVAL;
 
 	switch (ecc->algo) {
@@ -5763,7 +5781,8 @@ static int nand_scan_tail(struct nand_chip *chip)
 	 * If no default placement scheme is given, select an appropriate one.
 	 */
 	if (!mtd->ooblayout &&
-	    !(ecc->mode == NAND_ECC_SOFT && ecc->algo == NAND_ECC_ALGO_BCH)) {
+	    !(ecc->engine_type == NAND_ECC_ENGINE_TYPE_SOFT &&
+	      ecc->algo == NAND_ECC_ALGO_BCH)) {
 		switch (mtd->oobsize) {
 		case 8:
 		case 16:
@@ -5781,7 +5800,7 @@ static int nand_scan_tail(struct nand_chip *chip)
 			 * page with ECC layout when ->oobsize <= 128 for
 			 * compatibility reasons.
 			 */
-			if (ecc->mode == NAND_ECC_NONE) {
+			if (ecc->engine_type == NAND_ECC_ENGINE_TYPE_NONE) {
 				mtd_set_ooblayout(mtd,
 						&nand_ooblayout_lp_ops);
 				break;
@@ -5799,8 +5818,9 @@ static int nand_scan_tail(struct nand_chip *chip)
 	 * selected and we have 256 byte pagesize fallback to software ECC
 	 */
 
-	switch (ecc->mode) {
-	case NAND_ECC_HW:
+	switch (ecc->engine_type) {
+	case NAND_ECC_ENGINE_TYPE_ON_HOST:
+
 		switch (ecc->placement) {
 		case NAND_ECC_PLACEMENT_UNKNOWN:
 		case NAND_ECC_PLACEMENT_OOB:
@@ -5857,7 +5877,7 @@ static int nand_scan_tail(struct nand_chip *chip)
 			}
 			pr_warn("%d byte HW ECC not possible on %d byte page size, fallback to SW ECC\n",
 				ecc->size, mtd->writesize);
-			ecc->mode = NAND_ECC_SOFT;
+			ecc->engine_type = NAND_ECC_ENGINE_TYPE_SOFT;
 			ecc->algo = NAND_ECC_ALGO_HAMMING;
 			break;
 
@@ -5869,7 +5889,7 @@ static int nand_scan_tail(struct nand_chip *chip)
 		}
 		fallthrough;
 
-	case NAND_ECC_SOFT:
+	case NAND_ECC_ENGINE_TYPE_SOFT:
 		ret = nand_set_ecc_soft_ops(chip);
 		if (ret) {
 			ret = -EINVAL;
@@ -5877,7 +5897,7 @@ static int nand_scan_tail(struct nand_chip *chip)
 		}
 		break;
 
-	case NAND_ECC_ON_DIE:
+	case NAND_ECC_ENGINE_TYPE_ON_DIE:
 		if (!ecc->read_page || !ecc->write_page) {
 			WARN(1, "No ECC functions supplied; on-die ECC not possible\n");
 			ret = -EINVAL;
@@ -5889,8 +5909,8 @@ static int nand_scan_tail(struct nand_chip *chip)
 			ecc->write_oob = nand_write_oob_std;
 		break;
 
-	case NAND_ECC_NONE:
-		pr_warn("NAND_ECC_NONE selected by board driver. This is not recommended!\n");
+	case NAND_ECC_ENGINE_TYPE_NONE:
+		pr_warn("NAND_ECC_ENGINE_TYPE_NONE selected by board driver. This is not recommended!\n");
 		ecc->read_page = nand_read_page_raw;
 		ecc->write_page = nand_write_page_raw;
 		ecc->read_oob = nand_read_oob_std;
@@ -5903,7 +5923,7 @@ static int nand_scan_tail(struct nand_chip *chip)
 		break;
 
 	default:
-		WARN(1, "Invalid NAND_ECC_MODE %d\n", ecc->mode);
+		WARN(1, "Invalid NAND_ECC_MODE %d\n", ecc->engine_type);
 		ret = -EINVAL;
 		goto err_nand_manuf_cleanup;
 	}
@@ -5980,8 +6000,8 @@ static int nand_scan_tail(struct nand_chip *chip)
 	chip->pagecache.page = -1;
 
 	/* Large page NAND with SOFT_ECC should support subpage reads */
-	switch (ecc->mode) {
-	case NAND_ECC_SOFT:
+	switch (ecc->engine_type) {
+	case NAND_ECC_ENGINE_TYPE_SOFT:
 		if (chip->page_shift > 9)
 			chip->options |= NAND_SUBPAGE_READ;
 		break;
@@ -6123,7 +6143,7 @@ EXPORT_SYMBOL(nand_scan_with_ids);
  */
 void nand_cleanup(struct nand_chip *chip)
 {
-	if (chip->ecc.mode == NAND_ECC_SOFT &&
+	if (chip->ecc.engine_type == NAND_ECC_ENGINE_TYPE_SOFT &&
 	    chip->ecc.algo == NAND_ECC_ALGO_BCH)
 		nand_bch_free((struct nand_bch_control *)chip->ecc.priv);
 
diff --git a/drivers/mtd/nand/raw/nand_micron.c b/drivers/mtd/nand/raw/nand_micron.c
index a43b4d17bc69..c8ebfd8c77a1 100644
--- a/drivers/mtd/nand/raw/nand_micron.c
+++ b/drivers/mtd/nand/raw/nand_micron.c
@@ -497,13 +497,13 @@ static int micron_nand_init(struct nand_chip *chip)
 	ondie = micron_supports_on_die_ecc(chip);
 
 	if (ondie == MICRON_ON_DIE_MANDATORY &&
-	    chip->ecc.mode != NAND_ECC_ON_DIE) {
+	    chip->ecc.engine_type != NAND_ECC_ENGINE_TYPE_ON_DIE) {
 		pr_err("On-die ECC forcefully enabled, not supported\n");
 		ret = -EINVAL;
 		goto err_free_manuf_data;
 	}
 
-	if (chip->ecc.mode == NAND_ECC_ON_DIE) {
+	if (chip->ecc.engine_type == NAND_ECC_ENGINE_TYPE_ON_DIE) {
 		if (ondie == MICRON_ON_DIE_UNSUPPORTED) {
 			pr_err("On-die ECC selected but not supported\n");
 			ret = -EINVAL;
diff --git a/drivers/mtd/nand/raw/nand_toshiba.c b/drivers/mtd/nand/raw/nand_toshiba.c
index ae069905d7e4..436ed90a90ad 100644
--- a/drivers/mtd/nand/raw/nand_toshiba.c
+++ b/drivers/mtd/nand/raw/nand_toshiba.c
@@ -211,7 +211,8 @@ static int toshiba_nand_init(struct nand_chip *chip)
 		chip->options |= NAND_BBM_FIRSTPAGE | NAND_BBM_SECONDPAGE;
 
 	/* Check that chip is BENAND and ECC mode is on-die */
-	if (nand_is_slc(chip) && chip->ecc.mode == NAND_ECC_ON_DIE &&
+	if (nand_is_slc(chip) &&
+	    chip->ecc.engine_type == NAND_ECC_ENGINE_TYPE_ON_DIE &&
 	    chip->id.data[4] & TOSHIBA_NAND_ID4_IS_BENAND)
 		toshiba_nand_benand_init(chip);
 
diff --git a/drivers/mtd/nand/raw/nandsim.c b/drivers/mtd/nand/raw/nandsim.c
index 9bcf1b9d4987..9c2115fe2111 100644
--- a/drivers/mtd/nand/raw/nandsim.c
+++ b/drivers/mtd/nand/raw/nandsim.c
@@ -2234,7 +2234,7 @@ static int ns_attach_chip(struct nand_chip *chip)
 		return -EINVAL;
 	}
 
-	chip->ecc.mode = NAND_ECC_SOFT;
+	chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_SOFT;
 	chip->ecc.algo = NAND_ECC_ALGO_BCH;
 	chip->ecc.size = 512;
 	chip->ecc.strength = bch;
@@ -2274,7 +2274,7 @@ static int __init ns_init_module(void)
 	nsmtd       = nand_to_mtd(chip);
 	nand_set_controller_data(chip, (void *)ns);
 
-	chip->ecc.mode   = NAND_ECC_SOFT;
+	chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_SOFT;
 	chip->ecc.algo   = NAND_ECC_ALGO_HAMMING;
 	/* The NAND_SKIP_BBTSCAN option is necessary for 'overridesize' */
 	/* and 'badblocks' parameters to work */
diff --git a/drivers/mtd/nand/raw/ndfc.c b/drivers/mtd/nand/raw/ndfc.c
index ed38338c1383..0fb4ba93c41e 100644
--- a/drivers/mtd/nand/raw/ndfc.c
+++ b/drivers/mtd/nand/raw/ndfc.c
@@ -149,7 +149,7 @@ static int ndfc_chip_init(struct ndfc_controller *ndfc,
 	chip->ecc.correct = nand_correct_data;
 	chip->ecc.hwctl = ndfc_enable_hwecc;
 	chip->ecc.calculate = ndfc_calculate_ecc;
-	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 	chip->ecc.size = 256;
 	chip->ecc.bytes = 3;
 	chip->ecc.strength = 1;
diff --git a/drivers/mtd/nand/raw/omap2.c b/drivers/mtd/nand/raw/omap2.c
index 967ddbda1c48..512f60780a50 100644
--- a/drivers/mtd/nand/raw/omap2.c
+++ b/drivers/mtd/nand/raw/omap2.c
@@ -884,8 +884,8 @@ static int omap_correct_data(struct nand_chip *chip, u_char *dat,
 	int stat = 0;
 
 	/* Ex NAND_ECC_HW12_2048 */
-	if ((info->nand.ecc.mode == NAND_ECC_HW) &&
-			(info->nand.ecc.size  == 2048))
+	if (info->nand.ecc.engine_type == NAND_ECC_ENGINE_TYPE_ON_HOST &&
+	    info->nand.ecc.size == 2048)
 		blockCnt = 4;
 	else
 		blockCnt = 1;
@@ -2006,11 +2006,11 @@ static int omap_nand_attach_chip(struct nand_chip *chip)
 		return -EINVAL;
 
 	/*
-	 * Bail out earlier to let NAND_ECC_SOFT code create its own
+	 * Bail out earlier to let NAND_ECC_ENGINE_TYPE_SOFT code create its own
 	 * ooblayout instead of using ours.
 	 */
 	if (info->ecc_opt == OMAP_ECC_HAM1_CODE_SW) {
-		chip->ecc.mode = NAND_ECC_SOFT;
+		chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_SOFT;
 		chip->ecc.algo = NAND_ECC_ALGO_HAMMING;
 		return 0;
 	}
@@ -2019,7 +2019,7 @@ static int omap_nand_attach_chip(struct nand_chip *chip)
 	switch (info->ecc_opt) {
 	case OMAP_ECC_HAM1_CODE_HW:
 		dev_info(dev, "nand: using OMAP_ECC_HAM1_CODE_HW\n");
-		chip->ecc.mode		= NAND_ECC_HW;
+		chip->ecc.engine_type	= NAND_ECC_ENGINE_TYPE_ON_HOST;
 		chip->ecc.bytes		= 3;
 		chip->ecc.size		= 512;
 		chip->ecc.strength	= 1;
@@ -2036,7 +2036,7 @@ static int omap_nand_attach_chip(struct nand_chip *chip)
 
 	case OMAP_ECC_BCH4_CODE_HW_DETECTION_SW:
 		pr_info("nand: using OMAP_ECC_BCH4_CODE_HW_DETECTION_SW\n");
-		chip->ecc.mode		= NAND_ECC_HW;
+		chip->ecc.engine_type	= NAND_ECC_ENGINE_TYPE_ON_HOST;
 		chip->ecc.size		= 512;
 		chip->ecc.bytes		= 7;
 		chip->ecc.strength	= 4;
@@ -2056,7 +2056,7 @@ static int omap_nand_attach_chip(struct nand_chip *chip)
 
 	case OMAP_ECC_BCH4_CODE_HW:
 		pr_info("nand: using OMAP_ECC_BCH4_CODE_HW ECC scheme\n");
-		chip->ecc.mode		= NAND_ECC_HW;
+		chip->ecc.engine_type	= NAND_ECC_ENGINE_TYPE_ON_HOST;
 		chip->ecc.size		= 512;
 		/* 14th bit is kept reserved for ROM-code compatibility */
 		chip->ecc.bytes		= 7 + 1;
@@ -2078,7 +2078,7 @@ static int omap_nand_attach_chip(struct nand_chip *chip)
 
 	case OMAP_ECC_BCH8_CODE_HW_DETECTION_SW:
 		pr_info("nand: using OMAP_ECC_BCH8_CODE_HW_DETECTION_SW\n");
-		chip->ecc.mode		= NAND_ECC_HW;
+		chip->ecc.engine_type	= NAND_ECC_ENGINE_TYPE_ON_HOST;
 		chip->ecc.size		= 512;
 		chip->ecc.bytes		= 13;
 		chip->ecc.strength	= 8;
@@ -2098,7 +2098,7 @@ static int omap_nand_attach_chip(struct nand_chip *chip)
 
 	case OMAP_ECC_BCH8_CODE_HW:
 		pr_info("nand: using OMAP_ECC_BCH8_CODE_HW ECC scheme\n");
-		chip->ecc.mode		= NAND_ECC_HW;
+		chip->ecc.engine_type	= NAND_ECC_ENGINE_TYPE_ON_HOST;
 		chip->ecc.size		= 512;
 		/* 14th bit is kept reserved for ROM-code compatibility */
 		chip->ecc.bytes		= 13 + 1;
@@ -2121,7 +2121,7 @@ static int omap_nand_attach_chip(struct nand_chip *chip)
 
 	case OMAP_ECC_BCH16_CODE_HW:
 		pr_info("Using OMAP_ECC_BCH16_CODE_HW ECC scheme\n");
-		chip->ecc.mode		= NAND_ECC_HW;
+		chip->ecc.engine_type	= NAND_ECC_ENGINE_TYPE_ON_HOST;
 		chip->ecc.size		= 512;
 		chip->ecc.bytes		= 26;
 		chip->ecc.strength	= 16;
diff --git a/drivers/mtd/nand/raw/orion_nand.c b/drivers/mtd/nand/raw/orion_nand.c
index 7a5cfa3d883f..df9c0f8e4b4e 100644
--- a/drivers/mtd/nand/raw/orion_nand.c
+++ b/drivers/mtd/nand/raw/orion_nand.c
@@ -139,7 +139,7 @@ static int __init orion_nand_probe(struct platform_device *pdev)
 	nc->legacy.IO_ADDR_R = nc->legacy.IO_ADDR_W = io_base;
 	nc->legacy.cmd_ctrl = orion_nand_cmd_ctrl;
 	nc->legacy.read_buf = orion_nand_read_buf;
-	nc->ecc.mode = NAND_ECC_SOFT;
+	nc->ecc.engine_type = NAND_ECC_ENGINE_TYPE_SOFT;
 	nc->ecc.algo = NAND_ECC_ALGO_HAMMING;
 
 	if (board->chip_delay)
diff --git a/drivers/mtd/nand/raw/pasemi_nand.c b/drivers/mtd/nand/raw/pasemi_nand.c
index 3eddc284614d..155e8c8f61e2 100644
--- a/drivers/mtd/nand/raw/pasemi_nand.c
+++ b/drivers/mtd/nand/raw/pasemi_nand.c
@@ -132,7 +132,7 @@ static int pasemi_nand_probe(struct platform_device *ofdev)
 	chip->legacy.read_buf = pasemi_read_buf;
 	chip->legacy.write_buf = pasemi_write_buf;
 	chip->legacy.chip_delay = 0;
-	chip->ecc.mode = NAND_ECC_SOFT;
+	chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_SOFT;
 	chip->ecc.algo = NAND_ECC_ALGO_HAMMING;
 
 	/* Enable the following for a flash based bad block table */
diff --git a/drivers/mtd/nand/raw/plat_nand.c b/drivers/mtd/nand/raw/plat_nand.c
index dbc089c8872f..b98c0d5c413f 100644
--- a/drivers/mtd/nand/raw/plat_nand.c
+++ b/drivers/mtd/nand/raw/plat_nand.c
@@ -66,7 +66,7 @@ static int plat_nand_probe(struct platform_device *pdev)
 	data->chip.options |= pdata->chip.options;
 	data->chip.bbt_options |= pdata->chip.bbt_options;
 
-	data->chip.ecc.mode = NAND_ECC_SOFT;
+	data->chip.ecc.engine_type = NAND_ECC_ENGINE_TYPE_SOFT;
 	data->chip.ecc.algo = NAND_ECC_ALGO_HAMMING;
 
 	platform_set_drvdata(pdev, data);
diff --git a/drivers/mtd/nand/raw/qcom_nandc.c b/drivers/mtd/nand/raw/qcom_nandc.c
index f1daf330951b..0a05674b3ab5 100644
--- a/drivers/mtd/nand/raw/qcom_nandc.c
+++ b/drivers/mtd/nand/raw/qcom_nandc.c
@@ -2548,7 +2548,7 @@ static int qcom_nand_attach_chip(struct nand_chip *chip)
 	ecc->write_page_raw	= qcom_nandc_write_page_raw;
 	ecc->write_oob		= qcom_nandc_write_oob;
 
-	ecc->mode = NAND_ECC_HW;
+	ecc->engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 
 	mtd_set_ooblayout(mtd, &qcom_nand_ooblayout_ops);
 
diff --git a/drivers/mtd/nand/raw/r852.c b/drivers/mtd/nand/raw/r852.c
index f0988cda4479..6b7addd2c420 100644
--- a/drivers/mtd/nand/raw/r852.c
+++ b/drivers/mtd/nand/raw/r852.c
@@ -859,7 +859,7 @@ static int  r852_probe(struct pci_dev *pci_dev, const struct pci_device_id *id)
 	chip->legacy.write_buf = r852_write_buf;
 
 	/* ecc */
-	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 	chip->ecc.placement = NAND_ECC_PLACEMENT_INTERLEAVED;
 	chip->ecc.size = R852_DMA_LEN;
 	chip->ecc.bytes = SM_OOB_SIZE;
diff --git a/drivers/mtd/nand/raw/s3c2410.c b/drivers/mtd/nand/raw/s3c2410.c
index dfe5a0f07385..88301fd29729 100644
--- a/drivers/mtd/nand/raw/s3c2410.c
+++ b/drivers/mtd/nand/raw/s3c2410.c
@@ -904,7 +904,7 @@ static void s3c2410_nand_init_chip(struct s3c2410_nand_info *info,
 	nmtd->info	   = info;
 	nmtd->set	   = set;
 
-	chip->ecc.mode = info->platform->ecc_mode;
+	chip->ecc.engine_type = info->platform->engine_type;
 
 	/*
 	 * If you use u-boot BBT creation code, specifying this flag will
@@ -929,24 +929,24 @@ static int s3c2410_nand_attach_chip(struct nand_chip *chip)
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct s3c2410_nand_info *info = s3c2410_nand_mtd_toinfo(mtd);
 
-	switch (chip->ecc.mode) {
+	switch (chip->ecc.engine_type) {
 
-	case NAND_ECC_NONE:
+	case NAND_ECC_ENGINE_TYPE_NONE:
 		dev_info(info->device, "ECC disabled\n");
 		break;
 
-	case NAND_ECC_SOFT:
+	case NAND_ECC_ENGINE_TYPE_SOFT:
 		/*
-		 * This driver expects Hamming based ECC when ecc_mode is set
-		 * to NAND_ECC_SOFT. Force ecc.algo to NAND_ECC_ALGO_HAMMING to
-		 * avoid adding an extra ecc_algo field to
-		 * s3c2410_platform_nand.
+		 * This driver expects Hamming based ECC when engine_type is set
+		 * to NAND_ECC_ENGINE_TYPE_SOFT. Force ecc.algo to
+		 * NAND_ECC_ALGO_HAMMING to avoid adding an extra ecc_algo field
+		 * to s3c2410_platform_nand.
 		 */
 		chip->ecc.algo = NAND_ECC_ALGO_HAMMING;
 		dev_info(info->device, "soft ECC\n");
 		break;
 
-	case NAND_ECC_HW:
+	case NAND_ECC_ENGINE_TYPE_ON_HOST:
 		chip->ecc.calculate = s3c2410_nand_calculate_ecc;
 		chip->ecc.correct   = s3c2410_nand_correct_data;
 		chip->ecc.strength  = 1;
diff --git a/drivers/mtd/nand/raw/sh_flctl.c b/drivers/mtd/nand/raw/sh_flctl.c
index 9dbd6fdbe264..13df4bdf792a 100644
--- a/drivers/mtd/nand/raw/sh_flctl.c
+++ b/drivers/mtd/nand/raw/sh_flctl.c
@@ -1039,12 +1039,12 @@ static int flctl_chip_attach_chip(struct nand_chip *chip)
 		chip->ecc.strength = 4;
 		chip->ecc.read_page = flctl_read_page_hwecc;
 		chip->ecc.write_page = flctl_write_page_hwecc;
-		chip->ecc.mode = NAND_ECC_HW;
+		chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 
 		/* 4 symbols ECC enabled */
 		flctl->flcmncr_base |= _4ECCEN;
 	} else {
-		chip->ecc.mode = NAND_ECC_SOFT;
+		chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_SOFT;
 		chip->ecc.algo = NAND_ECC_ALGO_HAMMING;
 	}
 
diff --git a/drivers/mtd/nand/raw/sharpsl.c b/drivers/mtd/nand/raw/sharpsl.c
index 51286f7acf54..1327bfb3d5d3 100644
--- a/drivers/mtd/nand/raw/sharpsl.c
+++ b/drivers/mtd/nand/raw/sharpsl.c
@@ -157,7 +157,7 @@ static int sharpsl_nand_probe(struct platform_device *pdev)
 	/* 15 us command delay time */
 	this->legacy.chip_delay = 15;
 	/* set eccmode using hardware ECC */
-	this->ecc.mode = NAND_ECC_HW;
+	this->ecc.engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 	this->ecc.size = 256;
 	this->ecc.bytes = 3;
 	this->ecc.strength = 1;
diff --git a/drivers/mtd/nand/raw/socrates_nand.c b/drivers/mtd/nand/raw/socrates_nand.c
index 72a3a7f98282..0f63ff6f7fe7 100644
--- a/drivers/mtd/nand/raw/socrates_nand.c
+++ b/drivers/mtd/nand/raw/socrates_nand.c
@@ -153,7 +153,8 @@ static int socrates_nand_probe(struct platform_device *ofdev)
 	nand_chip->legacy.read_buf = socrates_nand_read_buf;
 	nand_chip->legacy.dev_ready = socrates_nand_device_ready;
 
-	nand_chip->ecc.mode = NAND_ECC_SOFT;	/* enable ECC */
+	/* enable ECC */
+	nand_chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_SOFT;
 	nand_chip->ecc.algo = NAND_ECC_ALGO_HAMMING;
 
 	/* TODO: I have no idea what real delay is. */
diff --git a/drivers/mtd/nand/raw/stm32_fmc2_nand.c b/drivers/mtd/nand/raw/stm32_fmc2_nand.c
index 65c9d17b25a3..d4f016d9251f 100644
--- a/drivers/mtd/nand/raw/stm32_fmc2_nand.c
+++ b/drivers/mtd/nand/raw/stm32_fmc2_nand.c
@@ -1725,14 +1725,15 @@ static int stm32_fmc2_nfc_attach_chip(struct nand_chip *chip)
 	int ret;
 
 	/*
-	 * Only NAND_ECC_HW mode is actually supported
+	 * Only NAND_ECC_ENGINE_TYPE_ON_HOST mode is actually supported
 	 * Hamming => ecc.strength = 1
 	 * BCH4 => ecc.strength = 4
 	 * BCH8 => ecc.strength = 8
 	 * ECC sector size = 512
 	 */
-	if (chip->ecc.mode != NAND_ECC_HW) {
-		dev_err(nfc->dev, "nand_ecc_mode is not well defined in the DT\n");
+	if (chip->ecc.engine_type != NAND_ECC_ENGINE_TYPE_ON_HOST) {
+		dev_err(nfc->dev,
+			"nand_ecc_engine_type is not well defined in the DT\n");
 		return -EINVAL;
 	}
 
@@ -1942,7 +1943,7 @@ static int stm32_fmc2_nfc_probe(struct platform_device *pdev)
 			 NAND_USES_DMA;
 
 	/* Default ECC settings */
-	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 	chip->ecc.size = FMC2_ECC_STEP_SIZE;
 	chip->ecc.strength = FMC2_ECC_BCH8;
 
diff --git a/drivers/mtd/nand/raw/sunxi_nand.c b/drivers/mtd/nand/raw/sunxi_nand.c
index ffbc1651fadc..c6dd2e6d9ef8 100644
--- a/drivers/mtd/nand/raw/sunxi_nand.c
+++ b/drivers/mtd/nand/raw/sunxi_nand.c
@@ -1575,7 +1575,7 @@ static int sunxi_nand_ooblayout_free(struct mtd_info *mtd, int section,
 	 * only have 2 bytes available in the first user data
 	 * section.
 	 */
-	if (!section && ecc->mode == NAND_ECC_HW) {
+	if (!section && ecc->engine_type == NAND_ECC_ENGINE_TYPE_ON_HOST) {
 		oobregion->offset = 2;
 		oobregion->length = 2;
 
@@ -1720,11 +1720,11 @@ static int sunxi_nand_hw_ecc_ctrl_init(struct nand_chip *nand,
 
 static void sunxi_nand_ecc_cleanup(struct nand_ecc_ctrl *ecc)
 {
-	switch (ecc->mode) {
-	case NAND_ECC_HW:
+	switch (ecc->engine_type) {
+	case NAND_ECC_ENGINE_TYPE_ON_HOST:
 		sunxi_nand_hw_ecc_ctrl_cleanup(ecc);
 		break;
-	case NAND_ECC_NONE:
+	case NAND_ECC_ENGINE_TYPE_NONE:
 	default:
 		break;
 	}
@@ -1752,14 +1752,14 @@ static int sunxi_nand_attach_chip(struct nand_chip *nand)
 	if (!ecc->size || !ecc->strength)
 		return -EINVAL;
 
-	switch (ecc->mode) {
-	case NAND_ECC_HW:
+	switch (ecc->engine_type) {
+	case NAND_ECC_ENGINE_TYPE_ON_HOST:
 		ret = sunxi_nand_hw_ecc_ctrl_init(nand, ecc, np);
 		if (ret)
 			return ret;
 		break;
-	case NAND_ECC_NONE:
-	case NAND_ECC_SOFT:
+	case NAND_ECC_ENGINE_TYPE_NONE:
+	case NAND_ECC_ENGINE_TYPE_SOFT:
 		break;
 	default:
 		return -EINVAL;
@@ -1991,7 +1991,7 @@ static int sunxi_nand_chip_init(struct device *dev, struct sunxi_nfc *nfc,
 	 * Set the ECC mode to the default value in case nothing is specified
 	 * in the DT.
 	 */
-	nand->ecc.mode = NAND_ECC_HW;
+	nand->ecc.engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 	nand_set_flash_node(nand, np);
 
 	mtd = nand_to_mtd(nand);
diff --git a/drivers/mtd/nand/raw/tango_nand.c b/drivers/mtd/nand/raw/tango_nand.c
index 2154b6f860dd..b0872b9cd768 100644
--- a/drivers/mtd/nand/raw/tango_nand.c
+++ b/drivers/mtd/nand/raw/tango_nand.c
@@ -511,7 +511,7 @@ static int tango_attach_chip(struct nand_chip *chip)
 {
 	struct nand_ecc_ctrl *ecc = &chip->ecc;
 
-	ecc->mode = NAND_ECC_HW;
+	ecc->engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 	ecc->algo = NAND_ECC_ALGO_BCH;
 	ecc->bytes = DIV_ROUND_UP(ecc->strength * FIELD_ORDER, BITS_PER_BYTE);
 
diff --git a/drivers/mtd/nand/raw/tegra_nand.c b/drivers/mtd/nand/raw/tegra_nand.c
index e2e13effc8a6..2325b06ccc9a 100644
--- a/drivers/mtd/nand/raw/tegra_nand.c
+++ b/drivers/mtd/nand/raw/tegra_nand.c
@@ -916,7 +916,7 @@ static int tegra_nand_attach_chip(struct nand_chip *chip)
 	if (chip->bbt_options & NAND_BBT_USE_FLASH)
 		chip->bbt_options |= NAND_BBT_NO_OOB;
 
-	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 	chip->ecc.size = 512;
 	chip->ecc.steps = mtd->writesize / chip->ecc.size;
 	if (chip->base.eccreq.step_size != 512) {
diff --git a/drivers/mtd/nand/raw/tmio_nand.c b/drivers/mtd/nand/raw/tmio_nand.c
index 843a8683b737..235a2f7b1bad 100644
--- a/drivers/mtd/nand/raw/tmio_nand.c
+++ b/drivers/mtd/nand/raw/tmio_nand.c
@@ -410,7 +410,7 @@ static int tmio_probe(struct platform_device *dev)
 	nand_chip->legacy.read_buf = tmio_nand_read_buf;
 
 	/* set eccmode using hardware ECC */
-	nand_chip->ecc.mode = NAND_ECC_HW;
+	nand_chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 	nand_chip->ecc.size = 512;
 	nand_chip->ecc.bytes = 6;
 	nand_chip->ecc.strength = 2;
diff --git a/drivers/mtd/nand/raw/txx9ndfmc.c b/drivers/mtd/nand/raw/txx9ndfmc.c
index 47d966871445..ef81dce6b5c4 100644
--- a/drivers/mtd/nand/raw/txx9ndfmc.c
+++ b/drivers/mtd/nand/raw/txx9ndfmc.c
@@ -329,7 +329,7 @@ static int __init txx9ndfmc_probe(struct platform_device *dev)
 		chip->ecc.calculate = txx9ndfmc_calculate_ecc;
 		chip->ecc.correct = txx9ndfmc_correct_data;
 		chip->ecc.hwctl = txx9ndfmc_enable_hwecc;
-		chip->ecc.mode = NAND_ECC_HW;
+		chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 		chip->ecc.strength = 1;
 		chip->legacy.chip_delay = 100;
 		chip->controller = &drvdata->controller;
diff --git a/drivers/mtd/nand/raw/vf610_nfc.c b/drivers/mtd/nand/raw/vf610_nfc.c
index 7248c5901183..8ee2c1f539c4 100644
--- a/drivers/mtd/nand/raw/vf610_nfc.c
+++ b/drivers/mtd/nand/raw/vf610_nfc.c
@@ -732,7 +732,7 @@ static void vf610_nfc_init_controller(struct vf610_nfc *nfc)
 	else
 		vf610_nfc_clear(nfc, NFC_FLASH_CONFIG, CONFIG_16BIT);
 
-	if (nfc->chip.ecc.mode == NAND_ECC_HW) {
+	if (nfc->chip.ecc.engine_type == NAND_ECC_ENGINE_TYPE_ON_HOST) {
 		/* Set ECC status offset in SRAM */
 		vf610_nfc_set_field(nfc, NFC_FLASH_CONFIG,
 				    CONFIG_ECC_SRAM_ADDR_MASK,
@@ -761,7 +761,7 @@ static int vf610_nfc_attach_chip(struct nand_chip *chip)
 		return -ENXIO;
 	}
 
-	if (chip->ecc.mode != NAND_ECC_HW)
+	if (chip->ecc.engine_type != NAND_ECC_ENGINE_TYPE_ON_HOST)
 		return 0;
 
 	if (mtd->writesize != PAGE_2K && mtd->oobsize < 64) {
diff --git a/drivers/mtd/nand/raw/xway_nand.c b/drivers/mtd/nand/raw/xway_nand.c
index 909072e82a68..3332c9aa462a 100644
--- a/drivers/mtd/nand/raw/xway_nand.c
+++ b/drivers/mtd/nand/raw/xway_nand.c
@@ -180,7 +180,7 @@ static int xway_nand_probe(struct platform_device *pdev)
 	data->chip.legacy.read_byte = xway_read_byte;
 	data->chip.legacy.chip_delay = 30;
 
-	data->chip.ecc.mode = NAND_ECC_SOFT;
+	data->chip.ecc.engine_type = NAND_ECC_ENGINE_TYPE_SOFT;
 	data->chip.ecc.algo = NAND_ECC_ALGO_HAMMING;
 
 	platform_set_drvdata(pdev, data);
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index c66cf1f28707..c3411a08ce61 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -347,7 +347,7 @@ static const struct nand_ecc_caps __name = {			\
 
 /**
  * struct nand_ecc_ctrl - Control structure for ECC
- * @mode:	ECC mode
+ * @engine_type: ECC engine type
  * @placement:	OOB bytes placement
  * @algo:	ECC algorithm
  * @steps:	number of ECC steps per page
@@ -400,7 +400,7 @@ static const struct nand_ecc_caps __name = {			\
  * @write_oob:	function to write chip OOB data
  */
 struct nand_ecc_ctrl {
-	enum nand_ecc_mode mode;
+	enum nand_ecc_engine_type engine_type;
 	enum nand_ecc_placement placement;
 	enum nand_ecc_algo algo;
 	int steps;
diff --git a/include/linux/platform_data/mtd-davinci.h b/include/linux/platform_data/mtd-davinci.h
index 3383101c233b..dd474dd44848 100644
--- a/include/linux/platform_data/mtd-davinci.h
+++ b/include/linux/platform_data/mtd-davinci.h
@@ -60,16 +60,16 @@ struct davinci_nand_pdata {		/* platform_data */
 	struct mtd_partition	*parts;
 	unsigned		nr_parts;
 
-	/* none  == NAND_ECC_NONE (strongly *not* advised!!)
-	 * soft  == NAND_ECC_SOFT
-	 * else  == NAND_ECC_HW, according to ecc_bits
+	/* none  == NAND_ECC_ENGINE_TYPE_NONE (strongly *not* advised!!)
+	 * soft  == NAND_ECC_ENGINE_TYPE_SOFT
+	 * else  == NAND_ECC_ENGINE_TYPE_ON_HOST, according to ecc_bits
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
