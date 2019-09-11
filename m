Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 643C5AF9BE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 12:00:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BmfGb9y712oEHP66lRuDGbWqtiEz7HPu5bnO76iZWro=; b=WmrxUjguoPoo9/
	SVo8WtvspsMiB43nQisdKZPtqXgiRHQ3kWUYbhAc4rTIlf6kS1pnQUXHnmwGDfAusfHAAvBA2yYne
	N987EO7cPjhLYlJZf8GBTeNPKhHraLsfocFn1cxze1N/VS0QpUbzcfzCHRHrg389ea6nocSNz4uK/
	XKgC5A11ljcHwLY+zr35e/lYr6F3zCOuz+lyurqbAfV/YZ4vZI9mF8tZ9eU1ugIgnwz9/kdTwsZR7
	ijalL1AT+t8PwOr0rRfxnkjbpRT7kbXlXBm3A0Gm6LXzgnnMB9nYgE4UbSJrd3M1E6LDwhlMl7a1v
	OiHF7uVdEvliPsOLkrBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7zQ1-0008E9-B8; Wed, 11 Sep 2019 10:00:09 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7zOw-0007IJ-1o; Wed, 11 Sep 2019 09:59:03 +0000
X-UUID: 3b51fcd7d4454dbc964278a3752eafba-20190911
X-UUID: 3b51fcd7d4454dbc964278a3752eafba-20190911
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <luhua.xu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1949908518; Wed, 11 Sep 2019 01:58:57 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Sep 2019 02:58:55 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Sep 2019 17:58:54 +0800
Received: from localhost.localdomain (10.15.20.246) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 11 Sep 2019 17:58:53 +0800
From: Luhua Xu <luhua.xu@mediatek.com>
To: Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>, "Mark
 Rutland" <mark.rutland@arm.com>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH 3/3] spi: mediatek: support large PA
Date: Wed, 11 Sep 2019 05:55:31 -0400
Message-ID: <1568195731-3239-4-git-send-email-luhua.xu@mediatek.com>
X-Mailer: git-send-email 2.6.4
In-Reply-To: <1568195731-3239-1-git-send-email-luhua.xu@mediatek.com>
References: <1568195731-3239-1-git-send-email-luhua.xu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_025902_270275_F723C14D 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-mediatek@lists.infradead.org, "luhua.xu" <luhua.xu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "luhua.xu" <luhua.xu@mediatek.com>

Add spi large PA(max=64G) support for DMA transfer.

Signed-off-by: luhua.xu <luhua.xu@mediatek.com>
---
 drivers/spi/spi-mt65xx.c | 44 +++++++++++++++++++++++++++++++++++++++-----
 1 file changed, 39 insertions(+), 5 deletions(-)

diff --git a/drivers/spi/spi-mt65xx.c b/drivers/spi/spi-mt65xx.c
index 3c73b71..ccc9bdb 100644
--- a/drivers/spi/spi-mt65xx.c
+++ b/drivers/spi/spi-mt65xx.c
@@ -17,6 +17,7 @@
 #include <linux/platform_data/spi-mt65xx.h>
 #include <linux/pm_runtime.h>
 #include <linux/spi/spi.h>
+#include <linux/dma-mapping.h>
 
 #define SPI_CFG0_REG                      0x0000
 #define SPI_CFG1_REG                      0x0004
@@ -28,6 +29,8 @@
 #define SPI_STATUS0_REG                   0x001c
 #define SPI_PAD_SEL_REG                   0x0024
 #define SPI_CFG2_REG                      0x0028
+#define SPI_TX_SRC_REG_64                 0x002c
+#define SPI_RX_DST_REG_64                 0x0030
 
 #define SPI_CFG0_SCK_HIGH_OFFSET          0
 #define SPI_CFG0_SCK_LOW_OFFSET           8
@@ -73,6 +76,10 @@
 
 #define MTK_SPI_MAX_FIFO_SIZE 32U
 #define MTK_SPI_PACKET_SIZE 1024
+#define MTK_SPI_32BITS_MASK  (0xffffffff)
+
+#define DMA_ADDR_EXT_BITS (36)
+#define DMA_ADDR_DEF_BITS (32)
 
 struct mtk_spi_compatible {
 	bool need_pad_sel;
@@ -80,6 +87,8 @@ struct mtk_spi_compatible {
 	bool must_tx;
 	/* some IC design adjust cfg register to enhance time accuracy */
 	bool enhance_timing;
+	/* some IC support DMA addr extension */
+	bool dma_ext;
 };
 
 struct mtk_spi {
@@ -106,6 +115,7 @@ static const struct mtk_spi_compatible mt6765_compat = {
 	.need_pad_sel = true,
 	.must_tx = true,
 	.enhance_timing = true,
+	.dma_ext = true,
 };
 
 static const struct mtk_spi_compatible mt7622_compat = {
@@ -380,10 +390,25 @@ static void mtk_spi_setup_dma_addr(struct spi_master *master,
 {
 	struct mtk_spi *mdata = spi_master_get_devdata(master);
 
-	if (mdata->tx_sgl)
-		writel(xfer->tx_dma, mdata->base + SPI_TX_SRC_REG);
-	if (mdata->rx_sgl)
-		writel(xfer->rx_dma, mdata->base + SPI_RX_DST_REG);
+	if (mdata->tx_sgl) {
+		writel((u32)(xfer->tx_dma & MTK_SPI_32BITS_MASK),
+		       mdata->base + SPI_TX_SRC_REG);
+#ifdef CONFIG_ARCH_DMA_ADDR_T_64BIT
+		if (mdata->dev_comp->dma_ext)
+			writel((u32)(xfer->tx_dma >> 32),
+			       mdata->base + SPI_TX_SRC_REG_64);
+#endif
+	}
+
+	if (mdata->rx_sgl) {
+		writel((u32)(xfer->rx_dma & MTK_SPI_32BITS_MASK),
+		       mdata->base + SPI_RX_DST_REG);
+#ifdef CONFIG_ARCH_DMA_ADDR_T_64BIT
+		if (mdata->dev_comp->dma_ext)
+			writel((u32)(xfer->rx_dma >> 32),
+			       mdata->base + SPI_RX_DST_REG_64);
+#endif
+	}
 }
 
 static int mtk_spi_fifo_transfer(struct spi_master *master,
@@ -595,7 +620,7 @@ static int mtk_spi_probe(struct platform_device *pdev)
 	struct mtk_spi *mdata;
 	const struct of_device_id *of_id;
 	struct resource *res;
-	int i, irq, ret;
+	int i, irq, ret, addr_bits;
 
 	master = spi_alloc_master(&pdev->dev, sizeof(*mdata));
 	if (!master) {
@@ -762,6 +787,15 @@ static int mtk_spi_probe(struct platform_device *pdev)
 		}
 	}
 
+	if (mdata->dev_comp->dma_ext)
+		addr_bits = DMA_ADDR_EXT_BITS;
+	else
+		addr_bits = DMA_ADDR_DEF_BITS;
+	ret = dma_set_mask(&pdev->dev, DMA_BIT_MASK(addr_bits));
+	if (ret)
+		dev_notice(&pdev->dev, "SPI dma_set_mask(%d) failed, ret:%d\n",
+			   addr_bits, ret);
+
 	return 0;
 
 err_disable_runtime_pm:
-- 
2.6.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
