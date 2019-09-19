Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB4AB8177
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 21:37:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XuiVQIwNsZjI+QkmO4+hMrEsXjpl7U7s5itWKjdQ/wM=; b=p+Q28J042lCyO7
	nSSSemraNuO69dqmoZ3gOSAVsKpGnK4l2JsZKraynKS4vZ1DJTlTySJX5lVQ6aVbIfeQN2+9Wb/9z
	wZTr543QXV+shllzO3GAo2YoEEhYecQvSEds6eWaCgeiNvGtjIFQ7ePkbQU8GCD4HS4WGJR0fn/Hd
	2UyQtbz5F/h7A6drdNunHjb2nOjTX54S5d7wk+pPCvqmwtPOXZ9dUn79Qjo5FkoYo6uYV/zaZuzTm
	NF2HHwsXHREzy7b/swCy6duY+f5eTc7fX5ZBwQkEKnkezP0gr2RULvTaiK3WxRAQu8xRmEBkYQUyS
	5cEgPAA7TjC2kS26STIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB2Ez-0005Qo-CM; Thu, 19 Sep 2019 19:37:21 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB29l-0001s0-Ek; Thu, 19 Sep 2019 19:32:00 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 013E0240002;
 Thu, 19 Sep 2019 19:31:53 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH v3 04/40] mtd: rawnand: Separate the ECC engine type and the
 OOB placement
Date: Thu, 19 Sep 2019 21:31:04 +0200
Message-Id: <20190919193141.7865-5-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190919193141.7865-1-miquel.raynal@bootlin.com>
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_123157_927061_4EAAE179 
X-CRM114-Status: GOOD (  20.43  )
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

The use of "OOB_FIRST" or "SYNDROME" placements should not be encoded
in the ECC engine mode (also called type, or provider).

Create a "placement" field in NAND chip and change all occurrences of
the NAND_ECC_HW_SYNDROME and NAND_ECC_HW_OOB_FIRST enumerations to be
just NAND_ECC_HW and possibly a placement entry like
NAND_ECC_SYNDROME_OOB_PLACEMENT or NAND_ECC_OOB_FIRST_PLACEMENT.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 arch/arm/mach-davinci/board-dm355-leopard.c |   3 +-
 drivers/mtd/nand/raw/cafe_nand.c            |   3 +-
 drivers/mtd/nand/raw/davinci_nand.c         |   8 +-
 drivers/mtd/nand/raw/denali.c               |   3 +-
 drivers/mtd/nand/raw/diskonchip.c           |   3 +-
 drivers/mtd/nand/raw/ingenic/jz4740_nand.c  |   3 +-
 drivers/mtd/nand/raw/lpc32xx_slc.c          |   3 +-
 drivers/mtd/nand/raw/nand_base.c            | 125 ++++++++++----------
 drivers/mtd/nand/raw/r852.c                 |   3 +-
 include/linux/mtd/rawnand.h                 |   6 +-
 include/linux/platform_data/mtd-davinci.h   |   1 +
 11 files changed, 89 insertions(+), 72 deletions(-)

diff --git a/arch/arm/mach-davinci/board-dm355-leopard.c b/arch/arm/mach-davinci/board-dm355-leopard.c
index b9e9950dd300..99f4388e8864 100644
--- a/arch/arm/mach-davinci/board-dm355-leopard.c
+++ b/arch/arm/mach-davinci/board-dm355-leopard.c
@@ -76,7 +76,8 @@ static struct davinci_nand_pdata davinci_nand_data = {
 	.mask_chipsel		= BIT(14),
 	.parts			= davinci_nand_partitions,
 	.nr_parts		= ARRAY_SIZE(davinci_nand_partitions),
-	.ecc_mode		= NAND_ECC_HW_SYNDROME,
+	.ecc_mode		= NAND_ECC_HW,
+	.ecc_oob_placement	= NAND_ECC_SYNDROME_OOB_PLACEMENT,
 	.ecc_bits		= 4,
 	.bbt_options		= NAND_BBT_USE_FLASH,
 };
diff --git a/drivers/mtd/nand/raw/cafe_nand.c b/drivers/mtd/nand/raw/cafe_nand.c
index 2d1c22dc88c1..56b02ddbffd6 100644
--- a/drivers/mtd/nand/raw/cafe_nand.c
+++ b/drivers/mtd/nand/raw/cafe_nand.c
@@ -634,7 +634,8 @@ static int cafe_nand_attach_chip(struct nand_chip *chip)
 		goto out_free_dma;
 	}
 
-	cafe->nand.ecc.mode = NAND_ECC_HW_SYNDROME;
+	cafe->nand.ecc.mode = NAND_ECC_HW;
+	cafe->nand.ecc.placement = NAND_ECC_SYNDROME_OOB_PLACEMENT;
 	cafe->nand.ecc.size = mtd->writesize;
 	cafe->nand.ecc.bytes = 14;
 	cafe->nand.ecc.strength = 4;
diff --git a/drivers/mtd/nand/raw/davinci_nand.c b/drivers/mtd/nand/raw/davinci_nand.c
index 25c185bea50c..5f5fcff46944 100644
--- a/drivers/mtd/nand/raw/davinci_nand.c
+++ b/drivers/mtd/nand/raw/davinci_nand.c
@@ -207,7 +207,7 @@ static int nand_davinci_correct_1bit(struct nand_chip *chip, u_char *dat,
 /*
  * 4-bit hardware ECC ... context maintained over entire AEMIF
  *
- * This is a syndrome engine, but we avoid NAND_ECC_HW_SYNDROME
+ * This is a syndrome engine, but we avoid NAND_ECC_SYNDROME_OOB_PLACEMENT
  * since that forces use of a problematic "infix OOB" layout.
  * Among other things, it trashes manufacturer bad block markers.
  * Also, and specific to this hardware, it ECC-protects the "prepad"
@@ -672,7 +672,8 @@ static int davinci_nand_attach_chip(struct nand_chip *chip)
 			mtd_set_ooblayout(mtd, &hwecc4_small_ooblayout_ops);
 		} else if (chunks == 4 || chunks == 8) {
 			mtd_set_ooblayout(mtd, &nand_ooblayout_lp_ops);
-			info->chip.ecc.mode = NAND_ECC_HW_OOB_FIRST;
+			info->chip.ecc.mode = NAND_ECC_HW;
+			info->chip.ecc.placement = NAND_ECC_OOB_FIRST_PLACEMENT;
 		} else {
 			return -EIO;
 		}
@@ -777,6 +778,7 @@ static int nand_davinci_probe(struct platform_device *pdev)
 
 	/* Use board-specific ECC config */
 	info->chip.ecc.mode	= pdata->ecc_mode;
+	info->chip.ecc.placement = pdata->oob_placement;
 
 	spin_lock_irq(&davinci_nand_lock);
 
@@ -819,7 +821,7 @@ static int nand_davinci_remove(struct platform_device *pdev)
 	struct davinci_nand_info *info = platform_get_drvdata(pdev);
 
 	spin_lock_irq(&davinci_nand_lock);
-	if (info->chip.ecc.mode == NAND_ECC_HW_SYNDROME)
+	if (info->chip.ecc.placement == NAND_ECC_SYNDROME_OOB_PLACEMENT)
 		ecc4_busy = false;
 	spin_unlock_irq(&davinci_nand_lock);
 
diff --git a/drivers/mtd/nand/raw/denali.c b/drivers/mtd/nand/raw/denali.c
index 3102ddbd8abd..27233f1dc449 100644
--- a/drivers/mtd/nand/raw/denali.c
+++ b/drivers/mtd/nand/raw/denali.c
@@ -1215,7 +1215,8 @@ int denali_chip_init(struct denali_controller *denali,
 	chip->bbt_options |= NAND_BBT_USE_FLASH;
 	chip->bbt_options |= NAND_BBT_NO_OOB;
 	chip->options |= NAND_NO_SUBPAGE_WRITE;
-	chip->ecc.mode = NAND_ECC_HW_SYNDROME;
+	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.placement = NAND_ECC_SYNDROME_OOB_PLACEMENT;
 	chip->ecc.read_page = denali_read_page;
 	chip->ecc.write_page = denali_write_page;
 	chip->ecc.read_page_raw = denali_read_page_raw;
diff --git a/drivers/mtd/nand/raw/diskonchip.c b/drivers/mtd/nand/raw/diskonchip.c
index c0e1a8ebe820..b4d55e49600c 100644
--- a/drivers/mtd/nand/raw/diskonchip.c
+++ b/drivers/mtd/nand/raw/diskonchip.c
@@ -1583,7 +1583,8 @@ static int __init doc_probe(unsigned long physadr)
 	nand->ecc.calculate	= doc200x_calculate_ecc;
 	nand->ecc.correct	= doc200x_correct_data;
 
-	nand->ecc.mode		= NAND_ECC_HW_SYNDROME;
+	nand->ecc.mode		= NAND_ECC_HW;
+	nand->ecc.placement	= NAND_ECC_SYNDROME_OOB_PLACEMENT;
 	nand->ecc.size		= 512;
 	nand->ecc.bytes		= 6;
 	nand->ecc.strength	= 2;
diff --git a/drivers/mtd/nand/raw/ingenic/jz4740_nand.c b/drivers/mtd/nand/raw/ingenic/jz4740_nand.c
index acdf674fcc87..ed6d21fa0b00 100644
--- a/drivers/mtd/nand/raw/ingenic/jz4740_nand.c
+++ b/drivers/mtd/nand/raw/ingenic/jz4740_nand.c
@@ -413,7 +413,8 @@ static int jz_nand_probe(struct platform_device *pdev)
 	chip->ecc.hwctl		= jz_nand_hwctl;
 	chip->ecc.calculate	= jz_nand_calculate_ecc_rs;
 	chip->ecc.correct	= jz_nand_correct_ecc_rs;
-	chip->ecc.mode		= NAND_ECC_HW_OOB_FIRST;
+	chip->ecc.mode		= NAND_ECC_HW;
+	chip->ecc.placement	= NAND_ECC_OOB_FIRST_PLACEMENT;
 	chip->ecc.size		= 512;
 	chip->ecc.bytes		= 9;
 	chip->ecc.strength	= 4;
diff --git a/drivers/mtd/nand/raw/lpc32xx_slc.c b/drivers/mtd/nand/raw/lpc32xx_slc.c
index 163f976353f8..4b9f3fd678b9 100644
--- a/drivers/mtd/nand/raw/lpc32xx_slc.c
+++ b/drivers/mtd/nand/raw/lpc32xx_slc.c
@@ -881,7 +881,8 @@ static int lpc32xx_nand_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, host);
 
 	/* NAND callbacks for LPC32xx SLC hardware */
-	chip->ecc.mode = NAND_ECC_HW_SYNDROME;
+	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.placement = NAND_ECC_SYNDROME_OOB_PLACEMENT;
 	chip->legacy.read_byte = lpc32xx_nand_read_byte;
 	chip->legacy.read_buf = lpc32xx_nand_read_buf;
 	chip->legacy.write_buf = lpc32xx_nand_write_buf;
diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 74e9289e931c..9a05ebfc44d1 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -5588,73 +5588,78 @@ static int nand_scan_tail(struct nand_chip *chip)
 	 */
 
 	switch (ecc->mode) {
-	case NAND_ECC_HW_OOB_FIRST:
-		/* Similar to NAND_ECC_HW, but a separate read_page handle */
-		if (!ecc->calculate || !ecc->correct || !ecc->hwctl) {
-			WARN(1, "No ECC functions supplied; hardware ECC not possible\n");
-			ret = -EINVAL;
-			goto err_nand_manuf_cleanup;
-		}
-		if (!ecc->read_page)
-			ecc->read_page = nand_read_page_hwecc_oob_first;
-		/* fall through */
-
 	case NAND_ECC_HW:
-		/* Use standard hwecc read page function? */
-		if (!ecc->read_page)
-			ecc->read_page = nand_read_page_hwecc;
-		if (!ecc->write_page)
-			ecc->write_page = nand_write_page_hwecc;
-		if (!ecc->read_page_raw)
-			ecc->read_page_raw = nand_read_page_raw;
-		if (!ecc->write_page_raw)
-			ecc->write_page_raw = nand_write_page_raw;
-		if (!ecc->read_oob)
-			ecc->read_oob = nand_read_oob_std;
-		if (!ecc->write_oob)
-			ecc->write_oob = nand_write_oob_std;
-		if (!ecc->read_subpage)
-			ecc->read_subpage = nand_read_subpage;
-		if (!ecc->write_subpage && ecc->hwctl && ecc->calculate)
-			ecc->write_subpage = nand_write_subpage_hwecc;
-		/* fall through */
 
-	case NAND_ECC_HW_SYNDROME:
-		if ((!ecc->calculate || !ecc->correct || !ecc->hwctl) &&
-		    (!ecc->read_page ||
-		     ecc->read_page == nand_read_page_hwecc ||
-		     !ecc->write_page ||
-		     ecc->write_page == nand_write_page_hwecc)) {
-			WARN(1, "No ECC functions supplied; hardware ECC not possible\n");
-			ret = -EINVAL;
-			goto err_nand_manuf_cleanup;
-		}
-		/* Use standard syndrome read/write page function? */
-		if (!ecc->read_page)
-			ecc->read_page = nand_read_page_syndrome;
-		if (!ecc->write_page)
-			ecc->write_page = nand_write_page_syndrome;
-		if (!ecc->read_page_raw)
-			ecc->read_page_raw = nand_read_page_raw_syndrome;
-		if (!ecc->write_page_raw)
-			ecc->write_page_raw = nand_write_page_raw_syndrome;
-		if (!ecc->read_oob)
-			ecc->read_oob = nand_read_oob_syndrome;
-		if (!ecc->write_oob)
-			ecc->write_oob = nand_write_oob_syndrome;
+		switch (ecc->placement) {
+		case NAND_ECC_OOB_FIRST_PLACEMENT:
+			/*
+			 * Similar to NAND_ECC_HW, but a separate read_page handle */
+			if (!ecc->calculate || !ecc->correct || !ecc->hwctl) {
+				WARN(1, "No ECC functions supplied; hardware ECC not possible\n");
+				ret = -EINVAL;
+				goto err_nand_manuf_cleanup;
+			}
+			if (!ecc->read_page)
+				ecc->read_page = nand_read_page_hwecc_oob_first;
+			/* fall through */
 
-		if (mtd->writesize >= ecc->size) {
-			if (!ecc->strength) {
-				WARN(1, "Driver must set ecc.strength when using hardware ECC\n");
+		case NAND_ECC_DEFAULT_OOB_PLACEMENT:
+			/* Use standard hwecc read page function? */
+			if (!ecc->read_page)
+				ecc->read_page = nand_read_page_hwecc;
+			if (!ecc->write_page)
+				ecc->write_page = nand_write_page_hwecc;
+			if (!ecc->read_page_raw)
+				ecc->read_page_raw = nand_read_page_raw;
+			if (!ecc->write_page_raw)
+				ecc->write_page_raw = nand_write_page_raw;
+			if (!ecc->read_oob)
+				ecc->read_oob = nand_read_oob_std;
+			if (!ecc->write_oob)
+				ecc->write_oob = nand_write_oob_std;
+			if (!ecc->read_subpage)
+				ecc->read_subpage = nand_read_subpage;
+			if (!ecc->write_subpage && ecc->hwctl && ecc->calculate)
+				ecc->write_subpage = nand_write_subpage_hwecc;
+			/* fall through */
+
+		case NAND_ECC_SYNDROME_OOB_PLACEMENT:
+			if ((!ecc->calculate || !ecc->correct || !ecc->hwctl) &&
+			    (!ecc->read_page ||
+			     ecc->read_page == nand_read_page_hwecc ||
+			     !ecc->write_page ||
+			     ecc->write_page == nand_write_page_hwecc)) {
+				WARN(1, "No ECC functions supplied; hardware ECC not possible\n");
 				ret = -EINVAL;
 				goto err_nand_manuf_cleanup;
 			}
-			break;
+			/* Use standard syndrome read/write page function? */
+			if (!ecc->read_page)
+				ecc->read_page = nand_read_page_syndrome;
+			if (!ecc->write_page)
+				ecc->write_page = nand_write_page_syndrome;
+			if (!ecc->read_page_raw)
+				ecc->read_page_raw = nand_read_page_raw_syndrome;
+			if (!ecc->write_page_raw)
+				ecc->write_page_raw = nand_write_page_raw_syndrome;
+			if (!ecc->read_oob)
+				ecc->read_oob = nand_read_oob_syndrome;
+			if (!ecc->write_oob)
+				ecc->write_oob = nand_write_oob_syndrome;
+
+			if (mtd->writesize >= ecc->size) {
+				if (!ecc->strength) {
+					WARN(1, "Driver must set ecc.strength when using hardware ECC\n");
+					ret = -EINVAL;
+					goto err_nand_manuf_cleanup;
+				}
+				break;
+			}
+			pr_warn("%d byte HW ECC not possible on %d byte page size, fallback to SW ECC\n",
+				ecc->size, mtd->writesize);
+			ecc->mode = NAND_ECC_SOFT;
+			ecc->algo = NAND_ECC_HAMMING;
 		}
-		pr_warn("%d byte HW ECC not possible on %d byte page size, fallback to SW ECC\n",
-			ecc->size, mtd->writesize);
-		ecc->mode = NAND_ECC_SOFT;
-		ecc->algo = NAND_ECC_HAMMING;
 		/* fall through */
 
 	case NAND_ECC_SOFT:
diff --git a/drivers/mtd/nand/raw/r852.c b/drivers/mtd/nand/raw/r852.c
index dae0d235bb17..de4e6977cff4 100644
--- a/drivers/mtd/nand/raw/r852.c
+++ b/drivers/mtd/nand/raw/r852.c
@@ -857,7 +857,8 @@ static int  r852_probe(struct pci_dev *pci_dev, const struct pci_device_id *id)
 	chip->legacy.write_buf = r852_write_buf;
 
 	/* ecc */
-	chip->ecc.mode = NAND_ECC_HW_SYNDROME;
+	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.placement = NAND_ECC_SYNDROME_OOB_PLACEMENT;
 	chip->ecc.size = R852_DMA_LEN;
 	chip->ecc.bytes = SM_OOB_SIZE;
 	chip->ecc.strength = 2;
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 89f964816f2c..1b462fb2ab77 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -313,6 +313,7 @@ static const struct nand_ecc_caps __name = {			\
 /**
  * struct nand_ecc_ctrl - Control structure for ECC
  * @mode:	ECC mode
+ * @placement:	OOB bytes placement
  * @algo:	ECC algorithm
  * @steps:	number of ECC steps per page
  * @size:	data bytes per ECC step
@@ -340,7 +341,7 @@ static const struct nand_ecc_caps __name = {			\
  *			controller and always return contiguous in-band and
  *			out-of-band data even if they're not stored
  *			contiguously on the NAND chip (e.g.
- *			NAND_ECC_HW_SYNDROME interleaves in-band and
+ *			NAND_ECC_SYNDROME_OOB_PLACEMENT interleaves in-band and
  *			out-of-band data).
  * @write_page_raw:	function to write a raw page without ECC. This function
  *			should hide the specific layout used by the ECC
@@ -348,7 +349,7 @@ static const struct nand_ecc_caps __name = {			\
  *			in-band and out-of-band data. ECC controller is
  *			responsible for doing the appropriate transformations
  *			to adapt to its specific layout (e.g.
- *			NAND_ECC_HW_SYNDROME interleaves in-band and
+ *			NAND_ECC_SYNDROME_OOB_PLACEMENT interleaves in-band and
  *			out-of-band data).
  * @read_page:	function to read a page according to the ECC generator
  *		requirements; returns maximum number of bitflips corrected in
@@ -365,6 +366,7 @@ static const struct nand_ecc_caps __name = {			\
  */
 struct nand_ecc_ctrl {
 	enum nand_ecc_mode mode;
+	enum nand_ecc_engine_oob_placement placement;
 	enum nand_ecc_algo algo;
 	int steps;
 	int size;
diff --git a/include/linux/platform_data/mtd-davinci.h b/include/linux/platform_data/mtd-davinci.h
index 03e92c71b3fa..68ca9be60ba0 100644
--- a/include/linux/platform_data/mtd-davinci.h
+++ b/include/linux/platform_data/mtd-davinci.h
@@ -69,6 +69,7 @@ struct davinci_nand_pdata {		/* platform_data */
 	 * using it with large page chips.
 	 */
 	enum nand_ecc_mode	ecc_mode;
+	enum nand_ecc_engine_oob_placement oob_placement;
 	u8			ecc_bits;
 
 	/* e.g. NAND_BUSWIDTH_16 */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
