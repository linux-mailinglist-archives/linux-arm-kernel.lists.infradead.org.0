Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA211261ED
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 12:36:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=X1yTuACtDfiDPq9WU3lGyHm1etldsRY9YF/WTCwhG+Q=; b=a4LAAZMaSUeK034JShFc4upw44
	swUjYHg6sO+sFtK+ZwX/GelOv0ByQmUDBZceQWKiPzA6rQaayLpFV2NS/4tY3UC8LUQhB8+F7sPI4
	ro9hivxSs7gn7fFrWBv12DSEqUPDe6346VzZbSiXeZClcC49zFBjrX6/L1gQzy4Gnbm1Dtj1d8w7h
	iiGvTCl+Z2WVsNti+DbiHvAveQJAX9YnOlcrU8K56JTmM5AZPSAXBhYxzxlGkqJg3A9Tpib+2hzrr
	D/sRdLg54TtvZRfP5Ce2wG/TKtdTo7UrMAt1kO1LT1jKy0VyhbGsXOjPdlsbdhVtYOJOQAhqLNnHE
	rhQ5KL4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTObp-00060t-6Q; Wed, 22 May 2019 10:36:33 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTOak-0004m3-8h
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 10:35:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D882F165C;
 Wed, 22 May 2019 03:35:25 -0700 (PDT)
Received: from en101.cambridge.arm.com (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 C7F6C3F575; Wed, 22 May 2019 03:35:24 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 06/30] coresight: stm: Cleanup device specific data
Date: Wed, 22 May 2019 11:34:39 +0100
Message-Id: <1558521304-27469-7-git-send-email-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
References: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_033527_005831_9CA46BB0 
X-CRM114-Status: GOOD (  15.51  )
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

Keep track of the STM coresight device which is a child device
of the AMBA device. Since we can get to the coresight_device
from the "device" instance, remove the explicit field.

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/hwtracing/coresight/coresight-stm.c | 21 ++++++++++-----------
 1 file changed, 10 insertions(+), 11 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-stm.c b/drivers/hwtracing/coresight/coresight-stm.c
index 9f8a844..8f50484 100644
--- a/drivers/hwtracing/coresight/coresight-stm.c
+++ b/drivers/hwtracing/coresight/coresight-stm.c
@@ -110,7 +110,6 @@ struct channel_space {
 /**
  * struct stm_drvdata - specifics associated to an STM component
  * @base:		memory mapped base address for this component.
- * @dev:		the device entity associated to this component.
  * @atclk:		optional clock for the core parts of the STM.
  * @csdev:		component vitals needed by the framework.
  * @spinlock:		only one at a time pls.
@@ -128,7 +127,6 @@ struct channel_space {
  */
 struct stm_drvdata {
 	void __iomem		*base;
-	struct device		*dev;
 	struct clk		*atclk;
 	struct coresight_device	*csdev;
 	spinlock_t		spinlock;
@@ -205,13 +203,13 @@ static int stm_enable(struct coresight_device *csdev,
 	if (val)
 		return -EBUSY;
 
-	pm_runtime_get_sync(drvdata->dev);
+	pm_runtime_get_sync(csdev->dev.parent);
 
 	spin_lock(&drvdata->spinlock);
 	stm_enable_hw(drvdata);
 	spin_unlock(&drvdata->spinlock);
 
-	dev_dbg(drvdata->dev, "STM tracing enabled\n");
+	dev_dbg(&csdev->dev, "STM tracing enabled\n");
 	return 0;
 }
 
@@ -271,10 +269,10 @@ static void stm_disable(struct coresight_device *csdev,
 		/* Wait until the engine has completely stopped */
 		coresight_timeout(drvdata->base, STMTCSR, STMTCSR_BUSY_BIT, 0);
 
-		pm_runtime_put(drvdata->dev);
+		pm_runtime_put(csdev->dev.parent);
 
 		local_set(&drvdata->mode, CS_MODE_DISABLED);
-		dev_dbg(drvdata->dev, "STM tracing disabled\n");
+		dev_dbg(&csdev->dev, "STM tracing disabled\n");
 	}
 }
 
@@ -763,9 +761,10 @@ static void stm_init_default_data(struct stm_drvdata *drvdata)
 	bitmap_clear(drvdata->chs.guaranteed, 0, drvdata->numsp);
 }
 
-static void stm_init_generic_data(struct stm_drvdata *drvdata)
+static void stm_init_generic_data(struct stm_drvdata *drvdata,
+				  const char *name)
 {
-	drvdata->stm.name = dev_name(drvdata->dev);
+	drvdata->stm.name = name;
 
 	/*
 	 * MasterIDs are assigned at HW design phase. As such the core is
@@ -807,7 +806,6 @@ static int stm_probe(struct amba_device *adev, const struct amba_id *id)
 	if (!drvdata)
 		return -ENOMEM;
 
-	drvdata->dev = &adev->dev;
 	drvdata->atclk = devm_clk_get(&adev->dev, "atclk"); /* optional */
 	if (!IS_ERR(drvdata->atclk)) {
 		ret = clk_prepare_enable(drvdata->atclk);
@@ -848,7 +846,7 @@ static int stm_probe(struct amba_device *adev, const struct amba_id *id)
 	spin_lock_init(&drvdata->spinlock);
 
 	stm_init_default_data(drvdata);
-	stm_init_generic_data(drvdata);
+	stm_init_generic_data(drvdata, dev_name(dev));
 
 	if (stm_register_device(dev, &drvdata->stm, THIS_MODULE)) {
 		dev_info(dev,
@@ -870,7 +868,8 @@ static int stm_probe(struct amba_device *adev, const struct amba_id *id)
 
 	pm_runtime_put(&adev->dev);
 
-	dev_info(dev, "%s initialized\n", (char *)coresight_get_uci_data(id));
+	dev_info(&drvdata->csdev->dev, "%s initialized\n",
+		 (char *)coresight_get_uci_data(id));
 	return 0;
 
 stm_unregister:
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
