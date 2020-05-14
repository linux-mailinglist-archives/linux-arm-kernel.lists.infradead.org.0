Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E55A1D37DA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 19:19:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DMF6kfmtZUrw2noLpi01o0eKK2wTbeKKt9y6MBwzNHo=; b=C26QsTZ9p/ALWF
	q5H39hEH5zFvdlcb+7URAEC4HPD//m1N+oh6eEQT9OOShoJIySqzEIolf7SAW/7hFw6KTrCs4yEXu
	ZVQlPOKasi7VbYBGJOEfzP9KBQyxHKXiz9zYVVs0IyuACrX7WjB+Hv4AWIEH+CTB2dqem7GcAyk1g
	v2QcVv/Tsh9jkvnhT1NcmL5LGrEDuHD8Nbak1W83PUDZGG4B8UK5x7YqqicYKD2EuerOs17pl4V/G
	qsK23cKSKtWH1QjZhPqF9wEZfnk9fq+o+x2fGGab7YfTwevNzXAqI8bSPu3jEc9Nfs/mitY+U1M7k
	Sb5dwvOMwmXdde9r+ipg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZHW2-0006Pi-49; Thu, 14 May 2020 17:19:26 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZHTi-0004y6-Sx; Thu, 14 May 2020 17:17:06 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 1B0D724000D;
 Thu, 14 May 2020 17:17:00 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Subject: [PATCH v5 03/21] mtd: rawnand: Drop OOB_FIRST placement scheme
Date: Thu, 14 May 2020 19:16:33 +0200
Message-Id: <20200514171651.24851-4-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200514171651.24851-1-miquel.raynal@bootlin.com>
References: <20200514171651.24851-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_101703_207469_F7A54931 
X-CRM114-Status: GOOD (  22.58  )
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

This scheme has been introduced for the Davinci controller and means
that the OOB area must be read *before* the rest of the data. This has
nothing to do with the ECC in OOB placement as it could be understood
and most importantly, there is no point in having this function out of
the Davinci NAND controller driver. A DT property for this scheme has
been added but never used, even by the Davinci driver which only uses
this scheme to change the default nand_read_page().

Move the main read_page() helper into the Davinci driver and remove
the remaining boilerplate.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/davinci_nand.c | 126 +++++++++++++++++++++-------
 drivers/mtd/nand/raw/nand_base.c    |  81 ------------------
 include/linux/mtd/rawnand.h         |   1 -
 3 files changed, 98 insertions(+), 110 deletions(-)

diff --git a/drivers/mtd/nand/raw/davinci_nand.c b/drivers/mtd/nand/raw/davinci_nand.c
index 25c185bea50c..5ea562098c8c 100644
--- a/drivers/mtd/nand/raw/davinci_nand.c
+++ b/drivers/mtd/nand/raw/davinci_nand.c
@@ -410,6 +410,77 @@ static int nand_davinci_correct_4bit(struct nand_chip *chip, u_char *data,
 	return corrected;
 }
 
+/**
+ * nand_read_page_hwecc_oob_first - hw ecc, read oob first
+ * @chip: nand chip info structure
+ * @buf: buffer to store read data
+ * @oob_required: caller requires OOB data read to chip->oob_poi
+ * @page: page number to read
+ *
+ * Hardware ECC for large page chips, require OOB to be read first. For this
+ * ECC mode, the write_page method is re-used from ECC_HW. These methods
+ * read/write ECC from the OOB area, unlike the ECC_HW_SYNDROME support with
+ * multiple ECC steps, follows the "infix ECC" scheme and reads/writes ECC from
+ * the data area, by overwriting the NAND manufacturer bad block markings.
+ */
+static int nand_davinci_read_page_hwecc_oob_first(struct nand_chip *chip,
+						  uint8_t *buf,
+						  int oob_required, int page)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	int i, eccsize = chip->ecc.size, ret;
+	int eccbytes = chip->ecc.bytes;
+	int eccsteps = chip->ecc.steps;
+	uint8_t *p = buf;
+	uint8_t *ecc_code = chip->ecc.code_buf;
+	uint8_t *ecc_calc = chip->ecc.calc_buf;
+	unsigned int max_bitflips = 0;
+
+	/* Read the OOB area first */
+	ret = nand_read_oob_op(chip, page, 0, chip->oob_poi, mtd->oobsize);
+	if (ret)
+		return ret;
+
+	ret = nand_read_page_op(chip, page, 0, NULL, 0);
+	if (ret)
+		return ret;
+
+	ret = mtd_ooblayout_get_eccbytes(mtd, ecc_code, chip->oob_poi, 0,
+					 chip->ecc.total);
+	if (ret)
+		return ret;
+
+	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
+		int stat;
+
+		chip->ecc.hwctl(chip, NAND_ECC_READ);
+
+		ret = nand_read_data_op(chip, p, eccsize, false, false);
+		if (ret)
+			return ret;
+
+		chip->ecc.calculate(chip, p, &ecc_calc[i]);
+
+		stat = chip->ecc.correct(chip, p, &ecc_code[i], NULL);
+		if (stat == -EBADMSG &&
+		    (chip->ecc.options & NAND_ECC_GENERIC_ERASED_CHECK)) {
+			/* check for empty pages with bitflips */
+			stat = nand_check_erased_ecc_chunk(p, eccsize,
+							   &ecc_code[i],
+							   eccbytes, NULL, 0,
+							   chip->ecc.strength);
+		}
+
+		if (stat < 0) {
+			mtd->ecc_stats.failed++;
+		} else {
+			mtd->ecc_stats.corrected += stat;
+			max_bitflips = max_t(unsigned int, max_bitflips, stat);
+		}
+	}
+	return max_bitflips;
+}
+
 /*----------------------------------------------------------------------*/
 
 /*
@@ -613,6 +684,13 @@ static int davinci_nand_attach_chip(struct nand_chip *chip)
 		break;
 	case NAND_ECC_HW:
 		if (pdata->ecc_bits == 4) {
+			int chunks = mtd->writesize / 512;
+
+			if (!chunks || mtd->oobsize < 16) {
+				dev_dbg(&info->pdev->dev, "too small\n");
+				return -EINVAL;
+			}
+
 			/*
 			 * No sanity checks:  CPUs must support this,
 			 * and the chips may not use NAND_BUSWIDTH_16.
@@ -635,6 +713,26 @@ static int davinci_nand_attach_chip(struct nand_chip *chip)
 			info->chip.ecc.bytes = 10;
 			info->chip.ecc.options = NAND_ECC_GENERIC_ERASED_CHECK;
 			info->chip.ecc.algo = NAND_ECC_BCH;
+
+			/*
+			 * Update ECC layout if needed ... for 1-bit HW ECC, the
+			 * default is OK, but it allocates 6 bytes when only 3
+			 * are needed (for each 512 bytes). For 4-bit HW ECC,
+			 * the default is not usable: 10 bytes needed, not 6.
+			 *
+			 * For small page chips, preserve the manufacturer's
+			 * badblock marking data ... and make sure a flash BBT
+			 * table marker fits in the free bytes.
+			 */
+			if (chunks == 1) {
+				mtd_set_ooblayout(mtd,
+						  &hwecc4_small_ooblayout_ops);
+			} else if (chunks == 4 || chunks == 8) {
+				mtd_set_ooblayout(mtd, &nand_ooblayout_lp_ops);
+				info->chip.ecc.read_page = nand_davinci_read_page_hwecc_oob_first;
+			} else {
+				return -EIO;
+			}
 		} else {
 			/* 1bit ecc hamming */
 			info->chip.ecc.calculate = nand_davinci_calculate_1bit;
@@ -650,34 +748,6 @@ static int davinci_nand_attach_chip(struct nand_chip *chip)
 		return -EINVAL;
 	}
 
-	/*
-	 * Update ECC layout if needed ... for 1-bit HW ECC, the default
-	 * is OK, but it allocates 6 bytes when only 3 are needed (for
-	 * each 512 bytes).  For the 4-bit HW ECC, that default is not
-	 * usable:  10 bytes are needed, not 6.
-	 */
-	if (pdata->ecc_bits == 4) {
-		int chunks = mtd->writesize / 512;
-
-		if (!chunks || mtd->oobsize < 16) {
-			dev_dbg(&info->pdev->dev, "too small\n");
-			return -EINVAL;
-		}
-
-		/* For small page chips, preserve the manufacturer's
-		 * badblock marking data ... and make sure a flash BBT
-		 * table marker fits in the free bytes.
-		 */
-		if (chunks == 1) {
-			mtd_set_ooblayout(mtd, &hwecc4_small_ooblayout_ops);
-		} else if (chunks == 4 || chunks == 8) {
-			mtd_set_ooblayout(mtd, &nand_ooblayout_lp_ops);
-			info->chip.ecc.mode = NAND_ECC_HW_OOB_FIRST;
-		} else {
-			return -EIO;
-		}
-	}
-
 	return ret;
 }
 
diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 097650be7e0d..deb8c21a3cf1 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -3024,76 +3024,6 @@ static int nand_read_page_hwecc(struct nand_chip *chip, uint8_t *buf,
 	return max_bitflips;
 }
 
-/**
- * nand_read_page_hwecc_oob_first - [REPLACEABLE] hw ecc, read oob first
- * @chip: nand chip info structure
- * @buf: buffer to store read data
- * @oob_required: caller requires OOB data read to chip->oob_poi
- * @page: page number to read
- *
- * Hardware ECC for large page chips, require OOB to be read first. For this
- * ECC mode, the write_page method is re-used from ECC_HW. These methods
- * read/write ECC from the OOB area, unlike the ECC_HW_SYNDROME support with
- * multiple ECC steps, follows the "infix ECC" scheme and reads/writes ECC from
- * the data area, by overwriting the NAND manufacturer bad block markings.
- */
-static int nand_read_page_hwecc_oob_first(struct nand_chip *chip, uint8_t *buf,
-					  int oob_required, int page)
-{
-	struct mtd_info *mtd = nand_to_mtd(chip);
-	int i, eccsize = chip->ecc.size, ret;
-	int eccbytes = chip->ecc.bytes;
-	int eccsteps = chip->ecc.steps;
-	uint8_t *p = buf;
-	uint8_t *ecc_code = chip->ecc.code_buf;
-	uint8_t *ecc_calc = chip->ecc.calc_buf;
-	unsigned int max_bitflips = 0;
-
-	/* Read the OOB area first */
-	ret = nand_read_oob_op(chip, page, 0, chip->oob_poi, mtd->oobsize);
-	if (ret)
-		return ret;
-
-	ret = nand_read_page_op(chip, page, 0, NULL, 0);
-	if (ret)
-		return ret;
-
-	ret = mtd_ooblayout_get_eccbytes(mtd, ecc_code, chip->oob_poi, 0,
-					 chip->ecc.total);
-	if (ret)
-		return ret;
-
-	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
-		int stat;
-
-		chip->ecc.hwctl(chip, NAND_ECC_READ);
-
-		ret = nand_read_data_op(chip, p, eccsize, false, false);
-		if (ret)
-			return ret;
-
-		chip->ecc.calculate(chip, p, &ecc_calc[i]);
-
-		stat = chip->ecc.correct(chip, p, &ecc_code[i], NULL);
-		if (stat == -EBADMSG &&
-		    (chip->ecc.options & NAND_ECC_GENERIC_ERASED_CHECK)) {
-			/* check for empty pages with bitflips */
-			stat = nand_check_erased_ecc_chunk(p, eccsize,
-						&ecc_code[i], eccbytes,
-						NULL, 0,
-						chip->ecc.strength);
-		}
-
-		if (stat < 0) {
-			mtd->ecc_stats.failed++;
-		} else {
-			mtd->ecc_stats.corrected += stat;
-			max_bitflips = max_t(unsigned int, max_bitflips, stat);
-		}
-	}
-	return max_bitflips;
-}
-
 /**
  * nand_read_page_syndrome - [REPLACEABLE] hardware ECC syndrome based page read
  * @chip: nand chip info structure
@@ -5034,7 +4964,6 @@ static const char * const nand_ecc_modes[] = {
 	[NAND_ECC_SOFT]		= "soft",
 	[NAND_ECC_HW]		= "hw",
 	[NAND_ECC_HW_SYNDROME]	= "hw_syndrome",
-	[NAND_ECC_HW_OOB_FIRST]	= "hw_oob_first",
 	[NAND_ECC_ON_DIE]	= "on-die",
 };
 
@@ -5783,16 +5712,6 @@ static int nand_scan_tail(struct nand_chip *chip)
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
-		fallthrough;
 	case NAND_ECC_HW:
 		/* Use standard hwecc read page function? */
 		if (!ecc->read_page)
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 85eb1a3b8edd..bc7c7d9adae9 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -88,7 +88,6 @@ enum nand_ecc_mode {
 	NAND_ECC_SOFT,
 	NAND_ECC_HW,
 	NAND_ECC_HW_SYNDROME,
-	NAND_ECC_HW_OOB_FIRST,
 	NAND_ECC_ON_DIE,
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
