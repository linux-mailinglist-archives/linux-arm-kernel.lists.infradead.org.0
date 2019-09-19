Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC979B81A8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 21:47:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=veYUMm/X7Mu3dKo1tdB4lAqKRbh1dwsVanWNXCrpTDE=; b=ke+1rsbrWpDpPS
	Qgjs1gAjz1BRU5dg33xSYVRll/LuXAVqgZwKOS48Ofr+MN8fte5tv08R5JJirtNEG9KNxJicuqqWr
	6CD1N9fxLu4aqxgFHjMzVFx6pTwcDTWQXch6ZdBV0U7ic2ngoU+slluVvXGnrw8V3AlMuEDqvP8D5
	OMonWozVX4W5wdgqpEGp3JZ8TIzBE/8dXSBNXf4EPBeTeUvBX2BOT63RYUjPhDe4dTCSMavQ49Qz8
	R7//JmB5IoFzRQb0ozHyBsnGmReyLqmidbP+c/t9PTwz9495dHqhxNZwE/xlDwxhFYz7+CO4gPl40
	RnYxUTxfLzX5KGaRpGBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB2OK-0006fc-F0; Thu, 19 Sep 2019 19:47:00 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB2AE-0002Ju-Aw; Thu, 19 Sep 2019 19:32:29 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 8407E240004;
 Thu, 19 Sep 2019 19:32:22 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH v3 18/40] mtd: nand: Move ECC specific functions to the ECC
 core
Date: Thu, 19 Sep 2019 21:31:18 +0200
Message-Id: <20190919193141.7865-19-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190919193141.7865-1-miquel.raynal@bootlin.com>
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_123226_929777_3C8995C3 
X-CRM114-Status: GOOD (  19.41  )
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

Move generic code that will benefit to be shared out of the raw NAND
subsystem.

While at it, remove the maximize option from the NAND chip structure
and move it into a user configuration flag.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/Kconfig                      |  11 +
 drivers/mtd/nand/Makefile                     |   1 +
 .../mtd/nand/{raw/nand_bch.c => ecc-sw-bch.c} |   2 +-
 drivers/mtd/nand/ecc.c                        | 186 ++++++++++++++++
 drivers/mtd/nand/raw/Kconfig                  |  10 -
 drivers/mtd/nand/raw/Makefile                 |   1 -
 drivers/mtd/nand/raw/atmel/nand-controller.c  |   3 +-
 drivers/mtd/nand/raw/denali.c                 |   3 +
 drivers/mtd/nand/raw/nand_base.c              | 205 +++---------------
 drivers/mtd/nand/raw/nandsim.c                |   2 +-
 drivers/mtd/nand/raw/omap2.c                  |   2 +-
 drivers/mtd/nand/raw/sunxi_nand.c             |   3 +-
 drivers/mtd/nand/raw/tegra_nand.c             |   3 +-
 .../mtd/{nand_bch.h => nand-ecc-sw-bch.h}     |   6 +-
 include/linux/mtd/nand.h                      |  51 +++++
 include/linux/mtd/rawnand.h                   |  37 +---
 16 files changed, 292 insertions(+), 234 deletions(-)
 rename drivers/mtd/nand/{raw/nand_bch.c => ecc-sw-bch.c} (99%)
 rename include/linux/mtd/{nand_bch.h => nand-ecc-sw-bch.h} (92%)

diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index a4478ffa279d..d881b8a40361 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -14,6 +14,17 @@ menu "ECC engine support"
 config MTD_NAND_ECC
 	bool
 
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
index 17527310c3a1..3e1663d65a04 100644
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
index f52ffce8e684..8e7859355a10 100644
--- a/drivers/mtd/nand/ecc.c
+++ b/drivers/mtd/nand/ecc.c
@@ -294,6 +294,192 @@ const struct mtd_ooblayout_ops nand_ooblayout_lp_hamming_ops = {
 };
 EXPORT_SYMBOL_GPL(nand_ooblayout_lp_hamming_ops);
 
+static const char * const nand_ecc_engine_providers[] = {
+	[NAND_NO_ECC_ENGINE] = "none",
+	[NAND_SOFT_ECC_ENGINE] = "soft",
+	[NAND_HW_ECC_ENGINE] = "hw",
+	[NAND_ON_DIE_ECC_ENGINE] = "on-die",
+};
+
+static const char * const nand_ecc_engine_oob_placement[] = {
+	[NAND_ECC_SYNDROME_OOB_PLACEMENT] = "hw_syndrome",
+	[NAND_ECC_OOB_FIRST_PLACEMENT] = "hw_oob_first",
+};
+
+static int of_get_nand_ecc_mode(struct device_node *np)
+{
+	const char *pm;
+	int err, i;
+
+	err = of_property_read_string(np, "nand-ecc-mode", &pm);
+	if (err < 0)
+		return err;
+
+	for (i = NAND_NO_ECC_ENGINE;
+	     i < ARRAY_SIZE(nand_ecc_engine_providers); i++)
+		if (!strcasecmp(pm, nand_ecc_engine_providers[i]))
+			return i;
+
+	for (i = NAND_ECC_SYNDROME_OOB_PLACEMENT;
+	     i < ARRAY_SIZE(nand_ecc_engine_oob_placement); i++)
+		if (!strcasecmp(pm, nand_ecc_engine_oob_placement[i]))
+			return NAND_HW_ECC_ENGINE;
+
+	/*
+	 * For backward compatibility we support few obsoleted values that don't
+	 * have their mappings into the nand_ecc_engine_providers enum anymore
+	 * (they were merged with other enums).
+	 */
+	if (!strcasecmp(pm, "soft_bch"))
+		return NAND_SOFT_ECC_ENGINE;
+
+	return -ENODEV;
+}
+
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
+static const char * const nand_ecc_algos[] = {
+	[NAND_ECC_HAMMING]	= "hamming",
+	[NAND_ECC_BCH]		= "bch",
+	[NAND_ECC_RS]		= "rs",
+};
+
+static int of_get_nand_ecc_algo(struct device_node *np)
+{
+	const char *pm;
+	int err, i;
+
+	err = of_property_read_string(np, "nand-ecc-algo", &pm);
+	if (!err) {
+		for (i = NAND_ECC_HAMMING; i < ARRAY_SIZE(nand_ecc_algos); i++)
+			if (!strcasecmp(pm, nand_ecc_algos[i]))
+				return i;
+		return -ENODEV;
+	}
+
+	/*
+	 * For backward compatibility we also read "nand-ecc-mode" checking
+	 * for some obsoleted values that were specifying ECC algorithm.
+	 */
+	err = of_property_read_string(np, "nand-ecc-mode", &pm);
+	if (err < 0)
+		return err;
+
+	if (!strcasecmp(pm, "soft"))
+		return NAND_ECC_HAMMING;
+	else if (!strcasecmp(pm, "soft_bch"))
+		return NAND_ECC_BCH;
+
+	return -ENODEV;
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
+	int provider, placement, algo, strength, size;
+
+	provider = of_get_nand_ecc_mode(dn);
+	if (provider >= 0)
+		nand->ecc.user_conf.provider = provider;
+
+	placement = of_get_nand_ecc_oob_placement(dn);
+	if (placement >= 0)
+		nand->ecc.user_conf.placement = placement;
+
+	algo = of_get_nand_ecc_algo(dn);
+	if (algo >= 0)
+		nand->ecc.user_conf.algo = algo;
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
index ac478bdb7ff2..9f0d65d09053 100644
--- a/drivers/mtd/nand/raw/Kconfig
+++ b/drivers/mtd/nand/raw/Kconfig
@@ -22,16 +22,6 @@ menuconfig MTD_RAW_NAND
 
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
index efaf5cd25edc..709d305dc07c 100644
--- a/drivers/mtd/nand/raw/Makefile
+++ b/drivers/mtd/nand/raw/Makefile
@@ -2,7 +2,6 @@
 
 obj-$(CONFIG_MTD_RAW_NAND)		+= nand.o
 obj-$(CONFIG_MTD_NAND_ECC_SW_HAMMING)	+= nand_ecc.o
-nand-$(CONFIG_MTD_NAND_ECC_SW_BCH)	+= nand_bch.o
 obj-$(CONFIG_MTD_SM_COMMON) 		+= sm_common.o
 
 obj-$(CONFIG_MTD_NAND_CAFE)		+= cafe_nand.o
diff --git a/drivers/mtd/nand/raw/atmel/nand-controller.c b/drivers/mtd/nand/raw/atmel/nand-controller.c
index 0a2c726a99eb..de2531d5df64 100644
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
index c47967c1ed90..6ae4421dbfe4 100644
--- a/drivers/mtd/nand/raw/denali.c
+++ b/drivers/mtd/nand/raw/denali.c
@@ -1159,6 +1159,7 @@ int denali_chip_init(struct denali_controller *denali,
 {
 	struct nand_chip *chip = &dchip->chip;
 	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct nand_device *nanddev = mtd_to_nanddev(mtd);
 	struct denali_chip *dchip2;
 	int i, j, ret;
 
@@ -1226,6 +1227,8 @@ int denali_chip_init(struct denali_controller *denali,
 
 	mtd_set_ooblayout(mtd, &denali_ooblayout_ops);
 
+	nanddev->ecc.user_conf.flags |= NAND_ECC_MAXIMIZE;
+
 	ret = nand_scan(chip, dchip->nsels);
 	if (ret)
 		return ret;
diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index e9ee09451685..8d1728a102ae 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -36,7 +36,7 @@
 #include <linux/mtd/mtd.h>
 #include <linux/mtd/nand.h>
 #include <linux/mtd/nand_ecc.h>
-#include <linux/mtd/nand_bch.h>
+#include <linux/mtd/nand-ecc-sw-bch.h>
 #include <linux/interrupt.h>
 #include <linux/bitops.h>
 #include <linux/io.h>
@@ -4674,118 +4674,6 @@ static int nand_detect(struct nand_chip *chip, struct nand_flash_dev *type)
 	return ret;
 }
 
-static const char * const nand_ecc_engine_providers[] = {
-	[NAND_NO_ECC_ENGINE] = "none",
-	[NAND_SOFT_ECC_ENGINE] = "soft",
-	[NAND_HW_ECC_ENGINE] = "hw",
-	[NAND_ON_DIE_ECC_ENGINE] = "on-die",
-};
-
-static const char * const nand_ecc_engine_oob_placement[] = {
-	[NAND_ECC_SYNDROME_OOB_PLACEMENT] = "hw_syndrome",
-	[NAND_ECC_OOB_FIRST_PLACEMENT] = "hw_oob_first",
-};
-
-static int of_get_nand_ecc_mode(struct device_node *np)
-{
-	const char *pm;
-	int err, i;
-
-	err = of_property_read_string(np, "nand-ecc-mode", &pm);
-	if (err < 0)
-		return err;
-
-	for (i = NAND_NO_ECC_ENGINE;
-	     i < ARRAY_SIZE(nand_ecc_engine_providers); i++)
-		if (!strcasecmp(pm, nand_ecc_engine_providers[i]))
-			return i;
-
-	for (i = NAND_ECC_SYNDROME_OOB_PLACEMENT;
-	     i < ARRAY_SIZE(nand_ecc_engine_oob_placement); i++)
-		if (!strcasecmp(pm, nand_ecc_engine_oob_placement[i]))
-			return NAND_HW_ECC_ENGINE;
-
-	/*
-	 * For backward compatibility we support few obsoleted values that don't
-	 * have their mappings into the nand_ecc_engine_providers enum anymore
-	 * (they were merged with other enums).
-	 */
-	if (!strcasecmp(pm, "soft_bch"))
-		return NAND_SOFT_ECC_ENGINE;
-
-	return -ENODEV;
-}
-
-static int of_get_nand_ecc_oob_placement(struct device_node *np)
-{
-	const char *pm;
-	int err, i;
-
-	err = of_property_read_string(np, "nand-ecc-mode", &pm);
-	if (err < 0)
-		return err;
-
-	for (i = NAND_ECC_SYNDROME_OOB_PLACEMENT;
-	     i < ARRAY_SIZE(nand_ecc_engine_oob_placement); i++)
-		if (!strcasecmp(pm, nand_ecc_engine_providers[i]))
-			return i;
-
-	return NAND_ECC_DEFAULT_OOB_PLACEMENT;
-}
-
-static const char * const nand_ecc_algos[] = {
-	[NAND_ECC_HAMMING]	= "hamming",
-	[NAND_ECC_BCH]		= "bch",
-	[NAND_ECC_RS]		= "rs",
-};
-
-static int of_get_nand_ecc_algo(struct device_node *np)
-{
-	const char *pm;
-	int err, i;
-
-	err = of_property_read_string(np, "nand-ecc-algo", &pm);
-	if (!err) {
-		for (i = NAND_ECC_HAMMING; i < ARRAY_SIZE(nand_ecc_algos); i++)
-			if (!strcasecmp(pm, nand_ecc_algos[i]))
-				return i;
-		return -ENODEV;
-	}
-
-	/*
-	 * For backward compatibility we also read "nand-ecc-mode" checking
-	 * for some obsoleted values that were specifying ECC algorithm.
-	 */
-	err = of_property_read_string(np, "nand-ecc-mode", &pm);
-	if (err < 0)
-		return err;
-
-	if (!strcasecmp(pm, "soft"))
-		return NAND_ECC_HAMMING;
-	else if (!strcasecmp(pm, "soft_bch"))
-		return NAND_ECC_BCH;
-
-	return -ENODEV;
-}
-
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
 static int of_get_nand_bus_width(struct device_node *np)
 {
 	u32 val;
@@ -4807,10 +4695,10 @@ static bool of_get_nand_on_flash_bbt(struct device_node *np)
 	return of_property_read_bool(np, "nand-on-flash-bbt");
 }
 
-static int nand_dt_init(struct nand_chip *chip)
+static int rawnand_dt_init(struct nand_chip *chip)
 {
 	struct device_node *dn = nand_get_flash_node(chip);
-	int ecc_mode, ecc_oob_placement, ecc_algo, ecc_strength, ecc_step;
+	struct nand_device *nand = mtd_to_nanddev(nand_to_mtd(chip));
 
 	if (!dn)
 		return 0;
@@ -4824,29 +4712,22 @@ static int nand_dt_init(struct nand_chip *chip)
 	if (of_get_nand_on_flash_bbt(dn))
 		chip->bbt_options |= NAND_BBT_USE_FLASH;
 
-	ecc_mode = of_get_nand_ecc_mode(dn);
-	ecc_oob_placement = of_get_nand_ecc_oob_placement(dn);
-	ecc_algo = of_get_nand_ecc_algo(dn);
-	ecc_strength = of_get_nand_ecc_strength(dn);
-	ecc_step = of_get_nand_ecc_step_size(dn);
+	nand_ecc_read_user_conf(nand);
 
-	if (ecc_mode >= 0)
-		chip->ecc.mode = ecc_mode;
+	/*
+	 * Raw NAND default provider is "hardware" (can be changed by the
+	 * drivers in the ->attach() phase).
+	 */
+	nand->ecc.defaults.provider = NAND_HW_ECC_ENGINE;
+	if (!nand->ecc.user_conf.provider)
+		nand->ecc.user_conf.provider = nand->ecc.defaults.provider;
 
-	if (ecc_oob_placement >= 0)
-		chip->ecc.placement = ecc_oob_placement;
-
-	if (ecc_algo >= 0)
-		chip->ecc.algo = ecc_algo;
-
-	if (ecc_strength >= 0)
-		chip->ecc.strength = ecc_strength;
-
-	if (ecc_step > 0)
-		chip->ecc.size = ecc_step;
-
-	if (of_property_read_bool(dn, "nand-ecc-maximize"))
-		chip->ecc.options |= NAND_ECC_MAXIMIZE;
+	/* Legacy parameters */
+	chip->ecc.mode = nand->ecc.user_conf.provider;
+	chip->ecc.placement = nand->ecc.user_conf.placement;
+	chip->ecc.algo = nand->ecc.user_conf.algo;
+	chip->ecc.strength = nand->ecc.user_conf.strength;
+	chip->ecc.size = nand->ecc.user_conf.step_size;
 
 	return 0;
 }
@@ -4884,7 +4765,7 @@ static int nand_scan_ident(struct nand_chip *chip, unsigned int maxchips,
 	/* Enforce the right timings for reset/detection */
 	onfi_fill_data_interface(chip, NAND_SDR_IFACE, 0);
 
-	ret = nand_dt_init(chip);
+	ret = rawnand_dt_init(chip);
 	if (ret)
 		return ret;
 
@@ -4954,6 +4835,7 @@ static void nand_scan_ident_cleanup(struct nand_chip *chip)
 static int nand_set_ecc_soft_ops(struct nand_chip *chip)
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct nand_device *nanddev = mtd_to_nanddev(mtd);
 	struct nand_ecc_ctrl *ecc = &chip->ecc;
 
 	if (WARN_ON(ecc->mode != NAND_SOFT_ECC_ENGINE))
@@ -5025,7 +4907,7 @@ static int nand_set_ecc_soft_ops(struct nand_chip *chip)
 		 * used.
 		 */
 		if (mtd->ooblayout == &nand_ooblayout_lp_ops &&
-		    ecc->options & NAND_ECC_MAXIMIZE) {
+		    nanddev->ecc.user_conf.flags & NAND_ECC_MAXIMIZE) {
 			int steps, bytes;
 
 			/* Always prefer 1k blocks over 512bytes ones */
@@ -5263,11 +5145,12 @@ nand_maximize_ecc(struct nand_chip *chip,
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
@@ -5278,6 +5161,7 @@ int nand_ecc_choose_conf(struct nand_chip *chip,
 			 const struct nand_ecc_caps *caps, int oobavail)
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct nand_device *nanddev = mtd_to_nanddev(mtd);
 
 	if (WARN_ON(oobavail < 0 || oobavail > mtd->oobsize))
 		return -EINVAL;
@@ -5285,7 +5169,7 @@ int nand_ecc_choose_conf(struct nand_chip *chip,
 	if (chip->ecc.size && chip->ecc.strength)
 		return nand_check_ecc_caps(chip, caps, oobavail);
 
-	if (chip->ecc.options & NAND_ECC_MAXIMIZE)
+	if (nanddev->ecc.user_conf.flags & NAND_ECC_MAXIMIZE)
 		return nand_maximize_ecc(chip, caps, oobavail);
 
 	if (!nand_match_ecc_req(chip, caps, oobavail))
@@ -5295,42 +5179,6 @@ int nand_ecc_choose_conf(struct nand_chip *chip,
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
@@ -5386,6 +5234,7 @@ static const struct nand_ops rawnand_ops = {
 static int nand_scan_tail(struct nand_chip *chip)
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct nand_device *nanddev = mtd_to_nanddev(mtd);
 	struct nand_ecc_ctrl *ecc = &chip->ecc;
 	int ret, i;
 
@@ -5616,7 +5465,7 @@ static int nand_scan_tail(struct nand_chip *chip)
 	mtd->oobavail = ret;
 
 	/* ECC sanity check: warn if it's too weak */
-	if (!nand_ecc_strength_good(chip))
+	if (!nand_ecc_correction_is_enough(nanddev))
 		pr_warn("WARNING: %s: the ECC used on your system is too weak compared to the one required by the NAND chip\n",
 			mtd->name);
 
diff --git a/drivers/mtd/nand/raw/nandsim.c b/drivers/mtd/nand/raw/nandsim.c
index 72c7395e2671..6afeef53ba88 100644
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
index 1a7d17f46ca3..591617af5ffa 100644
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
index 6108262b1851..ae67b48fd4a6 100644
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
index bb347d92bd5d..c80b10683afd 100644
--- a/drivers/mtd/nand/raw/tegra_nand.c
+++ b/drivers/mtd/nand/raw/tegra_nand.c
@@ -838,7 +838,8 @@ static int tegra_nand_get_strength(struct nand_chip *chip, const int *strength,
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
index faa1e6a726eb..9d7b62933cc1 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -131,6 +131,41 @@ extern const struct mtd_ooblayout_ops nand_ooblayout_sp_ops;
 extern const struct mtd_ooblayout_ops nand_ooblayout_lp_ops;
 extern const struct mtd_ooblayout_ops nand_ooblayout_lp_hamming_ops;
 
+/**
+ * enum nand_ecc_engine_type - NAND ECC engine type/provider
+ * @NAND_INVALID_ECC_ENGINE: Invalid value
+ * @NAND_NO_ECC_ENGINE: No ECC correction
+ * @NAND_SOFT_ECC_ENGINE: Software ECC correction
+ * @NAND_HW_ECC_ENGINE: Hardware (controller side) ECC correction
+ * @NAND_ON_DIE_ECC_ENGINE: Hardware (chip side) ECC correction
+ */
+enum nand_ecc_engine_type {
+	NAND_INVALID_ECC_ENGINE,
+	NAND_NO_ECC_ENGINE,
+	NAND_SOFT_ECC_ENGINE,
+	NAND_HW_ECC_ENGINE,
+	NAND_ON_DIE_ECC_ENGINE,
+};
+
+/**
+ * enum nand_ecc_engine_oob_placement - NAND ECC engine OOB placement
+ * @NAND_ECC_DEFAULT_OOB_PLACEMENT: Standard layout, or not specified
+ * @NAND_ECC_SYNDROME_OOB_PLACEMENT: Syndrome layout (interlaced)
+ * @NAND_ECC_OOB_FIRST_PLACEMENT: Free OOB bytes first
+ */
+enum nand_ecc_engine_oob_placement {
+	NAND_ECC_DEFAULT_OOB_PLACEMENT,
+	NAND_ECC_SYNDROME_OOB_PLACEMENT,
+	NAND_ECC_OOB_FIRST_PLACEMENT,
+};
+
+enum nand_ecc_algo {
+	NAND_ECC_UNKNOWN,
+	NAND_ECC_HAMMING,
+	NAND_ECC_BCH,
+	NAND_ECC_RS,
+};
+
 /**
  * struct nand_ecc_props - NAND ECC properties
  * @provider: ECC engine provider type
@@ -151,6 +186,9 @@ struct nand_ecc_props {
 
 #define NAND_ECCREQ(str, stp) { .strength = (str), .step_size = (stp) }
 
+/* NAND ECC misc flags */
+#define NAND_ECC_MAXIMIZE BIT(0)
+
 /**
  * struct nand_bbt - bad block table object
  * @cache: in memory BBT cache
@@ -224,12 +262,14 @@ struct nand_ecc_engine {
 	struct nand_ecc_engine_ops *ops;
 };
 
+void nand_ecc_read_user_conf(struct nand_device *nand);
 int nand_ecc_init_ctx(struct nand_device *nand);
 void nand_ecc_cleanup_ctx(struct nand_device *nand);
 int nand_ecc_prepare_io_req(struct nand_device *nand,
 			    struct nand_page_io_req *req, void *oobbuf);
 int nand_ecc_finish_io_req(struct nand_device *nand,
 			   struct nand_page_io_req *req, void *oobbuf);
+bool nand_ecc_correction_is_enough(struct nand_device *nand);
 
 /**
  * struct nand_ecc - High-level ECC object
@@ -318,6 +358,17 @@ static inline struct mtd_info *nanddev_to_mtd(struct nand_device *nand)
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
index 818679a79743..7c8a2c4da8f6 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -14,6 +14,7 @@
 #define __LINUX_MTD_RAWNAND_H
 
 #include <linux/mtd/mtd.h>
+#include <linux/mtd/nand.h>
 #include <linux/mtd/flashchip.h>
 #include <linux/mtd/bbm.h>
 #include <linux/mtd/jedec.h>
@@ -80,41 +81,6 @@ struct nand_chip;
 
 #define NAND_DATA_IFACE_CHECK_ONLY	-1
 
-/**
- * enum nand_ecc_engine_type - NAND ECC engine type/provider
- * @NAND_INVALID_ECC_ENGINE: Invalid value
- * @NAND_NO_ECC_ENGINE: No ECC correction
- * @NAND_SOFT_ECC_ENGINE: Software ECC correction
- * @NAND_HW_ECC_ENGINE: Hardware (controller side) ECC correction
- * @NAND_ON_DIE_ECC_ENGINE: Hardware (chip side) ECC correction
- */
-enum nand_ecc_engine_type {
-	NAND_INVALID_ECC_ENGINE,
-	NAND_NO_ECC_ENGINE,
-	NAND_SOFT_ECC_ENGINE,
-	NAND_HW_ECC_ENGINE,
-	NAND_ON_DIE_ECC_ENGINE,
-};
-
-/**
- * enum nand_ecc_engine_oob_placement - NAND ECC engine OOB placement
- * @NAND_ECC_DEFAULT_OOB_PLACEMENT: Standard layout, or not specified
- * @NAND_ECC_SYNDROME_OOB_PLACEMENT: Syndrome layout (interlaced)
- * @NAND_ECC_OOB_FIRST_PLACEMENT: Free OOB bytes first
- */
-enum nand_ecc_engine_oob_placement {
-	NAND_ECC_DEFAULT_OOB_PLACEMENT,
-	NAND_ECC_SYNDROME_OOB_PLACEMENT,
-	NAND_ECC_OOB_FIRST_PLACEMENT,
-};
-
-enum nand_ecc_algo {
-	NAND_ECC_UNKNOWN,
-	NAND_ECC_HAMMING,
-	NAND_ECC_BCH,
-	NAND_ECC_RS,
-};
-
 /*
  * Constants for Hardware ECC
  */
@@ -132,7 +98,6 @@ enum nand_ecc_algo {
  * pages and you want to rely on the default implementation.
  */
 #define NAND_ECC_GENERIC_ERASED_CHECK	BIT(0)
-#define NAND_ECC_MAXIMIZE		BIT(1)
 
 /*
  * When using software implementation of Hamming, we can specify which byte
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
