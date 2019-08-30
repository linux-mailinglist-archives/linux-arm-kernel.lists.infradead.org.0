Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F571A3162
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 09:43:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=onSRooUZh/X0sy9HSmXgTwqfHcc53ISTIiCBm593kkg=; b=lfnpJna+47PPUR
	yRSrb8fJOPvGCNX4fLOU+pYY6flYWeIJLEWgzAOL7vkFNVZHUqQeYVgTvQR2BokEY42fgLi8dIZoC
	rKMLASvFJDYnF0Vs1MATUVyzqZ8bRi6EGnC9nFFcUioCNEwCE/mSgpa8k1zwY7agqDmSFm4mTNFbg
	D2ta3IogKRAUFadC0fcolJvZN8iQ3lMe2vnuTont6L/pZ4U6Xd8vWhnr85PzpA/RMW+qKm+99GB5o
	iWICtY68vTa2PjmRYtfKUMqqdObjbnG/VZy51DVlrqeAJtwFh0YQrFDYe1HoN1wkEjly/wr4Ie20q
	Id4v2GUuS7OjGU5oMOSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3bZM-0005J3-4T; Fri, 30 Aug 2019 07:43:40 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3bWy-0003GE-PV; Fri, 30 Aug 2019 07:41:15 +0000
X-UUID: 72d151654f0b42dcb6f70f37b6f77097-20190829
X-UUID: 72d151654f0b42dcb6f70f37b6f77097-20190829
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1036169662; Thu, 29 Aug 2019 23:41:13 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 30 Aug 2019 00:41:12 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 30 Aug 2019 15:41:10 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 30 Aug 2019 15:41:10 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: David Airlie <airlied@linux.ie>, Matthias Brugger
 <matthias.bgg@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 <dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>
Subject: [PATCH 2/2] drm/mediatek: Apply CMDQ control flow
Date: Fri, 30 Aug 2019 15:41:03 +0800
Message-ID: <20190830074103.16671-3-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190830074103.16671-1-bibby.hsieh@mediatek.com>
References: <20190830074103.16671-1-bibby.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_004112_902042_864E5FAD 
X-CRM114-Status: GOOD (  16.81  )
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
Cc: drinkcat@chromium.org, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 Yongqiang Niu <yongqiang.niu@mediatek.com>, linux-kernel@vger.kernel.org,
 tfiga@chromium.org, CK Hu <ck.hu@mediatek.com>,
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
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c     | 190 +++++++++++++++++---
 drivers/gpu/drm/mediatek/mtk_drm_crtc.h     |   2 +
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c |  34 ++++
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h |   2 +
 drivers/gpu/drm/mediatek/mtk_drm_plane.c    |   4 +
 5 files changed, 206 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
index 092e502ed27b..329ca5a14c39 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
@@ -10,7 +10,9 @@
 #include <drm/drm_plane_helper.h>
 #include <drm/drm_probe_helper.h>
 #include <linux/clk.h>
+#include <linux/of_address.h>
 #include <linux/pm_runtime.h>
+#include <linux/soc/mediatek/mtk-cmdq.h>
 
 #include "mtk_drm_drv.h"
 #include "mtk_drm_crtc.h"
@@ -41,6 +43,10 @@ struct mtk_drm_crtc {
 	unsigned int			layer_nr;
 	bool				pending_planes;
 	bool                            cursor_update;
+
+	struct cmdq_client		*cmdq_client;
+	u32				cmdq_event;
+
 	void __iomem			*config_regs;
 	const struct mtk_mmsys_reg_data *mmsys_reg_data;
 	struct mtk_disp_mutex		*mutex;
@@ -57,6 +63,12 @@ struct mtk_crtc_state {
 	unsigned int			pending_width;
 	unsigned int			pending_height;
 	unsigned int			pending_vrefresh;
+	struct cmdq_pkt			*cmdq_handle;
+};
+
+struct mtk_cmdq_cb_data {
+	struct drm_crtc_state		*state;
+	struct cmdq_pkt			*cmdq_handle;
 };
 
 static inline struct mtk_drm_crtc *to_mtk_crtc(struct drm_crtc *c)
@@ -208,6 +220,46 @@ static void mtk_crtc_ddp_clk_disable(struct mtk_drm_crtc *mtk_crtc)
 		clk_disable_unprepare(mtk_crtc->ddp_comp[i]->clk);
 }
 
+static void ddp_cmdq_cursor_cb(struct cmdq_cb_data data)
+{
+
+#if IS_ENABLED(CONFIG_MTK_CMDQ)
+	struct mtk_cmdq_cb_data *cb_data = data.data;
+
+	DRM_DEBUG_DRIVER("%s\n", __func__);
+
+	cmdq_pkt_destroy(cb_data->cmdq_handle);
+	kfree(cb_data);
+#endif
+
+}
+
+static void ddp_cmdq_cb(struct cmdq_cb_data data)
+{
+
+#if IS_ENABLED(CONFIG_MTK_CMDQ)
+	struct mtk_cmdq_cb_data *cb_data = data.data;
+	struct drm_crtc_state *crtc_state = cb_data->state;
+	struct drm_atomic_state *atomic_state = crtc_state->state;
+	struct drm_crtc *crtc = crtc_state->crtc;
+	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
+
+	DRM_DEBUG_DRIVER("%s\n", __func__);
+
+	if (mtk_crtc->pending_needs_vblank) {
+		/* cmdq_vblank_event must be read after cmdq_needs_event */
+		smp_rmb();
+
+		mtk_drm_crtc_finish_page_flip(mtk_crtc);
+		mtk_crtc->pending_needs_vblank = false;
+	}
+	mtk_atomic_state_put_queue(atomic_state);
+	cmdq_pkt_destroy(cb_data->cmdq_handle);
+	kfree(cb_data);
+#endif
+
+}
+
 static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
 {
 	struct drm_crtc *crtc = &mtk_crtc->base;
@@ -283,7 +335,8 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
 		if (prev == DDP_COMPONENT_OVL0)
 			mtk_ddp_comp_bgclr_in_on(comp);
 
-		mtk_ddp_comp_config(comp, width, height, vrefresh, bpc);
+		mtk_ddp_comp_config(comp, width, height,
+				    vrefresh, bpc, NULL);
 		mtk_ddp_comp_start(comp);
 	}
 
@@ -303,7 +356,7 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
 		} else
 			local_layer = i;
 		mtk_ddp_comp_layer_config(comp, local_layer,
-					  plane_state);
+					  plane_state, NULL);
 	}
 
 	return 0;
@@ -361,7 +414,7 @@ static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
 	if (state->pending_config) {
 		mtk_ddp_comp_config(comp, state->pending_width,
 				    state->pending_height,
-				    state->pending_vrefresh, 0);
+				    state->pending_vrefresh, 0, NULL);
 
 		state->pending_config = false;
 	}
@@ -381,7 +434,7 @@ static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
 					local_layer = i;
 
 				mtk_ddp_comp_layer_config(comp, local_layer,
-							  plane_state);
+							  plane_state, NULL);
 				plane_state->pending.config = false;
 			}
 		}
@@ -405,26 +458,69 @@ void mtk_drm_crtc_cursor_update(struct drm_crtc *crtc, struct drm_plane *plane,
 		return;
 
 	mutex_lock(&priv->hw_lock);
-	plane_helper_funcs->atomic_update(plane, plane_state);
-	for (i = 0; i < mtk_crtc->layer_nr; i++) {
-		struct drm_plane *plane = &mtk_crtc->planes[i];
-		struct mtk_plane_state *plane_state;
+	if (IS_ENABLED(CONFIG_MTK_CMDQ) && mtk_crtc->cmdq_client) {
+		struct mtk_crtc_state *mtk_crtc_state =
+				to_mtk_crtc_state(crtc->state);
+		struct mtk_cmdq_cb_data *cb_data;
+
+		mtk_crtc_state->cmdq_handle =
+				cmdq_pkt_create(mtk_crtc->cmdq_client,
+						PAGE_SIZE);
+		cmdq_pkt_clear_event(mtk_crtc_state->cmdq_handle,
+				     mtk_crtc->cmdq_event);
+		cmdq_pkt_wfe(mtk_crtc_state->cmdq_handle, mtk_crtc->cmdq_event);
+		plane_helper_funcs->atomic_update(plane, plane_state);
+		cb_data = kmalloc(sizeof(*cb_data), GFP_KERNEL);
+		cb_data->cmdq_handle = mtk_crtc_state->cmdq_handle;
+		cmdq_pkt_flush_async(mtk_crtc_state->cmdq_handle,
+				     ddp_cmdq_cursor_cb, cb_data);
+	} else {
+		plane_helper_funcs->atomic_update(plane, plane_state);
 
-		plane_state = to_mtk_plane_state(plane->state);
-		if (plane_state->pending.dirty) {
-			plane_state->pending.config = true;
-			plane_state->pending.dirty = false;
+		for (i = 0; i < mtk_crtc->layer_nr; i++) {
+			struct drm_plane *plane = &mtk_crtc->planes[i];
+			struct mtk_plane_state *plane_state;
+
+			plane_state = to_mtk_plane_state(plane->state);
+			if (plane_state->pending.dirty) {
+				plane_state->pending.config = true;
+				plane_state->pending.dirty = false;
+			}
+		}
+		mtk_crtc->pending_planes = true;
+		mtk_crtc->cursor_update = true;
+		if (priv->data->shadow_register) {
+			mtk_disp_mutex_acquire(mtk_crtc->mutex);
+			mtk_crtc_ddp_config(crtc);
+			mtk_disp_mutex_release(mtk_crtc->mutex);
 		}
 	}
-	mtk_crtc->pending_planes = true;
-	mtk_crtc->cursor_update = true;
+	mutex_unlock(&priv->hw_lock);
+}
 
-	if (priv->data->shadow_register) {
-		mtk_disp_mutex_acquire(mtk_crtc->mutex);
-		mtk_crtc_ddp_config(crtc);
-		mtk_disp_mutex_release(mtk_crtc->mutex);
+void mtk_drm_crtc_plane_update(struct drm_crtc *crtc, struct drm_plane *plane,
+			       struct mtk_plane_state *state)
+{
+	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
+	struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[0];
+	struct drm_crtc_state *crtc_state = crtc->state;
+	struct mtk_crtc_state *mtk_crtc_state = to_mtk_crtc_state(crtc_state);
+	struct cmdq_pkt *cmdq_handle = mtk_crtc_state->cmdq_handle;
+	unsigned int comp_layer_nr = mtk_ddp_comp_layer_nr(comp);
+	unsigned int local_layer;
+	unsigned int plane_index = plane - mtk_crtc->planes;
+
+	DRM_DEBUG_DRIVER("%s\n", __func__);
+	if (mtk_crtc->cmdq_client) {
+		if (plane_index >= comp_layer_nr) {
+			comp = mtk_crtc->ddp_comp[1];
+			local_layer = plane_index - comp_layer_nr;
+		} else {
+			local_layer = plane_index;
+		}
+		mtk_ddp_comp_layer_config(comp, local_layer, state,
+					  cmdq_handle);
 	}
-	mutex_unlock(&priv->hw_lock);
 }
 
 static void mtk_drm_crtc_atomic_enable(struct drm_crtc *crtc,
@@ -487,6 +583,15 @@ static void mtk_drm_crtc_atomic_begin(struct drm_crtc *crtc,
 		WARN_ON(drm_crtc_vblank_get(crtc) != 0);
 		mtk_crtc->event = state->base.event;
 		state->base.event = NULL;
+		/* Make sure the above parameter is set before update */
+		smp_wmb();
+		mtk_crtc->pending_needs_vblank = true;
+	}
+	if (IS_ENABLED(CONFIG_MTK_CMDQ) && mtk_crtc->cmdq_client) {
+		state->cmdq_handle = cmdq_pkt_create(mtk_crtc->cmdq_client,
+						     PAGE_SIZE);
+		cmdq_pkt_clear_event(state->cmdq_handle, mtk_crtc->cmdq_event);
+		cmdq_pkt_wfe(state->cmdq_handle, mtk_crtc->cmdq_event);
 	}
 }
 
@@ -494,13 +599,29 @@ static void mtk_drm_crtc_atomic_flush(struct drm_crtc *crtc,
 				      struct drm_crtc_state *old_crtc_state)
 {
 	struct drm_atomic_state *old_atomic_state = old_crtc_state->state;
+	struct drm_crtc_state *crtc_state = crtc->state;
+	struct mtk_crtc_state *state = to_mtk_crtc_state(crtc_state);
+	struct cmdq_pkt *cmdq_handle = state->cmdq_handle;
 	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
 	struct mtk_drm_private *priv = crtc->dev->dev_private;
+	struct mtk_cmdq_cb_data *cb_data;
 	unsigned int pending_planes = 0;
 	int i;
 
-	if (mtk_crtc->event)
-		mtk_crtc->pending_needs_vblank = true;
+	DRM_DEBUG_DRIVER("[CRTC:%u] [STATE:%p(%p)->%p(%p)]\n", crtc->base.id,
+			 old_crtc_state, old_crtc_state->state,
+			 crtc_state, crtc_state->state);
+
+	if (IS_ENABLED(CONFIG_MTK_CMDQ) && mtk_crtc->cmdq_client) {
+		drm_atomic_state_get(old_atomic_state);
+		cb_data = kmalloc(sizeof(*cb_data), GFP_KERNEL);
+		cb_data->state = old_crtc_state;
+		cb_data->cmdq_handle = cmdq_handle;
+		cmdq_pkt_flush_async(cmdq_handle, ddp_cmdq_cb, cb_data);
+
+		return;
+	}
+
 	for (i = 0; i < mtk_crtc->layer_nr; i++) {
 		struct drm_plane *plane = &mtk_crtc->planes[i];
 		struct mtk_plane_state *plane_state;
@@ -521,7 +642,8 @@ static void mtk_drm_crtc_atomic_flush(struct drm_crtc *crtc,
 
 	if (crtc->state->color_mgmt_changed)
 		for (i = 0; i < mtk_crtc->ddp_comp_nr; i++)
-			mtk_ddp_gamma_set(mtk_crtc->ddp_comp[i], crtc->state);
+			mtk_ddp_gamma_set(mtk_crtc->ddp_comp[i],
+					  crtc->state, NULL);
 
 	if (priv->data->shadow_register) {
 		mtk_disp_mutex_acquire(mtk_crtc->mutex);
@@ -578,10 +700,13 @@ void mtk_crtc_ddp_irq(struct drm_crtc *crtc, struct mtk_ddp_comp *comp)
 	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
 	struct mtk_drm_private *priv = crtc->dev->dev_private;
 
-	if (!priv->data->shadow_register)
-		mtk_crtc_ddp_config(crtc);
-
-	mtk_drm_finish_page_flip(mtk_crtc);
+	if (mtk_crtc->cmdq_client) {
+		drm_crtc_handle_vblank(crtc);
+	} else {
+		if (!priv->data->shadow_register)
+			mtk_crtc_ddp_config(crtc);
+		mtk_drm_finish_page_flip(mtk_crtc);
+	}
 }
 
 int mtk_drm_crtc_create(struct drm_device *drm_dev,
@@ -678,5 +803,18 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
 	drm_crtc_enable_color_mgmt(&mtk_crtc->base, 0, false, MTK_LUT_SIZE);
 	priv->num_pipes++;
 
+	if (IS_ENABLED(CONFIG_MTK_CMDQ)) {
+		mtk_crtc->cmdq_client = cmdq_mbox_create(dev,
+				drm_crtc_index(&mtk_crtc->base), 2000);
+		of_property_read_u32_index(dev->of_node, "mediatek,gce-events",
+					   drm_crtc_index(&mtk_crtc->base),
+					   &mtk_crtc->cmdq_event);
+		if (IS_ERR(mtk_crtc->cmdq_client)) {
+			dev_dbg(dev, "mtk_crtc %d failed to create mailbox client, writing register by CPU now\n",
+				drm_crtc_index(&mtk_crtc->base));
+			mtk_crtc->cmdq_client = NULL;
+		}
+	}
+
 	return 0;
 }
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.h b/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
index 46e903be68ec..6b2423c88416 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
@@ -19,6 +19,8 @@ void mtk_crtc_ddp_irq(struct drm_crtc *crtc, struct mtk_ddp_comp *comp);
 int mtk_drm_crtc_create(struct drm_device *drm_dev,
 			const enum mtk_ddp_comp_id *path,
 			unsigned int path_len);
+void mtk_drm_crtc_plane_update(struct drm_crtc *crtc, struct drm_plane *plane,
+			       struct mtk_plane_state *state);
 void mtk_drm_crtc_cursor_update(struct drm_crtc *crtc, struct drm_plane *plane,
 				struct drm_plane_state *plane_state);
 
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
index 76416c1cbb28..056ebc6a8199 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
@@ -395,6 +395,40 @@ int mtk_ddp_comp_init(struct device *dev, struct device_node *node,
 	if (IS_ERR(comp->clk))
 		return PTR_ERR(comp->clk);
 
+	if (IS_ENABLED(CONFIG_MTK_CMDQ)) {
+		struct platform_device *comp_pdev;
+		struct resource res;
+		struct cmdq_client_reg *cmdq_reg;
+		int ret = 0;
+
+		if (of_address_to_resource(node, 0, &res) != 0) {
+			dev_err(dev, "Missing reg in %s node\n",
+				node->full_name);
+			return -EINVAL;
+		}
+		comp->regs_pa = res.start;
+
+		comp_pdev = of_find_device_by_node(node);
+		if (!comp_pdev) {
+			dev_warn(dev, "Waiting for component device %s\n",
+				 node->full_name);
+			return -EPROBE_DEFER;
+		}
+
+		cmdq_reg = kzalloc(sizeof(*cmdq_reg), GFP_KERNEL);
+		if (!cmdq_reg)
+			return -EINVAL;
+
+		ret = cmdq_dev_get_client_reg(&comp_pdev->dev, cmdq_reg, 0);
+		if (ret != 0)
+			dev_dbg(&comp_pdev->dev,
+				"get mediatek,gce-client-reg fail!\n");
+		else
+			comp->subsys = cmdq_reg->subsys;
+
+		kfree(cmdq_reg);
+	}
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
index 6bbc35f92815..0faec2dad5a3 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
@@ -99,6 +99,8 @@ struct mtk_ddp_comp {
 	int irq;
 	enum mtk_ddp_comp_id id;
 	const struct mtk_ddp_comp_funcs *funcs;
+	resource_size_t regs_pa;
+	u8 subsys;
 };
 
 static inline void mtk_ddp_comp_config(struct mtk_ddp_comp *comp,
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.c b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
index 59dbdaf07425..ef46c0f43039 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_plane.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
@@ -202,6 +202,8 @@ static void mtk_plane_atomic_update(struct drm_plane *plane,
 	state->pending.height = drm_rect_height(&plane->state->dst);
 	wmb(); /* Make sure the above parameters are set before update */
 	state->pending.dirty = true;
+
+	mtk_drm_crtc_plane_update(crtc, plane, state);
 }
 
 static void mtk_plane_atomic_disable(struct drm_plane *plane,
@@ -212,6 +214,8 @@ static void mtk_plane_atomic_disable(struct drm_plane *plane,
 	state->pending.enable = false;
 	wmb(); /* Make sure the above parameter is set before update */
 	state->pending.dirty = true;
+	/* Fetch CRTC from old plane state when disabling. */
+	mtk_drm_crtc_plane_update(old_state->crtc, plane, state);
 }
 
 static const struct drm_plane_helper_funcs mtk_plane_helper_funcs = {
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
