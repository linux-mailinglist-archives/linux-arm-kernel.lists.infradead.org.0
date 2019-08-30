Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B65A3124
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 09:39:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uLvThneJMJUjm2xZxZVmblkuTBwECrPsJdMBz1uFv9I=; b=MFZUE7S1XgN4ze
	5DbuiAASoj7Wg05XemvtBthl3Vk5EmTh25rmh1kpZPZvwJ4aGD9f2GZck3RUGzJc6+xboPTBY/et5
	Hy8/eM+Cf0DXJJzUzuwuakb0isUXtZbJcFOJus7riSf+aXwj27gusbmGokbhIWc6A3+1M3wzvyZD1
	h4ii/S8zJXeCaALdC15gJheb0+xQdCpvWvvI7nNl+QIJRPFYOm4OJggEy+AoCq8pfZ8mVPJgsObqn
	x0i2JAxTiEUDFDh38Hv7siqqHqKPeG2ueP02JSRHx0F//y8kHuwJV/mjffw4QEYCHb5bs/N0sMuMk
	oQhEESXmHZM2GFL8HHPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3bUw-0000zb-7j; Fri, 30 Aug 2019 07:39:06 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3bUN-0000jv-05; Fri, 30 Aug 2019 07:38:32 +0000
X-UUID: 38e0c717e4f445048f8b6aac4c07e664-20190829
X-UUID: 38e0c717e4f445048f8b6aac4c07e664-20190829
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1319229661; Thu, 29 Aug 2019 23:38:31 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 30 Aug 2019 00:38:30 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 30 Aug 2019 15:38:28 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 30 Aug 2019 15:38:28 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: David Airlie <airlied@linux.ie>, Matthias Brugger
 <matthias.bgg@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 <dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>
Subject: [PATCH 2/2] drm/mediatek: Bypass atomic helpers for cursor updates
Date: Fri, 30 Aug 2019 15:38:19 +0800
Message-ID: <20190830073819.16566-3-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190830073819.16566-1-bibby.hsieh@mediatek.com>
References: <20190830073819.16566-1-bibby.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_003831_040288_0F0D18EC 
X-CRM114-Status: GOOD (  17.84  )
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
 linux-kernel@vger.kernel.org, Daniel Kurtz <djkurtz@chromium.org>,
 tfiga@chromium.org, CK Hu <ck.hu@mediatek.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, YT Shen <yt.shen@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Moving the driver to atomic helpers regressed cursor responsiveness,
because cursor updates need their own atomic commits, which have to be
serialized with other commits, that might include fence waits. To avoid
this, in certain conditions, we can bypass the atomic helpers for legacy
cursor update IOCTLs. Currently the conditions are:
 - no asynchronous mode setting commit pending,
 - no asynchronous commit that updates the cursor plane is pending.
With the above two conditions met, we know that the manual cursor state
update will not conflict with any scheduled update.

Fixes: 119f5173628a ("drm/mediatek: Add DRM Driver for Mediatek SoC MT8173.")

Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
Signed-off-by: Daniel Kurtz <djkurtz@chromium.org>
---
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c  | 41 ++++++++++++-
 drivers/gpu/drm/mediatek/mtk_drm_crtc.h  |  2 +
 drivers/gpu/drm/mediatek/mtk_drm_drv.c   | 34 ++++++++++-
 drivers/gpu/drm/mediatek/mtk_drm_drv.h   |  3 +
 drivers/gpu/drm/mediatek/mtk_drm_plane.c | 73 +++++++++++++++++++++++-
 5 files changed, 148 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
index 7697b40baac0..092e502ed27b 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
@@ -40,7 +40,7 @@ struct mtk_drm_crtc {
 	struct drm_plane		*planes;
 	unsigned int			layer_nr;
 	bool				pending_planes;
-
+	bool                            cursor_update;
 	void __iomem			*config_regs;
 	const struct mtk_mmsys_reg_data *mmsys_reg_data;
 	struct mtk_disp_mutex		*mutex;
@@ -386,8 +386,45 @@ static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
 			}
 		}
 		mtk_crtc->pending_planes = false;
-		mtk_atomic_state_put_queue(atomic_state);
+		if (!mtk_crtc->cursor_update)
+			mtk_atomic_state_put_queue(atomic_state);
+		mtk_crtc->cursor_update = false;
+	}
+}
+
+void mtk_drm_crtc_cursor_update(struct drm_crtc *crtc, struct drm_plane *plane,
+				struct drm_plane_state *plane_state)
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
+	plane_helper_funcs->atomic_update(plane, plane_state);
+	for (i = 0; i < mtk_crtc->layer_nr; i++) {
+		struct drm_plane *plane = &mtk_crtc->planes[i];
+		struct mtk_plane_state *plane_state;
+
+		plane_state = to_mtk_plane_state(plane->state);
+		if (plane_state->pending.dirty) {
+			plane_state->pending.config = true;
+			plane_state->pending.dirty = false;
+		}
+	}
+	mtk_crtc->pending_planes = true;
+	mtk_crtc->cursor_update = true;
+
+	if (priv->data->shadow_register) {
+		mtk_disp_mutex_acquire(mtk_crtc->mutex);
+		mtk_crtc_ddp_config(crtc);
+		mtk_disp_mutex_release(mtk_crtc->mutex);
 	}
+	mutex_unlock(&priv->hw_lock);
 }
 
 static void mtk_drm_crtc_atomic_enable(struct drm_crtc *crtc,
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.h b/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
index fcc134eb00c9..46e903be68ec 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
@@ -19,5 +19,7 @@ void mtk_crtc_ddp_irq(struct drm_crtc *crtc, struct mtk_ddp_comp *comp);
 int mtk_drm_crtc_create(struct drm_device *drm_dev,
 			const enum mtk_ddp_comp_id *path,
 			unsigned int path_len);
+void mtk_drm_crtc_cursor_update(struct drm_crtc *crtc, struct drm_plane *plane,
+				struct drm_plane_state *plane_state);
 
 #endif /* MTK_DRM_CRTC_H */
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index b0308a3a7483..ca754b954c7c 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -80,11 +80,36 @@ static int mtk_atomic_get_crtcs(struct drm_device *drm,
 				struct drm_atomic_state *state)
 {
 	struct mtk_drm_private *private = drm->dev_private;
-	uint32_t crtc_mask;
+	uint32_t crtc_mask, needs_modeset, has_cursor_plane;
+	struct drm_plane *plane;
+	struct drm_plane_state *plane_state;
+	struct drm_crtc *crtc;
+	struct drm_crtc_state *crtc_state;
+	int i;
 	int ret;
 
 	crtc_mask = mtk_atomic_crtc_mask(drm, state);
 
+	/*
+	 * Allow cursor updates unless there is a pending modeset or cursor
+	 * plane update.
+	 */
+	needs_modeset = 0;
+	for_each_new_crtc_in_state(state, crtc, crtc_state, i) {
+		if (crtc && drm_atomic_crtc_needs_modeset(crtc_state)) {
+			needs_modeset |= (1 << drm_crtc_index(crtc));
+			break;
+		}
+	}
+
+	has_cursor_plane = 0;
+	for_each_new_plane_in_state(state, plane, plane_state, i) {
+		if (crtc && plane->crtc && plane == plane->crtc->cursor) {
+			has_cursor_plane |= (1 << drm_crtc_index(crtc));
+			break;
+		}
+	}
+
 	/*
 	 * Wait for all pending updates to complete for the set of crtcs being
 	 * changed in this atomic commit
@@ -94,6 +119,8 @@ static int mtk_atomic_get_crtcs(struct drm_device *drm,
 			!(private->commit.crtcs & crtc_mask));
 	if (ret == 0)
 		private->commit.crtcs |= crtc_mask;
+
+	private->commit.flush_for_cursor |= needs_modeset | has_cursor_plane;
 	spin_unlock(&private->commit.crtcs_event.lock);
 
 	return ret;
@@ -112,6 +139,7 @@ static void mtk_atomic_put_crtcs(struct drm_device *drm,
 
 	spin_lock(&private->commit.crtcs_event.lock);
 	private->commit.crtcs &= ~crtc_mask;
+	private->commit.flush_for_cursor &= ~crtc_mask;
 	wake_up_all_locked(&private->commit.crtcs_event);
 	spin_unlock(&private->commit.crtcs_event.lock);
 }
@@ -160,6 +188,7 @@ static void mtk_atomic_wait_for_fences(struct drm_atomic_state *state)
 static void mtk_atomic_complete(struct drm_device *drm,
 				struct drm_atomic_state *state)
 {
+	struct mtk_drm_private *private = drm->dev_private;
 	mtk_atomic_wait_for_fences(state);
 	/*
 	 * Mediatek drm supports runtime PM, so plane registers cannot be
@@ -175,10 +204,12 @@ static void mtk_atomic_complete(struct drm_device *drm,
 	 *
 	 * See the kerneldoc entries for these three functions for more details.
 	 */
+	mutex_lock(&private->hw_lock);
 	drm_atomic_helper_commit_modeset_disables(drm, state);
 	drm_atomic_helper_commit_modeset_enables(drm, state);
 	drm_atomic_helper_commit_planes(drm, state,
 					DRM_PLANE_COMMIT_ACTIVE_ONLY);
+	mutex_unlock(&private->hw_lock);
 
 	drm_atomic_helper_wait_for_vblanks(drm, state);
 
@@ -462,6 +493,7 @@ static int mtk_drm_kms_init(struct drm_device *drm)
 	INIT_LIST_HEAD(&private->unreference.list);
 	spin_lock_init(&private->unreference.lock);
 	init_waitqueue_head(&private->commit.crtcs_event);
+	mutex_init(&private->hw_lock);
 
 	return 0;
 
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.h b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
index 0934f83b860d..4a4c989803d9 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
@@ -50,6 +50,7 @@ struct mtk_drm_private {
 	struct {
 		uint32_t crtcs;
 		wait_queue_head_t crtcs_event;
+		uint32_t flush_for_cursor;
 	} commit;
 
 	struct drm_atomic_state *suspend_state;
@@ -58,6 +59,8 @@ struct mtk_drm_private {
 		struct list_head	list;
 		spinlock_t		lock;
 	} unreference;
+
+	struct mutex hw_lock;
 };
 
 extern struct platform_driver mtk_ddp_driver;
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.c b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
index f2ef83aed6f9..59dbdaf07425 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_plane.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
@@ -7,6 +7,7 @@
 #include <drm/drmP.h>
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_atomic_uapi.h>
 #include <drm/drm_plane_helper.h>
 
 #include "mtk_drm_crtc.h"
@@ -69,8 +70,71 @@ static void mtk_drm_plane_destroy_state(struct drm_plane *plane,
 	kfree(to_mtk_plane_state(state));
 }
 
+static int mtk_plane_cursor_update(struct drm_plane *plane,
+				   struct drm_crtc *crtc,
+				   struct drm_framebuffer *fb,
+				   int crtc_x, int crtc_y,
+				   unsigned int crtc_w, unsigned int crtc_h,
+				   uint32_t src_x, uint32_t src_y,
+				   uint32_t src_w, uint32_t src_h)
+{
+	struct drm_plane_state *plane_state;
+	const struct drm_plane_helper_funcs *plane_helper_funcs =
+			plane->helper_private;
+	int ret;
+
+	plane_state = plane->funcs->atomic_duplicate_state(plane);
+
+	plane_state->crtc_x = crtc_x;
+	plane_state->crtc_y = crtc_y;
+	plane_state->crtc_h = crtc_h;
+	plane_state->crtc_w = crtc_w;
+	plane_state->src_x = src_x;
+	plane_state->src_y = src_y;
+	plane_state->src_h = src_h;
+	plane_state->src_w = src_w;
+
+	drm_atomic_set_fb_for_plane(plane_state, fb);
+
+	ret = plane_helper_funcs->atomic_check(plane, plane_state);
+	if (ret)
+		goto err_destroy;
+
+	swap(plane_state, plane->state);
+
+	mtk_drm_crtc_cursor_update(crtc, plane, plane_state);
+
+err_destroy:
+	plane->funcs->atomic_destroy_state(plane, plane_state);
+	return ret;
+}
+
+static int mtk_plane_update(struct drm_plane *plane,
+			    struct drm_crtc *crtc,
+			    struct drm_framebuffer *fb,
+			    int crtc_x, int crtc_y,
+			    unsigned int crtc_w, unsigned int crtc_h,
+			    uint32_t src_x, uint32_t src_y,
+			    uint32_t src_w, uint32_t src_h,
+			    struct drm_modeset_acquire_ctx *ctx)
+{
+	struct mtk_drm_private *private = plane->dev->dev_private;
+	uint32_t crtc_mask = (1 << drm_crtc_index(crtc));
+
+	if (crtc && plane == crtc->cursor &&
+	    plane->state->crtc == crtc &&
+	    !(private->commit.flush_for_cursor & crtc_mask))
+		return mtk_plane_cursor_update(plane, crtc, fb,
+				crtc_x, crtc_y, crtc_w, crtc_h,
+				src_x, src_y, src_w, src_h);
+
+	return drm_atomic_helper_update_plane(plane, crtc, fb,
+					      crtc_x, crtc_y, crtc_w, crtc_h,
+					      src_x, src_y, src_w, src_h, ctx);
+}
+
 static const struct drm_plane_funcs mtk_plane_funcs = {
-	.update_plane = drm_atomic_helper_update_plane,
+	.update_plane = mtk_plane_update,
 	.disable_plane = drm_atomic_helper_disable_plane,
 	.destroy = drm_plane_cleanup,
 	.reset = mtk_plane_reset,
@@ -90,7 +154,12 @@ static int mtk_plane_atomic_check(struct drm_plane *plane,
 	if (!state->crtc)
 		return 0;
 
-	crtc_state = drm_atomic_get_crtc_state(state->state, state->crtc);
+	if (state->state)
+		crtc_state = drm_atomic_get_existing_crtc_state(state->state,
+								state->crtc);
+	else /* Special case for asynchronous cursor updates. */
+		crtc_state = state->crtc->state;
+
 	if (IS_ERR(crtc_state))
 		return PTR_ERR(crtc_state);
 
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
