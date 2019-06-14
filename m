Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C91B453F4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 07:26:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Rgze1Tns9hPOsfqf1Awg8G6PwuGI/UT7oBXUqwQKeoU=; b=eyWGPWJ9c1ALT5
	uFf5DEnX1/gkAsnyrG5oY9b8U/k9DPIqWHPIXZHfYBi9QX9xG/c5ZP+rnMbS6wqP3ICRBzyMHvean
	wE0OMh5yzrPesTdsXY/QMN4CXqt3xgCxC2lXkm3zE6JDZk4W41d8dFk5I6sOqg9iX2K05dxyNiq4O
	at81/ZtX9GMuFI7ihoqIOKVgEo0fHzf/ITSIGnge3VpZH3uMBD50X1IK3L+EdzHWXaT0NGOXZCjjh
	85Wc6s3WgiMSetiDNTbGgp3/5YKfsz66oqvkG1rABoiIXmg5xwNZJhogP7IIY5J7eUoVYiG+y0ywZ
	KZF7hh1uhS22x3W41AYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbejP-0000BP-VH; Fri, 14 Jun 2019 05:26:31 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbejG-0000Ab-BA; Fri, 14 Jun 2019 05:26:23 +0000
X-UUID: 7ac37d22751c419d99dbf2ec54d2d3f1-20190613
X-UUID: 7ac37d22751c419d99dbf2ec54d2d3f1-20190613
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <jjian.zhou@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1814298134; Thu, 13 Jun 2019 21:26:17 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 13 Jun 2019 22:26:16 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 14 Jun 2019 13:26:14 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 14 Jun 2019 13:26:14 +0800
From: Jjian Zhou <jjian.zhou@mediatek.com>
To: <ulf.hansson@linaro.org>, <chaotian.jing@mediatek.com>,
 <matthias.bgg@gmail.com>, <linux-mmc@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>, 
 <linux-kernel@vger.kernel.org>
Subject: [PATCH 1/2] mmc: mediatek: fix SDIO IRQ interrupt handle flow
Date: Fri, 14 Jun 2019 13:26:09 +0800
Message-ID: <1560489970-30467-1-git-send-email-jjian.zhou@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_222622_390230_D2BEE786 
X-CRM114-Status: UNSURE (   8.89  )
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
Cc: jjian zhou <jjian.zhou@mediatek.com>, srv_heupstream@mediatek.com,
 yong.mao@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: jjian zhou <jjian.zhou@mediatek.com>

SDIO IRQ is triggered by low level. It need disable SDIO IRQ
detected function. Otherwise the interrupt register can't be cleared.
It will process the interrupt more.

Signed-off-by: Jjian Zhou <jjian.zhou@mediatek.com>
Signed-off-by: Chaotian Jing <chaotian.jing@mediatek.com>
Signed-off-by: Yong Mao <yong.mao@mediatek.com>
---
 drivers/mmc/host/mtk-sd.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/mmc/host/mtk-sd.c b/drivers/mmc/host/mtk-sd.c
index c518cc2..29992ae 100644
--- a/drivers/mmc/host/mtk-sd.c
+++ b/drivers/mmc/host/mtk-sd.c
@@ -1389,10 +1389,12 @@ static void __msdc_enable_sdio_irq(struct mmc_host *mmc, int enb)
 	struct msdc_host *host = mmc_priv(mmc);

 	spin_lock_irqsave(&host->lock, flags);
-	if (enb)
+	if (enb) {
 		sdr_set_bits(host->base + MSDC_INTEN, MSDC_INTEN_SDIOIRQ);
-	else
+		sdr_set_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
+	} else {
 		sdr_clr_bits(host->base + MSDC_INTEN, MSDC_INTEN_SDIOIRQ);
+	}
 	spin_unlock_irqrestore(&host->lock, flags);
 }

@@ -1422,6 +1424,8 @@ static irqreturn_t msdc_irq(int irq, void *dev_id)
 		spin_lock_irqsave(&host->lock, flags);
 		events = readl(host->base + MSDC_INT);
 		event_mask = readl(host->base + MSDC_INTEN);
+		if ((events & event_mask) & MSDC_INT_SDIOIRQ)
+			sdr_clr_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
 		/* clear interrupts */
 		writel(events & event_mask, host->base + MSDC_INT);

@@ -1572,10 +1576,7 @@ static void msdc_init_hw(struct msdc_host *host)
 	sdr_set_bits(host->base + SDC_CFG, SDC_CFG_SDIO);

 	/* Config SDIO device detect interrupt function */
-	if (host->mmc->caps & MMC_CAP_SDIO_IRQ)
-		sdr_set_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
-	else
-		sdr_clr_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
+	sdr_clr_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);

 	/* Configure to default data timeout */
 	sdr_set_field(host->base + SDC_CFG, SDC_CFG_DTOC, 3);
--
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
