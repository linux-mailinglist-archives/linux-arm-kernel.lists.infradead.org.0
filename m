Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 928C61E717E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 02:30:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5tNhXbVW8mdrZztE2viGWnnbUDUbZXQTlaNIy/QKnI8=; b=fUFyRWG1RZPrRR
	IH/NcUrJ7CJxGeBHrL0Zn3g4ZZKq1imJJWLruL32WxPsRb5GFLZrAKy5fq7DTyrB10h/idODr+t4h
	yTrldToF1nrNRlvt7ma9HZ4l9ssRJM8VKVTJoCInoOsXpkOFEU+5hzeg4R9e9FLPDTIb/qie8kWYo
	xD5s0nGpr18QWhoW1zBQ1RSg6/E3vTqF9jd/+ASGp+Xc+GWv5O/e/sfLca/OCNBMQtFWJ9y/Rvk2r
	BtTD6uoHTiTHKv/4gQw9fJNB1QbSS9vwlmElVvl9hROsrn2CaB1kzG0rcHOI1zmuJ/OZjsBeesb0u
	LgeBVVCfw6JS3j9uP+DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeSuK-0000sr-Lu; Fri, 29 May 2020 00:29:56 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeSq6-000640-PR; Fri, 29 May 2020 00:25:39 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 693FD200002;
 Fri, 29 May 2020 00:25:31 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
Subject: [PATCH v7 06/20] mtd: rawnand: Rename the ECC algorithm enumeration
 items
Date: Fri, 29 May 2020 02:25:03 +0200
Message-Id: <20200529002517.3546-7-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200529002517.3546-1-miquel.raynal@bootlin.com>
References: <20200529002517.3546-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_172535_186518_694622EB 
X-CRM114-Status: GOOD (  17.23  )
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

NAND_ECC_ is not a meaningful prefix, use NAND_ECC_ALGO_ instead.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/raw/ams-delta.c              |  2 +-
 drivers/mtd/nand/raw/arasan-nand-controller.c |  2 +-
 drivers/mtd/nand/raw/atmel/nand-controller.c  |  2 +-
 drivers/mtd/nand/raw/au1550nd.c               |  2 +-
 drivers/mtd/nand/raw/brcmnand/brcmnand.c      | 12 ++++-----
 drivers/mtd/nand/raw/davinci_nand.c           |  8 +++---
 drivers/mtd/nand/raw/fsl_elbc_nand.c          |  2 +-
 drivers/mtd/nand/raw/fsl_ifc_nand.c           |  2 +-
 drivers/mtd/nand/raw/fsl_upm.c                |  2 +-
 drivers/mtd/nand/raw/fsmc_nand.c              |  2 +-
 drivers/mtd/nand/raw/gpio.c                   |  2 +-
 drivers/mtd/nand/raw/marvell_nand.c           | 10 +++----
 drivers/mtd/nand/raw/mpc5121_nfc.c            |  2 +-
 drivers/mtd/nand/raw/mxc_nand.c               |  2 +-
 drivers/mtd/nand/raw/nand_base.c              | 26 +++++++++----------
 drivers/mtd/nand/raw/nand_micron.c            |  2 +-
 drivers/mtd/nand/raw/nandsim.c                |  4 +--
 drivers/mtd/nand/raw/omap2.c                  |  2 +-
 drivers/mtd/nand/raw/orion_nand.c             |  2 +-
 drivers/mtd/nand/raw/pasemi_nand.c            |  2 +-
 drivers/mtd/nand/raw/plat_nand.c              |  2 +-
 drivers/mtd/nand/raw/s3c2410.c                |  4 +--
 drivers/mtd/nand/raw/sh_flctl.c               |  2 +-
 drivers/mtd/nand/raw/socrates_nand.c          |  2 +-
 drivers/mtd/nand/raw/tango_nand.c             |  2 +-
 drivers/mtd/nand/raw/tegra_nand.c             | 20 +++++++-------
 drivers/mtd/nand/raw/xway_nand.c              |  2 +-
 include/linux/mtd/rawnand.h                   | 16 ++++++------
 28 files changed, 70 insertions(+), 70 deletions(-)

diff --git a/drivers/mtd/nand/raw/ams-delta.c b/drivers/mtd/nand/raw/ams-delta.c
index 3711e7a0436c..72a44b2411c1 100644
--- a/drivers/mtd/nand/raw/ams-delta.c
+++ b/drivers/mtd/nand/raw/ams-delta.c
@@ -261,7 +261,7 @@ static int gpio_nand_probe(struct platform_device *pdev)
 	}
 
 	this->ecc.mode = NAND_ECC_SOFT;
-	this->ecc.algo = NAND_ECC_HAMMING;
+	this->ecc.algo = NAND_ECC_ALGO_HAMMING;
 
 	platform_set_drvdata(pdev, priv);
 
diff --git a/drivers/mtd/nand/raw/arasan-nand-controller.c b/drivers/mtd/nand/raw/arasan-nand-controller.c
index 7141dcccba3c..076736351bc6 100644
--- a/drivers/mtd/nand/raw/arasan-nand-controller.c
+++ b/drivers/mtd/nand/raw/arasan-nand-controller.c
@@ -983,7 +983,7 @@ static int anfc_init_hw_ecc_controller(struct arasan_nfc *nfc,
 	mtd_set_ooblayout(mtd, &nand_ooblayout_lp_ops);
 
 	ecc->steps = mtd->writesize / ecc->size;
-	ecc->algo = NAND_ECC_BCH;
+	ecc->algo = NAND_ECC_ALGO_BCH;
 	anand->ecc_bits = bch_gf_mag * ecc->strength;
 	ecc->bytes = DIV_ROUND_UP(anand->ecc_bits, 8);
 	anand->ecc_total = DIV_ROUND_UP(anand->ecc_bits * ecc->steps, 8);
diff --git a/drivers/mtd/nand/raw/atmel/nand-controller.c b/drivers/mtd/nand/raw/atmel/nand-controller.c
index 46a3724a788e..d9839461e460 100644
--- a/drivers/mtd/nand/raw/atmel/nand-controller.c
+++ b/drivers/mtd/nand/raw/atmel/nand-controller.c
@@ -1099,7 +1099,7 @@ static int atmel_nand_pmecc_init(struct nand_chip *chip)
 	if (IS_ERR(nand->pmecc))
 		return PTR_ERR(nand->pmecc);
 
-	chip->ecc.algo = NAND_ECC_BCH;
+	chip->ecc.algo = NAND_ECC_ALGO_BCH;
 	chip->ecc.size = req.ecc.sectorsize;
 	chip->ecc.bytes = req.ecc.bytes / req.ecc.nsectors;
 	chip->ecc.strength = req.ecc.strength;
diff --git a/drivers/mtd/nand/raw/au1550nd.c b/drivers/mtd/nand/raw/au1550nd.c
index f7b4f421b2b0..e9140bf5cbac 100644
--- a/drivers/mtd/nand/raw/au1550nd.c
+++ b/drivers/mtd/nand/raw/au1550nd.c
@@ -295,7 +295,7 @@ static int au1550nd_probe(struct platform_device *pdev)
 	ctx->controller.ops = &au1550nd_ops;
 	this->controller = &ctx->controller;
 	this->ecc.mode = NAND_ECC_SOFT;
-	this->ecc.algo = NAND_ECC_HAMMING;
+	this->ecc.algo = NAND_ECC_ALGO_HAMMING;
 
 	if (pd->devwidth)
 		this->options |= NAND_BUSWIDTH_16;
diff --git a/drivers/mtd/nand/raw/brcmnand/brcmnand.c b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
index 4a0a7053fb7a..2a9f2ff89fe7 100644
--- a/drivers/mtd/nand/raw/brcmnand/brcmnand.c
+++ b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
@@ -2545,17 +2545,17 @@ static int brcmnand_setup_dev(struct brcmnand_host *host)
 		return -EINVAL;
 	}
 
-	if (chip->ecc.algo == NAND_ECC_UNKNOWN) {
+	if (chip->ecc.algo == NAND_ECC_ALGO_UNKNOWN) {
 		if (chip->ecc.strength == 1 && chip->ecc.size == 512)
 			/* Default to Hamming for 1-bit ECC, if unspecified */
-			chip->ecc.algo = NAND_ECC_HAMMING;
+			chip->ecc.algo = NAND_ECC_ALGO_HAMMING;
 		else
 			/* Otherwise, BCH */
-			chip->ecc.algo = NAND_ECC_BCH;
+			chip->ecc.algo = NAND_ECC_ALGO_BCH;
 	}
 
-	if (chip->ecc.algo == NAND_ECC_HAMMING && (chip->ecc.strength != 1 ||
-						   chip->ecc.size != 512)) {
+	if (chip->ecc.algo == NAND_ECC_ALGO_HAMMING &&
+	    (chip->ecc.strength != 1 || chip->ecc.size != 512)) {
 		dev_err(ctrl->dev, "invalid Hamming params: %d bits per %d bytes\n",
 			chip->ecc.strength, chip->ecc.size);
 		return -EINVAL;
@@ -2574,7 +2574,7 @@ static int brcmnand_setup_dev(struct brcmnand_host *host)
 
 	switch (chip->ecc.size) {
 	case 512:
-		if (chip->ecc.algo == NAND_ECC_HAMMING)
+		if (chip->ecc.algo == NAND_ECC_ALGO_HAMMING)
 			cfg->ecc_level = 15;
 		else
 			cfg->ecc_level = chip->ecc.strength;
diff --git a/drivers/mtd/nand/raw/davinci_nand.c b/drivers/mtd/nand/raw/davinci_nand.c
index 2e5d6c113b56..3640c7e45e15 100644
--- a/drivers/mtd/nand/raw/davinci_nand.c
+++ b/drivers/mtd/nand/raw/davinci_nand.c
@@ -593,11 +593,11 @@ static int davinci_nand_attach_chip(struct nand_chip *chip)
 		pdata->ecc_bits = 0;
 		/*
 		 * This driver expects Hamming based ECC when ecc_mode is set
-		 * to NAND_ECC_SOFT. Force ecc.algo to NAND_ECC_HAMMING to
+		 * to NAND_ECC_SOFT. Force ecc.algo to NAND_ECC_ALGO_HAMMING to
 		 * avoid adding an extra ->ecc_algo field to
 		 * davinci_nand_pdata.
 		 */
-		info->chip.ecc.algo = NAND_ECC_HAMMING;
+		info->chip.ecc.algo = NAND_ECC_ALGO_HAMMING;
 		break;
 	case NAND_ECC_HW:
 		if (pdata->ecc_bits == 4) {
@@ -629,7 +629,7 @@ static int davinci_nand_attach_chip(struct nand_chip *chip)
 			info->chip.ecc.hwctl = nand_davinci_hwctl_4bit;
 			info->chip.ecc.bytes = 10;
 			info->chip.ecc.options = NAND_ECC_GENERIC_ERASED_CHECK;
-			info->chip.ecc.algo = NAND_ECC_BCH;
+			info->chip.ecc.algo = NAND_ECC_ALGO_BCH;
 
 			/*
 			 * Update ECC layout if needed ... for 1-bit HW ECC, the
@@ -656,7 +656,7 @@ static int davinci_nand_attach_chip(struct nand_chip *chip)
 			info->chip.ecc.correct = nand_davinci_correct_1bit;
 			info->chip.ecc.hwctl = nand_davinci_hwctl_1bit;
 			info->chip.ecc.bytes = 3;
-			info->chip.ecc.algo = NAND_ECC_HAMMING;
+			info->chip.ecc.algo = NAND_ECC_ALGO_HAMMING;
 		}
 		info->chip.ecc.size = 512;
 		info->chip.ecc.strength = pdata->ecc_bits;
diff --git a/drivers/mtd/nand/raw/fsl_elbc_nand.c b/drivers/mtd/nand/raw/fsl_elbc_nand.c
index 088692b2e27a..da89389faaae 100644
--- a/drivers/mtd/nand/raw/fsl_elbc_nand.c
+++ b/drivers/mtd/nand/raw/fsl_elbc_nand.c
@@ -748,7 +748,7 @@ static int fsl_elbc_attach_chip(struct nand_chip *chip)
 		} else {
 			/* otherwise fall back to default software ECC */
 			chip->ecc.mode = NAND_ECC_SOFT;
-			chip->ecc.algo = NAND_ECC_HAMMING;
+			chip->ecc.algo = NAND_ECC_ALGO_HAMMING;
 		}
 		break;
 
diff --git a/drivers/mtd/nand/raw/fsl_ifc_nand.c b/drivers/mtd/nand/raw/fsl_ifc_nand.c
index 00ae7a910b03..b2ae759dd14e 100644
--- a/drivers/mtd/nand/raw/fsl_ifc_nand.c
+++ b/drivers/mtd/nand/raw/fsl_ifc_nand.c
@@ -926,7 +926,7 @@ static int fsl_ifc_chip_init(struct fsl_ifc_mtd *priv)
 		}
 	} else {
 		chip->ecc.mode = NAND_ECC_SOFT;
-		chip->ecc.algo = NAND_ECC_HAMMING;
+		chip->ecc.algo = NAND_ECC_ALGO_HAMMING;
 	}
 
 	ret = fsl_ifc_sram_init(priv);
diff --git a/drivers/mtd/nand/raw/fsl_upm.c b/drivers/mtd/nand/raw/fsl_upm.c
index 627deb26db51..49592b7e03a3 100644
--- a/drivers/mtd/nand/raw/fsl_upm.c
+++ b/drivers/mtd/nand/raw/fsl_upm.c
@@ -164,7 +164,7 @@ static int fun_chip_init(struct fsl_upm_nand *fun,
 	fun->chip.legacy.read_buf = fun_read_buf;
 	fun->chip.legacy.write_buf = fun_write_buf;
 	fun->chip.ecc.mode = NAND_ECC_SOFT;
-	fun->chip.ecc.algo = NAND_ECC_HAMMING;
+	fun->chip.ecc.algo = NAND_ECC_ALGO_HAMMING;
 	if (fun->mchip_count > 1)
 		fun->chip.legacy.select_chip = fun_select_chip;
 
diff --git a/drivers/mtd/nand/raw/fsmc_nand.c b/drivers/mtd/nand/raw/fsmc_nand.c
index 3909752b14c5..ced570987e85 100644
--- a/drivers/mtd/nand/raw/fsmc_nand.c
+++ b/drivers/mtd/nand/raw/fsmc_nand.c
@@ -911,7 +911,7 @@ static int fsmc_nand_attach_chip(struct nand_chip *nand)
 		break;
 
 	case NAND_ECC_SOFT:
-		if (nand->ecc.algo == NAND_ECC_BCH) {
+		if (nand->ecc.algo == NAND_ECC_ALGO_BCH) {
 			dev_info(host->dev,
 				 "Using 4-bit SW BCH ECC scheme\n");
 			break;
diff --git a/drivers/mtd/nand/raw/gpio.c b/drivers/mtd/nand/raw/gpio.c
index 938077e5c6a9..667807c7100b 100644
--- a/drivers/mtd/nand/raw/gpio.c
+++ b/drivers/mtd/nand/raw/gpio.c
@@ -276,7 +276,7 @@ static int gpio_nand_probe(struct platform_device *pdev)
 	nand_set_flash_node(chip, pdev->dev.of_node);
 	chip->legacy.IO_ADDR_W	= chip->legacy.IO_ADDR_R;
 	chip->ecc.mode		= NAND_ECC_SOFT;
-	chip->ecc.algo		= NAND_ECC_HAMMING;
+	chip->ecc.algo		= NAND_ECC_ALGO_HAMMING;
 	chip->options		= gpiomtd->plat.options;
 	chip->legacy.chip_delay	= gpiomtd->plat.chip_delay;
 	chip->legacy.cmd_ctrl	= gpio_nand_cmd_ctrl;
diff --git a/drivers/mtd/nand/raw/marvell_nand.c b/drivers/mtd/nand/raw/marvell_nand.c
index 260a0430313e..3969cca7d925 100644
--- a/drivers/mtd/nand/raw/marvell_nand.c
+++ b/drivers/mtd/nand/raw/marvell_nand.c
@@ -780,7 +780,7 @@ static void marvell_nfc_enable_hw_ecc(struct nand_chip *chip)
 		 * When enabling BCH, set threshold to 0 to always know the
 		 * number of corrected bitflips.
 		 */
-		if (chip->ecc.algo == NAND_ECC_BCH)
+		if (chip->ecc.algo == NAND_ECC_ALGO_BCH)
 			writel_relaxed(NDECCCTRL_BCH_EN, nfc->regs + NDECCCTRL);
 	}
 }
@@ -792,7 +792,7 @@ static void marvell_nfc_disable_hw_ecc(struct nand_chip *chip)
 
 	if (ndcr & NDCR_ECC_EN) {
 		writel_relaxed(ndcr & ~NDCR_ECC_EN, nfc->regs + NDCR);
-		if (chip->ecc.algo == NAND_ECC_BCH)
+		if (chip->ecc.algo == NAND_ECC_ALGO_BCH)
 			writel_relaxed(0, nfc->regs + NDECCCTRL);
 	}
 }
@@ -966,7 +966,7 @@ static int marvell_nfc_hw_ecc_check_bitflips(struct nand_chip *chip,
 	if (ndsr & NDSR_CORERR) {
 		writel_relaxed(ndsr, nfc->regs + NDSR);
 
-		if (chip->ecc.algo == NAND_ECC_BCH)
+		if (chip->ecc.algo == NAND_ECC_ALGO_BCH)
 			bf = NDSR_ERRCNT(ndsr);
 		else
 			bf = 1;
@@ -2215,7 +2215,7 @@ static int marvell_nand_hw_ecc_controller_init(struct mtd_info *mtd,
 	ecc->size = l->data_bytes;
 
 	if (ecc->strength == 1) {
-		chip->ecc.algo = NAND_ECC_HAMMING;
+		chip->ecc.algo = NAND_ECC_ALGO_HAMMING;
 		ecc->read_page_raw = marvell_nfc_hw_ecc_hmg_read_page_raw;
 		ecc->read_page = marvell_nfc_hw_ecc_hmg_read_page;
 		ecc->read_oob_raw = marvell_nfc_hw_ecc_hmg_read_oob_raw;
@@ -2225,7 +2225,7 @@ static int marvell_nand_hw_ecc_controller_init(struct mtd_info *mtd,
 		ecc->write_oob_raw = marvell_nfc_hw_ecc_hmg_write_oob_raw;
 		ecc->write_oob = ecc->write_oob_raw;
 	} else {
-		chip->ecc.algo = NAND_ECC_BCH;
+		chip->ecc.algo = NAND_ECC_ALGO_BCH;
 		ecc->strength = 16;
 		ecc->read_page_raw = marvell_nfc_hw_ecc_bch_read_page_raw;
 		ecc->read_page = marvell_nfc_hw_ecc_bch_read_page;
diff --git a/drivers/mtd/nand/raw/mpc5121_nfc.c b/drivers/mtd/nand/raw/mpc5121_nfc.c
index 18ecb096a32d..a67eded226db 100644
--- a/drivers/mtd/nand/raw/mpc5121_nfc.c
+++ b/drivers/mtd/nand/raw/mpc5121_nfc.c
@@ -689,7 +689,7 @@ static int mpc5121_nfc_probe(struct platform_device *op)
 	chip->legacy.get_features = nand_get_set_features_notsupp;
 	chip->bbt_options = NAND_BBT_USE_FLASH;
 	chip->ecc.mode = NAND_ECC_SOFT;
-	chip->ecc.algo = NAND_ECC_HAMMING;
+	chip->ecc.algo = NAND_ECC_ALGO_HAMMING;
 
 	/* Support external chip-select logic on ADS5121 board */
 	if (of_machine_is_compatible("fsl,mpc5121ads")) {
diff --git a/drivers/mtd/nand/raw/mxc_nand.c b/drivers/mtd/nand/raw/mxc_nand.c
index 09dacb83cb5a..c2e9759cfba8 100644
--- a/drivers/mtd/nand/raw/mxc_nand.c
+++ b/drivers/mtd/nand/raw/mxc_nand.c
@@ -1846,7 +1846,7 @@ static int mxcnd_probe(struct platform_device *pdev)
 		this->ecc.mode = NAND_ECC_HW;
 	} else {
 		this->ecc.mode = NAND_ECC_SOFT;
-		this->ecc.algo = NAND_ECC_HAMMING;
+		this->ecc.algo = NAND_ECC_ALGO_HAMMING;
 	}
 
 	/* NAND bus width determines access functions used by upper layer */
diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index fd0bfe9bf7ae..4cf53b9dddee 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -5076,9 +5076,9 @@ enum nand_ecc_placement of_get_nand_ecc_placement(struct device_node *np)
 }
 
 static const char * const nand_ecc_algos[] = {
-	[NAND_ECC_HAMMING]	= "hamming",
-	[NAND_ECC_BCH]		= "bch",
-	[NAND_ECC_RS]		= "rs",
+	[NAND_ECC_ALGO_HAMMING]	= "hamming",
+	[NAND_ECC_ALGO_BCH]	= "bch",
+	[NAND_ECC_ALGO_RS]	= "rs",
 };
 
 static enum nand_ecc_algo of_get_nand_ecc_algo(struct device_node *np)
@@ -5089,7 +5089,7 @@ static enum nand_ecc_algo of_get_nand_ecc_algo(struct device_node *np)
 
 	err = of_property_read_string(np, "nand-ecc-algo", &pm);
 	if (!err) {
-		for (ecc_algo = NAND_ECC_HAMMING;
+		for (ecc_algo = NAND_ECC_ALGO_HAMMING;
 		     ecc_algo < ARRAY_SIZE(nand_ecc_algos);
 		     ecc_algo++) {
 			if (!strcasecmp(pm, nand_ecc_algos[ecc_algo]))
@@ -5104,12 +5104,12 @@ static enum nand_ecc_algo of_get_nand_ecc_algo(struct device_node *np)
 	err = of_property_read_string(np, "nand-ecc-mode", &pm);
 	if (!err) {
 		if (!strcasecmp(pm, "soft"))
-			return NAND_ECC_HAMMING;
+			return NAND_ECC_ALGO_HAMMING;
 		else if (!strcasecmp(pm, "soft_bch"))
-			return NAND_ECC_BCH;
+			return NAND_ECC_ALGO_BCH;
 	}
 
-	return NAND_ECC_UNKNOWN;
+	return NAND_ECC_ALGO_UNKNOWN;
 }
 
 static int of_get_nand_ecc_step_size(struct device_node *np)
@@ -5178,7 +5178,7 @@ static int nand_dt_init(struct nand_chip *chip)
 	if (ecc_mode >= 0)
 		chip->ecc.mode = ecc_mode;
 
-	if (ecc_algo != NAND_ECC_UNKNOWN)
+	if (ecc_algo != NAND_ECC_ALGO_UNKNOWN)
 		chip->ecc.algo = ecc_algo;
 
 	if (ecc_strength >= 0)
@@ -5302,7 +5302,7 @@ static int nand_set_ecc_soft_ops(struct nand_chip *chip)
 		return -EINVAL;
 
 	switch (ecc->algo) {
-	case NAND_ECC_HAMMING:
+	case NAND_ECC_ALGO_HAMMING:
 		ecc->calculate = nand_calculate_ecc;
 		ecc->correct = nand_correct_data;
 		ecc->read_page = nand_read_page_swecc;
@@ -5323,7 +5323,7 @@ static int nand_set_ecc_soft_ops(struct nand_chip *chip)
 			ecc->options |= NAND_ECC_SOFT_HAMMING_SM_ORDER;
 
 		return 0;
-	case NAND_ECC_BCH:
+	case NAND_ECC_ALGO_BCH:
 		if (!mtd_nand_has_bch()) {
 			WARN(1, "CONFIG_MTD_NAND_ECC_SW_BCH not enabled\n");
 			return -EINVAL;
@@ -5763,7 +5763,7 @@ static int nand_scan_tail(struct nand_chip *chip)
 	 * If no default placement scheme is given, select an appropriate one.
 	 */
 	if (!mtd->ooblayout &&
-	    !(ecc->mode == NAND_ECC_SOFT && ecc->algo == NAND_ECC_BCH)) {
+	    !(ecc->mode == NAND_ECC_SOFT && ecc->algo == NAND_ECC_ALGO_BCH)) {
 		switch (mtd->oobsize) {
 		case 8:
 		case 16:
@@ -5858,7 +5858,7 @@ static int nand_scan_tail(struct nand_chip *chip)
 			pr_warn("%d byte HW ECC not possible on %d byte page size, fallback to SW ECC\n",
 				ecc->size, mtd->writesize);
 			ecc->mode = NAND_ECC_SOFT;
-			ecc->algo = NAND_ECC_HAMMING;
+			ecc->algo = NAND_ECC_ALGO_HAMMING;
 			break;
 
 		default:
@@ -6124,7 +6124,7 @@ EXPORT_SYMBOL(nand_scan_with_ids);
 void nand_cleanup(struct nand_chip *chip)
 {
 	if (chip->ecc.mode == NAND_ECC_SOFT &&
-	    chip->ecc.algo == NAND_ECC_BCH)
+	    chip->ecc.algo == NAND_ECC_ALGO_BCH)
 		nand_bch_free((struct nand_bch_control *)chip->ecc.priv);
 
 	nanddev_cleanup(&chip->base);
diff --git a/drivers/mtd/nand/raw/nand_micron.c b/drivers/mtd/nand/raw/nand_micron.c
index 3589b4fce0d4..a43b4d17bc69 100644
--- a/drivers/mtd/nand/raw/nand_micron.c
+++ b/drivers/mtd/nand/raw/nand_micron.c
@@ -543,7 +543,7 @@ static int micron_nand_init(struct nand_chip *chip)
 		chip->ecc.bytes = chip->base.eccreq.strength * 2;
 		chip->ecc.size = 512;
 		chip->ecc.strength = chip->base.eccreq.strength;
-		chip->ecc.algo = NAND_ECC_BCH;
+		chip->ecc.algo = NAND_ECC_ALGO_BCH;
 		chip->ecc.read_page = micron_nand_read_page_on_die_ecc;
 		chip->ecc.write_page = micron_nand_write_page_on_die_ecc;
 
diff --git a/drivers/mtd/nand/raw/nandsim.c b/drivers/mtd/nand/raw/nandsim.c
index 0a5cb77966cc..9bcf1b9d4987 100644
--- a/drivers/mtd/nand/raw/nandsim.c
+++ b/drivers/mtd/nand/raw/nandsim.c
@@ -2235,7 +2235,7 @@ static int ns_attach_chip(struct nand_chip *chip)
 	}
 
 	chip->ecc.mode = NAND_ECC_SOFT;
-	chip->ecc.algo = NAND_ECC_BCH;
+	chip->ecc.algo = NAND_ECC_ALGO_BCH;
 	chip->ecc.size = 512;
 	chip->ecc.strength = bch;
 	chip->ecc.bytes = eccbytes;
@@ -2275,7 +2275,7 @@ static int __init ns_init_module(void)
 	nand_set_controller_data(chip, (void *)ns);
 
 	chip->ecc.mode   = NAND_ECC_SOFT;
-	chip->ecc.algo   = NAND_ECC_HAMMING;
+	chip->ecc.algo   = NAND_ECC_ALGO_HAMMING;
 	/* The NAND_SKIP_BBTSCAN option is necessary for 'overridesize' */
 	/* and 'badblocks' parameters to work */
 	chip->options   |= NAND_SKIP_BBTSCAN;
diff --git a/drivers/mtd/nand/raw/omap2.c b/drivers/mtd/nand/raw/omap2.c
index eb7fcfd9276b..967ddbda1c48 100644
--- a/drivers/mtd/nand/raw/omap2.c
+++ b/drivers/mtd/nand/raw/omap2.c
@@ -2011,7 +2011,7 @@ static int omap_nand_attach_chip(struct nand_chip *chip)
 	 */
 	if (info->ecc_opt == OMAP_ECC_HAM1_CODE_SW) {
 		chip->ecc.mode = NAND_ECC_SOFT;
-		chip->ecc.algo = NAND_ECC_HAMMING;
+		chip->ecc.algo = NAND_ECC_ALGO_HAMMING;
 		return 0;
 	}
 
diff --git a/drivers/mtd/nand/raw/orion_nand.c b/drivers/mtd/nand/raw/orion_nand.c
index 880b54ca1b41..7a5cfa3d883f 100644
--- a/drivers/mtd/nand/raw/orion_nand.c
+++ b/drivers/mtd/nand/raw/orion_nand.c
@@ -140,7 +140,7 @@ static int __init orion_nand_probe(struct platform_device *pdev)
 	nc->legacy.cmd_ctrl = orion_nand_cmd_ctrl;
 	nc->legacy.read_buf = orion_nand_read_buf;
 	nc->ecc.mode = NAND_ECC_SOFT;
-	nc->ecc.algo = NAND_ECC_HAMMING;
+	nc->ecc.algo = NAND_ECC_ALGO_HAMMING;
 
 	if (board->chip_delay)
 		nc->legacy.chip_delay = board->chip_delay;
diff --git a/drivers/mtd/nand/raw/pasemi_nand.c b/drivers/mtd/nand/raw/pasemi_nand.c
index d8eca8c3fdcd..3eddc284614d 100644
--- a/drivers/mtd/nand/raw/pasemi_nand.c
+++ b/drivers/mtd/nand/raw/pasemi_nand.c
@@ -133,7 +133,7 @@ static int pasemi_nand_probe(struct platform_device *ofdev)
 	chip->legacy.write_buf = pasemi_write_buf;
 	chip->legacy.chip_delay = 0;
 	chip->ecc.mode = NAND_ECC_SOFT;
-	chip->ecc.algo = NAND_ECC_HAMMING;
+	chip->ecc.algo = NAND_ECC_ALGO_HAMMING;
 
 	/* Enable the following for a flash based bad block table */
 	chip->bbt_options = NAND_BBT_USE_FLASH;
diff --git a/drivers/mtd/nand/raw/plat_nand.c b/drivers/mtd/nand/raw/plat_nand.c
index 556182f26057..dbc089c8872f 100644
--- a/drivers/mtd/nand/raw/plat_nand.c
+++ b/drivers/mtd/nand/raw/plat_nand.c
@@ -67,7 +67,7 @@ static int plat_nand_probe(struct platform_device *pdev)
 	data->chip.bbt_options |= pdata->chip.bbt_options;
 
 	data->chip.ecc.mode = NAND_ECC_SOFT;
-	data->chip.ecc.algo = NAND_ECC_HAMMING;
+	data->chip.ecc.algo = NAND_ECC_ALGO_HAMMING;
 
 	platform_set_drvdata(pdev, data);
 
diff --git a/drivers/mtd/nand/raw/s3c2410.c b/drivers/mtd/nand/raw/s3c2410.c
index f86dff311464..dfe5a0f07385 100644
--- a/drivers/mtd/nand/raw/s3c2410.c
+++ b/drivers/mtd/nand/raw/s3c2410.c
@@ -938,11 +938,11 @@ static int s3c2410_nand_attach_chip(struct nand_chip *chip)
 	case NAND_ECC_SOFT:
 		/*
 		 * This driver expects Hamming based ECC when ecc_mode is set
-		 * to NAND_ECC_SOFT. Force ecc.algo to NAND_ECC_HAMMING to
+		 * to NAND_ECC_SOFT. Force ecc.algo to NAND_ECC_ALGO_HAMMING to
 		 * avoid adding an extra ecc_algo field to
 		 * s3c2410_platform_nand.
 		 */
-		chip->ecc.algo = NAND_ECC_HAMMING;
+		chip->ecc.algo = NAND_ECC_ALGO_HAMMING;
 		dev_info(info->device, "soft ECC\n");
 		break;
 
diff --git a/drivers/mtd/nand/raw/sh_flctl.c b/drivers/mtd/nand/raw/sh_flctl.c
index a661b8bb2dd5..9dbd6fdbe264 100644
--- a/drivers/mtd/nand/raw/sh_flctl.c
+++ b/drivers/mtd/nand/raw/sh_flctl.c
@@ -1045,7 +1045,7 @@ static int flctl_chip_attach_chip(struct nand_chip *chip)
 		flctl->flcmncr_base |= _4ECCEN;
 	} else {
 		chip->ecc.mode = NAND_ECC_SOFT;
-		chip->ecc.algo = NAND_ECC_HAMMING;
+		chip->ecc.algo = NAND_ECC_ALGO_HAMMING;
 	}
 
 	return 0;
diff --git a/drivers/mtd/nand/raw/socrates_nand.c b/drivers/mtd/nand/raw/socrates_nand.c
index 243b34cfbc1b..72a3a7f98282 100644
--- a/drivers/mtd/nand/raw/socrates_nand.c
+++ b/drivers/mtd/nand/raw/socrates_nand.c
@@ -154,7 +154,7 @@ static int socrates_nand_probe(struct platform_device *ofdev)
 	nand_chip->legacy.dev_ready = socrates_nand_device_ready;
 
 	nand_chip->ecc.mode = NAND_ECC_SOFT;	/* enable ECC */
-	nand_chip->ecc.algo = NAND_ECC_HAMMING;
+	nand_chip->ecc.algo = NAND_ECC_ALGO_HAMMING;
 
 	/* TODO: I have no idea what real delay is. */
 	nand_chip->legacy.chip_delay = 20;	/* 20us command delay time */
diff --git a/drivers/mtd/nand/raw/tango_nand.c b/drivers/mtd/nand/raw/tango_nand.c
index 246871e01027..2154b6f860dd 100644
--- a/drivers/mtd/nand/raw/tango_nand.c
+++ b/drivers/mtd/nand/raw/tango_nand.c
@@ -512,7 +512,7 @@ static int tango_attach_chip(struct nand_chip *chip)
 	struct nand_ecc_ctrl *ecc = &chip->ecc;
 
 	ecc->mode = NAND_ECC_HW;
-	ecc->algo = NAND_ECC_BCH;
+	ecc->algo = NAND_ECC_ALGO_BCH;
 	ecc->bytes = DIV_ROUND_UP(ecc->strength * FIELD_ORDER, BITS_PER_BYTE);
 
 	ecc->read_page_raw = tango_read_page_raw;
diff --git a/drivers/mtd/nand/raw/tegra_nand.c b/drivers/mtd/nand/raw/tegra_nand.c
index f9d046b2cd3b..e2e13effc8a6 100644
--- a/drivers/mtd/nand/raw/tegra_nand.c
+++ b/drivers/mtd/nand/raw/tegra_nand.c
@@ -479,7 +479,7 @@ static void tegra_nand_hw_ecc(struct tegra_nand_controller *ctrl,
 {
 	struct tegra_nand_chip *nand = to_tegra_chip(chip);
 
-	if (chip->ecc.algo == NAND_ECC_BCH && enable)
+	if (chip->ecc.algo == NAND_ECC_ALGO_BCH && enable)
 		writel_relaxed(nand->bch_config, ctrl->regs + BCH_CONFIG);
 	else
 		writel_relaxed(0, ctrl->regs + BCH_CONFIG);
@@ -877,7 +877,7 @@ static int tegra_nand_select_strength(struct nand_chip *chip, int oobsize)
 	int strength_len, bits_per_step;
 
 	switch (chip->ecc.algo) {
-	case NAND_ECC_RS:
+	case NAND_ECC_ALGO_RS:
 		bits_per_step = BITS_PER_STEP_RS;
 		if (chip->options & NAND_IS_BOOT_MEDIUM) {
 			strength = rs_strength_bootable;
@@ -887,7 +887,7 @@ static int tegra_nand_select_strength(struct nand_chip *chip, int oobsize)
 			strength_len = ARRAY_SIZE(rs_strength);
 		}
 		break;
-	case NAND_ECC_BCH:
+	case NAND_ECC_ALGO_BCH:
 		bits_per_step = BITS_PER_STEP_BCH;
 		if (chip->options & NAND_IS_BOOT_MEDIUM) {
 			strength = bch_strength_bootable;
@@ -935,14 +935,14 @@ static int tegra_nand_attach_chip(struct nand_chip *chip)
 	if (chip->options & NAND_BUSWIDTH_16)
 		nand->config |= CONFIG_BUS_WIDTH_16;
 
-	if (chip->ecc.algo == NAND_ECC_UNKNOWN) {
+	if (chip->ecc.algo == NAND_ECC_ALGO_UNKNOWN) {
 		if (mtd->writesize < 2048)
-			chip->ecc.algo = NAND_ECC_RS;
+			chip->ecc.algo = NAND_ECC_ALGO_RS;
 		else
-			chip->ecc.algo = NAND_ECC_BCH;
+			chip->ecc.algo = NAND_ECC_ALGO_BCH;
 	}
 
-	if (chip->ecc.algo == NAND_ECC_BCH && mtd->writesize < 2048) {
+	if (chip->ecc.algo == NAND_ECC_ALGO_BCH && mtd->writesize < 2048) {
 		dev_err(ctrl->dev, "BCH supports 2K or 4K page size only\n");
 		return -EINVAL;
 	}
@@ -963,7 +963,7 @@ static int tegra_nand_attach_chip(struct nand_chip *chip)
 			   CONFIG_SKIP_SPARE_SIZE_4;
 
 	switch (chip->ecc.algo) {
-	case NAND_ECC_RS:
+	case NAND_ECC_ALGO_RS:
 		bits_per_step = BITS_PER_STEP_RS * chip->ecc.strength;
 		mtd_set_ooblayout(mtd, &tegra_nand_oob_rs_ops);
 		nand->config_ecc |= CONFIG_HW_ECC | CONFIG_ECC_SEL |
@@ -984,7 +984,7 @@ static int tegra_nand_attach_chip(struct nand_chip *chip)
 			return -EINVAL;
 		}
 		break;
-	case NAND_ECC_BCH:
+	case NAND_ECC_ALGO_BCH:
 		bits_per_step = BITS_PER_STEP_BCH * chip->ecc.strength;
 		mtd_set_ooblayout(mtd, &tegra_nand_oob_bch_ops);
 		nand->bch_config = BCH_ENABLE;
@@ -1013,7 +1013,7 @@ static int tegra_nand_attach_chip(struct nand_chip *chip)
 	}
 
 	dev_info(ctrl->dev, "Using %s with strength %d per 512 byte step\n",
-		 chip->ecc.algo == NAND_ECC_BCH ? "BCH" : "RS",
+		 chip->ecc.algo == NAND_ECC_ALGO_BCH ? "BCH" : "RS",
 		 chip->ecc.strength);
 
 	chip->ecc.bytes = DIV_ROUND_UP(bits_per_step, BITS_PER_BYTE);
diff --git a/drivers/mtd/nand/raw/xway_nand.c b/drivers/mtd/nand/raw/xway_nand.c
index 94bfba994326..909072e82a68 100644
--- a/drivers/mtd/nand/raw/xway_nand.c
+++ b/drivers/mtd/nand/raw/xway_nand.c
@@ -181,7 +181,7 @@ static int xway_nand_probe(struct platform_device *pdev)
 	data->chip.legacy.chip_delay = 30;
 
 	data->chip.ecc.mode = NAND_ECC_SOFT;
-	data->chip.ecc.algo = NAND_ECC_HAMMING;
+	data->chip.ecc.algo = NAND_ECC_ALGO_HAMMING;
 
 	platform_set_drvdata(pdev, data);
 	nand_set_controller_data(&data->chip, data);
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 6699ec7f4d40..8d040312c301 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -108,16 +108,16 @@ enum nand_ecc_placement {
 
 /**
  * enum nand_ecc_algo - NAND ECC algorithm
- * @NAND_ECC_UNKNOWN: Unknown algorithm
- * @NAND_ECC_HAMMING: Hamming algorithm
- * @NAND_ECC_BCH: Bose-Chaudhuri-Hocquenghem algorithm
- * @NAND_ECC_RS: Reed-Solomon algorithm
+ * @NAND_ECC_ALGO_UNKNOWN: Unknown algorithm
+ * @NAND_ECC_ALGO_HAMMING: Hamming algorithm
+ * @NAND_ECC_ALGO_BCH: Bose-Chaudhuri-Hocquenghem algorithm
+ * @NAND_ECC_ALGO_RS: Reed-Solomon algorithm
  */
 enum nand_ecc_algo {
-	NAND_ECC_UNKNOWN,
-	NAND_ECC_HAMMING,
-	NAND_ECC_BCH,
-	NAND_ECC_RS,
+	NAND_ECC_ALGO_UNKNOWN,
+	NAND_ECC_ALGO_HAMMING,
+	NAND_ECC_ALGO_BCH,
+	NAND_ECC_ALGO_RS,
 };
 
 /*
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
