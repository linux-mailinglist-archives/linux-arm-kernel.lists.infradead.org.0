Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66155B1B04
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 11:43:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=i7Qg0SCVhkSEA4ozkhfPxwOJPRWFimkJses4ipQzeN0=; b=t9L
	HXDyn4s+I+j0tlsDQ6TZZty6/T+449M/+e8ZuURDrFYvtrYb5lzsqDMHXH0arAqe98ahMabpvjUhM
	Stbm6DpwuLzLz3I1zq2G93jEL9v6n24D7KrGzMB8JiqD9jzHRAiWhgJ7z1EXdVXjTnuqEE4lkuiYo
	2y0efMaRbOzrSlRQnj/Me5YlpzUXecuoJ2b1/PDMUglqvBXVNeYgKv1SHj1LJRCnaXXb+lq1wP1g+
	uBNB3r8G9Xl6TDNc7/t1oAijRoMg/015nK2GWfkY44CUcj9hZeU3s33khNMazuNMAYxbbLhZOxMET
	Q0gIxXJcvyDnAIlbv+DyPcPjE6y5SwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8i6v-0006zV-ES; Fri, 13 Sep 2019 09:43:25 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8i5y-0006T0-Fy; Fri, 13 Sep 2019 09:42:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=Y2nyFh14YMEnyzHluqS8zwEeujEegYic1dEcJ8C8QJQ=; b=trBf6msPhgvj
 Kuqi7p+Xf40XOmO/UXikYsiPYmBJBCQCb0jYRQ812BMhUBjeAABEMVAfvS9Pse9KRBXVe5XLS5FQH
 oUHWmABkQ86oX5t21SngvaTzbRKGxNPH4wuyozrM7bnFLUhV01aaWZn06/eKD7RX3HSwQXFCda9Bu
 ll698=;
Received: from 195-23-252-136.net.novis.pt ([195.23.252.136]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1i8i5u-0003TG-AS; Fri, 13 Sep 2019 09:42:22 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 888D0D00DD9; Fri, 13 Sep 2019 10:42:21 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: luhua.xu <luhua.xu@mediatek.com>
Subject: Applied "spi: mediatek: support large PA" to the spi tree
In-Reply-To: <1568195731-3239-4-git-send-email-luhua.xu@mediatek.com>
X-Patchwork-Hint: ignore
Message-Id: <20190913094221.888D0D00DD9@fitzroy.sirena.org.uk>
Date: Fri, 13 Sep 2019 10:42:21 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_024226_747534_FDEF2A22 
X-CRM114-Status: GOOD (  17.68  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-spi@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: mediatek: support large PA

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.4

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

From fdeae8f5a2e5eb3fcc9c295bfb28503c3abd4d6e Mon Sep 17 00:00:00 2001
From: "luhua.xu" <luhua.xu@mediatek.com>
Date: Wed, 11 Sep 2019 05:55:31 -0400
Subject: [PATCH] spi: mediatek: support large PA

Add spi large PA(max=64G) support for DMA transfer.

Signed-off-by: luhua.xu <luhua.xu@mediatek.com>
Link: https://lore.kernel.org/r/1568195731-3239-4-git-send-email-luhua.xu@mediatek.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-mt65xx.c | 44 +++++++++++++++++++++++++++++++++++-----
 1 file changed, 39 insertions(+), 5 deletions(-)

diff --git a/drivers/spi/spi-mt65xx.c b/drivers/spi/spi-mt65xx.c
index c70911e2a6e1..6888a4dcff6d 100644
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
@@ -761,6 +786,15 @@ static int mtk_spi_probe(struct platform_device *pdev)
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
