Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C11CEB81A6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 21:46:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QfO9B85qvRLbttio286KTI7U/aEVgiCRV1k1MDglLoI=; b=WXY7zag8fetBF3
	fU7Ipkg0Yy0TaTepvZ86a9o3z18tzFPVue0p14UfPdRfQ9lOY0V3Oywz9cAabFQ3Q+wkoPwwzqxk3
	x3aCrVPkxh2eeaAajkk7VAkNZc8fWTfVXy8t8RDWTrZfWx1sWMEAFA4wVNbMruDPRRigbmS0O1Vdn
	0Go5XWKEV0bulhrE/tDmVhT0BwiDFMfJiK7LZVwb0uoRUkh2nbfkCdYMImuPTtB9MgwYGIrXHFU7l
	s5djHHFy+ABoEgp/3CVtTDi9GLhP+/m/WRovbopg0uqigS5WV9KyxVe/gaY666T9fcyBJKSGPvVbZ
	AOfXeDhJgPyKGuZ+JFPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB2Nr-0006Bs-JS; Thu, 19 Sep 2019 19:46:31 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB2AC-0002HB-5v; Thu, 19 Sep 2019 19:32:26 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 898D7240006;
 Thu, 19 Sep 2019 19:32:20 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH v3 17/40] mtd: nand: Move standard OOB layouts to the generic
 ECC core
Date: Thu, 19 Sep 2019 21:31:17 +0200
Message-Id: <20190919193141.7865-18-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190919193141.7865-1-miquel.raynal@bootlin.com>
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_123224_586537_343188F4 
X-CRM114-Status: GOOD (  19.43  )
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

These OOB layouts are generic to all NAND chips, they should not be
restricted to be only used by raw NAND controller drivers. They might
later be used by generic ECC engines and SPI-NAND devices as well.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/ecc.c              | 161 +++++++++++++++++++++++++++
 drivers/mtd/nand/raw/Kconfig        |   1 +
 drivers/mtd/nand/raw/nand_base.c    | 162 +---------------------------
 drivers/mtd/nand/raw/nand_toshiba.c |   2 +
 include/linux/mtd/nand.h            |   4 +
 include/linux/mtd/rawnand.h         |   3 -
 6 files changed, 170 insertions(+), 163 deletions(-)

diff --git a/drivers/mtd/nand/ecc.c b/drivers/mtd/nand/ecc.c
index 4c7943ddf2cc..f52ffce8e684 100644
--- a/drivers/mtd/nand/ecc.c
+++ b/drivers/mtd/nand/ecc.c
@@ -133,6 +133,167 @@ int nand_ecc_finish_io_req(struct nand_device *nand,
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
 MODULE_LICENSE("GPL");
 MODULE_AUTHOR("Miquel Raynal <miquel.raynal@bootlin.com>");
 MODULE_DESCRIPTION("Generic ECC engine");
diff --git a/drivers/mtd/nand/raw/Kconfig b/drivers/mtd/nand/raw/Kconfig
index b61b645dc2ef..ac478bdb7ff2 100644
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
diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index b7977d96395a..e9ee09451685 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -34,6 +34,7 @@
 #include <linux/mm.h>
 #include <linux/types.h>
 #include <linux/mtd/mtd.h>
+#include <linux/mtd/nand.h>
 #include <linux/mtd/nand_ecc.h>
 #include <linux/mtd/nand_bch.h>
 #include <linux/interrupt.h>
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
 static int check_offs_len(struct nand_chip *chip, loff_t ofs, uint64_t len)
 {
 	int ret = 0;
@@ -5757,6 +5598,7 @@ static int nand_scan_tail(struct nand_chip *chip)
 		goto err_nand_manuf_cleanup;
 	}
 	ecc->total = ecc->steps * ecc->bytes;
+	chip->base.ecc.ctx.total = ecc->total;
 	if (ecc->total > mtd->oobsize) {
 		WARN(1, "Total number of ECC bytes exceeded oobsize\n");
 		ret = -EINVAL;
diff --git a/drivers/mtd/nand/raw/nand_toshiba.c b/drivers/mtd/nand/raw/nand_toshiba.c
index 47d17a0db836..cf15074a642f 100644
--- a/drivers/mtd/nand/raw/nand_toshiba.c
+++ b/drivers/mtd/nand/raw/nand_toshiba.c
@@ -6,6 +6,8 @@
  * Author: Boris Brezillon <boris.brezillon@free-electrons.com>
  */
 
+#include <linux/mtd/nand.h>
+
 #include "internals.h"
 
 /* Bit for detecting BENAND */
diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index 231dc22a7c50..faa1e6a726eb 100644
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
  * struct nand_ecc_props - NAND ECC properties
  * @provider: ECC engine provider type
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 6c9be596a2d1..818679a79743 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -1156,9 +1156,6 @@ struct nand_chip {
 	} manufacturer;
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
