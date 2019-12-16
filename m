Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4776B120503
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 13:09:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=fInqu0rRYcWC7qP0c9oBG1JY45Z0RkzYpifEPhor2bw=; b=Rjf
	Ksl7d/KqQ6fKt1SEyZmaF9NjOoXA9AbUVofTOjynx1Vf76KPV6R/Xlhp6C2Sn3q3GZRD9qL0bbLLZ
	am2eZ4UNwMoVhmvMMtEsBUHM2+eu2tUQz9NKm6QPVFAJHNw+zLVj6CCDrwt/ck/BQP2RirVepqgkm
	gRtXcQZpuMWeatv5nk5JNkFsqOrpubkZJw1dPn2a7DxCsFo2YcV3iqQWbgaGigudamnJihHsy8TQE
	corI3lbvBISKKUiiI2ZYKZTtqQ3yUvC3Rv9l7mt1NilAKBTp+PecuB/Q4ZjpOnEhKdPel23RH4pGF
	E0dvnv/2MicxYRySmPZkr4/ROJdbcrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igpBV-00056H-VW; Mon, 16 Dec 2019 12:09:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igp8n-0002pi-NG; Mon, 16 Dec 2019 12:06:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 438391FB;
 Mon, 16 Dec 2019 04:06:21 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B82FC3F719;
 Mon, 16 Dec 2019 04:06:20 -0800 (PST)
Date: Mon, 16 Dec 2019 12:06:19 +0000
From: Mark Brown <broonie@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Applied "spi: atmel: Use dma_request_chan() instead
 dma_request_slave_channel()" to the spi tree
In-Reply-To: <20191212135550.4634-2-peter.ujfalusi@ti.com>
Message-Id: <applied-20191212135550.4634-2-peter.ujfalusi@ti.com>
X-Patchwork-Hint: ignore
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_040621_919135_38EFF5C0 
X-CRM114-Status: GOOD (  16.80  )
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

   spi: atmel: Use dma_request_chan() instead dma_request_slave_channel()

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

From d947c9d26c2381cc10067e76e71bf9ddb0fedb8b Mon Sep 17 00:00:00 2001
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Date: Thu, 12 Dec 2019 15:55:42 +0200
Subject: [PATCH] spi: atmel: Use dma_request_chan() instead
 dma_request_slave_channel()

dma_request_slave_channel() is a wrapper on top of dma_request_chan()
eating up the error code.

By using dma_request_chan() directly the driver can support deferred
probing against DMA.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
Link: https://lore.kernel.org/r/20191212135550.4634-2-peter.ujfalusi@ti.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-atmel.c | 29 +++++++++++------------------
 1 file changed, 11 insertions(+), 18 deletions(-)

diff --git a/drivers/spi/spi-atmel.c b/drivers/spi/spi-atmel.c
index 56f0ca361deb..013458cabe3c 100644
--- a/drivers/spi/spi-atmel.c
+++ b/drivers/spi/spi-atmel.c
@@ -514,26 +514,19 @@ static int atmel_spi_configure_dma(struct spi_master *master,
 	master->dma_tx = dma_request_chan(dev, "tx");
 	if (IS_ERR(master->dma_tx)) {
 		err = PTR_ERR(master->dma_tx);
-		if (err == -EPROBE_DEFER) {
-			dev_warn(dev, "no DMA channel available at the moment\n");
-			goto error_clear;
-		}
-		dev_err(dev,
-			"DMA TX channel not available, SPI unable to use DMA\n");
-		err = -EBUSY;
+		if (err != -EPROBE_DEFER)
+			dev_err(dev, "No TX DMA channel, DMA is disabled\n");
 		goto error_clear;
 	}
 
-	/*
-	 * No reason to check EPROBE_DEFER here since we have already requested
-	 * tx channel. If it fails here, it's for another reason.
-	 */
-	master->dma_rx = dma_request_slave_channel(dev, "rx");
-
-	if (!master->dma_rx) {
-		dev_err(dev,
-			"DMA RX channel not available, SPI unable to use DMA\n");
-		err = -EBUSY;
+	master->dma_rx = dma_request_chan(dev, "rx");
+	if (IS_ERR(master->dma_rx)) {
+		err = PTR_ERR(master->dma_rx);
+		/*
+		 * No reason to check EPROBE_DEFER here since we have already
+		 * requested tx channel.
+		 */
+		dev_err(dev, "No RX DMA channel, DMA is disabled\n");
 		goto error;
 	}
 
@@ -548,7 +541,7 @@ static int atmel_spi_configure_dma(struct spi_master *master,
 
 	return 0;
 error:
-	if (master->dma_rx)
+	if (!IS_ERR(master->dma_rx))
 		dma_release_channel(master->dma_rx);
 	if (!IS_ERR(master->dma_tx))
 		dma_release_channel(master->dma_tx);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
