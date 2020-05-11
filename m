Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C811CD3F7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 10:31:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZBoxC2vgiJLQmLycLDR+FAr6cHeb9jj/xnxUopKPJi0=; b=B5/hL4V97WCWfW
	CFxqeReJabm7mw2IY/U7p/esyPnZqnZYuLPTFJ+EInJ1CUGG6//56spA1hrVKYpjUgM7aJTghH7tM
	R9oze9QxyfE9bIZpKxPtJ+92OrdOPiMYYpT1IVYF5qLuEFmEQeXCqA2OdmNeMKz7/5MkPRoUrc5tZ
	J5KfzEvnD+2drgKx8RFvm5xo/mVqZvEJkMdJBm9tfWuOYkkOjafdVFy4RA4N2BAHjJaU41ZXyJ1Xh
	2WuxfrxX362do7Gh1s2BDSquW5P4feDd3b/Bk8QSXD+4/djaAfxFn0oVeLikJ5b+eVuH6NaxB4Wym
	e1tXfEb142TrE7kD00xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY3qT-0000A4-9w; Mon, 11 May 2020 08:31:29 +0000
Received: from [27.111.83.178] (helo=mail.gtsys.com.hk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY3pn-00082X-4n; Mon, 11 May 2020 08:30:49 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.gtsys.com.hk (Postfix) with ESMTP id 9A6FA2005E70;
 Mon, 11 May 2020 16:30:41 +0800 (HKT)
X-Virus-Scanned: Debian amavisd-new at gtsys.com.hk
Received: from mail.gtsys.com.hk ([127.0.0.1])
 by localhost (mail.gtsys.com.hk [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AQdglLeM99ko; Mon, 11 May 2020 16:30:41 +0800 (HKT)
Received: from s01.gtsys.com.hk (unknown [10.128.4.2])
 by mail.gtsys.com.hk (Postfix) with ESMTP id 800B320020CB;
 Mon, 11 May 2020 16:30:41 +0800 (HKT)
Received: from armhf2.gtsys.com.hk (unknown [10.128.4.15])
 by s01.gtsys.com.hk (Postfix) with ESMTP id 7D911C01F94;
 Mon, 11 May 2020 16:30:41 +0800 (HKT)
Received: by armhf2.gtsys.com.hk (Postfix, from userid 1000)
 id 78F212001DE; Mon, 11 May 2020 16:30:41 +0800 (HKT)
From: Chris Ruehl <chris.ruehl@gtsys.com.hk>
To: Chris Ruehl <chris.ruehl@gtsys.com.hk>,
	Jack Lo <jack.lo@gtsys.com.hk>
Subject: [PATCH v1 2/3] spi: spi-rockchip: add support for spi slave mode
Date: Mon, 11 May 2020 16:30:21 +0800
Message-Id: <20200511083022.23678-3-chris.ruehl@gtsys.com.hk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200511083022.23678-1-chris.ruehl@gtsys.com.hk>
References: <20200511083022.23678-1-chris.ruehl@gtsys.com.hk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_013047_497904_F7225B1E 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for spi slave mode in spi-rockchip. The register map has an entry
for it. If spi-slave is set in dts, set this corresponding bit and add to
mode_bits the SPI_NO_CS, allow slave mode without explicit CS use.
Slave abort function had been added.

Signed-off-by: Chris Ruehl <chris.ruehl@gtsys.com.hk>
---
 drivers/spi/spi-rockchip.c | 44 ++++++++++++++++++++++++++++++++------
 1 file changed, 38 insertions(+), 6 deletions(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index c501d8a84414..f57a8faa6f31 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -183,6 +183,8 @@ struct rockchip_spi {
 	u8 rsd;
 
 	bool cs_asserted[ROCKCHIP_SPI_MAX_CS_NUM];
+
+	bool slave_abort;
 };
 
 static inline void spi_enable_chip(struct rockchip_spi *rs, bool enable)
@@ -359,7 +361,7 @@ static void rockchip_spi_dma_rxcb(void *data)
 	struct rockchip_spi *rs = spi_controller_get_devdata(ctlr);
 	int state = atomic_fetch_andnot(RXDMA, &rs->state);
 
-	if (state & TXDMA)
+	if (state & TXDMA && !rs->slave_abort)
 		return;
 
 	spi_enable_chip(rs, false);
@@ -372,7 +374,7 @@ static void rockchip_spi_dma_txcb(void *data)
 	struct rockchip_spi *rs = spi_controller_get_devdata(ctlr);
 	int state = atomic_fetch_andnot(TXDMA, &rs->state);
 
-	if (state & RXDMA)
+	if (state & RXDMA && !rs->slave_abort)
 		return;
 
 	/* Wait until the FIFO data completely. */
@@ -457,7 +459,7 @@ static int rockchip_spi_prepare_dma(struct rockchip_spi *rs,
 
 static void rockchip_spi_config(struct rockchip_spi *rs,
 		struct spi_device *spi, struct spi_transfer *xfer,
-		bool use_dma)
+		bool use_dma, bool slave_mode)
 {
 	u32 cr0 = CR0_FRF_SPI  << CR0_FRF_OFFSET
 	        | CR0_BHT_8BIT << CR0_BHT_OFFSET
@@ -466,6 +468,10 @@ static void rockchip_spi_config(struct rockchip_spi *rs,
 	u32 cr1;
 	u32 dmacr = 0;
 
+	if (slave_mode)
+		cr0 |= CR0_OPM_SLAVE << CR0_OPM_OFFSET;
+	rs->slave_abort = false;
+
 	cr0 |= rs->rsd << CR0_RSD_OFFSET;
 	cr0 |= (spi->mode & 0x3U) << CR0_SCPH_OFFSET;
 	if (spi->mode & SPI_LSB_FIRST)
@@ -535,6 +541,16 @@ static size_t rockchip_spi_max_transfer_size(struct spi_device *spi)
 	return ROCKCHIP_SPI_MAX_TRANLEN;
 }
 
+static int rockchip_spi_slave_abort(struct spi_controller *ctlr)
+{
+	struct rockchip_spi *rs = spi_controller_get_devdata(ctlr);
+
+	rs->slave_abort = true;
+	complete(&ctlr->xfer_completion);
+
+	return 0;
+}
+
 static int rockchip_spi_transfer_one(
 		struct spi_controller *ctlr,
 		struct spi_device *spi,
@@ -560,7 +576,7 @@ static int rockchip_spi_transfer_one(
 
 	use_dma = ctlr->can_dma ? ctlr->can_dma(ctlr, spi, xfer) : false;
 
-	rockchip_spi_config(rs, spi, xfer, use_dma);
+	rockchip_spi_config(rs, spi, xfer, use_dma, ctlr->slave);
 
 	if (use_dma)
 		return rockchip_spi_prepare_dma(rs, ctlr, xfer);
@@ -588,15 +604,26 @@ static int rockchip_spi_probe(struct platform_device *pdev)
 	struct rockchip_spi *rs;
 	struct spi_controller *ctlr;
 	struct resource *mem;
+	struct device_node *np = pdev->dev.of_node;
 	u32 rsd_nsecs;
+	bool slave_mode;
+
+	slave_mode = of_property_read_bool(np, "spi-slave");
+
+	if (slave_mode)
+		ctlr = spi_alloc_slave(&pdev->dev,
+				sizeof(struct rockchip_spi));
+	else
+		ctlr = spi_alloc_master(&pdev->dev,
+				sizeof(struct rockchip_spi));
 
-	ctlr = spi_alloc_master(&pdev->dev, sizeof(struct rockchip_spi));
 	if (!ctlr)
 		return -ENOMEM;
 
 	platform_set_drvdata(pdev, ctlr);
 
 	rs = spi_controller_get_devdata(ctlr);
+	ctlr->slave = slave_mode;
 
 	/* Get basic io resource and map it */
 	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
@@ -676,6 +703,12 @@ static int rockchip_spi_probe(struct platform_device *pdev)
 	ctlr->auto_runtime_pm = true;
 	ctlr->bus_num = pdev->id;
 	ctlr->mode_bits = SPI_CPOL | SPI_CPHA | SPI_LOOP | SPI_LSB_FIRST;
+	if (slave_mode) {
+		ctlr->mode_bits |= SPI_NO_CS;
+		ctlr->slave_abort = rockchip_spi_slave_abort;
+	} else {
+		ctlr->flags = SPI_MASTER_GPIO_SS;
+	}
 	ctlr->num_chipselect = ROCKCHIP_SPI_MAX_CS_NUM;
 	ctlr->dev.of_node = pdev->dev.of_node;
 	ctlr->bits_per_word_mask = SPI_BPW_MASK(16) | SPI_BPW_MASK(8) | SPI_BPW_MASK(4);
@@ -686,7 +719,6 @@ static int rockchip_spi_probe(struct platform_device *pdev)
 	ctlr->transfer_one = rockchip_spi_transfer_one;
 	ctlr->max_transfer_size = rockchip_spi_max_transfer_size;
 	ctlr->handle_err = rockchip_spi_handle_err;
-	ctlr->flags = SPI_MASTER_GPIO_SS;
 
 	ctlr->dma_tx = dma_request_chan(rs->dev, "tx");
 	if (IS_ERR(ctlr->dma_tx)) {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
