Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F8CA1E3E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 17:03:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QFrk4wvDvQZ28yDONFua8HQXCiqmxXdPRj8R+5oRq8I=; b=p4Ck1cZCyXI4ZW
	Hud5Yes5maWCuQ8XWmXqR+rFNJf4XGXp2G+hg7xH051nxobU/RD5HYTPH9EP2oKo/Ncx3odgrcJdw
	r2ut7Iw21DOEX8QzLy1+kohtmJl8IlZDbW4GeR9zUPmuaxfl7+Pqr5YIoyD+2aI5PM1ICGparRB+I
	dmTDWKdXhF6dLo1Jn3XFpuRJDkQmyzGY6MpKhX6EhfrqJ8eAEofNfwcuXWtoAOJk/xoW8ifP64oaX
	qfNt3kCmFLFoOuLy933+iij92uI0sA2tioolGtdhPPiLvCrElmFFDbygnlJI28Hhq67lOCB48lO72
	dCtQRXVcrk57U+GLIygQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Lx3-0003x3-Qe; Thu, 29 Aug 2019 15:03:05 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Lli-0005jT-Dz; Thu, 29 Aug 2019 14:51:24 +0000
X-UUID: 4bd0617dae4e43f28c3f84bd2a35e759-20190829
X-UUID: 4bd0617dae4e43f28c3f84bd2a35e759-20190829
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <yongqiang.niu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1699262353; Thu, 29 Aug 2019 06:51:21 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 07:51:20 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 22:51:15 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 29 Aug 2019 22:51:14 +0800
From: <yongqiang.niu@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>, "Rob
 Herring" <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v5, 09/32] drm/mediatek: add mutex sof into ddp private data
Date: Thu, 29 Aug 2019 22:50:31 +0800
Message-ID: <1567090254-15566-10-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1567090254-15566-1-git-send-email-yongqiang.niu@mediatek.com>
References: <1567090254-15566-1-git-send-email-yongqiang.niu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_075122_565476_E3DC59A9 
X-CRM114-Status: GOOD (  11.44  )
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

mutex sof will be ddp private data

Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_ddp.c | 43 +++++++++++++++++++++++++++-------
 1 file changed, 35 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
index ae22e21..9bdbd8d 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
@@ -141,8 +141,19 @@ struct mtk_disp_mutex {
 	bool claimed;
 };
 
+enum mtk_ddp_mutex_sof_id {
+	DDP_MUTEX_SOF_SINGLE_MODE,
+	DDP_MUTEX_SOF_DSI0,
+	DDP_MUTEX_SOF_DSI1,
+	DDP_MUTEX_SOF_DPI0,
+	DDP_MUTEX_SOF_DPI1,
+	DDP_MUTEX_SOF_DSI2,
+	DDP_MUTEX_SOF_DSI3,
+};
+
 struct mtk_ddp_data {
 	const unsigned int *mutex_mod;
+	const unsigned int *mutex_sof;
 	const unsigned int mutex_mod_reg;
 };
 
@@ -201,18 +212,31 @@ struct mtk_ddp {
 	[DDP_COMPONENT_WDMA1] = MT8173_MUTEX_MOD_DISP_WDMA1,
 };
 
+static const unsigned int mt2712_mutex_sof[DDP_MUTEX_SOF_DSI3 + 1] = {
+	[DDP_MUTEX_SOF_SINGLE_MODE] = MUTEX_SOF_SINGLE_MODE,
+	[DDP_MUTEX_SOF_DSI0] = MUTEX_SOF_DSI0,
+	[DDP_MUTEX_SOF_DSI1] = MUTEX_SOF_DSI1,
+	[DDP_MUTEX_SOF_DPI0] = MUTEX_SOF_DPI0,
+	[DDP_MUTEX_SOF_DPI1] = MUTEX_SOF_DPI1,
+	[DDP_MUTEX_SOF_DSI2] = MUTEX_SOF_DSI2,
+	[DDP_MUTEX_SOF_DSI3] = MUTEX_SOF_DSI3,
+};
+
 static const struct mtk_ddp_data mt2701_ddp_driver_data = {
 	.mutex_mod = mt2701_mutex_mod,
+	.mutex_sof = mt2712_mutex_sof,
 	.mutex_mod_reg = MT2701_DISP_MUTEX0_MOD0,
 };
 
 static const struct mtk_ddp_data mt2712_ddp_driver_data = {
 	.mutex_mod = mt2712_mutex_mod,
+	.mutex_sof = mt2712_mutex_sof,
 	.mutex_mod_reg = MT2701_DISP_MUTEX0_MOD0,
 };
 
 static const struct mtk_ddp_data mt8173_ddp_driver_data = {
 	.mutex_mod = mt8173_mutex_mod,
+	.mutex_sof = mt2712_mutex_sof,
 	.mutex_mod_reg = MT2701_DISP_MUTEX0_MOD0,
 };
 
@@ -454,28 +478,29 @@ void mtk_disp_mutex_add_comp(struct mtk_disp_mutex *mutex,
 	struct mtk_ddp *ddp = container_of(mutex, struct mtk_ddp,
 					   mutex[mutex->id]);
 	unsigned int reg;
+	unsigned int sof_id;
 	unsigned int offset;
 
 	WARN_ON(&ddp->mutex[mutex->id] != mutex);
 
 	switch (id) {
 	case DDP_COMPONENT_DSI0:
-		reg = MUTEX_SOF_DSI0;
+		sof_id = DDP_MUTEX_SOF_DSI0;
 		break;
 	case DDP_COMPONENT_DSI1:
-		reg = MUTEX_SOF_DSI0;
+		sof_id = DDP_MUTEX_SOF_DSI0;
 		break;
 	case DDP_COMPONENT_DSI2:
-		reg = MUTEX_SOF_DSI2;
+		sof_id = DDP_MUTEX_SOF_DSI2;
 		break;
 	case DDP_COMPONENT_DSI3:
-		reg = MUTEX_SOF_DSI3;
+		sof_id = DDP_MUTEX_SOF_DSI3;
 		break;
 	case DDP_COMPONENT_DPI0:
-		reg = MUTEX_SOF_DPI0;
+		sof_id = DDP_MUTEX_SOF_DPI0;
 		break;
 	case DDP_COMPONENT_DPI1:
-		reg = MUTEX_SOF_DPI1;
+		sof_id = DDP_MUTEX_SOF_DPI1;
 		break;
 	default:
 		if (ddp->data->mutex_mod[id] < 32) {
@@ -493,7 +518,8 @@ void mtk_disp_mutex_add_comp(struct mtk_disp_mutex *mutex,
 		return;
 	}
 
-	writel_relaxed(reg, ddp->regs + DISP_REG_MUTEX_SOF(mutex->id));
+	writel_relaxed(ddp->data->mutex_sof[sof_id],
+		       ddp->regs + DISP_REG_MUTEX_SOF(mutex->id));
 }
 
 void mtk_disp_mutex_remove_comp(struct mtk_disp_mutex *mutex,
@@ -514,7 +540,8 @@ void mtk_disp_mutex_remove_comp(struct mtk_disp_mutex *mutex,
 	case DDP_COMPONENT_DPI0:
 	case DDP_COMPONENT_DPI1:
 		writel_relaxed(MUTEX_SOF_SINGLE_MODE,
-			       ddp->regs + DISP_REG_MUTEX_SOF(mutex->id));
+			       ddp->regs +
+			       DISP_REG_MUTEX_SOF(mutex->id));
 		break;
 	default:
 		if (ddp->data->mutex_mod[id] < 32) {
-- 
1.8.1.1.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
