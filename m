Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E31735CAF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 14:24:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=knaHAz2tqguB4ELuMI/dEFIEQrORSBwqFkxgVhQSiRY=; b=h1/s1RoL+QbRVL
	1/0A7TzwMdlbWw0q1shkdDhwoQ+2oLyZjLI9EMpUtySyLiD6vbHsxaGe0ODX0ruiBzk0TEIBkd4zD
	qz9Em+NZoMQD7ygs7PvRZmDQ5uqN+Gioh/xHz/8Lk1GyTVAsUeBoYMlEozyP4gG8br330Ilyz9ei+
	zoAyI1avtgGofwFA9fdjPlKCsDtC19v4QjSnSo+LiyHAgd2Tp7LG3Ml1OTzEoPy9iFzgyMZ76so8n
	7Xtq3Fdxe4BPx2odUs51sFBZ/gwml7cNq2jQEBjlB2XTCalS/iWsRtZ0MLXYveQioh7U44sh69p8/
	xd7RoezQyaJSuWqqs5Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYUxf-0001ud-CP; Wed, 05 Jun 2019 12:24:11 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYUxE-0001B3-HL; Wed, 05 Jun 2019 12:23:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6fTTdQwu0hTmfc/gRZvP74LRf50pztctby9MYxCNWug=; b=2uGBFj5H0DELEQxlBJNe0rtnK
 mEBK4py+UElhDXbDBy+EdL0pvaiBB9JIbfslB1gs+DkU1oNKWv6wsjGsiZ+h8F1pKPKZVTiyns6qK
 Dt9O9etyaYElh5AEjM/7PvXxKojDNGQFMaxqFZLVma82Sraau5O+eGZbpamOYfQjKu+shpGa0N82g
 WVOKZFuyftk6pG/5ito+LrtpTIGTJt1zAwYItY64bVSKorp31GScTZ7LBFGlFDFx5THfa/l20gasl
 McQHkMboN/mPv23+50ywicje7r9sq+TNrnyTxcziFvBYt8W6s/1GTdhurtqq6PesjqBjR3YnpkawP
 xZDC+Dh7g==;
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYULG-0005xW-7P; Wed, 05 Jun 2019 11:44:31 +0000
X-UUID: a5d2324fdd3848a3875f114c6bcd433c-20190605
X-UUID: a5d2324fdd3848a3875f114c6bcd433c-20190605
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <yongqiang.niu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 203346894; Wed, 05 Jun 2019 03:43:45 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 5 Jun 2019 04:43:44 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 5 Jun 2019 19:43:42 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 5 Jun 2019 19:43:41 +0800
From: <yongqiang.niu@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>, "Rob
 Herring" <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v3, 06/27] drm/mediatek: add mutex mod into ddp private data
Date: Wed, 5 Jun 2019 19:42:45 +0800
Message-ID: <1559734986-7379-7-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1559734986-7379-1-git-send-email-yongqiang.niu@mediatek.com>
References: <1559734986-7379-1-git-send-email-yongqiang.niu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_074430_394734_B15057C3 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
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
 Yongqiang Niu <yongqiang.niu@mediatek.com>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Yongqiang Niu <yongqiang.niu@mediatek.com>

except mutex mod, mutex mod reg,mutex sof reg,
and mutex sof id will be ddp private data

Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_ddp.c | 53 +++++++++++++++++++++++-----------
 1 file changed, 36 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
index 579ce28..ae94d44 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
@@ -41,12 +41,12 @@
 #define DISP_REG_CONFIG_DSI_SEL			0x050
 #define DISP_REG_CONFIG_DPI_SEL			0x064
 
-#define DISP_REG_MUTEX_EN(n)	(0x20 + 0x20 * (n))
-#define DISP_REG_MUTEX(n)	(0x24 + 0x20 * (n))
-#define DISP_REG_MUTEX_RST(n)	(0x28 + 0x20 * (n))
-#define DISP_REG_MUTEX_MOD(n)	(0x2c + 0x20 * (n))
-#define DISP_REG_MUTEX_SOF(n)	(0x30 + 0x20 * (n))
-#define DISP_REG_MUTEX_MOD2(n)	(0x34 + 0x20 * (n))
+#define DISP_REG_MUTEX_EN(n)			(0x20 + 0x20 * (n))
+#define DISP_REG_MUTEX(n)			(0x24 + 0x20 * (n))
+#define DISP_REG_MUTEX_RST(n)			(0x28 + 0x20 * (n))
+#define DISP_REG_MUTEX_MOD(n)			(0x2c + 0x20 * (n))
+#define DISP_REG_MUTEX_SOF(n)			(0x30 + 0x20 * (n))
+#define DISP_REG_MUTEX_MOD2(n)			(0x34 + 0x20 * (n))
 
 #define INT_MUTEX				BIT(1)
 
@@ -147,12 +147,16 @@ struct mtk_disp_mutex {
 	bool claimed;
 };
 
+struct mtk_ddp_data {
+	const unsigned int *mutex_mod;
+};
+
 struct mtk_ddp {
 	struct device			*dev;
 	struct clk			*clk;
 	void __iomem			*regs;
 	struct mtk_disp_mutex		mutex[10];
-	const unsigned int		*mutex_mod;
+	const struct mtk_ddp_data	*data;
 };
 
 static const unsigned int mt2701_mutex_mod[DDP_COMPONENT_ID_MAX] = {
@@ -202,6 +206,18 @@ struct mtk_ddp {
 	[DDP_COMPONENT_WDMA1] = MT8173_MUTEX_MOD_DISP_WDMA1,
 };
 
+static const struct mtk_ddp_data mt2701_ddp_driver_data = {
+	.mutex_mod = mt2701_mutex_mod,
+};
+
+static const struct mtk_ddp_data mt2712_ddp_driver_data = {
+	.mutex_mod = mt2712_mutex_mod,
+};
+
+static const struct mtk_ddp_data mt8173_ddp_driver_data = {
+	.mutex_mod = mt8173_mutex_mod,
+};
+
 static unsigned int mtk_ddp_mout_en(enum mtk_ddp_comp_id cur,
 				    enum mtk_ddp_comp_id next,
 				    unsigned int *addr)
@@ -464,15 +480,15 @@ void mtk_disp_mutex_add_comp(struct mtk_disp_mutex *mutex,
 		reg = MUTEX_SOF_DPI1;
 		break;
 	default:
-		if (ddp->mutex_mod[id] < 32) {
+		if (ddp->data->mutex_mod[id] < 32) {
 			offset = DISP_REG_MUTEX_MOD(mutex->id);
 			reg = readl_relaxed(ddp->regs + offset);
-			reg |= 1 << ddp->mutex_mod[id];
+			reg |= 1 << ddp->data->mutex_mod[id];
 			writel_relaxed(reg, ddp->regs + offset);
 		} else {
 			offset = DISP_REG_MUTEX_MOD2(mutex->id);
 			reg = readl_relaxed(ddp->regs + offset);
-			reg |= 1 << (ddp->mutex_mod[id] - 32);
+			reg |= 1 << (ddp->data->mutex_mod[id] - 32);
 			writel_relaxed(reg, ddp->regs + offset);
 		}
 		return;
@@ -502,15 +518,15 @@ void mtk_disp_mutex_remove_comp(struct mtk_disp_mutex *mutex,
 			       ddp->regs + DISP_REG_MUTEX_SOF(mutex->id));
 		break;
 	default:
-		if (ddp->mutex_mod[id] < 32) {
+		if (ddp->data->mutex_mod[id] < 32) {
 			offset = DISP_REG_MUTEX_MOD(mutex->id);
 			reg = readl_relaxed(ddp->regs + offset);
-			reg &= ~(1 << ddp->mutex_mod[id]);
+			reg &= ~(1 << ddp->data->mutex_mod[id]);
 			writel_relaxed(reg, ddp->regs + offset);
 		} else {
 			offset = DISP_REG_MUTEX_MOD2(mutex->id);
 			reg = readl_relaxed(ddp->regs + offset);
-			reg &= ~(1 << (ddp->mutex_mod[id] - 32));
+			reg &= ~(1 << (ddp->data->mutex_mod[id] - 32));
 			writel_relaxed(reg, ddp->regs + offset);
 		}
 		break;
@@ -585,7 +601,7 @@ static int mtk_ddp_probe(struct platform_device *pdev)
 		return PTR_ERR(ddp->regs);
 	}
 
-	ddp->mutex_mod = of_device_get_match_data(dev);
+	ddp->data = of_device_get_match_data(dev);
 
 	platform_set_drvdata(pdev, ddp);
 
@@ -598,9 +614,12 @@ static int mtk_ddp_remove(struct platform_device *pdev)
 }
 
 static const struct of_device_id ddp_driver_dt_match[] = {
-	{ .compatible = "mediatek,mt2701-disp-mutex", .data = mt2701_mutex_mod},
-	{ .compatible = "mediatek,mt2712-disp-mutex", .data = mt2712_mutex_mod},
-	{ .compatible = "mediatek,mt8173-disp-mutex", .data = mt8173_mutex_mod},
+	{ .compatible = "mediatek,mt2701-disp-mutex",
+	  .data = &mt2701_ddp_driver_data},
+	{ .compatible = "mediatek,mt2712-disp-mutex",
+	  .data = &mt2712_ddp_driver_data},
+	{ .compatible = "mediatek,mt8173-disp-mutex",
+	  .data = &mt8173_ddp_driver_data},
 	{},
 };
 MODULE_DEVICE_TABLE(of, ddp_driver_dt_match);
-- 
1.8.1.1.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
