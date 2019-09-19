Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3687BB81C0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 21:50:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9O4S0bjzn7s+IX1qek8cyY+WmSvki3LxPf2MsSvr1s0=; b=A34rSAc5BUik92
	T+mM1WkukAd+7uMQsLaW3qOwgwFQyHmUJkrdiKG4+1maLxFe4Pach8tv3TiVGeVP7Q2a+muJINNWl
	8DQHK5/nPXewDfRH+WnzT7PxVpdNpqGjj9xrAwNDqn+ZBF1PN0EvXa9kDUgKyqJIvceE3rzWc+wgZ
	RQqKw8JZYFEOInkJMoZxBlrG9g+GPc0JIh8pJNkDxL8fcjFFgMwAWzHkPIZjmoi2uxl5vU+YPPu1A
	t3vGlWvhjSR1kAGiruW8HCaoLrT7I+J+a1m0QEk54J3g6Mj+usE4nyxXDzo7S8TUJIOPOVsJ0zfV2
	GuoGBrsTntUFGHYxeDgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB2S7-0003Br-KH; Thu, 19 Sep 2019 19:50:55 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB2AU-0002Xg-NC; Thu, 19 Sep 2019 19:32:45 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 45D39240008;
 Thu, 19 Sep 2019 19:32:39 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH v3 26/40] mtd: nand: ecc: Create the software BCH engine
 instance
Date: Thu, 19 Sep 2019 21:31:26 +0200
Message-Id: <20190919193141.7865-27-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190919193141.7865-1-miquel.raynal@bootlin.com>
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_123243_598151_3E01E47B 
X-CRM114-Status: GOOD (  25.64  )
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

Let's continue introducing the generic ECC engine abstraction in the
NAND subsystem by instantiating a first ECC engine: the software
BCH one.

While at it, make a very tidy ecc_sw_bch_init() function and move all
the sanity checks and user input management in
nand_ecc_sw_bch_init_ctx(). This second helper will be called from the
raw RAND core.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/ecc-sw-bch.c       | 340 +++++++++++++++++++++++-----
 drivers/mtd/nand/raw/nand_base.c    |  62 +----
 include/linux/mtd/nand-ecc-sw-bch.h |  14 +-
 3 files changed, 302 insertions(+), 114 deletions(-)

diff --git a/drivers/mtd/nand/ecc-sw-bch.c b/drivers/mtd/nand/ecc-sw-bch.c
index 95d0635d10aa..e4f90dd47ca0 100644
--- a/drivers/mtd/nand/ecc-sw-bch.c
+++ b/drivers/mtd/nand/ecc-sw-bch.c
@@ -81,7 +81,7 @@ EXPORT_SYMBOL(nand_ecc_sw_bch_correct);
  * nand_ecc_sw_bch_cleanup - Cleanup software BCH ECC resources
  * @nand: NAND device
  */
-void nand_ecc_sw_bch_cleanup(struct nand_device *nand)
+static void nand_ecc_sw_bch_cleanup(struct nand_device *nand)
 {
 	struct nand_ecc_sw_bch_conf *engine_conf = nand->ecc.ctx.priv;
 
@@ -89,7 +89,6 @@ void nand_ecc_sw_bch_cleanup(struct nand_device *nand)
 	kfree(engine_conf->errloc);
 	kfree(engine_conf->eccmask);
 }
-EXPORT_SYMBOL(nand_ecc_sw_bch_cleanup);
 
 /**
  * nand_ecc_sw_bch_init - Initialize software BCH ECC engine
@@ -106,71 +105,36 @@ EXPORT_SYMBOL(nand_ecc_sw_bch_cleanup);
  * step_size = 512 (thus, m=13 is the smallest integer such that 2^m-1 > 512*8)
  * bytes = 7 (7 bytes are required to store m*t = 13*4 = 52 bits)
  */
-int nand_ecc_sw_bch_init(struct nand_device *nand)
+static int nand_ecc_sw_bch_init(struct nand_device *nand)
 {
-	struct mtd_info *mtd = nanddev_to_mtd(nand);
-	unsigned int m, t, eccsteps, i;
 	struct nand_ecc_sw_bch_conf *engine_conf = nand->ecc.ctx.priv;
-	unsigned char *erased_page;
 	unsigned int eccsize = nand->ecc.ctx.conf.step_size;
 	unsigned int eccbytes = engine_conf->code_size;
-	unsigned int eccstrength = nand->ecc.ctx.conf.strength;
+	unsigned int m, t, i;
+	unsigned char *erased_page;
+	int ret;
 
-	if (!eccbytes && eccstrength) {
-		eccbytes = DIV_ROUND_UP(eccstrength * fls(8 * eccsize), 8);
-		engine_conf->code_size = eccbytes;
-	}
-
-	if (!eccsize || !eccbytes) {
-		pr_warn("ecc parameters not supplied\n");
-		return -EINVAL;
-	}
-
-	m = fls(1+8*eccsize);
-	t = (eccbytes*8)/m;
+	m = fls(1 + (8 * eccsize));
+	t = (eccbytes * 8) / m;
 
 	engine_conf->bch = init_bch(m, t, 0);
 	if (!engine_conf->bch)
 		return -EINVAL;
 
-	/* verify that eccbytes has the expected value */
-	if (engine_conf->bch->ecc_bytes != eccbytes) {
-		pr_warn("invalid eccbytes %u, should be %u\n",
-			eccbytes, engine_conf->bch->ecc_bytes);
-		goto fail;
-	}
-
-	eccsteps = mtd->writesize/eccsize;
-
-	/* Check that we have an oob layout description. */
-	if (!mtd->ooblayout) {
-		pr_warn("missing oob scheme");
-		goto fail;
-	}
-
-	/* sanity checks */
-	if (8*(eccsize+eccbytes) >= (1 << m)) {
-		pr_warn("eccsize %u is too large\n", eccsize);
-		goto fail;
-	}
-
-	if (mtd_ooblayout_count_eccbytes(mtd) != (eccsteps*eccbytes)) {
-		pr_warn("invalid ecc layout\n");
-		goto fail;
-	}
-
 	engine_conf->eccmask = kzalloc(eccbytes, GFP_KERNEL);
 	engine_conf->errloc = kmalloc_array(t, sizeof(*engine_conf->errloc),
 					    GFP_KERNEL);
-	if (!engine_conf->eccmask || !engine_conf->errloc)
-		goto fail;
+	if (!engine_conf->eccmask || !engine_conf->errloc) {
+		ret = -ENOMEM;
+		goto cleanup;
+	}
 
-	/*
-	 * compute and store the inverted ecc of an erased ecc block
-	 */
+	/* Compute and store the inverted ECC of an erased step */
 	erased_page = kmalloc(eccsize, GFP_KERNEL);
-	if (!erased_page)
-		goto fail;
+	if (!erased_page) {
+		ret = -ENOMEM;
+		goto cleanup;
+	}
 
 	memset(erased_page, 0xff, eccsize);
 	encode_bch(engine_conf->bch, erased_page, eccsize,
@@ -180,17 +144,279 @@ int nand_ecc_sw_bch_init(struct nand_device *nand)
 	for (i = 0; i < eccbytes; i++)
 		engine_conf->eccmask[i] ^= 0xff;
 
-	if (!eccstrength)
-		nand->ecc.ctx.conf.strength = (eccbytes * 8) / fls(8 * eccsize);
+	/* Verify that the number of code bytes has the expected value */
+	if (engine_conf->bch->ecc_bytes != eccbytes) {
+		pr_err("Invalid number of ECC bytes: %u, expected: %u\n",
+		       eccbytes, engine_conf->bch->ecc_bytes);
+		ret = -EINVAL;
+		goto cleanup;
+	}
+
+	/* Sanity checks */
+	if (8 * (eccsize + eccbytes) >= (1 << m)) {
+		pr_err("ECC step size is too large (%u)\n", eccsize);
+		ret = -EINVAL;
+		goto cleanup;
+	}
 
 	return 0;
 
-fail:
+cleanup:
 	nand_ecc_sw_bch_cleanup(nand);
 
-	return -EINVAL;
+	return ret;
 }
-EXPORT_SYMBOL(nand_ecc_sw_bch_init);
+
+int nand_ecc_sw_bch_init_ctx(struct nand_device *nand)
+{
+	struct nand_ecc_props *conf = &nand->ecc.ctx.conf;
+	struct mtd_info *mtd = nanddev_to_mtd(nand);
+	struct nand_ecc_sw_bch_conf *engine_conf;
+	unsigned int code_size = 0, nsteps;
+	int ret;
+
+	/* Only large page NAND chips may use BCH */
+	if (mtd->oobsize < 64) {
+		pr_err("BCH cannot be used with small page NAND chips\n");
+		return -EINVAL;
+	}
+
+	if (!mtd->ooblayout)
+		mtd_set_ooblayout(mtd, &nand_ooblayout_lp_ops);
+
+	conf->provider = NAND_SOFT_ECC_ENGINE;
+	conf->algo = NAND_ECC_BCH;
+	conf->step_size = nand->ecc.user_conf.step_size;
+	conf->strength = nand->ecc.user_conf.strength;
+
+	/*
+	 * Board driver should supply ECC size and ECC strength
+	 * values to select how many bits are correctable.
+	 * Otherwise, default to 512 bytes for large page devices and 256 for
+	 * small page devices.
+	 */
+	if (!conf->step_size) {
+		if (mtd->oobsize >= 64)
+			conf->step_size = 512;
+		else
+			conf->step_size = 256;
+
+		conf->strength = 4;
+	}
+
+	nsteps = mtd->writesize / conf->step_size;
+
+	/* Maximize */
+	if (nand->ecc.user_conf.flags & NAND_ECC_MAXIMIZE) {
+		conf->step_size = 1024;
+		nsteps = mtd->writesize / conf->step_size;
+		/* Reserve 2 bytes for the BBM */
+		code_size = (mtd->oobsize - 2) / nsteps;
+		conf->strength = code_size * 8 / fls(8 * conf->step_size);
+	}
+
+	if (!code_size)
+		code_size = DIV_ROUND_UP(conf->strength *
+					 fls(8 * conf->step_size), 8);
+
+	if (!conf->strength)
+		conf->strength = (code_size * 8) / fls(8 * conf->step_size);
+
+	if (!code_size && !conf->strength) {
+		pr_err("Missing ECC parameters\n");
+		return -EINVAL;
+	}
+
+	engine_conf = kzalloc(sizeof(*engine_conf), GFP_KERNEL);
+	if (!engine_conf)
+		return -ENOMEM;
+
+	engine_conf->code_size = code_size;
+	engine_conf->nsteps = nsteps;
+	engine_conf->calc_buf = kzalloc(sizeof(mtd->oobsize), GFP_KERNEL);
+	engine_conf->code_buf = kzalloc(sizeof(mtd->oobsize), GFP_KERNEL);
+	if (!engine_conf->calc_buf || !engine_conf->code_buf) {
+		kfree(engine_conf);
+		return -ENOMEM;
+	}
+
+	nand->ecc.ctx.priv = engine_conf;
+	nand->ecc.ctx.total = nsteps * code_size;
+
+	ret = nand_ecc_sw_bch_init(nand);
+	if (ret) {
+		kfree(engine_conf->calc_buf);
+		kfree(engine_conf->code_buf);
+		kfree(engine_conf);
+		return -ENOMEM;
+	}
+
+	/* Verify the layout validity */
+	if (mtd_ooblayout_count_eccbytes(mtd) !=
+	    engine_conf->nsteps * engine_conf->code_size) {
+		pr_err("Invalid ECC layout\n");
+		nand_ecc_sw_bch_cleanup(nand);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL(nand_ecc_sw_bch_init_ctx);
+
+void nand_ecc_sw_bch_cleanup_ctx(struct nand_device *nand)
+{
+	struct nand_ecc_sw_bch_conf *engine_conf = nand->ecc.ctx.priv;
+
+	if (engine_conf) {
+		nand_ecc_sw_bch_cleanup(nand);
+		kfree(engine_conf->calc_buf);
+		kfree(engine_conf->code_buf);
+		kfree(engine_conf);
+	}
+}
+EXPORT_SYMBOL(nand_ecc_sw_bch_cleanup_ctx);
+
+static int nand_ecc_sw_bch_prepare_io_req(struct nand_device *nand,
+					  struct nand_page_io_req *req,
+					  void *oobbuf)
+{
+	struct nand_ecc_sw_bch_conf *engine_conf = nand->ecc.ctx.priv;
+	struct mtd_info *mtd = nanddev_to_mtd(nand);
+	int eccsize = nand->ecc.ctx.conf.step_size;
+	int eccbytes = engine_conf->code_size;
+	int eccsteps = engine_conf->nsteps;
+	int total = nand->ecc.ctx.total;
+	u8 *ecccalc = engine_conf->calc_buf;
+	const u8 *data = req->databuf.out;
+	int i, ret;
+
+	/* Ensure the OOB buffer is empty before using it */
+	if (req->oobbuf.in)
+		memset(req->oobbuf.in, 0xff, nanddev_per_page_oobsize(nand));
+
+	if (req->mode == MTD_OPS_RAW)
+		return 0;
+
+	/* This engine does not provide BBM/free OOB bytes protection */
+	if (!req->datalen)
+		return 0;
+
+	/*
+	 * Ensure OOB area is fully read/written otherwise the software
+	 * correction cannot apply.
+	 */
+	engine_conf->reqooblen = req->ooblen;
+	req->ooblen = nanddev_per_page_oobsize(nand);
+
+	/* No more preparation for page read */
+	if (req->type == NAND_PAGE_READ)
+		return 0;
+
+	/* Preparation for page write: derive the ECC bytes and place them */
+	for (i = 0; eccsteps; eccsteps--, i += eccbytes, data += eccsize)
+		nand_ecc_sw_bch_calculate(nand, data, &ecccalc[i]);
+
+	ret = mtd_ooblayout_set_eccbytes(mtd, ecccalc, oobbuf, 0, total);
+
+	/* Also place user data OOB bytes in the free area, if any */
+	if (engine_conf->reqooblen) {
+		if (req->mode == MTD_OPS_AUTO_OOB)
+			mtd_ooblayout_set_databytes(mtd, req->oobbuf.out,
+						    oobbuf,
+						    req->ooboffs,
+						    req->ooblen);
+		else
+			memcpy(oobbuf + req->ooboffs, req->oobbuf.out,
+			       req->ooblen);
+	}
+
+	return ret;
+}
+
+static int nand_ecc_sw_bch_finish_io_req(struct nand_device *nand,
+					 struct nand_page_io_req *req,
+					 void *oobbuf)
+{
+	struct nand_ecc_sw_bch_conf *engine_conf = nand->ecc.ctx.priv;
+	struct mtd_info *mtd = nanddev_to_mtd(nand);
+	int eccsize = nand->ecc.ctx.conf.step_size;
+	int total = nand->ecc.ctx.total;
+	int eccbytes = engine_conf->code_size;
+	int eccsteps = engine_conf->nsteps;
+	u8 *ecccalc = engine_conf->calc_buf;
+	u8 *ecccode = engine_conf->code_buf;
+	unsigned int max_bitflips = 0;
+	u8 *data = req->databuf.in;
+	int i, ret;
+
+	if (req->mode == MTD_OPS_RAW)
+		return 0;
+
+	/* This engine does not provide BBM/free OOB bytes protection */
+	if (!req->datalen)
+		return 0;
+
+	/* Don't mess up with the upper layer: restore the request OOB length */
+	req->ooblen = engine_conf->reqooblen;
+
+	/* Nothing more to do for page write */
+	if (req->type == NAND_PAGE_WRITE)
+		return 0;
+
+	/* Finish a page read: retrieve the (raw) ECC bytes*/
+	ret = mtd_ooblayout_get_eccbytes(mtd, ecccode, oobbuf, 0, total);
+	if (ret)
+		return ret;
+
+	/* Calculate the ECC bytes */
+	for (i = 0; eccsteps; eccsteps--, i += eccbytes, data += eccsize)
+		nand_ecc_sw_bch_calculate(nand, data, &ecccalc[i]);
+
+	/* Finish a page read: compare and correct */
+	for (eccsteps = engine_conf->nsteps, i = 0, data = req->databuf.in;
+	     eccsteps;
+	     eccsteps--, i += eccbytes, data += eccsize) {
+		int stat =  nand_ecc_sw_bch_correct(nand, data,
+						    &ecccode[i],
+						    &ecccalc[i]);
+		if (stat < 0) {
+			mtd->ecc_stats.failed++;
+		} else {
+			mtd->ecc_stats.corrected += stat;
+			max_bitflips = max_t(unsigned int, max_bitflips, stat);
+		}
+	}
+
+	/* Format the OOB buffer that will be returned to the user */
+	if (req->ooblen) {
+		if (req->mode == MTD_OPS_AUTO_OOB)
+			mtd_ooblayout_get_databytes(mtd, oobbuf,
+						    req->oobbuf.in,
+						    req->ooboffs, req->ooblen);
+		else
+			memcpy(req->oobbuf.in, oobbuf + req->ooboffs,
+			       req->ooblen);
+	}
+
+	return max_bitflips;
+}
+
+static struct nand_ecc_engine_ops nand_ecc_sw_bch_engine_ops = {
+	.init_ctx = nand_ecc_sw_bch_init_ctx,
+	.cleanup_ctx = nand_ecc_sw_bch_cleanup_ctx,
+	.prepare_io_req = nand_ecc_sw_bch_prepare_io_req,
+	.finish_io_req = nand_ecc_sw_bch_finish_io_req,
+};
+
+static struct nand_ecc_engine nand_ecc_sw_bch_engine = {
+	.ops = &nand_ecc_sw_bch_engine_ops,
+};
+
+struct nand_ecc_engine *nand_ecc_sw_bch_get_engine(void)
+{
+	return &nand_ecc_sw_bch_engine;
+}
+EXPORT_SYMBOL(nand_ecc_sw_bch_get_engine);
 
 MODULE_LICENSE("GPL");
 MODULE_AUTHOR("Ivan Djelic <ivan.djelic@parrot.com>");
diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 7734f18ddc59..22416334357a 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -4912,17 +4912,11 @@ int rawnand_sw_bch_init(struct nand_chip *chip)
 	base->ecc.user_conf.step_size = chip->ecc.size;
 	base->ecc.user_conf.strength = chip->ecc.strength;
 
-	engine_conf = kzalloc(sizeof(*engine_conf), GFP_KERNEL);
-	if (!engine_conf)
-		return -ENOMEM;
-
-	engine_conf->code_size = chip->ecc.bytes;
-
-	base->ecc.ctx.priv = engine_conf;
-
-	ret = nand_ecc_sw_bch_init(base);
+	ret = nand_ecc_sw_bch_init_ctx(base);
 	if (ret)
-		kfree(base->ecc.ctx.priv);
+		return ret;
+
+	engine_conf = base->ecc.ctx.priv;
 
 	chip->ecc.size = base->ecc.ctx.conf.step_size;
 	chip->ecc.strength = base->ecc.ctx.conf.strength;
@@ -4930,7 +4924,7 @@ int rawnand_sw_bch_init(struct nand_chip *chip)
 	chip->ecc.steps = engine_conf->nsteps;
 	chip->ecc.bytes = engine_conf->code_size;
 
-	return ret;
+	return 0;
 }
 EXPORT_SYMBOL(rawnand_sw_bch_init);
 
@@ -4956,9 +4950,7 @@ void rawnand_sw_bch_cleanup(struct nand_chip *chip)
 {
 	struct nand_device *base = &chip->base;
 
-	nand_ecc_sw_bch_cleanup(base);
-
-	kfree(base->ecc.ctx.priv);
+	nand_ecc_sw_bch_cleanup_ctx(base);
 }
 EXPORT_SYMBOL(rawnand_sw_bch_cleanup);
 
@@ -5013,51 +5005,15 @@ static int nand_set_ecc_soft_ops(struct nand_chip *chip)
 		ecc->read_oob = nand_read_oob_std;
 		ecc->write_oob = nand_write_oob_std;
 
-		/*
-		* Board driver should supply ecc.size and ecc.strength
-		* values to select how many bits are correctable.
-		* Otherwise, default to 4 bits for large page devices.
-		*/
-		if (!ecc->size && (mtd->oobsize >= 64)) {
-			ecc->size = 512;
-			ecc->strength = 4;
-		}
-
-		/*
-		 * if no ecc placement scheme was provided pickup the default
-		 * large page one.
-		 */
-		if (!mtd->ooblayout) {
-			/* handle large page devices only */
-			if (mtd->oobsize < 64) {
-				WARN(1, "OOB layout is required when using software BCH on small pages\n");
-				return -EINVAL;
-			}
-
-			mtd_set_ooblayout(mtd, &nand_ooblayout_lp_ops);
-
-		}
-
 		/*
 		 * We can only maximize ECC config when the default layout is
 		 * used, otherwise we don't know how many bytes can really be
 		 * used.
 		 */
-		if (mtd->ooblayout == &nand_ooblayout_lp_ops &&
-		    nanddev->ecc.user_conf.flags & NAND_ECC_MAXIMIZE) {
-			int steps, bytes;
+		if (nanddev->ecc.user_conf.flags & NAND_ECC_MAXIMIZE &&
+		    mtd->ooblayout != &nand_ooblayout_lp_ops)
+			nanddev->ecc.user_conf.flags &= ~NAND_ECC_MAXIMIZE;
 
-			/* Always prefer 1k blocks over 512bytes ones */
-			ecc->size = 1024;
-			steps = mtd->writesize / ecc->size;
-
-			/* Reserve 2 bytes for the BBM */
-			bytes = (mtd->oobsize - 2) / steps;
-			ecc->strength = bytes * 8 / fls(8 * ecc->size);
-		}
-
-		/* See ecc_sw_bch_init() for details. */
-		ecc->bytes = 0;
 		ret = rawnand_sw_bch_init(chip);
 		if (ret) {
 			WARN(1, "BCH ECC initialization failed!\n");
diff --git a/include/linux/mtd/nand-ecc-sw-bch.h b/include/linux/mtd/nand-ecc-sw-bch.h
index 61a5b44b94ef..eec5373a2423 100644
--- a/include/linux/mtd/nand-ecc-sw-bch.h
+++ b/include/linux/mtd/nand-ecc-sw-bch.h
@@ -39,8 +39,9 @@ int nand_ecc_sw_bch_calculate(struct nand_device *nand,
 			      const unsigned char *buf, unsigned char *code);
 int nand_ecc_sw_bch_correct(struct nand_device *nand, unsigned char *buf,
 			    unsigned char *read_ecc, unsigned char *calc_ecc);
-int nand_ecc_sw_bch_init(struct nand_device *nand);
-void nand_ecc_sw_bch_cleanup(struct nand_device *nand);
+int nand_ecc_sw_bch_init_ctx(struct nand_device *nand);
+void nand_ecc_sw_bch_cleanup_ctx(struct nand_device *nand);
+struct nand_ecc_engine *nand_ecc_sw_bch_get_engine(void);
 
 #else /* !CONFIG_MTD_NAND_ECC_SW_BCH */
 
@@ -59,12 +60,17 @@ static inline int nand_ecc_sw_bch_correct(struct nand_device *nand,
 	return -ENOTSUPP;
 }
 
-static inline int nand_ecc_sw_bch_init(struct nand_device *nand)
+static inline int nand_ecc_sw_bch_init_ctx(struct nand_device *nand)
 {
 	return -EINVAL;
 }
 
-static inline void nand_ecc_sw_bch_cleanup(struct nand_device *nand) {}
+static inline void nand_ecc_sw_bch_cleanup_ctx(struct nand_device *nand) {}
+
+static inline struct nand_ecc_engine *nand_ecc_sw_bch_get_engine(void)
+{
+	return NULL;
+}
 
 #endif /* CONFIG_MTD_NAND_ECC_SW_BCH */
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
