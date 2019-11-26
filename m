Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F197210994A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 07:35:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aLpv2n79x1bgI26w2pD+rpGHW3FwL6fCIv3caNsgTos=; b=WWWIlVgX5PkICz
	ljZDE3RUlAvyUzkmI4bVS97KmAsV9GSDoE0n7eYNQnrMRJsvuNu/1xffhqXZC2VIhsizOmTqSI+f3
	BowWPaomCpgBpsjTn7KuLGJY8TuxIap6KmIc7dziFePRLORd03BOHubf6WemFGyk5rPQP1EEM/BFM
	9wTWfRTEYjQjfhPPhm5yefMuR7roZotiMaWWl8nmHQQJ2s8qVjvsHhz2x9B0IptwtPh9pnZvMT/1K
	cQD72BZ7EusYEj7xpZ9CWQ3bOlbkfsPuqPtY2mWQ0H1HMb7AKXIxdo4k9EY/8/tktHz3nlvAGwEQX
	J/Xhx+IaZ8Ip+EmRso0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZURR-0000GC-W6; Tue, 26 Nov 2019 06:35:18 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZUQc-0008Bd-AT; Tue, 26 Nov 2019 06:34:28 +0000
X-UUID: e6e02e55bdf54a44bd9a660e1e5bf63e-20191125
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=kPhs7yNMg8RkAVdFI8eTE0OIriIoa7IOSD6IgsxzjCQ=; 
 b=JvrVASpC9TR8Pqd9zwZWE+nU+jEqIkQ7zWWjT+7yH2pTRPSvzUMx+H7RLR1PXA9S9Pis4HHGPZ3fjDbwxmpzTC6TpsBJLkOO17Bmk7ry/E/E3iq01KMrdZmcn+9OfqimAGXIpr3IjR7v+/g7APhJPmmHxDYT5/0eIzYIjQcJtso=;
X-UUID: e6e02e55bdf54a44bd9a660e1e5bf63e-20191125
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2030692597; Mon, 25 Nov 2019 22:34:19 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 25 Nov 2019 22:30:06 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 26 Nov 2019 14:29:11 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 26 Nov 2019 14:29:16 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: David Airlie <airlied@linux.ie>, Matthias Brugger
 <matthias.bgg@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 <dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>
Subject: [PATCH 7/7] drm/mediatek: apply CMDQ control flow
Date: Tue, 26 Nov 2019 14:29:32 +0800
Message-ID: <20191126062932.19773-8-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191126062932.19773-1-bibby.hsieh@mediatek.com>
References: <20191126062932.19773-1-bibby.hsieh@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 90CF0224E3FE6A3130D74D6AC32AFBBC8C6419ECFC3B93A2552AF96B73AA82FC2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_223426_373551_676169CC 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c     | 165 ++++++++++++++++++--
 drivers/gpu/drm/mediatek/mtk_drm_crtc.h     |   3 +-
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c |  31 ++++
 drivers/gpu/drm/mediatek/mtk_drm_plane.c    |   4 +
 4 files changed, 187 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
index 3935fac624f6..4fb346cdda79 100644
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
@@ -20,6 +22,7 @@
 #include "mtk_drm_gem.h"
 #include "mtk_drm_plane.h"
 
+typedef void (*drm_cmdq_cb)(struct cmdq_cb_data data);
 /**
  * struct mtk_drm_crtc - MediaTek specific crtc structure.
  * @base: crtc object.
@@ -42,6 +45,10 @@ struct mtk_drm_crtc {
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
@@ -57,6 +64,12 @@ struct mtk_crtc_state {
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
@@ -228,8 +241,71 @@ struct mtk_ddp_comp *mtk_drm_ddp_comp_for_plane(struct drm_crtc *crtc,
 
 	WARN(1, "Failed to find component for plane %d\n", plane->index);
 	return NULL;
+};
+
+#ifdef CONFIG_MTK_CMDQ
+static void ddp_cmdq_cursor_cb(struct cmdq_cb_data data)
+{
+	struct mtk_cmdq_cb_data *cb_data = data.data;
+
+	cmdq_pkt_destroy(cb_data->cmdq_handle);
+	kfree(cb_data);
 }
 
+static void ddp_cmdq_cb(struct cmdq_cb_data data)
+{
+	struct mtk_cmdq_cb_data *cb_data = data.data;
+	struct drm_crtc_state *crtc_state = cb_data->state;
+	struct drm_atomic_state *atomic_state = crtc_state->state;
+	struct drm_crtc *crtc = crtc_state->crtc;
+	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
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
+static void mtk_cmdq_release(struct drm_crtc *crtc,
+			     struct drm_crtc_state *old_crtc_state,
+			     drm_cmdq_cb cb)
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
+	cb_data->state = old_crtc_state;
+	cmdq_pkt_flush_async(mtk_crtc_state->cmdq_handle,
+			     cb, cb_data);
+}
+#endif
 static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
 {
 	struct drm_crtc *crtc = &mtk_crtc->base;
@@ -371,7 +447,7 @@ static void mtk_crtc_ddp_hw_fini(struct mtk_drm_crtc *mtk_crtc)
 static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
 {
 	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
-	struct drm_atomic_state *atomic_state = mtk_crtc->old_crtc_state->state;
+	struct drm_atomic_state *atomic_state;
 	struct mtk_crtc_state *state = to_mtk_crtc_state(mtk_crtc->base.state);
 	struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[0];
 	unsigned int i;
@@ -385,7 +461,8 @@ static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
 	if (state->pending_config) {
 		mtk_ddp_comp_config(comp, state->pending_width,
 				    state->pending_height,
-				    state->pending_vrefresh, 0, NULL);
+				    state->pending_vrefresh, 0,
+				    state->cmdq_handle);
 
 		state->pending_config = false;
 	}
@@ -405,12 +482,15 @@ static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
 
 			if (comp)
 				mtk_ddp_comp_layer_config(comp, local_layer,
-							  plane_state, NULL);
+							  plane_state,
+							  state->cmdq_handle);
 			plane_state->pending.config = false;
 		}
 		mtk_crtc->pending_planes = false;
-		if (!mtk_crtc->cursor_update)
+		if (!mtk_crtc->cursor_update) {
+			atomic_state = mtk_crtc->old_crtc_state->state;
 			mtk_atomic_state_put_queue(atomic_state);
+		}
 		mtk_crtc->cursor_update = false;
 	}
 }
@@ -454,14 +534,40 @@ void mtk_drm_crtc_cursor_update(struct drm_crtc *crtc, struct drm_plane *plane,
 		}
 	}
 	mtk_crtc->pending_planes = true;
+	mtk_crtc->cursor_update = true;
 	if (priv->data->shadow_register) {
 		mtk_disp_mutex_acquire(mtk_crtc->mutex);
 		mtk_crtc_ddp_config(crtc);
 		mtk_disp_mutex_release(mtk_crtc->mutex);
 	}
+#ifdef CONFIG_MTK_CMDQ
+	if (mtk_crtc->cmdq_client) {
+		mtk_cmdq_acquire(crtc);
+		mtk_crtc_ddp_config(crtc);
+		mtk_cmdq_release(crtc, NULL, ddp_cmdq_cursor_cb);
+	}
+#endif
 	mutex_unlock(&priv->hw_lock);
 }
 
+void mtk_drm_crtc_plane_update(struct drm_crtc *crtc, struct drm_plane *plane,
+			       struct mtk_plane_state *state)
+{
+	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
+	struct mtk_ddp_comp *comp;
+	struct drm_crtc_state *crtc_state = crtc->state;
+	struct mtk_crtc_state *mtk_crtc_state = to_mtk_crtc_state(crtc_state);
+	struct cmdq_pkt *cmdq_handle = mtk_crtc_state->cmdq_handle;
+	unsigned int local_layer;
+
+	if (mtk_crtc->cmdq_client) {
+		comp = mtk_drm_ddp_comp_for_plane(crtc, plane,
+						  &local_layer);
+		mtk_ddp_comp_layer_config(comp, local_layer, state,
+					  cmdq_handle);
+	}
+}
+
 static void mtk_drm_crtc_atomic_enable(struct drm_crtc *crtc,
 				       struct drm_crtc_state *old_state)
 {
@@ -538,21 +644,39 @@ static void mtk_drm_crtc_atomic_begin(struct drm_crtc *crtc,
 		WARN_ON(mtk_crtc->event);
 		mtk_crtc->event = state->base.event;
 		state->base.event = NULL;
+		/* Make sure the above parameter is set before update */
+		smp_wmb();
+		mtk_crtc->pending_needs_vblank = true;
 	}
 	spin_unlock_irq(&crtc->dev->event_lock);
+#ifdef CONFIG_MTK_CMDQ
+	if (mtk_crtc->cmdq_client)
+		mtk_cmdq_acquire(crtc);
+#endif
 }
 
 static void mtk_drm_crtc_atomic_flush(struct drm_crtc *crtc,
 				      struct drm_crtc_state *old_crtc_state)
 {
 	struct drm_atomic_state *old_atomic_state = old_crtc_state->state;
+	struct mtk_crtc_state *mtk_crtc_state = to_mtk_crtc_state(crtc->state);
 	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
 	struct mtk_drm_private *priv = crtc->dev->dev_private;
 	unsigned int pending_planes = 0;
 	int i;
 
-	if (mtk_crtc->event)
-		mtk_crtc->pending_needs_vblank = true;
+	if (crtc->state->color_mgmt_changed)
+		for (i = 0; i < mtk_crtc->ddp_comp_nr; i++)
+			mtk_ddp_gamma_set(mtk_crtc->ddp_comp[i],
+					  crtc->state,
+					  mtk_crtc_state->cmdq_handle);
+#ifdef CONFIG_MTK_CMDQ
+	if (mtk_crtc->cmdq_client) {
+		drm_atomic_state_get(old_atomic_state);
+		mtk_cmdq_release(crtc, old_crtc_state, ddp_cmdq_cb);
+		return;
+	}
+#endif
 	for (i = 0; i < mtk_crtc->layer_nr; i++) {
 		struct drm_plane *plane = &mtk_crtc->planes[i];
 		struct mtk_plane_state *plane_state;
@@ -569,10 +693,6 @@ static void mtk_drm_crtc_atomic_flush(struct drm_crtc *crtc,
 		drm_atomic_state_get(old_atomic_state);
 		mtk_crtc->old_crtc_state = old_crtc_state;
 	}
-	if (crtc->state->color_mgmt_changed)
-		for (i = 0; i < mtk_crtc->ddp_comp_nr; i++)
-			mtk_ddp_gamma_set(mtk_crtc->ddp_comp[i],
-					  crtc->state, NULL);
 
 	if (priv->data->shadow_register) {
 		mtk_disp_mutex_acquire(mtk_crtc->mutex);
@@ -628,10 +748,13 @@ void mtk_crtc_ddp_irq(struct drm_crtc *crtc, struct mtk_ddp_comp *comp)
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
 
 static int mtk_drm_crtc_num_comp_planes(struct mtk_drm_crtc *mtk_crtc,
@@ -770,6 +893,18 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
 	drm_mode_crtc_set_gamma_size(&mtk_crtc->base, MTK_LUT_SIZE);
 	drm_crtc_enable_color_mgmt(&mtk_crtc->base, 0, false, MTK_LUT_SIZE);
 	priv->num_pipes++;
-
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
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.h b/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
index 42a3f650f564..64e6cf969626 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
@@ -21,7 +21,8 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
 			unsigned int path_len);
 int mtk_drm_crtc_plane_check(struct drm_crtc *crtc, struct drm_plane *plane,
 			     struct mtk_plane_state *state);
-
+void mtk_drm_crtc_plane_update(struct drm_crtc *crtc, struct drm_plane *plane,
+			       struct mtk_plane_state *state);
 void mtk_drm_crtc_cursor_update(struct drm_crtc *crtc, struct drm_plane *plane,
 				struct drm_plane_state *plane_state);
 
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
index 6d0f349ddf82..9cc12af2bc06 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
@@ -370,6 +370,9 @@ int mtk_ddp_comp_init(struct device *dev, struct device_node *node,
 		      const struct mtk_ddp_comp_funcs *funcs)
 {
 	struct platform_device *comp_pdev;
+	struct resource res;
+	struct cmdq_client_reg *cmdq_reg;
+	int ret = 0;
 
 	if (comp_id < 0 || comp_id >= DDP_COMPONENT_ID_MAX)
 		return -EINVAL;
@@ -404,6 +407,34 @@ int mtk_ddp_comp_init(struct device *dev, struct device_node *node,
 	}
 	comp->dev = &comp_pdev->dev;
 
+#ifdef CONFIG_MTK_CMDQ
+	if (of_address_to_resource(node, 0, &res) != 0) {
+		dev_err(dev, "Missing reg in %s node\n",
+			node->full_name);
+		return -EINVAL;
+	}
+	comp->regs_pa = res.start;
+
+	comp_pdev = of_find_device_by_node(node);
+	if (!comp_pdev) {
+		dev_warn(dev, "Waiting for component device %s\n",
+			 node->full_name);
+		return -EPROBE_DEFER;
+	}
+
+	cmdq_reg = kzalloc(sizeof(*cmdq_reg), GFP_KERNEL);
+	if (!cmdq_reg)
+		return -EINVAL;
+
+	ret = cmdq_dev_get_client_reg(&comp_pdev->dev, cmdq_reg, 0);
+	if (ret != 0)
+		dev_dbg(&comp_pdev->dev,
+			"get mediatek,gce-client-reg fail!\n");
+	else
+		comp->subsys = cmdq_reg->subsys;
+
+	kfree(cmdq_reg);
+#endif
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.c b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
index d7a8853d94a1..8e857ef512a2 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_plane.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
@@ -189,6 +189,8 @@ static void mtk_plane_atomic_update(struct drm_plane *plane,
 
 	if (state->pending.cursor_update)
 		state->pending.cursor_dirty = true;
+	else
+		mtk_drm_crtc_plane_update(crtc, plane, state);
 }
 
 static void mtk_plane_atomic_disable(struct drm_plane *plane,
@@ -199,6 +201,8 @@ static void mtk_plane_atomic_disable(struct drm_plane *plane,
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
