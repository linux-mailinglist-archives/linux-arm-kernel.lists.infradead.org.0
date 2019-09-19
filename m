Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C35A2B8209
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 21:58:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J17hvyo/kDxYXnN2geY6tXvVUbLdbm3sb3n6LpztP7k=; b=jWa8va0YJZ++kv
	LfELYhU1gq7hhoYlLITsq4ue5ryheFfxIkV8fnEqHlxnS2TFUyjTeLfQN1SiV6nsUbSGsJ/mWOA2u
	W1WhX6OE4cTjdtfAGzkkuAQCD2/H2r5QQKdxJvQbkLEU/Rl6Z1rTXr+DaRG2NVe/VQzU/zPbDdkmA
	LVBtwW4YIWKvQAHCZN9e+G2h0lJUpKOSAcFoFGK5uvEmRhjZQjP8x5jrdeDS2TjDPE4msjw4dGshC
	81CcvrQnE1Os/+I07+7BMnEwufq/gafj9pZQ3oGBMU63fKdYjSMAApxTRQ727BgEPtK2uuPzTsrhL
	FEsip/1mNZvbDk0Dkxow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB2ZD-00037B-IC; Thu, 19 Sep 2019 19:58:15 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB2B0-0002qT-LS; Thu, 19 Sep 2019 19:33:17 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 221D0240003;
 Thu, 19 Sep 2019 19:33:11 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH v3 40/40] mtd: nand: ecc: Add infrastructure to support
 hardware engines
Date: Thu, 19 Sep 2019 21:31:40 +0200
Message-Id: <20190919193141.7865-41-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190919193141.7865-1-miquel.raynal@bootlin.com>
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_123315_100694_83348FDB 
X-CRM114-Status: GOOD (  18.42  )
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

Add the necessary helpers to register/unregister hardware ECC engines
that will be called from ECC engine drivers.

Also add helpers to get the right engine from the user
perspective. Keep a reference on the engine in use to prevent modules
to be unloaded. Put the reference if the engine is retired.

A static list of hardware (only) ECC engines is setup to keep track of
the registered engines.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/core.c  |  10 ++--
 drivers/mtd/nand/ecc.c   | 103 +++++++++++++++++++++++++++++++++++++++
 include/linux/mtd/nand.h |  12 +++++
 3 files changed, 122 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/core.c b/drivers/mtd/nand/core.c
index 062a65e131db..55dc1920deae 100644
--- a/drivers/mtd/nand/core.c
+++ b/drivers/mtd/nand/core.c
@@ -232,7 +232,9 @@ static int nanddev_get_ecc_engine(struct nand_device *nand)
 		nand->ecc.engine = nand_ecc_get_ondie_engine(nand);
 		break;
 	case NAND_HW_ECC_ENGINE:
-		pr_err("Hardware ECC engines not supported yet\n");
+		nand->ecc.engine = nand_ecc_get_hw_engine(nand);
+		if (PTR_ERR(nand->ecc.engine) == -EPROBE_DEFER)
+			return -EPROBE_DEFER;
 		break;
 	default:
 		pr_err("Missing ECC engine provider\n");
@@ -252,7 +254,7 @@ static int nanddev_put_ecc_engine(struct nand_device *nand)
 {
 	switch (nand->ecc.ctx.conf.provider) {
 	case NAND_HW_ECC_ENGINE:
-		pr_err("Hardware ECC engines not supported yet\n");
+		nand_ecc_put_hw_engine(nand);
 		break;
 	case NAND_NO_ECC_ENGINE:
 	case NAND_SOFT_ECC_ENGINE:
@@ -297,7 +299,9 @@ int nanddev_ecc_engine_init(struct nand_device *nand)
 	/* Look for the ECC engine to use */
 	ret = nanddev_get_ecc_engine(nand);
 	if (ret) {
-		pr_err("No ECC engine found\n");
+		if (ret != -EPROBE_DEFER)
+			pr_err("No ECC engine found\n");
+
 		return ret;
 	}
 
diff --git a/drivers/mtd/nand/ecc.c b/drivers/mtd/nand/ecc.c
index 4f869d33213d..eabf936c5a50 100644
--- a/drivers/mtd/nand/ecc.c
+++ b/drivers/mtd/nand/ecc.c
@@ -96,6 +96,10 @@
 
 #include <linux/module.h>
 #include <linux/mtd/nand.h>
+#include <linux/of_platform.h>
+
+static LIST_HEAD(hw_engines);
+static DEFINE_MUTEX(hw_engines_mutex);
 
 int nand_ecc_init_ctx(struct nand_device *nand)
 {
@@ -480,6 +484,39 @@ bool nand_ecc_correction_is_enough(struct nand_device *nand)
 }
 EXPORT_SYMBOL(nand_ecc_correction_is_enough);
 
+int nand_ecc_register_hw_engine(struct nand_ecc_engine *engine)
+{
+	struct nand_ecc_engine *item;
+
+	if (!engine)
+		return -ENOTSUPP;
+
+	/* Prevent multiple registrations of one engine */
+	list_for_each_entry(item, &hw_engines, node)
+		if (item == engine)
+			return 0;
+
+	mutex_lock(&hw_engines_mutex);
+	list_add_tail(&engine->node, &hw_engines);
+	mutex_unlock(&hw_engines_mutex);
+
+	return 0;
+}
+EXPORT_SYMBOL(nand_ecc_register_hw_engine);
+
+int nand_ecc_unregister_hw_engine(struct nand_ecc_engine *engine)
+{
+	if (!engine)
+		return -ENOTSUPP;
+
+	mutex_lock(&hw_engines_mutex);
+	list_del(&engine->node);
+	mutex_unlock(&hw_engines_mutex);
+
+	return 0;
+}
+EXPORT_SYMBOL(nand_ecc_unregister_hw_engine);
+
 struct nand_ecc_engine *nand_ecc_get_sw_engine(struct nand_device *nand)
 {
 	unsigned int algo = nand->ecc.user_conf.algo;
@@ -506,6 +543,72 @@ struct nand_ecc_engine *nand_ecc_get_ondie_engine(struct nand_device *nand)
 }
 EXPORT_SYMBOL(nand_ecc_get_ondie_engine);
 
+struct nand_ecc_engine *nand_ecc_match_hw_engine(struct device *dev)
+{
+	struct nand_ecc_engine *item;
+
+	list_for_each_entry(item, &hw_engines, node)
+		if (item->dev == dev)
+			return item;
+
+	return NULL;
+}
+EXPORT_SYMBOL(nand_ecc_match_hw_engine);
+
+struct nand_ecc_engine *nand_ecc_get_hw_engine(struct nand_device *nand)
+{
+	struct nand_ecc_engine *engine = NULL;
+	struct device *dev = &nand->mtd.dev;
+	struct platform_device *pdev;
+	struct device_node *np;
+
+	if (list_empty(&hw_engines))
+		return NULL;
+
+	/* Check for an explicit ecc-engine property in the parent */
+	np = of_parse_phandle(dev->of_node->parent, "ecc-engine", 0);
+	if (np) {
+
+		pdev = of_find_device_by_node(np);
+		if (!pdev)
+			return ERR_PTR(-EPROBE_DEFER);
+
+		engine = nand_ecc_match_hw_engine(&pdev->dev);
+		of_dev_put(pdev);
+		of_node_put(np);
+	}
+
+	/* Support DTs without ecc-engine property: check the parent node */
+	if (!engine) {
+		pdev = of_find_device_by_node(dev->of_node->parent);
+		if (pdev) {
+			engine = nand_ecc_match_hw_engine(&pdev->dev);
+			of_dev_put(pdev);
+		}
+	}
+
+	/* Support no DT or very old DTs: check the node itself */
+	if (!engine) {
+		pdev = of_find_device_by_node(dev->of_node);
+		if (pdev) {
+			engine = nand_ecc_match_hw_engine(&pdev->dev);
+			of_dev_put(pdev);
+		}
+	}
+
+	if (engine)
+		get_device(engine->dev);
+
+	return engine;
+}
+EXPORT_SYMBOL(nand_ecc_get_hw_engine);
+
+void nand_ecc_put_hw_engine(struct nand_device *nand)
+{
+	put_device(nand->ecc.engine->dev);
+}
+EXPORT_SYMBOL(nand_ecc_put_hw_engine);
+
 MODULE_LICENSE("GPL");
 MODULE_AUTHOR("Miquel Raynal <miquel.raynal@bootlin.com>");
 MODULE_DESCRIPTION("Generic ECC engine");
diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index 5a745f74eb35..673d6c893f01 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -258,10 +258,16 @@ struct nand_ecc_engine_ops {
 
 /**
  * struct nand_ecc_engine - Generic ECC engine abstraction for NAND devices
+ * @dev: Host device
+ * @node: Private field for registration time
  * @ops: ECC engine operations
+ * @priv: Private data
  */
 struct nand_ecc_engine {
+	struct device *dev;
+	struct list_head node;
 	struct nand_ecc_engine_ops *ops;
+	void *priv;
 };
 
 void nand_ecc_read_user_conf(struct nand_device *nand);
@@ -272,8 +278,14 @@ int nand_ecc_prepare_io_req(struct nand_device *nand,
 int nand_ecc_finish_io_req(struct nand_device *nand,
 			   struct nand_page_io_req *req, void *oobbuf);
 bool nand_ecc_correction_is_enough(struct nand_device *nand);
+int nand_ecc_register_hw_engine(struct nand_ecc_engine *engine);
+int nand_ecc_unregister_hw_engine(struct nand_ecc_engine *engine);
 struct nand_ecc_engine *nand_ecc_get_sw_engine(struct nand_device *nand);
 struct nand_ecc_engine *nand_ecc_get_ondie_engine(struct nand_device *nand);
+struct nand_ecc_engine *nand_ecc_get_hw_engine(struct nand_device *nand);
+struct nand_ecc_engine *nand_ecc_match_hw_engine(struct device *dev);
+void nand_ecc_put_hw_engine(struct nand_device *nand);
+
 
 /**
  * struct nand_ecc - High-level ECC object
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
