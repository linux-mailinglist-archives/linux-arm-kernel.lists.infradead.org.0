Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD0A1204F3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 13:08:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=CYaWRb+UuE+Rn1CUvIB1J2r78DQg+t1GwSd+1qM2KZg=; b=X54
	9RH/X20vlmYQ0O2TckxQt4jj4E+TzJWNiDiKfBU9MkJFnVA0RVz+jvAzkAmpaUcKymaPJ+ZMa3Qt+
	SXtF10b+HkW8Mu115gf3k7xQ3REOHqN4NQgZXJMh9Y/qrdLr71QiUxIs1GrhhMQL+YQzyYe9RZDQi
	11nBbb/44qX5tpt+ijaEv5aRvrrEk5aqzqa5e3FDbj+MeoWvc5sQYReZw+DYLZePJgpl8DRovbFwj
	rTP2Dxuuu6QrpYarGufn860lZc0BJyLpKA+diwOYZrNtY2TDbCH3DD/xYJyuIqOC1Uor6wDpLoqbe
	bLdn8XjzcPkZUAvb3DHKeKYv9NVfEjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igpAO-0003wt-Mq; Mon, 16 Dec 2019 12:08:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igp8h-0002kG-L6; Mon, 16 Dec 2019 12:06:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 245E11FB;
 Mon, 16 Dec 2019 04:06:14 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 712433F719;
 Mon, 16 Dec 2019 04:06:13 -0800 (PST)
Date: Mon, 16 Dec 2019 12:06:12 +0000
From: Mark Brown <broonie@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Applied "spi: img-spfi: Use dma_request_chan() instead
 dma_request_slave_channel()" to the spi tree
In-Reply-To: <20191212135550.4634-5-peter.ujfalusi@ti.com>
Message-Id: <applied-20191212135550.4634-5-peter.ujfalusi@ti.com>
X-Patchwork-Hint: ignore
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_040615_940392_2BD9379D 
X-CRM114-Status: GOOD (  14.91  )
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

   spi: img-spfi: Use dma_request_chan() instead dma_request_slave_channel()

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

From 6bfbf4d0aa0c5ebfd4442e1200b21565703e90ed Mon Sep 17 00:00:00 2001
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Date: Thu, 12 Dec 2019 15:55:45 +0200
Subject: [PATCH] spi: img-spfi: Use dma_request_chan() instead
 dma_request_slave_channel()

dma_request_slave_channel() is a wrapper on top of dma_request_chan()
eating up the error code.

By using dma_request_chan() directly the driver can support deferred
probing against DMA.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
Link: https://lore.kernel.org/r/20191212135550.4634-5-peter.ujfalusi@ti.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-img-spfi.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-img-spfi.c b/drivers/spi/spi-img-spfi.c
index f4a8f470aecc..8543f5ed1099 100644
--- a/drivers/spi/spi-img-spfi.c
+++ b/drivers/spi/spi-img-spfi.c
@@ -666,8 +666,22 @@ static int img_spfi_probe(struct platform_device *pdev)
 	master->unprepare_message = img_spfi_unprepare;
 	master->handle_err = img_spfi_handle_err;
 
-	spfi->tx_ch = dma_request_slave_channel(spfi->dev, "tx");
-	spfi->rx_ch = dma_request_slave_channel(spfi->dev, "rx");
+	spfi->tx_ch = dma_request_chan(spfi->dev, "tx");
+	if (IS_ERR(spfi->tx_ch)) {
+		ret = PTR_ERR(spfi->tx_ch);
+		spfi->tx_ch = NULL;
+		if (ret == -EPROBE_DEFER)
+			goto disable_pm;
+	}
+
+	spfi->rx_ch = dma_request_chan(spfi->dev, "rx");
+	if (IS_ERR(spfi->rx_ch)) {
+		ret = PTR_ERR(spfi->rx_ch);
+		spfi->rx_ch = NULL;
+		if (ret == -EPROBE_DEFER)
+			goto disable_pm;
+	}
+
 	if (!spfi->tx_ch || !spfi->rx_ch) {
 		if (spfi->tx_ch)
 			dma_release_channel(spfi->tx_ch);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
