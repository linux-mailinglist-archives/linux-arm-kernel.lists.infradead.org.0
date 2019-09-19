Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC27B81DB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 21:53:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i4+h5M50tziBasUwxsoWzHjjC7YK6L7VYi0t0iAIH54=; b=TkwBbFYzUzNumL
	T6hG8MfSLJukbBl6hAQJ/0JlcHfMed3zpzHgDBVnWnEgGK4GdPIV7SDCV8TkH9P4OZIi20IgYqOea
	2O/yARZJ0gLJop3qOk6jYxD9uHVfh71zoHxZyH1MOei93lQXIXSJvYta2bi0xjBWNxpd//G1Caj4e
	pMSJOJVGcR2UvTfXtDPwuuBbHihXw2k+Q3FvxdwAesFeJcCGpP3ETM6qZS0fPHvK7zBi4Li1l3fwg
	tJ4TmfVraZMWPmT6tfePuHRRawLQztPG11OxsJzIcUtLC+rsPjlc549ocUjmsR3qXZpw/k7n6AEJy
	BujtX5n8G7+CsbKgEXdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB2UO-0005gE-RI; Thu, 19 Sep 2019 19:53:16 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB2Af-0002eW-Jg; Thu, 19 Sep 2019 19:32:55 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 1588A240007;
 Thu, 19 Sep 2019 19:32:49 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH v3 31/40] mtd: spinand: Instantiate a SPI-NAND on-die ECC
 engine
Date: Thu, 19 Sep 2019 21:31:31 +0200
Message-Id: <20190919193141.7865-32-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190919193141.7865-1-miquel.raynal@bootlin.com>
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_123254_118144_C7178EE9 
X-CRM114-Status: GOOD (  15.63  )
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

Make use of the existing functions taken from the SPI-NAND core to
instantiate an on-die ECC engine specific to the SPI-NAND core. The
next step will be to tweak the core to use this object instead of
calling the helpers directly.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/spi/core.c | 69 +++++++++++++++++++++++++++++++++++++
 include/linux/mtd/spinand.h |  9 +++++
 2 files changed, 78 insertions(+)

diff --git a/drivers/mtd/nand/spi/core.c b/drivers/mtd/nand/spi/core.c
index 49b252bc1352..5a935b7343eb 100644
--- a/drivers/mtd/nand/spi/core.c
+++ b/drivers/mtd/nand/spi/core.c
@@ -245,6 +245,75 @@ static const struct mtd_ooblayout_ops spinand_noecc_ooblayout = {
 	.free = spinand_noecc_ooblayout_free,
 };
 
+static int spinand_ondie_ecc_init_ctx(struct nand_device *nand)
+{
+	struct spinand_device *spinand = nand_to_spinand(nand);
+	struct mtd_info *mtd = nanddev_to_mtd(nand);
+	struct spinand_ondie_ecc_conf *engine_conf;
+
+	nand->ecc.ctx.conf.provider = NAND_ON_DIE_ECC_ENGINE;
+	nand->ecc.ctx.conf.step_size = nand->ecc.requirements.step_size;
+	nand->ecc.ctx.conf.strength = nand->ecc.requirements.strength;
+
+	engine_conf = kzalloc(sizeof(*engine_conf), GFP_KERNEL);
+	if (!engine_conf)
+		return -ENOMEM;
+
+	nand->ecc.ctx.priv = engine_conf;
+
+	if (spinand->eccinfo.ooblayout)
+		mtd_set_ooblayout(mtd, spinand->eccinfo.ooblayout);
+	else
+		mtd_set_ooblayout(mtd, &spinand_noecc_ooblayout);
+
+	return 0;
+}
+
+static void spinand_ondie_ecc_cleanup_ctx(struct nand_device *nand)
+{
+	kfree(nand->ecc.ctx.priv);
+}
+
+static int spinand_ondie_ecc_prepare_io_req(struct nand_device *nand,
+					    struct nand_page_io_req *req,
+					    void *oobbuf)
+{
+	struct spinand_device *spinand = nand_to_spinand(nand);
+	bool enable = (req->mode != MTD_OPS_RAW);
+
+	/* Only enable or disable the engine */
+	return spinand_ecc_enable(spinand, enable);
+}
+
+static int spinand_ondie_ecc_finish_io_req(struct nand_device *nand,
+					   struct nand_page_io_req *req,
+					   void *oobbuf)
+{
+	struct spinand_ondie_ecc_conf *engine_conf = nand->ecc.ctx.priv;
+	struct spinand_device *spinand = nand_to_spinand(nand);
+
+	if (req->mode == MTD_OPS_RAW)
+		return 0;
+
+	/* Nothing to do when finishing a page write */
+	if (req->type == NAND_PAGE_WRITE)
+		return 0;
+
+	/* Finish a page write: check the status, report errors/bitflips */
+	return spinand_check_ecc_status(spinand, engine_conf->status);
+}
+
+static struct nand_ecc_engine_ops spinand_ondie_ecc_engine_ops = {
+	.init_ctx = spinand_ondie_ecc_init_ctx,
+	.cleanup_ctx = spinand_ondie_ecc_cleanup_ctx,
+	.prepare_io_req = spinand_ondie_ecc_prepare_io_req,
+	.finish_io_req = spinand_ondie_ecc_finish_io_req,
+};
+
+static __maybe_unused struct nand_ecc_engine spinand_ondie_ecc_engine = {
+	.ops = &spinand_ondie_ecc_engine_ops,
+};
+
 static int spinand_write_enable_op(struct spinand_device *spinand)
 {
 	struct spi_mem_op op = SPINAND_WR_EN_DIS_OP(true);
diff --git a/include/linux/mtd/spinand.h b/include/linux/mtd/spinand.h
index 87d774b7500c..7526e1edb47b 100644
--- a/include/linux/mtd/spinand.h
+++ b/include/linux/mtd/spinand.h
@@ -271,6 +271,15 @@ struct spinand_ecc_info {
 
 #define SPINAND_HAS_QE_BIT		BIT(0)
 
+/**
+ * struct spinand_ondie_ecc_conf - private SPI-NAND on-die ECC engine structure
+ * @status: status of the last wait operation that will be used in case
+ *          ->get_status() is not populated by the spinand device.
+ */
+struct spinand_ondie_ecc_conf {
+	u8 status;
+};
+
 /**
  * struct spinand_info - Structure used to describe SPI NAND chips
  * @model: model name
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
