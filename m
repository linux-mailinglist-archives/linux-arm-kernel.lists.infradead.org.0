Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6564E16248
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 12:55:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dUFaMxoyaV2XeGMMxm+SREMM/zrzXR+hMTvdQM+Y3ic=; b=YJRt7A64BNPgwk1aidog+oBvhi
	qT2sVBDy6dyO0rvvd4tcQNR/nCbNgP8M/nLTwz1InS99U43ToEsKy/okAh7BYVUxG+Tk9OpEYvV3A
	/uJKOjrGzwqWUKOPrOR/Wnv3rdIZdoyQ1Zqe6HsLAGvaGGNtm3eqtqfG0Tgr9Bp8lcoYOMm5r5keF
	VdXSdUp4Gu5agMc3jZyHwawNk92llzS9HHjlvxAIlOcXSSADhwlyG3+2ijTihKq+8gSlfvNkK9eII
	giiX0BvcSif8gkd+CGqnvBr3TZyEj/y8AWOklQ4Yfaojq1h5Mtom2puUy1Sp0tvXj3RIzdSAEEcmF
	CXHSqFhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNxl0-0008E3-Ca; Tue, 07 May 2019 10:55:34 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNxjM-00055H-LY
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 10:54:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 73D14EBD;
 Tue,  7 May 2019 03:53:52 -0700 (PDT)
Received: from en101.cambridge.arm.com (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 40E933F5AF; Tue,  7 May 2019 03:53:51 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 08/30] coresight: etb10: Clean up device specific data
Date: Tue,  7 May 2019 11:52:35 +0100
Message-Id: <1557226378-10131-9-git-send-email-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557226378-10131-1-git-send-email-suzuki.poulose@arm.com>
References: <1557226378-10131-1-git-send-email-suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_035353_892940_4E4F7849 
X-CRM114-Status: GOOD (  14.15  )
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

Track the coresight device instead of the real device.

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/hwtracing/coresight/coresight-etb10.c | 32 +++++++++++++--------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etb10.c b/drivers/hwtracing/coresight/coresight-etb10.c
index 4ee4c80..3b333fb 100644
--- a/drivers/hwtracing/coresight/coresight-etb10.c
+++ b/drivers/hwtracing/coresight/coresight-etb10.c
@@ -66,7 +66,6 @@
 /**
  * struct etb_drvdata - specifics associated to an ETB component
  * @base:	memory mapped base address for this component.
- * @dev:	the device entity associated to this component.
  * @atclk:	optional clock for the core parts of the ETB.
  * @csdev:	component vitals needed by the framework.
  * @miscdev:	specifics to handle "/dev/xyz.etb" entry.
@@ -81,7 +80,6 @@
  */
 struct etb_drvdata {
 	void __iomem		*base;
-	struct device		*dev;
 	struct clk		*atclk;
 	struct coresight_device	*csdev;
 	struct miscdevice	miscdev;
@@ -227,7 +225,6 @@ static int etb_enable_perf(struct coresight_device *csdev, void *data)
 static int etb_enable(struct coresight_device *csdev, u32 mode, void *data)
 {
 	int ret;
-	struct etb_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
 
 	switch (mode) {
 	case CS_MODE_SYSFS:
@@ -244,13 +241,14 @@ static int etb_enable(struct coresight_device *csdev, u32 mode, void *data)
 	if (ret)
 		return ret;
 
-	dev_dbg(drvdata->dev, "ETB enabled\n");
+	dev_dbg(&csdev->dev, "ETB enabled\n");
 	return 0;
 }
 
 static void __etb_disable_hw(struct etb_drvdata *drvdata)
 {
 	u32 ffcr;
+	struct device *dev = &drvdata->csdev->dev;
 
 	CS_UNLOCK(drvdata->base);
 
@@ -263,7 +261,7 @@ static void __etb_disable_hw(struct etb_drvdata *drvdata)
 	writel_relaxed(ffcr, drvdata->base + ETB_FFCR);
 
 	if (coresight_timeout(drvdata->base, ETB_FFCR, ETB_FFCR_BIT, 0)) {
-		dev_err(drvdata->dev,
+		dev_err(dev,
 		"timeout while waiting for completion of Manual Flush\n");
 	}
 
@@ -271,7 +269,7 @@ static void __etb_disable_hw(struct etb_drvdata *drvdata)
 	writel_relaxed(0x0, drvdata->base + ETB_CTL_REG);
 
 	if (coresight_timeout(drvdata->base, ETB_FFSR, ETB_FFSR_BIT, 1)) {
-		dev_err(drvdata->dev,
+		dev_err(dev,
 			"timeout while waiting for Formatter to Stop\n");
 	}
 
@@ -286,6 +284,7 @@ static void etb_dump_hw(struct etb_drvdata *drvdata)
 	u32 read_data, depth;
 	u32 read_ptr, write_ptr;
 	u32 frame_off, frame_endoff;
+	struct device *dev = &drvdata->csdev->dev;
 
 	CS_UNLOCK(drvdata->base);
 
@@ -295,10 +294,10 @@ static void etb_dump_hw(struct etb_drvdata *drvdata)
 	frame_off = write_ptr % ETB_FRAME_SIZE_WORDS;
 	frame_endoff = ETB_FRAME_SIZE_WORDS - frame_off;
 	if (frame_off) {
-		dev_err(drvdata->dev,
+		dev_err(dev,
 			"write_ptr: %lu not aligned to formatter frame size\n",
 			(unsigned long)write_ptr);
-		dev_err(drvdata->dev, "frameoff: %lu, frame_endoff: %lu\n",
+		dev_err(dev, "frameoff: %lu, frame_endoff: %lu\n",
 			(unsigned long)frame_off, (unsigned long)frame_endoff);
 		write_ptr += frame_endoff;
 	}
@@ -365,7 +364,7 @@ static int etb_disable(struct coresight_device *csdev)
 	drvdata->mode = CS_MODE_DISABLED;
 	spin_unlock_irqrestore(&drvdata->spinlock, flags);
 
-	dev_dbg(drvdata->dev, "ETB disabled\n");
+	dev_dbg(&csdev->dev, "ETB disabled\n");
 	return 0;
 }
 
@@ -460,7 +459,7 @@ static unsigned long etb_update_buffer(struct coresight_device *csdev,
 	 * chance to fix things.
 	 */
 	if (write_ptr % ETB_FRAME_SIZE_WORDS) {
-		dev_err(drvdata->dev,
+		dev_err(&csdev->dev,
 			"write_ptr: %lu not aligned to formatter frame size\n",
 			(unsigned long)write_ptr);
 
@@ -587,7 +586,7 @@ static void etb_dump(struct etb_drvdata *drvdata)
 	}
 	spin_unlock_irqrestore(&drvdata->spinlock, flags);
 
-	dev_dbg(drvdata->dev, "ETB dumped\n");
+	dev_dbg(&drvdata->csdev->dev, "ETB dumped\n");
 }
 
 static int etb_open(struct inode *inode, struct file *file)
@@ -598,7 +597,7 @@ static int etb_open(struct inode *inode, struct file *file)
 	if (local_cmpxchg(&drvdata->reading, 0, 1))
 		return -EBUSY;
 
-	dev_dbg(drvdata->dev, "%s: successfully opened\n", __func__);
+	dev_dbg(&drvdata->csdev->dev, "%s: successfully opened\n", __func__);
 	return 0;
 }
 
@@ -608,6 +607,7 @@ static ssize_t etb_read(struct file *file, char __user *data,
 	u32 depth;
 	struct etb_drvdata *drvdata = container_of(file->private_data,
 						   struct etb_drvdata, miscdev);
+	struct device *dev = &drvdata->csdev->dev;
 
 	etb_dump(drvdata);
 
@@ -616,13 +616,14 @@ static ssize_t etb_read(struct file *file, char __user *data,
 		len = depth * 4 - *ppos;
 
 	if (copy_to_user(data, drvdata->buf + *ppos, len)) {
-		dev_dbg(drvdata->dev, "%s: copy_to_user failed\n", __func__);
+		dev_dbg(dev,
+			"%s: copy_to_user failed\n", __func__);
 		return -EFAULT;
 	}
 
 	*ppos += len;
 
-	dev_dbg(drvdata->dev, "%s: %zu bytes copied, %d bytes left\n",
+	dev_dbg(dev, "%s: %zu bytes copied, %d bytes left\n",
 		__func__, len, (int)(depth * 4 - *ppos));
 	return len;
 }
@@ -633,7 +634,7 @@ static int etb_release(struct inode *inode, struct file *file)
 						   struct etb_drvdata, miscdev);
 	local_set(&drvdata->reading, 0);
 
-	dev_dbg(drvdata->dev, "%s: released\n", __func__);
+	dev_dbg(&drvdata->csdev->dev, "%s: released\n", __func__);
 	return 0;
 }
 
@@ -737,7 +738,6 @@ static int etb_probe(struct amba_device *adev, const struct amba_id *id)
 	if (!drvdata)
 		return -ENOMEM;
 
-	drvdata->dev = &adev->dev;
 	drvdata->atclk = devm_clk_get(&adev->dev, "atclk"); /* optional */
 	if (!IS_ERR(drvdata->atclk)) {
 		ret = clk_prepare_enable(drvdata->atclk);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
