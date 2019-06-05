Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0A235589
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 05:07:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=A2jowLBA/3wCaa9eizeietJ4gyiF4TwyHcZyCUuf1SQ=; b=bICQtG4GxPPaKv
	gSi35nlQDPnjq5sOO/NqjFOwPq1zuDsLyw7kstsCSI8ZMwSCb1gGgSdKm7Mw/V2zypFsTShOULQG6
	alNXzetO1aieZFyv42IlVzl4/A1aldbCfRv0rIwxiUugfHSon6sWndVQ6wTYv3xUwMAMN55QC2fX3
	TqjhmzIMIbsc+YIk3kA7h7H6qJTTjqJwFczm540hF5mXRGaS7UOQOPndI/43SeNQaA9Dr4rUq1BnB
	giR9xNpMBZ3Hjt874/zJdgJ4CgPuJZKELLnLdunVrbpglRkHLcYnUwz6hWBudcrn5T7Bw7m3ex5gX
	gt7OzyVodlJfNckPr7VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYMH1-0007R5-Kd; Wed, 05 Jun 2019 03:07:35 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYMGv-0007QZ-0P; Wed, 05 Jun 2019 03:07:30 +0000
X-UUID: e59b73a029d9463fb00a2c0dfbf39250-20190604
X-UUID: e59b73a029d9463fb00a2c0dfbf39250-20190604
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <leilk.liu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1934652754; Tue, 04 Jun 2019 19:07:26 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 20:07:24 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 5 Jun 2019 11:07:21 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 5 Jun 2019 11:07:20 +0800
From: Leilk Liu <leilk.liu@mediatek.com>
To: Mark Brown <broonie@kernel.org>
Subject: [PATCH] spi: mediatek: add SPI_LSB_FIRST support
Date: Wed, 5 Jun 2019 11:07:04 +0800
Message-ID: <1559704024-5369-1-git-send-email-leilk.liu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_200729_059196_63DACFB5 
X-CRM114-Status: GOOD (  11.52  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Leilk Liu <leilk.liu@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, fparent@baylibre.com,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

this patch add SPI_LSB_FIRST feature support.

Signed-off-by: Leilk Liu <leilk.liu@mediatek.com>
---
 drivers/spi/spi-mt65xx.c                 |   15 ++++++---------
 include/linux/platform_data/spi-mt65xx.h |    2 --
 2 files changed, 6 insertions(+), 11 deletions(-)

diff --git a/drivers/spi/spi-mt65xx.c b/drivers/spi/spi-mt65xx.c
index 0cce6f0..7f4dc18 100644
--- a/drivers/spi/spi-mt65xx.c
+++ b/drivers/spi/spi-mt65xx.c
@@ -131,8 +131,6 @@ struct mtk_spi {
  * supplies it.
  */
 static const struct mtk_chip_config mtk_default_chip_info = {
-	.rx_mlsb = 1,
-	.tx_mlsb = 1,
 	.cs_pol = 0,
 	.sample_sel = 0,
 };
@@ -203,14 +201,13 @@ static int mtk_spi_prepare_message(struct spi_master *master,
 		reg_val &= ~SPI_CMD_CPOL;
 
 	/* set the mlsbx and mlsbtx */
-	if (chip_config->tx_mlsb)
-		reg_val |= SPI_CMD_TXMSBF;
-	else
+	if (spi->mode & SPI_LSB_FIRST) {
 		reg_val &= ~SPI_CMD_TXMSBF;
-	if (chip_config->rx_mlsb)
-		reg_val |= SPI_CMD_RXMSBF;
-	else
 		reg_val &= ~SPI_CMD_RXMSBF;
+	} else {
+		reg_val |= SPI_CMD_TXMSBF;
+		reg_val |= SPI_CMD_RXMSBF;
+	}
 
 	/* set the tx/rx endian */
 #ifdef __LITTLE_ENDIAN
@@ -607,7 +604,7 @@ static int mtk_spi_probe(struct platform_device *pdev)
 
 	master->auto_runtime_pm = true;
 	master->dev.of_node = pdev->dev.of_node;
-	master->mode_bits = SPI_CPOL | SPI_CPHA;
+	master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_LSB_FIRST;
 
 	master->set_cs = mtk_spi_set_cs;
 	master->prepare_message = mtk_spi_prepare_message;
diff --git a/include/linux/platform_data/spi-mt65xx.h b/include/linux/platform_data/spi-mt65xx.h
index ba4e4bb..8d5df58 100644
--- a/include/linux/platform_data/spi-mt65xx.h
+++ b/include/linux/platform_data/spi-mt65xx.h
@@ -14,8 +14,6 @@
 
 /* Board specific platform_data */
 struct mtk_chip_config {
-	u32 tx_mlsb;
-	u32 rx_mlsb;
 	u32 cs_pol;
 	u32 sample_sel;
 };
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
