Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DBC54380B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 17:03:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5OW641+Btidyxwdxw2Bo7qqlyBTHzhGcuiLn1R3+4EI=; b=ipqBxX8Fpk0izd
	SvWp/p/nVtun6R9b1MKVF2B49pBwwYeBubkyVQZgkvPzFKhAhtt+Lf/lURNlPZbaEGfeubjOyOCxd
	zITJKnrf0Ct1OTw2wSSVdg7o8GcD3feBew7oIJtveV8OKjOvDWEPGus6ajVUvLSsDmMPO83R6w8OO
	DuA8JZU+qkhjp9vSFJFY2/TgHceHv0bgWbCcS9zdBbLifT+SR9Ge64V9GxM38cOnGlPNS1++oyq5T
	EHhWKnmUonRJLcbpg9OZtNdDfgYKnh7eJiWQWJ3UFh4n37QCTg0CuxfzIQDowq5rez7pWlQHPoijc
	hnUxDXz9N39ho+EPvYZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbRGB-0002rr-P7; Thu, 13 Jun 2019 15:03:27 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbRF7-00024t-1r
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 15:02:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xUxIEk9FFkGTScSPPU0dStobLHjlF6/sMYo+q3wwpfE=; b=mv0oLq5Ar7pXvKP3LZ5DPcbPmn
 5Bsaho24k5Ok1qFr/V1K+iengOrkrm/w2vQVBYnKoC0bxV9eQ63lwCaihrP1wDmbn8lQmo7n5DSL4
 1z4P1oO65pRzpC6bfQr+EvSLRoFAjcDCAXfllZe7dNGgPLd0PDmDM9VQ5RxzIsgk4UYqtPRgvKggk
 lkYsUuZksSBF8wkApiE65LjSyV4bbgb5boeOXJIj9gWVrmnx9kQu/9JViONGtlIEF64VTkZ0qWxq2
 sl94kEaKHUhXXj+AbtyCT+M18FOU69/N4p/9wlmIjBZ4hcuypchatO/YgXkmvNjtVxPvTkdFak/y3
 Iv8zlELQ==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:35398 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hbREq-0003jX-HZ; Thu, 13 Jun 2019 16:02:04 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hbREo-000070-9I; Thu, 13 Jun 2019 16:02:02 +0100
In-Reply-To: <20190613150114.xqkyb7j7w4ve4yvr@shell.armlinux.org.uk>
References: <20190613150114.xqkyb7j7w4ve4yvr@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 04/18] drm/armada: fix plane location and size for interlace
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hbREo-000070-9I@rmk-PC.armlinux.org.uk>
Date: Thu, 13 Jun 2019 16:02:02 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_080221_428265_A1C2C146 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When the CRTC is programmed for interlace, we have to halve the Y
parameters for the plane.  Rather than doing this in the update
function (which would need the calculation repeated for the old
state as well as the new state), arrange to do the calculation in
atomic_check and save it in our private plane state structure.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 drivers/gpu/drm/armada/armada_hw.h      | 15 -------
 drivers/gpu/drm/armada/armada_overlay.c | 15 ++++---
 drivers/gpu/drm/armada/armada_plane.c   | 80 +++++++++++++++++++++++++++------
 drivers/gpu/drm/armada/armada_plane.h   | 20 +++++++--
 4 files changed, 91 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/armada/armada_hw.h b/drivers/gpu/drm/armada/armada_hw.h
index 277580b36758..345dc4d0851e 100644
--- a/drivers/gpu/drm/armada/armada_hw.h
+++ b/drivers/gpu/drm/armada/armada_hw.h
@@ -316,19 +316,4 @@ enum {
 	PWRDN_IRQ_LEVEL		= 1 << 0,
 };
 
-static inline u32 armada_rect_hw_fp(struct drm_rect *r)
-{
-	return (drm_rect_height(r) & 0xffff0000) | drm_rect_width(r) >> 16;
-}
-
-static inline u32 armada_rect_hw(struct drm_rect *r)
-{
-	return drm_rect_height(r) << 16 | (drm_rect_width(r) & 0x0000ffff);
-}
-
-static inline u32 armada_rect_yx(struct drm_rect *r)
-{
-	return (r)->y1 << 16 | ((r)->x1 & 0x0000ffff);
-}
-
 #endif
diff --git a/drivers/gpu/drm/armada/armada_overlay.c b/drivers/gpu/drm/armada/armada_overlay.c
index 8a3d2815cb58..589cdb6a9dae 100644
--- a/drivers/gpu/drm/armada/armada_overlay.c
+++ b/drivers/gpu/drm/armada/armada_overlay.c
@@ -27,7 +27,7 @@
 #define DEFAULT_ENCODING	DRM_COLOR_YCBCR_BT601
 
 struct armada_overlay_state {
-	struct drm_plane_state base;
+	struct armada_plane_state base;
 	u32 colorkey_yr;
 	u32 colorkey_ug;
 	u32 colorkey_vb;
@@ -38,7 +38,7 @@ struct armada_overlay_state {
 	u16 saturation;
 };
 #define drm_to_overlay_state(s) \
-	container_of(s, struct armada_overlay_state, base)
+	container_of(s, struct armada_overlay_state, base.base)
 
 static inline u32 armada_spu_contrast(struct drm_plane_state *state)
 {
@@ -320,9 +320,9 @@ static void armada_overlay_reset(struct drm_plane *plane)
 		state->brightness = DEFAULT_BRIGHTNESS;
 		state->contrast = DEFAULT_CONTRAST;
 		state->saturation = DEFAULT_SATURATION;
-		__drm_atomic_helper_plane_reset(plane, &state->base);
-		state->base.color_encoding = DEFAULT_ENCODING;
-		state->base.color_range = DRM_COLOR_YCBCR_LIMITED_RANGE;
+		__drm_atomic_helper_plane_reset(plane, &state->base.base);
+		state->base.base.color_encoding = DEFAULT_ENCODING;
+		state->base.base.color_range = DRM_COLOR_YCBCR_LIMITED_RANGE;
 	}
 }
 
@@ -336,8 +336,9 @@ armada_overlay_duplicate_state(struct drm_plane *plane)
 
 	state = kmemdup(plane->state, sizeof(*state), GFP_KERNEL);
 	if (state)
-		__drm_atomic_helper_plane_duplicate_state(plane, &state->base);
-	return &state->base;
+		__drm_atomic_helper_plane_duplicate_state(plane,
+							  &state->base.base);
+	return &state->base.base;
 }
 
 static int armada_overlay_set_property(struct drm_plane *plane,
diff --git a/drivers/gpu/drm/armada/armada_plane.c b/drivers/gpu/drm/armada/armada_plane.c
index 6c098d379ae2..09218c1d8a4b 100644
--- a/drivers/gpu/drm/armada/armada_plane.c
+++ b/drivers/gpu/drm/armada/armada_plane.c
@@ -126,20 +126,47 @@ void armada_drm_plane_cleanup_fb(struct drm_plane *plane,
 int armada_drm_plane_atomic_check(struct drm_plane *plane,
 	struct drm_plane_state *state)
 {
-	if (state->fb && !WARN_ON(!state->crtc)) {
-		struct drm_crtc *crtc = state->crtc;
-		struct drm_crtc_state *crtc_state;
-
-		if (state->state)
-			crtc_state = drm_atomic_get_existing_crtc_state(state->state, crtc);
-		else
-			crtc_state = crtc->state;
-		return drm_atomic_helper_check_plane_state(state, crtc_state,
-							   0, INT_MAX,
-							   true, false);
-	} else {
+	struct armada_plane_state *st = to_armada_plane_state(state);
+	struct drm_crtc *crtc = state->crtc;
+	struct drm_crtc_state *crtc_state;
+	bool interlace;
+	int ret;
+
+	if (!state->fb || WARN_ON(!state->crtc)) {
 		state->visible = false;
+		return 0;
 	}
+
+	if (state->state)
+		crtc_state = drm_atomic_get_existing_crtc_state(state->state, crtc);
+	else
+		crtc_state = crtc->state;
+
+	ret = drm_atomic_helper_check_plane_state(state, crtc_state, 0,
+						  INT_MAX, true, false);
+	if (ret)
+		return ret;
+
+	interlace = crtc_state->adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE;
+	if (interlace) {
+		if ((state->dst.y1 | state->dst.y2) & 1)
+			return -EINVAL;
+		st->src_hw = drm_rect_height(&state->src) >> 17;
+		st->dst_yx = state->dst.y1 >> 1;
+		st->dst_hw = drm_rect_height(&state->dst) >> 1;
+	} else {
+		st->src_hw = drm_rect_height(&state->src) >> 16;
+		st->dst_yx = state->dst.y1;
+		st->dst_hw = drm_rect_height(&state->dst);
+	}
+
+	st->src_hw <<= 16;
+	st->src_hw |= drm_rect_width(&state->src) >> 16;
+	st->dst_yx <<= 16;
+	st->dst_yx |= state->dst.x1 & 0x0000ffff;
+	st->dst_hw <<= 16;
+	st->dst_hw |= drm_rect_width(&state->dst) & 0x0000ffff;
+
 	return 0;
 }
 
@@ -262,12 +289,37 @@ static const struct drm_plane_helper_funcs armada_primary_plane_helper_funcs = {
 	.atomic_disable	= armada_drm_primary_plane_atomic_disable,
 };
 
+void armada_plane_reset(struct drm_plane *plane)
+{
+	struct armada_plane_state *st;
+	if (plane->state)
+		__drm_atomic_helper_plane_destroy_state(plane->state);
+	kfree(plane->state);
+	st = kzalloc(sizeof(*st), GFP_KERNEL);
+	if (st)
+		__drm_atomic_helper_plane_reset(plane, &st->base);
+}
+
+struct drm_plane_state *armada_plane_duplicate_state(struct drm_plane *plane)
+{
+	struct armada_plane_state *st;
+
+	if (WARN_ON(!plane->state))
+		return NULL;
+
+	st = kmemdup(plane->state, sizeof(*st), GFP_KERNEL);
+	if (st)
+		__drm_atomic_helper_plane_duplicate_state(plane, &st->base);
+
+	return &st->base;
+}
+
 static const struct drm_plane_funcs armada_primary_plane_funcs = {
 	.update_plane	= drm_atomic_helper_update_plane,
 	.disable_plane	= drm_atomic_helper_disable_plane,
 	.destroy	= drm_primary_helper_destroy,
-	.reset		= drm_atomic_helper_plane_reset,
-	.atomic_duplicate_state = drm_atomic_helper_plane_duplicate_state,
+	.reset		= armada_plane_reset,
+	.atomic_duplicate_state = armada_plane_duplicate_state,
 	.atomic_destroy_state = drm_atomic_helper_plane_destroy_state,
 };
 
diff --git a/drivers/gpu/drm/armada/armada_plane.h b/drivers/gpu/drm/armada/armada_plane.h
index 049c593342eb..396c45a4ea5e 100644
--- a/drivers/gpu/drm/armada/armada_plane.h
+++ b/drivers/gpu/drm/armada/armada_plane.h
@@ -1,9 +1,18 @@
 #ifndef ARMADA_PLANE_H
 #define ARMADA_PLANE_H
 
-#define armada_src_hw(state)	armada_rect_hw_fp(&(state)->src)
-#define armada_dst_yx(state)	armada_rect_yx(&(state)->dst)
-#define armada_dst_hw(state)	armada_rect_hw(&(state)->dst)
+struct armada_plane_state {
+	struct drm_plane_state base;
+	u32 src_hw;
+	u32 dst_yx;
+	u32 dst_hw;
+};
+
+#define to_armada_plane_state(st) \
+	container_of(st, struct armada_plane_state, base)
+#define armada_src_hw(state) to_armada_plane_state(state)->src_hw
+#define armada_dst_yx(state) to_armada_plane_state(state)->dst_yx
+#define armada_dst_hw(state) to_armada_plane_state(state)->dst_hw
 
 void armada_drm_plane_calc(struct drm_plane_state *state, u32 addrs[2][3],
 	u16 pitches[3], bool interlaced);
@@ -13,6 +22,11 @@ void armada_drm_plane_cleanup_fb(struct drm_plane *plane,
 	struct drm_plane_state *old_state);
 int armada_drm_plane_atomic_check(struct drm_plane *plane,
 	struct drm_plane_state *state);
+void armada_plane_reset(struct drm_plane *plane);
+struct drm_plane_state *armada_plane_duplicate_state(struct drm_plane *plane);
+void armada_plane_destroy_state(struct drm_plane *plane,
+				struct drm_plane_state *state);
+
 int armada_drm_primary_plane_init(struct drm_device *drm,
 	struct drm_plane *primary);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
