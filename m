Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9930E1C6B3C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 10:17:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ViTex369lqAHgP76GEQ/5rQ7F0njwkqzPaveRstLiNM=; b=cbTleEOoIloAVS
	gt7RivbJ48U0AZOOyVfmYJIlgt48P+mwEJwwJlwpLNDIoKnnlt5L+OCnCAU7qcX7IOAnh5aA7EZNz
	WU0yVs89IPbRhTNNbLc6zsIkhKZe8qKItignavLCTFcT1Ch/peJGaXnMWtdpqU3NezCm5ltpQzdAM
	Fu0z04fNH34UtXVKclYeDkHbfW3i9RvzYRK4ekTwa2AHiBEZHy+tkjiJE0YlNCXdjXTasEo/rpEhy
	wsylmENs4Mah1HB6qgC2ivOTJ8WnGhkjiE8zAzsK4U90ZCpJzkBxUcIrFrfyQxgSKrLNk5lH6Q659
	QVbxRsnNoyCYNPyxkuTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWFEm-0005Su-Mf; Wed, 06 May 2020 08:17:04 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWFDy-0004mJ-5v; Wed, 06 May 2020 08:16:16 +0000
X-UUID: 28d2b1be6094460ab80e4a8de29101a2-20200506
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=aXZUvouMFxyurZ2yu9YASdjDcHisyVRaedPl5pDsBXI=; 
 b=St5ukTdM9Bzu7ezRvNuUBVbdD4lP7Hi57yqRUBlBNIP9jv2c/1zYhN2jKsGFd+qwr4WpQO2EW0arkTqTlHYostgvipvo3Z1d1H3iqhLRj7tevP6NQodgNw14xSa9R1JiRjYSmFcHXUuZxHy+5YLd2wJJSVgrVtzQ2sce4BbuX+I=;
X-UUID: 28d2b1be6094460ab80e4a8de29101a2-20200506
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 588813765; Wed, 06 May 2020 00:16:08 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 6 May 2020 01:16:05 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 6 May 2020 16:16:05 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Wed, 6 May 2020 16:16:05 +0800
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Enric Balletbo Serra <eballetbo@gmail.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Nicolas Boichat <drinkcat@chromium.org>, "Rob
 Herring" <robh@kernel.org>, Sascha Hauer <kernel@pengutronix.de>
Subject: [PATCH v14 07/11] soc: mediatek: Add extra sram control
Date: Wed, 6 May 2020 16:15:59 +0800
Message-ID: <1588752963-19934-8-git-send-email-weiyi.lu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1588752963-19934-1-git-send-email-weiyi.lu@mediatek.com>
References: <1588752963-19934-1-git-send-email-weiyi.lu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_011614_228209_C803947F 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: James Liao <jamesjj.liao@mediatek.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Fan Chen <fan.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For some power domains like vpu_core on MT8183 whose sram need to
do clock and internal isolation while power on/off sram.
We add a cap "MTK_SCPD_SRAM_ISO" to judge if we need to do
the extra sram isolation control or not.

Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
Reviewed-by: Nicolas Boichat <drinkcat@chromium.org>
---
 drivers/soc/mediatek/mtk-scpsys.c | 22 ++++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
index f76beca..f1949a9 100644
--- a/drivers/soc/mediatek/mtk-scpsys.c
+++ b/drivers/soc/mediatek/mtk-scpsys.c
@@ -25,6 +25,7 @@
 
 #define MTK_SCPD_ACTIVE_WAKEUP		BIT(0)
 #define MTK_SCPD_FWAIT_SRAM		BIT(1)
+#define MTK_SCPD_SRAM_ISO		BIT(2)
 #define MTK_SCPD_CAPS(_scpd, _x)	((_scpd)->data->caps & (_x))
 
 #define SPM_VDE_PWR_CON			0x0210
@@ -56,6 +57,8 @@
 #define PWR_ON_BIT			BIT(2)
 #define PWR_ON_2ND_BIT			BIT(3)
 #define PWR_CLK_DIS_BIT			BIT(4)
+#define PWR_SRAM_CLKISO_BIT		BIT(5)
+#define PWR_SRAM_ISOINT_B_BIT		BIT(6)
 
 #define PWR_STATUS_CONN			BIT(1)
 #define PWR_STATUS_DISP			BIT(3)
@@ -290,6 +293,14 @@ static int scpsys_sram_enable(struct scp_domain *scpd, void __iomem *ctl_addr)
 			return ret;
 	}
 
+	if (MTK_SCPD_CAPS(scpd, MTK_SCPD_SRAM_ISO))	{
+		val = readl(ctl_addr) | PWR_SRAM_ISOINT_B_BIT;
+		writel(val, ctl_addr);
+		udelay(1);
+		val &= ~PWR_SRAM_CLKISO_BIT;
+		writel(val, ctl_addr);
+	}
+
 	return 0;
 }
 
@@ -299,8 +310,15 @@ static int scpsys_sram_disable(struct scp_domain *scpd, void __iomem *ctl_addr)
 	u32 pdn_ack = scpd->data->sram_pdn_ack_bits;
 	int tmp;
 
-	val = readl(ctl_addr);
-	val |= scpd->data->sram_pdn_bits;
+	if (MTK_SCPD_CAPS(scpd, MTK_SCPD_SRAM_ISO))	{
+		val = readl(ctl_addr) | PWR_SRAM_CLKISO_BIT;
+		writel(val, ctl_addr);
+		val &= ~PWR_SRAM_ISOINT_B_BIT;
+		writel(val, ctl_addr);
+		udelay(1);
+	}
+
+	val = readl(ctl_addr) | scpd->data->sram_pdn_bits;
 	writel(val, ctl_addr);
 
 	/* Either wait until SRAM_PDN_ACK all 1 or 0 */
-- 
1.8.1.1.dirty
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
