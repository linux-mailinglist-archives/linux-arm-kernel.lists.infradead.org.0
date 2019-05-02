Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6435F120A2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 18:54:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=v2F/N6DAX0iy0PikHMOqSHhadhO+iwBwiudpOdFmZZg=; b=n51CYmjqe1tsK1GsJNaU45up2N
	R0mPstKsi9UmN9G0qjwp7P7RjHS2eVdlbaX+/o0kEqrUCkjr/XWPqsRDyezoToHt6MpUtJBvRtOQe
	n5wthwMNFAOxCTA2QjL3gepXMPiovnIF1RmSzavJj7mMu8akiSj+9jaGvSplZcTpV43U2Vq8DKC0C
	LN+FSaVGZK9Q2gqm7LwgcNP9Hb7yVdGeFrAWyEoCB/d3tF3c/I2dS6L7ALlzZLNXcjTD0cDIYSSFb
	GeYYR6zdcRh7srvT9ygsaculBtZLx/nhwVMUS9/nWzlVU3DtF0G4rT34c6ay1Bc4aCjV1V9OXAquH
	nI8X2q1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMEz2-0004BC-Qh; Thu, 02 May 2019 16:54:56 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMEyL-0003Ja-8p
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 16:54:17 +0000
Received: by mail-pf1-x441.google.com with SMTP id 10so1418910pfo.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 09:54:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=QrkjN2tlb0+q0lMYNdu1T28xei8lTxBSs279cdRR46c=;
 b=hQ2/20WlvXmaLiPR466EjcP4wNnUJnwClir6hGSLn1LeC8HAFfuFsavJQtf1F3Xc9Q
 fAF6HkANU6E7+6D5+4JNnY1cguq1/FZVZC891QzNIZTF71IWWfuditDUronyL+fyb6bt
 M8VJwMnEgzi9h1jYS4xtZ+spLnZRRVWReimQwrR5NNWLtAygSBxM6i4prhZEkJ6dm0Mo
 sMhzWFknNuEs/f8ETF3Ce2LJ1cqp5RxzHilUdGgxHSbVQi9nf32nWNdmE1gWQ3A8wqyQ
 b49s/InI9jSlOB6xAbbvUtkZ4VhaL/JfjW+o/rH8+n21rPaqnBe80Puq4rOlvoa1bZx8
 ZVtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=QrkjN2tlb0+q0lMYNdu1T28xei8lTxBSs279cdRR46c=;
 b=fW7ddS9H8BHUrExQt+MR9PfAiUem0L8gdpQnHHMnYscGk2uhd4KBDKYsVjau68/4M3
 YOgX8bEBISwh9fXOheVbtWusQsO9tFGX4pjuqOwMvWWrfkOqpRtAdwDB/YirQ1zSUB3R
 KjSZtXSN/PNQu9mB7dtsw19CNSfbb2amTJtzDOCusSeaYUg+JbYHRxuF4oTMDovsQJoh
 tMIAl6MRMdBUbzSVermavPod6j9el2aXagPyLngqq0iZCCbreJKRe8JdUjC/ZpbeDyeq
 NjngfHC6UDC/Mn0cEMdx7mos6eiAoOtcntwk81OVc//udxOLQctaNiur8DJVi51TcP31
 Pb/w==
X-Gm-Message-State: APjAAAX7gSSQYI4CJVWVbpbXI0wYkUoD8Oo41WG8Epvw4nI7NRzxeDVu
 VP/jaMlAaGqbaQW31JKYvgwXPQ==
X-Google-Smtp-Source: APXvYqyuo4WD2wS0a/fRs7KQkm3oIlY0RYaA4KIqmy/mKzUdQ2P/0hRQrDPSkmsh65sAPQrRFDZ4rw==
X-Received: by 2002:a63:8dc9:: with SMTP id z192mr5007952pgd.6.1556816052459; 
 Thu, 02 May 2019 09:54:12 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id j2sm69949pff.77.2019.05.02.09.54.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 09:54:11 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 4/4] coresight: funnel: Support static funnel
Date: Thu,  2 May 2019 10:54:05 -0600
Message-Id: <20190502165405.31573-5-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190502165405.31573-1-mathieu.poirier@linaro.org>
References: <20190502165405.31573-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_095413_449139_0AC010B5 
X-CRM114-Status: GOOD (  23.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Leo Yan <leo.yan@linaro.org>

Since CoreSight hardware topology can use a 'hidden' funnel in the
trace data path, this kind funnel doesn't have register for accessing
and is used by default from hardware design perspective.  Below is an
example for related hardware topology:

  +------+  +------+
  | cpu0 |->| ETM  |-\
  +------+  +------+  \-> +--------+  +-----+
   ......                 | Funnel |->| ETF |-\    Hidden funnel
  +------+  +------+  /-> +--------+  +-----+  \        |
  | cpu3 |->| ETM  |-/                          \       V
  +------+  +------+                             \-> +--------+
                                                     | Funnel |-> ...
  +------+  +------+                             /-> +--------+
  | cpu4 |->| ETM  |-\                          /
  +------+  +------+  \-> +--------+  +-----+  /
   ......                 | Funnel |->| ETF |-/
  +------+  +------+  /-> +--------+  +-----+
  | cpu7 |->| ETM  |-/
  +------+  +------+

The CoreSight funnel driver only supports dynamic funnel with
registration register resource, thus it cannot support for the static
funnel case and it's impossible to create trace data path for this case.

This patch is to extend CoreSight funnel driver to support both for
static funnel and dynamic funnel.  For the dynamic funnel it reuses the
code existed in the driver, for static funnel the driver will support
device probe if without providing register resource and the driver skips
registers accessing when detect the register base is NULL.

Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: Wanglai Shi <shiwanglai@hisilicon.com>
Suggested-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Leo Yan <leo.yan@linaro.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 .../hwtracing/coresight/coresight-funnel.c    | 116 ++++++++++++++----
 1 file changed, 89 insertions(+), 27 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-funnel.c b/drivers/hwtracing/coresight/coresight-funnel.c
index 927925151509..16b0c0e1e43a 100644
--- a/drivers/hwtracing/coresight/coresight-funnel.c
+++ b/drivers/hwtracing/coresight/coresight-funnel.c
@@ -12,6 +12,8 @@
 #include <linux/err.h>
 #include <linux/fs.h>
 #include <linux/slab.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
 #include <linux/coresight.h>
 #include <linux/amba/bus.h>
@@ -43,7 +45,7 @@ struct funnel_drvdata {
 	unsigned long		priority;
 };
 
-static int funnel_enable_hw(struct funnel_drvdata *drvdata, int port)
+static int dynamic_funnel_enable_hw(struct funnel_drvdata *drvdata, int port)
 {
 	u32 functl;
 	int rc = 0;
@@ -71,17 +73,19 @@ static int funnel_enable_hw(struct funnel_drvdata *drvdata, int port)
 static int funnel_enable(struct coresight_device *csdev, int inport,
 			 int outport)
 {
-	int rc;
+	int rc = 0;
 	struct funnel_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
 
-	rc = funnel_enable_hw(drvdata, inport);
+	if (drvdata->base)
+		rc = dynamic_funnel_enable_hw(drvdata, inport);
 
 	if (!rc)
 		dev_dbg(drvdata->dev, "FUNNEL inport %d enabled\n", inport);
 	return rc;
 }
 
-static void funnel_disable_hw(struct funnel_drvdata *drvdata, int inport)
+static void dynamic_funnel_disable_hw(struct funnel_drvdata *drvdata,
+				      int inport)
 {
 	u32 functl;
 
@@ -103,7 +107,8 @@ static void funnel_disable(struct coresight_device *csdev, int inport,
 {
 	struct funnel_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
 
-	funnel_disable_hw(drvdata, inport);
+	if (drvdata->base)
+		dynamic_funnel_disable_hw(drvdata, inport);
 
 	dev_dbg(drvdata->dev, "FUNNEL inport %d disabled\n", inport);
 }
@@ -177,54 +182,70 @@ static struct attribute *coresight_funnel_attrs[] = {
 };
 ATTRIBUTE_GROUPS(coresight_funnel);
 
-static int funnel_probe(struct amba_device *adev, const struct amba_id *id)
+static int funnel_probe(struct device *dev, struct resource *res)
 {
 	int ret;
 	void __iomem *base;
-	struct device *dev = &adev->dev;
 	struct coresight_platform_data *pdata = NULL;
 	struct funnel_drvdata *drvdata;
-	struct resource *res = &adev->res;
 	struct coresight_desc desc = { 0 };
-	struct device_node *np = adev->dev.of_node;
+	struct device_node *np = dev->of_node;
 
 	if (np) {
 		pdata = of_get_coresight_platform_data(dev, np);
 		if (IS_ERR(pdata))
 			return PTR_ERR(pdata);
-		adev->dev.platform_data = pdata;
+		dev->platform_data = pdata;
 	}
 
+	if (of_device_is_compatible(np, "arm,coresight-funnel"))
+		pr_warn_once("Uses OBSOLETE CoreSight funnel binding\n");
+
 	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
 	if (!drvdata)
 		return -ENOMEM;
 
-	drvdata->dev = &adev->dev;
-	drvdata->atclk = devm_clk_get(&adev->dev, "atclk"); /* optional */
+	drvdata->dev = dev;
+	drvdata->atclk = devm_clk_get(dev, "atclk"); /* optional */
 	if (!IS_ERR(drvdata->atclk)) {
 		ret = clk_prepare_enable(drvdata->atclk);
 		if (ret)
 			return ret;
 	}
-	dev_set_drvdata(dev, drvdata);
 
-	/* Validity for the resource is already checked by the AMBA core */
-	base = devm_ioremap_resource(dev, res);
-	if (IS_ERR(base))
-		return PTR_ERR(base);
+	/*
+	 * Map the device base for dynamic-funnel, which has been
+	 * validated by AMBA core.
+	 */
+	if (res) {
+		base = devm_ioremap_resource(dev, res);
+		if (IS_ERR(base)) {
+			ret = PTR_ERR(base);
+			goto out_disable_clk;
+		}
+		drvdata->base = base;
+		desc.groups = coresight_funnel_groups;
+	}
 
-	drvdata->base = base;
-	pm_runtime_put(&adev->dev);
+	dev_set_drvdata(dev, drvdata);
 
 	desc.type = CORESIGHT_DEV_TYPE_LINK;
 	desc.subtype.link_subtype = CORESIGHT_DEV_SUBTYPE_LINK_MERG;
 	desc.ops = &funnel_cs_ops;
 	desc.pdata = pdata;
 	desc.dev = dev;
-	desc.groups = coresight_funnel_groups;
 	drvdata->csdev = coresight_register(&desc);
+	if (IS_ERR(drvdata->csdev)) {
+		ret = PTR_ERR(drvdata->csdev);
+		goto out_disable_clk;
+	}
+
+	pm_runtime_put(dev);
 
-	return PTR_ERR_OR_ZERO(drvdata->csdev);
+out_disable_clk:
+	if (ret && !IS_ERR_OR_NULL(drvdata->atclk))
+		clk_disable_unprepare(drvdata->atclk);
+	return ret;
 }
 
 #ifdef CONFIG_PM
@@ -253,7 +274,48 @@ static const struct dev_pm_ops funnel_dev_pm_ops = {
 	SET_RUNTIME_PM_OPS(funnel_runtime_suspend, funnel_runtime_resume, NULL)
 };
 
-static const struct amba_id funnel_ids[] = {
+static int static_funnel_probe(struct platform_device *pdev)
+{
+	int ret;
+
+	pm_runtime_get_noresume(&pdev->dev);
+	pm_runtime_set_active(&pdev->dev);
+	pm_runtime_enable(&pdev->dev);
+
+	/* Static funnel do not have programming base */
+	ret = funnel_probe(&pdev->dev, NULL);
+
+	if (ret) {
+		pm_runtime_put_noidle(&pdev->dev);
+		pm_runtime_disable(&pdev->dev);
+	}
+
+	return ret;
+}
+
+static const struct of_device_id static_funnel_match[] = {
+	{.compatible = "arm,coresight-static-funnel"},
+	{}
+};
+
+static struct platform_driver static_funnel_driver = {
+	.probe          = static_funnel_probe,
+	.driver         = {
+		.name   = "coresight-static-funnel",
+		.of_match_table = static_funnel_match,
+		.pm	= &funnel_dev_pm_ops,
+		.suppress_bind_attrs = true,
+	},
+};
+builtin_platform_driver(static_funnel_driver);
+
+static int dynamic_funnel_probe(struct amba_device *adev,
+				const struct amba_id *id)
+{
+	return funnel_probe(&adev->dev, &adev->res);
+}
+
+static const struct amba_id dynamic_funnel_ids[] = {
 	{
 		.id     = 0x000bb908,
 		.mask   = 0x000fffff,
@@ -266,14 +328,14 @@ static const struct amba_id funnel_ids[] = {
 	{ 0, 0},
 };
 
-static struct amba_driver funnel_driver = {
+static struct amba_driver dynamic_funnel_driver = {
 	.drv = {
-		.name	= "coresight-funnel",
+		.name	= "coresight-dynamic-funnel",
 		.owner	= THIS_MODULE,
 		.pm	= &funnel_dev_pm_ops,
 		.suppress_bind_attrs = true,
 	},
-	.probe		= funnel_probe,
-	.id_table	= funnel_ids,
+	.probe		= dynamic_funnel_probe,
+	.id_table	= dynamic_funnel_ids,
 };
-builtin_amba_driver(funnel_driver);
+builtin_amba_driver(dynamic_funnel_driver);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
