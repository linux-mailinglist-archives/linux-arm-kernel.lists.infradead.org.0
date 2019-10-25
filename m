Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9944CE42F9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 07:39:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xuacnbVDi1rkvkJxDwWXgFOu75H54/AKIbv2SqrU/ig=; b=LH3ISRi/mjYt8a
	Ong3j6F75UUEq33DIftWAMWDDY+glEC+nvi/SKzgzcAuEQkyPuguTNMcU0I74t98SV4qXID+e2y/f
	E5g0gAUrKgaURkjs0lZsUsQnhKuH1hnT7F7UJgL2wgOEsm4zBxqMPEOjamKac/cNNiJ3+cZOKDyB4
	3YBMmSntNN4z8lUA5uYf4kodBZNSocom11/B/TthHiDWie+HWu/ZXFzlT+wEeyL/l/w3JBXRY27iG
	oiRw8HkXzYIsscnov9jJ1FPnyNNLyQ45fIrjYWESSc/+zlaETJ5o6hOzmX6hfMsptGr1drb3cwti5
	5VENia7yIfkeDMfOtTPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNsJi-0000xE-V9; Fri, 25 Oct 2019 05:39:18 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNsJJ-0000nv-Sp; Fri, 25 Oct 2019 05:38:55 +0000
X-UUID: 1caa4a68121a4a5580afeeadb0893b78-20191024
X-UUID: 1caa4a68121a4a5580afeeadb0893b78-20191024
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 457546342; Thu, 24 Oct 2019 21:38:47 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 24 Oct 2019 22:38:43 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 25 Oct 2019 13:38:42 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 25 Oct 2019 13:38:43 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: David Airlie <airlied@linux.ie>, Matthias Brugger
 <matthias.bgg@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 <dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>
Subject: [PATCH] drm/mediatek: covert to helper nonblocking atomic commit
Date: Fri, 25 Oct 2019 13:38:41 +0800
Message-ID: <20191025053843.16808-1-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_223853_942442_EF3A92E7 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

In order to commit state asynchronously, we change
.atomic_commit to drm_atomic_helper_commit().

Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 11 ++++
 drivers/gpu/drm/mediatek/mtk_drm_drv.c  | 86 ++-----------------------
 drivers/gpu/drm/mediatek/mtk_drm_drv.h  |  7 --
 3 files changed, 16 insertions(+), 88 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
index b97eb5f58483..b07dc9b59ca3 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
@@ -317,6 +317,7 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
 static void mtk_crtc_ddp_hw_fini(struct mtk_drm_crtc *mtk_crtc)
 {
 	struct drm_device *drm = mtk_crtc->base.dev;
+	struct drm_crtc *crtc = &mtk_crtc->base;
 	int i;
 
 	DRM_DEBUG_DRIVER("%s\n", __func__);
@@ -340,6 +341,13 @@ static void mtk_crtc_ddp_hw_fini(struct mtk_drm_crtc *mtk_crtc)
 	mtk_disp_mutex_unprepare(mtk_crtc->mutex);
 
 	pm_runtime_put(drm->dev);
+
+	if (crtc->state->event && !crtc->state->active) {
+		spin_lock_irq(&crtc->dev->event_lock);
+		drm_crtc_send_vblank_event(crtc, crtc->state->event);
+		crtc->state->event = NULL;
+		spin_unlock_irq(&crtc->dev->event_lock);
+	}
 }
 
 static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
@@ -456,12 +464,15 @@ static void mtk_drm_crtc_atomic_begin(struct drm_crtc *crtc,
 	if (mtk_crtc->event && state->base.event)
 		DRM_ERROR("new event while there is still a pending event\n");
 
+	spin_lock_irq(&crtc->dev->event_lock);
 	if (state->base.event) {
 		state->base.event->pipe = drm_crtc_index(crtc);
 		WARN_ON(drm_crtc_vblank_get(crtc) != 0);
+		WARN_ON(mtk_crtc->event);
 		mtk_crtc->event = state->base.event;
 		state->base.event = NULL;
 	}
+	spin_unlock_irq(&crtc->dev->event_lock);
 }
 
 static void mtk_drm_crtc_atomic_flush(struct drm_crtc *crtc,
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index 6588dc6dd5e3..16e5771d182e 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -36,89 +36,14 @@
 #define DRIVER_MAJOR 1
 #define DRIVER_MINOR 0
 
-static void mtk_atomic_schedule(struct mtk_drm_private *private,
-				struct drm_atomic_state *state)
-{
-	private->commit.state = state;
-	schedule_work(&private->commit.work);
-}
-
-static void mtk_atomic_complete(struct mtk_drm_private *private,
-				struct drm_atomic_state *state)
-{
-	struct drm_device *drm = private->drm;
-
-	drm_atomic_helper_wait_for_fences(drm, state, false);
-
-	/*
-	 * Mediatek drm supports runtime PM, so plane registers cannot be
-	 * written when their crtc is disabled.
-	 *
-	 * The comment for drm_atomic_helper_commit states:
-	 *     For drivers supporting runtime PM the recommended sequence is
-	 *
-	 *     drm_atomic_helper_commit_modeset_disables(dev, state);
-	 *     drm_atomic_helper_commit_modeset_enables(dev, state);
-	 *     drm_atomic_helper_commit_planes(dev, state,
-	 *                                     DRM_PLANE_COMMIT_ACTIVE_ONLY);
-	 *
-	 * See the kerneldoc entries for these three functions for more details.
-	 */
-	drm_atomic_helper_commit_modeset_disables(drm, state);
-	drm_atomic_helper_commit_modeset_enables(drm, state);
-	drm_atomic_helper_commit_planes(drm, state,
-					DRM_PLANE_COMMIT_ACTIVE_ONLY);
-
-	drm_atomic_helper_wait_for_vblanks(drm, state);
-
-	drm_atomic_helper_cleanup_planes(drm, state);
-	drm_atomic_state_put(state);
-}
-
-static void mtk_atomic_work(struct work_struct *work)
-{
-	struct mtk_drm_private *private = container_of(work,
-			struct mtk_drm_private, commit.work);
-
-	mtk_atomic_complete(private, private->commit.state);
-}
-
-static int mtk_atomic_commit(struct drm_device *drm,
-			     struct drm_atomic_state *state,
-			     bool async)
-{
-	struct mtk_drm_private *private = drm->dev_private;
-	int ret;
-
-	ret = drm_atomic_helper_prepare_planes(drm, state);
-	if (ret)
-		return ret;
-
-	mutex_lock(&private->commit.lock);
-	flush_work(&private->commit.work);
-
-	ret = drm_atomic_helper_swap_state(state, true);
-	if (ret) {
-		mutex_unlock(&private->commit.lock);
-		drm_atomic_helper_cleanup_planes(drm, state);
-		return ret;
-	}
-
-	drm_atomic_state_get(state);
-	if (async)
-		mtk_atomic_schedule(private, state);
-	else
-		mtk_atomic_complete(private, state);
-
-	mutex_unlock(&private->commit.lock);
-
-	return 0;
-}
+static const struct drm_mode_config_helper_funcs mtk_drm_mode_config_helpers = {
+	.atomic_commit_tail = drm_atomic_helper_commit_tail_rpm,
+};
 
 static const struct drm_mode_config_funcs mtk_drm_mode_config_funcs = {
 	.fb_create = mtk_drm_mode_fb_create,
 	.atomic_check = drm_atomic_helper_check,
-	.atomic_commit = mtk_atomic_commit,
+	.atomic_commit = drm_atomic_helper_commit,
 };
 
 static const enum mtk_ddp_comp_id mt2701_mtk_ddp_main[] = {
@@ -265,6 +190,7 @@ static int mtk_drm_kms_init(struct drm_device *drm)
 	drm->mode_config.max_width = 4096;
 	drm->mode_config.max_height = 4096;
 	drm->mode_config.funcs = &mtk_drm_mode_config_funcs;
+	drm->mode_config.helper_private = &mtk_drm_mode_config_helpers;
 
 	ret = component_bind_all(drm->dev, drm);
 	if (ret)
@@ -540,8 +466,6 @@ static int mtk_drm_probe(struct platform_device *pdev)
 	if (!private)
 		return -ENOMEM;
 
-	mutex_init(&private->commit.lock);
-	INIT_WORK(&private->commit.work, mtk_atomic_work);
 	private->data = of_device_get_match_data(dev);
 
 	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.h b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
index b6a82728d563..9f4ce60174f6 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
@@ -46,13 +46,6 @@ struct mtk_drm_private {
 	struct device_node *comp_node[DDP_COMPONENT_ID_MAX];
 	struct mtk_ddp_comp *ddp_comp[DDP_COMPONENT_ID_MAX];
 	const struct mtk_mmsys_driver_data *data;
-
-	struct {
-		struct drm_atomic_state *state;
-		struct work_struct work;
-		struct mutex lock;
-	} commit;
-
 	struct drm_atomic_state *suspend_state;
 
 	bool dma_parms_allocated;
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
