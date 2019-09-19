Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB70B81AA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 21:47:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PZJ6fjPNVGHiYcMTms4KCl5E9/Fk95r6cWzpVxQweFY=; b=aBvenzpOM92uDD
	qPJ1e7oU5oav8GnEDLEpmkPijdF2D1cNT5UCiMHsolbU3gImD4AkFEFoAge3cG2T2VYLoaB1aKQQk
	X+XDAqN/umQU9QAJV82CvCu+h7ia7rkvF439gzg5PfFXmMiaD0rzjKx/RB7uo+vR6jkMhDbGbfOLN
	Tx1N82JEBO4GBKUU4qpGisEHpA9dmyW7nSmhKjoyAWLxtf4/AeSqcLg5etoEQP/DAHRVAlgIR8kEW
	zkudS80NSti6E1a8pRSsr7vCzw0OmJ+Aa16aJ3BlsRMlGGFn8QUywrF7HQd574h18/GAeI2NCHTxU
	VfJh9v0lQpi8UL3d3XbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB2Om-000784-00; Thu, 19 Sep 2019 19:47:28 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB2AG-0002M9-Ek; Thu, 19 Sep 2019 19:32:32 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id C29A5240002;
 Thu, 19 Sep 2019 19:32:24 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH v3 19/40] mtd: nand: ecc: Turn the software BCH implementation
 generic
Date: Thu, 19 Sep 2019 21:31:19 +0200
Message-Id: <20190919193141.7865-20-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190919193141.7865-1-miquel.raynal@bootlin.com>
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_123228_860344_46F770EE 
X-CRM114-Status: GOOD (  28.93  )
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

Add helpers in the raw NAND core to call the generic functions that
will be re-used by the SPI-NAND layer.

While at it, do some cleanup in the file and its header.

The only reason why rawnand_bch helpers are exported is that the OMAP2
driver uses them. This is something that should be fixed and these
helpers turned static.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/ecc-sw-bch.c       | 191 +++++++++++++---------------
 drivers/mtd/nand/raw/nand_base.c    |  88 +++++++++++--
 drivers/mtd/nand/raw/nandsim.c      |   3 +-
 drivers/mtd/nand/raw/omap2.c        |  32 ++---
 include/linux/mtd/nand-ecc-sw-bch.h |  77 +++++------
 include/linux/mtd/rawnand.h         |   5 +
 6 files changed, 223 insertions(+), 173 deletions(-)

diff --git a/drivers/mtd/nand/ecc-sw-bch.c b/drivers/mtd/nand/ecc-sw-bch.c
index 3e1663d65a04..95d0635d10aa 100644
--- a/drivers/mtd/nand/ecc-sw-bch.c
+++ b/drivers/mtd/nand/ecc-sw-bch.c
@@ -11,133 +11,132 @@
 #include <linux/module.h>
 #include <linux/slab.h>
 #include <linux/bitops.h>
-#include <linux/mtd/mtd.h>
-#include <linux/mtd/rawnand.h>
+#include <linux/mtd/nand.h>
 #include <linux/mtd/nand-ecc-sw-bch.h>
-#include <linux/bch.h>
 
 /**
- * struct nand_bch_control - private NAND BCH control structure
- * @bch:       BCH control structure
- * @errloc:    error location array
- * @eccmask:   XOR ecc mask, allows erased pages to be decoded as valid
+ * nand_ecc_sw_bch_calculate - Calculate the ECC corresponding to a data block
+ *
+ * @nand: NAND device
+ * @buf: Input buffer with raw data
+ * @code: Output buffer with ECC
  */
-struct nand_bch_control {
-	struct bch_control   *bch;
-	unsigned int         *errloc;
-	unsigned char        *eccmask;
-};
-
-/**
- * nand_bch_calculate_ecc - [NAND Interface] Calculate ECC for data block
- * @chip:	NAND chip object
- * @buf:	input buffer with raw data
- * @code:	output buffer with ECC
- */
-int nand_bch_calculate_ecc(struct nand_chip *chip, const unsigned char *buf,
-			   unsigned char *code)
+int nand_ecc_sw_bch_calculate(struct nand_device *nand,
+			      const unsigned char *buf, unsigned char *code)
 {
-	struct nand_bch_control *nbc = chip->ecc.priv;
+	struct nand_ecc_sw_bch_conf *engine_conf = nand->ecc.ctx.priv;
 	unsigned int i;
 
-	memset(code, 0, chip->ecc.bytes);
-	encode_bch(nbc->bch, buf, chip->ecc.size, code);
+	memset(code, 0, engine_conf->code_size);
+	encode_bch(engine_conf->bch, buf, nand->ecc.ctx.conf.step_size, code);
 
 	/* apply mask so that an erased page is a valid codeword */
-	for (i = 0; i < chip->ecc.bytes; i++)
-		code[i] ^= nbc->eccmask[i];
+	for (i = 0; i < engine_conf->code_size; i++)
+		code[i] ^= engine_conf->eccmask[i];
 
 	return 0;
 }
-EXPORT_SYMBOL(nand_bch_calculate_ecc);
+EXPORT_SYMBOL(nand_ecc_sw_bch_calculate);
 
 /**
- * nand_bch_correct_data - [NAND Interface] Detect and correct bit error(s)
- * @chip:	NAND chip object
- * @buf:	raw data read from the chip
- * @read_ecc:	ECC from the chip
- * @calc_ecc:	the ECC calculated from raw data
+ * nand_ecc_sw_bch_correct - Detect, correct and report bit error(s)
  *
- * Detect and correct bit errors for a data byte block
+ * @nand: NAND device
+ * @buf: Raw data read from the chip
+ * @read_ecc: ECC bytes from the chip
+ * @calc_ecc: ECC calculated from the raw data
+ *
+ * Detect and correct bit errors for a data block.
  */
-int nand_bch_correct_data(struct nand_chip *chip, unsigned char *buf,
-			  unsigned char *read_ecc, unsigned char *calc_ecc)
+int nand_ecc_sw_bch_correct(struct nand_device *nand, unsigned char *buf,
+			    unsigned char *read_ecc, unsigned char *calc_ecc)
 {
-	struct nand_bch_control *nbc = chip->ecc.priv;
-	unsigned int *errloc = nbc->errloc;
+	struct nand_ecc_sw_bch_conf *engine_conf = nand->ecc.ctx.priv;
+	unsigned int step_size = nand->ecc.ctx.conf.step_size;
+	unsigned int *errloc = engine_conf->errloc;
 	int i, count;
 
-	count = decode_bch(nbc->bch, NULL, chip->ecc.size, read_ecc, calc_ecc,
-			   NULL, errloc);
+	count = decode_bch(engine_conf->bch, NULL, step_size, read_ecc,
+			   calc_ecc, NULL, errloc);
 	if (count > 0) {
 		for (i = 0; i < count; i++) {
-			if (errloc[i] < (chip->ecc.size*8))
-				/* error is located in data, correct it */
+			if (errloc[i] < (step_size * 8))
+				/* The error is in the data: correct it */
 				buf[errloc[i] >> 3] ^= (1 << (errloc[i] & 7));
-			/* else error in ecc, no action needed */
 
+			/* Otherwise the error is in the ECC: nothing to do */
 			pr_debug("%s: corrected bitflip %u\n", __func__,
-					errloc[i]);
+				 errloc[i]);
 		}
 	} else if (count < 0) {
-		pr_err("ecc unrecoverable error\n");
+		pr_err("ECC unrecoverable error\n");
 		count = -EBADMSG;
 	}
+
 	return count;
 }
-EXPORT_SYMBOL(nand_bch_correct_data);
+EXPORT_SYMBOL(nand_ecc_sw_bch_correct);
 
 /**
- * nand_bch_init - [NAND Interface] Initialize NAND BCH error correction
- * @mtd:	MTD block structure
+ * nand_ecc_sw_bch_cleanup - Cleanup software BCH ECC resources
+ * @nand: NAND device
+ */
+void nand_ecc_sw_bch_cleanup(struct nand_device *nand)
+{
+	struct nand_ecc_sw_bch_conf *engine_conf = nand->ecc.ctx.priv;
+
+	free_bch(engine_conf->bch);
+	kfree(engine_conf->errloc);
+	kfree(engine_conf->eccmask);
+}
+EXPORT_SYMBOL(nand_ecc_sw_bch_cleanup);
+
+/**
+ * nand_ecc_sw_bch_init - Initialize software BCH ECC engine
+ * @nand: NAND device
  *
- * Returns:
- *  a pointer to a new NAND BCH control structure, or NULL upon failure
+ * Returns: a pointer to a new NAND BCH control structure, or NULL upon failure
  *
- * Initialize NAND BCH error correction. Parameters @eccsize and @eccbytes
- * are used to compute BCH parameters m (Galois field order) and t (error
- * correction capability). @eccbytes should be equal to the number of bytes
- * required to store m*t bits, where m is such that 2^m-1 > @eccsize*8.
+ * Initialize NAND BCH error correction. @nand.ecc parameters 'step_size' and
+ * 'bytes' are used to compute BCH parameters m (Galois field order) and t
+ * (error correction capability). 'bytes' should be equal to the number of bytes
+ * required to store m*t bits, where m is such that 2^m-1 > step_size*8.
  *
  * Example: to configure 4 bit correction per 512 bytes, you should pass
- * @eccsize = 512  (thus, m=13 is the smallest integer such that 2^m-1 > 512*8)
- * @eccbytes = 7   (7 bytes are required to store m*t = 13*4 = 52 bits)
+ * step_size = 512 (thus, m=13 is the smallest integer such that 2^m-1 > 512*8)
+ * bytes = 7 (7 bytes are required to store m*t = 13*4 = 52 bits)
  */
-struct nand_bch_control *nand_bch_init(struct mtd_info *mtd)
+int nand_ecc_sw_bch_init(struct nand_device *nand)
 {
-	struct nand_chip *nand = mtd_to_nand(mtd);
+	struct mtd_info *mtd = nanddev_to_mtd(nand);
 	unsigned int m, t, eccsteps, i;
-	struct nand_bch_control *nbc = NULL;
+	struct nand_ecc_sw_bch_conf *engine_conf = nand->ecc.ctx.priv;
 	unsigned char *erased_page;
-	unsigned int eccsize = nand->ecc.size;
-	unsigned int eccbytes = nand->ecc.bytes;
-	unsigned int eccstrength = nand->ecc.strength;
+	unsigned int eccsize = nand->ecc.ctx.conf.step_size;
+	unsigned int eccbytes = engine_conf->code_size;
+	unsigned int eccstrength = nand->ecc.ctx.conf.strength;
 
 	if (!eccbytes && eccstrength) {
 		eccbytes = DIV_ROUND_UP(eccstrength * fls(8 * eccsize), 8);
-		nand->ecc.bytes = eccbytes;
+		engine_conf->code_size = eccbytes;
 	}
 
 	if (!eccsize || !eccbytes) {
 		pr_warn("ecc parameters not supplied\n");
-		goto fail;
+		return -EINVAL;
 	}
 
 	m = fls(1+8*eccsize);
 	t = (eccbytes*8)/m;
 
-	nbc = kzalloc(sizeof(*nbc), GFP_KERNEL);
-	if (!nbc)
-		goto fail;
-
-	nbc->bch = init_bch(m, t, 0);
-	if (!nbc->bch)
-		goto fail;
+	engine_conf->bch = init_bch(m, t, 0);
+	if (!engine_conf->bch)
+		return -EINVAL;
 
 	/* verify that eccbytes has the expected value */
-	if (nbc->bch->ecc_bytes != eccbytes) {
+	if (engine_conf->bch->ecc_bytes != eccbytes) {
 		pr_warn("invalid eccbytes %u, should be %u\n",
-			eccbytes, nbc->bch->ecc_bytes);
+			eccbytes, engine_conf->bch->ecc_bytes);
 		goto fail;
 	}
 
@@ -155,25 +154,17 @@ struct nand_bch_control *nand_bch_init(struct mtd_info *mtd)
 		goto fail;
 	}
 
-	/*
-	 * ecc->steps and ecc->total might be used by mtd->ooblayout->ecc(),
-	 * which is called by mtd_ooblayout_count_eccbytes().
-	 * Make sure they are properly initialized before calling
-	 * mtd_ooblayout_count_eccbytes().
-	 * FIXME: we should probably rework the sequencing in nand_scan_tail()
-	 * to avoid setting those fields twice.
-	 */
-	nand->ecc.steps = eccsteps;
-	nand->ecc.total = eccsteps * eccbytes;
 	if (mtd_ooblayout_count_eccbytes(mtd) != (eccsteps*eccbytes)) {
 		pr_warn("invalid ecc layout\n");
 		goto fail;
 	}
 
-	nbc->eccmask = kzalloc(eccbytes, GFP_KERNEL);
-	nbc->errloc = kmalloc_array(t, sizeof(*nbc->errloc), GFP_KERNEL);
-	if (!nbc->eccmask || !nbc->errloc)
+	engine_conf->eccmask = kzalloc(eccbytes, GFP_KERNEL);
+	engine_conf->errloc = kmalloc_array(t, sizeof(*engine_conf->errloc),
+					    GFP_KERNEL);
+	if (!engine_conf->eccmask || !engine_conf->errloc)
 		goto fail;
+
 	/*
 	 * compute and store the inverted ecc of an erased ecc block
 	 */
@@ -182,36 +173,24 @@ struct nand_bch_control *nand_bch_init(struct mtd_info *mtd)
 		goto fail;
 
 	memset(erased_page, 0xff, eccsize);
-	encode_bch(nbc->bch, erased_page, eccsize, nbc->eccmask);
+	encode_bch(engine_conf->bch, erased_page, eccsize,
+		   engine_conf->eccmask);
 	kfree(erased_page);
 
 	for (i = 0; i < eccbytes; i++)
-		nbc->eccmask[i] ^= 0xff;
+		engine_conf->eccmask[i] ^= 0xff;
 
 	if (!eccstrength)
-		nand->ecc.strength = (eccbytes * 8) / fls(8 * eccsize);
+		nand->ecc.ctx.conf.strength = (eccbytes * 8) / fls(8 * eccsize);
+
+	return 0;
 
-	return nbc;
 fail:
-	nand_bch_free(nbc);
-	return NULL;
-}
-EXPORT_SYMBOL(nand_bch_init);
+	nand_ecc_sw_bch_cleanup(nand);
 
-/**
- * nand_bch_free - [NAND Interface] Release NAND BCH ECC resources
- * @nbc:	NAND BCH control structure
- */
-void nand_bch_free(struct nand_bch_control *nbc)
-{
-	if (nbc) {
-		free_bch(nbc->bch);
-		kfree(nbc->errloc);
-		kfree(nbc->eccmask);
-		kfree(nbc);
-	}
+	return -EINVAL;
 }
-EXPORT_SYMBOL(nand_bch_free);
+EXPORT_SYMBOL(nand_ecc_sw_bch_init);
 
 MODULE_LICENSE("GPL");
 MODULE_AUTHOR("Ivan Djelic <ivan.djelic@parrot.com>");
diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 8d1728a102ae..dd687d664199 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -4832,11 +4832,73 @@ static void nand_scan_ident_cleanup(struct nand_chip *chip)
 	kfree(chip->parameters.onfi);
 }
 
+int rawnand_sw_bch_init(struct nand_chip *chip)
+{
+	struct nand_device *base = &chip->base;
+	struct nand_ecc_sw_bch_conf *engine_conf;
+	int ret;
+
+	base->ecc.user_conf.provider = NAND_SOFT_ECC_ENGINE;
+	base->ecc.user_conf.algo = NAND_ECC_BCH;
+	base->ecc.user_conf.step_size = chip->ecc.size;
+	base->ecc.user_conf.strength = chip->ecc.strength;
+
+	engine_conf = kzalloc(sizeof(*engine_conf), GFP_KERNEL);
+	if (!engine_conf)
+		return -ENOMEM;
+
+	engine_conf->code_size = chip->ecc.bytes;
+
+	base->ecc.ctx.priv = engine_conf;
+
+	ret = nand_ecc_sw_bch_init(base);
+	if (ret)
+		kfree(base->ecc.ctx.priv);
+
+	chip->ecc.size = base->ecc.ctx.conf.step_size;
+	chip->ecc.strength = base->ecc.ctx.conf.strength;
+	chip->ecc.total = base->ecc.ctx.total;
+	chip->ecc.steps = engine_conf->nsteps;
+	chip->ecc.bytes = engine_conf->code_size;
+
+	return ret;
+}
+EXPORT_SYMBOL(rawnand_sw_bch_init);
+
+static int rawnand_sw_bch_calculate(struct nand_chip *chip,
+				    const unsigned char *buf,
+				    unsigned char *code)
+{
+	struct nand_device *base = &chip->base;
+
+	return nand_ecc_sw_bch_calculate(base, buf, code);
+}
+
+int rawnand_sw_bch_correct(struct nand_chip *chip, unsigned char *buf,
+			   unsigned char *read_ecc, unsigned char *calc_ecc)
+{
+	struct nand_device *base = &chip->base;
+
+	return nand_ecc_sw_bch_correct(base, buf, read_ecc, calc_ecc);
+}
+EXPORT_SYMBOL(rawnand_sw_bch_correct);
+
+void rawnand_sw_bch_cleanup(struct nand_chip *chip)
+{
+	struct nand_device *base = &chip->base;
+
+	nand_ecc_sw_bch_cleanup(base);
+
+	kfree(base->ecc.ctx.priv);
+}
+EXPORT_SYMBOL(rawnand_sw_bch_cleanup);
+
 static int nand_set_ecc_soft_ops(struct nand_chip *chip)
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct nand_device *nanddev = mtd_to_nanddev(mtd);
 	struct nand_ecc_ctrl *ecc = &chip->ecc;
+	int ret;
 
 	if (WARN_ON(ecc->mode != NAND_SOFT_ECC_ENGINE))
 		return -EINVAL;
@@ -4862,12 +4924,12 @@ static int nand_set_ecc_soft_ops(struct nand_chip *chip)
 
 		return 0;
 	case NAND_ECC_BCH:
-		if (!mtd_nand_has_bch()) {
+		if (!IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_BCH)) {
 			WARN(1, "CONFIG_MTD_NAND_ECC_SW_BCH not enabled\n");
 			return -EINVAL;
 		}
-		ecc->calculate = nand_bch_calculate_ecc;
-		ecc->correct = nand_bch_correct_data;
+		ecc->calculate = rawnand_sw_bch_calculate;
+		ecc->correct = rawnand_sw_bch_correct;
 		ecc->read_page = nand_read_page_swecc;
 		ecc->read_subpage = nand_read_subpage;
 		ecc->write_page = nand_write_page_swecc;
@@ -4919,13 +4981,14 @@ static int nand_set_ecc_soft_ops(struct nand_chip *chip)
 			ecc->strength = bytes * 8 / fls(8 * ecc->size);
 		}
 
-		/* See nand_bch_init() for details. */
+		/* See ecc_sw_bch_init() for details. */
 		ecc->bytes = 0;
-		ecc->priv = nand_bch_init(mtd);
-		if (!ecc->priv) {
+		ret = rawnand_sw_bch_init(chip);
+		if (ret) {
 			WARN(1, "BCH ECC initialization failed!\n");
-			return -EINVAL;
+			return ret;
 		}
+
 		return 0;
 	default:
 		WARN(1, "Unsupported ECC algorithm!\n");
@@ -5440,14 +5503,17 @@ static int nand_scan_tail(struct nand_chip *chip)
 	 * Set the number of read / write steps for one page depending on ECC
 	 * mode.
 	 */
-	ecc->steps = mtd->writesize / ecc->size;
+	if (!ecc->steps)
+		ecc->steps = mtd->writesize / ecc->size;
 	if (ecc->steps * ecc->size != mtd->writesize) {
 		WARN(1, "Invalid ECC parameters\n");
 		ret = -EINVAL;
 		goto err_nand_manuf_cleanup;
 	}
-	ecc->total = ecc->steps * ecc->bytes;
-	chip->base.ecc.ctx.total = ecc->total;
+
+	if (!ecc->total)
+		ecc->total = ecc->steps * ecc->bytes;
+
 	if (ecc->total > mtd->oobsize) {
 		WARN(1, "Total number of ECC bytes exceeded oobsize\n");
 		ret = -EINVAL;
@@ -5633,7 +5699,7 @@ void nand_cleanup(struct nand_chip *chip)
 {
 	if (chip->ecc.mode == NAND_SOFT_ECC_ENGINE &&
 	    chip->ecc.algo == NAND_ECC_BCH)
-		nand_bch_free((struct nand_bch_control *)chip->ecc.priv);
+		rawnand_sw_bch_cleanup(chip);
 
 	/* Free bad block table memory */
 	kfree(chip->bbt);
diff --git a/drivers/mtd/nand/raw/nandsim.c b/drivers/mtd/nand/raw/nandsim.c
index 6afeef53ba88..380dc78fe09d 100644
--- a/drivers/mtd/nand/raw/nandsim.c
+++ b/drivers/mtd/nand/raw/nandsim.c
@@ -23,7 +23,6 @@
 #include <linux/string.h>
 #include <linux/mtd/mtd.h>
 #include <linux/mtd/rawnand.h>
-#include <linux/mtd/nand-ecc-sw-bch.h>
 #include <linux/mtd/partitions.h>
 #include <linux/delay.h>
 #include <linux/list.h>
@@ -2183,7 +2182,7 @@ static int ns_attach_chip(struct nand_chip *chip)
 	if (!bch)
 		return 0;
 
-	if (!mtd_nand_has_bch()) {
+	if (!IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_BCH)) {
 		NS_ERR("BCH ECC support is disabled\n");
 		return -EINVAL;
 	}
diff --git a/drivers/mtd/nand/raw/omap2.c b/drivers/mtd/nand/raw/omap2.c
index 591617af5ffa..1a8d88958818 100644
--- a/drivers/mtd/nand/raw/omap2.c
+++ b/drivers/mtd/nand/raw/omap2.c
@@ -23,7 +23,6 @@
 #include <linux/of.h>
 #include <linux/of_device.h>
 
-#include <linux/mtd/nand-ecc-sw-bch.h>
 #include <linux/platform_data/elm.h>
 
 #include <linux/omap-gpmc.h>
@@ -2045,16 +2044,16 @@ static int omap_nand_attach_chip(struct nand_chip *chip)
 		chip->ecc.bytes		= 7;
 		chip->ecc.strength	= 4;
 		chip->ecc.hwctl		= omap_enable_hwecc_bch;
-		chip->ecc.correct	= nand_bch_correct_data;
+		chip->ecc.correct	= rawnand_sw_bch_correct;
 		chip->ecc.calculate	= omap_calculate_ecc_bch_sw;
 		mtd_set_ooblayout(mtd, &omap_sw_ooblayout_ops);
 		/* Reserve one byte for the OMAP marker */
 		oobbytes_per_step	= chip->ecc.bytes + 1;
 		/* Software BCH library is used for locating errors */
-		chip->ecc.priv		= nand_bch_init(mtd);
-		if (!chip->ecc.priv) {
+		err = rawnand_sw_bch_init(chip);
+		if (err) {
 			dev_err(dev, "Unable to use BCH library\n");
-			return -EINVAL;
+			return err;
 		}
 		break;
 
@@ -2087,16 +2086,16 @@ static int omap_nand_attach_chip(struct nand_chip *chip)
 		chip->ecc.bytes		= 13;
 		chip->ecc.strength	= 8;
 		chip->ecc.hwctl		= omap_enable_hwecc_bch;
-		chip->ecc.correct	= nand_bch_correct_data;
+		chip->ecc.correct	= rawnand_sw_bch_correct;
 		chip->ecc.calculate	= omap_calculate_ecc_bch_sw;
 		mtd_set_ooblayout(mtd, &omap_sw_ooblayout_ops);
 		/* Reserve one byte for the OMAP marker */
 		oobbytes_per_step	= chip->ecc.bytes + 1;
 		/* Software BCH library is used for locating errors */
-		chip->ecc.priv		= nand_bch_init(mtd);
-		if (!chip->ecc.priv) {
+		err = rawnand_sw_bch_init(chip);
+		if (err) {
 			dev_err(dev, "unable to use BCH library\n");
-			return -EINVAL;
+			return err;
 		}
 		break;
 
@@ -2199,7 +2198,6 @@ static int omap_nand_probe(struct platform_device *pdev)
 	nand_chip		= &info->nand;
 	mtd			= nand_to_mtd(nand_chip);
 	mtd->dev.parent		= &pdev->dev;
-	nand_chip->ecc.priv	= NULL;
 	nand_set_flash_node(nand_chip, dev->of_node);
 
 	if (!mtd->name) {
@@ -2275,10 +2273,9 @@ static int omap_nand_probe(struct platform_device *pdev)
 return_error:
 	if (!IS_ERR_OR_NULL(info->dma))
 		dma_release_channel(info->dma);
-	if (nand_chip->ecc.priv) {
-		nand_bch_free(nand_chip->ecc.priv);
-		nand_chip->ecc.priv = NULL;
-	}
+
+	rawnand_sw_bch_cleanup(nand_chip);
+
 	return err;
 }
 
@@ -2287,10 +2284,9 @@ static int omap_nand_remove(struct platform_device *pdev)
 	struct mtd_info *mtd = platform_get_drvdata(pdev);
 	struct nand_chip *nand_chip = mtd_to_nand(mtd);
 	struct omap_nand_info *info = mtd_to_omap(mtd);
-	if (nand_chip->ecc.priv) {
-		nand_bch_free(nand_chip->ecc.priv);
-		nand_chip->ecc.priv = NULL;
-	}
+
+	rawnand_sw_bch_cleanup(nand_chip);
+
 	if (info->dma)
 		dma_release_channel(info->dma);
 	nand_release(nand_chip);
diff --git a/include/linux/mtd/nand-ecc-sw-bch.h b/include/linux/mtd/nand-ecc-sw-bch.h
index 1e1ee3af82b1..61a5b44b94ef 100644
--- a/include/linux/mtd/nand-ecc-sw-bch.h
+++ b/include/linux/mtd/nand-ecc-sw-bch.h
@@ -8,58 +8,63 @@
 #ifndef __MTD_NAND_ECC_SW_BCH_H__
 #define __MTD_NAND_ECC_SW_BCH_H__
 
-struct mtd_info;
-struct nand_chip;
-struct nand_bch_control;
+#include <linux/mtd/nand.h>
+#include <linux/bch.h>
+
+/**
+ * struct nand_ecc_sw_bch_conf - private software BCH ECC engine structure
+ * @reqooblen: Save the actual user OOB length requested before overwriting it
+ * @code_size: Number of bytes needed to store a code (one code per step)
+ * @nsteps: Number of steps
+ * @calc_buf: Buffer to use when calculating ECC bytes
+ * @code_buf: Buffer to use when reading (raw) ECC bytes from the chip
+ * @bch: BCH control structure
+ * @errloc: error location array
+ * @eccmask: XOR ecc mask, allows erased pages to be decoded as valid
+ */
+struct nand_ecc_sw_bch_conf {
+	unsigned int reqooblen;
+	unsigned int code_size;
+	unsigned int nsteps;
+	u8 *calc_buf;
+	u8 *code_buf;
+	struct bch_control *bch;
+	unsigned int *errloc;
+	unsigned char *eccmask;
+};
 
 #if IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_BCH)
 
-static inline int mtd_nand_has_bch(void) { return 1; }
-
-/*
- * Calculate BCH ecc code
- */
-int nand_bch_calculate_ecc(struct nand_chip *chip, const u_char *dat,
-			   u_char *ecc_code);
-
-/*
- * Detect and correct bit errors
- */
-int nand_bch_correct_data(struct nand_chip *chip, u_char *dat,
-			  u_char *read_ecc, u_char *calc_ecc);
-/*
- * Initialize BCH encoder/decoder
- */
-struct nand_bch_control *nand_bch_init(struct mtd_info *mtd);
-/*
- * Release BCH encoder/decoder resources
- */
-void nand_bch_free(struct nand_bch_control *nbc);
+int nand_ecc_sw_bch_calculate(struct nand_device *nand,
+			      const unsigned char *buf, unsigned char *code);
+int nand_ecc_sw_bch_correct(struct nand_device *nand, unsigned char *buf,
+			    unsigned char *read_ecc, unsigned char *calc_ecc);
+int nand_ecc_sw_bch_init(struct nand_device *nand);
+void nand_ecc_sw_bch_cleanup(struct nand_device *nand);
 
 #else /* !CONFIG_MTD_NAND_ECC_SW_BCH */
 
-static inline int mtd_nand_has_bch(void) { return 0; }
-
-static inline int
-nand_bch_calculate_ecc(struct nand_chip *chip, const u_char *dat,
-		       u_char *ecc_code)
+static inline int nand_ecc_sw_bch_calculate(struct nand_device *nand,
+					    const unsigned char *buf,
+					    unsigned char *code)
 {
-	return -1;
+	return -ENOTSUPP;
 }
 
-static inline int
-nand_bch_correct_data(struct nand_chip *chip, unsigned char *buf,
-		      unsigned char *read_ecc, unsigned char *calc_ecc)
+static inline int nand_ecc_sw_bch_correct(struct nand_device *nand,
+					  unsigned char *buf,
+					  unsigned char *read_ecc,
+					  unsigned char *calc_ecc)
 {
 	return -ENOTSUPP;
 }
 
-static inline struct nand_bch_control *nand_bch_init(struct mtd_info *mtd)
+static inline int nand_ecc_sw_bch_init(struct nand_device *nand)
 {
-	return NULL;
+	return -EINVAL;
 }
 
-static inline void nand_bch_free(struct nand_bch_control *nbc) {}
+static inline void nand_ecc_sw_bch_cleanup(struct nand_device *nand) {}
 
 #endif /* CONFIG_MTD_NAND_ECC_SW_BCH */
 
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 7c8a2c4da8f6..0fb95f83e161 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -1274,6 +1274,11 @@ static inline int nand_opcode_8bits(unsigned int command)
 	return 0;
 }
 
+int rawnand_sw_bch_init(struct nand_chip *chip);
+int rawnand_sw_bch_correct(struct nand_chip *chip, unsigned char *buf,
+			   unsigned char *read_ecc, unsigned char *calc_ecc);
+void rawnand_sw_bch_cleanup(struct nand_chip *chip);
+
 int nand_check_erased_ecc_chunk(void *data, int datalen,
 				void *ecc, int ecclen,
 				void *extraoob, int extraooblen,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
