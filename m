Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A264DB81CB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 21:51:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3dpowuAqdCqfhpPeU/1nV60Ov2SMN06cgd7SoengMoA=; b=fdcJ/lK+w7qP24
	m1TyTACo9VDN13CUfgUL1VXJflkcRt7IoVAO1gqHsZ8z66UfV94lzVclUyp7QIBXtcx+pAr1y2Px/
	YWhGFSN9TW2GZkr1+at6Pu2Rqs8NySypvbW2PyQ8q55hoxlUAkOGQdlryEVBym5G3DdYJvhkbk+k+
	Cpvk+xcO5tNDmeAA0+9vTrfl2PHLSoIXPgA8OZvT6uV9EvYLPdMxavexRqQmAtniLfRKvIebi4g7q
	NgYMpLhcjkpuMSoh50uS4P2TJPs1X6iTaBV5rL2A4xsiKMhZ+Jx+6h26G60ePzVul4Zagy3QLlTei
	TK3nTPSpaaUyKe8FFO3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB2Sa-0003eY-Ex; Thu, 19 Sep 2019 19:51:24 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB2AW-0002Yu-Ls; Thu, 19 Sep 2019 19:32:47 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 39A49240004;
 Thu, 19 Sep 2019 19:32:41 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH v3 27/40] mtd: nand: ecc: Create the software Hamming engine
 instance
Date: Thu, 19 Sep 2019 21:31:27 +0200
Message-Id: <20190919193141.7865-28-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190919193141.7865-1-miquel.raynal@bootlin.com>
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_123245_306263_5214B37A 
X-CRM114-Status: GOOD (  22.58  )
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
NAND subsystem by instantiating a second ECC engine: software
Hamming.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/ecc-sw-hamming.c       | 208 ++++++++++++++++++++++++
 drivers/mtd/nand/raw/nand_base.c        |  25 +--
 include/linux/mtd/nand-ecc-sw-hamming.h |  15 ++
 3 files changed, 231 insertions(+), 17 deletions(-)

diff --git a/drivers/mtd/nand/ecc-sw-hamming.c b/drivers/mtd/nand/ecc-sw-hamming.c
index 8494e68814bc..a524747458a8 100644
--- a/drivers/mtd/nand/ecc-sw-hamming.c
+++ b/drivers/mtd/nand/ecc-sw-hamming.c
@@ -17,6 +17,7 @@
 #include <linux/types.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
+#include <linux/mtd/nand.h>
 #include <linux/mtd/nand-ecc-sw-hamming.h>
 #include <asm/byteorder.h>
 
@@ -464,6 +465,213 @@ int nand_ecc_sw_hamming_correct(struct nand_device *nand, unsigned char *buf,
 }
 EXPORT_SYMBOL(nand_ecc_sw_hamming_correct);
 
+int nand_ecc_sw_hamming_init_ctx(struct nand_device *nand)
+{
+	struct nand_ecc_props *conf = &nand->ecc.ctx.conf;
+	struct nand_ecc_sw_hamming_conf *engine_conf;
+	struct mtd_info *mtd = nanddev_to_mtd(nand);
+
+	if (!mtd->ooblayout) {
+		switch (mtd->oobsize) {
+		case 8:
+		case 16:
+			mtd_set_ooblayout(mtd, &nand_ooblayout_sp_ops);
+			break;
+		case 64:
+		case 128:
+			mtd_set_ooblayout(mtd, &nand_ooblayout_lp_hamming_ops);
+			break;
+		default:
+			return -ENOTSUPP;
+		}
+	}
+
+	conf->provider = NAND_SOFT_ECC_ENGINE;
+	conf->algo = NAND_ECC_HAMMING;
+	conf->step_size = nand->ecc.user_conf.step_size;
+	conf->strength = 1;
+
+	/* Use the strongest configuration by default */
+	if (conf->step_size != 256 && conf->step_size != 512)
+		conf->step_size = 256;
+
+	engine_conf = kzalloc(sizeof(*engine_conf), GFP_KERNEL);
+	if (!engine_conf)
+		return -ENOMEM;
+
+	engine_conf->code_size = 3;
+	engine_conf->nsteps = mtd->writesize / conf->step_size;
+	engine_conf->calc_buf = kzalloc(sizeof(mtd->oobsize), GFP_KERNEL);
+	engine_conf->code_buf = kzalloc(sizeof(mtd->oobsize), GFP_KERNEL);
+	if (!engine_conf->calc_buf || !engine_conf->code_buf) {
+		kfree(engine_conf);
+		return -ENOMEM;
+	}
+
+	nand->ecc.ctx.priv = engine_conf;
+	nand->ecc.ctx.total = engine_conf->nsteps * engine_conf->code_size;
+
+	return 0;
+}
+EXPORT_SYMBOL(nand_ecc_sw_hamming_init_ctx);
+
+void nand_ecc_sw_hamming_cleanup_ctx(struct nand_device *nand)
+{
+	struct nand_ecc_sw_hamming_conf *engine_conf = nand->ecc.ctx.priv;
+
+	if (engine_conf) {
+		kfree(engine_conf->calc_buf);
+		kfree(engine_conf->code_buf);
+	}
+
+	kfree(engine_conf);
+}
+EXPORT_SYMBOL(nand_ecc_sw_hamming_cleanup_ctx);
+
+static int nand_ecc_sw_hamming_prepare_io_req(struct nand_device *nand,
+					      struct nand_page_io_req *req,
+					      void *oobbuf)
+{
+	struct nand_ecc_sw_hamming_conf *engine_conf = nand->ecc.ctx.priv;
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
+	/* No preparation for page read */
+	if (req->type == NAND_PAGE_READ)
+		return 0;
+
+	/* Preparation for page write: derive the ECC bytes and place them */
+	for (i = 0; eccsteps; eccsteps--, i += eccbytes, data += eccsize)
+		nand_ecc_sw_hamming_calculate(nand, data, &ecccalc[i]);
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
+static int nand_ecc_sw_hamming_finish_io_req(struct nand_device *nand,
+					     struct nand_page_io_req *req,
+					     void *oobbuf)
+{
+	struct nand_ecc_sw_hamming_conf *engine_conf = nand->ecc.ctx.priv;
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
+		nand_ecc_sw_hamming_calculate(nand, data, &ecccalc[i]);
+
+	eccsteps = engine_conf->nsteps;
+
+	/* Finish a page read: compare and correct */
+	for (eccsteps = engine_conf->nsteps, i = 0, data = req->databuf.in;
+	     eccsteps;
+	     eccsteps--, i += eccbytes, data += eccsize) {
+		int stat =  nand_ecc_sw_hamming_correct(nand, data,
+							&ecccode[i],
+							&ecccalc[i]);
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
+static struct nand_ecc_engine_ops nand_ecc_sw_hamming_engine_ops = {
+	.init_ctx = nand_ecc_sw_hamming_init_ctx,
+	.cleanup_ctx = nand_ecc_sw_hamming_cleanup_ctx,
+	.prepare_io_req = nand_ecc_sw_hamming_prepare_io_req,
+	.finish_io_req = nand_ecc_sw_hamming_finish_io_req,
+};
+
+static struct nand_ecc_engine nand_ecc_sw_hamming_engine = {
+	.ops = &nand_ecc_sw_hamming_engine_ops,
+};
+
+struct nand_ecc_engine *nand_ecc_sw_hamming_get_engine(void)
+{
+	return &nand_ecc_sw_hamming_engine;
+}
+EXPORT_SYMBOL(nand_ecc_sw_hamming_get_engine);
+
 MODULE_LICENSE("GPL");
 MODULE_AUTHOR("Frans Meulenbroeks <fransmeulenbroeks@gmail.com>");
 MODULE_DESCRIPTION("NAND software Hamming ECC support");
diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 22416334357a..a0f23051cc21 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -4834,34 +4834,24 @@ static void nand_scan_ident_cleanup(struct nand_chip *chip)
 
 int rawnand_sw_hamming_init(struct nand_chip *chip)
 {
-	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct nand_ecc_sw_hamming_conf *engine_conf;
 	struct nand_device *base = &chip->base;
+	int ret;
 
 	base->ecc.user_conf.provider = NAND_SOFT_ECC_ENGINE;
 	base->ecc.user_conf.algo = NAND_ECC_HAMMING;
 	base->ecc.user_conf.strength = chip->ecc.strength;
 	base->ecc.user_conf.step_size = chip->ecc.size;
 
-	if (base->ecc.user_conf.strength != 1 ||
-	    (base->ecc.user_conf.step_size != 256 &&
-	     base->ecc.user_conf.step_size != 512)) {
-		pr_err("%s: unsupported strength or step size\n", __func__);
-		return -EINVAL;
-	}
+	ret = nand_ecc_sw_hamming_init_ctx(base);
+	if (ret)
+		return ret;
 
-	engine_conf = kzalloc(sizeof(*engine_conf), GFP_KERNEL);
-	if (!engine_conf)
-		return -ENOMEM;
-
-	engine_conf->code_size = 3;
-	engine_conf->nsteps = mtd->writesize / base->ecc.user_conf.step_size;
+	engine_conf = base->ecc.ctx.priv;
 
 	if (chip->ecc.options & NAND_ECC_SOFT_HAMMING_SM_ORDER)
 		engine_conf->sm_order = true;
 
-	base->ecc.ctx.priv = engine_conf;
-
 	chip->ecc.size = base->ecc.ctx.conf.step_size;
 	chip->ecc.strength = base->ecc.ctx.conf.strength;
 	chip->ecc.total = base->ecc.ctx.total;
@@ -4897,7 +4887,7 @@ void rawnand_sw_hamming_cleanup(struct nand_chip *chip)
 {
 	struct nand_device *base = &chip->base;
 
-	kfree(base->ecc.ctx.priv);
+	nand_ecc_sw_hamming_cleanup_ctx(base);
 }
 EXPORT_SYMBOL(rawnand_sw_hamming_cleanup);
 
@@ -5361,7 +5351,8 @@ static int nand_scan_tail(struct nand_chip *chip)
 	 * If no default placement scheme is given, select an appropriate one.
 	 */
 	if (!mtd->ooblayout &&
-	    !(ecc->mode == NAND_SOFT_ECC_ENGINE && ecc->algo == NAND_ECC_BCH)) {
+	    !(ecc->mode == NAND_SOFT_ECC_ENGINE && ecc->algo == NAND_ECC_BCH) &&
+	    !(ecc->mode == NAND_SOFT_ECC_ENGINE && ecc->algo == NAND_ECC_HAMMING)) {
 		switch (mtd->oobsize) {
 		case 8:
 		case 16:
diff --git a/include/linux/mtd/nand-ecc-sw-hamming.h b/include/linux/mtd/nand-ecc-sw-hamming.h
index 9de80d324cfa..3ae51bd2e2ab 100644
--- a/include/linux/mtd/nand-ecc-sw-hamming.h
+++ b/include/linux/mtd/nand-ecc-sw-hamming.h
@@ -32,6 +32,8 @@ struct nand_ecc_sw_hamming_conf {
 
 #if IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_HAMMING)
 
+int nand_ecc_sw_hamming_init_ctx(struct nand_device *nand);
+void nand_ecc_sw_hamming_cleanup_ctx(struct nand_device *nand);
 int ecc_sw_hamming_calculate(const unsigned char *buf, unsigned int step_size,
 			     unsigned char *code, bool sm_order);
 int nand_ecc_sw_hamming_calculate(struct nand_device *nand,
@@ -43,9 +45,17 @@ int ecc_sw_hamming_correct(unsigned char *buf, unsigned char *read_ecc,
 int nand_ecc_sw_hamming_correct(struct nand_device *nand, unsigned char *buf,
 				unsigned char *read_ecc,
 				unsigned char *calc_ecc);
+struct nand_ecc_engine *nand_ecc_sw_hamming_get_engine(void);
 
 #else /* !CONFIG_MTD_NAND_ECC_SW_HAMMING */
 
+static inline int nand_ecc_sw_hamming_init_ctx(struct nand_device *nand)
+{
+	return -ENOTSUPP;
+}
+
+static inline void nand_ecc_sw_hamming_cleanup_ctx(struct nand_device *nand) {}
+
 static inline int ecc_sw_hamming_calculate(const unsigned char *buf,
 					   unsigned int step_size,
 					   unsigned char *code, bool sm_order)
@@ -76,6 +86,11 @@ static inline int nand_ecc_sw_hamming_correct(struct nand_device *nand,
 	return -ENOTSUPP;
 }
 
+static inline struct nand_ecc_engine *nand_ecc_sw_hamming_get_engine(void)
+{
+	return NULL;
+}
+
 #endif /* CONFIG_MTD_NAND_ECC_SW_HAMMING */
 
 #endif /* __MTD_NAND_ECC_SW_HAMMING_H__ */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
