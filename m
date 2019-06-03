Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5FF335DC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 18:59:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jVvFaJPvU9H/1pf9+3E0BV5mlFipYmXZH2wHY+vlK/E=; b=lAmlANcNzVASYt
	s04P5+5eI8e8kHznurLMziouPTuIJ2mGd7i4NfCb1QrmaAxdQqTcRe9/e8I7xMlECf+XPzidoqO6U
	Em2oRQkFZOMkXA7rN9pjzXgzf03b3muG5umixN36BdBdyYLqLWl20uYTq/JAgIA3Uv2BKHlQDJREh
	IJ8ptNtFdSTor5NzWyJrX6yOqQGyehE4hwj0WK4FRaIkqstcQlQMBFVaLF97tyUIl81Kn83rw+Hs+
	heOINadlhqJIrTODxZwOgOB8agES/Br2g4tqYNC1YBeyonMMQibdRjh7QIgEZ7D0fBppeRE5HFmNk
	2YKTBNhtvLoUMdGxVREg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXqJF-00056H-Fq; Mon, 03 Jun 2019 16:59:45 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXqGc-0001nN-TR; Mon, 03 Jun 2019 16:57:48 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 1DD31284FB7
From: Helen Koike <helen.koike@collabora.com>
To: dri-devel@lists.freedesktop.org,
	nicholas.kazlauskas@amd.com
Subject: [PATCH v4 5/5] drm: don't block fb changes for async plane updates
Date: Mon,  3 Jun 2019 13:56:10 -0300
Message-Id: <20190603165610.24614-6-helen.koike@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190603165610.24614-1-helen.koike@collabora.com>
References: <20190603165610.24614-1-helen.koike@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_095703_884524_8F7D803A 
X-CRM114-Status: GOOD (  18.69  )
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Sean Paul <seanpaul@google.com>, David Airlie <airlied@linux.ie>,
 daniel.vetter@ffwll.ch, linux-kernel@vger.kernel.org, eric@anholt.net,
 kernel@collabora.com, Maxime Ripard <maxime.ripard@bootlin.com>,
 amd-gfx@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 harry.wentland@amd.com, andrey.grodzovsky@amd.com,
 linux-arm-msm@vger.kernel.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Helen Koike <helen.koike@collabora.com>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?St=C3=A9phane=20Marchesin?= <marcheu@google.com>,
 Sandy Huang <hjc@rock-chips.com>, stable@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, robdclark@gmail.com,
 boris.brezillon@collabora.com, Daniel Vetter <daniel@ffwll.ch>,
 freedreno@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the case of a normal sync update, the preparation of framebuffers (be
it calling drm_atomic_helper_prepare_planes() or doing setups with
drm_framebuffer_get()) are performed in the new_state and the respective
cleanups are performed in the old_state.

In the case of async updates, the preparation is also done in the
new_state but the cleanups are done in the new_state (because updates
are performed in place, i.e. in the current state).

The current code blocks async udpates when the fb is changed, turning
async updates into sync updates, slowing down cursor updates and
introducing regressions in igt tests with errors of type:

"CRITICAL: completed 97 cursor updated in a period of 30 flips, we
expect to complete approximately 15360 updates, with the threshold set
at 7680"

Fb changes in async updates were prevented to avoid the following scenario:

- Async update, oldfb = NULL, newfb = fb1, prepare fb1, cleanup fb1
- Async update, oldfb = fb1, newfb = fb2, prepare fb2, cleanup fb2
- Non-async commit, oldfb = fb2, newfb = fb1, prepare fb1, cleanup fb2 (wrong)
Where we have a single call to prepare fb2 but double cleanup call to fb2.

To solve the above problems, instead of blocking async fb changes, we
place the old framebuffer in the new_state object, so when the code
performs cleanups in the new_state it will cleanup the old_fb and we
will have the following scenario instead:

- Async update, oldfb = NULL, newfb = fb1, prepare fb1, no cleanup
- Async update, oldfb = fb1, newfb = fb2, prepare fb2, cleanup fb1
- Non-async commit, oldfb = fb2, newfb = fb1, prepare fb1, cleanup fb2

Where calls to prepare/cleanup are balanced.

Cc: <stable@vger.kernel.org> # v4.14+
Fixes: 25dc194b34dd ("drm: Block fb changes for async plane updates")
Suggested-by: Boris Brezillon <boris.brezillon@collabora.com>
Signed-off-by: Helen Koike <helen.koike@collabora.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
Reviewed-by: Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>

---

Changes in v4:
- update docs in atomic_async_update callback

Changes in v3:
- Add Reviewed-by tags
- Add TODO in drm_atomic_helper_async_commit()

Changes in v2:
- Change the order of the patch in the series, add this as the last one.
- Add documentation
- s/ballanced/balanced

 drivers/gpu/drm/drm_atomic_helper.c      | 22 ++++++++++++----------
 include/drm/drm_modeset_helper_vtables.h |  8 ++++++++
 2 files changed, 20 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
index acf993cb8e52..ac81d8440b40 100644
--- a/drivers/gpu/drm/drm_atomic_helper.c
+++ b/drivers/gpu/drm/drm_atomic_helper.c
@@ -1610,15 +1610,6 @@ int drm_atomic_helper_async_check(struct drm_device *dev,
 	    old_plane_state->crtc != new_plane_state->crtc)
 		return -EINVAL;
 
-	/*
-	 * FIXME: Since prepare_fb and cleanup_fb are always called on
-	 * the new_plane_state for async updates we need to block framebuffer
-	 * changes. This prevents use of a fb that's been cleaned up and
-	 * double cleanups from occuring.
-	 */
-	if (old_plane_state->fb != new_plane_state->fb)
-		return -EINVAL;
-
 	funcs = plane->helper_private;
 	if (!funcs->atomic_async_update)
 		return -EINVAL;
@@ -1649,6 +1640,8 @@ EXPORT_SYMBOL(drm_atomic_helper_async_check);
  * drm_atomic_async_check() succeeds. Async commits are not supposed to swap
  * the states like normal sync commits, but just do in-place changes on the
  * current state.
+ *
+ * TODO: Implement full swap instead of doing in-place changes.
  */
 void drm_atomic_helper_async_commit(struct drm_device *dev,
 				    struct drm_atomic_state *state)
@@ -1659,6 +1652,9 @@ void drm_atomic_helper_async_commit(struct drm_device *dev,
 	int i;
 
 	for_each_new_plane_in_state(state, plane, plane_state, i) {
+		struct drm_framebuffer *new_fb = plane_state->fb;
+		struct drm_framebuffer *old_fb = plane->state->fb;
+
 		funcs = plane->helper_private;
 		funcs->atomic_async_update(plane, plane_state);
 
@@ -1667,11 +1663,17 @@ void drm_atomic_helper_async_commit(struct drm_device *dev,
 		 * plane->state in-place, make sure at least common
 		 * properties have been properly updated.
 		 */
-		WARN_ON_ONCE(plane->state->fb != plane_state->fb);
+		WARN_ON_ONCE(plane->state->fb != new_fb);
 		WARN_ON_ONCE(plane->state->crtc_x != plane_state->crtc_x);
 		WARN_ON_ONCE(plane->state->crtc_y != plane_state->crtc_y);
 		WARN_ON_ONCE(plane->state->src_x != plane_state->src_x);
 		WARN_ON_ONCE(plane->state->src_y != plane_state->src_y);
+
+		/*
+		 * Make sure the FBs have been swapped so that cleanups in the
+		 * new_state performs a cleanup in the old FB.
+		 */
+		WARN_ON_ONCE(plane_state->fb != old_fb);
 	}
 }
 EXPORT_SYMBOL(drm_atomic_helper_async_commit);
diff --git a/include/drm/drm_modeset_helper_vtables.h b/include/drm/drm_modeset_helper_vtables.h
index f9c94c2a1364..f7bbd0b0ecd1 100644
--- a/include/drm/drm_modeset_helper_vtables.h
+++ b/include/drm/drm_modeset_helper_vtables.h
@@ -1185,6 +1185,14 @@ struct drm_plane_helper_funcs {
 	 * current one with the new plane configurations in the new
 	 * plane_state.
 	 *
+	 * Drivers should also swap the framebuffers between current plane
+	 * state (&drm_plane.state) and new_state.
+	 * This is required since cleanup for async commits is performed on
+	 * the new state, rather than old state like for traditional commits.
+	 * Since we want to give up the reference on the current (old) fb
+	 * instead of our brand new one, swap them in the driver during the
+	 * async commit.
+	 *
 	 * FIXME:
 	 *  - It only works for single plane updates
 	 *  - Async Pageflips are not supported yet
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
