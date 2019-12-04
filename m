Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 906C811287C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 10:51:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eWKIcVHrOM0P9KXyO2bQqzhBU0Zisq0caG7BNKQuLlo=; b=Dbi98b+pj0nEWt
	IxlLnxCyjQLeAE8XnpiRltjPZthmAbUv68nQQI74CWCX1cZeSBnLOyuK+tuTb+TMpDydJ2hkgOhKJ
	q1LbE5VAYMSit677dI01v8g8yDA6aqzsYKcwFZdkkvJa+wHt1iLMa0Pl+gyXBqZ/z0WuQyO5EHg8a
	8p13BSD7qTnMX0E5B4RMGqTjQmudVEXFNlpXyd4Sco4HMKqR8eF512tXKqFi8Olbjgf1Vx2STFzFD
	lmZ67ERXv3cxisGF0JxyLtruDc1oopIz+lyci29mn3giVABulLO7p1zpq8YL+WsaReVVt5egheoI0
	yqpQYmNbjXfUGpW8fwMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icRJt-0002IH-5Z; Wed, 04 Dec 2019 09:51:41 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icRJV-00024m-7E; Wed, 04 Dec 2019 09:51:18 +0000
X-UUID: 5d31777da2e2431485fec679bdeb9791-20191204
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=VcoIehMe+46z0sneQ8TvV0LGJmr02/Jryq1p3LPajfg=; 
 b=alesoQI7SKo2B6YOZC6zLDQO5UQ62X6Owm+ot6SdT8zmVLu+p8BWR7j0UkoHRuZhf+nog9417g2P218OgcJxP0chgLUWfsqFYFsFPb+cqowauD53kS4zu+d/zJ+/9sEWx2WmawVodnH8gMCVbOu4dYEY2UwBOsz2MaiHw+lm4/k=;
X-UUID: 5d31777da2e2431485fec679bdeb9791-20191204
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1271252769; Wed, 04 Dec 2019 01:51:14 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Dec 2019 01:44:56 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Dec 2019 17:44:38 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 4 Dec 2019 17:43:49 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: David Airlie <airlied@linux.ie>, Matthias Brugger
 <matthias.bgg@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 <dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>
Subject: [PATCH v3 6/6] drm/mediatek: apply CMDQ control flow
Date: Wed, 4 Dec 2019 17:44:41 +0800
Message-ID: <20191204094441.5116-7-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191204094441.5116-1-bibby.hsieh@mediatek.com>
References: <20191204094441.5116-1-bibby.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_015117_267819_013AC966 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: drinkcat@chromium.org, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 srv_heupstream@mediatek.com, Yongqiang Niu <yongqiang.niu@mediatek.com>,
 linux-kernel@vger.kernel.org, tfiga@chromium.org, CK Hu <ck.hu@mediatek.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, YT Shen <yt.shen@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Unlike other SoCs, MT8183 does not have "shadow"
registers for performaing an atomic video mode
set or page flip at vblank/vsync.

The CMDQ (Commend Queue) in MT8183 is used to help
update all relevant display controller registers
with critical time limation.

Signed-off-by: YT Shen <yt.shen@mediatek.com>
Signed-off-by: CK Hu <ck.hu@mediatek.com>
Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 80 ++++++++++++++++++++++++-
 1 file changed, 77 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
index 9f1ff2f3f104..9340346e2727 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
@@ -12,6 +12,8 @@
 #include <drm/drm_plane_helper.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_vblank.h>
+#include <linux/of_address.h>
+#include <linux/soc/mediatek/mtk-cmdq.h>
 
 #include "mtk_drm_drv.h"
 #include "mtk_drm_crtc.h"
@@ -42,6 +44,9 @@ struct mtk_drm_crtc {
 	unsigned int			layer_nr;
 	bool				pending_planes;
 
+	struct cmdq_client		*cmdq_client;
+	u32				cmdq_event;
+
 	void __iomem			*config_regs;
 	const struct mtk_mmsys_reg_data *mmsys_reg_data;
 	struct mtk_disp_mutex		*mutex;
@@ -59,6 +64,11 @@ struct mtk_crtc_state {
 	unsigned int			pending_width;
 	unsigned int			pending_height;
 	unsigned int			pending_vrefresh;
+	struct cmdq_pkt			*cmdq_handle;
+};
+
+struct mtk_cmdq_cb_data {
+	struct cmdq_pkt			*cmdq_handle;
 };
 
 static inline struct mtk_drm_crtc *to_mtk_crtc(struct drm_crtc *c)
@@ -233,6 +243,47 @@ struct mtk_ddp_comp *mtk_drm_ddp_comp_for_plane(struct drm_crtc *crtc,
 	return NULL;
 }
 
+#ifdef CONFIG_MTK_CMDQ
+static void ddp_cmdq_cb(struct cmdq_cb_data data)
+{
+	struct mtk_cmdq_cb_data *cb_data = data.data;
+
+	cmdq_pkt_destroy(cb_data->cmdq_handle);
+	kfree(cb_data);
+}
+
+static void mtk_cmdq_acquire(struct drm_crtc *crtc)
+{
+	struct mtk_crtc_state *mtk_crtc_state =
+			to_mtk_crtc_state(crtc->state);
+	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
+
+	mtk_crtc_state->cmdq_handle =
+			cmdq_pkt_create(mtk_crtc->cmdq_client,
+					PAGE_SIZE);
+	cmdq_pkt_clear_event(mtk_crtc_state->cmdq_handle,
+			     mtk_crtc->cmdq_event);
+	cmdq_pkt_wfe(mtk_crtc_state->cmdq_handle, mtk_crtc->cmdq_event);
+}
+
+static void mtk_cmdq_release(struct drm_crtc *crtc)
+{
+	struct mtk_crtc_state *mtk_crtc_state =
+			to_mtk_crtc_state(crtc->state);
+	struct mtk_cmdq_cb_data *cb_data;
+
+	cb_data = kmalloc(sizeof(*cb_data), GFP_KERNEL);
+	if (!cb_data) {
+		DRM_DEV_ERROR(crtc->dev->dev, "Failed to alloc cb_data\n");
+		return;
+	}
+
+	cb_data->cmdq_handle = mtk_crtc_state->cmdq_handle;
+	cmdq_pkt_flush_async(mtk_crtc_state->cmdq_handle,
+			     ddp_cmdq_cb, cb_data);
+}
+#endif
+
 static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
 {
 	struct drm_crtc *crtc = &mtk_crtc->base;
@@ -393,7 +444,8 @@ static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
 	if (state->pending_config) {
 		mtk_ddp_comp_config(comp, state->pending_width,
 				    state->pending_height,
-				    state->pending_vrefresh, 0, NULL);
+				    state->pending_vrefresh, 0,
+				    state->cmdq_handle);
 
 		state->pending_config = false;
 	}
@@ -413,7 +465,8 @@ static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
 
 			if (comp)
 				mtk_ddp_comp_layer_config(comp, local_layer,
-							  plane_state, NULL);
+							  plane_state,
+							  state->cmdq_handle);
 			plane_state->pending.config = false;
 		}
 		mtk_crtc->pending_planes = false;
@@ -452,6 +505,13 @@ static void mtk_drm_crtc_hw_config(struct mtk_drm_crtc *mtk_crtc)
 		mtk_crtc_ddp_config(crtc);
 		mtk_disp_mutex_release(mtk_crtc->mutex);
 	}
+#ifdef CONFIG_MTK_CMDQ
+	if (mtk_crtc->cmdq_client) {
+		mtk_cmdq_acquire(crtc);
+		mtk_crtc_ddp_config(crtc);
+		mtk_cmdq_release(crtc);
+	}
+#endif
 	mutex_unlock(&mtk_crtc->hw_lock);
 }
 
@@ -528,6 +588,7 @@ static void mtk_drm_crtc_atomic_disable(struct drm_crtc *crtc,
 	mtk_crtc->pending_planes = true;
 
 	/* Wait for planes to be disabled */
+	mtk_drm_crtc_hw_config(mtk_crtc);
 	drm_crtc_wait_one_vblank(crtc);
 
 	drm_crtc_vblank_off(crtc);
@@ -619,7 +680,7 @@ void mtk_crtc_ddp_irq(struct drm_crtc *crtc, struct mtk_ddp_comp *comp)
 	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
 	struct mtk_drm_private *priv = crtc->dev->dev_private;
 
-	if (!priv->data->shadow_register)
+	if (!priv->data->shadow_register && !mtk_crtc->cmdq_client)
 		mtk_crtc_ddp_config(crtc);
 
 	mtk_drm_finish_page_flip(mtk_crtc);
@@ -763,5 +824,18 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
 	priv->num_pipes++;
 	mutex_init(&mtk_crtc->hw_lock);
 
+#ifdef CONFIG_MTK_CMDQ
+	mtk_crtc->cmdq_client =
+			cmdq_mbox_create(dev, drm_crtc_index(&mtk_crtc->base),
+					 2000);
+	of_property_read_u32_index(dev->of_node, "mediatek,gce-events",
+				   drm_crtc_index(&mtk_crtc->base),
+				   &mtk_crtc->cmdq_event);
+	if (IS_ERR(mtk_crtc->cmdq_client)) {
+		dev_dbg(dev, "mtk_crtc %d failed to create mailbox client, writing register by CPU now\n",
+			drm_crtc_index(&mtk_crtc->base));
+		mtk_crtc->cmdq_client = NULL;
+	}
+#endif
 	return 0;
 }
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
