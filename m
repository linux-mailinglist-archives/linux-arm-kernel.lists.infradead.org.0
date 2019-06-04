Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 983B734415
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 12:15:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o2k9aZJsghNHT0AF5VZV34XsyXjdz7itSWMFiseAZso=; b=ExTT5BgBbQWMFw
	2FheFX1PVP9X/ucAwZFLDU6kgqBiUcLErGtFwaWjwLAJ2PO+j5hjBNuicUyrfktLf7CB3wgyDuTaR
	HHE4mRwtQG2oD4qrkOlzsSZicSwd451+jbXMC9mRixaIuJW1kpOwNVgBqOiS0lmP4QeZbOl4ae0xr
	IjtlhY4bw1D0y/kofoHIBH7f5S1y3HfUn5YJIP2QclOlrE/YdWtjuaYmWyh8vfVXjZSEJRIS9fe/+
	QC7vmYoZPE77rNl1gX9ggdwSwBa2CvTMaWbLBa5elsvkppXPTxZXwcdVAWxXZwlDrh4lQELJmLbP4
	oqKR5aXhxYal8TfAsWfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY6TP-0002Rr-34; Tue, 04 Jun 2019 10:15:19 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6SK-0000Zx-OR; Tue, 04 Jun 2019 10:14:38 +0000
X-UUID: 7740008535594c9b864c3448e06ffa3d-20190604
X-UUID: 7740008535594c9b864c3448e06ffa3d-20190604
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stu.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 516236433; Tue, 04 Jun 2019 02:12:03 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 03:12:02 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 18:12:00 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 4 Jun 2019 18:12:01 +0800
From: Stu Hsieh <stu.hsieh@mediatek.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, CK Hu <ck.hu@mediatek.com>
Subject: [PATCH v4 06/14] [media] mtk-mipicsi: enable/disable ana clk
Date: Tue, 4 Jun 2019 18:11:47 +0800
Message-ID: <1559643115-15124-7-git-send-email-stu.hsieh@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559643115-15124-1-git-send-email-stu.hsieh@mediatek.com>
References: <1559643115-15124-1-git-send-email-stu.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_031413_485830_7147D43F 
X-CRM114-Status: GOOD (  10.71  )
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
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Stu Hsieh <stu.hsieh@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch enable/disable ana clk when power on/off

Signed-off-by: Stu Hsieh <stu.hsieh@mediatek.com>
---
 .../media/platform/mtk-mipicsi/mtk_mipicsi.c  | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c b/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
index 28dcc683a958..f5cb29077022 100644
--- a/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
+++ b/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
@@ -182,6 +182,41 @@ static const struct mtk_format mtk_mipicsi_formats[] = {
 },
 };
 
+static void mtk_mipicsi_ana_clk_enable(void __iomem *base, bool enable)
+{
+	if (enable) {
+		writel(1UL | readl(base + MIPI_RX_ANA00_CSI),
+			base + MIPI_RX_ANA00_CSI);
+		writel(1UL | readl(base + MIPI_RX_ANA04_CSI),
+			base + MIPI_RX_ANA04_CSI);
+		writel(1UL | readl(base + MIPI_RX_ANA08_CSI),
+			base + MIPI_RX_ANA08_CSI);
+		writel(1UL | readl(base + MIPI_RX_ANA0C_CSI),
+			base + MIPI_RX_ANA0C_CSI);
+		writel(1UL | readl(base + MIPI_RX_ANA10_CSI),
+			base + MIPI_RX_ANA10_CSI);
+		writel(1UL | readl(base + MIPI_RX_ANA20_CSI),
+			base + MIPI_RX_ANA20_CSI);
+		writel(1UL | readl(base + MIPI_RX_ANA24_CSI),
+			base + MIPI_RX_ANA24_CSI);
+	} else {
+		writel(~1UL & readl(base + MIPI_RX_ANA00_CSI),
+			base + MIPI_RX_ANA00_CSI);
+		writel(~1UL & readl(base + MIPI_RX_ANA04_CSI),
+			base + MIPI_RX_ANA04_CSI);
+		writel(~1UL & readl(base + MIPI_RX_ANA08_CSI),
+			base + MIPI_RX_ANA08_CSI);
+		writel(~1UL & readl(base + MIPI_RX_ANA0C_CSI),
+			base + MIPI_RX_ANA0C_CSI);
+		writel(~1UL & readl(base + MIPI_RX_ANA10_CSI),
+			base + MIPI_RX_ANA10_CSI);
+		writel(~1UL & readl(base + MIPI_RX_ANA20_CSI),
+			base + MIPI_RX_ANA20_CSI);
+		writel(~1UL & readl(base + MIPI_RX_ANA24_CSI),
+			base + MIPI_RX_ANA24_CSI);
+	}
+}
+
 static void mtk_mipicsi_ana_init(void __iomem *base)
 {
 	writel(0xFEFBEFBEU & readl(base + MIPI_RX_ANA4C_CSI),
@@ -354,6 +389,8 @@ static void mipicsi_clk_enable(struct mtk_mipicsi_dev *mipicsi, bool enable)
 	for (i = 0; i < mipicsi->common_clk_num; i++)
 		enable ? clk_prepare_enable(mipicsi->common_clk[i]) :
 			 clk_disable_unprepare(mipicsi->common_clk[i]);
+
+	mtk_mipicsi_ana_clk_enable(mipicsi->ana, enable);
 }
 
 static int mtk_mipicsi_pm_suspend(struct device *dev)
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
