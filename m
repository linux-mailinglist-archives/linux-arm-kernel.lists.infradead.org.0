Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E2FB81A2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 21:45:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RJR3rqLqK/4jQguuHlKgyG5Ub/cdaaSJqe6ccIzzpZI=; b=jW6kkv2FbVyX9n
	mpHRM0auwkuUWV6slSXdsaRwzxhi29LiD3X/n+zIEaUGpk4EjtKUpek3Ww+Q6ex0aPUCoI0xcMDpw
	+yxNxl5l6X/B0e9FYgsa7e4EMvBsHv3RzveNpu8pLDAoS/XngNvamQKbpb8B7n9Skshgldy8Uy+GE
	ZtUKiLBdwRVZFdhv4Sz02fSPcZDfd+iNnIZrDD9ydPHb44F6ZDt4zXKqLx5LAh+EWRxEXxm+A0MOL
	NrgX6bl7IrUxmSWhfZLme3VIVjBPVgZUFftG/kQSWo0Ls1zqEnLHRQGQHT9Y3onge90brznWSYIJW
	WslhIdgJ4L9tGEb8G2MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB2Mw-0005EJ-Tu; Thu, 19 Sep 2019 19:45:35 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB2A8-0002DN-89; Thu, 19 Sep 2019 19:32:23 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 98910240002;
 Thu, 19 Sep 2019 19:32:16 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH v3 15/40] mtd: nand: Convert the generic NAND layer to the
 generic ECC framework
Date: Thu, 19 Sep 2019 21:31:15 +0200
Message-Id: <20190919193141.7865-16-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190919193141.7865-1-miquel.raynal@bootlin.com>
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_123220_663503_96DD2552 
X-CRM114-Status: GOOD (  21.84  )
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

Embed a generic NAND ECC high-level object in the nand_device
structure to carry all the ECC engine configuration/data. Adapt the
raw NAND and SPI-NAND cores to fit the change.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/atmel/nand-controller.c |  9 +++--
 drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c   | 12 +++---
 drivers/mtd/nand/raw/marvell_nand.c          |  7 ++--
 drivers/mtd/nand/raw/mtk_nand.c              |  4 +-
 drivers/mtd/nand/raw/nand_base.c             | 17 ++++----
 drivers/mtd/nand/raw/nand_esmt.c             | 11 +++---
 drivers/mtd/nand/raw/nand_hynix.c            | 41 ++++++++++----------
 drivers/mtd/nand/raw/nand_jedec.c            |  4 +-
 drivers/mtd/nand/raw/nand_micron.c           | 14 ++++---
 drivers/mtd/nand/raw/nand_onfi.c             |  8 ++--
 drivers/mtd/nand/raw/nand_samsung.c          | 19 ++++-----
 drivers/mtd/nand/raw/nand_toshiba.c          | 11 +++---
 drivers/mtd/nand/raw/sunxi_nand.c            |  5 ++-
 drivers/mtd/nand/raw/tegra_nand.c            |  9 +++--
 drivers/mtd/nand/spi/core.c                  |  4 +-
 drivers/mtd/nand/spi/macronix.c              |  6 +--
 drivers/mtd/nand/spi/toshiba.c               |  6 +--
 include/linux/mtd/nand.h                     |  8 ++--
 include/linux/mtd/spinand.h                  |  2 +-
 19 files changed, 104 insertions(+), 93 deletions(-)

diff --git a/drivers/mtd/nand/raw/atmel/nand-controller.c b/drivers/mtd/nand/raw/atmel/nand-controller.c
index 178ae1280729..0a2c726a99eb 100644
--- a/drivers/mtd/nand/raw/atmel/nand-controller.c
+++ b/drivers/mtd/nand/raw/atmel/nand-controller.c
@@ -1043,6 +1043,7 @@ static int atmel_hsmc_nand_pmecc_read_page_raw(struct nand_chip *chip,
 
 static int atmel_nand_pmecc_init(struct nand_chip *chip)
 {
+	struct nand_ecc_props *requirements = &chip->base.ecc.requirements;
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct atmel_nand *nand = to_atmel_nand(chip);
 	struct atmel_nand_controller *nc;
@@ -1072,15 +1073,15 @@ static int atmel_nand_pmecc_init(struct nand_chip *chip)
 		req.ecc.strength = ATMEL_PMECC_MAXIMIZE_ECC_STRENGTH;
 	else if (chip->ecc.strength)
 		req.ecc.strength = chip->ecc.strength;
-	else if (chip->base.eccreq.strength)
-		req.ecc.strength = chip->base.eccreq.strength;
+	else if (requirements->strength)
+		req.ecc.strength = requirements->strength;
 	else
 		req.ecc.strength = ATMEL_PMECC_MAXIMIZE_ECC_STRENGTH;
 
 	if (chip->ecc.size)
 		req.ecc.sectorsize = chip->ecc.size;
-	else if (chip->base.eccreq.step_size)
-		req.ecc.sectorsize = chip->base.eccreq.step_size;
+	else if (requirements->step_size)
+		req.ecc.sectorsize = requirements->step_size;
 	else
 		req.ecc.sectorsize = ATMEL_PMECC_SECTOR_SIZE_AUTO;
 
diff --git a/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c b/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
index 36d996f95656..9faeaca388f5 100644
--- a/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
+++ b/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
@@ -267,8 +267,8 @@ static int set_geometry_by_ecc_info(struct gpmi_nand_data *this,
 	default:
 		dev_err(this->dev,
 			"unsupported nand chip. ecc bits : %d, ecc size : %d\n",
-			chip->base.eccreq.strength,
-			chip->base.eccreq.step_size);
+			chip->base.ecc.requirements.strength,
+			chip->base.ecc.requirements.step_size);
 		return -EINVAL;
 	}
 	geo->ecc_chunk_size = ecc_step;
@@ -512,13 +512,13 @@ static int common_nfc_set_geometry(struct gpmi_nand_data *this)
 
 	if ((of_property_read_bool(this->dev->of_node, "fsl,use-minimum-ecc"))
 				|| legacy_set_geometry(this)) {
-		if (!(chip->base.eccreq.strength > 0 &&
-		      chip->base.eccreq.step_size > 0))
+		if (!(chip->base.ecc.requirements.strength > 0 &&
+		      chip->base.ecc.requirements.step_size > 0))
 			return -EINVAL;
 
 		return set_geometry_by_ecc_info(this,
-						chip->base.eccreq.strength,
-						chip->base.eccreq.step_size);
+						chip->base.ecc.requirements.strength,
+						chip->base.ecc.requirements.step_size);
 	}
 
 	return 0;
diff --git a/drivers/mtd/nand/raw/marvell_nand.c b/drivers/mtd/nand/raw/marvell_nand.c
index 4199ed3f91d6..5e55d19b94fd 100644
--- a/drivers/mtd/nand/raw/marvell_nand.c
+++ b/drivers/mtd/nand/raw/marvell_nand.c
@@ -2244,13 +2244,14 @@ static int marvell_nand_ecc_init(struct mtd_info *mtd,
 				 struct nand_ecc_ctrl *ecc)
 {
 	struct nand_chip *chip = mtd_to_nand(mtd);
+	struct nand_ecc_props *requirements = &chip->base.ecc.requirements;
 	struct marvell_nfc *nfc = to_marvell_nfc(chip->controller);
 	int ret;
 
 	if (ecc->mode != NAND_NO_ECC_ENGINE && (!ecc->size || !ecc->strength)) {
-		if (chip->base.eccreq.step_size && chip->base.eccreq.strength) {
-			ecc->size = chip->base.eccreq.step_size;
-			ecc->strength = chip->base.eccreq.strength;
+		if (requirements->step_size && requirements->strength) {
+			ecc->size = requirements->step_size;
+			ecc->strength = requirements->strength;
 		} else {
 			dev_info(nfc->dev,
 				 "No minimum ECC strength, using 1b/512B\n");
diff --git a/drivers/mtd/nand/raw/mtk_nand.c b/drivers/mtd/nand/raw/mtk_nand.c
index 75e49b3c5f2b..27fde0391d32 100644
--- a/drivers/mtd/nand/raw/mtk_nand.c
+++ b/drivers/mtd/nand/raw/mtk_nand.c
@@ -1234,8 +1234,8 @@ static int mtk_nfc_ecc_init(struct device *dev, struct mtd_info *mtd)
 	/* if optional dt settings not present */
 	if (!nand->ecc.size || !nand->ecc.strength) {
 		/* use datasheet requirements */
-		nand->ecc.strength = nand->base.eccreq.strength;
-		nand->ecc.size = nand->base.eccreq.step_size;
+		nand->ecc.strength = nand->base.ecc.requirements.strength;
+		nand->ecc.size = nand->base.ecc.requirements.step_size;
 
 		/*
 		 * align eccstrength and eccsize
diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index c313fe4fc16c..b7977d96395a 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -4569,8 +4569,8 @@ static bool find_full_id_nand(struct nand_chip *chip,
 					   memorg->pagesize *
 					   memorg->pages_per_eraseblock);
 		chip->options |= type->options;
-		chip->base.eccreq.strength = NAND_ECC_STRENGTH(type);
-		chip->base.eccreq.step_size = NAND_ECC_STEP(type);
+		chip->base.ecc.requirements.strength = NAND_ECC_STRENGTH(type);
+		chip->base.ecc.requirements.step_size = NAND_ECC_STEP(type);
 		chip->onfi_timing_mode_default =
 					type->onfi_timing_mode_default;
 
@@ -5280,8 +5280,8 @@ nand_match_ecc_req(struct nand_chip *chip,
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	const struct nand_ecc_step_info *stepinfo;
-	int req_step = chip->base.eccreq.step_size;
-	int req_strength = chip->base.eccreq.strength;
+	int req_step = chip->base.ecc.requirements.step_size;
+	int req_strength = chip->base.ecc.requirements.strength;
 	int req_corr, step_size, strength, nsteps, ecc_bytes, ecc_bytes_total;
 	int best_step, best_strength, best_ecc_bytes;
 	int best_ecc_bytes_total = INT_MAX;
@@ -5472,9 +5472,10 @@ static bool nand_ecc_strength_good(struct nand_chip *chip)
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct nand_ecc_ctrl *ecc = &chip->ecc;
+	struct nand_ecc_props *requirements = &chip->base.ecc.requirements;
 	int corr, ds_corr;
 
-	if (ecc->size == 0 || chip->base.eccreq.step_size == 0)
+	if (ecc->size == 0 || requirements->step_size == 0)
 		/* Not enough information */
 		return true;
 
@@ -5483,10 +5484,10 @@ static bool nand_ecc_strength_good(struct nand_chip *chip)
 	 * the correction density.
 	 */
 	corr = (mtd->writesize * ecc->strength) / ecc->size;
-	ds_corr = (mtd->writesize * chip->base.eccreq.strength) /
-		  chip->base.eccreq.step_size;
+	ds_corr = (mtd->writesize * requirements->strength) /
+		  requirements->step_size;
 
-	return corr >= ds_corr && ecc->strength >= chip->base.eccreq.strength;
+	return corr >= ds_corr && ecc->strength >= requirements->strength;
 }
 
 static int rawnand_erase(struct nand_device *nand, const struct nand_pos *pos)
diff --git a/drivers/mtd/nand/raw/nand_esmt.c b/drivers/mtd/nand/raw/nand_esmt.c
index 3338c68aaaf1..11f25ec3e4fc 100644
--- a/drivers/mtd/nand/raw/nand_esmt.c
+++ b/drivers/mtd/nand/raw/nand_esmt.c
@@ -10,24 +10,25 @@
 
 static void esmt_nand_decode_id(struct nand_chip *chip)
 {
+	struct nand_ecc_props *requirements = &chip->base.ecc.requirements;
 	nand_decode_ext_id(chip);
 
 	/* Extract ECC requirements from 5th id byte. */
 	if (chip->id.len >= 5 && nand_is_slc(chip)) {
-		chip->base.eccreq.step_size = 512;
+		requirements->step_size = 512;
 		switch (chip->id.data[4] & 0x3) {
 		case 0x0:
-			chip->base.eccreq.strength = 4;
+			requirements->strength = 4;
 			break;
 		case 0x1:
-			chip->base.eccreq.strength = 2;
+			requirements->strength = 2;
 			break;
 		case 0x2:
-			chip->base.eccreq.strength = 1;
+			requirements->strength = 1;
 			break;
 		default:
 			WARN(1, "Could not get ECC info");
-			chip->base.eccreq.step_size = 0;
+			requirements->step_size = 0;
 			break;
 		}
 	}
diff --git a/drivers/mtd/nand/raw/nand_hynix.c b/drivers/mtd/nand/raw/nand_hynix.c
index 194e4227aefe..d21602844e94 100644
--- a/drivers/mtd/nand/raw/nand_hynix.c
+++ b/drivers/mtd/nand/raw/nand_hynix.c
@@ -495,34 +495,35 @@ static void hynix_nand_extract_oobsize(struct nand_chip *chip,
 static void hynix_nand_extract_ecc_requirements(struct nand_chip *chip,
 						bool valid_jedecid)
 {
+	struct nand_ecc_props *requirements = &chip->base.ecc.requirements;
 	u8 ecc_level = (chip->id.data[4] >> 4) & 0x7;
 
 	if (valid_jedecid) {
 		/* Reference: H27UCG8T2E datasheet */
-		chip->base.eccreq.step_size = 1024;
+		requirements->step_size = 1024;
 
 		switch (ecc_level) {
 		case 0:
-			chip->base.eccreq.step_size = 0;
-			chip->base.eccreq.strength = 0;
+			requirements->step_size = 0;
+			requirements->strength = 0;
 			break;
 		case 1:
-			chip->base.eccreq.strength = 4;
+			requirements->strength = 4;
 			break;
 		case 2:
-			chip->base.eccreq.strength = 24;
+			requirements->strength = 24;
 			break;
 		case 3:
-			chip->base.eccreq.strength = 32;
+			requirements->strength = 32;
 			break;
 		case 4:
-			chip->base.eccreq.strength = 40;
+			requirements->strength = 40;
 			break;
 		case 5:
-			chip->base.eccreq.strength = 50;
+			requirements->strength = 50;
 			break;
 		case 6:
-			chip->base.eccreq.strength = 60;
+			requirements->strength = 60;
 			break;
 		default:
 			/*
@@ -543,14 +544,14 @@ static void hynix_nand_extract_ecc_requirements(struct nand_chip *chip,
 		if (nand_tech < 3) {
 			/* > 26nm, reference: H27UBG8T2A datasheet */
 			if (ecc_level < 5) {
-				chip->base.eccreq.step_size = 512;
-				chip->base.eccreq.strength = 1 << ecc_level;
+				requirements->step_size = 512;
+				requirements->strength = 1 << ecc_level;
 			} else if (ecc_level < 7) {
 				if (ecc_level == 5)
-					chip->base.eccreq.step_size = 2048;
+					requirements->step_size = 2048;
 				else
-					chip->base.eccreq.step_size = 1024;
-				chip->base.eccreq.strength = 24;
+					requirements->step_size = 1024;
+				requirements->strength = 24;
 			} else {
 				/*
 				 * We should never reach this case, but if that
@@ -563,14 +564,14 @@ static void hynix_nand_extract_ecc_requirements(struct nand_chip *chip,
 		} else {
 			/* <= 26nm, reference: H27UBG8T2B datasheet */
 			if (!ecc_level) {
-				chip->base.eccreq.step_size = 0;
-				chip->base.eccreq.strength = 0;
+				requirements->step_size = 0;
+				requirements->strength = 0;
 			} else if (ecc_level < 5) {
-				chip->base.eccreq.step_size = 512;
-				chip->base.eccreq.strength = 1 << (ecc_level - 1);
+				requirements->step_size = 512;
+				requirements->strength = 1 << (ecc_level - 1);
 			} else {
-				chip->base.eccreq.step_size = 1024;
-				chip->base.eccreq.strength = 24 +
+				requirements->step_size = 1024;
+				requirements->strength = 24 +
 							(8 * (ecc_level - 5));
 			}
 		}
diff --git a/drivers/mtd/nand/raw/nand_jedec.c b/drivers/mtd/nand/raw/nand_jedec.c
index 9b540e76f84f..46afa25abc70 100644
--- a/drivers/mtd/nand/raw/nand_jedec.c
+++ b/drivers/mtd/nand/raw/nand_jedec.c
@@ -110,8 +110,8 @@ int nand_jedec_detect(struct nand_chip *chip)
 	ecc = &p->ecc_info[0];
 
 	if (ecc->codeword_size >= 9) {
-		chip->base.eccreq.strength = ecc->ecc_bits;
-		chip->base.eccreq.step_size = 1 << ecc->codeword_size;
+		chip->base.ecc.requirements.strength = ecc->ecc_bits;
+		chip->base.ecc.requirements.step_size = 1 << ecc->codeword_size;
 	} else {
 		pr_warn("Invalid codeword size\n");
 	}
diff --git a/drivers/mtd/nand/raw/nand_micron.c b/drivers/mtd/nand/raw/nand_micron.c
index d0a640e6f3c9..e9f562a7ad61 100644
--- a/drivers/mtd/nand/raw/nand_micron.c
+++ b/drivers/mtd/nand/raw/nand_micron.c
@@ -370,6 +370,7 @@ enum {
  */
 static int micron_supports_on_die_ecc(struct nand_chip *chip)
 {
+	struct nand_ecc_props *requirements = &chip->base.ecc.requirements;
 	u8 id[5];
 	int ret;
 
@@ -382,7 +383,7 @@ static int micron_supports_on_die_ecc(struct nand_chip *chip)
 	/*
 	 * We only support on-die ECC of 4/512 or 8/512
 	 */
-	if  (chip->base.eccreq.strength != 4 && chip->base.eccreq.strength != 8)
+	if  (requirements->strength != 4 && requirements->strength != 8)
 		return MICRON_ON_DIE_UNSUPPORTED;
 
 	/* 0x2 means on-die ECC is available. */
@@ -415,7 +416,7 @@ static int micron_supports_on_die_ecc(struct nand_chip *chip)
 	/*
 	 * We only support on-die ECC of 4/512 or 8/512
 	 */
-	if  (chip->base.eccreq.strength != 4 && chip->base.eccreq.strength != 8)
+	if  (requirements->strength != 4 && requirements->strength != 8)
 		return MICRON_ON_DIE_UNSUPPORTED;
 
 	return MICRON_ON_DIE_SUPPORTED;
@@ -423,6 +424,7 @@ static int micron_supports_on_die_ecc(struct nand_chip *chip)
 
 static int micron_nand_init(struct nand_chip *chip)
 {
+	struct nand_ecc_props *requirements = &chip->base.ecc.requirements;
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct micron_nand *micron;
 	int ondie;
@@ -470,7 +472,7 @@ static int micron_nand_init(struct nand_chip *chip)
 		 * That's not needed for 8-bit ECC, because the status expose
 		 * a better approximation of the number of bitflips in a page.
 		 */
-		if (chip->base.eccreq.strength == 4) {
+		if (requirements->strength == 4) {
 			micron->ecc.rawbuf = kmalloc(mtd->writesize +
 						     mtd->oobsize,
 						     GFP_KERNEL);
@@ -480,16 +482,16 @@ static int micron_nand_init(struct nand_chip *chip)
 			}
 		}
 
-		if (chip->base.eccreq.strength == 4)
+		if (requirements->strength == 4)
 			mtd_set_ooblayout(mtd,
 					  &micron_nand_on_die_4_ooblayout_ops);
 		else
 			mtd_set_ooblayout(mtd,
 					  &micron_nand_on_die_8_ooblayout_ops);
 
-		chip->ecc.bytes = chip->base.eccreq.strength * 2;
+		chip->ecc.bytes = requirements->strength * 2;
 		chip->ecc.size = 512;
-		chip->ecc.strength = chip->base.eccreq.strength;
+		chip->ecc.strength = requirements->strength;
 		chip->ecc.algo = NAND_ECC_BCH;
 		chip->ecc.read_page = micron_nand_read_page_on_die_ecc;
 		chip->ecc.write_page = micron_nand_write_page_on_die_ecc;
diff --git a/drivers/mtd/nand/raw/nand_onfi.c b/drivers/mtd/nand/raw/nand_onfi.c
index 0b879bd0a68c..9d21b47ebef1 100644
--- a/drivers/mtd/nand/raw/nand_onfi.c
+++ b/drivers/mtd/nand/raw/nand_onfi.c
@@ -94,8 +94,8 @@ static int nand_flash_detect_ext_param_page(struct nand_chip *chip,
 		goto ext_out;
 	}
 
-	chip->base.eccreq.strength = ecc->ecc_bits;
-	chip->base.eccreq.step_size = 1 << ecc->codeword_size;
+	chip->base.ecc.requirements.strength = ecc->ecc_bits;
+	chip->base.ecc.requirements.step_size = 1 << ecc->codeword_size;
 	ret = 0;
 
 ext_out:
@@ -252,8 +252,8 @@ int nand_onfi_detect(struct nand_chip *chip)
 		chip->options |= NAND_BUSWIDTH_16;
 
 	if (p->ecc_bits != 0xff) {
-		chip->base.eccreq.strength = p->ecc_bits;
-		chip->base.eccreq.step_size = 512;
+		chip->base.ecc.requirements.strength = p->ecc_bits;
+		chip->base.ecc.requirements.step_size = 512;
 	} else if (onfi_version >= 21 &&
 		(le16_to_cpu(p->features) & ONFI_FEATURE_EXT_PARAM_PAGE)) {
 
diff --git a/drivers/mtd/nand/raw/nand_samsung.c b/drivers/mtd/nand/raw/nand_samsung.c
index 3a4a19e808f6..0ee85e88aeb5 100644
--- a/drivers/mtd/nand/raw/nand_samsung.c
+++ b/drivers/mtd/nand/raw/nand_samsung.c
@@ -10,6 +10,7 @@
 
 static void samsung_nand_decode_id(struct nand_chip *chip)
 {
+	struct nand_ecc_props *requirements = &chip->base.ecc.requirements;
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct nand_memory_organization *memorg;
 
@@ -71,23 +72,23 @@ static void samsung_nand_decode_id(struct nand_chip *chip)
 		/* Extract ECC requirements from 5th id byte*/
 		extid = (chip->id.data[4] >> 4) & 0x07;
 		if (extid < 5) {
-			chip->base.eccreq.step_size = 512;
-			chip->base.eccreq.strength = 1 << extid;
+			requirements->step_size = 512;
+			requirements->strength = 1 << extid;
 		} else {
-			chip->base.eccreq.step_size = 1024;
+			requirements->step_size = 1024;
 			switch (extid) {
 			case 5:
-				chip->base.eccreq.strength = 24;
+				requirements->strength = 24;
 				break;
 			case 6:
-				chip->base.eccreq.strength = 40;
+				requirements->strength = 40;
 				break;
 			case 7:
-				chip->base.eccreq.strength = 60;
+				requirements->strength = 60;
 				break;
 			default:
 				WARN(1, "Could not decode ECC info");
-				chip->base.eccreq.step_size = 0;
+				requirements->step_size = 0;
 			}
 		}
 	} else {
@@ -97,8 +98,8 @@ static void samsung_nand_decode_id(struct nand_chip *chip)
 			switch (chip->id.data[1]) {
 			/* K9F4G08U0D-S[I|C]B0(T00) */
 			case 0xDC:
-				chip->base.eccreq.step_size = 512;
-				chip->base.eccreq.strength = 1;
+				requirements->step_size = 512;
+				requirements->strength = 1;
 				break;
 
 			/* K9F1G08U0E 21nm chips do not support subpage write */
diff --git a/drivers/mtd/nand/raw/nand_toshiba.c b/drivers/mtd/nand/raw/nand_toshiba.c
index e13930e8ccc8..47d17a0db836 100644
--- a/drivers/mtd/nand/raw/nand_toshiba.c
+++ b/drivers/mtd/nand/raw/nand_toshiba.c
@@ -91,6 +91,7 @@ static void toshiba_nand_benand_init(struct nand_chip *chip)
 
 static void toshiba_nand_decode_id(struct nand_chip *chip)
 {
+	struct nand_ecc_props *requirements = &chip->base.ecc.requirements;
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct nand_memory_organization *memorg;
 
@@ -121,20 +122,20 @@ static void toshiba_nand_decode_id(struct nand_chip *chip)
 	 *  - 24nm: 8 bit ECC for each 512Byte is required.
 	 */
 	if (chip->id.len >= 6 && nand_is_slc(chip)) {
-		chip->base.eccreq.step_size = 512;
+		requirements->step_size = 512;
 		switch (chip->id.data[5] & 0x7) {
 		case 0x4:
-			chip->base.eccreq.strength = 1;
+			requirements->strength = 1;
 			break;
 		case 0x5:
-			chip->base.eccreq.strength = 4;
+			requirements->strength = 4;
 			break;
 		case 0x6:
-			chip->base.eccreq.strength = 8;
+			requirements->strength = 8;
 			break;
 		default:
 			WARN(1, "Could not get ECC info");
-			chip->base.eccreq.step_size = 0;
+			requirements->step_size = 0;
 			break;
 		}
 	}
diff --git a/drivers/mtd/nand/raw/sunxi_nand.c b/drivers/mtd/nand/raw/sunxi_nand.c
index 09dbca3eda63..6108262b1851 100644
--- a/drivers/mtd/nand/raw/sunxi_nand.c
+++ b/drivers/mtd/nand/raw/sunxi_nand.c
@@ -1732,6 +1732,7 @@ static void sunxi_nand_ecc_cleanup(struct nand_ecc_ctrl *ecc)
 
 static int sunxi_nand_attach_chip(struct nand_chip *nand)
 {
+	struct nand_ecc_props *requirements = &nand->base.ecc.requirements;
 	struct nand_ecc_ctrl *ecc = &nand->ecc;
 	struct device_node *np = nand_get_flash_node(nand);
 	int ret;
@@ -1745,8 +1746,8 @@ static int sunxi_nand_attach_chip(struct nand_chip *nand)
 	nand->options |= NAND_SUBPAGE_READ;
 
 	if (!ecc->size) {
-		ecc->size = nand->base.eccreq.step_size;
-		ecc->strength = nand->base.eccreq.strength;
+		ecc->size = requirements->step_size;
+		ecc->strength = requirements->strength;
 	}
 
 	if (!ecc->size || !ecc->strength)
diff --git a/drivers/mtd/nand/raw/tegra_nand.c b/drivers/mtd/nand/raw/tegra_nand.c
index 69a923f83780..bb347d92bd5d 100644
--- a/drivers/mtd/nand/raw/tegra_nand.c
+++ b/drivers/mtd/nand/raw/tegra_nand.c
@@ -853,7 +853,7 @@ static int tegra_nand_get_strength(struct nand_chip *chip, const int *strength,
 		} else {
 			strength_sel = strength[i];
 
-			if (strength_sel < chip->base.eccreq.strength)
+			if (strength_sel < chip->base.ecc.requirements.strength)
 				continue;
 		}
 
@@ -906,6 +906,7 @@ static int tegra_nand_select_strength(struct nand_chip *chip, int oobsize)
 static int tegra_nand_attach_chip(struct nand_chip *chip)
 {
 	struct tegra_nand_controller *ctrl = to_tegra_ctrl(chip->controller);
+	struct nand_ecc_props *requirements = &chip->base.ecc.requirements;
 	struct tegra_nand_chip *nand = to_tegra_chip(chip);
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	int bits_per_step;
@@ -917,9 +918,9 @@ static int tegra_nand_attach_chip(struct nand_chip *chip)
 	chip->ecc.mode = NAND_HW_ECC_ENGINE;
 	chip->ecc.size = 512;
 	chip->ecc.steps = mtd->writesize / chip->ecc.size;
-	if (chip->base.eccreq.step_size != 512) {
+	if (requirements->step_size != 512) {
 		dev_err(ctrl->dev, "Unsupported step size %d\n",
-			chip->base.eccreq.step_size);
+			requirements->step_size);
 		return -EINVAL;
 	}
 
@@ -950,7 +951,7 @@ static int tegra_nand_attach_chip(struct nand_chip *chip)
 		if (ret < 0) {
 			dev_err(ctrl->dev,
 				"No valid strength found, minimum %d\n",
-				chip->base.eccreq.strength);
+				requirements->strength);
 			return ret;
 		}
 
diff --git a/drivers/mtd/nand/spi/core.c b/drivers/mtd/nand/spi/core.c
index d361665414ab..c2a653707886 100644
--- a/drivers/mtd/nand/spi/core.c
+++ b/drivers/mtd/nand/spi/core.c
@@ -417,7 +417,7 @@ static int spinand_check_ecc_status(struct spinand_device *spinand, u8 status)
 		 * fixed, so let's return the maximum possible value so that
 		 * wear-leveling layers move the data immediately.
 		 */
-		return nand->eccreq.strength;
+		return nand->ecc.ctx.conf.strength;
 
 	case STATUS_ECC_UNCOR_ERROR:
 		return -EBADMSG;
@@ -860,7 +860,7 @@ int spinand_match_and_init(struct spinand_device *spinand,
 			continue;
 
 		nand->memorg = table[i].memorg;
-		nand->eccreq = table[i].eccreq;
+		nand->ecc.requirements = table[i].eccreq;
 		spinand->eccinfo = table[i].eccinfo;
 		spinand->flags = table[i].flags;
 		spinand->select_target = table[i].select_target;
diff --git a/drivers/mtd/nand/spi/macronix.c b/drivers/mtd/nand/spi/macronix.c
index 21def3f8fb36..48b3fd12c0b3 100644
--- a/drivers/mtd/nand/spi/macronix.c
+++ b/drivers/mtd/nand/spi/macronix.c
@@ -84,10 +84,10 @@ static int mx35lf1ge4ab_ecc_get_status(struct spinand_device *spinand,
 		 * data around if it's not necessary.
 		 */
 		if (mx35lf1ge4ab_get_eccsr(spinand, &eccsr))
-			return nand->eccreq.strength;
+			return nand->ecc.ctx.conf.strength;
 
-		if (WARN_ON(eccsr > nand->eccreq.strength || !eccsr))
-			return nand->eccreq.strength;
+		if (WARN_ON(eccsr > nand->ecc.ctx.conf.strength || !eccsr))
+			return nand->ecc.ctx.conf.strength;
 
 		return eccsr;
 
diff --git a/drivers/mtd/nand/spi/toshiba.c b/drivers/mtd/nand/spi/toshiba.c
index 1cb3760ff779..799da6b77f2e 100644
--- a/drivers/mtd/nand/spi/toshiba.c
+++ b/drivers/mtd/nand/spi/toshiba.c
@@ -77,12 +77,12 @@ static int tc58cxgxsx_ecc_get_status(struct spinand_device *spinand,
 		 * data around if it's not necessary.
 		 */
 		if (spi_mem_exec_op(spinand->spimem, &op))
-			return nand->eccreq.strength;
+			return nand->ecc.ctx.conf.strength;
 
 		mbf >>= 4;
 
-		if (WARN_ON(mbf > nand->eccreq.strength || !mbf))
-			return nand->eccreq.strength;
+		if (WARN_ON(mbf > nand->ecc.ctx.conf.strength || !mbf))
+			return nand->ecc.ctx.conf.strength;
 
 		return mbf;
 
diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index a3a86bae5fb7..231dc22a7c50 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -250,7 +250,7 @@ struct nand_ecc {
  * struct nand_device - NAND device
  * @mtd: MTD instance attached to the NAND device
  * @memorg: memory layout
- * @eccreq: ECC requirements
+ * @ecc: NAND ECC object attached to the NAND device
  * @rowconv: position to row address converter
  * @bbt: bad block table info
  * @ops: NAND operations attached to the NAND device
@@ -258,8 +258,8 @@ struct nand_ecc {
  * Generic NAND object. Specialized NAND layers (raw NAND, SPI NAND, OneNAND)
  * should declare their own NAND object embedding a nand_device struct (that's
  * how inheritance is done).
- * struct_nand_device->memorg and struct_nand_device->eccreq should be filled
- * at device detection time to reflect the NAND device
+ * struct_nand_device->memorg and struct_nand_device->ecc.ctx.conf should
+ * be filled at device detection time to reflect the NAND device
  * capabilities/requirements. Once this is done nanddev_init() can be called.
  * It will take care of converting NAND information into MTD ones, which means
  * the specialized NAND layers should never manually tweak
@@ -268,7 +268,7 @@ struct nand_ecc {
 struct nand_device {
 	struct mtd_info mtd;
 	struct nand_memory_organization memorg;
-	struct nand_ecc_props eccreq;
+	struct nand_ecc ecc;
 	struct nand_row_converter rowconv;
 	struct nand_bbt bbt;
 	const struct nand_ops *ops;
diff --git a/include/linux/mtd/spinand.h b/include/linux/mtd/spinand.h
index fad19058e28f..87d774b7500c 100644
--- a/include/linux/mtd/spinand.h
+++ b/include/linux/mtd/spinand.h
@@ -198,7 +198,7 @@ struct spinand_id {
  *	    match, 0 if the manufacturer ID does not match and a negative
  *	    error code otherwise. When true is returned, the core assumes
  *	    that properties of the NAND chip (spinand->base.memorg and
- *	    spinand->base.eccreq) have been filled
+ *	    spinand->base.ecc.ctx.conf) have been filled
  * @init: initialize a SPI NAND device
  * @cleanup: cleanup a SPI NAND device
  *
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
