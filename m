Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75DA91622D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 12:54:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mTgsc/E6QTP9HQ++TTsT0XuMC2KUUzAB1tF4BaGVYtI=; b=OknMEOlgOns2WzJoc+V4L3U8xp
	6nc2nmN5NxgVBYhsGZPzuwl+uj+/8p89F21/qyuRxB5epqMJ62ITJRnEV6O1pqC7qnUvqBrnfNoeE
	YPJpFwV+ZZm+1P4swcZSNbOODcuO05m8VamOeBeC1/SbNubHmGSn4Lmo7VEPf65KtSihXyDSbP/wE
	QbxzQTh3LxwrDtPBA38JFffwSjvaCgIJoEH4sAF5IAybG2br5xL2PcWYCvcvgGsITS8iVvqjalPb2
	w7/NI+lrvL4TGxOa8I5piLYrh4yeCti6z1dNChLVzv9gh3zwZqIutg4y53gr527J4sE/74Zis1xjC
	TsALHwfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNxjW-0005EZ-Vc; Tue, 07 May 2019 10:54:03 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNxjC-00050l-By
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 10:53:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 406BFEBD;
 Tue,  7 May 2019 03:53:42 -0700 (PDT)
Received: from en101.cambridge.arm.com (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 0D69F3F5AF; Tue,  7 May 2019 03:53:40 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 01/30] coresight: funnel: Clean up device book keeping
Date: Tue,  7 May 2019 11:52:28 +0100
Message-Id: <1557226378-10131-2-git-send-email-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557226378-10131-1-git-send-email-suzuki.poulose@arm.com>
References: <1557226378-10131-1-git-send-email-suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_035342_407965_EF64D1E5 
X-CRM114-Status: GOOD (  13.26  )
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

In preparation to use a consistent device naming scheme,
clean up the device link tracking in funnel driver.
Use the "coresight" device instead of the "real" parent device
for all internal purposes. All other requests (e.g, power management,
DMA operations) must use the "real" device which is the parent device.

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/hwtracing/coresight/coresight-funnel.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-funnel.c b/drivers/hwtracing/coresight/coresight-funnel.c
index 16b0c0e..6236a84 100644
--- a/drivers/hwtracing/coresight/coresight-funnel.c
+++ b/drivers/hwtracing/coresight/coresight-funnel.c
@@ -32,14 +32,12 @@
 /**
  * struct funnel_drvdata - specifics associated to a funnel component
  * @base:	memory mapped base address for this component.
- * @dev:	the device entity associated to this component.
  * @atclk:	optional clock for the core parts of the funnel.
  * @csdev:	component vitals needed by the framework.
  * @priority:	port selection order.
  */
 struct funnel_drvdata {
 	void __iomem		*base;
-	struct device		*dev;
 	struct clk		*atclk;
 	struct coresight_device	*csdev;
 	unsigned long		priority;
@@ -80,7 +78,7 @@ static int funnel_enable(struct coresight_device *csdev, int inport,
 		rc = dynamic_funnel_enable_hw(drvdata, inport);
 
 	if (!rc)
-		dev_dbg(drvdata->dev, "FUNNEL inport %d enabled\n", inport);
+		dev_dbg(&csdev->dev, "FUNNEL inport %d enabled\n", inport);
 	return rc;
 }
 
@@ -110,7 +108,7 @@ static void funnel_disable(struct coresight_device *csdev, int inport,
 	if (drvdata->base)
 		dynamic_funnel_disable_hw(drvdata, inport);
 
-	dev_dbg(drvdata->dev, "FUNNEL inport %d disabled\n", inport);
+	dev_dbg(&csdev->dev, "FUNNEL inport %d disabled\n", inport);
 }
 
 static const struct coresight_ops_link funnel_link_ops = {
@@ -165,11 +163,11 @@ static ssize_t funnel_ctrl_show(struct device *dev,
 	u32 val;
 	struct funnel_drvdata *drvdata = dev_get_drvdata(dev->parent);
 
-	pm_runtime_get_sync(drvdata->dev);
+	pm_runtime_get_sync(dev->parent);
 
 	val = get_funnel_ctrl_hw(drvdata);
 
-	pm_runtime_put(drvdata->dev);
+	pm_runtime_put(dev->parent);
 
 	return sprintf(buf, "%#x\n", val);
 }
@@ -205,7 +203,6 @@ static int funnel_probe(struct device *dev, struct resource *res)
 	if (!drvdata)
 		return -ENOMEM;
 
-	drvdata->dev = dev;
 	drvdata->atclk = devm_clk_get(dev, "atclk"); /* optional */
 	if (!IS_ERR(drvdata->atclk)) {
 		ret = clk_prepare_enable(drvdata->atclk);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
