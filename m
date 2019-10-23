Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4668E1AFD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 14:42:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8mnIfxFPRf79t05ERFn9y4LYaxxmGTWYkjLn80993PQ=; b=HnIFKn2Zik+RPJ
	t+0/id/4eirZWL2dZGp0i7QcXX9uTShLkLQc8YQ9T5UysCOV+lXU+jerUeB/jiGcVZBVXrsiihLAl
	ar2KInxPDGua87392Jmo6OyhOVgS/XFxHOa4CCxzPLmPWFwk7fsH8/WoE7tfb8/lg8B4j+v1WWIpw
	xxGGXtbVP7l/alojegFIRwDdNwtglwVkS5Mh0k6z3ToCWH2eUL1R0hvuq4aBK/QLivZvi4mCV+gCD
	J02LcGiYnM46Qbpmm/4gkrnDzoJEel4j/4RG5p8p3uVqY70gYyYywABCyud6ytyIY5b+wX0NqMoAe
	X1SRMxAH+nrg3uycfyOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNFyK-0007dW-1R; Wed, 23 Oct 2019 12:42:40 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNFy2-0007ar-9j; Wed, 23 Oct 2019 12:42:23 +0000
X-UUID: cfea1dc5a79d4532966154082742f831-20191023
X-UUID: cfea1dc5a79d4532966154082742f831-20191023
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <luhua.xu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1619795605; Wed, 23 Oct 2019 04:41:48 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 23 Oct 2019 05:42:13 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 23 Oct 2019 20:42:11 +0800
Received: from localhost.localdomain (10.15.20.246) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 23 Oct 2019 20:42:11 +0800
From: Luhua Xu <luhua.xu@mediatek.com>
To: Mark Brown <broonie@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH 1/1] spi: mediatek: add power control when set_cs
Date: Wed, 23 Oct 2019 08:38:42 -0400
Message-ID: <1571834322-1121-2-git-send-email-luhua.xu@mediatek.com>
X-Mailer: git-send-email 2.6.4
In-Reply-To: <1571834322-1121-1-git-send-email-luhua.xu@mediatek.com>
References: <1571834322-1121-1-git-send-email-luhua.xu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_054222_338296_2DD6C3E7 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, luhua.xu@mediatek.com,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "luhua.xu" <luhua.xu@mediatek.com>

Use runtime PM to power spi when set_cs
As set_cs may be called from interrupt context,
set runtime PM IRQ safe for spi.

Signed-off-by: luhua.xu <luhua.xu@mediatek.com>
---
 drivers/spi/spi-mt65xx.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/spi/spi-mt65xx.c b/drivers/spi/spi-mt65xx.c
index 6888a4d..039b67d 100644
--- a/drivers/spi/spi-mt65xx.c
+++ b/drivers/spi/spi-mt65xx.c
@@ -262,8 +262,16 @@ static int mtk_spi_prepare_message(struct spi_master *master,
 static void mtk_spi_set_cs(struct spi_device *spi, bool enable)
 {
 	u32 reg_val;
+	int ret;
 	struct mtk_spi *mdata = spi_master_get_devdata(spi->master);
 
+	ret = pm_runtime_get_sync(spi->master->dev.parent);
+	if (ret < 0) {
+		pm_runtime_put_noidle(spi->master->dev.parent);
+		dev_err(&spi->dev, "failed to power device(%d)\n", ret);
+		return;
+	}
+
 	reg_val = readl(mdata->base + SPI_CMD_REG);
 	if (!enable) {
 		reg_val |= SPI_CMD_PAUSE_EN;
@@ -274,6 +282,9 @@ static void mtk_spi_set_cs(struct spi_device *spi, bool enable)
 		mdata->state = MTK_SPI_IDLE;
 		mtk_spi_reset(mdata);
 	}
+
+	pm_runtime_mark_last_busy(spi->master->dev.parent);
+	pm_runtime_put_autosuspend(spi->master->dev.parent);
 }
 
 static void mtk_spi_prepare_transfer(struct spi_master *master,
@@ -749,6 +760,7 @@ static int mtk_spi_probe(struct platform_device *pdev)
 	clk_disable_unprepare(mdata->spi_clk);
 
 	pm_runtime_enable(&pdev->dev);
+	pm_runtime_irq_safe(&pdev->dev);
 
 	ret = devm_spi_register_master(&pdev->dev, master);
 	if (ret) {
-- 
2.6.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
