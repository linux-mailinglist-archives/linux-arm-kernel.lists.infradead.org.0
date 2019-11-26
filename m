Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9168109950
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 07:40:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S1AxHAu3R4pDCEKKCo/tc9SvU/LUUCELPaiSINkOxFI=; b=echL9Sg+fRfMs8
	eDk4LCdjCvU19q9riJDBFoozoGevJRz0tb/nh8tdwa7sT9IjtE/haprqw1o175DuyUmeI6dETQJRC
	lv8w5gKOpIpCROhl6tDANAcJcn40byel3L+HC4reHLaTkvowlk2DxKD+WSC36bXbaNitN1pD+L7Pk
	WFQ8t0VBKVRjrYgH4nxXKtgLJGPfNKxXHmkhgI9tD6zy1HNzN2vNPiv4R/9XrVETi7YrUDvJq0mDR
	0/oRfOs6AA8ZEcPq6L6NBEYNZKgD+pRHogyoq38SHvzcaNc5NJQ7RTgBG3vMvHjEzpliPoZVef5Ap
	jYhRYIl5NRRKgHcysbHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZUWF-0002bP-JI; Tue, 26 Nov 2019 06:40:15 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZUVg-0002OL-0X; Tue, 26 Nov 2019 06:39:41 +0000
X-UUID: 31561b7af139497bb9bc0d35f12c698a-20191125
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=Qp6ClDPIXeK2bCy7c/Xq118mHkXeUzIyZ4WImgi/Uu8=; 
 b=b6wWn+8NR1VxEdbbHlfgQPNQx+eMmCg/wJKDvafWyx74KhHow0mlxxqWUbF6jkRd8MNON0yyht9hfNFQOMX83raT5USJ+l+h6yaUyTwALdeHWvDbb/ZqaBnp5VgbdQwFOfggI8TJpa6HSY9F2nOQpxVX2k29z4pqLzguAUxtOuc=;
X-UUID: 31561b7af139497bb9bc0d35f12c698a-20191125
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1000850949; Mon, 25 Nov 2019 22:39:33 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 25 Nov 2019 22:30:08 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 26 Nov 2019 14:29:26 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 26 Nov 2019 14:29:15 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: David Airlie <airlied@linux.ie>, Matthias Brugger
 <matthias.bgg@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 <dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>
Subject: [PATCH 5/7] drm/mediatek: update cursors by using async atomic update
Date: Tue, 26 Nov 2019 14:29:30 +0800
Message-ID: <20191126062932.19773-6-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191126062932.19773-1-bibby.hsieh@mediatek.com>
References: <20191126062932.19773-1-bibby.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_223940_060414_A1BDFA90 
X-CRM114-Status: GOOD (  16.28  )
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
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org, tfiga@chromium.org,
 CK Hu <ck.hu@mediatek.com>, Thierry Reding <thierry.reding@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, YT Shen <yt.shen@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Support to async updates of cursors by using the new atomic
interface for that.

Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c  | 41 ++++++++++++++++++-
 drivers/gpu/drm/mediatek/mtk_drm_crtc.h  |  3 ++
 drivers/gpu/drm/mediatek/mtk_drm_drv.c   |  4 ++
 drivers/gpu/drm/mediatek/mtk_drm_drv.h   |  3 +-
 drivers/gpu/drm/mediatek/mtk_drm_plane.c | 50 ++++++++++++++++++++++++
 drivers/gpu/drm/mediatek/mtk_drm_plane.h |  2 +
 6 files changed, 100 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
index 408a6d6a15ba..c457591a176e 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
@@ -41,7 +41,7 @@ struct mtk_drm_crtc {
 	struct drm_plane		*planes;
 	unsigned int			layer_nr;
 	bool				pending_planes;
-
+	bool                            cursor_update;
 	void __iomem			*config_regs;
 	const struct mtk_mmsys_reg_data *mmsys_reg_data;
 	struct mtk_disp_mutex		*mutex;
@@ -409,7 +409,9 @@ static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
 			plane_state->pending.config = false;
 		}
 		mtk_crtc->pending_planes = false;
-		mtk_atomic_state_put_queue(atomic_state);
+		if (!mtk_crtc->cursor_update)
+			mtk_atomic_state_put_queue(atomic_state);
+		mtk_crtc->cursor_update = false;
 	}
 }
 
@@ -425,6 +427,41 @@ int mtk_drm_crtc_plane_check(struct drm_crtc *crtc, struct drm_plane *plane,
 	return 0;
 }
 
+void mtk_drm_crtc_cursor_update(struct drm_crtc *crtc, struct drm_plane *plane,
+				struct drm_plane_state *new_state)
+{
+	struct mtk_drm_private *priv = crtc->dev->dev_private;
+	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
+	const struct drm_plane_helper_funcs *plane_helper_funcs =
+			plane->helper_private;
+	int i;
+
+	if (!mtk_crtc->enabled)
+		return;
+
+	mutex_lock(&priv->hw_lock);
+	plane_helper_funcs->atomic_update(plane, new_state);
+
+	for (i = 0; i < mtk_crtc->layer_nr; i++) {
+		struct drm_plane *plane = &mtk_crtc->planes[i];
+		struct mtk_plane_state *plane_state;
+
+		plane_state = to_mtk_plane_state(plane->state);
+		if (plane_state->pending.cursor_dirty) {
+			plane_state->pending.config = true;
+			plane_state->pending.cursor_update = false;
+			plane_state->pending.cursor_dirty = false;
+		}
+	}
+	mtk_crtc->pending_planes = true;
+	if (priv->data->shadow_register) {
+		mtk_disp_mutex_acquire(mtk_crtc->mutex);
+		mtk_crtc_ddp_config(crtc);
+		mtk_disp_mutex_release(mtk_crtc->mutex);
+	}
+	mutex_unlock(&priv->hw_lock);
+}
+
 static void mtk_drm_crtc_atomic_enable(struct drm_crtc *crtc,
 				       struct drm_crtc_state *old_state)
 {
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.h b/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
index 6afe1c19557a..42a3f650f564 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
@@ -22,4 +22,7 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
 int mtk_drm_crtc_plane_check(struct drm_crtc *crtc, struct drm_plane *plane,
 			     struct mtk_plane_state *state);
 
+void mtk_drm_crtc_cursor_update(struct drm_crtc *crtc, struct drm_plane *plane,
+				struct drm_plane_state *plane_state);
+
 #endif /* MTK_DRM_CRTC_H */
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index 97949dee2af0..3884a89a07e6 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -40,12 +40,15 @@ static void mtk_drm_atomic_helper_commit_tail_rpm
 		(struct drm_atomic_state *old_state)
 {
 	struct drm_device *dev = old_state->dev;
+	struct mtk_drm_private *private = dev->dev_private;
 
 	drm_atomic_helper_wait_for_fences(dev, old_state, false);
+	mutex_lock(&private->hw_lock);
 	drm_atomic_helper_commit_modeset_disables(dev, old_state);
 	drm_atomic_helper_commit_modeset_enables(dev, old_state);
 	drm_atomic_helper_commit_planes(dev, old_state,
 					DRM_PLANE_COMMIT_ACTIVE_ONLY);
+	mutex_unlock(&private->hw_lock);
 	drm_atomic_helper_fake_vblank(old_state);
 	drm_atomic_helper_commit_hw_done(old_state);
 	drm_atomic_helper_wait_for_vblanks(dev, old_state);
@@ -357,6 +360,7 @@ static int mtk_drm_kms_init(struct drm_device *drm)
 	INIT_WORK(&private->unreference.work, mtk_unreference_work);
 	INIT_LIST_HEAD(&private->unreference.list);
 	spin_lock_init(&private->unreference.lock);
+	mutex_init(&private->hw_lock);
 
 	return 0;
 
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.h b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
index 3c42383dedb0..043bd2d210f2 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
@@ -54,7 +54,8 @@ struct mtk_drm_private {
 		/* lock for unreference list */
 		spinlock_t		lock;
 	} unreference;
-
+	/* lock for display hw access */
+	struct mutex hw_lock;
 	bool dma_parms_allocated;
 };
 
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.c b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
index cd7c97eb7ee6..d7a8853d94a1 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_plane.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
@@ -7,6 +7,7 @@
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_fourcc.h>
+#include <drm/drm_atomic_uapi.h>
 #include <drm/drm_plane_helper.h>
 #include <drm/drm_gem_framebuffer_helper.h>
 
@@ -70,6 +71,50 @@ static void mtk_drm_plane_destroy_state(struct drm_plane *plane,
 	kfree(to_mtk_plane_state(state));
 }
 
+static int mtk_plane_atomic_async_check(struct drm_plane *plane,
+					struct drm_plane_state *state)
+{
+	struct drm_crtc_state *crtc_state;
+
+	if (plane != state->crtc->cursor)
+		return -EINVAL;
+
+	if (!plane->state)
+		return -EINVAL;
+
+	if (!plane->state->fb)
+		return -EINVAL;
+
+	if (state->state)
+		crtc_state = drm_atomic_get_existing_crtc_state(state->state,
+								state->crtc);
+	else /* Special case for asynchronous cursor updates. */
+		crtc_state = state->crtc->state;
+
+	return drm_atomic_helper_check_plane_state(plane->state, crtc_state,
+						   DRM_PLANE_HELPER_NO_SCALING,
+						   DRM_PLANE_HELPER_NO_SCALING,
+						   true, true);
+}
+
+static void mtk_plane_atomic_async_update(struct drm_plane *plane,
+					  struct drm_plane_state *new_state)
+{
+	struct mtk_plane_state *state = to_mtk_plane_state(plane->state);
+
+	plane->state->crtc_x = new_state->crtc_x;
+	plane->state->crtc_y = new_state->crtc_y;
+	plane->state->crtc_h = new_state->crtc_h;
+	plane->state->crtc_w = new_state->crtc_w;
+	plane->state->src_x = new_state->src_x;
+	plane->state->src_y = new_state->src_y;
+	plane->state->src_h = new_state->src_h;
+	plane->state->src_w = new_state->src_w;
+	state->pending.cursor_update = true;
+
+	mtk_drm_crtc_cursor_update(new_state->crtc, plane, new_state);
+}
+
 static const struct drm_plane_funcs mtk_plane_funcs = {
 	.update_plane = drm_atomic_helper_update_plane,
 	.disable_plane = drm_atomic_helper_disable_plane,
@@ -141,6 +186,9 @@ static void mtk_plane_atomic_update(struct drm_plane *plane,
 	state->pending.rotation = plane->state->rotation;
 	wmb(); /* Make sure the above parameters are set before update */
 	state->pending.dirty = true;
+
+	if (state->pending.cursor_update)
+		state->pending.cursor_dirty = true;
 }
 
 static void mtk_plane_atomic_disable(struct drm_plane *plane,
@@ -158,6 +206,8 @@ static const struct drm_plane_helper_funcs mtk_plane_helper_funcs = {
 	.atomic_check = mtk_plane_atomic_check,
 	.atomic_update = mtk_plane_atomic_update,
 	.atomic_disable = mtk_plane_atomic_disable,
+	.atomic_async_update = mtk_plane_atomic_async_update,
+	.atomic_async_check = mtk_plane_atomic_async_check,
 };
 
 int mtk_plane_init(struct drm_device *dev, struct drm_plane *plane,
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.h b/drivers/gpu/drm/mediatek/mtk_drm_plane.h
index 760885e35b27..113a10344805 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_plane.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.h
@@ -22,6 +22,8 @@ struct mtk_plane_pending_state {
 	unsigned int			height;
 	unsigned int			rotation;
 	bool				dirty;
+	bool				cursor_dirty;
+	bool				cursor_update;
 };
 
 struct mtk_plane_state {
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
