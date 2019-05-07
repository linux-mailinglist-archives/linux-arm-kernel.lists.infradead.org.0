Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B3316245
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 12:55:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=X1yTuACtDfiDPq9WU3lGyHm1etldsRY9YF/WTCwhG+Q=; b=lTCbtJ0zoR8s1jXt3Or/zKnt2d
	Ae/g3Y+1RpxYO5bDHyfEX3fQgNVyqVFRoEhVgGEO/+HdOvGnDd1ad4+Ella2uuKfUE6aEJiICR89a
	gC+uIW5SvRh2qMjBBISXuIlm7klc4hBwDr5WT966grbhYGjAn8YvVMBA/HGwD6TOZBxu/EWlKPFeu
	4PcNo+I2QfKQn3OueF+jR/77/BO3vHEWASx3YCJGmc8V8hYrl74ICqDKU4INGeOFiRCyBVJ/NVE4T
	BV4eqas9KUMtILkSA5yMumRT/hq8yv9XFcHGohbD4pUlWRsOUVDGy8YQdXeMg2dnRQ6eqafflz3bH
	Oox6ubLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNxkR-0006S5-MA; Tue, 07 May 2019 10:54:59 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNxjJ-00059a-QM
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 10:54:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8836D374;
 Tue,  7 May 2019 03:53:49 -0700 (PDT)
Received: from en101.cambridge.arm.com (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 550573F5AF; Tue,  7 May 2019 03:53:48 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 06/30] coresight: stm: Cleanup device specific data
Date: Tue,  7 May 2019 11:52:33 +0100
Message-Id: <1557226378-10131-7-git-send-email-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557226378-10131-1-git-send-email-suzuki.poulose@arm.com>
References: <1557226378-10131-1-git-send-email-suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_035350_391545_80851570 
X-CRM114-Status: GOOD (  14.62  )
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
