Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8DCB2D31
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Sep 2019 00:04:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KQBjC9ZKO9qfmOFiqq3NrLMPLxDHulfIz3JFeZbLq84=; b=deue98dbHc12/W
	VdmQp1MSSMwwAl8d3alK609Pg/bSAT5ATjQ2p9jeXYxEXtb2jBfEZ6rXMWZGzKWwLodEmUanbdoHu
	v6wJNcp6Ku0Dy2XltUsMDkU6u9iGEOrc8v2wk4GDCdWTiLAuHgzi+gyBrDVqiCSLERARSA5F1HCmb
	0dR5z8Qfjt4aebXxEmjmSAe5XpRtqrjy4q6dYbGbfCsdQ/xeO2+5CSgh6YifZmX/W/235KWt2YJkX
	tNVvBbGbn82U7qT7EcVTcdiuJARuy261+zwBtNs1XT5WQdhdJsHafGMfdwmbOtUl2HrA7FfPISaqp
	xvu7XBFuqYV6JjMBWkSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9G9O-0007Nt-2H; Sat, 14 Sep 2019 22:04:14 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9G91-0007Mt-Dh
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Sep 2019 22:03:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1568498623; bh=AbF8sfpZSp7CQ29ALLr+Qijb3QvQtsAkWUYeZO6ZrI4=;
 h=From:To:Cc:Subject:Date:From;
 b=luZPH5cbHdQzGY7dGzdNhefpNh4xvQff5b2ivGTwUg50FEmlO3DPSdzZyjKG5sQH6
 OsGBLW4rs++1WWZ5OgfYyDtJY4WwvnCxn80aJKfYNuRypkVKD11Bq9bqv7HbcbrV2l
 j/AO/ge5Y+fwQGOTeUyRCpu2voV2dad0VbsvxZUg=
From: megous@megous.com
To: Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH] drm: sun8i-ui/vi: Fix layer zpos change/atomic modesetting
Date: Sun, 15 Sep 2019 00:03:37 +0200
Message-Id: <20190914220337.646719-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_150352_088625_4743EF32 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Ondrej Jirman <megous@megous.com>, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ondrej Jirman <megous@megous.com>

There are various issues that this re-work of sun8i_[uv]i_layer_enable
function fixes:

- Make sure that we re-initialize zpos on reset
- Minimize register updates by doing them only when state changes
- Fix issue where DE pipe might get disabled even if it is no longer
  used by the layer that's currently calling sun8i_ui_layer_enable
- .atomic_disable callback is not really needed because .atomic_update
  can do the disable too, so drop the duplicate code

Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 drivers/gpu/drm/sun4i/sun8i_ui_layer.c | 112 ++++++++++++++++---------
 drivers/gpu/drm/sun4i/sun8i_vi_layer.c | 112 ++++++++++++++++---------
 2 files changed, 142 insertions(+), 82 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
index dd2a1c851939..b88e8ac5ad1c 100644
--- a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
@@ -24,10 +24,11 @@
 #include "sun8i_ui_scaler.h"
 
 static void sun8i_ui_layer_enable(struct sun8i_mixer *mixer, int channel,
-				  int overlay, bool enable, unsigned int zpos,
-				  unsigned int old_zpos)
+				  int overlay, bool was_enabled, bool enable,
+				  unsigned int zpos, unsigned int old_zpos)
 {
 	u32 val, bld_base, ch_base;
+	unsigned int old_pipe_ch;
 
 	bld_base = sun8i_blender_base(mixer);
 	ch_base = sun8i_channel_base(mixer, channel);
@@ -35,28 +36,57 @@ static void sun8i_ui_layer_enable(struct sun8i_mixer *mixer, int channel,
 	DRM_DEBUG_DRIVER("%sabling channel %d overlay %d\n",
 			 enable ? "En" : "Dis", channel, overlay);
 
-	if (enable)
-		val = SUN8I_MIXER_CHAN_UI_LAYER_ATTR_EN;
-	else
-		val = 0;
+	if (!was_enabled != !enable) {
+		val = enable ? SUN8I_MIXER_CHAN_UI_LAYER_ATTR_EN : 0;
 
-	regmap_update_bits(mixer->engine.regs,
-			   SUN8I_MIXER_CHAN_UI_LAYER_ATTR(ch_base, overlay),
-			   SUN8I_MIXER_CHAN_UI_LAYER_ATTR_EN, val);
-
-	if (!enable || zpos != old_zpos) {
 		regmap_update_bits(mixer->engine.regs,
-				   SUN8I_MIXER_BLEND_PIPE_CTL(bld_base),
-				   SUN8I_MIXER_BLEND_PIPE_CTL_EN(old_zpos),
-				   0);
+				   SUN8I_MIXER_CHAN_UI_LAYER_ATTR(ch_base, overlay),
+				   SUN8I_MIXER_CHAN_UI_LAYER_ATTR_EN, val);
+	}
 
-		regmap_update_bits(mixer->engine.regs,
+	/*
+	 * If this layer was enabled and is being disabled or if it is
+	 * enabled and just changing zpos, clear the old route, if it is
+	 * still configured to this layer in HW.
+	 */
+	if ((was_enabled && !enable) || (enable && zpos != old_zpos)) {
+		/* get channel the pipe for old_zpos is routed to from the HW */
+		regmap_read(mixer->engine.regs,
 				   SUN8I_MIXER_BLEND_ROUTE(bld_base),
-				   SUN8I_MIXER_BLEND_ROUTE_PIPE_MSK(old_zpos),
-				   0);
+				   &old_pipe_ch);
+		old_pipe_ch &= SUN8I_MIXER_BLEND_ROUTE_PIPE_MSK(old_zpos);
+		old_pipe_ch >>= SUN8I_MIXER_BLEND_ROUTE_PIPE_SHIFT(old_zpos);
+
+		/*
+		 * Check that pipe for old_zpos is still routed to our layer,
+		 * and clear/disable it if it is.
+		 */
+
+		if (old_pipe_ch == channel) {
+			DRM_DEBUG_DRIVER("chan=%d en=%d->%d zpos=%d->%d\n",
+			       channel, was_enabled, enable, old_zpos, zpos);
+
+			DRM_DEBUG_DRIVER("  disable pipe %d\n", old_zpos);
+
+			regmap_update_bits(mixer->engine.regs,
+					   SUN8I_MIXER_BLEND_ROUTE(bld_base),
+					   SUN8I_MIXER_BLEND_ROUTE_PIPE_MSK(old_zpos),
+					   0);
+
+			regmap_update_bits(mixer->engine.regs,
+					   SUN8I_MIXER_BLEND_PIPE_CTL(bld_base),
+					   SUN8I_MIXER_BLEND_PIPE_CTL_EN(old_zpos),
+					   0);
+		}
 	}
 
-	if (enable) {
+	/*
+	 * If enabling this layer or changin zpos, set route to this layer.
+	 */
+	if ((enable && !was_enabled) || (enable && zpos != old_zpos)) {
+		DRM_DEBUG_DRIVER("chan=%d en=%d->%d zpos=%d->%d\n",
+		       channel, was_enabled, enable, old_zpos, zpos);
+
 		val = SUN8I_MIXER_BLEND_PIPE_CTL_EN(zpos);
 
 		regmap_update_bits(mixer->engine.regs,
@@ -69,6 +99,8 @@ static void sun8i_ui_layer_enable(struct sun8i_mixer *mixer, int channel,
 				   SUN8I_MIXER_BLEND_ROUTE(bld_base),
 				   SUN8I_MIXER_BLEND_ROUTE_PIPE_MSK(zpos),
 				   val);
+
+		DRM_DEBUG_DRIVER("  enable pipe %d <- ch %d\n", zpos, channel);
 	}
 }
 
@@ -261,45 +293,43 @@ static int sun8i_ui_layer_atomic_check(struct drm_plane *plane,
 						   true, true);
 }
 
-static void sun8i_ui_layer_atomic_disable(struct drm_plane *plane,
-					  struct drm_plane_state *old_state)
+static void sun8i_ui_layer_atomic_update(struct drm_plane *plane,
+					 struct drm_plane_state *old_state)
 {
 	struct sun8i_ui_layer *layer = plane_to_sun8i_ui_layer(plane);
+	unsigned int zpos = plane->state->normalized_zpos;
 	unsigned int old_zpos = old_state->normalized_zpos;
 	struct sun8i_mixer *mixer = layer->mixer;
+	bool was_enabled = old_state->crtc && old_state->visible;
+	bool enable = plane->state->crtc && plane->state->visible;
 
-	sun8i_ui_layer_enable(mixer, layer->channel, layer->overlay, false, 0,
-			      old_zpos);
+	if (enable) {
+		sun8i_ui_layer_update_coord(mixer, layer->channel,
+					    layer->overlay, plane, zpos);
+		sun8i_ui_layer_update_formats(mixer, layer->channel,
+					      layer->overlay, plane);
+		sun8i_ui_layer_update_buffer(mixer, layer->channel,
+					     layer->overlay, plane);
+	}
+
+	sun8i_ui_layer_enable(mixer, layer->channel, layer->overlay,
+			      was_enabled, enable, zpos, old_zpos);
 }
 
-static void sun8i_ui_layer_atomic_update(struct drm_plane *plane,
-					 struct drm_plane_state *old_state)
+void sun8i_ui_layer_plane_reset(struct drm_plane *plane)
 {
 	struct sun8i_ui_layer *layer = plane_to_sun8i_ui_layer(plane);
-	unsigned int zpos = plane->state->normalized_zpos;
-	unsigned int old_zpos = old_state->normalized_zpos;
-	struct sun8i_mixer *mixer = layer->mixer;
 
-	if (!plane->state->visible) {
-		sun8i_ui_layer_enable(mixer, layer->channel,
-				      layer->overlay, false, 0, old_zpos);
+	drm_atomic_helper_plane_reset(plane);
+	if (!plane->state)
 		return;
-	}
 
-	sun8i_ui_layer_update_coord(mixer, layer->channel,
-				    layer->overlay, plane, zpos);
-	sun8i_ui_layer_update_formats(mixer, layer->channel,
-				      layer->overlay, plane);
-	sun8i_ui_layer_update_buffer(mixer, layer->channel,
-				     layer->overlay, plane);
-	sun8i_ui_layer_enable(mixer, layer->channel, layer->overlay,
-			      true, zpos, old_zpos);
+	plane->state->zpos = layer->channel;
 }
 
 static struct drm_plane_helper_funcs sun8i_ui_layer_helper_funcs = {
 	.prepare_fb	= drm_gem_fb_prepare_fb,
 	.atomic_check	= sun8i_ui_layer_atomic_check,
-	.atomic_disable	= sun8i_ui_layer_atomic_disable,
 	.atomic_update	= sun8i_ui_layer_atomic_update,
 };
 
@@ -308,7 +338,7 @@ static const struct drm_plane_funcs sun8i_ui_layer_funcs = {
 	.atomic_duplicate_state	= drm_atomic_helper_plane_duplicate_state,
 	.destroy		= drm_plane_cleanup,
 	.disable_plane		= drm_atomic_helper_disable_plane,
-	.reset			= drm_atomic_helper_plane_reset,
+	.reset			= sun8i_ui_layer_plane_reset,
 	.update_plane		= drm_atomic_helper_update_plane,
 };
 
diff --git a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
index bd0e6a52d1d8..675ebcdac00b 100644
--- a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
@@ -18,10 +18,11 @@
 #include "sun8i_vi_scaler.h"
 
 static void sun8i_vi_layer_enable(struct sun8i_mixer *mixer, int channel,
-				  int overlay, bool enable, unsigned int zpos,
-				  unsigned int old_zpos)
+				  int overlay, bool was_enabled, bool enable,
+				  unsigned int zpos, unsigned int old_zpos)
 {
 	u32 val, bld_base, ch_base;
+	unsigned int old_pipe_ch;
 
 	bld_base = sun8i_blender_base(mixer);
 	ch_base = sun8i_channel_base(mixer, channel);
@@ -29,28 +30,57 @@ static void sun8i_vi_layer_enable(struct sun8i_mixer *mixer, int channel,
 	DRM_DEBUG_DRIVER("%sabling VI channel %d overlay %d\n",
 			 enable ? "En" : "Dis", channel, overlay);
 
-	if (enable)
-		val = SUN8I_MIXER_CHAN_VI_LAYER_ATTR_EN;
-	else
-		val = 0;
-
-	regmap_update_bits(mixer->engine.regs,
-			   SUN8I_MIXER_CHAN_VI_LAYER_ATTR(ch_base, overlay),
-			   SUN8I_MIXER_CHAN_VI_LAYER_ATTR_EN, val);
+	if (!was_enabled != !enable) {
+		val = enable ? SUN8I_MIXER_CHAN_VI_LAYER_ATTR_EN : 0;
 
-	if (!enable || zpos != old_zpos) {
 		regmap_update_bits(mixer->engine.regs,
-				   SUN8I_MIXER_BLEND_PIPE_CTL(bld_base),
-				   SUN8I_MIXER_BLEND_PIPE_CTL_EN(old_zpos),
-				   0);
+				   SUN8I_MIXER_CHAN_VI_LAYER_ATTR(ch_base, overlay),
+				   SUN8I_MIXER_CHAN_VI_LAYER_ATTR_EN, val);
+	}
 
-		regmap_update_bits(mixer->engine.regs,
+	/*
+	 * If this layer was enabled and is being disabled or if it is
+	 * enabled and just changing zpos, clear the old route, if it is
+	 * still configured to this layer in HW.
+	 */
+	if ((was_enabled && !enable) || (enable && zpos != old_zpos)) {
+		/* get channel the pipe for old_zpos is routed to from the HW */
+		regmap_read(mixer->engine.regs,
 				   SUN8I_MIXER_BLEND_ROUTE(bld_base),
-				   SUN8I_MIXER_BLEND_ROUTE_PIPE_MSK(old_zpos),
-				   0);
+				   &old_pipe_ch);
+		old_pipe_ch &= SUN8I_MIXER_BLEND_ROUTE_PIPE_MSK(old_zpos);
+		old_pipe_ch >>= SUN8I_MIXER_BLEND_ROUTE_PIPE_SHIFT(old_zpos);
+
+		/*
+		 * Check that pipe for old_zpos is still routed to our layer,
+		 * and clear/disable it if it is.
+		 */
+
+		if (old_pipe_ch == channel) {
+			DRM_DEBUG_DRIVER("chan=%d en=%d->%d zpos=%d->%d\n",
+			       channel, was_enabled, enable, old_zpos, zpos);
+
+			DRM_DEBUG_DRIVER("  disable pipe %d\n", old_zpos);
+
+			regmap_update_bits(mixer->engine.regs,
+					   SUN8I_MIXER_BLEND_ROUTE(bld_base),
+					   SUN8I_MIXER_BLEND_ROUTE_PIPE_MSK(old_zpos),
+					   0);
+
+			regmap_update_bits(mixer->engine.regs,
+					   SUN8I_MIXER_BLEND_PIPE_CTL(bld_base),
+					   SUN8I_MIXER_BLEND_PIPE_CTL_EN(old_zpos),
+					   0);
+		}
 	}
 
-	if (enable) {
+	/*
+	 * If enabling this layer or changin zpos, set route to this layer.
+	 */
+	if ((enable && !was_enabled) || (enable && zpos != old_zpos)) {
+		DRM_DEBUG_DRIVER("chan=%d en=%d->%d zpos=%d->%d\n",
+		       channel, was_enabled, enable, old_zpos, zpos);
+
 		val = SUN8I_MIXER_BLEND_PIPE_CTL_EN(zpos);
 
 		regmap_update_bits(mixer->engine.regs,
@@ -63,6 +93,8 @@ static void sun8i_vi_layer_enable(struct sun8i_mixer *mixer, int channel,
 				   SUN8I_MIXER_BLEND_ROUTE(bld_base),
 				   SUN8I_MIXER_BLEND_ROUTE_PIPE_MSK(zpos),
 				   val);
+
+		DRM_DEBUG_DRIVER("  enable pipe %d <- ch %d\n", zpos, channel);
 	}
 }
 
@@ -345,45 +377,43 @@ static int sun8i_vi_layer_atomic_check(struct drm_plane *plane,
 						   true, true);
 }
 
-static void sun8i_vi_layer_atomic_disable(struct drm_plane *plane,
-					  struct drm_plane_state *old_state)
+static void sun8i_vi_layer_atomic_update(struct drm_plane *plane,
+					 struct drm_plane_state *old_state)
 {
 	struct sun8i_vi_layer *layer = plane_to_sun8i_vi_layer(plane);
+	unsigned int zpos = plane->state->normalized_zpos;
 	unsigned int old_zpos = old_state->normalized_zpos;
 	struct sun8i_mixer *mixer = layer->mixer;
+	bool was_enabled = old_state->crtc && old_state->visible;
+	bool enable = plane->state->crtc && plane->state->visible;
 
-	sun8i_vi_layer_enable(mixer, layer->channel, layer->overlay, false, 0,
-			      old_zpos);
+	if (enable) {
+		sun8i_vi_layer_update_coord(mixer, layer->channel,
+					    layer->overlay, plane, zpos);
+		sun8i_vi_layer_update_formats(mixer, layer->channel,
+					      layer->overlay, plane);
+		sun8i_vi_layer_update_buffer(mixer, layer->channel,
+					     layer->overlay, plane);
+	}
+
+	sun8i_vi_layer_enable(mixer, layer->channel, layer->overlay,
+			      was_enabled, enable, zpos, old_zpos);
 }
 
-static void sun8i_vi_layer_atomic_update(struct drm_plane *plane,
-					 struct drm_plane_state *old_state)
+void sun8i_vi_layer_plane_reset(struct drm_plane *plane)
 {
 	struct sun8i_vi_layer *layer = plane_to_sun8i_vi_layer(plane);
-	unsigned int zpos = plane->state->normalized_zpos;
-	unsigned int old_zpos = old_state->normalized_zpos;
-	struct sun8i_mixer *mixer = layer->mixer;
 
-	if (!plane->state->visible) {
-		sun8i_vi_layer_enable(mixer, layer->channel,
-				      layer->overlay, false, 0, old_zpos);
+	drm_atomic_helper_plane_reset(plane);
+	if (!plane->state)
 		return;
-	}
 
-	sun8i_vi_layer_update_coord(mixer, layer->channel,
-				    layer->overlay, plane, zpos);
-	sun8i_vi_layer_update_formats(mixer, layer->channel,
-				      layer->overlay, plane);
-	sun8i_vi_layer_update_buffer(mixer, layer->channel,
-				     layer->overlay, plane);
-	sun8i_vi_layer_enable(mixer, layer->channel, layer->overlay,
-			      true, zpos, old_zpos);
+	plane->state->zpos = layer->channel;
 }
 
 static struct drm_plane_helper_funcs sun8i_vi_layer_helper_funcs = {
 	.prepare_fb	= drm_gem_fb_prepare_fb,
 	.atomic_check	= sun8i_vi_layer_atomic_check,
-	.atomic_disable	= sun8i_vi_layer_atomic_disable,
 	.atomic_update	= sun8i_vi_layer_atomic_update,
 };
 
@@ -392,7 +422,7 @@ static const struct drm_plane_funcs sun8i_vi_layer_funcs = {
 	.atomic_duplicate_state	= drm_atomic_helper_plane_duplicate_state,
 	.destroy		= drm_plane_cleanup,
 	.disable_plane		= drm_atomic_helper_disable_plane,
-	.reset			= drm_atomic_helper_plane_reset,
+	.reset			= sun8i_vi_layer_plane_reset,
 	.update_plane		= drm_atomic_helper_update_plane,
 };
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
