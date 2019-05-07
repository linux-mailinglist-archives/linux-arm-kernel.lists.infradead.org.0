Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F5116231
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 12:54:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YT7KGQZL+ZtaMS6GxsFpHv1XUBIl2DKrTJ70jvirdXc=; b=T72UgPfAqKQci4kRxoiEVluFOq
	h7DffVOjVNn+VHiTWaEmqRvZy5UFBH4IWbgDJVvM/3NpF5bk9st/rCjFUWSTwpQwhJpixDgiJrlT+
	PFPApD2pwwxjutXNCdH00/+98u/l4ehga3/IYr5Gk54N4GtCREvZ9SdQ1Av0Gqxi1fuNdQIuucuDN
	G5v6/VUtByiK5CkxbGSFRJHTfpL19Oy2hjXjukEMHN4AboWK47l4XhEOqhcFfZBMUHoRBT4u+WOJK
	K6TEvUK87ytiSlh9KI58DpQtd1HJ3iTqdi1WdoBJUTW5MevMn22MqtHmxMLntJ3QRhnxPYNmBIl+j
	JEXIOlwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNxju-0005nJ-04; Tue, 07 May 2019 10:54:26 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNxjG-00055H-PI
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 10:53:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9D7B6EBD;
 Tue,  7 May 2019 03:53:46 -0700 (PDT)
Received: from en101.cambridge.arm.com (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 696AB3F5AF; Tue,  7 May 2019 03:53:45 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 04/30] coresight: catu: Cleanup device specific data
Date: Tue,  7 May 2019 11:52:31 +0100
Message-Id: <1557226378-10131-5-git-send-email-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557226378-10131-1-git-send-email-suzuki.poulose@arm.com>
References: <1557226378-10131-1-git-send-email-suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_035347_404695_A1D937E1 
X-CRM114-Status: GOOD (  13.34  )
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

Switch to using the CoreSight device instead of the real
amba device.

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/hwtracing/coresight/coresight-catu.c | 13 +++++++------
 drivers/hwtracing/coresight/coresight-catu.h |  1 -
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-catu.c b/drivers/hwtracing/coresight/coresight-catu.c
index d948a72..63109c9 100644
--- a/drivers/hwtracing/coresight/coresight-catu.c
+++ b/drivers/hwtracing/coresight/coresight-catu.c
@@ -408,13 +408,14 @@ static int catu_enable_hw(struct catu_drvdata *drvdata, void *data)
 	int rc;
 	u32 control, mode;
 	struct etr_buf *etr_buf = data;
+	struct device *dev = &drvdata->csdev->dev;
 
 	if (catu_wait_for_ready(drvdata))
-		dev_warn(drvdata->dev, "Timeout while waiting for READY\n");
+		dev_warn(dev, "Timeout while waiting for READY\n");
 
 	control = catu_read_control(drvdata);
 	if (control & BIT(CATU_CONTROL_ENABLE)) {
-		dev_warn(drvdata->dev, "CATU is already enabled\n");
+		dev_warn(dev, "CATU is already enabled\n");
 		return -EBUSY;
 	}
 
@@ -440,7 +441,7 @@ static int catu_enable_hw(struct catu_drvdata *drvdata, void *data)
 	catu_write_irqen(drvdata, 0);
 	catu_write_mode(drvdata, mode);
 	catu_write_control(drvdata, control);
-	dev_dbg(drvdata->dev, "Enabled in %s mode\n",
+	dev_dbg(dev, "Enabled in %s mode\n",
 		(mode == CATU_MODE_PASS_THROUGH) ?
 		"Pass through" :
 		"Translate");
@@ -461,15 +462,16 @@ static int catu_enable(struct coresight_device *csdev, void *data)
 static int catu_disable_hw(struct catu_drvdata *drvdata)
 {
 	int rc = 0;
+	struct device *dev = &drvdata->csdev->dev;
 
 	catu_write_control(drvdata, 0);
 	coresight_disclaim_device_unlocked(drvdata->base);
 	if (catu_wait_for_ready(drvdata)) {
-		dev_info(drvdata->dev, "Timeout while waiting for READY\n");
+		dev_info(dev, "Timeout while waiting for READY\n");
 		rc = -EAGAIN;
 	}
 
-	dev_dbg(drvdata->dev, "Disabled\n");
+	dev_dbg(dev, "Disabled\n");
 	return rc;
 }
 
@@ -519,7 +521,6 @@ static int catu_probe(struct amba_device *adev, const struct amba_id *id)
 		goto out;
 	}
 
-	drvdata->dev = dev;
 	dev_set_drvdata(dev, drvdata);
 	base = devm_ioremap_resource(dev, &adev->res);
 	if (IS_ERR(base)) {
diff --git a/drivers/hwtracing/coresight/coresight-catu.h b/drivers/hwtracing/coresight/coresight-catu.h
index 1d2ad18..80ceee3 100644
--- a/drivers/hwtracing/coresight/coresight-catu.h
+++ b/drivers/hwtracing/coresight/coresight-catu.h
@@ -61,7 +61,6 @@
 #define CATU_IRQEN_OFF		0x0
 
 struct catu_drvdata {
-	struct device *dev;
 	void __iomem *base;
 	struct coresight_device *csdev;
 	int irq;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
