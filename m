Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB5CC1204F8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 13:08:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=qREXGAPd4DGojiiiWmv+CYQds8ZUV0+FVxGBDYLAQCg=; b=ReL
	SsKH52/aTb2n4h7sP5dTtlvtRsHYSId+GfZJl18QMJ7hB34PVw92Pwcz4/3aS+fPFeRgnNNUBeDrW
	R+aOXUxcJeMYYPBzjiRnJPg6SYyvvR+4wQbtzckC4+/JZXwjUB6j22soAjrQmXwA74uJBcmFgkJGo
	MWusMoekPhx0A8leiT0FxlzpOu1qJpqFqioJWScCOmsGa/G+7v1+r7pay9pExjngjr/HMiBBJdavC
	/uQ74TeGjCiotICCc5x+ThQ6ff8WP4cdyZqiFR7tVqlsT48ITw1A65kwCzClKfxsEHFpb4ZK0dlk7
	c2F1KFzbsNlAd7T3ths6OgEgj/RWyJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igpB4-0004cT-0a; Mon, 16 Dec 2019 12:08:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igp8k-0002n0-FS; Mon, 16 Dec 2019 12:06:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9910D1045;
 Mon, 16 Dec 2019 04:06:16 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E6E163F719;
 Mon, 16 Dec 2019 04:06:15 -0800 (PST)
Date: Mon, 16 Dec 2019 12:06:14 +0000
From: Mark Brown <broonie@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Applied "spi: bcm2835: Use dma_request_chan() instead
 dma_request_slave_channel()" to the spi tree
In-Reply-To: <20191212135550.4634-4-peter.ujfalusi@ti.com>
Message-Id: <applied-20191212135550.4634-4-peter.ujfalusi@ti.com>
X-Patchwork-Hint: ignore
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_040618_649687_5C8492C3 
X-CRM114-Status: GOOD (  18.29  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: baohua@kernel.org, f.fainelli@gmail.com, alexandre.torgue@st.com,
 sbranden@broadcom.com, rjui@broadcom.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 nsaenzjulienne@suse.de, vkoul@kernel.org, Mark Brown <broonie@kernel.org>,
 linux-rpi-kernel@lists.infradead.org, mcoquelin.stm32@gmail.com,
 shawnguo@kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: bcm2835: Use dma_request_chan() instead dma_request_slave_channel()

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.6

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From 6133fed0539bc5c059d3a661b61704159ba448a6 Mon Sep 17 00:00:00 2001
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Date: Thu, 12 Dec 2019 15:55:44 +0200
Subject: [PATCH] spi: bcm2835: Use dma_request_chan() instead
 dma_request_slave_channel()

dma_request_slave_channel() is a wrapper on top of dma_request_chan()
eating up the error code.

By using dma_request_chan() directly the driver can support deferred
probing against DMA.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
Link: https://lore.kernel.org/r/20191212135550.4634-4-peter.ujfalusi@ti.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-bcm2835.c | 34 ++++++++++++++++++++++++----------
 1 file changed, 24 insertions(+), 10 deletions(-)

diff --git a/drivers/spi/spi-bcm2835.c b/drivers/spi/spi-bcm2835.c
index 662d55e9f21d..69df79914504 100644
--- a/drivers/spi/spi-bcm2835.c
+++ b/drivers/spi/spi-bcm2835.c
@@ -888,8 +888,8 @@ static void bcm2835_dma_release(struct spi_controller *ctlr,
 	}
 }
 
-static void bcm2835_dma_init(struct spi_controller *ctlr, struct device *dev,
-			     struct bcm2835_spi *bs)
+static int bcm2835_dma_init(struct spi_controller *ctlr, struct device *dev,
+			    struct bcm2835_spi *bs)
 {
 	struct dma_slave_config slave_config;
 	const __be32 *addr;
@@ -900,19 +900,24 @@ static void bcm2835_dma_init(struct spi_controller *ctlr, struct device *dev,
 	addr = of_get_address(ctlr->dev.of_node, 0, NULL, NULL);
 	if (!addr) {
 		dev_err(dev, "could not get DMA-register address - not using dma mode\n");
-		goto err;
+		/* Fall back to interrupt mode */
+		return 0;
 	}
 	dma_reg_base = be32_to_cpup(addr);
 
 	/* get tx/rx dma */
-	ctlr->dma_tx = dma_request_slave_channel(dev, "tx");
-	if (!ctlr->dma_tx) {
+	ctlr->dma_tx = dma_request_chan(dev, "tx");
+	if (IS_ERR(ctlr->dma_tx)) {
 		dev_err(dev, "no tx-dma configuration found - not using dma mode\n");
+		ret = PTR_ERR(ctlr->dma_tx);
+		ctlr->dma_tx = NULL;
 		goto err;
 	}
-	ctlr->dma_rx = dma_request_slave_channel(dev, "rx");
-	if (!ctlr->dma_rx) {
+	ctlr->dma_rx = dma_request_chan(dev, "rx");
+	if (IS_ERR(ctlr->dma_rx)) {
 		dev_err(dev, "no rx-dma configuration found - not using dma mode\n");
+		ret = PTR_ERR(ctlr->dma_rx);
+		ctlr->dma_rx = NULL;
 		goto err_release;
 	}
 
@@ -997,7 +1002,7 @@ static void bcm2835_dma_init(struct spi_controller *ctlr, struct device *dev,
 	/* all went well, so set can_dma */
 	ctlr->can_dma = bcm2835_spi_can_dma;
 
-	return;
+	return 0;
 
 err_config:
 	dev_err(dev, "issue configuring dma: %d - not using DMA mode\n",
@@ -1005,7 +1010,14 @@ static void bcm2835_dma_init(struct spi_controller *ctlr, struct device *dev,
 err_release:
 	bcm2835_dma_release(ctlr, bs);
 err:
-	return;
+	/*
+	 * Only report error for deferred probing, otherwise fall back to
+	 * interrupt mode
+	 */
+	if (ret != -EPROBE_DEFER)
+		ret = 0;
+
+	return ret;
 }
 
 static int bcm2835_spi_transfer_one_poll(struct spi_controller *ctlr,
@@ -1317,7 +1329,9 @@ static int bcm2835_spi_probe(struct platform_device *pdev)
 
 	clk_prepare_enable(bs->clk);
 
-	bcm2835_dma_init(ctlr, &pdev->dev, bs);
+	err = bcm2835_dma_init(ctlr, &pdev->dev, bs);
+	if (err)
+		goto out_clk_disable;
 
 	/* initialise the hardware with the default polarities */
 	bcm2835_wr(bs, BCM2835_SPI_CS,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
