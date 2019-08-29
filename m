Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC04A1075
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 06:30:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PVnwOGBVAexr3H8/086Uz81NVY+qnm27qHe3OBzgBO4=; b=bQ0Qm02mU97niy
	MqSCNOMKB3/SYzy3ggB22XgIskZfMwf02fRLWfDC3wqr/L/WiSas/fH3bHhGpqFGsjFJHRg58Fw89
	qKSoxCJifOSgBT/w4ees23pGdilM0CSJGqqo+yukz/wl03veiWucdYGplDhSs/oNgs9BlPtXqBuv0
	fgsVNZUQwqpiLlHogeYyMwIpHbts1O5J5UqtptRSM5InW+9lzWyabeIyxH88e/EBKUE0QooQTZa9v
	oBTj5A6IT5rz84/BBhlDw548ZN8gSts1owmoCXx8ZlSNeTmJ7Ltjx3cMjMNW+YbGdU1XcocPNuL8y
	BW4yZCXP3goDoDk/0fLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3C4L-0007h2-8f; Thu, 29 Aug 2019 04:29:57 +0000
Received: from antares.kleine-koenig.org ([2a01:4f8:c0c:3a97::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3C4B-0007gB-Ib
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 04:29:49 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id C8D38789194; Thu, 29 Aug 2019 06:29:41 +0200 (CEST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Wolfram Sang <wsa@the-dreams.de>, Oleksij Rempel <linux@rempel-privat.de>
Subject: [PATCH] [RFC] i2c: imx: make use of format specifier %dE
Date: Thu, 29 Aug 2019 06:29:05 +0200
Message-Id: <20190829042905.4850-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_212947_927905_10231CA2 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Jani Nikula <jani.nikula@linux.intel.com>, Petr Mladek <pmladek@suse.com>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Jonathan Corbet <corbet@lwn.net>, Shawn Guo <shawnguo@kernel.org>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, Enrico Weigelt <lkml@metux.net>,
 NXP Linux Team <linux-imx@nxp.com>, kernel@pengutronix.de,
 Andrew Morton <akpm@linux-foundation.org>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I created a patch that teaches printk et al to emit a symbolic error
name for an error valued integer[1]. With that applied

	dev_err(&pdev->dev, "can't enable I2C clock, ret=%dE\n", ret);

emits

	... can't enable I2C clock, ret=EIO

if ret is -EIO. Petr Mladek (i.e. one of the printk maintainers) had
concerns if this would be well received and worth the effort. He asked
to present it to a few subsystems. So for now, this patch converting the
i2c-imx driver shouldn't be applied yet but it would be great to get
some feedback about if you think that being able to easily printk (for
example) "EIO" instead of "-5" is a good idea. Would it help you? Do you
think it helps your users?

Thanks
Uwe

[1] https://lkml.org/lkml/2019/8/27/1456
---
 drivers/i2c/busses/i2c-imx.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index 15f6cde6452f..359e911cb891 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -289,7 +289,7 @@ static void i2c_imx_dma_request(struct imx_i2c_struct *i2c_imx,
 	if (IS_ERR(dma->chan_tx)) {
 		ret = PTR_ERR(dma->chan_tx);
 		if (ret != -ENODEV && ret != -EPROBE_DEFER)
-			dev_err(dev, "can't request DMA tx channel (%d)\n", ret);
+			dev_err(dev, "can't request DMA tx channel (%dE)\n", ret);
 		goto fail_al;
 	}
 
@@ -300,7 +300,7 @@ static void i2c_imx_dma_request(struct imx_i2c_struct *i2c_imx,
 	dma_sconfig.direction = DMA_MEM_TO_DEV;
 	ret = dmaengine_slave_config(dma->chan_tx, &dma_sconfig);
 	if (ret < 0) {
-		dev_err(dev, "can't configure tx channel (%d)\n", ret);
+		dev_err(dev, "can't configure tx channel (%dE)\n", ret);
 		goto fail_tx;
 	}
 
@@ -308,7 +308,7 @@ static void i2c_imx_dma_request(struct imx_i2c_struct *i2c_imx,
 	if (IS_ERR(dma->chan_rx)) {
 		ret = PTR_ERR(dma->chan_rx);
 		if (ret != -ENODEV && ret != -EPROBE_DEFER)
-			dev_err(dev, "can't request DMA rx channel (%d)\n", ret);
+			dev_err(dev, "can't request DMA rx channel (%dE)\n", ret);
 		goto fail_tx;
 	}
 
@@ -319,7 +319,7 @@ static void i2c_imx_dma_request(struct imx_i2c_struct *i2c_imx,
 	dma_sconfig.direction = DMA_DEV_TO_MEM;
 	ret = dmaengine_slave_config(dma->chan_rx, &dma_sconfig);
 	if (ret < 0) {
-		dev_err(dev, "can't configure rx channel (%d)\n", ret);
+		dev_err(dev, "can't configure rx channel (%dE)\n", ret);
 		goto fail_rx;
 	}
 
@@ -964,7 +964,7 @@ static int i2c_imx_xfer(struct i2c_adapter *adapter,
 	pm_runtime_put_autosuspend(i2c_imx->adapter.dev.parent);
 
 out:
-	dev_dbg(&i2c_imx->adapter.dev, "<%s> exit with: %s: %d\n", __func__,
+	dev_dbg(&i2c_imx->adapter.dev, "<%s> exit with: %s: %dE\n", __func__,
 		(result < 0) ? "error" : "success msg",
 			(result < 0) ? result : num);
 	return (result < 0) ? result : num;
@@ -1100,7 +1100,7 @@ static int i2c_imx_probe(struct platform_device *pdev)
 
 	ret = clk_prepare_enable(i2c_imx->clk);
 	if (ret) {
-		dev_err(&pdev->dev, "can't enable I2C clock, ret=%d\n", ret);
+		dev_err(&pdev->dev, "can't enable I2C clock, ret=%dE\n", ret);
 		return ret;
 	}
 
@@ -1108,7 +1108,7 @@ static int i2c_imx_probe(struct platform_device *pdev)
 	ret = devm_request_irq(&pdev->dev, irq, i2c_imx_isr, IRQF_SHARED,
 				pdev->name, i2c_imx);
 	if (ret) {
-		dev_err(&pdev->dev, "can't claim irq %d\n", irq);
+		dev_err(&pdev->dev, "can't claim irq %dE\n", irq);
 		goto clk_disable;
 	}
 
@@ -1230,7 +1230,7 @@ static int __maybe_unused i2c_imx_runtime_resume(struct device *dev)
 
 	ret = clk_enable(i2c_imx->clk);
 	if (ret)
-		dev_err(dev, "can't enable I2C clock, ret=%d\n", ret);
+		dev_err(dev, "can't enable I2C clock, ret=%dE\n", ret);
 
 	return ret;
 }
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
