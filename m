Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4FA0129C38
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 02:00:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BCznTftZy2DadWVxlKh/Jiv0CusHCY9njcVGxR1eJ7U=; b=jEtsdSPgxnt0zkITnwVtLGo2Ao
	/BcFzGP1l0gF9T0/qYyoOgIUTVKSAWRCBlkUJfoPxaZ/dnkCaXqn9j0hsfZGCe3+MEzM/eRWqp57n
	XHNZkoiL4qbXWIluoCMVBQuTBpnJtCVMaQp86ELy6GLdiX1i0mhrAsCzkB3qTUS1y4mLqrR4WVkLl
	YXaJ8jM7LOVvPa7E3feoJnH1nnDXsZs/+N8Y7OsLQOdieQbdkP74kHcKXI8qw3bWGn2c0KTJM87vV
	VfVacIMV6iahN7kE5ZI6USlz1/b6DCOi3yEYdgDyo863qbC/k8TK85x4JULUp/uhShxDkXxRObYIG
	mEwqa7Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijYYh-0003Wt-0t; Tue, 24 Dec 2019 01:00:23 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijYXD-0002HP-9u
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 00:58:54 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 24 Dec 2019 09:58:50 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id 78B7218008B;
 Tue, 24 Dec 2019 09:58:50 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Tue, 24 Dec 2019 09:59:40 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id EB3AA1A01CF;
 Tue, 24 Dec 2019 09:58:49 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Mark Brown <broonie@kernel.org>,
	linux-spi@vger.kernel.org
Subject: [PATCH 5/5] spi: uniphier: Add DMA transfer mode support
Date: Tue, 24 Dec 2019 09:58:27 +0900
Message-Id: <1577149107-30670-6-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1577149107-30670-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1577149107-30670-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_165851_679473_009BDCF4 
X-CRM114-Status: GOOD (  22.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
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
Cc: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>,
 Keiji Hayashibara <hayashibara.keiji@socionext.com>,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds DMA transfer mode support for UniPhier SPI controller.

Since this controller requires simulteaneous transmission and reception,
this indicates SPI_CONTROLLER_MUST_RX and SPI_CONTROLLER_MUST_TX.

Because the supported dma controller has alignment restiction,
there is also a restriction that 'maxburst' parameters in dma_slave_config
corresponds to one word width.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 drivers/spi/spi-uniphier.c | 200 ++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 198 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-uniphier.c b/drivers/spi/spi-uniphier.c
index caf0446..bf3af5b 100644
--- a/drivers/spi/spi-uniphier.c
+++ b/drivers/spi/spi-uniphier.c
@@ -8,6 +8,7 @@
 #include <linux/bitops.h>
 #include <linux/clk.h>
 #include <linux/delay.h>
+#include <linux/dmaengine.h>
 #include <linux/interrupt.h>
 #include <linux/io.h>
 #include <linux/module.h>
@@ -23,6 +24,7 @@
 
 struct uniphier_spi_priv {
 	void __iomem *base;
+	dma_addr_t base_dma_addr;
 	struct clk *clk;
 	struct spi_master *master;
 	struct completion xfer_done;
@@ -32,6 +34,7 @@ struct uniphier_spi_priv {
 	unsigned int rx_bytes;
 	const u8 *tx_buf;
 	u8 *rx_buf;
+	atomic_t dma_busy;
 
 	bool is_save_param;
 	u8 bits_per_word;
@@ -61,11 +64,16 @@ struct uniphier_spi_priv {
 #define   SSI_FPS_FSTRT		BIT(14)
 
 #define SSI_SR			0x14
+#define   SSI_SR_BUSY		BIT(7)
 #define   SSI_SR_RNE		BIT(0)
 
 #define SSI_IE			0x18
+#define   SSI_IE_TCIE		BIT(4)
 #define   SSI_IE_RCIE		BIT(3)
+#define   SSI_IE_TXRE		BIT(2)
+#define   SSI_IE_RXRE		BIT(1)
 #define   SSI_IE_RORIE		BIT(0)
+#define   SSI_IE_ALL_MASK	GENMASK(4, 0)
 
 #define SSI_IS			0x1c
 #define   SSI_IS_RXRS		BIT(9)
@@ -87,6 +95,10 @@ struct uniphier_spi_priv {
 #define SSI_RXDR		0x24
 
 #define SSI_FIFO_DEPTH		8U
+#define SSI_FIFO_BURST_NUM	1
+
+#define SSI_DMA_RX_BUSY		BIT(1)
+#define SSI_DMA_TX_BUSY		BIT(0)
 
 static inline unsigned int bytes_per_word(unsigned int bits)
 {
@@ -334,6 +346,128 @@ static void uniphier_spi_set_cs(struct spi_device *spi, bool enable)
 	writel(val, priv->base + SSI_FPS);
 }
 
+static bool uniphier_spi_can_dma(struct spi_master *master,
+				 struct spi_device *spi,
+				 struct spi_transfer *t)
+{
+	struct uniphier_spi_priv *priv = spi_master_get_devdata(master);
+	unsigned int bpw = bytes_per_word(priv->bits_per_word);
+
+	if ((!master->dma_tx && !master->dma_rx)
+	    || (!master->dma_tx && t->tx_buf)
+	    || (!master->dma_rx && t->rx_buf))
+		return false;
+
+	return DIV_ROUND_UP(t->len, bpw) > SSI_FIFO_DEPTH;
+}
+
+static void uniphier_spi_dma_rxcb(void *data)
+{
+	struct spi_master *master = data;
+	struct uniphier_spi_priv *priv = spi_master_get_devdata(master);
+	int state = atomic_fetch_andnot(SSI_DMA_RX_BUSY, &priv->dma_busy);
+
+	uniphier_spi_irq_disable(priv, SSI_IE_RXRE);
+
+	if (!(state & SSI_DMA_TX_BUSY))
+		spi_finalize_current_transfer(master);
+}
+
+static void uniphier_spi_dma_txcb(void *data)
+{
+	struct spi_master *master = data;
+	struct uniphier_spi_priv *priv = spi_master_get_devdata(master);
+	int state = atomic_fetch_andnot(SSI_DMA_TX_BUSY, &priv->dma_busy);
+
+	uniphier_spi_irq_disable(priv, SSI_IE_TXRE);
+
+	if (!(state & SSI_DMA_RX_BUSY))
+		spi_finalize_current_transfer(master);
+}
+
+static int uniphier_spi_transfer_one_dma(struct spi_master *master,
+					 struct spi_device *spi,
+					 struct spi_transfer *t)
+{
+	struct uniphier_spi_priv *priv = spi_master_get_devdata(master);
+	struct dma_async_tx_descriptor *rxdesc = NULL, *txdesc = NULL;
+	int buswidth;
+
+	atomic_set(&priv->dma_busy, 0);
+
+	uniphier_spi_set_fifo_threshold(priv, SSI_FIFO_BURST_NUM);
+
+	if (priv->bits_per_word <= 8)
+		buswidth = DMA_SLAVE_BUSWIDTH_1_BYTE;
+	else if (priv->bits_per_word <= 16)
+		buswidth = DMA_SLAVE_BUSWIDTH_2_BYTES;
+	else
+		buswidth = DMA_SLAVE_BUSWIDTH_4_BYTES;
+
+	if (priv->rx_buf) {
+		struct dma_slave_config rxconf = {
+			.direction = DMA_DEV_TO_MEM,
+			.src_addr = priv->base_dma_addr + SSI_RXDR,
+			.src_addr_width = buswidth,
+			.src_maxburst = SSI_FIFO_BURST_NUM,
+		};
+
+		dmaengine_slave_config(master->dma_rx, &rxconf);
+
+		rxdesc = dmaengine_prep_slave_sg(
+			master->dma_rx,
+			t->rx_sg.sgl, t->rx_sg.nents,
+			DMA_DEV_TO_MEM, DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
+		if (!rxdesc)
+			goto out_err_prep;
+
+		rxdesc->callback = uniphier_spi_dma_rxcb;
+		rxdesc->callback_param = master;
+
+		uniphier_spi_irq_enable(priv, SSI_IE_RXRE);
+		atomic_or(SSI_DMA_RX_BUSY, &priv->dma_busy);
+
+		dmaengine_submit(rxdesc);
+		dma_async_issue_pending(master->dma_rx);
+	}
+
+	if (priv->tx_buf) {
+		struct dma_slave_config txconf = {
+			.direction = DMA_MEM_TO_DEV,
+			.dst_addr = priv->base_dma_addr + SSI_TXDR,
+			.dst_addr_width = buswidth,
+			.dst_maxburst = SSI_FIFO_BURST_NUM,
+		};
+
+		dmaengine_slave_config(master->dma_tx, &txconf);
+
+		txdesc = dmaengine_prep_slave_sg(
+			master->dma_tx,
+			t->tx_sg.sgl, t->tx_sg.nents,
+			DMA_MEM_TO_DEV, DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
+		if (!txdesc)
+			goto out_err_prep;
+
+		txdesc->callback = uniphier_spi_dma_txcb;
+		txdesc->callback_param = master;
+
+		uniphier_spi_irq_enable(priv, SSI_IE_TXRE);
+		atomic_or(SSI_DMA_TX_BUSY, &priv->dma_busy);
+
+		dmaengine_submit(txdesc);
+		dma_async_issue_pending(master->dma_tx);
+	}
+
+	/* signal that we need to wait for completion */
+	return (priv->tx_buf || priv->rx_buf);
+
+out_err_prep:
+	if (rxdesc)
+		dmaengine_terminate_sync(master->dma_rx);
+
+	return -EINVAL;
+}
+
 static int uniphier_spi_transfer_one_irq(struct spi_master *master,
 					 struct spi_device *spi,
 					 struct spi_transfer *t)
@@ -395,6 +529,7 @@ static int uniphier_spi_transfer_one(struct spi_master *master,
 {
 	struct uniphier_spi_priv *priv = spi_master_get_devdata(master);
 	unsigned long threshold;
+	bool use_dma;
 
 	/* Terminate and return success for 0 byte length transfer */
 	if (!t->len)
@@ -402,6 +537,10 @@ static int uniphier_spi_transfer_one(struct spi_master *master,
 
 	uniphier_spi_setup_transfer(spi, t);
 
+	use_dma = master->can_dma ? master->can_dma(master, spi, t) : false;
+	if (use_dma)
+		return uniphier_spi_transfer_one_dma(master, spi, t);
+
 	/*
 	 * If the transfer operation will take longer than
 	 * SSI_POLL_TIMEOUT_US, it should use irq.
@@ -445,7 +584,17 @@ static void uniphier_spi_handle_err(struct spi_master *master,
 	val = SSI_FC_TXFFL | SSI_FC_RXFFL;
 	writel(val, priv->base + SSI_FC);
 
-	uniphier_spi_irq_disable(priv, SSI_IE_RCIE | SSI_IE_RORIE);
+	uniphier_spi_irq_disable(priv, SSI_IE_ALL_MASK);
+
+	if (atomic_read(&priv->dma_busy) & SSI_DMA_TX_BUSY) {
+		dmaengine_terminate_async(master->dma_tx);
+		atomic_andnot(SSI_DMA_TX_BUSY, &priv->dma_busy);
+	}
+
+	if (atomic_read(&priv->dma_busy) & SSI_DMA_RX_BUSY) {
+		dmaengine_terminate_async(master->dma_rx);
+		atomic_andnot(SSI_DMA_RX_BUSY, &priv->dma_busy);
+	}
 }
 
 static irqreturn_t uniphier_spi_handler(int irq, void *dev_id)
@@ -493,6 +642,9 @@ static int uniphier_spi_probe(struct platform_device *pdev)
 {
 	struct uniphier_spi_priv *priv;
 	struct spi_master *master;
+	struct resource *res;
+	struct dma_slave_caps caps;
+	u32 dma_tx_burst = 0, dma_rx_burst = 0;
 	unsigned long clk_rate;
 	int irq;
 	int ret;
@@ -507,11 +659,13 @@ static int uniphier_spi_probe(struct platform_device *pdev)
 	priv->master = master;
 	priv->is_save_param = false;
 
-	priv->base = devm_platform_ioremap_resource(pdev, 0);
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	priv->base = devm_ioremap_resource(&pdev->dev, res);
 	if (IS_ERR(priv->base)) {
 		ret = PTR_ERR(priv->base);
 		goto out_master_put;
 	}
+	priv->base_dma_addr = res->start;
 
 	priv->clk = devm_clk_get(&pdev->dev, NULL);
 	if (IS_ERR(priv->clk)) {
@@ -556,7 +710,44 @@ static int uniphier_spi_probe(struct platform_device *pdev)
 	master->unprepare_transfer_hardware
 				= uniphier_spi_unprepare_transfer_hardware;
 	master->handle_err = uniphier_spi_handle_err;
+	master->can_dma = uniphier_spi_can_dma;
+
 	master->num_chipselect = 1;
+	master->flags = SPI_CONTROLLER_MUST_RX | SPI_CONTROLLER_MUST_TX;
+
+	master->dma_tx = dma_request_chan(&pdev->dev, "tx");
+	if (IS_ERR_OR_NULL(master->dma_tx)) {
+		if (PTR_ERR(master->dma_tx) == -EPROBE_DEFER)
+			goto out_disable_clk;
+		master->dma_tx = NULL;
+		dma_tx_burst = INT_MAX;
+	} else {
+		ret = dma_get_slave_caps(master->dma_tx, &caps);
+		if (ret) {
+			dev_err(&pdev->dev, "failed to get TX DMA capacities: %d\n",
+				ret);
+			goto out_disable_clk;
+		}
+		dma_tx_burst = caps.max_burst;
+	}
+
+	master->dma_rx = dma_request_chan(&pdev->dev, "rx");
+	if (IS_ERR_OR_NULL(master->dma_rx)) {
+		if (PTR_ERR(master->dma_rx) == -EPROBE_DEFER)
+			goto out_disable_clk;
+		master->dma_rx = NULL;
+		dma_rx_burst = INT_MAX;
+	} else {
+		ret = dma_get_slave_caps(master->dma_rx, &caps);
+		if (ret) {
+			dev_err(&pdev->dev, "failed to get RX DMA capacities: %d\n",
+				ret);
+			goto out_disable_clk;
+		}
+		dma_rx_burst = caps.max_burst;
+	}
+
+	master->max_dma_len = min(dma_tx_burst, dma_rx_burst);
 
 	ret = devm_spi_register_master(&pdev->dev, master);
 	if (ret)
@@ -576,6 +767,11 @@ static int uniphier_spi_remove(struct platform_device *pdev)
 {
 	struct uniphier_spi_priv *priv = platform_get_drvdata(pdev);
 
+	if (priv->master->dma_tx)
+		dma_release_channel(priv->master->dma_tx);
+	if (priv->master->dma_rx)
+		dma_release_channel(priv->master->dma_rx);
+
 	clk_disable_unprepare(priv->clk);
 
 	return 0;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
