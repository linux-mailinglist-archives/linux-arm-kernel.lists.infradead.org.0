Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D3954C1D7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 21:56:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Zqs+Y5XTNMp6yavwN4ewRP4ilpfnOZQ3TzKh07BCI/4=; b=ZxW2iXV/8v0MPdNig+IZdz/gn1
	bQYB4foiC1NP8MweoS1oifT6wO/Bn5djysUi6QF8gGbDfHB8lEdF2Eu5gr9jFt72SEe3ggARUK6mx
	7HMvt7YJD1l0C+id7HYuiE/oSErro2iEBitjsOmEQ6jvR18V31Zc0Cf/7FT50379RjuasuAsXLoYJ
	d4QeIsSWvni6o5p9DS6EMkd1UJrEthGi4ju8ah+OzcgqGH1RabRCVV7dOKyu5jNPyqm4vAFovHBR9
	x3MUdqoUnTvVqPO7Nw3su7RlXzR0hEiuHkGR476+dHYPHES8aY6ZIWFW5PxOeSb4Kn+rnadb1jjux
	jLnqqISA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdghG-0001SW-5w; Wed, 19 Jun 2019 19:56:42 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdge8-0006QY-80
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 19:53:30 +0000
Received: by mail-pf1-x443.google.com with SMTP id m30so202489pff.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 12:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=tiXUTbhpb8QTXLfXKxw0xlSbjGmKnd5NIC4uXUkTfag=;
 b=x6vargVhv5KJiaL5jE7xlInZafcFZjzl4NPQ8d8fNQRqlM6iQb2sVMv5RZXoEnWYRa
 APVL0oFzDIg3mytBNVOCXeRGqZ5nOvFqwUpLrLqDnFs2+T9xqxXAeEfJuSGFsUaW4Sen
 KHEOKPf14R9SKbKTMEX1JonduKtYqLTzRWvpNb+cDzVj51R52hMtLvcouMaVqhNVEZyF
 DuaE4rofSM4secSrSV4OShlk1eUSMIBIMrFeSSZv2/Hxea+V64xxY5P1YcgPXBLC/lwM
 gUg6LhvRqq+MFX2IG9lF4idndF9XU6ylmoh/eQzjmOVZuJaQHcrgm+O5OZdnmfmxB8fP
 dcoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=tiXUTbhpb8QTXLfXKxw0xlSbjGmKnd5NIC4uXUkTfag=;
 b=WUDANv4twypDUVx/N/wBKOEZBWDZIpu6Ea7Vfez+305dmOUEFadP0MoeltFZoXphoZ
 ye3r6sPHJs6J1BcxLxZk/ebej0cvP8ru6fgPfbv8ZTVCOqjxh7ZzWpUhVxnDkAKmmwCj
 C5Jb6w08czLzfUz6XYfC92lTCBXFj7kRWIjSJhOf+j/U+ABkskXbxjS/M/PurA42qhnp
 iM+buMQoICKE8oJQ4/Pdo508PidlPWr+rX50pPiqnXEg5Oge6LZ/kdZlQtYgUQE5uILt
 pcjs9xaL7gzcBO0BT4JKOpfwxrreLAAxghOTK3PBUWrGI5H/QtYMMHWlFc0TXvbbwpor
 lg+Q==
X-Gm-Message-State: APjAAAXJkqPpcUinLPqOGNW51EbMdF7ZpAJK9pAP2e2V+kTQBgfudEQc
 9QDutybJoK5YYCNTLpJanXI5aRvMlH7Erw==
X-Google-Smtp-Source: APXvYqwew2P8Ghqr5hJq+zgppSbbsRS63+rO5Mfru9AhC1Lhibsn8fbkrPzYrpS+p9H9/qeNxu5bQg==
X-Received: by 2002:a63:6948:: with SMTP id e69mr9239710pgc.441.1560974007145; 
 Wed, 19 Jun 2019 12:53:27 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id j14sm21615993pfn.120.2019.06.19.12.53.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 12:53:26 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 07/28] coresight: Remove name from platform description
Date: Wed, 19 Jun 2019 13:52:57 -0600
Message-Id: <20190619195318.19254-8-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619195318.19254-1-mathieu.poirier@linaro.org>
References: <20190619195318.19254-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_125328_551550_FD6CBFCA 
X-CRM114-Status: GOOD (  18.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

We are about to use a name independent of the parent AMBA device
name. As such, there is no need to have it in the platform description.
Let us move this to coresight description instead.

Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-catu.c       | 2 ++
 drivers/hwtracing/coresight/coresight-etb10.c      | 3 ++-
 drivers/hwtracing/coresight/coresight-etm3x.c      | 1 +
 drivers/hwtracing/coresight/coresight-etm4x.c      | 1 +
 drivers/hwtracing/coresight/coresight-funnel.c     | 1 +
 drivers/hwtracing/coresight/coresight-platform.c   | 3 ---
 drivers/hwtracing/coresight/coresight-replicator.c | 2 ++
 drivers/hwtracing/coresight/coresight-stm.c        | 1 +
 drivers/hwtracing/coresight/coresight-tmc.c        | 5 +++--
 drivers/hwtracing/coresight/coresight-tpiu.c       | 1 +
 drivers/hwtracing/coresight/coresight.c            | 2 +-
 include/linux/coresight.h                          | 8 ++++----
 12 files changed, 19 insertions(+), 11 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-catu.c b/drivers/hwtracing/coresight/coresight-catu.c
index 799ba1dd877e..05c73045532a 100644
--- a/drivers/hwtracing/coresight/coresight-catu.c
+++ b/drivers/hwtracing/coresight/coresight-catu.c
@@ -551,6 +551,8 @@ static int catu_probe(struct amba_device *adev, const struct amba_id *id)
 	catu_desc.type = CORESIGHT_DEV_TYPE_HELPER;
 	catu_desc.subtype.helper_subtype = CORESIGHT_DEV_SUBTYPE_HELPER_CATU;
 	catu_desc.ops = &catu_ops;
+	catu_desc.name = dev_name(dev);
+
 	drvdata->csdev = coresight_register(&catu_desc);
 	if (IS_ERR(drvdata->csdev))
 		ret = PTR_ERR(drvdata->csdev);
diff --git a/drivers/hwtracing/coresight/coresight-etb10.c b/drivers/hwtracing/coresight/coresight-etb10.c
index cb8cb03e0cdb..8726d6c7663c 100644
--- a/drivers/hwtracing/coresight/coresight-etb10.c
+++ b/drivers/hwtracing/coresight/coresight-etb10.c
@@ -777,12 +777,13 @@ static int etb_probe(struct amba_device *adev, const struct amba_id *id)
 	desc.ops = &etb_cs_ops;
 	desc.pdata = pdata;
 	desc.dev = dev;
+	desc.name = dev_name(dev);
 	desc.groups = coresight_etb_groups;
 	drvdata->csdev = coresight_register(&desc);
 	if (IS_ERR(drvdata->csdev))
 		return PTR_ERR(drvdata->csdev);
 
-	drvdata->miscdev.name = pdata->name;
+	drvdata->miscdev.name = desc.name;
 	drvdata->miscdev.minor = MISC_DYNAMIC_MINOR;
 	drvdata->miscdev.fops = &etb_fops;
 	ret = misc_register(&drvdata->miscdev);
diff --git a/drivers/hwtracing/coresight/coresight-etm3x.c b/drivers/hwtracing/coresight/coresight-etm3x.c
index 722fab9632ef..101fb01e20de 100644
--- a/drivers/hwtracing/coresight/coresight-etm3x.c
+++ b/drivers/hwtracing/coresight/coresight-etm3x.c
@@ -854,6 +854,7 @@ static int etm_probe(struct amba_device *adev, const struct amba_id *id)
 	desc.ops = &etm_cs_ops;
 	desc.pdata = pdata;
 	desc.dev = dev;
+	desc.name = dev_name(dev);
 	desc.groups = coresight_etm_groups;
 	drvdata->csdev = coresight_register(&desc);
 	if (IS_ERR(drvdata->csdev)) {
diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index 03576f3ed22d..8adc1485cd89 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -1142,6 +1142,7 @@ static int etm4_probe(struct amba_device *adev, const struct amba_id *id)
 	desc.pdata = pdata;
 	desc.dev = dev;
 	desc.groups = coresight_etmv4_groups;
+	desc.name = dev_name(dev);
 	drvdata->csdev = coresight_register(&desc);
 	if (IS_ERR(drvdata->csdev)) {
 		ret = PTR_ERR(drvdata->csdev);
diff --git a/drivers/hwtracing/coresight/coresight-funnel.c b/drivers/hwtracing/coresight/coresight-funnel.c
index fc033fdb6cd5..ded33f5e7d43 100644
--- a/drivers/hwtracing/coresight/coresight-funnel.c
+++ b/drivers/hwtracing/coresight/coresight-funnel.c
@@ -229,6 +229,7 @@ static int funnel_probe(struct device *dev, struct resource *res)
 	desc.ops = &funnel_cs_ops;
 	desc.pdata = pdata;
 	desc.dev = dev;
+	desc.name = dev_name(dev);
 	drvdata->csdev = coresight_register(&desc);
 	if (IS_ERR(drvdata->csdev)) {
 		ret = PTR_ERR(drvdata->csdev);
diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
index 541e500a83c2..f500de61e7f9 100644
--- a/drivers/hwtracing/coresight/coresight-platform.c
+++ b/drivers/hwtracing/coresight/coresight-platform.c
@@ -323,9 +323,6 @@ coresight_get_platform_data(struct device *dev)
 		goto error;
 	}
 
-	/* Use device name as sysfs handle */
-	pdata->name = dev_name(dev);
-
 	if (is_of_node(fwnode))
 		ret = of_get_coresight_platform_data(dev, pdata);
 
diff --git a/drivers/hwtracing/coresight/coresight-replicator.c b/drivers/hwtracing/coresight/coresight-replicator.c
index 054b33554695..f28bafd98995 100644
--- a/drivers/hwtracing/coresight/coresight-replicator.c
+++ b/drivers/hwtracing/coresight/coresight-replicator.c
@@ -220,6 +220,8 @@ static int replicator_probe(struct device *dev, struct resource *res)
 	desc.ops = &replicator_cs_ops;
 	desc.pdata = dev->platform_data;
 	desc.dev = dev;
+	desc.name = dev_name(dev);
+
 	drvdata->csdev = coresight_register(&desc);
 	if (IS_ERR(drvdata->csdev)) {
 		ret = PTR_ERR(drvdata->csdev);
diff --git a/drivers/hwtracing/coresight/coresight-stm.c b/drivers/hwtracing/coresight/coresight-stm.c
index 9faa1ed01500..02031d93fb8b 100644
--- a/drivers/hwtracing/coresight/coresight-stm.c
+++ b/drivers/hwtracing/coresight/coresight-stm.c
@@ -871,6 +871,7 @@ static int stm_probe(struct amba_device *adev, const struct amba_id *id)
 	desc.ops = &stm_cs_ops;
 	desc.pdata = pdata;
 	desc.dev = dev;
+	desc.name = dev_name(dev);
 	desc.groups = coresight_stm_groups;
 	drvdata->csdev = coresight_register(&desc);
 	if (IS_ERR(drvdata->csdev)) {
diff --git a/drivers/hwtracing/coresight/coresight-tmc.c b/drivers/hwtracing/coresight/coresight-tmc.c
index be0bd98ca8c1..44a571988219 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.c
+++ b/drivers/hwtracing/coresight/coresight-tmc.c
@@ -437,6 +437,7 @@ static int tmc_probe(struct amba_device *adev, const struct amba_id *id)
 	desc.pdata = pdata;
 	desc.dev = dev;
 	desc.groups = coresight_tmc_groups;
+	desc.name = dev_name(dev);
 
 	switch (drvdata->config_type) {
 	case TMC_CONFIG_TYPE_ETB:
@@ -461,7 +462,7 @@ static int tmc_probe(struct amba_device *adev, const struct amba_id *id)
 		desc.ops = &tmc_etf_cs_ops;
 		break;
 	default:
-		pr_err("%s: Unsupported TMC config\n", pdata->name);
+		pr_err("%s: Unsupported TMC config\n", desc.name);
 		ret = -EINVAL;
 		goto out;
 	}
@@ -472,7 +473,7 @@ static int tmc_probe(struct amba_device *adev, const struct amba_id *id)
 		goto out;
 	}
 
-	drvdata->miscdev.name = pdata->name;
+	drvdata->miscdev.name = desc.name;
 	drvdata->miscdev.minor = MISC_DYNAMIC_MINOR;
 	drvdata->miscdev.fops = &tmc_fops;
 	ret = misc_register(&drvdata->miscdev);
diff --git a/drivers/hwtracing/coresight/coresight-tpiu.c b/drivers/hwtracing/coresight/coresight-tpiu.c
index aec0ed7bf924..d8a2e3991c7e 100644
--- a/drivers/hwtracing/coresight/coresight-tpiu.c
+++ b/drivers/hwtracing/coresight/coresight-tpiu.c
@@ -157,6 +157,7 @@ static int tpiu_probe(struct amba_device *adev, const struct amba_id *id)
 	desc.ops = &tpiu_cs_ops;
 	desc.pdata = pdata;
 	desc.dev = dev;
+	desc.name = dev_name(dev);
 	drvdata->csdev = coresight_register(&desc);
 
 	if (!IS_ERR(drvdata->csdev)) {
diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
index 4b130281236a..04b5d3c2bb3a 100644
--- a/drivers/hwtracing/coresight/coresight.c
+++ b/drivers/hwtracing/coresight/coresight.c
@@ -1199,7 +1199,7 @@ struct coresight_device *coresight_register(struct coresight_desc *desc)
 	csdev->dev.parent = desc->dev;
 	csdev->dev.release = coresight_device_release;
 	csdev->dev.bus = &coresight_bustype;
-	dev_set_name(&csdev->dev, "%s", desc->pdata->name);
+	dev_set_name(&csdev->dev, "%s", desc->name);
 
 	ret = device_register(&csdev->dev);
 	if (ret) {
diff --git a/include/linux/coresight.h b/include/linux/coresight.h
index bf241dbf99c5..298db20ba8ce 100644
--- a/include/linux/coresight.h
+++ b/include/linux/coresight.h
@@ -91,13 +91,11 @@ union coresight_dev_subtype {
 
 /**
  * struct coresight_platform_data - data harvested from the DT specification
- * @name:	name of the component as shown under sysfs.
  * @nr_inport:	number of input ports for this component.
  * @nr_outport:	number of output ports for this component.
  * @conns:	Array of nr_outport connections from this component
  */
 struct coresight_platform_data {
-	const char *name;
 	int nr_inport;
 	int nr_outport;
 	struct coresight_connection *conns;
@@ -108,11 +106,12 @@ struct coresight_platform_data {
  * @type:	as defined by @coresight_dev_type.
  * @subtype:	as defined by @coresight_dev_subtype.
  * @ops:	generic operations for this component, as defined
-		by @coresight_ops.
+ *		by @coresight_ops.
  * @pdata:	platform data collected from DT.
  * @dev:	The device entity associated to this component.
  * @groups:	operations specific to this component. These will end up
-		in the component's sysfs sub-directory.
+ *		in the component's sysfs sub-directory.
+ * @name:	name for the coresight device, also shown under sysfs.
  */
 struct coresight_desc {
 	enum coresight_dev_type type;
@@ -121,6 +120,7 @@ struct coresight_desc {
 	struct coresight_platform_data *pdata;
 	struct device *dev;
 	const struct attribute_group **groups;
+	const char *name;
 };
 
 /**
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
