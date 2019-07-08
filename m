Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E61A62BFC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 00:43:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2pamDJoF4TNanh3gQxyPCXpRUazYcxz8o/JQpGXRWew=; b=otw4nwiBzu4zaG
	w/KhZtvI4xaPlyMswhzCyHlqNyshwN2INacXwNTDjuair84AhPNCRslw+6x8WtPrDJlJR163rBaim
	V1mol45Up0jbIYjJsp34XhNWvK0/xxE9Z2PPrqSBU/AmmR9hY7IfcEg8pbnlEM46o4x80j3qkXH5D
	DSwWtveEy+/8VAdg3AWCd3yo0d3hhxMKndtMzJBDWijXfFe9DdKHZQlIkOrlusY+S3qhG/00YYo8R
	VHcviAIuuqxFz+vGtCQChyHZenlGQgO+YocJiM8dXmZjovBMnzANDz9LyFWJRw485F2iLN4tVbAdy
	E3UBHKOB1K5dIXStBhaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkcME-0007yO-4y; Mon, 08 Jul 2019 22:43:38 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkcDo-0004t2-Mg; Mon, 08 Jul 2019 22:34:58 +0000
X-UUID: 38dd67e54f8a4f678d744229efc38f15-20190708
X-UUID: 38dd67e54f8a4f678d744229efc38f15-20190708
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <yongqiang.niu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 67124683; Mon, 08 Jul 2019 14:34:44 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 8 Jul 2019 15:34:43 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 9 Jul 2019 06:34:36 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 9 Jul 2019 06:34:35 +0800
From: <yongqiang.niu@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>, "Rob
 Herring" <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v4, 18/33] drm/mediatek: add component DITHER
Date: Tue, 9 Jul 2019 06:33:58 +0800
Message-ID: <1562625253-29254-19-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1562625253-29254-1-git-send-email-yongqiang.niu@mediatek.com>
References: <1562625253-29254-1-git-send-email-yongqiang.niu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_153457_111104_DBB4BB28 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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

This patch add component DITHER

Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 32 +++++++++++++++++++++++++++++
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h |  2 ++
 2 files changed, 34 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
index 1aa4224..bc92a1b 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
@@ -47,6 +47,12 @@
 #define CCORR_RELAY_MODE			BIT(0)
 #define DISP_CCORR_SIZE				0x0030
 
+#define DISP_DITHER_EN				0x0000
+#define DITHER_EN				BIT(0)
+#define DISP_DITHER_CFG				0x0020
+#define DITHER_RELAY_MODE			BIT(0)
+#define DISP_DITHER_SIZE			0x0030
+
 #define DISP_GAMMA_EN				0x0000
 #define DISP_GAMMA_CFG				0x0020
 #define DISP_GAMMA_SIZE				0x0030
@@ -155,6 +161,24 @@ static void mtk_ccorr_stop(struct mtk_ddp_comp *comp)
 	writel_relaxed(0x0, comp->regs + DISP_CCORR_EN);
 }
 
+static void mtk_dither_config(struct mtk_ddp_comp *comp, unsigned int w,
+			      unsigned int h, unsigned int vrefresh,
+			      unsigned int bpc)
+{
+	writel(h << 16 | w, comp->regs + DISP_DITHER_SIZE);
+	writel(DITHER_RELAY_MODE, comp->regs + DISP_DITHER_CFG);
+}
+
+static void mtk_dither_start(struct mtk_ddp_comp *comp)
+{
+	writel(DITHER_EN, comp->regs + DISP_DITHER_EN);
+}
+
+static void mtk_dither_stop(struct mtk_ddp_comp *comp)
+{
+	writel_relaxed(0x0, comp->regs + DISP_DITHER_EN);
+}
+
 static void mtk_gamma_config(struct mtk_ddp_comp *comp, unsigned int w,
 			     unsigned int h, unsigned int vrefresh,
 			     unsigned int bpc)
@@ -209,6 +233,12 @@ static void mtk_gamma_set(struct mtk_ddp_comp *comp,
 	.stop = mtk_ccorr_stop,
 };
 
+static const struct mtk_ddp_comp_funcs ddp_dither = {
+	.config = mtk_dither_config,
+	.start = mtk_dither_start,
+	.stop = mtk_dither_stop,
+};
+
 static const struct mtk_ddp_comp_funcs ddp_gamma = {
 	.gamma_set = mtk_gamma_set,
 	.config = mtk_gamma_config,
@@ -234,6 +264,7 @@ static void mtk_gamma_set(struct mtk_ddp_comp *comp,
 	[MTK_DISP_CCORR] = "ccorr",
 	[MTK_DISP_AAL] = "aal",
 	[MTK_DISP_GAMMA] = "gamma",
+	[MTK_DISP_DITHER] = "dither",
 	[MTK_DISP_UFOE] = "ufoe",
 	[MTK_DSI] = "dsi",
 	[MTK_DPI] = "dpi",
@@ -256,6 +287,7 @@ struct mtk_ddp_comp_match {
 	[DDP_COMPONENT_CCORR]	= { MTK_DISP_CCORR,	0, &ddp_ccorr },
 	[DDP_COMPONENT_COLOR0]	= { MTK_DISP_COLOR,	0, NULL },
 	[DDP_COMPONENT_COLOR1]	= { MTK_DISP_COLOR,	1, NULL },
+	[DDP_COMPONENT_DITHER]	= { MTK_DISP_DITHER,	0, &ddp_dither },
 	[DDP_COMPONENT_DPI0]	= { MTK_DPI,		0, NULL },
 	[DDP_COMPONENT_DPI1]	= { MTK_DPI,		1, NULL },
 	[DDP_COMPONENT_DSI0]	= { MTK_DSI,		0, NULL },
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
index 8ac9f62..a0ea8c9 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
@@ -30,6 +30,7 @@ enum mtk_ddp_comp_type {
 	MTK_DISP_WDMA,
 	MTK_DISP_COLOR,
 	MTK_DISP_CCORR,
+	MTK_DISP_DITHER,
 	MTK_DISP_AAL,
 	MTK_DISP_GAMMA,
 	MTK_DISP_UFOE,
@@ -49,6 +50,7 @@ enum mtk_ddp_comp_id {
 	DDP_COMPONENT_CCORR,
 	DDP_COMPONENT_COLOR0,
 	DDP_COMPONENT_COLOR1,
+	DDP_COMPONENT_DITHER,
 	DDP_COMPONENT_DPI0,
 	DDP_COMPONENT_DPI1,
 	DDP_COMPONENT_DSI0,
-- 
1.8.1.1.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
