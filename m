Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B21FA2620F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 12:39:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pwam/bT1cllro4FCZbRh6FPw7UHe6JoXYwddUOdgqfM=; b=fN0KhkDXKrhhJO/NGaYqp/z0vo
	vNnCTCdKu2FeFUnMO8iUgQ+6Rr/LooDaMaCkNdmzT84TolPqLWQaiLo4FwmudEnZM7SXUJ3fu2siL
	5crwEHvKDf3cS+bN8uB3ZfNeurt/p7bP5jFarKNKjFhwj8SzAQ/PSP8iX95B1k0P3DxF8oMg1bZJa
	ARgsbC47HsFtFNRQA4t8lovbSeTFy5NQSl5m3sB/a+scvIexRQ+bacI5nnCJqyfWwCgCgfFsOJvqp
	rWc+csgYk4Z00rvwMmOzEg3Gncujca32Mjs4kf7Hden21AwBmlCEhxO7ToGvWyQhCGz9OPzufPelc
	KQVLn9fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTOeQ-0000ZR-R9; Wed, 22 May 2019 10:39:14 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTOb4-0004tV-VR
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 10:36:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E4684341;
 Wed, 22 May 2019 03:35:46 -0700 (PDT)
Received: from en101.cambridge.arm.com (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 D49C93F575; Wed, 22 May 2019 03:35:45 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 22/30] coresight: Rearrange platform data probing
Date: Wed, 22 May 2019 11:34:55 +0100
Message-Id: <1558521304-27469-23-git-send-email-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
References: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_033547_617806_A28DA6E6 
X-CRM114-Status: GOOD (  18.16  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: coresight@lists.linaro.org, linux-kernel@vger.kernel.org,
 mathieu.poirier@linaro.org, Suzuki K Poulose <suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We are about to introduce methods to clean up the platform data
as we switch to tracking the device reference from "name" to "fwnode
handles" for device connections. This requires us to drop the fwnode
handle references when the data is no longer required - i.e, when
the device probe fails or the device gets unregistered.

In order to consolidate the invocation of the cleanup, we delay the
platform probing to the very last minute, possibly before invoking
the coresight_register. Then, we leave the coresight core code to
do the clean up. i.e, if the coresight_register fails, it takes
care of freeing the data. Otherwise, coresight_unregister will
do the necessary operations.

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/hwtracing/coresight/coresight-catu.c       | 14 +++++++-------
 drivers/hwtracing/coresight/coresight-etb10.c      | 10 +++++-----
 drivers/hwtracing/coresight/coresight-etm3x.c      | 12 +++++++-----
 drivers/hwtracing/coresight/coresight-etm4x.c      | 12 +++++++-----
 drivers/hwtracing/coresight/coresight-funnel.c     | 12 +++++++-----
 drivers/hwtracing/coresight/coresight-replicator.c | 12 +++++++-----
 drivers/hwtracing/coresight/coresight-stm.c        | 11 +++++++----
 drivers/hwtracing/coresight/coresight-tmc.c        | 16 ++++++++--------
 drivers/hwtracing/coresight/coresight-tpiu.c       | 10 +++++-----
 9 files changed, 60 insertions(+), 49 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-catu.c b/drivers/hwtracing/coresight/coresight-catu.c
index 05c7304..1c1ad12 100644
--- a/drivers/hwtracing/coresight/coresight-catu.c
+++ b/drivers/hwtracing/coresight/coresight-catu.c
@@ -505,13 +505,6 @@ static int catu_probe(struct amba_device *adev, const struct amba_id *id)
 	struct device *dev = &adev->dev;
 	void __iomem *base;
 
-	pdata = coresight_get_platform_data(dev);
-	if (IS_ERR(pdata)) {
-		ret = PTR_ERR(pdata);
-		goto out;
-	}
-	dev->platform_data = pdata;
-
 	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
 	if (!drvdata) {
 		ret = -ENOMEM;
@@ -544,6 +537,13 @@ static int catu_probe(struct amba_device *adev, const struct amba_id *id)
 	if (ret)
 		goto out;
 
+	pdata = coresight_get_platform_data(dev);
+	if (IS_ERR(pdata)) {
+		ret = PTR_ERR(pdata);
+		goto out;
+	}
+	dev->platform_data = pdata;
+
 	drvdata->base = base;
 	catu_desc.pdata = pdata;
 	catu_desc.dev = dev;
diff --git a/drivers/hwtracing/coresight/coresight-etb10.c b/drivers/hwtracing/coresight/coresight-etb10.c
index 5e7ecc6..09df827 100644
--- a/drivers/hwtracing/coresight/coresight-etb10.c
+++ b/drivers/hwtracing/coresight/coresight-etb10.c
@@ -726,11 +726,6 @@ static int etb_probe(struct amba_device *adev, const struct amba_id *id)
 	struct resource *res = &adev->res;
 	struct coresight_desc desc = { 0 };
 
-	pdata = coresight_get_platform_data(dev);
-	if (IS_ERR(pdata))
-		return PTR_ERR(pdata);
-	adev->dev.platform_data = pdata;
-
 	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
 	if (!drvdata)
 		return -ENOMEM;
@@ -765,6 +760,11 @@ static int etb_probe(struct amba_device *adev, const struct amba_id *id)
 	/* This device is not associated with a session */
 	drvdata->pid = -1;
 
+	pdata = coresight_get_platform_data(dev);
+	if (IS_ERR(pdata))
+		return PTR_ERR(pdata);
+	adev->dev.platform_data = pdata;
+
 	desc.type = CORESIGHT_DEV_TYPE_SINK;
 	desc.subtype.sink_subtype = CORESIGHT_DEV_SUBTYPE_SINK_BUFFER;
 	desc.ops = &etb_cs_ops;
diff --git a/drivers/hwtracing/coresight/coresight-etm3x.c b/drivers/hwtracing/coresight/coresight-etm3x.c
index 101fb01..f2d4616 100644
--- a/drivers/hwtracing/coresight/coresight-etm3x.c
+++ b/drivers/hwtracing/coresight/coresight-etm3x.c
@@ -795,11 +795,6 @@ static int etm_probe(struct amba_device *adev, const struct amba_id *id)
 	if (!drvdata)
 		return -ENOMEM;
 
-	pdata = coresight_get_platform_data(dev);
-	if (IS_ERR(pdata))
-		return PTR_ERR(pdata);
-
-	adev->dev.platform_data = pdata;
 	drvdata->use_cp14 = fwnode_property_read_bool(dev->fwnode, "arm,cp14");
 	dev_set_drvdata(dev, drvdata);
 
@@ -849,6 +844,13 @@ static int etm_probe(struct amba_device *adev, const struct amba_id *id)
 	etm_init_trace_id(drvdata);
 	etm_set_default(&drvdata->config);
 
+	pdata = coresight_get_platform_data(dev);
+	if (IS_ERR(pdata)) {
+		ret = PTR_ERR(pdata);
+		goto err_arch_supported;
+	}
+	adev->dev.platform_data = pdata;
+
 	desc.type = CORESIGHT_DEV_TYPE_SOURCE;
 	desc.subtype.source_subtype = CORESIGHT_DEV_SUBTYPE_SOURCE_PROC;
 	desc.ops = &etm_cs_ops;
diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index 8adc148..1609da1 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -1089,11 +1089,6 @@ static int etm4_probe(struct amba_device *adev, const struct amba_id *id)
 	if (!drvdata)
 		return -ENOMEM;
 
-	pdata = coresight_get_platform_data(dev);
-	if (IS_ERR(pdata))
-		return PTR_ERR(pdata);
-	adev->dev.platform_data = pdata;
-
 	dev_set_drvdata(dev, drvdata);
 
 	/* Validity for the resource is already checked by the AMBA core */
@@ -1136,6 +1131,13 @@ static int etm4_probe(struct amba_device *adev, const struct amba_id *id)
 	etm4_init_trace_id(drvdata);
 	etm4_set_default(&drvdata->config);
 
+	pdata = coresight_get_platform_data(dev);
+	if (IS_ERR(pdata)) {
+		ret = PTR_ERR(pdata);
+		goto err_arch_supported;
+	}
+	adev->dev.platform_data = pdata;
+
 	desc.type = CORESIGHT_DEV_TYPE_SOURCE;
 	desc.subtype.source_subtype = CORESIGHT_DEV_SUBTYPE_SOURCE_PROC;
 	desc.ops = &etm4_cs_ops;
diff --git a/drivers/hwtracing/coresight/coresight-funnel.c b/drivers/hwtracing/coresight/coresight-funnel.c
index ded33f5..75fa2d3 100644
--- a/drivers/hwtracing/coresight/coresight-funnel.c
+++ b/drivers/hwtracing/coresight/coresight-funnel.c
@@ -188,11 +188,6 @@ static int funnel_probe(struct device *dev, struct resource *res)
 	struct funnel_drvdata *drvdata;
 	struct coresight_desc desc = { 0 };
 
-	pdata = coresight_get_platform_data(dev);
-	if (IS_ERR(pdata))
-		return PTR_ERR(pdata);
-	dev->platform_data = pdata;
-
 	if (is_of_node(dev_fwnode(dev)) &&
 	    of_device_is_compatible(dev->of_node, "arm,coresight-funnel"))
 		pr_warn_once("Uses OBSOLETE CoreSight funnel binding\n");
@@ -224,6 +219,13 @@ static int funnel_probe(struct device *dev, struct resource *res)
 
 	dev_set_drvdata(dev, drvdata);
 
+	pdata = coresight_get_platform_data(dev);
+	if (IS_ERR(pdata)) {
+		ret = PTR_ERR(pdata);
+		goto out_disable_clk;
+	}
+	dev->platform_data = pdata;
+
 	desc.type = CORESIGHT_DEV_TYPE_LINK;
 	desc.subtype.link_subtype = CORESIGHT_DEV_SUBTYPE_LINK_MERG;
 	desc.ops = &funnel_cs_ops;
diff --git a/drivers/hwtracing/coresight/coresight-replicator.c b/drivers/hwtracing/coresight/coresight-replicator.c
index f28bafd..64dfde7 100644
--- a/drivers/hwtracing/coresight/coresight-replicator.c
+++ b/drivers/hwtracing/coresight/coresight-replicator.c
@@ -179,11 +179,6 @@ static int replicator_probe(struct device *dev, struct resource *res)
 	struct coresight_desc desc = { 0 };
 	void __iomem *base;
 
-	pdata = coresight_get_platform_data(dev);
-	if (IS_ERR(pdata))
-		return PTR_ERR(pdata);
-	dev->platform_data = pdata;
-
 	if (is_of_node(dev_fwnode(dev)) &&
 	    of_device_is_compatible(dev->of_node, "arm,coresight-replicator"))
 		pr_warn_once("Uses OBSOLETE CoreSight replicator binding\n");
@@ -215,6 +210,13 @@ static int replicator_probe(struct device *dev, struct resource *res)
 
 	dev_set_drvdata(dev, drvdata);
 
+	pdata = coresight_get_platform_data(dev);
+	if (IS_ERR(pdata)) {
+		ret = PTR_ERR(pdata);
+		goto out_disable_clk;
+	}
+	dev->platform_data = pdata;
+
 	desc.type = CORESIGHT_DEV_TYPE_LINK;
 	desc.subtype.link_subtype = CORESIGHT_DEV_SUBTYPE_LINK_SPLIT;
 	desc.ops = &replicator_cs_ops;
diff --git a/drivers/hwtracing/coresight/coresight-stm.c b/drivers/hwtracing/coresight/coresight-stm.c
index 02031d9..03528f3 100644
--- a/drivers/hwtracing/coresight/coresight-stm.c
+++ b/drivers/hwtracing/coresight/coresight-stm.c
@@ -810,10 +810,6 @@ static int stm_probe(struct amba_device *adev, const struct amba_id *id)
 	size_t bitmap_size;
 	struct coresight_desc desc = { 0 };
 
-	pdata = coresight_get_platform_data(dev);
-	if (IS_ERR(pdata))
-		return PTR_ERR(pdata);
-	adev->dev.platform_data = pdata;
 	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
 	if (!drvdata)
 		return -ENOMEM;
@@ -866,6 +862,13 @@ static int stm_probe(struct amba_device *adev, const struct amba_id *id)
 		return -EPROBE_DEFER;
 	}
 
+	pdata = coresight_get_platform_data(dev);
+	if (IS_ERR(pdata)) {
+		ret = PTR_ERR(pdata);
+		goto stm_unregister;
+	}
+	adev->dev.platform_data = pdata;
+
 	desc.type = CORESIGHT_DEV_TYPE_SOURCE;
 	desc.subtype.source_subtype = CORESIGHT_DEV_SUBTYPE_SOURCE_SOFTWARE;
 	desc.ops = &stm_cs_ops;
diff --git a/drivers/hwtracing/coresight/coresight-tmc.c b/drivers/hwtracing/coresight/coresight-tmc.c
index 44a5719..212630e 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.c
+++ b/drivers/hwtracing/coresight/coresight-tmc.c
@@ -398,13 +398,6 @@ static int tmc_probe(struct amba_device *adev, const struct amba_id *id)
 	struct resource *res = &adev->res;
 	struct coresight_desc desc = { 0 };
 
-	pdata = coresight_get_platform_data(dev);
-	if (IS_ERR(pdata)) {
-		ret = PTR_ERR(pdata);
-		goto out;
-	}
-	adev->dev.platform_data = pdata;
-
 	ret = -ENOMEM;
 	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
 	if (!drvdata)
@@ -434,7 +427,6 @@ static int tmc_probe(struct amba_device *adev, const struct amba_id *id)
 	else
 		drvdata->size = readl_relaxed(drvdata->base + TMC_RSZ) * 4;
 
-	desc.pdata = pdata;
 	desc.dev = dev;
 	desc.groups = coresight_tmc_groups;
 	desc.name = dev_name(dev);
@@ -467,6 +459,14 @@ static int tmc_probe(struct amba_device *adev, const struct amba_id *id)
 		goto out;
 	}
 
+	pdata = coresight_get_platform_data(dev);
+	if (IS_ERR(pdata)) {
+		ret = PTR_ERR(pdata);
+		goto out;
+	}
+	adev->dev.platform_data = pdata;
+	desc.pdata = pdata;
+
 	drvdata->csdev = coresight_register(&desc);
 	if (IS_ERR(drvdata->csdev)) {
 		ret = PTR_ERR(drvdata->csdev);
diff --git a/drivers/hwtracing/coresight/coresight-tpiu.c b/drivers/hwtracing/coresight/coresight-tpiu.c
index d8a2e39..b699d61 100644
--- a/drivers/hwtracing/coresight/coresight-tpiu.c
+++ b/drivers/hwtracing/coresight/coresight-tpiu.c
@@ -125,11 +125,6 @@ static int tpiu_probe(struct amba_device *adev, const struct amba_id *id)
 	struct resource *res = &adev->res;
 	struct coresight_desc desc = { 0 };
 
-	pdata = coresight_get_platform_data(dev);
-	if (IS_ERR(pdata))
-		return PTR_ERR(pdata);
-	dev->platform_data = pdata;
-
 	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
 	if (!drvdata)
 		return -ENOMEM;
@@ -152,6 +147,11 @@ static int tpiu_probe(struct amba_device *adev, const struct amba_id *id)
 	/* Disable tpiu to support older devices */
 	tpiu_disable_hw(drvdata);
 
+	pdata = coresight_get_platform_data(dev);
+	if (IS_ERR(pdata))
+		return PTR_ERR(pdata);
+	dev->platform_data = pdata;
+
 	desc.type = CORESIGHT_DEV_TYPE_SINK;
 	desc.subtype.sink_subtype = CORESIGHT_DEV_SUBTYPE_SINK_PORT;
 	desc.ops = &tpiu_cs_ops;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
