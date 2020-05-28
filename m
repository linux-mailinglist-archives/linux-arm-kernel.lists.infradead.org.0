Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 921DD1E5E95
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 13:43:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BMONQzXo5fg4qyLObzdGquPp6IPB9fi3hGycD1wqDjc=; b=uW0z2xkSzCJqYB
	tpvfR0n/UDopzmvJlxgQVtImkJOjUeSzr8YtQI0MlKVinuO0dTai+cwt7gRP2M4WGYQYdhh4BkOYN
	I/eHZAf23W5AdKMQIJT+5mSHtV/of3iOGPqU1jxU9hTyUUhPByCU3a51Mmha47SNun1p6VYoeWV+o
	g3CGhK+IBPQ/ybBydFa9Ocya5M6isx6eduAEqhAM5YXFDhwhiYoTH6agKS6TK1MUJa8pi/lIyBqqK
	mtv2tc14y9NDmgscdmjL2nod7gqwZxbPXv7/LaXXiU99w4JfgBvUfrO+4ZjYpts/lfm0PUjebpgP+
	/KK9oh4uKkVEm8+YNOOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeGwM-0008Du-Ud; Thu, 28 May 2020 11:43:15 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeGlR-0001mg-Lx; Thu, 28 May 2020 11:32:03 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 30549200005;
 Thu, 28 May 2020 11:31:54 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
Subject: [PATCH v6 18/18] mtd: rawnand: Move generic bits to the ECC framework
Date: Thu, 28 May 2020 13:31:13 +0200
Message-Id: <20200528113113.9166-19-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200528113113.9166-1-miquel.raynal@bootlin.com>
References: <20200528113113.9166-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_043158_057858_79ECCF26 
X-CRM114-Status: GOOD (  18.93  )
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

Many OOB layouts and helpers are generic to all NAND chips, they
should not be restricted to be only used by raw NAND controller
drivers. They might later be used by generic ECC engines and SPI-NAND
devices as well so move them into a more generic place.

To avoid moving all the raw NAND core "history" into the generic NAND
layer, we already moved certain bits into legacy helpers in the raw
NAND core to ensure backward compatibility.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/Kconfig                      |  11 +
 drivers/mtd/nand/Makefile                     |   1 +
 .../mtd/nand/{raw/nand_bch.c => ecc-sw-bch.c} |   2 +-
 drivers/mtd/nand/ecc.c                        | 299 +++++++++++++++++
 drivers/mtd/nand/raw/Kconfig                  |  11 +-
 drivers/mtd/nand/raw/Makefile                 |   1 -
 drivers/mtd/nand/raw/atmel/nand-controller.c  |   3 +-
 drivers/mtd/nand/raw/denali.c                 |   3 +
 drivers/mtd/nand/raw/nand_base.c              | 313 +-----------------
 drivers/mtd/nand/raw/nand_toshiba.c           |   2 +
 drivers/mtd/nand/raw/nandsim.c                |   2 +-
 drivers/mtd/nand/raw/omap2.c                  |   2 +-
 drivers/mtd/nand/raw/sunxi_nand.c             |   3 +-
 drivers/mtd/nand/raw/tegra_nand.c             |   3 +-
 .../mtd/{nand_bch.h => nand-ecc-sw-bch.h}     |   6 +-
 include/linux/mtd/nand.h                      |  20 ++
 include/linux/mtd/rawnand.h                   |  17 +-
 17 files changed, 364 insertions(+), 335 deletions(-)
 rename drivers/mtd/nand/{raw/nand_bch.c => ecc-sw-bch.c} (99%)
 rename include/linux/mtd/{nand_bch.h => nand-ecc-sw-bch.h} (92%)

diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index 3327d8539a73..316da271a3a1 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -15,6 +15,17 @@ config MTD_NAND_ECC
 	bool
 	select MTD_NAND_CORE
 
+config MTD_NAND_ECC_SW_BCH
+	bool "Software BCH ECC engine"
+	select BCH
+	select MTD_NAND_ECC
+	default n
+	help
+	  This enables support for software BCH error correction. Binary BCH
+	  codes are more powerful and cpu intensive than traditional Hamming
+	  ECC codes. They are used with NAND devices requiring more than 1 bit
+	  of error correction.
+
 endmenu
 
 endmenu
diff --git a/drivers/mtd/nand/Makefile b/drivers/mtd/nand/Makefile
index 981372953b56..c7179ff23753 100644
--- a/drivers/mtd/nand/Makefile
+++ b/drivers/mtd/nand/Makefile
@@ -8,3 +8,4 @@ obj-y	+= raw/
 obj-y	+= spi/
 
 nandcore-$(CONFIG_MTD_NAND_ECC) += ecc.o
+nandcore-$(CONFIG_MTD_NAND_ECC_SW_BCH) += ecc-sw-bch.o
diff --git a/drivers/mtd/nand/raw/nand_bch.c b/drivers/mtd/nand/ecc-sw-bch.c
similarity index 99%
rename from drivers/mtd/nand/raw/nand_bch.c
rename to drivers/mtd/nand/ecc-sw-bch.c
index d5af8c5fd02f..d0dc84cfdbdc 100644
--- a/drivers/mtd/nand/raw/nand_bch.c
+++ b/drivers/mtd/nand/ecc-sw-bch.c
@@ -13,7 +13,7 @@
 #include <linux/bitops.h>
 #include <linux/mtd/mtd.h>
 #include <linux/mtd/rawnand.h>
-#include <linux/mtd/nand_bch.h>
+#include <linux/mtd/nand-ecc-sw-bch.h>
 #include <linux/bch.h>
 
 /**
diff --git a/drivers/mtd/nand/ecc.c b/drivers/mtd/nand/ecc.c
index e4f2b6fcbb12..91f0969210c4 100644
--- a/drivers/mtd/nand/ecc.c
+++ b/drivers/mtd/nand/ecc.c
@@ -133,6 +133,305 @@ int nand_ecc_finish_io_req(struct nand_device *nand,
 }
 EXPORT_SYMBOL(nand_ecc_finish_io_req);
 
+/* Define default oob placement schemes for large and small page devices */
+static int nand_ooblayout_ecc_sp(struct mtd_info *mtd, int section,
+				 struct mtd_oob_region *oobregion)
+{
+	struct nand_device *nand = mtd_to_nanddev(mtd);
+	unsigned int total_ecc_bytes = nand->ecc.ctx.total;
+
+	if (section > 1)
+		return -ERANGE;
+
+	if (!section) {
+		oobregion->offset = 0;
+		if (mtd->oobsize == 16)
+			oobregion->length = 4;
+		else
+			oobregion->length = 3;
+	} else {
+		if (mtd->oobsize == 8)
+			return -ERANGE;
+
+		oobregion->offset = 6;
+		oobregion->length = total_ecc_bytes - 4;
+	}
+
+	return 0;
+}
+
+static int nand_ooblayout_free_sp(struct mtd_info *mtd, int section,
+				  struct mtd_oob_region *oobregion)
+{
+	if (section > 1)
+		return -ERANGE;
+
+	if (mtd->oobsize == 16) {
+		if (section)
+			return -ERANGE;
+
+		oobregion->length = 8;
+		oobregion->offset = 8;
+	} else {
+		oobregion->length = 2;
+		if (!section)
+			oobregion->offset = 3;
+		else
+			oobregion->offset = 6;
+	}
+
+	return 0;
+}
+
+const struct mtd_ooblayout_ops nand_ooblayout_sp_ops = {
+	.ecc = nand_ooblayout_ecc_sp,
+	.free = nand_ooblayout_free_sp,
+};
+EXPORT_SYMBOL_GPL(nand_ooblayout_sp_ops);
+
+static int nand_ooblayout_ecc_lp(struct mtd_info *mtd, int section,
+				 struct mtd_oob_region *oobregion)
+{
+	struct nand_device *nand = mtd_to_nanddev(mtd);
+	unsigned int total_ecc_bytes = nand->ecc.ctx.total;
+
+	if (section || !total_ecc_bytes)
+		return -ERANGE;
+
+	oobregion->length = total_ecc_bytes;
+	oobregion->offset = mtd->oobsize - oobregion->length;
+
+	return 0;
+}
+
+static int nand_ooblayout_free_lp(struct mtd_info *mtd, int section,
+				  struct mtd_oob_region *oobregion)
+{
+	struct nand_device *nand = mtd_to_nanddev(mtd);
+	unsigned int total_ecc_bytes = nand->ecc.ctx.total;
+
+	if (section)
+		return -ERANGE;
+
+	oobregion->length = mtd->oobsize - total_ecc_bytes - 2;
+	oobregion->offset = 2;
+
+	return 0;
+}
+
+const struct mtd_ooblayout_ops nand_ooblayout_lp_ops = {
+	.ecc = nand_ooblayout_ecc_lp,
+	.free = nand_ooblayout_free_lp,
+};
+EXPORT_SYMBOL_GPL(nand_ooblayout_lp_ops);
+
+/*
+ * Support the old "large page" layout used for 1-bit Hamming ECC where ECC
+ * are placed at a fixed offset.
+ */
+static int nand_ooblayout_ecc_lp_hamming(struct mtd_info *mtd, int section,
+					 struct mtd_oob_region *oobregion)
+{
+	struct nand_device *nand = mtd_to_nanddev(mtd);
+	unsigned int total_ecc_bytes = nand->ecc.ctx.total;
+
+	if (section)
+		return -ERANGE;
+
+	switch (mtd->oobsize) {
+	case 64:
+		oobregion->offset = 40;
+		break;
+	case 128:
+		oobregion->offset = 80;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	oobregion->length = total_ecc_bytes;
+	if (oobregion->offset + oobregion->length > mtd->oobsize)
+		return -ERANGE;
+
+	return 0;
+}
+
+static int nand_ooblayout_free_lp_hamming(struct mtd_info *mtd, int section,
+					  struct mtd_oob_region *oobregion)
+{
+	struct nand_device *nand = mtd_to_nanddev(mtd);
+	unsigned int total_ecc_bytes = nand->ecc.ctx.total;
+	int ecc_offset = 0;
+
+	if (section < 0 || section > 1)
+		return -ERANGE;
+
+	switch (mtd->oobsize) {
+	case 64:
+		ecc_offset = 40;
+		break;
+	case 128:
+		ecc_offset = 80;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	if (section == 0) {
+		oobregion->offset = 2;
+		oobregion->length = ecc_offset - 2;
+	} else {
+		oobregion->offset = ecc_offset + total_ecc_bytes;
+		oobregion->length = mtd->oobsize - oobregion->offset;
+	}
+
+	return 0;
+}
+
+const struct mtd_ooblayout_ops nand_ooblayout_lp_hamming_ops = {
+	.ecc = nand_ooblayout_ecc_lp_hamming,
+	.free = nand_ooblayout_free_lp_hamming,
+};
+EXPORT_SYMBOL_GPL(nand_ooblayout_lp_hamming_ops);
+
+static enum nand_ecc_engine_type
+of_get_nand_ecc_engine_type(struct device_node *np)
+{
+	return NAND_ECC_ENGINE_TYPE_INVALID;
+}
+
+static const char * const nand_ecc_placement[] = {
+	[NAND_ECC_PLACEMENT_OOB] = "oob",
+	[NAND_ECC_PLACEMENT_INTERLEAVED] = "interleaved",
+};
+
+enum nand_ecc_placement of_get_nand_ecc_placement(struct device_node *np)
+{
+	enum nand_ecc_placement placement;
+	const char *pm;
+	int err;
+
+	err = of_property_read_string(np, "nand-ecc-placement", &pm);
+	if (!err) {
+		for (placement = NAND_ECC_PLACEMENT_OOB;
+		     placement < ARRAY_SIZE(nand_ecc_placement); placement++) {
+			if (!strcasecmp(pm, nand_ecc_placement[placement]))
+				return placement;
+		}
+	}
+
+	return NAND_ECC_PLACEMENT_UNKNOWN;
+}
+
+static const char * const nand_ecc_algos[] = {
+	[NAND_ECC_ALGO_HAMMING]	= "hamming",
+	[NAND_ECC_ALGO_BCH]	= "bch",
+	[NAND_ECC_ALGO_RS]	= "rs",
+};
+
+static enum nand_ecc_algo of_get_nand_ecc_algo(struct device_node *np)
+{
+	enum nand_ecc_algo ecc_algo;
+	const char *pm;
+	int err;
+
+	err = of_property_read_string(np, "nand-ecc-algo", &pm);
+	if (!err) {
+		for (ecc_algo = NAND_ECC_ALGO_HAMMING;
+		     ecc_algo < ARRAY_SIZE(nand_ecc_algos);
+		     ecc_algo++) {
+			if (!strcasecmp(pm, nand_ecc_algos[ecc_algo]))
+				return ecc_algo;
+		}
+	}
+
+	return NAND_ECC_ALGO_UNKNOWN;
+}
+
+static int of_get_nand_ecc_step_size(struct device_node *np)
+{
+	int ret;
+	u32 val;
+
+	ret = of_property_read_u32(np, "nand-ecc-step-size", &val);
+	return ret ? ret : val;
+}
+
+static int of_get_nand_ecc_strength(struct device_node *np)
+{
+	int ret;
+	u32 val;
+
+	ret = of_property_read_u32(np, "nand-ecc-strength", &val);
+	return ret ? ret : val;
+}
+
+static inline bool of_get_nand_ecc_maximize(struct device_node *np)
+{
+	return of_property_read_bool(np, "nand-ecc-maximize");
+}
+
+void nand_ecc_read_user_conf(struct nand_device *nand)
+{
+	struct device_node *dn = nanddev_get_flash_node(nand);
+	int strength, size;
+
+	nand->ecc.user_conf.engine_type = of_get_nand_ecc_engine_type(dn);
+	nand->ecc.user_conf.algo = of_get_nand_ecc_algo(dn);
+	nand->ecc.user_conf.placement = of_get_nand_ecc_placement(dn);
+
+	strength = of_get_nand_ecc_strength(dn);
+	if (strength >= 0)
+		nand->ecc.user_conf.strength = strength;
+
+	size = of_get_nand_ecc_step_size(dn);
+	if (size >= 0)
+		nand->ecc.user_conf.step_size = size;
+
+	if (of_get_nand_ecc_maximize(dn))
+		nand->ecc.user_conf.flags |= NAND_ECC_MAXIMIZE;
+}
+EXPORT_SYMBOL(nand_ecc_read_user_conf);
+
+/**
+ * nand_ecc_correction_is_enough - Check if the chip configuration meets the
+ *                                 datasheet requirements.
+ *
+ * @nand: Device to check
+ *
+ * If our configuration corrects A bits per B bytes and the minimum
+ * required correction level is X bits per Y bytes, then we must ensure
+ * both of the following are true:
+ *
+ * (1) A / B >= X / Y
+ * (2) A >= X
+ *
+ * Requirement (1) ensures we can correct for the required bitflip density.
+ * Requirement (2) ensures we can correct even when all bitflips are clumped
+ * in the same sector.
+ */
+bool nand_ecc_correction_is_enough(struct nand_device *nand)
+{
+	struct nand_ecc_props *reqs = &nand->ecc.requirements;
+	struct nand_ecc_props *conf = &nand->ecc.ctx.conf;
+	struct mtd_info *mtd = nanddev_to_mtd(nand);
+	int corr, ds_corr;
+
+	if (conf->step_size == 0 || reqs->step_size == 0)
+		/* Not enough information */
+		return true;
+
+	/*
+	 * We get the number of corrected bits per page to compare
+	 * the correction density.
+	 */
+	corr = (mtd->writesize * conf->strength) / conf->step_size;
+	ds_corr = (mtd->writesize * reqs->strength) / reqs->step_size;
+
+	return corr >= ds_corr && conf->strength >= reqs->strength;
+}
+EXPORT_SYMBOL(nand_ecc_correction_is_enough);
+
 MODULE_LICENSE("GPL");
 MODULE_AUTHOR("Miquel Raynal <miquel.raynal@bootlin.com>");
 MODULE_DESCRIPTION("Generic ECC engine");
diff --git a/drivers/mtd/nand/raw/Kconfig b/drivers/mtd/nand/raw/Kconfig
index 85280e327bfe..9f24f8fa9a23 100644
--- a/drivers/mtd/nand/raw/Kconfig
+++ b/drivers/mtd/nand/raw/Kconfig
@@ -13,6 +13,7 @@ config MTD_NAND_ECC_SW_HAMMING_SMC
 menuconfig MTD_RAW_NAND
 	tristate "Raw/Parallel NAND Device Support"
 	select MTD_NAND_CORE
+	select MTD_NAND_ECC
 	select MTD_NAND_ECC_SW_HAMMING
 	help
 	  This enables support for accessing all type of raw/parallel
@@ -21,16 +22,6 @@ menuconfig MTD_RAW_NAND
 
 if MTD_RAW_NAND
 
-config MTD_NAND_ECC_SW_BCH
-	bool "Support software BCH ECC"
-	select BCH
-	default n
-	help
-	  This enables support for software BCH error correction. Binary BCH
-	  codes are more powerful and cpu intensive than traditional Hamming
-	  ECC codes. They are used with NAND devices requiring more than 1 bit
-	  of error correction.
-
 comment "Raw/parallel NAND flash controllers"
 
 config MTD_NAND_DENALI
diff --git a/drivers/mtd/nand/raw/Makefile b/drivers/mtd/nand/raw/Makefile
index 2930f5b9015d..76904305d091 100644
--- a/drivers/mtd/nand/raw/Makefile
+++ b/drivers/mtd/nand/raw/Makefile
@@ -2,7 +2,6 @@
 
 obj-$(CONFIG_MTD_RAW_NAND)		+= nand.o
 obj-$(CONFIG_MTD_NAND_ECC_SW_HAMMING)	+= nand_ecc.o
-nand-$(CONFIG_MTD_NAND_ECC_SW_BCH)	+= nand_bch.o
 obj-$(CONFIG_MTD_SM_COMMON) 		+= sm_common.o
 
 obj-$(CONFIG_MTD_NAND_CAFE)		+= cafe_nand.o
diff --git a/drivers/mtd/nand/raw/atmel/nand-controller.c b/drivers/mtd/nand/raw/atmel/nand-controller.c
index 2ebcf3087d8d..7ce45b6edb6d 100644
--- a/drivers/mtd/nand/raw/atmel/nand-controller.c
+++ b/drivers/mtd/nand/raw/atmel/nand-controller.c
@@ -1045,6 +1045,7 @@ static int atmel_nand_pmecc_init(struct nand_chip *chip)
 {
 	struct nand_ecc_props *requirements = &chip->base.ecc.requirements;
 	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct nand_device *nanddev = mtd_to_nanddev(mtd);
 	struct atmel_nand *nand = to_atmel_nand(chip);
 	struct atmel_nand_controller *nc;
 	struct atmel_pmecc_user_req req;
@@ -1069,7 +1070,7 @@ static int atmel_nand_pmecc_init(struct nand_chip *chip)
 			chip->ecc.size = val;
 	}
 
-	if (chip->ecc.options & NAND_ECC_MAXIMIZE)
+	if (nanddev->ecc.user_conf.flags & NAND_ECC_MAXIMIZE)
 		req.ecc.strength = ATMEL_PMECC_MAXIMIZE_ECC_STRENGTH;
 	else if (chip->ecc.strength)
 		req.ecc.strength = chip->ecc.strength;
diff --git a/drivers/mtd/nand/raw/denali.c b/drivers/mtd/nand/raw/denali.c
index a6a6464974ec..51bc014ebc0a 100644
--- a/drivers/mtd/nand/raw/denali.c
+++ b/drivers/mtd/nand/raw/denali.c
@@ -1181,6 +1181,7 @@ int denali_chip_init(struct denali_controller *denali,
 {
 	struct nand_chip *chip = &dchip->chip;
 	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct nand_device *nanddev = mtd_to_nanddev(mtd);
 	struct denali_chip *dchip2;
 	int i, j, ret;
 
@@ -1248,6 +1249,8 @@ int denali_chip_init(struct denali_controller *denali,
 
 	mtd_set_ooblayout(mtd, &denali_ooblayout_ops);
 
+	nanddev->ecc.user_conf.flags |= NAND_ECC_MAXIMIZE;
+
 	ret = nand_scan(chip, dchip->nsels);
 	if (ret)
 		return ret;
diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 98a61071f775..a15cf4ec16e7 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -34,8 +34,9 @@
 #include <linux/mm.h>
 #include <linux/types.h>
 #include <linux/mtd/mtd.h>
+#include <linux/mtd/nand.h>
 #include <linux/mtd/nand_ecc.h>
-#include <linux/mtd/nand_bch.h>
+#include <linux/mtd/nand-ecc-sw-bch.h>
 #include <linux/interrupt.h>
 #include <linux/bitops.h>
 #include <linux/io.h>
@@ -45,166 +46,6 @@
 
 #include "internals.h"
 
-/* Define default oob placement schemes for large and small page devices */
-static int nand_ooblayout_ecc_sp(struct mtd_info *mtd, int section,
-				 struct mtd_oob_region *oobregion)
-{
-	struct nand_chip *chip = mtd_to_nand(mtd);
-	struct nand_ecc_ctrl *ecc = &chip->ecc;
-
-	if (section > 1)
-		return -ERANGE;
-
-	if (!section) {
-		oobregion->offset = 0;
-		if (mtd->oobsize == 16)
-			oobregion->length = 4;
-		else
-			oobregion->length = 3;
-	} else {
-		if (mtd->oobsize == 8)
-			return -ERANGE;
-
-		oobregion->offset = 6;
-		oobregion->length = ecc->total - 4;
-	}
-
-	return 0;
-}
-
-static int nand_ooblayout_free_sp(struct mtd_info *mtd, int section,
-				  struct mtd_oob_region *oobregion)
-{
-	if (section > 1)
-		return -ERANGE;
-
-	if (mtd->oobsize == 16) {
-		if (section)
-			return -ERANGE;
-
-		oobregion->length = 8;
-		oobregion->offset = 8;
-	} else {
-		oobregion->length = 2;
-		if (!section)
-			oobregion->offset = 3;
-		else
-			oobregion->offset = 6;
-	}
-
-	return 0;
-}
-
-const struct mtd_ooblayout_ops nand_ooblayout_sp_ops = {
-	.ecc = nand_ooblayout_ecc_sp,
-	.free = nand_ooblayout_free_sp,
-};
-EXPORT_SYMBOL_GPL(nand_ooblayout_sp_ops);
-
-static int nand_ooblayout_ecc_lp(struct mtd_info *mtd, int section,
-				 struct mtd_oob_region *oobregion)
-{
-	struct nand_chip *chip = mtd_to_nand(mtd);
-	struct nand_ecc_ctrl *ecc = &chip->ecc;
-
-	if (section || !ecc->total)
-		return -ERANGE;
-
-	oobregion->length = ecc->total;
-	oobregion->offset = mtd->oobsize - oobregion->length;
-
-	return 0;
-}
-
-static int nand_ooblayout_free_lp(struct mtd_info *mtd, int section,
-				  struct mtd_oob_region *oobregion)
-{
-	struct nand_chip *chip = mtd_to_nand(mtd);
-	struct nand_ecc_ctrl *ecc = &chip->ecc;
-
-	if (section)
-		return -ERANGE;
-
-	oobregion->length = mtd->oobsize - ecc->total - 2;
-	oobregion->offset = 2;
-
-	return 0;
-}
-
-const struct mtd_ooblayout_ops nand_ooblayout_lp_ops = {
-	.ecc = nand_ooblayout_ecc_lp,
-	.free = nand_ooblayout_free_lp,
-};
-EXPORT_SYMBOL_GPL(nand_ooblayout_lp_ops);
-
-/*
- * Support the old "large page" layout used for 1-bit Hamming ECC where ECC
- * are placed at a fixed offset.
- */
-static int nand_ooblayout_ecc_lp_hamming(struct mtd_info *mtd, int section,
-					 struct mtd_oob_region *oobregion)
-{
-	struct nand_chip *chip = mtd_to_nand(mtd);
-	struct nand_ecc_ctrl *ecc = &chip->ecc;
-
-	if (section)
-		return -ERANGE;
-
-	switch (mtd->oobsize) {
-	case 64:
-		oobregion->offset = 40;
-		break;
-	case 128:
-		oobregion->offset = 80;
-		break;
-	default:
-		return -EINVAL;
-	}
-
-	oobregion->length = ecc->total;
-	if (oobregion->offset + oobregion->length > mtd->oobsize)
-		return -ERANGE;
-
-	return 0;
-}
-
-static int nand_ooblayout_free_lp_hamming(struct mtd_info *mtd, int section,
-					  struct mtd_oob_region *oobregion)
-{
-	struct nand_chip *chip = mtd_to_nand(mtd);
-	struct nand_ecc_ctrl *ecc = &chip->ecc;
-	int ecc_offset = 0;
-
-	if (section < 0 || section > 1)
-		return -ERANGE;
-
-	switch (mtd->oobsize) {
-	case 64:
-		ecc_offset = 40;
-		break;
-	case 128:
-		ecc_offset = 80;
-		break;
-	default:
-		return -EINVAL;
-	}
-
-	if (section == 0) {
-		oobregion->offset = 2;
-		oobregion->length = ecc_offset - 2;
-	} else {
-		oobregion->offset = ecc_offset + ecc->total;
-		oobregion->length = mtd->oobsize - oobregion->offset;
-	}
-
-	return 0;
-}
-
-static const struct mtd_ooblayout_ops nand_ooblayout_lp_hamming_ops = {
-	.ecc = nand_ooblayout_ecc_lp_hamming,
-	.free = nand_ooblayout_free_lp_hamming,
-};
-
 static int nand_pairing_dist3_get_info(struct mtd_info *mtd, int page,
 				       struct mtd_pairing_info *info)
 {
@@ -5010,17 +4851,6 @@ static int nand_detect(struct nand_chip *chip, struct nand_flash_dev *type)
 	return ret;
 }
 
-static const char * const nand_ecc_placement[] = {
-	[NAND_ECC_PLACEMENT_OOB] = "oob",
-	[NAND_ECC_PLACEMENT_INTERLEAVED] = "interleaved",
-};
-
-static enum nand_ecc_engine_type
-of_get_nand_ecc_engine_type(struct device_node *np)
-{
-	return NAND_ECC_ENGINE_TYPE_INVALID;
-}
-
 static enum nand_ecc_engine_type
 of_get_rawnand_ecc_engine_type_legacy(struct device_node *np)
 {
@@ -5072,24 +4902,6 @@ of_get_rawnand_ecc_engine_type_legacy(struct device_node *np)
 	return NAND_ECC_ENGINE_TYPE_INVALID;
 }
 
-enum nand_ecc_placement of_get_nand_ecc_placement(struct device_node *np)
-{
-	enum nand_ecc_placement placement;
-	const char *pm;
-	int err;
-
-	err = of_property_read_string(np, "nand-ecc-placement", &pm);
-	if (!err) {
-		for (placement = NAND_ECC_PLACEMENT_OOB;
-		     placement < ARRAY_SIZE(nand_ecc_placement); placement++) {
-			if (!strcasecmp(pm, nand_ecc_placement[placement]))
-				return placement;
-		}
-	}
-
-	return NAND_ECC_PLACEMENT_UNKNOWN;
-}
-
 enum nand_ecc_placement
 of_get_rawnand_ecc_placement_legacy(struct device_node *np)
 {
@@ -5105,31 +4917,6 @@ of_get_rawnand_ecc_placement_legacy(struct device_node *np)
 	return NAND_ECC_PLACEMENT_UNKNOWN;
 }
 
-static const char * const nand_ecc_algos[] = {
-	[NAND_ECC_ALGO_HAMMING]	= "hamming",
-	[NAND_ECC_ALGO_BCH]	= "bch",
-	[NAND_ECC_ALGO_RS]	= "rs",
-};
-
-static enum nand_ecc_algo of_get_nand_ecc_algo(struct device_node *np)
-{
-	enum nand_ecc_algo ecc_algo;
-	const char *pm;
-	int err;
-
-	err = of_property_read_string(np, "nand-ecc-algo", &pm);
-	if (!err) {
-		for (ecc_algo = NAND_ECC_ALGO_HAMMING;
-		     ecc_algo < ARRAY_SIZE(nand_ecc_algos);
-		     ecc_algo++) {
-			if (!strcasecmp(pm, nand_ecc_algos[ecc_algo]))
-				return ecc_algo;
-		}
-	}
-
-	return NAND_ECC_ALGO_UNKNOWN;
-}
-
 static enum nand_ecc_algo of_get_rawnand_ecc_algo_legacy(struct device_node *np)
 {
 	const char *pm;
@@ -5146,48 +4933,10 @@ static enum nand_ecc_algo of_get_rawnand_ecc_algo_legacy(struct device_node *np)
 	return NAND_ECC_ALGO_UNKNOWN;
 }
 
-static int of_get_nand_ecc_step_size(struct device_node *np)
-{
-	int ret;
-	u32 val;
-
-	ret = of_property_read_u32(np, "nand-ecc-step-size", &val);
-	return ret ? ret : val;
-}
-
-static int of_get_nand_ecc_strength(struct device_node *np)
-{
-	int ret;
-	u32 val;
-
-	ret = of_property_read_u32(np, "nand-ecc-strength", &val);
-	return ret ? ret : val;
-}
-
-static void nand_ecc_read_user_conf(struct nand_chip *chip)
-{
-	struct device_node *dn = nand_get_flash_node(chip);
-	struct nand_device *nand = &chip->base;
-	int strength, size;
-
-	nand->ecc.user_conf.engine_type = of_get_nand_ecc_engine_type(dn);
-	nand->ecc.user_conf.algo = of_get_nand_ecc_algo(dn);
-	nand->ecc.user_conf.placement = of_get_nand_ecc_placement(dn);
-
-	strength = of_get_nand_ecc_strength(dn);
-	if (strength >= 0)
-		nand->ecc.user_conf.strength = strength;
-
-	size = of_get_nand_ecc_step_size(dn);
-	if (size >= 0)
-		nand->ecc.user_conf.step_size = size;
-}
-
 static void rawnand_ecc_read_legacy_user_conf(struct nand_chip *chip)
 {
 	struct device_node *dn = nand_get_flash_node(chip);
-	struct nand_device *nand = &chip->base;
-	struct nand_ecc_props *user_conf = &nand->ecc.user_conf;
+	struct nand_ecc_props *user_conf = &chip->base.ecc.user_conf;
 
 	if (user_conf->engine_type != NAND_ECC_ENGINE_TYPE_INVALID)
 		user_conf->engine_type = of_get_rawnand_ecc_engine_type_legacy(dn);
@@ -5237,10 +4986,7 @@ static int rawnand_dt_init(struct nand_chip *chip)
 	if (of_get_nand_on_flash_bbt(dn))
 		chip->bbt_options |= NAND_BBT_USE_FLASH;
 
-	if (of_property_read_bool(dn, "nand-ecc-maximize"))
-		chip->ecc.options |= NAND_ECC_MAXIMIZE;
-
-	nand_ecc_read_user_conf(chip);
+	nand_ecc_read_user_conf(nand);
 	rawnand_ecc_read_legacy_user_conf(chip);
 
 	/*
@@ -5370,6 +5116,7 @@ static void nand_scan_ident_cleanup(struct nand_chip *chip)
 static int nand_set_ecc_soft_ops(struct nand_chip *chip)
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct nand_device *nanddev = mtd_to_nanddev(mtd);
 	struct nand_ecc_ctrl *ecc = &chip->ecc;
 
 	if (WARN_ON(ecc->engine_type != NAND_ECC_ENGINE_TYPE_SOFT))
@@ -5445,7 +5192,7 @@ static int nand_set_ecc_soft_ops(struct nand_chip *chip)
 		 * used.
 		 */
 		if (mtd->ooblayout == &nand_ooblayout_lp_ops &&
-		    ecc->options & NAND_ECC_MAXIMIZE) {
+		    nanddev->ecc.user_conf.flags & NAND_ECC_MAXIMIZE) {
 			int steps, bytes;
 
 			/* Always prefer 1k blocks over 512bytes ones */
@@ -5683,11 +5430,12 @@ nand_maximize_ecc(struct nand_chip *chip,
  * @caps: ECC engine caps info structure
  * @oobavail: OOB size that the ECC engine can use
  *
- * Choose the ECC configuration according to following logic
+ * Choose the ECC configuration according to following logic.
  *
  * 1. If both ECC step size and ECC strength are already set (usually by DT)
  *    then check if it is supported by this controller.
- * 2. If NAND_ECC_MAXIMIZE is set, then select maximum ECC strength.
+ * 2. If the user provided the nand-ecc-maximize property, then select maximum
+ *    ECC strength.
  * 3. Otherwise, try to match the ECC step size and ECC strength closest
  *    to the chip's requirement. If available OOB size can't fit the chip
  *    requirement then fallback to the maximum ECC step size and ECC strength.
@@ -5698,6 +5446,7 @@ int nand_ecc_choose_conf(struct nand_chip *chip,
 			 const struct nand_ecc_caps *caps, int oobavail)
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct nand_device *nanddev = mtd_to_nanddev(mtd);
 
 	if (WARN_ON(oobavail < 0 || oobavail > mtd->oobsize))
 		return -EINVAL;
@@ -5705,7 +5454,7 @@ int nand_ecc_choose_conf(struct nand_chip *chip,
 	if (chip->ecc.size && chip->ecc.strength)
 		return nand_check_ecc_caps(chip, caps, oobavail);
 
-	if (chip->ecc.options & NAND_ECC_MAXIMIZE)
+	if (nanddev->ecc.user_conf.flags & NAND_ECC_MAXIMIZE)
 		return nand_maximize_ecc(chip, caps, oobavail);
 
 	if (!nand_match_ecc_req(chip, caps, oobavail))
@@ -5715,42 +5464,6 @@ int nand_ecc_choose_conf(struct nand_chip *chip,
 }
 EXPORT_SYMBOL_GPL(nand_ecc_choose_conf);
 
-/*
- * Check if the chip configuration meet the datasheet requirements.
-
- * If our configuration corrects A bits per B bytes and the minimum
- * required correction level is X bits per Y bytes, then we must ensure
- * both of the following are true:
- *
- * (1) A / B >= X / Y
- * (2) A >= X
- *
- * Requirement (1) ensures we can correct for the required bitflip density.
- * Requirement (2) ensures we can correct even when all bitflips are clumped
- * in the same sector.
- */
-static bool nand_ecc_strength_good(struct nand_chip *chip)
-{
-	struct mtd_info *mtd = nand_to_mtd(chip);
-	struct nand_ecc_ctrl *ecc = &chip->ecc;
-	struct nand_ecc_props *requirements = &chip->base.ecc.requirements;
-	int corr, ds_corr;
-
-	if (ecc->size == 0 || requirements->step_size == 0)
-		/* Not enough information */
-		return true;
-
-	/*
-	 * We get the number of corrected bits per page to compare
-	 * the correction density.
-	 */
-	corr = (mtd->writesize * ecc->strength) / ecc->size;
-	ds_corr = (mtd->writesize * requirements->strength) /
-		  requirements->step_size;
-
-	return corr >= ds_corr && ecc->strength >= requirements->strength;
-}
-
 static int rawnand_erase(struct nand_device *nand, const struct nand_pos *pos)
 {
 	struct nand_chip *chip = container_of(nand, struct nand_chip,
@@ -5806,6 +5519,7 @@ static const struct nand_ops rawnand_ops = {
 static int nand_scan_tail(struct nand_chip *chip)
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct nand_device *nanddev = mtd_to_nanddev(mtd);
 	struct nand_ecc_ctrl *ecc = &chip->ecc;
 	int ret, i;
 
@@ -6015,6 +5729,7 @@ static int nand_scan_tail(struct nand_chip *chip)
 		goto err_nand_manuf_cleanup;
 	}
 	ecc->total = ecc->steps * ecc->bytes;
+	chip->base.ecc.ctx.total = ecc->total;
 	if (ecc->total > mtd->oobsize) {
 		WARN(1, "Total number of ECC bytes exceeded oobsize\n");
 		ret = -EINVAL;
@@ -6032,7 +5747,7 @@ static int nand_scan_tail(struct nand_chip *chip)
 	mtd->oobavail = ret;
 
 	/* ECC sanity check: warn if it's too weak */
-	if (!nand_ecc_strength_good(chip))
+	if (!nand_ecc_correction_is_enough(nanddev))
 		pr_warn("WARNING: %s: the ECC used on your system (%db/%dB) is too weak compared to the one required by the NAND chip (%db/%dB)\n",
 			mtd->name,
 			chip->base.ecc.ctx.conf.strength,
diff --git a/drivers/mtd/nand/raw/nand_toshiba.c b/drivers/mtd/nand/raw/nand_toshiba.c
index 1180068007a9..6901fbba3750 100644
--- a/drivers/mtd/nand/raw/nand_toshiba.c
+++ b/drivers/mtd/nand/raw/nand_toshiba.c
@@ -6,6 +6,8 @@
  * Author: Boris Brezillon <boris.brezillon@free-electrons.com>
  */
 
+#include <linux/mtd/nand.h>
+
 #include "internals.h"
 
 /* Bit for detecting BENAND */
diff --git a/drivers/mtd/nand/raw/nandsim.c b/drivers/mtd/nand/raw/nandsim.c
index 9c2115fe2111..c7733e5d43a0 100644
--- a/drivers/mtd/nand/raw/nandsim.c
+++ b/drivers/mtd/nand/raw/nandsim.c
@@ -23,7 +23,7 @@
 #include <linux/string.h>
 #include <linux/mtd/mtd.h>
 #include <linux/mtd/rawnand.h>
-#include <linux/mtd/nand_bch.h>
+#include <linux/mtd/nand-ecc-sw-bch.h>
 #include <linux/mtd/partitions.h>
 #include <linux/delay.h>
 #include <linux/list.h>
diff --git a/drivers/mtd/nand/raw/omap2.c b/drivers/mtd/nand/raw/omap2.c
index 512f60780a50..0ef209e1cd87 100644
--- a/drivers/mtd/nand/raw/omap2.c
+++ b/drivers/mtd/nand/raw/omap2.c
@@ -23,7 +23,7 @@
 #include <linux/of.h>
 #include <linux/of_device.h>
 
-#include <linux/mtd/nand_bch.h>
+#include <linux/mtd/nand-ecc-sw-bch.h>
 #include <linux/platform_data/elm.h>
 
 #include <linux/omap-gpmc.h>
diff --git a/drivers/mtd/nand/raw/sunxi_nand.c b/drivers/mtd/nand/raw/sunxi_nand.c
index a5eefdf89660..5fc1378fe94e 100644
--- a/drivers/mtd/nand/raw/sunxi_nand.c
+++ b/drivers/mtd/nand/raw/sunxi_nand.c
@@ -1609,12 +1609,13 @@ static int sunxi_nand_hw_ecc_ctrl_init(struct nand_chip *nand,
 	static const u8 strengths[] = { 16, 24, 28, 32, 40, 48, 56, 60, 64 };
 	struct sunxi_nfc *nfc = to_sunxi_nfc(nand->controller);
 	struct mtd_info *mtd = nand_to_mtd(nand);
+	struct nand_device *nanddev = mtd_to_nanddev(mtd);
 	struct sunxi_nand_hw_ecc *data;
 	int nsectors;
 	int ret;
 	int i;
 
-	if (ecc->options & NAND_ECC_MAXIMIZE) {
+	if (nanddev->ecc.user_conf.flags & NAND_ECC_MAXIMIZE) {
 		int bytes;
 
 		ecc->size = 1024;
diff --git a/drivers/mtd/nand/raw/tegra_nand.c b/drivers/mtd/nand/raw/tegra_nand.c
index 8264bb991d03..d642a1dd2e16 100644
--- a/drivers/mtd/nand/raw/tegra_nand.c
+++ b/drivers/mtd/nand/raw/tegra_nand.c
@@ -840,7 +840,8 @@ static int tegra_nand_get_strength(struct nand_chip *chip, const int *strength,
 				   int strength_len, int bits_per_step,
 				   int oobsize)
 {
-	bool maximize = chip->ecc.options & NAND_ECC_MAXIMIZE;
+	struct nand_device *nanddev = mtd_to_nanddev(nand_to_mtd(chip));
+	bool maximize = nanddev->ecc.user_conf.flags & NAND_ECC_MAXIMIZE;
 	int i;
 
 	/*
diff --git a/include/linux/mtd/nand_bch.h b/include/linux/mtd/nand-ecc-sw-bch.h
similarity index 92%
rename from include/linux/mtd/nand_bch.h
rename to include/linux/mtd/nand-ecc-sw-bch.h
index d5956cc48ba9..1e1ee3af82b1 100644
--- a/include/linux/mtd/nand_bch.h
+++ b/include/linux/mtd/nand-ecc-sw-bch.h
@@ -5,8 +5,8 @@
  * This file is the header for the NAND BCH ECC implementation.
  */
 
-#ifndef __MTD_NAND_BCH_H__
-#define __MTD_NAND_BCH_H__
+#ifndef __MTD_NAND_ECC_SW_BCH_H__
+#define __MTD_NAND_ECC_SW_BCH_H__
 
 struct mtd_info;
 struct nand_chip;
@@ -63,4 +63,4 @@ static inline void nand_bch_free(struct nand_bch_control *nbc) {}
 
 #endif /* CONFIG_MTD_NAND_ECC_SW_BCH */
 
-#endif /* __MTD_NAND_BCH_H__ */
+#endif /* __MTD_NAND_ECC_SW_BCH_H__ */
diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index ce936ffb9f42..1cc6d71c2b45 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -127,6 +127,10 @@ struct nand_page_io_req {
 	int mode;
 };
 
+extern const struct mtd_ooblayout_ops nand_ooblayout_sp_ops;
+extern const struct mtd_ooblayout_ops nand_ooblayout_lp_ops;
+extern const struct mtd_ooblayout_ops nand_ooblayout_lp_hamming_ops;
+
 /**
  * enum nand_ecc_engine_type - NAND ECC engine type
  * @NAND_ECC_ENGINE_TYPE_INVALID: Invalid value
@@ -191,6 +195,9 @@ struct nand_ecc_props {
 
 #define NAND_ECCREQ(str, stp) { .strength = (str), .step_size = (stp) }
 
+/* NAND ECC misc flags */
+#define NAND_ECC_MAXIMIZE BIT(0)
+
 /**
  * struct nand_bbt - bad block table object
  * @cache: in memory BBT cache
@@ -262,12 +269,14 @@ struct nand_ecc_engine {
 	struct nand_ecc_engine_ops *ops;
 };
 
+void nand_ecc_read_user_conf(struct nand_device *nand);
 int nand_ecc_init_ctx(struct nand_device *nand);
 void nand_ecc_cleanup_ctx(struct nand_device *nand);
 int nand_ecc_prepare_io_req(struct nand_device *nand,
 			    struct nand_page_io_req *req);
 int nand_ecc_finish_io_req(struct nand_device *nand,
 			   struct nand_page_io_req *req);
+bool nand_ecc_correction_is_enough(struct nand_device *nand);
 
 /**
  * struct nand_ecc - High-level ECC object
@@ -356,6 +365,17 @@ static inline struct mtd_info *nanddev_to_mtd(struct nand_device *nand)
 	return &nand->mtd;
 }
 
+/**
+ * nanddev_get_flash_node() - Get the device node attached to a NAND device
+ * @nand: NAND device
+ *
+ * Return: the device node linked to @nand.
+ */
+static inline struct device_node *nanddev_get_flash_node(struct nand_device *nand)
+{
+	return mtd_get_of_node(nanddev_to_mtd(nand));
+}
+
 /*
  * nanddev_bits_per_cell() - Get the number of bits per cell
  * @nand: NAND device
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 8f7f1cce3b4b..9d69fa6608ae 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -14,6 +14,7 @@
 #define __LINUX_MTD_RAWNAND_H
 
 #include <linux/mtd/mtd.h>
+#include <linux/mtd/nand.h>
 #include <linux/mtd/flashchip.h>
 #include <linux/mtd/bbm.h>
 #include <linux/mtd/jedec.h>
@@ -80,18 +81,6 @@ struct nand_chip;
 
 #define NAND_DATA_IFACE_CHECK_ONLY	-1
 
-/*
- * Constants for ECC_MODES
- */
-enum nand_ecc_mode {
-	NAND_ECC_INVALID,
-	NAND_ECC_NONE,
-	NAND_ECC_SOFT,
-	NAND_ECC_HW,
-	NAND_ECC_HW_SYNDROME,
-	NAND_ECC_ON_DIE,
-};
-
 /*
  * Constants for Hardware ECC
  */
@@ -109,7 +98,6 @@ enum nand_ecc_mode {
  * pages and you want to rely on the default implementation.
  */
 #define NAND_ECC_GENERIC_ERASED_CHECK	BIT(0)
-#define NAND_ECC_MAXIMIZE		BIT(1)
 
 /*
  * Option constants for bizarre disfunctionality and real
@@ -1159,9 +1147,6 @@ struct nand_chip {
 	int (*unlock_area)(struct nand_chip *chip, loff_t ofs, uint64_t len);
 };
 
-extern const struct mtd_ooblayout_ops nand_ooblayout_sp_ops;
-extern const struct mtd_ooblayout_ops nand_ooblayout_lp_ops;
-
 static inline struct nand_chip *mtd_to_nand(struct mtd_info *mtd)
 {
 	return container_of(mtd, struct nand_chip, base.mtd);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
