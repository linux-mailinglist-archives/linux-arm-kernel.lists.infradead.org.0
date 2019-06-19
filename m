Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 417434BFB4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:34:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tM+9UJO0AtaMtIxVAvvs7wnocYIIUCELPxwPH6EUo8k=; b=JrD/viMucltB2+4haCUgBz3l1F
	dIWJCEU8BIZAJWHtAl4siw6m5y3Vgt4y5/9KRnvaQg9tNXcymt2j+rF03U5/zmKBZUUgf7IJyijw0
	cg+czVxnP5qKMybzGyvSSzuFysQsl8fzyoSMr+Fk3ZvWdNe9RKC40Nnr7LyDn5pMbkltaFl5lyWk8
	pF4+v1qtY1Py9rBg9WHCArJIW1ciIgfM4Zi7jwzRz8oH4/TAxtaKqX3Uctj7OvzevyJCqIHFSTvjd
	ww3RWLVPrlwv6hn8cmyGItGpCZhxU8YSgiD5HJV9DrJV288VAJgJ+jB/iJYHv4esJ7mv7/3YKn1lG
	Gl6iIMWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdeTx-0003D8-Rs; Wed, 19 Jun 2019 17:34:49 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePO-0007Re-OT
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:30:12 +0000
Received: by mail-pg1-x543.google.com with SMTP id n2so32508pgp.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:30:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=i9B/70j+KVPtpl7paUqbm+CZkyeg3RB2d1/vlpd8aOo=;
 b=bERDPwdOXjw0QYqaffDK6yPuqd5LEDEpg/DdWM69lI6Vqdv6a/o0y9xika88EXEWvk
 khX+zTwTF+FC8MIHibbrCJRioWbOhxzKC+9HmQ42fBXLSCaVdphl0la8NdIbTs1uQ6Yz
 sKYeZukdt+AB2+M+Gfs4i9F5sxBGNQf+7BZjXGS74ofG5YWPR3XrWcWXKoUi1a8eBGyI
 WrNy1vIQup9nJK7pE7OpMjIuRuNCTCZfx2EgrGsVezH+e0OxoIHWVh20nuiGl/OQxXT3
 Zwk/dneVdPgNa112ujg1LyIcRjmSAk8YQDwlzwOmT5TnwEDYjXCE+mZmUbWgkD9jmyEk
 O9+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=i9B/70j+KVPtpl7paUqbm+CZkyeg3RB2d1/vlpd8aOo=;
 b=K0uu2Exl38X5uD386HiB7GF7Mct1dWxrWwb4h/8xjGeg2tL0G1ZXXe4jho2pQtkA3h
 U0F4Jj7TKAmVWe8z4kK89EZuTPpJZqOxyL0JKcIHKUfYOoIOG0u0m66eilP6F8+Hi2Yk
 dFp0oEUajfa+k5RCfkTJizlr7xbthicGthqRKwkGXfGxlOBEOOaL3kJCtnbQjo+y/See
 sDSRI10JWKSAY+QLEHr2sofSBgq550A9EbpIJZ7X2Sh3nCgZ9Fg1BJQ44ZsgzPodXi0G
 +ENnEHW9lWBMtnpJ4SU9zdcwzOflHTO9E2pAB9YACihjJ7nTjs3NRU5fchGZHCkq52Ap
 DoDg==
X-Gm-Message-State: APjAAAV9gxmbcvjYE3N6xcGslM0JgZLEapvKTO9pYtpuymmMqy7b9CIH
 TjHvg/sPRlXpYUVeuHhxBzrVeJ+dqDuBMQ==
X-Google-Smtp-Source: APXvYqwc6JwNBqLYwKk6hE+gYkgsjxacrL6CTDBrvQ6mQsO9R0rTAFjetL3uZlRGEse2QNeX9jdmnA==
X-Received: by 2002:a65:6541:: with SMTP id a1mr8638481pgw.409.1560965403969; 
 Wed, 19 Jun 2019 10:30:03 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.30.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:30:03 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 13/45] coresight: etb10: Clean up device specific data
Date: Wed, 19 Jun 2019 11:29:17 -0600
Message-Id: <20190619172949.4522-14-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103007_160886_012193EB 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

Track the coresight device instead of the real device.

Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-etb10.c | 32 +++++++++----------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etb10.c b/drivers/hwtracing/coresight/coresight-etb10.c
index 516d67cd7759..0c9161fe4233 100644
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
 
@@ -594,7 +593,7 @@ static void etb_dump(struct etb_drvdata *drvdata)
 	}
 	spin_unlock_irqrestore(&drvdata->spinlock, flags);
 
-	dev_dbg(drvdata->dev, "ETB dumped\n");
+	dev_dbg(&drvdata->csdev->dev, "ETB dumped\n");
 }
 
 static int etb_open(struct inode *inode, struct file *file)
@@ -605,7 +604,7 @@ static int etb_open(struct inode *inode, struct file *file)
 	if (local_cmpxchg(&drvdata->reading, 0, 1))
 		return -EBUSY;
 
-	dev_dbg(drvdata->dev, "%s: successfully opened\n", __func__);
+	dev_dbg(&drvdata->csdev->dev, "%s: successfully opened\n", __func__);
 	return 0;
 }
 
@@ -615,6 +614,7 @@ static ssize_t etb_read(struct file *file, char __user *data,
 	u32 depth;
 	struct etb_drvdata *drvdata = container_of(file->private_data,
 						   struct etb_drvdata, miscdev);
+	struct device *dev = &drvdata->csdev->dev;
 
 	etb_dump(drvdata);
 
@@ -623,13 +623,14 @@ static ssize_t etb_read(struct file *file, char __user *data,
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
@@ -640,7 +641,7 @@ static int etb_release(struct inode *inode, struct file *file)
 						   struct etb_drvdata, miscdev);
 	local_set(&drvdata->reading, 0);
 
-	dev_dbg(drvdata->dev, "%s: released\n", __func__);
+	dev_dbg(&drvdata->csdev->dev, "%s: released\n", __func__);
 	return 0;
 }
 
@@ -744,7 +745,6 @@ static int etb_probe(struct amba_device *adev, const struct amba_id *id)
 	if (!drvdata)
 		return -ENOMEM;
 
-	drvdata->dev = &adev->dev;
 	drvdata->atclk = devm_clk_get(&adev->dev, "atclk"); /* optional */
 	if (!IS_ERR(drvdata->atclk)) {
 		ret = clk_prepare_enable(drvdata->atclk);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
