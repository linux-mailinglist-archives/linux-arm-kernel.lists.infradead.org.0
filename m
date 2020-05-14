Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB9C1D37F3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 19:22:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YY9f0pEe1svAvXAmT3gDcYS79J/0tt9o0tqik6Xyj1Y=; b=BchbdWRVzGIsRJ
	fvmQ/Th34SIyfbCwkArz8hJqn+krSlnPnLlwGSWlr12d88OHzgcH/rKq1zogltkVNOmBvYgfGNG/r
	q7r4ZLotxrBTkJgEMs5YQZtZ5kD8GC+BNKTQ8yWna+34X6oAHWyg0N3BaL+6JFOVSYZvfj55xnatp
	BhjakAHXRCI3muYvyx066c5ionzDb4fuMw+QD1dRjiVbgbrgJH95frXnSyaFI8sX2dm5h9PFg3UG1
	KuK3P79K7My4INFTsnfQIHihUx2RQn/2Vj4ub8Fbi4zrOBAl3WSl7VPf5xj9cq0cQyjUGtW9DyZNn
	R31HO6+GBN3Dy1bXM2wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZHZ8-0004fY-Ay; Thu, 14 May 2020 17:22:38 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZHTt-00057V-LA; Thu, 14 May 2020 17:17:15 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 7E7E4240008;
 Thu, 14 May 2020 17:17:10 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Subject: [PATCH v5 08/21] mtd: rawnand: Separate the ECC engine type and the
 OOB placement
Date: Thu, 14 May 2020 19:16:38 +0200
Message-Id: <20200514171651.24851-9-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200514171651.24851-1-miquel.raynal@bootlin.com>
References: <20200514171651.24851-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_101713_984688_44FE8F0E 
X-CRM114-Status: GOOD (  18.82  )
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

The use of "SYNDROME" placement should not be encoded in the ECC
engine mode (also called type, or provider).

Create a "placement" field in NAND chip and change all occurrences of
the NAND_ECC_HW_SYNDROME enumeration to be just NAND_ECC_HW and
possibly a placement entry like NAND_ECC_PLACEMENT_INTERLEAVED.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 arch/arm/mach-davinci/board-dm355-leopard.c |   3 +-
 drivers/mtd/nand/raw/cafe_nand.c            |   3 +-
 drivers/mtd/nand/raw/davinci_nand.c         |   5 +-
 drivers/mtd/nand/raw/denali.c               |   3 +-
 drivers/mtd/nand/raw/diskonchip.c           |   3 +-
 drivers/mtd/nand/raw/lpc32xx_slc.c          |   3 +-
 drivers/mtd/nand/raw/nand_base.c            | 108 +++++++++++---------
 drivers/mtd/nand/raw/r852.c                 |   3 +-
 include/linux/mtd/rawnand.h                 |   6 +-
 include/linux/platform_data/mtd-davinci.h   |   1 +
 10 files changed, 80 insertions(+), 58 deletions(-)

diff --git a/arch/arm/mach-davinci/board-dm355-leopard.c b/arch/arm/mach-davinci/board-dm355-leopard.c
index b9e9950dd300..4c8a592754ac 100644
--- a/arch/arm/mach-davinci/board-dm355-leopard.c
+++ b/arch/arm/mach-davinci/board-dm355-leopard.c
@@ -76,7 +76,8 @@ static struct davinci_nand_pdata davinci_nand_data = {
 	.mask_chipsel		= BIT(14),
 	.parts			= davinci_nand_partitions,
 	.nr_parts		= ARRAY_SIZE(davinci_nand_partitions),
-	.ecc_mode		= NAND_ECC_HW_SYNDROME,
+	.ecc_mode		= NAND_HW_ECC_ENGINE,
+	.ecc_placement		= NAND_ECC_PLACEMENT_INTERLEAVED,
 	.ecc_bits		= 4,
 	.bbt_options		= NAND_BBT_USE_FLASH,
 };
diff --git a/drivers/mtd/nand/raw/cafe_nand.c b/drivers/mtd/nand/raw/cafe_nand.c
index 2a0df13df5f3..6afafc8bda2a 100644
--- a/drivers/mtd/nand/raw/cafe_nand.c
+++ b/drivers/mtd/nand/raw/cafe_nand.c
@@ -629,7 +629,8 @@ static int cafe_nand_attach_chip(struct nand_chip *chip)
 		goto out_free_dma;
 	}
 
-	cafe->nand.ecc.mode = NAND_ECC_HW_SYNDROME;
+	cafe->nand.ecc.mode = NAND_ECC_HW;
+	cafe->nand.ecc.placement = NAND_ECC_PLACEMENT_INTERLEAVED;
 	cafe->nand.ecc.size = mtd->writesize;
 	cafe->nand.ecc.bytes = 14;
 	cafe->nand.ecc.strength = 4;
diff --git a/drivers/mtd/nand/raw/davinci_nand.c b/drivers/mtd/nand/raw/davinci_nand.c
index 5ea562098c8c..9ac1636fb9ae 100644
--- a/drivers/mtd/nand/raw/davinci_nand.c
+++ b/drivers/mtd/nand/raw/davinci_nand.c
@@ -207,7 +207,7 @@ static int nand_davinci_correct_1bit(struct nand_chip *chip, u_char *dat,
 /*
  * 4-bit hardware ECC ... context maintained over entire AEMIF
  *
- * This is a syndrome engine, but we avoid NAND_ECC_HW_SYNDROME
+ * This is a syndrome engine, but we avoid NAND_ECC_PLACEMENT_INTERLEAVED
  * since that forces use of a problematic "infix OOB" layout.
  * Among other things, it trashes manufacturer bad block markers.
  * Also, and specific to this hardware, it ECC-protects the "prepad"
@@ -847,6 +847,7 @@ static int nand_davinci_probe(struct platform_device *pdev)
 
 	/* Use board-specific ECC config */
 	info->chip.ecc.mode	= pdata->ecc_mode;
+	info->chip.ecc.placement = pdata->ecc_placement;
 
 	spin_lock_irq(&davinci_nand_lock);
 
@@ -889,7 +890,7 @@ static int nand_davinci_remove(struct platform_device *pdev)
 	struct davinci_nand_info *info = platform_get_drvdata(pdev);
 
 	spin_lock_irq(&davinci_nand_lock);
-	if (info->chip.ecc.mode == NAND_ECC_HW_SYNDROME)
+	if (info->chip.ecc.placement == NAND_ECC_PLACEMENT_INTERLEAVED)
 		ecc4_busy = false;
 	spin_unlock_irq(&davinci_nand_lock);
 
diff --git a/drivers/mtd/nand/raw/denali.c b/drivers/mtd/nand/raw/denali.c
index 7a76b761dd0b..f52b59403895 100644
--- a/drivers/mtd/nand/raw/denali.c
+++ b/drivers/mtd/nand/raw/denali.c
@@ -1237,7 +1237,8 @@ int denali_chip_init(struct denali_controller *denali,
 	chip->bbt_options |= NAND_BBT_USE_FLASH;
 	chip->bbt_options |= NAND_BBT_NO_OOB;
 	chip->options |= NAND_NO_SUBPAGE_WRITE;
-	chip->ecc.mode = NAND_ECC_HW_SYNDROME;
+	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.placement = NAND_ECC_PLACEMENT_INTERLEAVED;
 	chip->ecc.read_page = denali_read_page;
 	chip->ecc.write_page = denali_write_page;
 	chip->ecc.read_page_raw = denali_read_page_raw;
diff --git a/drivers/mtd/nand/raw/diskonchip.c b/drivers/mtd/nand/raw/diskonchip.c
index 97f0b05b47c1..a836de521535 100644
--- a/drivers/mtd/nand/raw/diskonchip.c
+++ b/drivers/mtd/nand/raw/diskonchip.c
@@ -1456,7 +1456,8 @@ static int __init doc_probe(unsigned long physadr)
 	nand->ecc.calculate	= doc200x_calculate_ecc;
 	nand->ecc.correct	= doc200x_correct_data;
 
-	nand->ecc.mode		= NAND_ECC_HW_SYNDROME;
+	nand->ecc.mode		= NAND_ECC_HW;
+	nand->ecc.placement	= NAND_ECC_PLACEMENT_INTERLEAVED;
 	nand->ecc.size		= 512;
 	nand->ecc.bytes		= 6;
 	nand->ecc.strength	= 2;
diff --git a/drivers/mtd/nand/raw/lpc32xx_slc.c b/drivers/mtd/nand/raw/lpc32xx_slc.c
index 163f976353f8..522c7a276d6f 100644
--- a/drivers/mtd/nand/raw/lpc32xx_slc.c
+++ b/drivers/mtd/nand/raw/lpc32xx_slc.c
@@ -881,7 +881,8 @@ static int lpc32xx_nand_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, host);
 
 	/* NAND callbacks for LPC32xx SLC hardware */
-	chip->ecc.mode = NAND_ECC_HW_SYNDROME;
+	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.placement = NAND_ECC_PLACEMENT_INTERLEAVED;
 	chip->legacy.read_byte = lpc32xx_nand_read_byte;
 	chip->legacy.read_buf = lpc32xx_nand_read_buf;
 	chip->legacy.write_buf = lpc32xx_nand_write_buf;
diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index b84fb5e6ecbe..48529c21239c 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -5720,61 +5720,73 @@ static int nand_scan_tail(struct nand_chip *chip)
 
 	switch (ecc->mode) {
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
-		fallthrough;
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
+		case NAND_ECC_PLACEMENT_FREE:
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
+			fallthrough;
 
-		if (mtd->writesize >= ecc->size) {
-			if (!ecc->strength) {
-				WARN(1, "Driver must set ecc.strength when using hardware ECC\n");
+		case NAND_ECC_PLACEMENT_INTERLEAVED:
+			if ((!ecc->calculate || !ecc->correct || !ecc->hwctl) &&
+			    (!ecc->read_page ||
+			     ecc->read_page == nand_read_page_hwecc ||
+			     !ecc->write_page ||
+			     ecc->write_page == nand_write_page_hwecc)) {
+				WARN(1, "No ECC functions supplied; hardware ECC not possible\n");
 				ret = -EINVAL;
 				goto err_nand_manuf_cleanup;
 			}
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
 			break;
+
+		default:
+			pr_warn("Invalid NAND_ECC_PLACEMENT %d\n",
+				ecc->placement);
+			ret = -EINVAL;
+			goto err_nand_manuf_cleanup;
 		}
-		pr_warn("%d byte HW ECC not possible on %d byte page size, fallback to SW ECC\n",
-			ecc->size, mtd->writesize);
-		ecc->mode = NAND_ECC_SOFT;
-		ecc->algo = NAND_ECC_HAMMING;
 		fallthrough;
+
 	case NAND_ECC_SOFT:
 		ret = nand_set_ecc_soft_ops(chip);
 		if (ret) {
diff --git a/drivers/mtd/nand/raw/r852.c b/drivers/mtd/nand/raw/r852.c
index 77774250fb11..764715bae6a6 100644
--- a/drivers/mtd/nand/raw/r852.c
+++ b/drivers/mtd/nand/raw/r852.c
@@ -857,7 +857,8 @@ static int  r852_probe(struct pci_dev *pci_dev, const struct pci_device_id *id)
 	chip->legacy.write_buf = r852_write_buf;
 
 	/* ecc */
-	chip->ecc.mode = NAND_ECC_HW_SYNDROME;
+	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.placement = NAND_ECC_PLACEMENT_INTERLEAVED;
 	chip->ecc.size = R852_DMA_LEN;
 	chip->ecc.bytes = SM_OOB_SIZE;
 	chip->ecc.strength = 2;
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index dc1b38fccfcf..59021ceb9b00 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -323,6 +323,7 @@ static const struct nand_ecc_caps __name = {			\
 /**
  * struct nand_ecc_ctrl - Control structure for ECC
  * @mode:	ECC mode
+ * @placement:	OOB bytes placement
  * @algo:	ECC algorithm
  * @steps:	number of ECC steps per page
  * @size:	data bytes per ECC step
@@ -350,7 +351,7 @@ static const struct nand_ecc_caps __name = {			\
  *			controller and always return contiguous in-band and
  *			out-of-band data even if they're not stored
  *			contiguously on the NAND chip (e.g.
- *			NAND_ECC_HW_SYNDROME interleaves in-band and
+ *			NAND_ECC_PLACEMENT_INTERLEAVED interleaves in-band and
  *			out-of-band data).
  * @write_page_raw:	function to write a raw page without ECC. This function
  *			should hide the specific layout used by the ECC
@@ -358,7 +359,7 @@ static const struct nand_ecc_caps __name = {			\
  *			in-band and out-of-band data. ECC controller is
  *			responsible for doing the appropriate transformations
  *			to adapt to its specific layout (e.g.
- *			NAND_ECC_HW_SYNDROME interleaves in-band and
+ *			NAND_ECC_PLACEMENT_INTERLEAVED interleaves in-band and
  *			out-of-band data).
  * @read_page:	function to read a page according to the ECC generator
  *		requirements; returns maximum number of bitflips corrected in
@@ -375,6 +376,7 @@ static const struct nand_ecc_caps __name = {			\
  */
 struct nand_ecc_ctrl {
 	enum nand_ecc_mode mode;
+	enum nand_ecc_placement placement;
 	enum nand_ecc_algo algo;
 	int steps;
 	int size;
diff --git a/include/linux/platform_data/mtd-davinci.h b/include/linux/platform_data/mtd-davinci.h
index 03e92c71b3fa..3383101c233b 100644
--- a/include/linux/platform_data/mtd-davinci.h
+++ b/include/linux/platform_data/mtd-davinci.h
@@ -69,6 +69,7 @@ struct davinci_nand_pdata {		/* platform_data */
 	 * using it with large page chips.
 	 */
 	enum nand_ecc_mode	ecc_mode;
+	enum nand_ecc_placement	ecc_placement;
 	u8			ecc_bits;
 
 	/* e.g. NAND_BUSWIDTH_16 */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
