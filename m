Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B60816268
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 12:57:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ce07daIT2LKDVT0+0W09t37zbjKzsAukcn6uiCtnAUo=; b=le+ATpJwhOJiMZzKZ4kc5cX2fa
	rLvFIFiMmm/cnONQRIQI7AoiFmx2RYMWSWlfyn/4chTqF+0uj+9o7kLTDTR1swZ1SdBYDIczh04Wr
	Uv7RMp8t2XMbuObzjS7QjgEQEjQJuX9BAr8qBW3vqdzghCaU17xxs11jNYXD5SuodipWMHCpyGqDw
	ELrc9ODYttrSQ3EHnWnotkwBw3tioIEaJdzA5aotk/H1Wor/979LjEtClYz6Vw1Kyo/j0buEhjxpv
	WhaUECcjLYg20+54dO6PTl6i3H1q6b5EHgtTGGYH3XyHt9ACtcELUH1H7HSkE5axQX55JHyvt8dHw
	78EOr1xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNxmR-0001mC-DU; Tue, 07 May 2019 10:57:03 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNxjZ-0005JP-SQ
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 10:54:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C251F15AD;
 Tue,  7 May 2019 03:54:05 -0700 (PDT)
Received: from en101.cambridge.arm.com (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 8DE9E3F5AF; Tue,  7 May 2019 03:54:04 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 17/30] coresight: Make device to CPU mapping generic
Date: Tue,  7 May 2019 11:52:44 +0100
Message-Id: <1557226378-10131-18-git-send-email-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557226378-10131-1-git-send-email-suzuki.poulose@arm.com>
References: <1557226378-10131-1-git-send-email-suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_035406_198724_71609068 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: coresight@lists.linaro.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 mathieu.poirier@linaro.org, Suzuki K Poulose <suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The CoreSight components ETM and CPU-Debug are always associated
with CPUs. Replace the of_coresight_get_cpu() with a platform
agnostic helper, in preparation to add ACPI support.

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/hwtracing/coresight/coresight-cpu-debug.c |  3 +--
 drivers/hwtracing/coresight/coresight-platform.c  | 18 +++++++++++++-----
 include/linux/coresight.h                         |  7 +------
 3 files changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-cpu-debug.c b/drivers/hwtracing/coresight/coresight-cpu-debug.c
index e8819d7..07a1367 100644
--- a/drivers/hwtracing/coresight/coresight-cpu-debug.c
+++ b/drivers/hwtracing/coresight/coresight-cpu-debug.c
@@ -572,14 +572,13 @@ static int debug_probe(struct amba_device *adev, const struct amba_id *id)
 	struct device *dev = &adev->dev;
 	struct debug_drvdata *drvdata;
 	struct resource *res = &adev->res;
-	struct device_node *np = adev->dev.of_node;
 	int ret;
 
 	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
 	if (!drvdata)
 		return -ENOMEM;
 
-	drvdata->cpu = np ? of_coresight_get_cpu(np) : 0;
+	drvdata->cpu = coresight_get_cpu(dev);
 	if (per_cpu(debug_drvdata, drvdata->cpu)) {
 		dev_err(dev, "CPU%d drvdata has already been initialized\n",
 			drvdata->cpu);
diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
index 5d78f4f..ba8c146 100644
--- a/drivers/hwtracing/coresight/coresight-platform.c
+++ b/drivers/hwtracing/coresight/coresight-platform.c
@@ -151,12 +151,14 @@ static void of_coresight_get_ports(const struct device_node *node,
 	}
 }
 
-int of_coresight_get_cpu(const struct device_node *node)
+static int of_coresight_get_cpu(struct device *dev)
 {
 	int cpu;
 	struct device_node *dn;
 
-	dn = of_parse_phandle(node, "cpu", 0);
+	if (!dev->of_node)
+		return 0;
+	dn = of_parse_phandle(dev->of_node, "cpu", 0);
 	/* Affinity defaults to CPU0 */
 	if (!dn)
 		return 0;
@@ -166,7 +168,6 @@ int of_coresight_get_cpu(const struct device_node *node)
 	/* Affinity to CPU0 if no cpu nodes are found */
 	return (cpu < 0) ? 0 : cpu;
 }
-EXPORT_SYMBOL_GPL(of_coresight_get_cpu);
 
 /*
  * of_coresight_parse_endpoint : Parse the given output endpoint @ep
@@ -240,8 +241,6 @@ static int of_get_coresight_platform_data(struct device *dev,
 	bool legacy_binding = false;
 	struct device_node *node = dev->of_node;
 
-	pdata->cpu = of_coresight_get_cpu(node);
-
 	/* Get the number of input and output port for this component */
 	of_coresight_get_ports(node, &pdata->nr_inport, &pdata->nr_outport);
 
@@ -300,6 +299,14 @@ of_get_coresight_platform_data(struct device *dev,
 }
 #endif
 
+int coresight_get_cpu(struct device *dev)
+{
+	if (is_of_node(dev->fwnode))
+		return of_coresight_get_cpu(dev);
+	return 0;
+}
+EXPORT_SYMBOL_GPL(coresight_get_cpu);
+
 struct coresight_platform_data *
 coresight_get_platform_data(struct device *dev)
 {
@@ -318,6 +325,7 @@ coresight_get_platform_data(struct device *dev)
 
 	/* Use device name as sysfs handle */
 	pdata->name = dev_name(dev);
+	pdata->cpu = coresight_get_cpu(dev);
 
 	if (is_of_node(fwnode))
 		ret = of_get_coresight_platform_data(dev, pdata);
diff --git a/include/linux/coresight.h b/include/linux/coresight.h
index e2b95e0..98a4440 100644
--- a/include/linux/coresight.h
+++ b/include/linux/coresight.h
@@ -292,12 +292,7 @@ static inline void coresight_disclaim_device_unlocked(void __iomem *base) {}
 
 #endif
 
-#ifdef CONFIG_OF
-extern int of_coresight_get_cpu(const struct device_node *node);
-#else
-static inline int of_coresight_get_cpu(const struct device_node *node)
-{ return 0; }
-#endif
+extern int coresight_get_cpu(struct device *dev);
 
 struct coresight_platform_data *coresight_get_platform_data(struct device *dev);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
