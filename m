Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B541E71B0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 02:37:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XKDL/b90Esi2M7Q2hXIp9utnT576bvam5RRZOFSggKA=; b=Da5Vqw5IhbsnSy
	jfURdt7OetVQajbjHjXKSPjcrXT5I0+Fc+Tozym0NkcERN/ZwDuVYeYHgOzatWeUnyCOI/f90A/+x
	x3izbJgv7OVMlEthOzpXEwisrTlGuarQk7sYp3WzZ9FS6F9SfZNiav3hBL4DRFiNZSFuue67xZd6l
	W401KlKw9T13dmjv6vCUglDZIGOvMPTFkMc7FDYtK67gTWnROQbbs8XTE/W97ikAIuJGStSpa9yAM
	VHdhhHBjfFvhsu2+hb6rJgdM0/ElzlehGTt/gkFsIrSB72cAEh58yx2ARE7WsOcc1nbXQ7W4fPfj7
	twIF2IY6DvWkTt5cC6Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeT1f-0004HM-R9; Fri, 29 May 2020 00:37:31 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeSqV-0006LF-VE; Fri, 29 May 2020 00:26:08 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id A0197200006;
 Fri, 29 May 2020 00:25:56 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
Subject: [PATCH v7 20/20] mtd: rawnand: Move the user input parsing bits to
 the ECC framework
Date: Fri, 29 May 2020 02:25:17 +0200
Message-Id: <20200529002517.3546-21-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200529002517.3546-1-miquel.raynal@bootlin.com>
References: <20200529002517.3546-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_172600_320968_AB6BDFCF 
X-CRM114-Status: GOOD (  20.59  )
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
 drivers/mtd/nand/raw/nand_base.c             | 149 ++-----------------
 drivers/mtd/nand/raw/sunxi_nand.c            |   3 +-
 drivers/mtd/nand/raw/tegra_nand.c            |   3 +-
 include/linux/mtd/nand.h                     |   7 +
 include/linux/mtd/rawnand.h                  |   1 -
 8 files changed, 165 insertions(+), 142 deletions(-)

diff --git a/drivers/mtd/nand/ecc.c b/drivers/mtd/nand/ecc.c
index b465a296c786..d5004f6b1d33 100644
--- a/drivers/mtd/nand/ecc.c
+++ b/drivers/mtd/nand/ecc.c
@@ -328,6 +328,144 @@ const struct mtd_ooblayout_ops *nand_get_large_page_hamming_layout(void)
 }
 EXPORT_SYMBOL_GPL(nand_get_large_page_hamming_layout);
 
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
diff --git a/drivers/mtd/nand/raw/atmel/nand-controller.c b/drivers/mtd/nand/raw/atmel/nand-controller.c
index ab1c6d058e10..f464a6dd4bca 100644
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
index b9f2c26b87e1..7765dbb9f285 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -4851,17 +4851,6 @@ static int nand_detect(struct nand_chip *chip, struct nand_flash_dev *type)
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
@@ -4913,24 +4902,6 @@ of_get_rawnand_ecc_engine_type_legacy(struct device_node *np)
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
@@ -4946,31 +4917,6 @@ of_get_rawnand_ecc_placement_legacy(struct device_node *np)
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
@@ -4987,48 +4933,10 @@ static enum nand_ecc_algo of_get_rawnand_ecc_algo_legacy(struct device_node *np)
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
@@ -5078,10 +4986,7 @@ static int rawnand_dt_init(struct nand_chip *chip)
 	if (of_get_nand_on_flash_bbt(dn))
 		chip->bbt_options |= NAND_BBT_USE_FLASH;
 
-	if (of_property_read_bool(dn, "nand-ecc-maximize"))
-		chip->ecc.options |= NAND_ECC_MAXIMIZE;
-
-	nand_ecc_read_user_conf(chip);
+	nand_ecc_read_user_conf(nand);
 	rawnand_ecc_read_legacy_user_conf(chip);
 
 	/*
@@ -5211,6 +5116,7 @@ static void nand_scan_ident_cleanup(struct nand_chip *chip)
 static int nand_set_ecc_soft_ops(struct nand_chip *chip)
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct nand_device *nanddev = mtd_to_nanddev(mtd);
 	struct nand_ecc_ctrl *ecc = &chip->ecc;
 
 	if (WARN_ON(ecc->engine_type != NAND_ECC_ENGINE_TYPE_SOFT))
@@ -5286,7 +5192,7 @@ static int nand_set_ecc_soft_ops(struct nand_chip *chip)
 		 * used.
 		 */
 		if (mtd->ooblayout == nand_get_large_page_layout() &&
-		    ecc->options & NAND_ECC_MAXIMIZE) {
+		    nanddev->ecc.user_conf.flags & NAND_ECC_MAXIMIZE) {
 			int steps, bytes;
 
 			/* Always prefer 1k blocks over 512bytes ones */
@@ -5524,11 +5430,12 @@ nand_maximize_ecc(struct nand_chip *chip,
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
@@ -5539,6 +5446,7 @@ int nand_ecc_choose_conf(struct nand_chip *chip,
 			 const struct nand_ecc_caps *caps, int oobavail)
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct nand_device *nanddev = mtd_to_nanddev(mtd);
 
 	if (WARN_ON(oobavail < 0 || oobavail > mtd->oobsize))
 		return -EINVAL;
@@ -5546,7 +5454,7 @@ int nand_ecc_choose_conf(struct nand_chip *chip,
 	if (chip->ecc.size && chip->ecc.strength)
 		return nand_check_ecc_caps(chip, caps, oobavail);
 
-	if (chip->ecc.options & NAND_ECC_MAXIMIZE)
+	if (nanddev->ecc.user_conf.flags & NAND_ECC_MAXIMIZE)
 		return nand_maximize_ecc(chip, caps, oobavail);
 
 	if (!nand_match_ecc_req(chip, caps, oobavail))
@@ -5556,42 +5464,6 @@ int nand_ecc_choose_conf(struct nand_chip *chip,
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
@@ -5647,6 +5519,7 @@ static const struct nand_ops rawnand_ops = {
 static int nand_scan_tail(struct nand_chip *chip)
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct nand_device *nanddev = mtd_to_nanddev(mtd);
 	struct nand_ecc_ctrl *ecc = &chip->ecc;
 	int ret, i;
 
@@ -5874,7 +5747,7 @@ static int nand_scan_tail(struct nand_chip *chip)
 	mtd->oobavail = ret;
 
 	/* ECC sanity check: warn if it's too weak */
-	if (!nand_ecc_strength_good(chip))
+	if (!nand_ecc_correction_is_enough(nanddev))
 		pr_warn("WARNING: %s: the ECC used on your system (%db/%dB) is too weak compared to the one required by the NAND chip (%db/%dB)\n",
 			mtd->name,
 			chip->base.ecc.ctx.conf.strength,
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
diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index 6039e6dcccde..2cf5cd4d0997 100644
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
