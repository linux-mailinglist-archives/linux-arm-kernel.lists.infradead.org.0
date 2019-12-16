Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 713041204D8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 13:06:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=oT4cDtuxs1EzD9SLy+K4/L7gtuGTL1GH/Zs9i1X5JR4=; b=gPI
	0tlTkOChDHyROsgr/WASj7MUTDtwUGzxvNhx/ABesdoPVVKs7MeUk0qQaZ5U3dgp3LUTtc5l1g3yn
	8Lz5ZXuDvZLAU1eERyPYYjQLl+bGamcsO6eNOjkMJppaf7BsnpXp1UyN+SFMAhVoILtgpi+tEeF6x
	60LZA2f4urqgCGIauGFDARitDddw/tpR2R8Q4oxV91NpseV5lBP2kivHAA1NkfmC4Jflsh7ew1HBQ
	k1MC+nFIKDWQODRZkdfrxg5aP0kcRpMFwWZCkXABkidrNwnfMbxjBZ3Pc5QQihYgRdj39ywBICgLD
	fmkzid86VVFh7zH4zW9ARbr29zP2NPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igp97-0002pS-92; Mon, 16 Dec 2019 12:06:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igp8W-0002Z7-C9; Mon, 16 Dec 2019 12:06:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A947D1063;
 Mon, 16 Dec 2019 04:06:03 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E9F513F719;
 Mon, 16 Dec 2019 04:06:02 -0800 (PST)
Date: Mon, 16 Dec 2019 12:06:01 +0000
From: Mark Brown <broonie@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Applied "spi: stm32-qspi: Use dma_request_chan() instead
 dma_request_slave_channel()" to the spi tree
In-Reply-To: <20191212135550.4634-9-peter.ujfalusi@ti.com>
Message-Id: <applied-20191212135550.4634-9-peter.ujfalusi@ti.com>
X-Patchwork-Hint: ignore
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_040604_499763_24713643 
X-CRM114-Status: GOOD (  16.52  )
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

   spi: stm32-qspi: Use dma_request_chan() instead dma_request_slave_channel()

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

From 658606ff4cf680ca97380f6ed7295722b0e991b2 Mon Sep 17 00:00:00 2001
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Date: Thu, 12 Dec 2019 15:55:49 +0200
Subject: [PATCH] spi: stm32-qspi: Use dma_request_chan() instead
 dma_request_slave_channel()

dma_request_slave_channel() is a wrapper on top of dma_request_chan()
eating up the error code.

By using dma_request_chan() directly the driver can support deferred
probing against DMA.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
Link: https://lore.kernel.org/r/20191212135550.4634-9-peter.ujfalusi@ti.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-stm32-qspi.c | 30 ++++++++++++++++++++++++------
 1 file changed, 24 insertions(+), 6 deletions(-)

diff --git a/drivers/spi/spi-stm32-qspi.c b/drivers/spi/spi-stm32-qspi.c
index 4e726929bb4f..4ef569b47aa6 100644
--- a/drivers/spi/spi-stm32-qspi.c
+++ b/drivers/spi/spi-stm32-qspi.c
@@ -470,10 +470,11 @@ static int stm32_qspi_setup(struct spi_device *spi)
 	return 0;
 }
 
-static void stm32_qspi_dma_setup(struct stm32_qspi *qspi)
+static int stm32_qspi_dma_setup(struct stm32_qspi *qspi)
 {
 	struct dma_slave_config dma_cfg;
 	struct device *dev = qspi->dev;
+	int ret = 0;
 
 	memset(&dma_cfg, 0, sizeof(dma_cfg));
 
@@ -484,8 +485,13 @@ static void stm32_qspi_dma_setup(struct stm32_qspi *qspi)
 	dma_cfg.src_maxburst = 4;
 	dma_cfg.dst_maxburst = 4;
 
-	qspi->dma_chrx = dma_request_slave_channel(dev, "rx");
-	if (qspi->dma_chrx) {
+	qspi->dma_chrx = dma_request_chan(dev, "rx");
+	if (IS_ERR(qspi->dma_chrx)) {
+		ret = PTR_ERR(qspi->dma_chrx);
+		qspi->dma_chrx = NULL;
+		if (ret == -EPROBE_DEFER)
+			goto out;
+	} else {
 		if (dmaengine_slave_config(qspi->dma_chrx, &dma_cfg)) {
 			dev_err(dev, "dma rx config failed\n");
 			dma_release_channel(qspi->dma_chrx);
@@ -493,8 +499,11 @@ static void stm32_qspi_dma_setup(struct stm32_qspi *qspi)
 		}
 	}
 
-	qspi->dma_chtx = dma_request_slave_channel(dev, "tx");
-	if (qspi->dma_chtx) {
+	qspi->dma_chtx = dma_request_chan(dev, "tx");
+	if (IS_ERR(qspi->dma_chtx)) {
+		ret = PTR_ERR(qspi->dma_chtx);
+		qspi->dma_chtx = NULL;
+	} else {
 		if (dmaengine_slave_config(qspi->dma_chtx, &dma_cfg)) {
 			dev_err(dev, "dma tx config failed\n");
 			dma_release_channel(qspi->dma_chtx);
@@ -502,7 +511,13 @@ static void stm32_qspi_dma_setup(struct stm32_qspi *qspi)
 		}
 	}
 
+out:
 	init_completion(&qspi->dma_completion);
+
+	if (ret != -EPROBE_DEFER)
+		ret = 0;
+
+	return ret;
 }
 
 static void stm32_qspi_dma_free(struct stm32_qspi *qspi)
@@ -608,7 +623,10 @@ static int stm32_qspi_probe(struct platform_device *pdev)
 
 	qspi->dev = dev;
 	platform_set_drvdata(pdev, qspi);
-	stm32_qspi_dma_setup(qspi);
+	ret = stm32_qspi_dma_setup(qspi);
+	if (ret)
+		goto err;
+
 	mutex_init(&qspi->lock);
 
 	ctrl->mode_bits = SPI_RX_DUAL | SPI_RX_QUAD
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
