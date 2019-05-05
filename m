Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC1C5141BB
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 20:09:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9h6nkVFiuLoMjKKOeKOmB5065LGwa4X84k5g9Pmcu0g=; b=noDWSTiCJIhpGt
	LYy+GD31boXlucM/t6Y8tZQxJhSVCOggCkf5ptwizBAY0ItgZTc23SeN3cpEYjUR0sP2zoArFrBAo
	9lsyBzlyb8a4FEZHssc1u2q+kzNC/FKBtdm3rOwJt1aJtOxIMReO8mV+vn4qqvcI0fWB7LkzJj/2q
	vqjZv8zZ9iX4liQMsOZsL62FIUd0Z7gl3d/qoFUm+xlvjBPVZE+Y5r7BwRyyNXkHO+HvDfMOJv+QA
	phLxsQ2sXUezLIDGXi01cf0WI8RZi5kVNQyL5JUgmntgcf7Y/5F2+BiO2kv9D58dt4Wecm5lu+Wf2
	aaRG98UtE3E0CvQYrdng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNLa9-0001KF-NK; Sun, 05 May 2019 18:09:49 +0000
Received: from mail-sender220.upb.ro ([141.85.13.220] helo=mx.upb.ro)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNLZh-0000tO-Ca
 for linux-arm-kernel@lists.infradead.org; Sun, 05 May 2019 18:09:23 +0000
Received: from localhost (localhost [127.0.0.1])
 by mx.upb.ro (Postfix) with ESMTP id 6E2C9B561841;
 Sun,  5 May 2019 21:09:10 +0300 (EEST)
Received: from mx.upb.ro ([127.0.0.1])
 by localhost (mx.upb.ro [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id VbvKtxzigSRp; Sun,  5 May 2019 21:09:07 +0300 (EEST)
Received: from localhost (localhost [127.0.0.1])
 by mx.upb.ro (Postfix) with ESMTP id A1090B5618E0;
 Sun,  5 May 2019 21:09:07 +0300 (EEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mx.upb.ro A1090B5618E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=upb.ro;
 s=96342B8A-77E4-11E5-BA93-D93D0963A2DF; t=1557079747;
 bh=fa/Uw+TH7Dys4ucAfhkgR9XpBJAtHQD6KzB/29iVK5w=;
 h=From:To:Date:Message-Id:MIME-Version;
 b=IBuBghFUEC/lfkGYn0RKGSE9ip6rGkzYNLXdok8MwlVAFjS84Y0oQdQS0prVET4dY
 YVhF66sZapdtisBv9NHC6OHhTjga8rv/zA1PGdfU6qBfFZ/f4lOQndMyXN6isFUEYt
 w2ytmn+Qb5yoyQIMJkuHCgyd1b4PCXy3+2obqv9E=
X-Virus-Scanned: amavisd-new at upb.ro
Received: from mx.upb.ro ([127.0.0.1])
 by localhost (mx.upb.ro [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id x8YMQAZRd6IB; Sun,  5 May 2019 21:09:07 +0300 (EEST)
Received: from localhost.localdomain (unknown [188.25.87.154])
 by mx.upb.ro (Postfix) with ESMTPSA id 76453B5618E2;
 Sun,  5 May 2019 21:09:07 +0300 (EEST)
From: Radu Pirea <radu_nicolae.pirea@upb.ro>
To: Radu Pirea <radu_nicolae.pirea@upb.ro>,
 Richard Genoud <richard.genoud@gmail.com>,
 Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Mark Brown <broonie@kernel.org>
Subject: [PATCH v2 2/2] spi: at91-usart: add DMA support
Date: Sun,  5 May 2019 21:06:46 +0300
Message-Id: <20190505180646.1442-3-radu_nicolae.pirea@upb.ro>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190505180646.1442-1-radu_nicolae.pirea@upb.ro>
References: <20190505180646.1442-1-radu_nicolae.pirea@upb.ro>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_110921_765096_CDDB1E65 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 URIBL_DBL_MALWARE      Contains a malware URL listed in the Spamhaus
 DBL blocklist [URIs: upb.ro]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.85.13.220 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds support for DMA. Transfers are done with dma only if
they are longer than 16 bytes in order to achieve a better performance.
DMA setup introduces a little overhead and for transfers shorter than 16
bytes there is no performance improvement.

Signed-off-by: Radu Pirea <radu_nicolae.pirea@upb.ro>
---
 drivers/spi/spi-at91-usart.c | 221 ++++++++++++++++++++++++++++++++++-
 1 file changed, 219 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-at91-usart.c b/drivers/spi/spi-at91-usart.c
index a694d702e574..f3583bdd475b 100644
--- a/drivers/spi/spi-at91-usart.c
+++ b/drivers/spi/spi-at91-usart.c
@@ -8,9 +8,12 @@
 
 #include <linux/clk.h>
 #include <linux/delay.h>
+#include <linux/dmaengine.h>
+#include <linux/dma-direction.h>
 #include <linux/interrupt.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
+#include <linux/of_platform.h>
 #include <linux/of_gpio.h>
 #include <linux/pinctrl/consumer.h>
 #include <linux/platform_device.h>
@@ -59,6 +62,8 @@
 
 #define US_INIT \
 	(US_MR_SPI_MASTER | US_MR_CHRL | US_MR_CLKO | US_MR_WRDBT)
+#define US_DMA_MIN_BYTES       16
+#define US_DMA_TIMEOUT         (msecs_to_jiffies(1000))
 
 /* Register access macros */
 #define at91_usart_spi_readl(port, reg) \
@@ -72,14 +77,19 @@
 	writeb_relaxed((value), (port)->regs + US_##reg)
 
 struct at91_usart_spi {
+	struct platform_device  *mpdev;
 	struct spi_transfer	*current_transfer;
 	void __iomem		*regs;
 	struct device		*dev;
 	struct clk		*clk;
 
+	struct completion	xfer_completion;
+
 	/*used in interrupt to protect data reading*/
 	spinlock_t		lock;
 
+	phys_addr_t		phybase;
+
 	int			irq;
 	unsigned int		current_tx_remaining_bytes;
 	unsigned int		current_rx_remaining_bytes;
@@ -88,8 +98,182 @@ struct at91_usart_spi {
 	u32			status;
 
 	bool			xfer_failed;
+	bool			use_dma;
 };
 
+static void dma_callback(void *data)
+{
+	struct spi_controller   *ctlr = data;
+	struct at91_usart_spi   *aus = spi_master_get_devdata(ctlr);
+
+	at91_usart_spi_writel(aus, IER, US_IR_RXRDY);
+	aus->current_rx_remaining_bytes = 0;
+	complete(&aus->xfer_completion);
+}
+
+static bool at91_usart_spi_can_dma(struct spi_controller *ctrl,
+				   struct spi_device *spi,
+				   struct spi_transfer *xfer)
+{
+	struct at91_usart_spi *aus = spi_master_get_devdata(ctrl);
+
+	return aus->use_dma && xfer->len >= US_DMA_MIN_BYTES;
+}
+
+static int at91_usart_spi_configure_dma(struct spi_controller *ctlr,
+					struct at91_usart_spi *aus)
+{
+	struct dma_slave_config slave_config;
+	struct device *dev = &aus->mpdev->dev;
+	phys_addr_t phybase = aus->phybase;
+	dma_cap_mask_t mask;
+	int err = 0;
+
+	dma_cap_zero(mask);
+	dma_cap_set(DMA_SLAVE, mask);
+
+	ctlr->dma_tx = dma_request_slave_channel_reason(dev, "tx");
+	if (IS_ERR_OR_NULL(ctlr->dma_tx)) {
+		if (IS_ERR(ctlr->dma_tx)) {
+			err = PTR_ERR(ctlr->dma_tx);
+			goto at91_usart_spi_error_clear;
+		}
+
+		dev_dbg(dev,
+			"DMA TX channel not available, SPI unable to use DMA\n");
+		err = -EBUSY;
+		goto at91_usart_spi_error_clear;
+	}
+
+	ctlr->dma_rx = dma_request_slave_channel_reason(dev, "rx");
+	if (IS_ERR_OR_NULL(ctlr->dma_rx)) {
+		if (IS_ERR(ctlr->dma_rx)) {
+			err = PTR_ERR(ctlr->dma_rx);
+			goto at91_usart_spi_error;
+		}
+
+		dev_dbg(dev,
+			"DMA RX channel not available, SPI unable to use DMA\n");
+		err = -EBUSY;
+		goto at91_usart_spi_error;
+	}
+
+	slave_config.dst_addr_width = DMA_SLAVE_BUSWIDTH_1_BYTE;
+	slave_config.src_addr_width = DMA_SLAVE_BUSWIDTH_1_BYTE;
+	slave_config.dst_addr = (dma_addr_t)phybase + US_THR;
+	slave_config.src_addr = (dma_addr_t)phybase + US_RHR;
+	slave_config.src_maxburst = 1;
+	slave_config.dst_maxburst = 1;
+	slave_config.device_fc = false;
+
+	slave_config.direction = DMA_DEV_TO_MEM;
+	if (dmaengine_slave_config(ctlr->dma_rx, &slave_config)) {
+		dev_err(&ctlr->dev,
+			"failed to configure rx dma channel\n");
+		err = -EINVAL;
+		goto at91_usart_spi_error;
+	}
+
+	slave_config.direction = DMA_MEM_TO_DEV;
+	if (dmaengine_slave_config(ctlr->dma_tx, &slave_config)) {
+		dev_err(&ctlr->dev,
+			"failed to configure tx dma channel\n");
+		err = -EINVAL;
+		goto at91_usart_spi_error;
+	}
+
+	aus->use_dma = true;
+	return 0;
+
+at91_usart_spi_error:
+	if (!IS_ERR_OR_NULL(ctlr->dma_tx))
+		dma_release_channel(ctlr->dma_tx);
+	if (!IS_ERR_OR_NULL(ctlr->dma_rx))
+		dma_release_channel(ctlr->dma_rx);
+	ctlr->dma_tx = NULL;
+	ctlr->dma_rx = NULL;
+
+at91_usart_spi_error_clear:
+	return err;
+}
+
+static void at91_usart_spi_release_dma(struct spi_controller *ctlr)
+{
+	if (ctlr->dma_rx)
+		dma_release_channel(ctlr->dma_rx);
+	if (ctlr->dma_tx)
+		dma_release_channel(ctlr->dma_tx);
+}
+
+static void at91_usart_spi_stop_dma(struct spi_controller *ctlr)
+{
+	if (ctlr->dma_rx)
+		dmaengine_terminate_all(ctlr->dma_rx);
+	if (ctlr->dma_tx)
+		dmaengine_terminate_all(ctlr->dma_tx);
+}
+
+static int at91_usart_spi_dma_transfer(struct spi_controller *ctlr,
+				       struct spi_transfer *xfer)
+{
+	struct at91_usart_spi *aus = spi_master_get_devdata(ctlr);
+	struct dma_chan	 *rxchan = ctlr->dma_rx;
+	struct dma_chan *txchan = ctlr->dma_tx;
+	struct dma_async_tx_descriptor *rxdesc;
+	struct dma_async_tx_descriptor *txdesc;
+	dma_cookie_t cookie;
+
+	/* Disable RX interrupt */
+	at91_usart_spi_writel(aus, IDR, US_IR_RXRDY);
+
+	rxdesc = dmaengine_prep_slave_sg(rxchan,
+					 xfer->rx_sg.sgl,
+					 xfer->rx_sg.nents,
+					 DMA_DEV_TO_MEM,
+					 DMA_PREP_INTERRUPT |
+					 DMA_CTRL_ACK);
+	if (!rxdesc)
+		goto at91_usart_spi_err_dma;
+
+	txdesc = dmaengine_prep_slave_sg(txchan,
+					 xfer->tx_sg.sgl,
+					 xfer->tx_sg.nents,
+					 DMA_MEM_TO_DEV,
+					 DMA_PREP_INTERRUPT |
+					 DMA_CTRL_ACK);
+	if (!txdesc)
+		goto at91_usart_spi_err_dma;
+
+	rxdesc->callback = dma_callback;
+	rxdesc->callback_param = ctlr;
+
+	cookie = rxdesc->tx_submit(rxdesc);
+	if (dma_submit_error(cookie))
+		goto at91_usart_spi_err_dma;
+
+	cookie = txdesc->tx_submit(txdesc);
+	if (dma_submit_error(cookie))
+		goto at91_usart_spi_err_dma;
+
+	rxchan->device->device_issue_pending(rxchan);
+	txchan->device->device_issue_pending(txchan);
+
+	return 0;
+
+at91_usart_spi_err_dma:
+	/* Enable RX interrupt if something fails and fallback to PIO */
+	at91_usart_spi_writel(aus, IER, US_IR_RXRDY);
+	at91_usart_spi_stop_dma(ctlr);
+
+	return -ENOMEM;
+}
+
+static unsigned long at91_usart_spi_dma_timeout(struct at91_usart_spi *aus)
+{
+	return wait_for_completion_timeout(&aus->xfer_completion,
+					   US_DMA_TIMEOUT);
+}
+
 static inline u32 at91_usart_spi_tx_ready(struct at91_usart_spi *aus)
 {
 	return aus->status & US_IR_TXRDY;
@@ -222,6 +406,8 @@ static int at91_usart_spi_transfer_one(struct spi_controller *ctlr,
 				       struct spi_transfer *xfer)
 {
 	struct at91_usart_spi *aus = spi_master_get_devdata(ctlr);
+	unsigned long dma_timeout = 0;
+	int ret = 0;
 
 	at91_usart_spi_set_xfer_speed(aus, xfer);
 	aus->xfer_failed = false;
@@ -231,8 +417,25 @@ static int at91_usart_spi_transfer_one(struct spi_controller *ctlr,
 
 	while ((aus->current_tx_remaining_bytes ||
 		aus->current_rx_remaining_bytes) && !aus->xfer_failed) {
-		at91_usart_spi_read_status(aus);
-		at91_usart_spi_tx(aus);
+		reinit_completion(&aus->xfer_completion);
+		if (at91_usart_spi_can_dma(ctlr, spi, xfer) &&
+		    !ret) {
+			ret = at91_usart_spi_dma_transfer(ctlr, xfer);
+			if (ret)
+				continue;
+
+			dma_timeout = at91_usart_spi_dma_timeout(aus);
+
+			if (WARN_ON(dma_timeout == 0)) {
+				dev_err(&spi->dev, "DMA transfer timeout\n");
+				return -EIO;
+			}
+			aus->current_tx_remaining_bytes = 0;
+		} else {
+			at91_usart_spi_read_status(aus);
+			at91_usart_spi_tx(aus);
+		}
+
 		cpu_relax();
 	}
 
@@ -351,6 +554,7 @@ static int at91_usart_spi_probe(struct platform_device *pdev)
 	controller->transfer_one = at91_usart_spi_transfer_one;
 	controller->prepare_message = at91_usart_spi_prepare_message;
 	controller->unprepare_message = at91_usart_spi_unprepare_message;
+	controller->can_dma = at91_usart_spi_can_dma;
 	controller->cleanup = at91_usart_spi_cleanup;
 	controller->max_speed_hz = DIV_ROUND_UP(clk_get_rate(clk),
 						US_MIN_CLK_DIV);
@@ -382,7 +586,17 @@ static int at91_usart_spi_probe(struct platform_device *pdev)
 	aus->spi_clk = clk_get_rate(clk);
 	at91_usart_spi_init(aus);
 
+	aus->phybase = regs->start;
+
+	aus->mpdev = to_platform_device(pdev->dev.parent);
+
+	ret = at91_usart_spi_configure_dma(controller, aus);
+	if (ret)
+		goto at91_usart_fail_dma;
+
 	spin_lock_init(&aus->lock);
+	init_completion(&aus->xfer_completion);
+
 	ret = devm_spi_register_master(&pdev->dev, controller);
 	if (ret)
 		goto at91_usart_fail_register_master;
@@ -395,6 +609,8 @@ static int at91_usart_spi_probe(struct platform_device *pdev)
 	return 0;
 
 at91_usart_fail_register_master:
+	at91_usart_spi_release_dma(controller);
+at91_usart_fail_dma:
 	clk_disable_unprepare(clk);
 at91_usart_spi_probe_fail:
 	spi_master_put(controller);
@@ -459,6 +675,7 @@ static int at91_usart_spi_remove(struct platform_device *pdev)
 	struct spi_controller *ctlr = platform_get_drvdata(pdev);
 	struct at91_usart_spi *aus = spi_master_get_devdata(ctlr);
 
+	at91_usart_spi_release_dma(ctlr);
 	clk_disable_unprepare(aus->clk);
 
 	return 0;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
