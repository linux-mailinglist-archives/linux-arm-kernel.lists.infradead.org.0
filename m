Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A0D261DF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 12:36:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YT7KGQZL+ZtaMS6GxsFpHv1XUBIl2DKrTJ70jvirdXc=; b=bZzgSsWgpPsRPVHagSVu5jjwna
	NTrrlWF+6i8hJXuDFhCJMueesj/WQeZItZ4dvjjGH6sgkvCOugYzZhBLljvknubUhffeNN4GV+hOM
	oVOT7PuxlW5ox1ZhTCWCPzrAvsvzJdL4UKatnB7DMFAOL0KvCjpVRmIu+XLhiP7/xJ+mYWvs/3YuB
	7ruQvmgD7tPcNUmd7M0bQR+Obm3PwCbBzTjIcc36RTzNlkHmJ9HDA27YKnaBvAvxZNFapQTzqNmLh
	2kbaRR0Ulc1R0UlZC9nFL5hVRCjKz9tShgDXOuAt3Krgde+6q+S/51FZl8Hj0GP63sZvDKMTdf89Z
	qwqg+bQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTObL-0005NT-E2; Wed, 22 May 2019 10:36:03 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTOah-0004hv-GF
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 10:35:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3F2BD15AB;
 Wed, 22 May 2019 03:35:23 -0700 (PDT)
Received: from en101.cambridge.arm.com (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 2FB593F575; Wed, 22 May 2019 03:35:22 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 04/30] coresight: catu: Cleanup device specific data
Date: Wed, 22 May 2019 11:34:37 +0100
Message-Id: <1558521304-27469-5-git-send-email-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
References: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_033523_908718_313DFD5D 
X-CRM114-Status: GOOD (  11.92  )
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
