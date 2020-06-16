Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B401FA4E8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 02:10:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2hsc5TcJiyARPs5mCQkuDxo6j3Hv41DG/d6JB3ywcZg=; b=IrBev09SJSsyCB
	9SC3Z81ADC8TOWFTCAJt7aTiJas/cGRta/t5fAF/Ev0saJxn96VydKcd4tTX1hr4kmCaIlCUiQ4ti
	c8ReV0fW6yV48KbLX3u1yvGA3s5MyCITljzmVZsJTtVZU6cFWQOD6fKLPvUb4ZXWQtkMUsuReyHyC
	zcdJOR4A8Z/OiZzVK9KO2Bdd7Nlbrf1IEPeL7aPgL/Kdx99lhVAGUl84wumSkbNUtnCmYY09q+poo
	DA+eDoqLc7k8x71HgYBXIBUOFphPjA68VRrJ4AYSNr95bdCd81YI10rpw7G2Z2eqQNxLn6eeEuETz
	5vipz+j5wJa7rqVGjqJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkzB0-0000UK-0I; Tue, 16 Jun 2020 00:10:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkzAa-0000Hp-OP; Tue, 16 Jun 2020 00:09:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 457A531B;
 Mon, 15 Jun 2020 17:09:40 -0700 (PDT)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com
 [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B11E93F73C;
 Mon, 15 Jun 2020 17:09:38 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: broonie@kernel.org, nsaenzjulienne@suse.de, f.fainelli@gmail.com,
 rjui@broadcom.com, sbranden@broadcom.com
Subject: [PATCH 1/3] spi: bcm3835: Tidy up bcm2835_spi_reset_hw()
Date: Tue, 16 Jun 2020 01:09:27 +0100
Message-Id: <eca458ae1a0d3934d0627f90e25d294fefd4b13d.1592261248.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.23.0.dirty
In-Reply-To: <cover.1592261248.git.robin.murphy@arm.com>
References: <cover.1592261248.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_170940_838114_37489785 
X-CRM114-Status: GOOD (  13.17  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, lukas@wunner.de,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 kernel@martin.sperl.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It doesn't need a struct spi_controller, and every callsite has
already retrieved the appropriate struct bcm2835_spi, so just pass
that directly.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/spi/spi-bcm2835.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/spi/spi-bcm2835.c b/drivers/spi/spi-bcm2835.c
index 237bd306c268..524a91e52111 100644
--- a/drivers/spi/spi-bcm2835.c
+++ b/drivers/spi/spi-bcm2835.c
@@ -335,9 +335,8 @@ static inline void bcm2835_wr_fifo_blind(struct bcm2835_spi *bs, int count)
 	}
 }
 
-static void bcm2835_spi_reset_hw(struct spi_controller *ctlr)
+static void bcm2835_spi_reset_hw(struct bcm2835_spi *bs)
 {
-	struct bcm2835_spi *bs = spi_controller_get_devdata(ctlr);
 	u32 cs = bcm2835_rd(bs, BCM2835_SPI_CS);
 
 	/* Disable SPI interrupts and transfer */
@@ -386,7 +385,7 @@ static irqreturn_t bcm2835_spi_interrupt(int irq, void *dev_id)
 
 	if (!bs->rx_len) {
 		/* Transfer complete - reset SPI HW */
-		bcm2835_spi_reset_hw(ctlr);
+		bcm2835_spi_reset_hw(bs);
 		/* wake up the framework */
 		complete(&ctlr->xfer_completion);
 	}
@@ -607,7 +606,7 @@ static void bcm2835_spi_dma_rx_done(void *data)
 	bcm2835_spi_undo_prologue(bs);
 
 	/* reset fifo and HW */
-	bcm2835_spi_reset_hw(ctlr);
+	bcm2835_spi_reset_hw(bs);
 
 	/* and mark as completed */;
 	complete(&ctlr->xfer_completion);
@@ -641,7 +640,7 @@ static void bcm2835_spi_dma_tx_done(void *data)
 		dmaengine_terminate_async(ctlr->dma_rx);
 
 	bcm2835_spi_undo_prologue(bs);
-	bcm2835_spi_reset_hw(ctlr);
+	bcm2835_spi_reset_hw(bs);
 	complete(&ctlr->xfer_completion);
 }
 
@@ -825,14 +824,14 @@ static int bcm2835_spi_transfer_one_dma(struct spi_controller *ctlr,
 	if (!bs->rx_buf && !bs->tx_dma_active &&
 	    cmpxchg(&bs->rx_dma_active, true, false)) {
 		dmaengine_terminate_async(ctlr->dma_rx);
-		bcm2835_spi_reset_hw(ctlr);
+		bcm2835_spi_reset_hw(bs);
 	}
 
 	/* wait for wakeup in framework */
 	return 1;
 
 err_reset_hw:
-	bcm2835_spi_reset_hw(ctlr);
+	bcm2835_spi_reset_hw(bs);
 	bcm2835_spi_undo_prologue(bs);
 	return ret;
 }
@@ -1074,7 +1073,7 @@ static int bcm2835_spi_transfer_one_poll(struct spi_controller *ctlr,
 	}
 
 	/* Transfer complete - reset SPI HW */
-	bcm2835_spi_reset_hw(ctlr);
+	bcm2835_spi_reset_hw(bs);
 	/* and return without waiting for completion */
 	return 0;
 }
@@ -1182,7 +1181,7 @@ static void bcm2835_spi_handle_err(struct spi_controller *ctlr,
 	bcm2835_spi_undo_prologue(bs);
 
 	/* and reset */
-	bcm2835_spi_reset_hw(ctlr);
+	bcm2835_spi_reset_hw(bs);
 }
 
 static int chip_match_name(struct gpio_chip *chip, void *data)
-- 
2.23.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
