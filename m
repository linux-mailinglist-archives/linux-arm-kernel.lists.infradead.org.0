Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 768DEB81B4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 21:49:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0YEc695eRDPAoL1HtzwLXENQFfP1abpRW8cvyoR7EGo=; b=lkwdfke74IDxyx
	/fy82S8zHiClKgC77RpL6cpRDkECbSoLkzDKF3EiwyC8yojCaj5/QcVUNSPmf1/62FUYzT7456Mqt
	R4yI2EhZL+K2mYafJtsHCHZ6f2OAA/rIPjzjVQSRWqNLCnWnnnAq2Uw/6tFkTRMVuDdidekeJV/bu
	CMgc3WjE06w46+3u+Ixq1zxvrAgKcg2f5QiPArpEbmpIV0GC4aeWYele+QQb9/5a4rkZvE0bEHhx0
	39DJ6i87H45DeNU7lRJ0K5pGkzeou8JNApTztrgzgHjHvZMK5z8bd4rTyBivmWhkjffo4p1Yncv17
	mD6VUGJltmHpZLWksN/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB2Qj-0000aO-QV; Thu, 19 Sep 2019 19:49:29 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB2AP-0002TU-1i; Thu, 19 Sep 2019 19:32:40 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 7B6FD240002;
 Thu, 19 Sep 2019 19:32:33 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH v3 23/40] mtd: nand: ecc: Turn the software Hamming
 implementation generic
Date: Thu, 19 Sep 2019 21:31:23 +0200
Message-Id: <20190919193141.7865-24-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190919193141.7865-1-miquel.raynal@bootlin.com>
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_123237_878290_91C24FAD 
X-CRM114-Status: GOOD (  23.50  )
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

There are two drivers (not even raw NAND controller drivers) using the
bare helpers ecc_sw_hamming_calculate/correct():
mtd_nandecctest.c and sm_ftl.c. It would be nice to find another way
to call these functions and finish to clean the driver.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/ecc-sw-hamming.c       | 121 +++++++++++-------------
 drivers/mtd/nand/raw/cs553x_nand.c      |   3 +-
 drivers/mtd/nand/raw/fsmc_nand.c        |   2 +-
 drivers/mtd/nand/raw/lpc32xx_slc.c      |   2 +-
 drivers/mtd/nand/raw/nand_base.c        |  88 ++++++++++++++++-
 drivers/mtd/nand/raw/ndfc.c             |   3 +-
 drivers/mtd/nand/raw/sharpsl.c          |   2 +-
 drivers/mtd/nand/raw/tmio_nand.c        |   6 +-
 drivers/mtd/nand/raw/txx9ndfmc.c        |   4 +-
 drivers/mtd/sm_ftl.c                    |  28 +++---
 drivers/mtd/tests/mtd_nandecctest.c     |  29 +++---
 include/linux/mtd/nand-ecc-sw-hamming.h |  50 +++++-----
 include/linux/mtd/rawnand.h             |   9 ++
 13 files changed, 211 insertions(+), 136 deletions(-)

diff --git a/drivers/mtd/nand/ecc-sw-hamming.c b/drivers/mtd/nand/ecc-sw-hamming.c
index 68812b62aa6c..8494e68814bc 100644
--- a/drivers/mtd/nand/ecc-sw-hamming.c
+++ b/drivers/mtd/nand/ecc-sw-hamming.c
@@ -17,8 +17,6 @@
 #include <linux/types.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
-#include <linux/mtd/mtd.h>
-#include <linux/mtd/rawnand.h>
 #include <linux/mtd/nand-ecc-sw-hamming.h>
 #include <asm/byteorder.h>
 
@@ -75,7 +73,7 @@ static const char bitsperbyte[256] = {
  * addressbits is a lookup table to filter out the bits from the xor-ed
  * ECC data that identify the faulty location.
  * this is only used for repairing parity
- * see the comments in nand_correct_data for more details
+ * see the comments in nand_ecc_sw_hamming_correct for more details
  */
 static const char addressbits[256] = {
 	0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01,
@@ -112,30 +110,23 @@ static const char addressbits[256] = {
 	0x0e, 0x0e, 0x0f, 0x0f, 0x0e, 0x0e, 0x0f, 0x0f
 };
 
-/**
- * __nand_calculate_ecc - [NAND Interface] Calculate 3-byte ECC for 256/512-byte
- *			 block
- * @buf:	input buffer with raw data
- * @eccsize:	data bytes per ECC step (256 or 512)
- * @code:	output buffer with ECC
- * @sm_order:	Smart Media byte ordering
- */
-void __nand_calculate_ecc(const unsigned char *buf, unsigned int eccsize,
-			  unsigned char *code, bool sm_order)
+int ecc_sw_hamming_calculate(const unsigned char *buf, unsigned int step_size,
+			     unsigned char *code, bool sm_order)
 {
-	int i;
-	const uint32_t *bp = (uint32_t *)buf;
-	/* 256 or 512 bytes/ecc  */
-	const uint32_t eccsize_mult = eccsize >> 8;
-	uint32_t cur;		/* current value in buffer */
+	const u32 *bp = (uint32_t *)buf;
+	const u32 eccsize_mult = step_size >> 8;
+	/* current value in buffer */
+	u32 cur;
 	/* rp0..rp15..rp17 are the various accumulated parities (per byte) */
-	uint32_t rp0, rp1, rp2, rp3, rp4, rp5, rp6, rp7;
-	uint32_t rp8, rp9, rp10, rp11, rp12, rp13, rp14, rp15, rp16;
-	uint32_t uninitialized_var(rp17);	/* to make compiler happy */
-	uint32_t par;		/* the cumulative parity for all data */
-	uint32_t tmppar;	/* the cumulative parity for this iteration;
-				   for rp12, rp14 and rp16 at the end of the
-				   loop */
+	u32 rp0, rp1, rp2, rp3, rp4, rp5, rp6, rp7;
+	u32 rp8, rp9, rp10, rp11, rp12, rp13, rp14, rp15, rp16;
+	/* Make the compiler happy */
+	u32 uninitialized_var(rp17);
+	/* Cumulative parity for all data */
+	u32 par;
+	/* Cumulative parity at the end of the loop (rp12, rp14, rp16) */
+	u32 tmppar;
+	int i;
 
 	par = 0;
 	rp4 = 0;
@@ -356,45 +347,36 @@ void __nand_calculate_ecc(const unsigned char *buf, unsigned int eccsize,
 		    (invparity[par & 0x55] << 2) |
 		    (invparity[rp17] << 1) |
 		    (invparity[rp16] << 0);
-}
-EXPORT_SYMBOL(__nand_calculate_ecc);
-
-/**
- * nand_calculate_ecc - [NAND Interface] Calculate 3-byte ECC for 256/512-byte
- *			 block
- * @chip:	NAND chip object
- * @buf:	input buffer with raw data
- * @code:	output buffer with ECC
- */
-int nand_calculate_ecc(struct nand_chip *chip, const unsigned char *buf,
-		       unsigned char *code)
-{
-	bool sm_order = chip->ecc.options & NAND_ECC_SOFT_HAMMING_SM_ORDER;
-
-	__nand_calculate_ecc(buf, chip->ecc.size, code, sm_order);
 
 	return 0;
 }
-EXPORT_SYMBOL(nand_calculate_ecc);
+EXPORT_SYMBOL(ecc_sw_hamming_calculate);
 
 /**
- * __nand_correct_data - [NAND Interface] Detect and correct bit error(s)
- * @buf:	raw data read from the chip
- * @read_ecc:	ECC from the chip
- * @calc_ecc:	the ECC calculated from raw data
- * @eccsize:	data bytes per ECC step (256 or 512)
- * @sm_order:	Smart Media byte order
+ * nand_ecc_sw_hamming_calculate - Calculate 3-byte ECC for 256/512-byte block
  *
- * Detect and correct a 1 bit error for eccsize byte block
+ * @nand: NAND device
+ * @buf: Input buffer with raw data
+ * @code: Output buffer with ECC
  */
-int __nand_correct_data(unsigned char *buf,
-			unsigned char *read_ecc, unsigned char *calc_ecc,
-			unsigned int eccsize, bool sm_order)
+int nand_ecc_sw_hamming_calculate(struct nand_device *nand,
+				  const unsigned char *buf, unsigned char *code)
 {
+	struct nand_ecc_sw_hamming_conf *engine_conf = nand->ecc.ctx.priv;
+	unsigned int step_size = nand->ecc.ctx.conf.step_size;
+
+	return ecc_sw_hamming_calculate(buf, step_size, code,
+					engine_conf->sm_order);
+}
+EXPORT_SYMBOL(nand_ecc_sw_hamming_calculate);
+
+int ecc_sw_hamming_correct(unsigned char *buf, unsigned char *read_ecc,
+			   unsigned char *calc_ecc, unsigned int step_size,
+			   bool sm_order)
+{
+	const u32 eccsize_mult = step_size >> 8;
 	unsigned char b0, b1, b2, bit_addr;
 	unsigned int byte_addr;
-	/* 256 or 512 bytes/ecc  */
-	const uint32_t eccsize_mult = eccsize >> 8;
 
 	/*
 	 * b0 to b2 indicate which bit is faulty (if any)
@@ -458,27 +440,30 @@ int __nand_correct_data(unsigned char *buf,
 	pr_err("%s: uncorrectable ECC error\n", __func__);
 	return -EBADMSG;
 }
-EXPORT_SYMBOL(__nand_correct_data);
+EXPORT_SYMBOL(ecc_sw_hamming_correct);
 
 /**
- * nand_correct_data - [NAND Interface] Detect and correct bit error(s)
- * @chip:	NAND chip object
- * @buf:	raw data read from the chip
- * @read_ecc:	ECC from the chip
- * @calc_ecc:	the ECC calculated from raw data
+ * nand_ecc_sw_hamming_correct - Detect and correct bit error(s)
  *
- * Detect and correct a 1 bit error for 256/512 byte block
+ * @nand: NAND device
+ * @buf: Raw data read from the chip
+ * @read_ecc: ECC bytes read from the chip
+ * @calc_ecc: ECC calculated from the raw data
+ *
+ * Detect and correct up to 1 bit error per 256/512-byte block.
  */
-int nand_correct_data(struct nand_chip *chip, unsigned char *buf,
-		      unsigned char *read_ecc, unsigned char *calc_ecc)
+int nand_ecc_sw_hamming_correct(struct nand_device *nand, unsigned char *buf,
+				unsigned char *read_ecc,
+				unsigned char *calc_ecc)
 {
-	bool sm_order = chip->ecc.options & NAND_ECC_SOFT_HAMMING_SM_ORDER;
+	struct nand_ecc_sw_hamming_conf *engine_conf = nand->ecc.ctx.priv;
+	unsigned int step_size = nand->ecc.ctx.conf.step_size;
 
-	return __nand_correct_data(buf, read_ecc, calc_ecc, chip->ecc.size,
-				   sm_order);
+	return ecc_sw_hamming_correct(buf, read_ecc, calc_ecc, step_size,
+				      engine_conf->sm_order);
 }
-EXPORT_SYMBOL(nand_correct_data);
+EXPORT_SYMBOL(nand_ecc_sw_hamming_correct);
 
 MODULE_LICENSE("GPL");
 MODULE_AUTHOR("Frans Meulenbroeks <fransmeulenbroeks@gmail.com>");
-MODULE_DESCRIPTION("Generic NAND ECC support");
+MODULE_DESCRIPTION("NAND software Hamming ECC support");
diff --git a/drivers/mtd/nand/raw/cs553x_nand.c b/drivers/mtd/nand/raw/cs553x_nand.c
index a2524a78ff59..06f960ab6fd4 100644
--- a/drivers/mtd/nand/raw/cs553x_nand.c
+++ b/drivers/mtd/nand/raw/cs553x_nand.c
@@ -19,7 +19,6 @@
 #include <linux/delay.h>
 #include <linux/mtd/mtd.h>
 #include <linux/mtd/rawnand.h>
-#include <linux/mtd/nand-ecc-sw-hamming.h>
 #include <linux/mtd/partitions.h>
 
 #include <asm/msr.h>
@@ -215,7 +214,7 @@ static int __init cs553x_init_one(int cs, int mmio, unsigned long adr)
 	this->ecc.bytes = 3;
 	this->ecc.hwctl  = cs_enable_hwecc;
 	this->ecc.calculate = cs_calculate_ecc;
-	this->ecc.correct  = nand_correct_data;
+	this->ecc.correct  = rawnand_sw_hamming_correct;
 	this->ecc.strength = 1;
 
 	/* Enable the following for a flash based bad block table */
diff --git a/drivers/mtd/nand/raw/fsmc_nand.c b/drivers/mtd/nand/raw/fsmc_nand.c
index 61e87e410a62..fe25b1123819 100644
--- a/drivers/mtd/nand/raw/fsmc_nand.c
+++ b/drivers/mtd/nand/raw/fsmc_nand.c
@@ -900,7 +900,7 @@ static int fsmc_nand_attach_chip(struct nand_chip *nand)
 	case NAND_HW_ECC_ENGINE:
 		dev_info(host->dev, "Using 1-bit HW ECC scheme\n");
 		nand->ecc.calculate = fsmc_read_hwecc_ecc1;
-		nand->ecc.correct = nand_correct_data;
+		nand->ecc.correct = rawnand_sw_hamming_correct;
 		nand->ecc.bytes = 3;
 		nand->ecc.strength = 1;
 		nand->ecc.options |= NAND_ECC_SOFT_HAMMING_SM_ORDER;
diff --git a/drivers/mtd/nand/raw/lpc32xx_slc.c b/drivers/mtd/nand/raw/lpc32xx_slc.c
index 1c6f0be727f6..e1c7600d1dbb 100644
--- a/drivers/mtd/nand/raw/lpc32xx_slc.c
+++ b/drivers/mtd/nand/raw/lpc32xx_slc.c
@@ -893,7 +893,7 @@ static int lpc32xx_nand_probe(struct platform_device *pdev)
 	chip->ecc.write_oob = lpc32xx_nand_write_oob_syndrome;
 	chip->ecc.read_oob = lpc32xx_nand_read_oob_syndrome;
 	chip->ecc.calculate = lpc32xx_nand_ecc_calculate;
-	chip->ecc.correct = nand_correct_data;
+	chip->ecc.correct = rawnand_sw_hamming_correct;
 	chip->ecc.strength = 1;
 	chip->ecc.hwctl = lpc32xx_nand_ecc_enable;
 
diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index ee62c2f774ba..7734f18ddc59 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -4832,6 +4832,75 @@ static void nand_scan_ident_cleanup(struct nand_chip *chip)
 	kfree(chip->parameters.onfi);
 }
 
+int rawnand_sw_hamming_init(struct nand_chip *chip)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct nand_ecc_sw_hamming_conf *engine_conf;
+	struct nand_device *base = &chip->base;
+
+	base->ecc.user_conf.provider = NAND_SOFT_ECC_ENGINE;
+	base->ecc.user_conf.algo = NAND_ECC_HAMMING;
+	base->ecc.user_conf.strength = chip->ecc.strength;
+	base->ecc.user_conf.step_size = chip->ecc.size;
+
+	if (base->ecc.user_conf.strength != 1 ||
+	    (base->ecc.user_conf.step_size != 256 &&
+	     base->ecc.user_conf.step_size != 512)) {
+		pr_err("%s: unsupported strength or step size\n", __func__);
+		return -EINVAL;
+	}
+
+	engine_conf = kzalloc(sizeof(*engine_conf), GFP_KERNEL);
+	if (!engine_conf)
+		return -ENOMEM;
+
+	engine_conf->code_size = 3;
+	engine_conf->nsteps = mtd->writesize / base->ecc.user_conf.step_size;
+
+	if (chip->ecc.options & NAND_ECC_SOFT_HAMMING_SM_ORDER)
+		engine_conf->sm_order = true;
+
+	base->ecc.ctx.priv = engine_conf;
+
+	chip->ecc.size = base->ecc.ctx.conf.step_size;
+	chip->ecc.strength = base->ecc.ctx.conf.strength;
+	chip->ecc.total = base->ecc.ctx.total;
+	chip->ecc.steps = engine_conf->nsteps;
+	chip->ecc.bytes = engine_conf->code_size;
+
+	return 0;
+}
+EXPORT_SYMBOL(rawnand_sw_hamming_init);
+
+int rawnand_sw_hamming_calculate(struct nand_chip *chip,
+				 const unsigned char *buf,
+				 unsigned char *code)
+{
+	struct nand_device *base = &chip->base;
+
+	return nand_ecc_sw_hamming_calculate(base, buf, code);
+}
+EXPORT_SYMBOL(rawnand_sw_hamming_calculate);
+
+int rawnand_sw_hamming_correct(struct nand_chip *chip,
+			       unsigned char *buf,
+			       unsigned char *read_ecc,
+			       unsigned char *calc_ecc)
+{
+	struct nand_device *base = &chip->base;
+
+	return nand_ecc_sw_hamming_correct(base, buf, read_ecc, calc_ecc);
+}
+EXPORT_SYMBOL(rawnand_sw_hamming_correct);
+
+void rawnand_sw_hamming_cleanup(struct nand_chip *chip)
+{
+	struct nand_device *base = &chip->base;
+
+	kfree(base->ecc.ctx.priv);
+}
+EXPORT_SYMBOL(rawnand_sw_hamming_cleanup);
+
 int rawnand_sw_bch_init(struct nand_chip *chip)
 {
 	struct nand_device *base = &chip->base;
@@ -4905,8 +4974,8 @@ static int nand_set_ecc_soft_ops(struct nand_chip *chip)
 
 	switch (ecc->algo) {
 	case NAND_ECC_HAMMING:
-		ecc->calculate = nand_calculate_ecc;
-		ecc->correct = nand_correct_data;
+		ecc->calculate = rawnand_sw_hamming_calculate;
+		ecc->correct = rawnand_sw_hamming_correct;
 		ecc->read_page = nand_read_page_swecc;
 		ecc->read_subpage = nand_read_subpage;
 		ecc->write_page = nand_write_page_swecc;
@@ -4922,6 +4991,12 @@ static int nand_set_ecc_soft_ops(struct nand_chip *chip)
 		if (IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC))
 			ecc->options |= NAND_ECC_SOFT_HAMMING_SM_ORDER;
 
+		ret = rawnand_sw_hamming_init(chip);
+		if (ret) {
+			WARN(1, "Hamming ECC initialization failed!\n");
+			return ret;
+		}
+
 		return 0;
 	case NAND_ECC_BCH:
 		if (!IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_BCH)) {
@@ -5697,9 +5772,12 @@ EXPORT_SYMBOL(nand_scan_with_ids);
  */
 void nand_cleanup(struct nand_chip *chip)
 {
-	if (chip->ecc.mode == NAND_SOFT_ECC_ENGINE &&
-	    chip->ecc.algo == NAND_ECC_BCH)
-		rawnand_sw_bch_cleanup(chip);
+	if (chip->ecc.mode == NAND_SOFT_ECC_ENGINE) {
+		if (chip->ecc.algo == NAND_ECC_HAMMING)
+			rawnand_sw_hamming_cleanup(chip);
+		else if (chip->ecc.algo == NAND_ECC_BCH)
+			rawnand_sw_bch_cleanup(chip);
+	}
 
 	/* Free bad block table memory */
 	kfree(chip->bbt);
diff --git a/drivers/mtd/nand/raw/ndfc.c b/drivers/mtd/nand/raw/ndfc.c
index e4076e6c9ea6..3d076b22d57b 100644
--- a/drivers/mtd/nand/raw/ndfc.c
+++ b/drivers/mtd/nand/raw/ndfc.c
@@ -18,7 +18,6 @@
  */
 #include <linux/module.h>
 #include <linux/mtd/rawnand.h>
-#include <linux/mtd/nand-ecc-sw-hamming.h>
 #include <linux/mtd/partitions.h>
 #include <linux/mtd/ndfc.h>
 #include <linux/slab.h>
@@ -146,7 +145,7 @@ static int ndfc_chip_init(struct ndfc_controller *ndfc,
 	chip->controller = &ndfc->ndfc_control;
 	chip->legacy.read_buf = ndfc_read_buf;
 	chip->legacy.write_buf = ndfc_write_buf;
-	chip->ecc.correct = nand_correct_data;
+	chip->ecc.correct = ecc_sw_hamming_correct;
 	chip->ecc.hwctl = ndfc_enable_hwecc;
 	chip->ecc.calculate = ndfc_calculate_ecc;
 	chip->ecc.mode = NAND_HW_ECC_ENGINE;
diff --git a/drivers/mtd/nand/raw/sharpsl.c b/drivers/mtd/nand/raw/sharpsl.c
index 8a894bd3ceda..8222239c21f3 100644
--- a/drivers/mtd/nand/raw/sharpsl.c
+++ b/drivers/mtd/nand/raw/sharpsl.c
@@ -164,7 +164,7 @@ static int sharpsl_nand_probe(struct platform_device *pdev)
 	this->badblock_pattern = data->badblock_pattern;
 	this->ecc.hwctl = sharpsl_nand_enable_hwecc;
 	this->ecc.calculate = sharpsl_nand_calculate_ecc;
-	this->ecc.correct = nand_correct_data;
+	this->ecc.correct = rawnand_sw_hamming_correct;
 
 	/* Scan to find existence of the device */
 	err = nand_scan(this, 1);
diff --git a/drivers/mtd/nand/raw/tmio_nand.c b/drivers/mtd/nand/raw/tmio_nand.c
index 2a5cbc3c3ffa..f0bacbad1533 100644
--- a/drivers/mtd/nand/raw/tmio_nand.c
+++ b/drivers/mtd/nand/raw/tmio_nand.c
@@ -292,11 +292,11 @@ static int tmio_nand_correct_data(struct nand_chip *chip, unsigned char *buf,
 	int r0, r1;
 
 	/* assume ecc.size = 512 and ecc.bytes = 6 */
-	r0 = __nand_correct_data(buf, read_ecc, calc_ecc, 256, false);
+	r0 = rawnand_sw_hamming_correct(chip, buf, read_ecc, calc_ecc);
 	if (r0 < 0)
 		return r0;
-	r1 = __nand_correct_data(buf + 256, read_ecc + 3, calc_ecc + 3, 256,
-				 false);
+	r1 = rawnand_sw_hamming_correct(chip, buf + 256, read_ecc + 3,
+					calc_ecc + 3);
 	if (r1 < 0)
 		return r1;
 	return r0 + r1;
diff --git a/drivers/mtd/nand/raw/txx9ndfmc.c b/drivers/mtd/nand/raw/txx9ndfmc.c
index 98be4949080d..1466791ecb5d 100644
--- a/drivers/mtd/nand/raw/txx9ndfmc.c
+++ b/drivers/mtd/nand/raw/txx9ndfmc.c
@@ -194,8 +194,8 @@ static int txx9ndfmc_correct_data(struct nand_chip *chip, unsigned char *buf,
 	int stat;
 
 	for (eccsize = chip->ecc.size; eccsize > 0; eccsize -= 256) {
-		stat = __nand_correct_data(buf, read_ecc, calc_ecc, 256,
-					   false);
+		stat = rawnand_sw_hamming_correct(chip, buf, read_ecc,
+						  calc_ecc);
 		if (stat < 0)
 			return stat;
 		corrected += stat;
diff --git a/drivers/mtd/sm_ftl.c b/drivers/mtd/sm_ftl.c
index 72cc031ea3bb..d5e6be9559d8 100644
--- a/drivers/mtd/sm_ftl.c
+++ b/drivers/mtd/sm_ftl.c
@@ -216,20 +216,19 @@ static void sm_break_offset(struct sm_ftl *ftl, loff_t loffset,
 
 static int sm_correct_sector(uint8_t *buffer, struct sm_oob *oob)
 {
+	bool sm_order = IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC);
 	uint8_t ecc[3];
 
-	__nand_calculate_ecc(buffer, SM_SMALL_PAGE, ecc,
-			     IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC));
-	if (__nand_correct_data(buffer, ecc, oob->ecc1, SM_SMALL_PAGE,
-				IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC)) < 0)
+	ecc_sw_hamming_calculate(buffer, SM_SMALL_PAGE, ecc, sm_order);
+	if (ecc_sw_hamming_correct(buffer, ecc, oob->ecc1, SM_SMALL_PAGE,
+				   sm_order) < 0)
 		return -EIO;
 
 	buffer += SM_SMALL_PAGE;
 
-	__nand_calculate_ecc(buffer, SM_SMALL_PAGE, ecc,
-			     IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC));
-	if (__nand_correct_data(buffer, ecc, oob->ecc2, SM_SMALL_PAGE,
-				IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC)) < 0)
+	ecc_sw_hamming_calculate(buffer, SM_SMALL_PAGE, ecc, sm_order);
+	if (ecc_sw_hamming_correct(buffer, ecc, oob->ecc2, SM_SMALL_PAGE,
+				   sm_order) < 0)
 		return -EIO;
 	return 0;
 }
@@ -368,6 +367,7 @@ static int sm_write_block(struct sm_ftl *ftl, uint8_t *buf,
 			  int zone, int block, int lba,
 			  unsigned long invalid_bitmap)
 {
+	bool sm_order = IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC);
 	struct sm_oob oob;
 	int boffset;
 	int retry = 0;
@@ -394,13 +394,13 @@ static int sm_write_block(struct sm_ftl *ftl, uint8_t *buf,
 		}
 
 		if (ftl->smallpagenand) {
-			__nand_calculate_ecc(buf + boffset, SM_SMALL_PAGE,
-					oob.ecc1,
-					IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC));
+			ecc_sw_hamming_calculate(buf + boffset,
+						 SM_SMALL_PAGE, oob.ecc1,
+						 sm_order);
 
-			__nand_calculate_ecc(buf + boffset + SM_SMALL_PAGE,
-					SM_SMALL_PAGE, oob.ecc2,
-					IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC));
+			ecc_sw_hamming_calculate(buf + boffset + SM_SMALL_PAGE,
+						 SM_SMALL_PAGE, oob.ecc2,
+						 sm_order);
 		}
 		if (!sm_write_sector(ftl, zone, block, boffset,
 							buf + boffset, &oob))
diff --git a/drivers/mtd/tests/mtd_nandecctest.c b/drivers/mtd/tests/mtd_nandecctest.c
index e92e3fb287b6..c4f271314f52 100644
--- a/drivers/mtd/tests/mtd_nandecctest.c
+++ b/drivers/mtd/tests/mtd_nandecctest.c
@@ -119,13 +119,13 @@ static void no_bit_error(void *error_data, void *error_ecc,
 static int no_bit_error_verify(void *error_data, void *error_ecc,
 				void *correct_data, const size_t size)
 {
+	bool sm_order = IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC);
 	unsigned char calc_ecc[3];
 	int ret;
 
-	__nand_calculate_ecc(error_data, size, calc_ecc,
-			     IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC));
-	ret = __nand_correct_data(error_data, error_ecc, calc_ecc, size,
-				  IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC));
+	ecc_sw_hamming_calculate(error_data, size, calc_ecc, sm_order);
+	ret = ecc_sw_hamming_correct(error_data, error_ecc, calc_ecc, size,
+				     sm_order);
 	if (ret == 0 && !memcmp(correct_data, error_data, size))
 		return 0;
 
@@ -149,13 +149,13 @@ static void single_bit_error_in_ecc(void *error_data, void *error_ecc,
 static int single_bit_error_correct(void *error_data, void *error_ecc,
 				void *correct_data, const size_t size)
 {
+	bool sm_order = IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC);
 	unsigned char calc_ecc[3];
 	int ret;
 
-	__nand_calculate_ecc(error_data, size, calc_ecc,
-			     IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC));
-	ret = __nand_correct_data(error_data, error_ecc, calc_ecc, size,
-				  IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC));
+	ecc_sw_hamming_calculate(error_data, size, calc_ecc, sm_order);
+	ret = ecc_sw_hamming_correct(error_data, error_ecc, calc_ecc, size,
+				     sm_order);
 	if (ret == 1 && !memcmp(correct_data, error_data, size))
 		return 0;
 
@@ -186,13 +186,13 @@ static void double_bit_error_in_ecc(void *error_data, void *error_ecc,
 static int double_bit_error_detect(void *error_data, void *error_ecc,
 				void *correct_data, const size_t size)
 {
+	bool sm_order = IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC);
 	unsigned char calc_ecc[3];
 	int ret;
 
-	__nand_calculate_ecc(error_data, size, calc_ecc,
-			     IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC));
-	ret = __nand_correct_data(error_data, error_ecc, calc_ecc, size,
-				  IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC));
+	ecc_sw_hamming_calculate(error_data, size, calc_ecc, sm_order);
+	ret = ecc_sw_hamming_correct(error_data, error_ecc, calc_ecc, size,
+				     sm_order);
 
 	return (ret == -EBADMSG) ? 0 : -EINVAL;
 }
@@ -248,6 +248,7 @@ static void dump_data_ecc(void *error_data, void *error_ecc, void *correct_data,
 
 static int nand_ecc_test_run(const size_t size)
 {
+	bool sm_order = IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC);
 	int i;
 	int err = 0;
 	void *error_data;
@@ -266,9 +267,7 @@ static int nand_ecc_test_run(const size_t size)
 	}
 
 	prandom_bytes(correct_data, size);
-	__nand_calculate_ecc(correct_data, size, correct_ecc,
-			     IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC));
-
+	ecc_sw_hamming_calculate(correct_data, size, correct_ecc, sm_order);
 	for (i = 0; i < ARRAY_SIZE(nand_ecc_test); i++) {
 		nand_ecc_test[i].prepare(error_data, error_ecc,
 				correct_data, correct_ecc, size);
diff --git a/include/linux/mtd/nand-ecc-sw-hamming.h b/include/linux/mtd/nand-ecc-sw-hamming.h
index 85e9a929b5f9..aed46e43d2f6 100644
--- a/include/linux/mtd/nand-ecc-sw-hamming.h
+++ b/include/linux/mtd/nand-ecc-sw-hamming.h
@@ -10,30 +10,36 @@
 #ifndef __MTD_NAND_ECC_SW_HAMMING_H__
 #define __MTD_NAND_ECC_SW_HAMMING_H__
 
-struct nand_chip;
+#include <linux/mtd/nand.h>
 
-/*
- * Calculate 3 byte ECC code for eccsize byte block
+/**
+ * struct nand_ecc_sw_hamming_conf - private software Hamming ECC engine structure
+ * @reqooblen: Save the actual user OOB length requested before overwriting it
+ * @code_size: Number of bytes needed to store a code (one code per step)
+ * @nsteps: Number of steps
+ * @calc_buf: Buffer to use when calculating ECC bytes
+ * @code_buf: Buffer to use when reading (raw) ECC bytes from the chip
+ * @sm_order: Smart Media special ordering
  */
-void __nand_calculate_ecc(const u_char *dat, unsigned int eccsize,
-			  u_char *ecc_code, bool sm_order);
+struct nand_ecc_sw_hamming_conf {
+	unsigned int reqooblen;
+	unsigned int code_size;
+	unsigned int nsteps;
+	u8 *calc_buf;
+	u8 *code_buf;
+	unsigned int sm_order;
+};
 
-/*
- * Calculate 3 byte ECC code for 256/512 byte block
- */
-int nand_calculate_ecc(struct nand_chip *chip, const u_char *dat,
-		       u_char *ecc_code);
-
-/*
- * Detect and correct a 1 bit error for eccsize byte block
- */
-int __nand_correct_data(u_char *dat, u_char *read_ecc, u_char *calc_ecc,
-			unsigned int eccsize, bool sm_order);
-
-/*
- * Detect and correct a 1 bit error for 256/512 byte block
- */
-int nand_correct_data(struct nand_chip *chip, u_char *dat, u_char *read_ecc,
-		      u_char *calc_ecc);
+int ecc_sw_hamming_calculate(const unsigned char *buf, unsigned int step_size,
+			     unsigned char *code, bool sm_order);
+int nand_ecc_sw_hamming_calculate(struct nand_device *nand,
+				  const unsigned char *buf,
+				  unsigned char *code);
+int ecc_sw_hamming_correct(unsigned char *buf, unsigned char *read_ecc,
+			   unsigned char *calc_ecc, unsigned int step_size,
+			   bool sm_order);
+int nand_ecc_sw_hamming_correct(struct nand_device *nand, unsigned char *buf,
+				unsigned char *read_ecc,
+				unsigned char *calc_ecc);
 
 #endif /* __MTD_NAND_ECC_SW_HAMMING_H__ */
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index b15015b7be3c..c343cf2321b2 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -1272,6 +1272,15 @@ static inline int nand_opcode_8bits(unsigned int command)
 	return 0;
 }
 
+int rawnand_sw_hamming_init(struct nand_chip *chip);
+int rawnand_sw_hamming_calculate(struct nand_chip *chip,
+				 const unsigned char *buf,
+				 unsigned char *code);
+int rawnand_sw_hamming_correct(struct nand_chip *chip,
+			       unsigned char *buf,
+			       unsigned char *read_ecc,
+			       unsigned char *calc_ecc);
+void rawnand_sw_hamming_cleanup(struct nand_chip *chip);
 int rawnand_sw_bch_init(struct nand_chip *chip);
 int rawnand_sw_bch_correct(struct nand_chip *chip, unsigned char *buf,
 			   unsigned char *read_ecc, unsigned char *calc_ecc);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
