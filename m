Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C451448024
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 13:04:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/HJalkB7dFKSWPPCw2JfQSVKvcQDS64myP3laY0s0a8=; b=niGXuEPLBWSz/x
	sBa/Eq7FWkpbnWFkrySSjX9bwKEMYv0EGuEiQ2cCYg/Fj/oh2ul4Ql6zVjMU979wsVWDQEJ/9BHFo
	a9FPtbpB8O8ZPeOogN9D4/YMRZCKRhzJBqlrzvNvgRnTg77jgdpbgGDLpa9l0RoRGdngKf512+6Cs
	fUSrpIUee4eOuLu3rPm4TkEqNHllVWs02ItjdYikbH6oACCL6olJ3qddn8PcktEDylNtuCEfFKJ/G
	KzdFMhzPR5fjUfwwWPEsraDnxTYjwIlLU/iUfUjBXfmZdTC80/E76KonvtVnlVvBSFcXgYmsjmPuh
	leFRB9Vn87cCYFnN2YLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcpRE-0007gi-L4; Mon, 17 Jun 2019 11:04:36 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcpR2-0007aF-HR; Mon, 17 Jun 2019 11:04:26 +0000
X-UUID: eec233e2799c4a97b4db3699bf6591c2-20190617
X-UUID: eec233e2799c4a97b4db3699bf6591c2-20190617
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <jjian.zhou@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 328255288; Mon, 17 Jun 2019 03:04:16 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 17 Jun 2019 04:04:15 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 17 Jun 2019 19:04:13 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 17 Jun 2019 19:04:12 +0800
From: Jjian Zhou <jjian.zhou@mediatek.com>
To: <ulf.hansson@linaro.org>, <chaotian.jing@mediatek.com>,
 <matthias.bgg@gmail.com>, <linux-mmc@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>, 
 <linux-kernel@vger.kernel.org>
Subject: [PATCH V2 1/2] mmc: mediatek: fix SDIO IRQ interrupt handle flow
Date: Mon, 17 Jun 2019 19:04:07 +0800
Message-ID: <1560769448-23070-1-git-send-email-jjian.zhou@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_040424_586271_CCEA46EA 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
 drivers/mmc/host/mtk-sd.c | 37 ++++++++++++++++++++-----------------
 1 file changed, 20 insertions(+), 17 deletions(-)

diff --git a/drivers/mmc/host/mtk-sd.c b/drivers/mmc/host/mtk-sd.c
index c518cc2..fa7d420 100644
--- a/drivers/mmc/host/mtk-sd.c
+++ b/drivers/mmc/host/mtk-sd.c
@@ -1383,24 +1383,25 @@ static void msdc_request_timeout(struct work_struct *work)
 	}
 }

-static void __msdc_enable_sdio_irq(struct mmc_host *mmc, int enb)
+static void __msdc_enable_sdio_irq(struct msdc_host *host, int enb)
 {
-	unsigned long flags;
-	struct msdc_host *host = mmc_priv(mmc);
-
-	spin_lock_irqsave(&host->lock, flags);
-	if (enb)
+	if (enb) {
 		sdr_set_bits(host->base + MSDC_INTEN, MSDC_INTEN_SDIOIRQ);
-	else
+		sdr_set_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
+	} else {
 		sdr_clr_bits(host->base + MSDC_INTEN, MSDC_INTEN_SDIOIRQ);
-	spin_unlock_irqrestore(&host->lock, flags);
+		sdr_clr_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
+	}
 }

 static void msdc_enable_sdio_irq(struct mmc_host *mmc, int enb)
 {
+	unsigned long flags;
 	struct msdc_host *host = mmc_priv(mmc);

-	__msdc_enable_sdio_irq(mmc, enb);
+	spin_lock_irqsave(&host->lock, flags);
+	__msdc_enable_sdio_irq(host, enb);
+	spin_unlock_irqrestore(&host->lock, flags);

 	if (enb)
 		pm_runtime_get_noresume(host->dev);
@@ -1422,6 +1423,8 @@ static irqreturn_t msdc_irq(int irq, void *dev_id)
 		spin_lock_irqsave(&host->lock, flags);
 		events = readl(host->base + MSDC_INT);
 		event_mask = readl(host->base + MSDC_INTEN);
+		if ((events & event_mask) & MSDC_INT_SDIOIRQ)
+			__msdc_enable_sdio_irq(host, 0);
 		/* clear interrupts */
 		writel(events & event_mask, host->base + MSDC_INT);

@@ -1430,10 +1433,8 @@ static irqreturn_t msdc_irq(int irq, void *dev_id)
 		data = host->data;
 		spin_unlock_irqrestore(&host->lock, flags);

-		if ((events & event_mask) & MSDC_INT_SDIOIRQ) {
-			__msdc_enable_sdio_irq(host->mmc, 0);
+		if ((events & event_mask) & MSDC_INT_SDIOIRQ)
 			sdio_signal_irq(host->mmc);
-		}

 		if ((events & event_mask) & MSDC_INT_CDSC) {
 			if (host->internal_cd)
@@ -1572,10 +1573,7 @@ static void msdc_init_hw(struct msdc_host *host)
 	sdr_set_bits(host->base + SDC_CFG, SDC_CFG_SDIO);

 	/* Config SDIO device detect interrupt function */
-	if (host->mmc->caps & MMC_CAP_SDIO_IRQ)
-		sdr_set_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
-	else
-		sdr_clr_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
+	sdr_clr_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);

 	/* Configure to default data timeout */
 	sdr_set_field(host->base + SDC_CFG, SDC_CFG_DTOC, 3);
@@ -2103,7 +2101,12 @@ static void msdc_hw_reset(struct mmc_host *mmc)

 static void msdc_ack_sdio_irq(struct mmc_host *mmc)
 {
-	__msdc_enable_sdio_irq(mmc, 1);
+	unsigned long flags;
+	struct msdc_host *host = mmc_priv(mmc);
+
+	spin_lock_irqsave(&host->lock, flags);
+	__msdc_enable_sdio_irq(host, 1);
+	spin_unlock_irqrestore(&host->lock, flags);
 }

 static int msdc_get_cd(struct mmc_host *mmc)
--
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
