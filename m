Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8318B4C1D1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 21:55:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VvqhZvvUDC1OvrGWdUhWD6z2C/dL7hLfDFByTF2FJ7Y=; b=YJ4oJ7YCTHy5+YOxMhT4lam7s/
	23DEfJnJxttwnnh/1Kl9aVmeAdH0l5qN8m/4+H1M/8wV8RZVF2PI4K0ThHeFocT4nLwW4KT20m8Xj
	7xxF83fAbnk0bKVQH7Sva8y+bEHvYGFxBGyDJ7ZXvXNKeB7211TWiZ5stnM1Obd3UKTx405Ack3Bu
	4Stz9lYSFHWvSdznrag/XJwHYOmIpzJ0X0lLt/Ky5708WjCkFCG8BiqlIYYPs7TrM6Qnk7PnR4FLd
	o+d+dI6do2LNPiqaAsOtB7wdTX1be6untFC4NYUYSU99xzU9ntsOiYq7SlPCO3kmTLiKs79Wkh4jr
	lxZEr08Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdgg5-0007lZ-4J; Wed, 19 Jun 2019 19:55:29 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdge5-0006NC-14
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 19:53:27 +0000
Received: by mail-pg1-x544.google.com with SMTP id s27so250050pgl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 12:53:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=TOsro5wxKVAEEz/ic882lhEnM11CUUCdHgLpzCI0qQU=;
 b=rMUCCwuT9rb1WZ/S+GfDPjMG3MhldWpVSxIX0SyjkAe1ELm7zCFHpNuSgR71Hr3uB5
 JKY42xInG8hqXSDCUiLOfOaaJSeCuT4AZWb/b/ikXlOf8+T5vgB/aK5nTzY2FjKZdh42
 pHjbmMgMXjNUoIQL8hOgGKQf0cMNcVWh61i54F34KMON2YYo0vKjiFD69V3wKGoPNulG
 t1yxpoMN3cJwxIXANN/vocFrL/Nag5zrqjCYm+hlOJBULehBoVP7HmgmstwxWEC7FNJj
 jKox3Dv1r5q9JWMp57pS+M9PiVDrN9P9gBgLtTlTxkVMyGoPcFLaNV67YMv/DJzJE0TB
 Cd5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=TOsro5wxKVAEEz/ic882lhEnM11CUUCdHgLpzCI0qQU=;
 b=s9+E034RzkySvAORzkXWOvfiAH8EO07+CXb6MwVhCliUiQYwE9lG33IC4OPJkOIO8l
 iwz8+JgN1wFmXAnvWFrEuO714KbL5a7ToXTjdPdOjwtVKaCQ+Bzt1A0yuS7BOK8IrJFT
 hvuRLbYwD2RoJjp4bJ3EypYrEceRYwUrTMO+xGMqaGnhIosZBXR4HYg6BtoD3cBSjHQs
 yr7y6tB7F/a9EB/H0ybvREz+WA7EWxvGMOOhJ15XG0/lfBdVjA7k6uySXOa7EysMsyMu
 uGMZdCy5kZWBDjMTajUDd1Gd1+GZ25XRLbczmxaWIdYYGnHejn+akSingXbZhs5tajEK
 60gw==
X-Gm-Message-State: APjAAAUXNBA8qi73f/PRaZn3PUEwZzapNf1NJ/yPPSJPZzlMUHrIqCty
 shZVHESIfh6WwcBWXTl9dhlgsyHIlLsgAg==
X-Google-Smtp-Source: APXvYqy5jbjA5ESwhKWoq8urWzJ5G9+DZfMNK5ir3TEyTQcHaXLXZiz4vJr73rwcg3q25lDSfUrHNg==
X-Received: by 2002:a17:90a:a505:: with SMTP id
 a5mr13116839pjq.27.1560974004142; 
 Wed, 19 Jun 2019 12:53:24 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id j14sm21615993pfn.120.2019.06.19.12.53.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 12:53:23 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 04/28] coresight: Introduce generic platform data helper
Date: Wed, 19 Jun 2019 13:52:54 -0600
Message-Id: <20190619195318.19254-5-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619195318.19254-1-mathieu.poirier@linaro.org>
References: <20190619195318.19254-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_125325_072547_B459B314 
X-CRM114-Status: GOOD (  18.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

So far we have hard coded the DT platform parsing code in
every driver. Introduce generic helper to parse the information
provided by the firmware in a platform agnostic manner, in preparation
for the ACPI support.

Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-catu.c  | 13 ++---
 drivers/hwtracing/coresight/coresight-etb10.c | 11 ++--
 drivers/hwtracing/coresight/coresight-etm3x.c | 12 ++--
 drivers/hwtracing/coresight/coresight-etm4x.c | 11 ++--
 .../hwtracing/coresight/coresight-funnel.c    | 11 ++--
 .../hwtracing/coresight/coresight-platform.c  | 58 ++++++++++++++-----
 .../coresight/coresight-replicator.c          | 11 ++--
 drivers/hwtracing/coresight/coresight-stm.c   | 11 ++--
 drivers/hwtracing/coresight/coresight-tmc.c   | 13 ++---
 drivers/hwtracing/coresight/coresight-tpiu.c  | 11 ++--
 include/linux/coresight.h                     |  7 +--
 11 files changed, 83 insertions(+), 86 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-catu.c b/drivers/hwtracing/coresight/coresight-catu.c
index 63109c98765c..799ba1dd877e 100644
--- a/drivers/hwtracing/coresight/coresight-catu.c
+++ b/drivers/hwtracing/coresight/coresight-catu.c
@@ -503,17 +503,14 @@ static int catu_probe(struct amba_device *adev, const struct amba_id *id)
 	struct coresight_desc catu_desc;
 	struct coresight_platform_data *pdata = NULL;
 	struct device *dev = &adev->dev;
-	struct device_node *np = dev->of_node;
 	void __iomem *base;
 
-	if (np) {
-		pdata = of_get_coresight_platform_data(dev, np);
-		if (IS_ERR(pdata)) {
-			ret = PTR_ERR(pdata);
-			goto out;
-		}
-		dev->platform_data = pdata;
+	pdata = coresight_get_platform_data(dev);
+	if (IS_ERR(pdata)) {
+		ret = PTR_ERR(pdata);
+		goto out;
 	}
+	dev->platform_data = pdata;
 
 	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
 	if (!drvdata) {
diff --git a/drivers/hwtracing/coresight/coresight-etb10.c b/drivers/hwtracing/coresight/coresight-etb10.c
index 0c9161fe4233..cb8cb03e0cdb 100644
--- a/drivers/hwtracing/coresight/coresight-etb10.c
+++ b/drivers/hwtracing/coresight/coresight-etb10.c
@@ -732,14 +732,11 @@ static int etb_probe(struct amba_device *adev, const struct amba_id *id)
 	struct etb_drvdata *drvdata;
 	struct resource *res = &adev->res;
 	struct coresight_desc desc = { 0 };
-	struct device_node *np = adev->dev.of_node;
 
-	if (np) {
-		pdata = of_get_coresight_platform_data(dev, np);
-		if (IS_ERR(pdata))
-			return PTR_ERR(pdata);
-		adev->dev.platform_data = pdata;
-	}
+	pdata = coresight_get_platform_data(dev);
+	if (IS_ERR(pdata))
+		return PTR_ERR(pdata);
+	adev->dev.platform_data = pdata;
 
 	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
 	if (!drvdata)
diff --git a/drivers/hwtracing/coresight/coresight-etm3x.c b/drivers/hwtracing/coresight/coresight-etm3x.c
index fa2f1417cafb..fa2164ff07c2 100644
--- a/drivers/hwtracing/coresight/coresight-etm3x.c
+++ b/drivers/hwtracing/coresight/coresight-etm3x.c
@@ -790,20 +790,16 @@ static int etm_probe(struct amba_device *adev, const struct amba_id *id)
 	struct etm_drvdata *drvdata;
 	struct resource *res = &adev->res;
 	struct coresight_desc desc = { 0 };
-	struct device_node *np = adev->dev.of_node;
 
 	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
 	if (!drvdata)
 		return -ENOMEM;
 
-	if (np) {
-		pdata = of_get_coresight_platform_data(dev, np);
-		if (IS_ERR(pdata))
-			return PTR_ERR(pdata);
-
-		adev->dev.platform_data = pdata;
-	}
+	pdata = coresight_get_platform_data(dev);
+	if (IS_ERR(pdata))
+		return PTR_ERR(pdata);
 
+	adev->dev.platform_data = pdata;
 	drvdata->use_cp14 = fwnode_property_read_bool(dev->fwnode, "arm,cp14");
 	dev_set_drvdata(dev, drvdata);
 
diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index 77d1d837da52..4355b2e8c308 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -1084,18 +1084,15 @@ static int etm4_probe(struct amba_device *adev, const struct amba_id *id)
 	struct etmv4_drvdata *drvdata;
 	struct resource *res = &adev->res;
 	struct coresight_desc desc = { 0 };
-	struct device_node *np = adev->dev.of_node;
 
 	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
 	if (!drvdata)
 		return -ENOMEM;
 
-	if (np) {
-		pdata = of_get_coresight_platform_data(dev, np);
-		if (IS_ERR(pdata))
-			return PTR_ERR(pdata);
-		adev->dev.platform_data = pdata;
-	}
+	pdata = coresight_get_platform_data(dev);
+	if (IS_ERR(pdata))
+		return PTR_ERR(pdata);
+	adev->dev.platform_data = pdata;
 
 	dev_set_drvdata(dev, drvdata);
 
diff --git a/drivers/hwtracing/coresight/coresight-funnel.c b/drivers/hwtracing/coresight/coresight-funnel.c
index 3423042e7a52..fc033fdb6cd5 100644
--- a/drivers/hwtracing/coresight/coresight-funnel.c
+++ b/drivers/hwtracing/coresight/coresight-funnel.c
@@ -187,14 +187,11 @@ static int funnel_probe(struct device *dev, struct resource *res)
 	struct coresight_platform_data *pdata = NULL;
 	struct funnel_drvdata *drvdata;
 	struct coresight_desc desc = { 0 };
-	struct device_node *np = dev->of_node;
 
-	if (np) {
-		pdata = of_get_coresight_platform_data(dev, np);
-		if (IS_ERR(pdata))
-			return PTR_ERR(pdata);
-		dev->platform_data = pdata;
-	}
+	pdata = coresight_get_platform_data(dev);
+	if (IS_ERR(pdata))
+		return PTR_ERR(pdata);
+	dev->platform_data = pdata;
 
 	if (is_of_node(dev_fwnode(dev)) &&
 	    of_device_is_compatible(dev->of_node, "arm,coresight-funnel"))
diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
index 4c31299607cf..5d78f4fbd97d 100644
--- a/drivers/hwtracing/coresight/coresight-platform.c
+++ b/drivers/hwtracing/coresight/coresight-platform.c
@@ -230,23 +230,16 @@ static int of_coresight_parse_endpoint(struct device *dev,
 	return ret;
 }
 
-struct coresight_platform_data *
-of_get_coresight_platform_data(struct device *dev,
-			       const struct device_node *node)
+static int of_get_coresight_platform_data(struct device *dev,
+					  struct coresight_platform_data *pdata)
 {
 	int ret = 0;
-	struct coresight_platform_data *pdata;
 	struct coresight_connection *conn;
 	struct device_node *ep = NULL;
 	const struct device_node *parent = NULL;
 	bool legacy_binding = false;
+	struct device_node *node = dev->of_node;
 
-	pdata = devm_kzalloc(dev, sizeof(*pdata), GFP_KERNEL);
-	if (!pdata)
-		return ERR_PTR(-ENOMEM);
-
-	/* Use device name as sysfs handle */
-	pdata->name = dev_name(dev);
 	pdata->cpu = of_coresight_get_cpu(node);
 
 	/* Get the number of input and output port for this component */
@@ -254,11 +247,11 @@ of_get_coresight_platform_data(struct device *dev,
 
 	/* If there are no output connections, we are done */
 	if (!pdata->nr_outport)
-		return pdata;
+		return 0;
 
 	ret = coresight_alloc_conns(dev, pdata);
 	if (ret)
-		return ERR_PTR(ret);
+		return ret;
 
 	parent = of_coresight_get_output_ports_node(node);
 	/*
@@ -292,11 +285,46 @@ of_get_coresight_platform_data(struct device *dev,
 		case 0:
 			break;
 		default:
-			return ERR_PTR(ret);
+			return ret;
 		}
 	}
 
-	return pdata;
+	return 0;
+}
+#else
+static inline int
+of_get_coresight_platform_data(struct device *dev,
+			       struct coresight_platform_data *pdata)
+{
+	return -ENOENT;
 }
-EXPORT_SYMBOL_GPL(of_get_coresight_platform_data);
 #endif
+
+struct coresight_platform_data *
+coresight_get_platform_data(struct device *dev)
+{
+	int ret = -ENOENT;
+	struct coresight_platform_data *pdata;
+	struct fwnode_handle *fwnode = dev_fwnode(dev);
+
+	if (IS_ERR_OR_NULL(fwnode))
+		goto error;
+
+	pdata = devm_kzalloc(dev, sizeof(*pdata), GFP_KERNEL);
+	if (!pdata) {
+		ret = -ENOMEM;
+		goto error;
+	}
+
+	/* Use device name as sysfs handle */
+	pdata->name = dev_name(dev);
+
+	if (is_of_node(fwnode))
+		ret = of_get_coresight_platform_data(dev, pdata);
+
+	if (!ret)
+		return pdata;
+error:
+	return ERR_PTR(ret);
+}
+EXPORT_SYMBOL_GPL(coresight_get_platform_data);
diff --git a/drivers/hwtracing/coresight/coresight-replicator.c b/drivers/hwtracing/coresight/coresight-replicator.c
index 7e0514557920..054b33554695 100644
--- a/drivers/hwtracing/coresight/coresight-replicator.c
+++ b/drivers/hwtracing/coresight/coresight-replicator.c
@@ -177,15 +177,12 @@ static int replicator_probe(struct device *dev, struct resource *res)
 	struct coresight_platform_data *pdata = NULL;
 	struct replicator_drvdata *drvdata;
 	struct coresight_desc desc = { 0 };
-	struct device_node *np = dev->of_node;
 	void __iomem *base;
 
-	if (np) {
-		pdata = of_get_coresight_platform_data(dev, np);
-		if (IS_ERR(pdata))
-			return PTR_ERR(pdata);
-		dev->platform_data = pdata;
-	}
+	pdata = coresight_get_platform_data(dev);
+	if (IS_ERR(pdata))
+		return PTR_ERR(pdata);
+	dev->platform_data = pdata;
 
 	if (is_of_node(dev_fwnode(dev)) &&
 	    of_device_is_compatible(dev->of_node, "arm,coresight-replicator"))
diff --git a/drivers/hwtracing/coresight/coresight-stm.c b/drivers/hwtracing/coresight/coresight-stm.c
index 3992a35e34e4..9faa1ed01500 100644
--- a/drivers/hwtracing/coresight/coresight-stm.c
+++ b/drivers/hwtracing/coresight/coresight-stm.c
@@ -809,14 +809,11 @@ static int stm_probe(struct amba_device *adev, const struct amba_id *id)
 	struct resource ch_res;
 	size_t bitmap_size;
 	struct coresight_desc desc = { 0 };
-	struct device_node *np = adev->dev.of_node;
 
-	if (np) {
-		pdata = of_get_coresight_platform_data(dev, np);
-		if (IS_ERR(pdata))
-			return PTR_ERR(pdata);
-		adev->dev.platform_data = pdata;
-	}
+	pdata = coresight_get_platform_data(dev);
+	if (IS_ERR(pdata))
+		return PTR_ERR(pdata);
+	adev->dev.platform_data = pdata;
 	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
 	if (!drvdata)
 		return -ENOMEM;
diff --git a/drivers/hwtracing/coresight/coresight-tmc.c b/drivers/hwtracing/coresight/coresight-tmc.c
index 9c5e615c1486..be0bd98ca8c1 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.c
+++ b/drivers/hwtracing/coresight/coresight-tmc.c
@@ -397,16 +397,13 @@ static int tmc_probe(struct amba_device *adev, const struct amba_id *id)
 	struct tmc_drvdata *drvdata;
 	struct resource *res = &adev->res;
 	struct coresight_desc desc = { 0 };
-	struct device_node *np = adev->dev.of_node;
 
-	if (np) {
-		pdata = of_get_coresight_platform_data(dev, np);
-		if (IS_ERR(pdata)) {
-			ret = PTR_ERR(pdata);
-			goto out;
-		}
-		adev->dev.platform_data = pdata;
+	pdata = coresight_get_platform_data(dev);
+	if (IS_ERR(pdata)) {
+		ret = PTR_ERR(pdata);
+		goto out;
 	}
+	adev->dev.platform_data = pdata;
 
 	ret = -ENOMEM;
 	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
diff --git a/drivers/hwtracing/coresight/coresight-tpiu.c b/drivers/hwtracing/coresight/coresight-tpiu.c
index 4dd3e7f63050..aec0ed7bf924 100644
--- a/drivers/hwtracing/coresight/coresight-tpiu.c
+++ b/drivers/hwtracing/coresight/coresight-tpiu.c
@@ -124,14 +124,11 @@ static int tpiu_probe(struct amba_device *adev, const struct amba_id *id)
 	struct tpiu_drvdata *drvdata;
 	struct resource *res = &adev->res;
 	struct coresight_desc desc = { 0 };
-	struct device_node *np = adev->dev.of_node;
 
-	if (np) {
-		pdata = of_get_coresight_platform_data(dev, np);
-		if (IS_ERR(pdata))
-			return PTR_ERR(pdata);
-		adev->dev.platform_data = pdata;
-	}
+	pdata = coresight_get_platform_data(dev);
+	if (IS_ERR(pdata))
+		return PTR_ERR(pdata);
+	dev->platform_data = pdata;
 
 	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
 	if (!drvdata)
diff --git a/include/linux/coresight.h b/include/linux/coresight.h
index 62a520df8add..e2b95e05e0be 100644
--- a/include/linux/coresight.h
+++ b/include/linux/coresight.h
@@ -294,14 +294,11 @@ static inline void coresight_disclaim_device_unlocked(void __iomem *base) {}
 
 #ifdef CONFIG_OF
 extern int of_coresight_get_cpu(const struct device_node *node);
-extern struct coresight_platform_data *
-of_get_coresight_platform_data(struct device *dev,
-			       const struct device_node *node);
 #else
 static inline int of_coresight_get_cpu(const struct device_node *node)
 { return 0; }
-static inline struct coresight_platform_data *of_get_coresight_platform_data(
-	struct device *dev, const struct device_node *node) { return NULL; }
 #endif
 
+struct coresight_platform_data *coresight_get_platform_data(struct device *dev);
+
 #endif
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
