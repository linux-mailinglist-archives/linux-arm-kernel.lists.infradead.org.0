Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6CBC1EBE42
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 16:36:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pvNSFqfK6FGuoQMq4xGfnv25SKxW7Iwg77J9gCYXl14=; b=h7sipVpwqU/Yjf
	VdwgpOQwTCQIMdG/SqwjvKCVlMGMCiP3ZPqTqvsUdMpK5vtgm5HmTeVLEbfqWk4sGY5hrpEptVruq
	y5wx4mqFDBUHNH60780RFY/clC7ngg6Tbqkx6puR415X0XtZJMNFNaIgpXcxNMbZsU8bMp7m8q2/J
	PCG/FFnKjQ3B6q/i9kee7EnhMe/JSu1+ZooVScBv77IJsmSQjkHeloWgPVvcz1xkTA8zLOTh8JrOy
	mCbjrl6KPM3YQ196Vq6Okt97nYFHhkhOeru1Zp/cYfDwN42D6vEpnLAzHcdbreQjxdBIHfGquIjB3
	2UMegsEioWDDhY+my+qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg81l-0007Xw-Mg; Tue, 02 Jun 2020 14:36:29 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg7x9-0001Fu-Cr; Tue, 02 Jun 2020 14:31:47 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id BAC77C0003;
 Tue,  2 Jun 2020 14:31:40 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v9 9/9] mtd: rawnand: Move the user input parsing bits to the
 ECC framework
Date: Tue,  2 Jun 2020 16:31:24 +0200
Message-Id: <20200602143124.29553-10-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200602143124.29553-1-miquel.raynal@bootlin.com>
References: <20200602143124.29553-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_073143_818521_41ED57CF 
X-CRM114-Status: GOOD (  20.49  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
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
Cc: Julien Su <juliensu@mxic.com.tw>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Many helpers are generic to all NAND chips, they should not be
restricted to be only used by raw NAND controller drivers. They might
later be used by generic ECC engines and SPI-NAND devices as well so
move them into a more generic place.

To avoid moving all the raw NAND core "history" into the generic NAND
layer, we already moved certain bits into legacy helpers in the raw
NAND core to ensure backward compatibility.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/ecc.c                       | 138 +++++++++++++++++
 drivers/mtd/nand/raw/atmel/nand-controller.c |   3 +-
 drivers/mtd/nand/raw/denali.c                |   3 +
 drivers/mtd/nand/raw/nand_base.c             | 150 ++-----------------
 drivers/mtd/nand/raw/sunxi_nand.c            |   3 +-
 drivers/mtd/nand/raw/tegra_nand.c            |   5 +-
 include/linux/mtd/nand.h                     |   7 +
 include/linux/mtd/rawnand.h                  |   1 -
 8 files changed, 166 insertions(+), 144 deletions(-)

diff --git a/drivers/mtd/nand/ecc.c b/drivers/mtd/nand/ecc.c
index ad08a047dfc5..1ac7aaa6c6c2 100644
--- a/drivers/mtd/nand/ecc.c
+++ b/drivers/mtd/nand/ecc.c
@@ -328,6 +328,144 @@ const struct mtd_ooblayout_ops *nand_get_large_page_hamming_ooblayout(void)
 }
 EXPORT_SYMBOL_GPL(nand_get_large_page_hamming_ooblayout);
 
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
+	struct device_node *dn = nanddev_get_of_node(nand);
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
+	const struct nand_ecc_props *reqs = nanddev_get_ecc_requirements(nand);
+	const struct nand_ecc_props *conf = nanddev_get_ecc_conf(nand);
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
diff --git a/drivers/mtd/nand/raw/atmel/nand-controller.c b/drivers/mtd/nand/raw/atmel/nand-controller.c
index 08df7f23b859..39d8fe15b8ab 100644
--- a/drivers/mtd/nand/raw/atmel/nand-controller.c
+++ b/drivers/mtd/nand/raw/atmel/nand-controller.c
@@ -1046,6 +1046,7 @@ static int atmel_nand_pmecc_init(struct nand_chip *chip)
 	const struct nand_ecc_props *requirements =
 		nanddev_get_ecc_requirements(&chip->base);
 	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct nand_device *nanddev = mtd_to_nanddev(mtd);
 	struct atmel_nand *nand = to_atmel_nand(chip);
 	struct atmel_nand_controller *nc;
 	struct atmel_pmecc_user_req req;
@@ -1070,7 +1071,7 @@ static int atmel_nand_pmecc_init(struct nand_chip *chip)
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
index afc3506468ba..036e88cb52a1 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -4854,17 +4854,6 @@ static int nand_detect(struct nand_chip *chip, struct nand_flash_dev *type)
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
@@ -4916,24 +4905,6 @@ of_get_rawnand_ecc_engine_type_legacy(struct device_node *np)
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
@@ -4949,31 +4920,6 @@ of_get_rawnand_ecc_placement_legacy(struct device_node *np)
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
@@ -4990,48 +4936,10 @@ static enum nand_ecc_algo of_get_rawnand_ecc_algo_legacy(struct device_node *np)
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
@@ -5081,10 +4989,7 @@ static int rawnand_dt_init(struct nand_chip *chip)
 	if (of_get_nand_on_flash_bbt(dn))
 		chip->bbt_options |= NAND_BBT_USE_FLASH;
 
-	if (of_property_read_bool(dn, "nand-ecc-maximize"))
-		chip->ecc.options |= NAND_ECC_MAXIMIZE;
-
-	nand_ecc_read_user_conf(chip);
+	nand_ecc_read_user_conf(nand);
 	rawnand_ecc_read_legacy_user_conf(chip);
 
 	/*
@@ -5214,6 +5119,7 @@ static void nand_scan_ident_cleanup(struct nand_chip *chip)
 static int nand_set_ecc_soft_ops(struct nand_chip *chip)
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct nand_device *nanddev = mtd_to_nanddev(mtd);
 	struct nand_ecc_ctrl *ecc = &chip->ecc;
 
 	if (WARN_ON(ecc->engine_type != NAND_ECC_ENGINE_TYPE_SOFT))
@@ -5289,7 +5195,7 @@ static int nand_set_ecc_soft_ops(struct nand_chip *chip)
 		 * used.
 		 */
 		if (mtd->ooblayout == nand_get_large_page_ooblayout() &&
-		    ecc->options & NAND_ECC_MAXIMIZE) {
+		    nanddev->ecc.user_conf.flags & NAND_ECC_MAXIMIZE) {
 			int steps, bytes;
 
 			/* Always prefer 1k blocks over 512bytes ones */
@@ -5529,11 +5435,12 @@ nand_maximize_ecc(struct nand_chip *chip,
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
@@ -5544,6 +5451,7 @@ int nand_ecc_choose_conf(struct nand_chip *chip,
 			 const struct nand_ecc_caps *caps, int oobavail)
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct nand_device *nanddev = mtd_to_nanddev(mtd);
 
 	if (WARN_ON(oobavail < 0 || oobavail > mtd->oobsize))
 		return -EINVAL;
@@ -5551,7 +5459,7 @@ int nand_ecc_choose_conf(struct nand_chip *chip,
 	if (chip->ecc.size && chip->ecc.strength)
 		return nand_check_ecc_caps(chip, caps, oobavail);
 
-	if (chip->ecc.options & NAND_ECC_MAXIMIZE)
+	if (nanddev->ecc.user_conf.flags & NAND_ECC_MAXIMIZE)
 		return nand_maximize_ecc(chip, caps, oobavail);
 
 	if (!nand_match_ecc_req(chip, caps, oobavail))
@@ -5561,43 +5469,6 @@ int nand_ecc_choose_conf(struct nand_chip *chip,
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
-	const struct nand_ecc_props *requirements =
-		nanddev_get_ecc_requirements(&chip->base);
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
@@ -5653,6 +5524,7 @@ static const struct nand_ops rawnand_ops = {
 static int nand_scan_tail(struct nand_chip *chip)
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct nand_device *nanddev = mtd_to_nanddev(mtd);
 	struct nand_ecc_ctrl *ecc = &chip->ecc;
 	int ret, i;
 
@@ -5880,7 +5752,7 @@ static int nand_scan_tail(struct nand_chip *chip)
 	mtd->oobavail = ret;
 
 	/* ECC sanity check: warn if it's too weak */
-	if (!nand_ecc_strength_good(chip))
+	if (!nand_ecc_correction_is_enough(nanddev))
 		pr_warn("WARNING: %s: the ECC used on your system (%db/%dB) is too weak compared to the one required by the NAND chip (%db/%dB)\n",
 			mtd->name,
 			nanddev_get_ecc_conf(&chip->base)->strength,
diff --git a/drivers/mtd/nand/raw/sunxi_nand.c b/drivers/mtd/nand/raw/sunxi_nand.c
index 490ba485e939..f863fabb8610 100644
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
index fecdb7e8f9e8..1267e7529ca2 100644
--- a/drivers/mtd/nand/raw/tegra_nand.c
+++ b/drivers/mtd/nand/raw/tegra_nand.c
@@ -840,9 +840,10 @@ static int tegra_nand_get_strength(struct nand_chip *chip, const int *strength,
 				   int strength_len, int bits_per_step,
 				   int oobsize)
 {
+	struct nand_device *base = mtd_to_nanddev(nand_to_mtd(chip));
 	const struct nand_ecc_props *requirements =
-		nanddev_get_ecc_requirements(&chip->base);
-	bool maximize = chip->ecc.options & NAND_ECC_MAXIMIZE;
+		nanddev_get_ecc_requirements(base);
+	bool maximize = base->ecc.user_conf.flags & NAND_ECC_MAXIMIZE;
 	int i;
 
 	/*
diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index 817969a8a230..343bb9bcd56c 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -182,6 +182,7 @@ enum nand_ecc_algo {
  * @algo: ECC algorithm (if relevant)
  * @strength: ECC strength
  * @step_size: Number of bytes per step
+ * @flags: Misc properties
  */
 struct nand_ecc_props {
 	enum nand_ecc_engine_type engine_type;
@@ -189,10 +190,14 @@ struct nand_ecc_props {
 	enum nand_ecc_algo algo;
 	unsigned int strength;
 	unsigned int step_size;
+	unsigned int flags;
 };
 
 #define NAND_ECCREQ(str, stp) { .strength = (str), .step_size = (stp) }
 
+/* NAND ECC misc flags */
+#define NAND_ECC_MAXIMIZE BIT(0)
+
 /**
  * struct nand_bbt - bad block table object
  * @cache: in memory BBT cache
@@ -264,12 +269,14 @@ struct nand_ecc_engine {
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
  * struct nand_ecc - Information relative to the ECC
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 66f69a1d27a5..9d69fa6608ae 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -98,7 +98,6 @@ struct nand_chip;
  * pages and you want to rely on the default implementation.
  */
 #define NAND_ECC_GENERIC_ERASED_CHECK	BIT(0)
-#define NAND_ECC_MAXIMIZE		BIT(1)
 
 /*
  * Option constants for bizarre disfunctionality and real
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
