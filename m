Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4F41CA66C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 10:47:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oO5tIALekXmgCJMS+8FV+WPnlVk0LP6AjALeMh0Ui0k=; b=j+gT6pqbrg/GZC
	4kniBdVPRnP3vA7zNHrKdE7Qa6E/ez8yVouV7Miwgx8iP273pBMA4yXa/y2vhyHCgSBIU58lpSlas
	af5/uBd1FoZ4+1GOgl827voBopUDLWhAn6P0tA6bav3yBMat0PS8j1ej1kWSlAKIeqXVgljyaTXml
	oDPflCZnA35cux52dPIQeUhkKkTTdiKbHlDDnMHX9K2HzqK3RGdVzmIPnem3sSCW9PPfjdluQyQqH
	6PVoq4dULD2iX4mSJkQorLWeeLJzMTl+Yk7OLIzqjYjHzNvP+p05fKEtXfMFthX0a/LhKfc6oPz5L
	jxe8ke6Hzy7/9Lk4UKUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWyei-0000SQ-Dh; Fri, 08 May 2020 08:46:52 +0000
Received: from [27.111.83.178] (helo=mail.gtsys.com.hk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWyeJ-0008VK-UM; Fri, 08 May 2020 08:46:29 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.gtsys.com.hk (Postfix) with ESMTP id 90BD92002599;
 Fri,  8 May 2020 16:38:39 +0800 (HKT)
X-Virus-Scanned: Debian amavisd-new at gtsys.com.hk
Received: from mail.gtsys.com.hk ([127.0.0.1])
 by localhost (mail.gtsys.com.hk [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sYuJwQqgygTE; Fri,  8 May 2020 16:38:39 +0800 (HKT)
Received: from s01.gtsys.com.hk (unknown [10.128.4.2])
 by mail.gtsys.com.hk (Postfix) with ESMTP id 783632002518;
 Fri,  8 May 2020 16:38:39 +0800 (HKT)
Received: from armhf2.gtsys.com.hk (unknown [10.128.4.15])
 by s01.gtsys.com.hk (Postfix) with ESMTP id 74876C019F9;
 Fri,  8 May 2020 16:38:39 +0800 (HKT)
Received: by armhf2.gtsys.com.hk (Postfix, from userid 1000)
 id 70CD8201641; Fri,  8 May 2020 16:38:39 +0800 (HKT)
From: Chris Ruehl <chris.ruehl@gtsys.com.hk>
To: Chris Ruehl <chris.ruehl@gtsys.com.hk>,
	Jack Lo <jack.lo@gtsys.com.hk>
Subject: [PATCH v0 1/1] spi: spi-rockchip: add support for spi slave_mode
Date: Fri,  8 May 2020 16:37:29 +0800
Message-Id: <20200508083729.5560-2-chris.ruehl@gtsys.com.hk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200508083729.5560-1-chris.ruehl@gtsys.com.hk>
References: <20200508083729.5560-1-chris.ruehl@gtsys.com.hk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_014628_295720_26E410B8 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

This patch aim to add spi slave mode support to the rockchip driver.
Fix the wrong usage of num_cs set fix to ROCKCHIP_SPI_MAX_CS_NUM,
instead use max_native_cs flag to set the limit of native chip-select.
Enable use_gpio_descriptors to have cs_gpiod for gpio based chip-selects.

Signed-off-by: Chris Ruehl <chris.ruehl@gtsys.com.hk>
---
 drivers/spi/spi-rockchip.c | 46 +++++++++++++++++++++++++++++++++-----
 1 file changed, 41 insertions(+), 5 deletions(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 70ef63e0b6b8..9c1ff52c0f85 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -183,6 +183,9 @@ struct rockchip_spi {
 	u8 rsd;
 
 	bool cs_asserted[ROCKCHIP_SPI_MAX_CS_NUM];
+
+	bool slave_mode;
+	bool slave_abort;
 };
 
 static inline void spi_enable_chip(struct rockchip_spi *rs, bool enable)
@@ -359,7 +362,7 @@ static void rockchip_spi_dma_rxcb(void *data)
 	struct rockchip_spi *rs = spi_master_get_devdata(master);
 	int state = atomic_fetch_andnot(RXDMA, &rs->state);
 
-	if (state & TXDMA)
+	if (state & TXDMA && !rs->slave_abort)
 		return;
 
 	spi_enable_chip(rs, false);
@@ -372,7 +375,7 @@ static void rockchip_spi_dma_txcb(void *data)
 	struct rockchip_spi *rs = spi_master_get_devdata(master);
 	int state = atomic_fetch_andnot(TXDMA, &rs->state);
 
-	if (state & RXDMA)
+	if (state & RXDMA && !rs->slave_abort)
 		return;
 
 	/* Wait until the FIFO data completely. */
@@ -466,6 +469,10 @@ static void rockchip_spi_config(struct rockchip_spi *rs,
 	u32 cr1;
 	u32 dmacr = 0;
 
+	if (rs->slavemode)
+		cr0 |= CR0_OPM_SLAVE << CR0_OPM_OFFSET;
+	rs->slave_abort = false;
+
 	cr0 |= rs->rsd << CR0_RSD_OFFSET;
 	cr0 |= (spi->mode & 0x3U) << CR0_SCPH_OFFSET;
 	if (spi->mode & SPI_LSB_FIRST)
@@ -535,6 +542,16 @@ static size_t rockchip_spi_max_transfer_size(struct spi_device *spi)
 	return ROCKCHIP_SPI_MAX_TRANLEN;
 }
 
+static int rockchip_spi_slave_abort(struct spi_master *master)
+{
+	struct rockchip_spi *rs = spi_master_get_devdata(master);
+
+	rs->slave_abort = true;
+	complete(master);
+
+	return 0;
+}
+
 static int rockchip_spi_transfer_one(
 		struct spi_master *master,
 		struct spi_device *spi,
@@ -589,14 +606,25 @@ static int rockchip_spi_probe(struct platform_device *pdev)
 	struct spi_master *master;
 	struct resource *mem;
 	u32 rsd_nsecs;
+	bool slave_mode;
+	u32 num_cs = 1;
+
+	slave_mode = of_property_read_bool(np, "spi-slave");
+
+	if (slave_mode)
+		master = spi_alloc_slave(&pdev->dev,
+				sizeof(struct rockchip_spi));
+	else
+		master = spi_alloc_master(&pdev->dev,
+				sizeof(struct rockchip_spi));
 
-	master = spi_alloc_master(&pdev->dev, sizeof(struct rockchip_spi));
 	if (!master)
 		return -ENOMEM;
 
 	platform_set_drvdata(pdev, master);
 
 	rs = spi_master_get_devdata(master);
+	rs->slave_mode = slave_mode;
 
 	/* Get basic io resource and map it */
 	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
@@ -676,7 +704,16 @@ static int rockchip_spi_probe(struct platform_device *pdev)
 	master->auto_runtime_pm = true;
 	master->bus_num = pdev->id;
 	master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_LOOP | SPI_LSB_FIRST;
-	master->num_chipselect = ROCKCHIP_SPI_MAX_CS_NUM;
+	if (slave_mode) {
+		master->mode_bits |= SPI_NO_CS;
+		master->slave_abort = rockchip_spi_slave_abort;
+	} else {
+		of_property_read_u32(np, "num-cs", &num_cs);
+		master->num_chipselect = num_cs;
+		master->use_gpio_descriptors = true;
+		master->max_native_cs = ROCKCHIP_SPI_MAX_CS_NUM;
+		master->flags = SPI_MASTER_GPIO_SS;
+	}
 	master->dev.of_node = pdev->dev.of_node;
 	master->bits_per_word_mask = SPI_BPW_MASK(16) | SPI_BPW_MASK(8) | SPI_BPW_MASK(4);
 	master->min_speed_hz = rs->freq / BAUDR_SCKDV_MAX;
@@ -686,7 +723,6 @@ static int rockchip_spi_probe(struct platform_device *pdev)
 	master->transfer_one = rockchip_spi_transfer_one;
 	master->max_transfer_size = rockchip_spi_max_transfer_size;
 	master->handle_err = rockchip_spi_handle_err;
-	master->flags = SPI_MASTER_GPIO_SS;
 
 	master->dma_tx = dma_request_chan(rs->dev, "tx");
 	if (IS_ERR(master->dma_tx)) {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
