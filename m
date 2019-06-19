Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D67DB4C1E2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 21:57:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=euGiNpQS7Fz7G1eq8uZDLsmVpEzA3cgCgL0mVIhjjp4=; b=GRyWyLLiAYhEf56JXmXo+w5bcx
	pINJFC8de4vmGRRtu4wk6s39H1AgynIH45srt1yBK+BEHzbstOmMGeY4jiG7OI7FHhZe4hwq2z33Q
	cLN7SO8wlh9EJfNWTjpRZ3+Fg98RMNw7j7uLiMqiYOuI7JmNr69E9+LarC7iL94+ZH/i25VxSjbOz
	W4o3xL6Q3McXchxX9jd9xKRR3ya2Kj4OJjh3Z1MhIgChELX62xmma4+VQhtm+K8htQmqBzT8F62x5
	zmuDdz9gShzdKZ1B/USs3BBZRTODbU5mY+47CaUBXbiPGi0og6VYpMBSKiHvQrsUAJVWliLpOML3y
	CJAn01qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdgiD-0002KS-5o; Wed, 19 Jun 2019 19:57:41 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdgeA-0006Tm-NG
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 19:53:33 +0000
Received: by mail-pg1-x543.google.com with SMTP id s21so220148pga.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 12:53:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=w+c8wJwNciAgUKZx5dnfejCyNdWdO98PKJXEnm0VYOo=;
 b=K/c8/YvG4SzCXVPx/8lgRmQf/C1X1hPmYlPOUJ5pjHa78XBtvWOr9uDEtBgZpULV0X
 Kffs0qsYhgmXbRkb3SJbjIDAieioA0beIr0TIfHyJIGv02Zzd9AUi3I/Ek2WSuVu8IL8
 grVZ5S37GsthuiGOhBO47M4O0at3AFOOhUsCccTO7XNKcTCOZ8XwSkSqDGxV6JSKaD7+
 0ONC14B4nXL/CaN5GNBpl029xUpMeMWx7LpuVjogQ9qUTzCma4BoUa15nlNmA6PHzHAd
 1/iPCSyMYugI7wp94d/hUmweI30MWSqJHGf3JwAMD313LlfKqyvBKabfT3xnXlwsBgLV
 IIaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=w+c8wJwNciAgUKZx5dnfejCyNdWdO98PKJXEnm0VYOo=;
 b=ZdAp2fsezp0jqcl6rHtxBFAasV/4A4HPvfImeukb0Wv8t82yCFoJqMXmjtz7AS+Wgs
 VOhjBE8I2c9qw+jVob4pU/i4Ij9A5JhxeogFskzyLJ73ddXWbzhfFy+ZKvyQaRYtW9mC
 9vJX3xiMKZwRWyljX2oRdAtTUhpV+Mg7xwPtieIqJqqICC/Rd+w9XbOjIyzrMPE+M867
 mqMv1p5l+6sgqtNCtWO2fzvaUm4ly+6KpzND/FTE+Z/FmRCgJ7XRY+rmd9xaEPr8OJ2S
 QW2JyRk7P5jOnls6N7RV7gnLguU7rtvk1xKT1CmZMHHlyOVRa+TR2mpvw2WECGhQ20VX
 e/Sg==
X-Gm-Message-State: APjAAAUwQlMizV0jYBC+uAivCFi9oQ+DaXwdyNZ49SSKTfbdhxOoksRe
 57Aax/9TZZqN1L62N69dJqf/mg==
X-Google-Smtp-Source: APXvYqzkRDUfQ1j9x7NZ3TEy8ocgqkN4BDDgAD2h4YPDVt4khFimGPR1j+pHei0lB2rpKnWlqYGB2Q==
X-Received: by 2002:a63:214a:: with SMTP id s10mr9223031pgm.13.1560974010099; 
 Wed, 19 Jun 2019 12:53:30 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id j14sm21615993pfn.120.2019.06.19.12.53.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 12:53:29 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 10/28] coresight: Rearrange platform data probing
Date: Wed, 19 Jun 2019 13:53:00 -0600
Message-Id: <20190619195318.19254-11-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619195318.19254-1-mathieu.poirier@linaro.org>
References: <20190619195318.19254-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_125330_844253_6F070A06 
X-CRM114-Status: GOOD (  18.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suzuki K Poulose <suzuki.poulose@arm.com>

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

Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-catu.c     | 14 +++++++-------
 drivers/hwtracing/coresight/coresight-etb10.c    | 10 +++++-----
 drivers/hwtracing/coresight/coresight-etm3x.c    | 12 +++++++-----
 drivers/hwtracing/coresight/coresight-etm4x.c    | 12 +++++++-----
 drivers/hwtracing/coresight/coresight-funnel.c   | 12 +++++++-----
 .../hwtracing/coresight/coresight-replicator.c   | 12 +++++++-----
 drivers/hwtracing/coresight/coresight-stm.c      | 11 +++++++----
 drivers/hwtracing/coresight/coresight-tmc.c      | 16 ++++++++--------
 drivers/hwtracing/coresight/coresight-tpiu.c     | 10 +++++-----
 9 files changed, 60 insertions(+), 49 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-catu.c b/drivers/hwtracing/coresight/coresight-catu.c
index 05c73045532a..1c1ad1268b9d 100644
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
index 8726d6c7663c..fffaac3e3677 100644
--- a/drivers/hwtracing/coresight/coresight-etb10.c
+++ b/drivers/hwtracing/coresight/coresight-etb10.c
@@ -733,11 +733,6 @@ static int etb_probe(struct amba_device *adev, const struct amba_id *id)
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
@@ -772,6 +767,11 @@ static int etb_probe(struct amba_device *adev, const struct amba_id *id)
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
index 101fb01e20de..f2d461610a2f 100644
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
index 8adc1485cd89..1609da1eaf83 100644
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
index ded33f5e7d43..75fa2d3ad9b4 100644
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
index f28bafd98995..64dfde7241c1 100644
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
index 02031d93fb8b..03528f3fa9ff 100644
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
index 44a571988219..212630e65cca 100644
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
index d8a2e3991c7e..b699d613425d 100644
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
