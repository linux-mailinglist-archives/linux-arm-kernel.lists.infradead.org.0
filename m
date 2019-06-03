Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2678A335D9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 18:59:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WZOyIik23gIO4VFH4o1qwz09tQ7Qoa92LmUl4pvFBy0=; b=sEF1Y+mF5yHOT9
	2iWkEy8yAZ/dLgNtyV8R5f4HP2agRquSX7KiHt9VXlHIECt/KQlz4BfBTP6pg3m2R0z8jIHtzTclV
	Q6TAGcDfGVhx9r1l9IC1sTyySR4639oobbYO2aPRc2ubsEQcmeQbVQDER7Tqlv4TfmM9ycgUvEuwY
	mXaLHasYX16CcLrZqOP39WgyQONwrE7gkQ1EJm5gcC/+XQp53C1y7VRJzCUIrTBbsCJNaDpZUnQsP
	J0UvlxZBDcjcXFOx4MqiMicR+XGqtfBlqoUmG3xF+jwKdHKVUVrPuZCKwDPMGauKNzk2H1xM9IXQC
	W0+N3qriuNiWA51Uxi/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXqIq-0004Yw-IW; Mon, 03 Jun 2019 16:59:20 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXqGE-0001HZ-2F; Mon, 03 Jun 2019 16:57:09 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 57A39284AA2
From: Helen Koike <helen.koike@collabora.com>
To: dri-devel@lists.freedesktop.org,
	nicholas.kazlauskas@amd.com
Subject: [PATCH v4 1/5] drm/rockchip: fix fb references in async update
Date: Mon,  3 Jun 2019 13:56:06 -0300
Message-Id: <20190603165610.24614-2-helen.koike@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190603165610.24614-1-helen.koike@collabora.com>
References: <20190603165610.24614-1-helen.koike@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_095638_781697_0F72F2CF 
X-CRM114-Status: GOOD (  16.82  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: andrey.grodzovsky@amd.com,
 =?UTF-8?q?St=C3=A9phane=20Marchesin?= <marcheu@google.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Sean Paul <seanpaul@google.com>, Sandy Huang <hjc@rock-chips.com>,
 David Airlie <airlied@linux.ie>, daniel.vetter@ffwll.ch,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 linux-rockchip@lists.infradead.org, Helen Koike <helen.koike@collabora.com>,
 boris.brezillon@collabora.com, Daniel Vetter <daniel@ffwll.ch>,
 kernel@collabora.com, harry.wentland@amd.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the case of async update, modifications are done in place, i.e. in the
current plane state, so the new_state is prepared and the new_state is
cleaned up (instead of the old_state, unlike what happens in a
normal sync update).
To cleanup the old_fb properly, it needs to be placed in the new_state
in the end of async_update, so cleanup call will unreference the old_fb
correctly.

Also, the previous code had a:

	plane_state = plane->funcs->atomic_duplicate_state(plane);
	...
	swap(plane_state, plane->state);

	if (plane->state->fb && plane->state->fb != new_state->fb) {
	...
	}

Which was wrong, as the fb were just assigned to be equal, so this if
statement nevers evaluates to true.

Another details is that the function drm_crtc_vblank_get() can only be
called when vop->is_enabled is true, otherwise it has no effect and
trows a WARN_ON().

Calling drm_atomic_set_fb_for_plane() (which get a referent of the new
fb and pus the old fb) is not required, as it is taken care by
drm_mode_cursor_universal() when calling
drm_atomic_helper_update_plane().

Signed-off-by: Helen Koike <helen.koike@collabora.com>

---
Hello,

I tested on the rockchip ficus v1.1 using igt plane_cursor_legacy and
kms_cursor_legacy and I didn't see any regressions.

Changes in v4: None
Changes in v3:
- use swap() to swap old and new framebuffers in async_update
- get the reference to old_fb and set the worker after vop_plane_atomic_update()
- add a FIXME tag for when we have multiple fbs to be released when
vblank happens.
- update commit message

Changes in v2: None

 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 51 +++++++++++----------
 1 file changed, 26 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 4189ca17f381..b7c47d1153c6 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -919,29 +919,17 @@ static void vop_plane_atomic_async_update(struct drm_plane *plane,
 					  struct drm_plane_state *new_state)
 {
 	struct vop *vop = to_vop(plane->state->crtc);
-	struct drm_plane_state *plane_state;
-
-	plane_state = plane->funcs->atomic_duplicate_state(plane);
-	plane_state->crtc_x = new_state->crtc_x;
-	plane_state->crtc_y = new_state->crtc_y;
-	plane_state->crtc_h = new_state->crtc_h;
-	plane_state->crtc_w = new_state->crtc_w;
-	plane_state->src_x = new_state->src_x;
-	plane_state->src_y = new_state->src_y;
-	plane_state->src_h = new_state->src_h;
-	plane_state->src_w = new_state->src_w;
-
-	if (plane_state->fb != new_state->fb)
-		drm_atomic_set_fb_for_plane(plane_state, new_state->fb);
-
-	swap(plane_state, plane->state);
-
-	if (plane->state->fb && plane->state->fb != new_state->fb) {
-		drm_framebuffer_get(plane->state->fb);
-		WARN_ON(drm_crtc_vblank_get(plane->state->crtc) != 0);
-		drm_flip_work_queue(&vop->fb_unref_work, plane->state->fb);
-		set_bit(VOP_PENDING_FB_UNREF, &vop->pending);
-	}
+	struct drm_framebuffer *old_fb = plane->state->fb;
+
+	plane->state->crtc_x = new_state->crtc_x;
+	plane->state->crtc_y = new_state->crtc_y;
+	plane->state->crtc_h = new_state->crtc_h;
+	plane->state->crtc_w = new_state->crtc_w;
+	plane->state->src_x = new_state->src_x;
+	plane->state->src_y = new_state->src_y;
+	plane->state->src_h = new_state->src_h;
+	plane->state->src_w = new_state->src_w;
+	swap(plane->state->fb, new_state->fb);
 
 	if (vop->is_enabled) {
 		rockchip_drm_psr_inhibit_get_state(new_state->state);
@@ -950,9 +938,22 @@ static void vop_plane_atomic_async_update(struct drm_plane *plane,
 		vop_cfg_done(vop);
 		spin_unlock(&vop->reg_lock);
 		rockchip_drm_psr_inhibit_put_state(new_state->state);
-	}
 
-	plane->funcs->atomic_destroy_state(plane, plane_state);
+		/*
+		 * A scanout can still be occurring, so we can't drop the
+		 * reference to the old framebuffer. To solve this we get a
+		 * reference to old_fb and set a worker to release it later.
+		 * FIXME: if we perform 500 async_update calls before the
+		 * vblank, then we can have 500 different framebuffers waiting
+		 * to be released.
+		 */
+		if (old_fb && plane->state->fb != old_fb) {
+			drm_framebuffer_get(old_fb);
+			WARN_ON(drm_crtc_vblank_get(plane->state->crtc) != 0);
+			drm_flip_work_queue(&vop->fb_unref_work, old_fb);
+			set_bit(VOP_PENDING_FB_UNREF, &vop->pending);
+		}
+	}
 }
 
 static const struct drm_plane_helper_funcs plane_helper_funcs = {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
