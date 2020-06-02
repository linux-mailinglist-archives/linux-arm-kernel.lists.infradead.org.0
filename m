Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B801EBE37
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 16:34:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I5yxIpM1G+u9H73PvClt5mPf5bwS2xhj3mAW55GYcPg=; b=s3fyuDiFVbdzH9
	amMsybh+60k+tIXBJIwPTcxz90+U5yYiMWIrqnxolF9gcdtPrD39jcOTvxalbvLB5445yHnlmwXin
	NGtfsCkgQAFJEpBsY5fpdZikAGvOMpOetS7SnHAWdzCgwJ3oFJTa1jsOOOWg6zKnRWWYTL4jDQwP6
	NTwhFx0ZyRhErJkrQfr0vBnik4P3VoRtgCSFqpPOn7p/6OXI8/yk5tzGLKcms1KSKAbdURdTR72om
	jg4P3jNhQKTbiEDKPWPDHDaeA8B8s7b3Skdsdg1ojkRVSaZUAneSNWtgvobNMKLQ25GJ3JMhbrAzi
	C76T0aHmHItppzqYR/zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg7zm-0003dD-5X; Tue, 02 Jun 2020 14:34:26 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg7x5-0001B5-5d; Tue, 02 Jun 2020 14:31:42 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 8996FC000E;
 Tue,  2 Jun 2020 14:31:36 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v9 6/9] mtd: rawnand: Hide the generic OOB layout objects
 behind helpers
Date: Tue,  2 Jun 2020 16:31:21 +0200
Message-Id: <20200602143124.29553-7-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200602143124.29553-1-miquel.raynal@bootlin.com>
References: <20200602143124.29553-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_073139_504543_87F50700 
X-CRM114-Status: GOOD (  14.66  )
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

Stop exposing these objects, create helpers to retrieve them instead.

Also export an helper for the Hamming large page ops for later use.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/arasan-nand-controller.c |  2 +-
 drivers/mtd/nand/raw/atmel/nand-controller.c  |  2 +-
 drivers/mtd/nand/raw/davinci_nand.c           |  3 +-
 .../mtd/nand/raw/ingenic/ingenic_nand_drv.c   |  6 ++--
 drivers/mtd/nand/raw/nand_base.c              | 35 ++++++++++++++-----
 drivers/mtd/nand/raw/nand_toshiba.c           |  2 +-
 drivers/mtd/nand/raw/vf610_nfc.c              |  2 +-
 include/linux/mtd/rawnand.h                   |  5 +--
 8 files changed, 38 insertions(+), 19 deletions(-)

diff --git a/drivers/mtd/nand/raw/arasan-nand-controller.c b/drivers/mtd/nand/raw/arasan-nand-controller.c
index a0b5c539ca73..6fe61393bd26 100644
--- a/drivers/mtd/nand/raw/arasan-nand-controller.c
+++ b/drivers/mtd/nand/raw/arasan-nand-controller.c
@@ -980,7 +980,7 @@ static int anfc_init_hw_ecc_controller(struct arasan_nfc *nfc,
 		return -EINVAL;
 	}
 
-	mtd_set_ooblayout(mtd, &nand_ooblayout_lp_ops);
+	mtd_set_ooblayout(mtd, nand_get_large_page_ooblayout());
 
 	ecc->steps = mtd->writesize / ecc->size;
 	ecc->algo = NAND_ECC_ALGO_BCH;
diff --git a/drivers/mtd/nand/raw/atmel/nand-controller.c b/drivers/mtd/nand/raw/atmel/nand-controller.c
index 3fba91d7991a..08df7f23b859 100644
--- a/drivers/mtd/nand/raw/atmel/nand-controller.c
+++ b/drivers/mtd/nand/raw/atmel/nand-controller.c
@@ -1108,7 +1108,7 @@ static int atmel_nand_pmecc_init(struct nand_chip *chip)
 
 	chip->options |= NAND_NO_SUBPAGE_WRITE;
 
-	mtd_set_ooblayout(mtd, &nand_ooblayout_lp_ops);
+	mtd_set_ooblayout(mtd, nand_get_large_page_ooblayout());
 
 	return 0;
 }
diff --git a/drivers/mtd/nand/raw/davinci_nand.c b/drivers/mtd/nand/raw/davinci_nand.c
index 58966a9706b1..427f320fb79b 100644
--- a/drivers/mtd/nand/raw/davinci_nand.c
+++ b/drivers/mtd/nand/raw/davinci_nand.c
@@ -645,7 +645,8 @@ static int davinci_nand_attach_chip(struct nand_chip *chip)
 				mtd_set_ooblayout(mtd,
 						  &hwecc4_small_ooblayout_ops);
 			} else if (chunks == 4 || chunks == 8) {
-				mtd_set_ooblayout(mtd, &nand_ooblayout_lp_ops);
+				mtd_set_ooblayout(mtd,
+						  nand_get_large_page_ooblayout());
 				info->chip.ecc.read_page = nand_davinci_read_page_hwecc_oob_first;
 			} else {
 				return -EIO;
diff --git a/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c b/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c
index 70309f18124c..0e9d426fe4f2 100644
--- a/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c
+++ b/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c
@@ -243,8 +243,10 @@ static int ingenic_nand_attach_chip(struct nand_chip *chip)
 	/* For legacy reasons we use a different layout on the qi,lb60 board. */
 	if (of_machine_is_compatible("qi,lb60"))
 		mtd_set_ooblayout(mtd, &qi_lb60_ooblayout_ops);
-	else
+	else if (nfc->soc_info->oob_layout)
 		mtd_set_ooblayout(mtd, nfc->soc_info->oob_layout);
+	else
+		mtd_set_ooblayout(mtd, nand_get_large_page_ooblayout());
 
 	return 0;
 }
@@ -532,7 +534,6 @@ static const struct jz_soc_info jz4740_soc_info = {
 	.data_offset = 0x00000000,
 	.cmd_offset = 0x00008000,
 	.addr_offset = 0x00010000,
-	.oob_layout = &nand_ooblayout_lp_ops,
 };
 
 static const struct jz_soc_info jz4725b_soc_info = {
@@ -546,7 +547,6 @@ static const struct jz_soc_info jz4780_soc_info = {
 	.data_offset = 0x00000000,
 	.cmd_offset = 0x00400000,
 	.addr_offset = 0x00800000,
-	.oob_layout = &nand_ooblayout_lp_ops,
 };
 
 static const struct of_device_id ingenic_nand_dt_match[] = {
diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index ed0f642be993..f120b0b4f591 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -95,11 +95,16 @@ static int nand_ooblayout_free_sp(struct mtd_info *mtd, int section,
 	return 0;
 }
 
-const struct mtd_ooblayout_ops nand_ooblayout_sp_ops = {
+static const struct mtd_ooblayout_ops nand_ooblayout_sp_ops = {
 	.ecc = nand_ooblayout_ecc_sp,
 	.free = nand_ooblayout_free_sp,
 };
-EXPORT_SYMBOL_GPL(nand_ooblayout_sp_ops);
+
+const struct mtd_ooblayout_ops *nand_get_small_page_ooblayout(void)
+{
+	return &nand_ooblayout_sp_ops;
+}
+EXPORT_SYMBOL_GPL(nand_get_small_page_ooblayout);
 
 static int nand_ooblayout_ecc_lp(struct mtd_info *mtd, int section,
 				 struct mtd_oob_region *oobregion)
@@ -131,11 +136,16 @@ static int nand_ooblayout_free_lp(struct mtd_info *mtd, int section,
 	return 0;
 }
 
-const struct mtd_ooblayout_ops nand_ooblayout_lp_ops = {
+static const struct mtd_ooblayout_ops nand_ooblayout_lp_ops = {
 	.ecc = nand_ooblayout_ecc_lp,
 	.free = nand_ooblayout_free_lp,
 };
-EXPORT_SYMBOL_GPL(nand_ooblayout_lp_ops);
+
+const struct mtd_ooblayout_ops *nand_get_large_page_ooblayout(void)
+{
+	return &nand_ooblayout_lp_ops;
+}
+EXPORT_SYMBOL_GPL(nand_get_large_page_ooblayout);
 
 /*
  * Support the old "large page" layout used for 1-bit Hamming ECC where ECC
@@ -205,6 +215,12 @@ static const struct mtd_ooblayout_ops nand_ooblayout_lp_hamming_ops = {
 	.free = nand_ooblayout_free_lp_hamming,
 };
 
+const struct mtd_ooblayout_ops *nand_get_large_page_hamming_ooblayout(void)
+{
+	return &nand_ooblayout_lp_hamming_ops;
+}
+EXPORT_SYMBOL_GPL(nand_get_large_page_hamming_ooblayout);
+
 static int nand_pairing_dist3_get_info(struct mtd_info *mtd, int page,
 				       struct mtd_pairing_info *info)
 {
@@ -5382,7 +5398,7 @@ static int nand_set_ecc_soft_ops(struct nand_chip *chip)
 				return -EINVAL;
 			}
 
-			mtd_set_ooblayout(mtd, &nand_ooblayout_lp_ops);
+			mtd_set_ooblayout(mtd, nand_get_large_page_ooblayout());
 
 		}
 
@@ -5391,7 +5407,7 @@ static int nand_set_ecc_soft_ops(struct nand_chip *chip)
 		 * used, otherwise we don't know how many bytes can really be
 		 * used.
 		 */
-		if (mtd->ooblayout == &nand_ooblayout_lp_ops &&
+		if (mtd->ooblayout == nand_get_large_page_ooblayout() &&
 		    ecc->options & NAND_ECC_MAXIMIZE) {
 			int steps, bytes;
 
@@ -5793,11 +5809,12 @@ static int nand_scan_tail(struct nand_chip *chip)
 		switch (mtd->oobsize) {
 		case 8:
 		case 16:
-			mtd_set_ooblayout(mtd, &nand_ooblayout_sp_ops);
+			mtd_set_ooblayout(mtd, nand_get_small_page_ooblayout());
 			break;
 		case 64:
 		case 128:
-			mtd_set_ooblayout(mtd, &nand_ooblayout_lp_hamming_ops);
+			mtd_set_ooblayout(mtd,
+					  nand_get_large_page_hamming_ooblayout());
 			break;
 		default:
 			/*
@@ -5809,7 +5826,7 @@ static int nand_scan_tail(struct nand_chip *chip)
 			 */
 			if (ecc->engine_type == NAND_ECC_ENGINE_TYPE_NONE) {
 				mtd_set_ooblayout(mtd,
-						&nand_ooblayout_lp_ops);
+						  nand_get_large_page_ooblayout());
 				break;
 			}
 
diff --git a/drivers/mtd/nand/raw/nand_toshiba.c b/drivers/mtd/nand/raw/nand_toshiba.c
index 8fcf40d0ba0a..3174914e33e0 100644
--- a/drivers/mtd/nand/raw/nand_toshiba.c
+++ b/drivers/mtd/nand/raw/nand_toshiba.c
@@ -140,7 +140,7 @@ static void toshiba_nand_benand_init(struct nand_chip *chip)
 
 	chip->options |= NAND_SUBPAGE_READ;
 
-	mtd_set_ooblayout(mtd, &nand_ooblayout_lp_ops);
+	mtd_set_ooblayout(mtd, nand_get_large_page_ooblayout());
 }
 
 static void toshiba_nand_decode_id(struct nand_chip *chip)
diff --git a/drivers/mtd/nand/raw/vf610_nfc.c b/drivers/mtd/nand/raw/vf610_nfc.c
index 8ee2c1f539c4..50dc0c93140c 100644
--- a/drivers/mtd/nand/raw/vf610_nfc.c
+++ b/drivers/mtd/nand/raw/vf610_nfc.c
@@ -779,7 +779,7 @@ static int vf610_nfc_attach_chip(struct nand_chip *chip)
 		mtd->oobsize = 64;
 
 	/* Use default large page ECC layout defined in NAND core */
-	mtd_set_ooblayout(mtd, &nand_ooblayout_lp_ops);
+	mtd_set_ooblayout(mtd, nand_get_large_page_ooblayout());
 	if (chip->ecc.strength == 32) {
 		nfc->ecc_mode = ECC_60_BYTE;
 		chip->ecc.bytes = 60;
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 8f7f1cce3b4b..f3eb47c09e57 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -1159,8 +1159,9 @@ struct nand_chip {
 	int (*unlock_area)(struct nand_chip *chip, loff_t ofs, uint64_t len);
 };
 
-extern const struct mtd_ooblayout_ops nand_ooblayout_sp_ops;
-extern const struct mtd_ooblayout_ops nand_ooblayout_lp_ops;
+const struct mtd_ooblayout_ops *nand_get_small_page_ooblayout(void);
+const struct mtd_ooblayout_ops *nand_get_large_page_ooblayout(void);
+const struct mtd_ooblayout_ops *nand_get_large_page_hamming_ooblayout(void);
 
 static inline struct nand_chip *mtd_to_nand(struct mtd_info *mtd)
 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
