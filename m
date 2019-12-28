Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B10E12BEE0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Dec 2019 21:29:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Yi5YfO3w/7DqkII10wYvdJs1X9EI6iZk1nbAfZdx+a0=; b=Ll5gO6t694Ma0hBN/LwrBerVxN
	eDTrRX8kwDxG0XU0XUjJff+j7UDXL+wQhUmATNgjrhnR89lBAHpqd7/124T3qXWzcOpk5Kirs+N+K
	YYacUTvt2Ab6ITmmp6WTCyFC+0R2Klx5eWqo94uuY09tP9CBfi8a48GkNT+Fyb2PeG7xyJh/gTjD5
	5geZgQqEKmF0FZg8jq1x55B/2mHU5VpUuGp/BTs25ACICHC06yv/LbOpVfTG3i9x/polVuao8udyk
	vyiBReOqYd+JaVxsn50EexHOgGmiFy0Ij38Su5LiOQS9WIi5v1+fWxmuC9dEtA+YyqUg8FFLkBOpL
	iYLKNJ0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilIic-00057E-Q7; Sat, 28 Dec 2019 20:29:50 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilIhb-0004Rz-Qo
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Dec 2019 20:28:49 +0000
Received: by mail-pg1-x544.google.com with SMTP id 6so16154200pgk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Dec 2019 12:28:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=globallogic.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=y0X2Ei97ZYtVa5gI5SS/lqPjc0VdwV2cRwZojvWwKJk=;
 b=jQ1VDYWoatlyvkIsDMRc2PGBR1QdHOUQeTBAbZfLBl8v84fjboX58Gn3JsLKf29m5Q
 QC5ZSIOX09FjdovsWwW9brecPVtuQKJOZRE/LtzvphSqiBnTZQVfx8zB7WPqVC4P43eA
 Wnlej1ctKb5aM0/ga5/j53atblORSEUyr10NklDU2lqeNxnujOuPPt+4nm78/Lp196KX
 AOn/GuWO0kwn6hOV6Y8PJ5rKOt4/aOqAD5LNDb0PMqbGmeFCLd5QRnaSY5PcB18klZOP
 qZpxOHpdigvzfRfnup6oFV1hV5ZAw9UmBlgR96873wEhlicZcJ0MffmNqeTHPBKVgmP+
 Smug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=y0X2Ei97ZYtVa5gI5SS/lqPjc0VdwV2cRwZojvWwKJk=;
 b=BeUrxfIHBMzk5EaA+7s2KJfHlvHt9IA35qcWGaWQwCT/R3WikK7bnNETyOqHY6J3k6
 ddrh6Qk1oyFP/d2aA67eqCet3on8WsezTAiawaamq5QlPCgIQziNfvPINSaZdri8/fRX
 Zx1u37ZPTrdypLYwQZV9K58gfwF3M108EI3FZSU2/4N58aMvNmHCmkL6G0rvfm/LYbWJ
 G2DEx0fWK1UGKwOs+i/bq27FpymWgmiSP4nIeNhHgtaF+ETjG08GwFlOt0fA1HZpQ4kw
 DvK8ul+PF59j9728faBkTDKp3yYWHuwuwFtHp5YKikT6/pkujauQ4L5V9bdACZTjtvXQ
 Ywgg==
X-Gm-Message-State: APjAAAV7wafiJpgMsK2kSB5j96zjqd9Y2YrMVuFKLcNgTgIJvp7fvvwE
 3zgDfP4IMfb4Ff3gNVBCFi9F3lYfyEc=
X-Google-Smtp-Source: APXvYqwmxXWUlp0h+ZIT+1V4k9Eds67rV6LRKaRlCjCh3t/qDCPL32rGfFDvoLBisLZR4Gyb2ZJiFQ==
X-Received: by 2002:a63:e911:: with SMTP id i17mr62274130pgh.42.1577564926779; 
 Sat, 28 Dec 2019 12:28:46 -0800 (PST)
Received: from virtualhost-PowerEdge-R810.synapse.com ([195.238.92.107])
 by smtp.gmail.com with ESMTPSA id i68sm46771169pfe.173.2019.12.28.12.28.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Dec 2019 12:28:46 -0800 (PST)
From: roman.stratiienko@globallogic.com
To: mripard@kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 jernej.skrabec@siol.net
Subject: [RFC 3/4] drm/sun4i: Reimplement plane z position setting logic
Date: Sat, 28 Dec 2019 22:28:17 +0200
Message-Id: <20191228202818.69908-4-roman.stratiienko@globallogic.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191228202818.69908-1-roman.stratiienko@globallogic.com>
References: <20191228202818.69908-1-roman.stratiienko@globallogic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_122847_929472_8B89DC33 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Roman Stratiienko <roman.stratiienko@globallogic.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Roman Stratiienko <roman.stratiienko@globallogic.com>

To set blending channel order register software needs to know state and
position of each channel, which impossible at plane commit stage.

Move this procedure to atomic_flush stage, where all necessary information
is available.

Signed-off-by: Roman Stratiienko <roman.stratiienko@globallogic.com>
---
 drivers/gpu/drm/sun4i/sun8i_mixer.c    | 47 +++++++++++++++++++++++++-
 drivers/gpu/drm/sun4i/sun8i_mixer.h    |  3 ++
 drivers/gpu/drm/sun4i/sun8i_ui_layer.c | 42 ++++-------------------
 drivers/gpu/drm/sun4i/sun8i_vi_layer.c | 39 +++------------------
 4 files changed, 60 insertions(+), 71 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.c b/drivers/gpu/drm/sun4i/sun8i_mixer.c
index bb9a665fd053..da84fccf7784 100644
--- a/drivers/gpu/drm/sun4i/sun8i_mixer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_mixer.c
@@ -307,8 +307,47 @@ static void sun8i_atomic_begin(struct sunxi_engine *engine,
 
 static void sun8i_mixer_commit(struct sunxi_engine *engine)
 {
-	DRM_DEBUG_DRIVER("Committing changes\n");
+	struct sun8i_mixer *mixer = engine_to_sun8i_mixer(engine);
+	u32 base = sun8i_blender_base(mixer);
+	int i, j;
+	int channel_by_zpos[4] = {-1, -1, -1, -1};
+	u32 route = 0, pipe_ctl = 0;
+
+	DRM_DEBUG_DRIVER("Update blender routing\n");
+	for (i = 0; i < 4; i++)	{
+		int zpos = mixer->channel_zpos[i];
+
+		if (zpos >= 0 && zpos < 4)
+			channel_by_zpos[zpos] = i;
+	}
+
+	j = 0;
+	for (i = 0; i < 4; i++)	{
+		int ch = channel_by_zpos[i];
+
+		if (ch >= 0) {
+			pipe_ctl |= SUN8I_MIXER_BLEND_PIPE_CTL_EN(j);
+			route |= ch << SUN8I_MIXER_BLEND_ROUTE_PIPE_SHIFT(j);
+			j++;
+		}
+	}
+
+	for (i = 0; i < 4 && j < 4; i++) {
+		int zpos = mixer->channel_zpos[i];
 
+		if (zpos < 0) {
+			route |= i << SUN8I_MIXER_BLEND_ROUTE_PIPE_SHIFT(j);
+			j++;
+		}
+	}
+
+	regmap_update_bits(mixer->engine.regs, SUN8I_MIXER_BLEND_PIPE_CTL(base),
+			   SUN8I_MIXER_BLEND_PIPE_CTL_EN_MSK, pipe_ctl);
+
+	regmap_write(mixer->engine.regs,
+		     SUN8I_MIXER_BLEND_ROUTE(base), route);
+
+	DRM_DEBUG_DRIVER("Committing changes\n");
 	regmap_write(engine->regs, SUN8I_MIXER_GLOBAL_DBUFF,
 		     SUN8I_MIXER_GLOBAL_DBUFF_ENABLE);
 }
@@ -422,6 +461,12 @@ static int sun8i_mixer_bind(struct device *dev, struct device *master,
 	mixer->engine.ops = &sun8i_engine_ops;
 	mixer->engine.node = dev->of_node;
 
+	mixer->channel_zpos[0] = -1;
+	mixer->channel_zpos[1] = -1;
+	mixer->channel_zpos[2] = -1;
+	mixer->channel_zpos[3] = -1;
+	mixer->channel_zpos[4] = -1;
+
 	/*
 	 * While this function can fail, we shouldn't do anything
 	 * if this happens. Some early DE2 DT entries don't provide
diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.h b/drivers/gpu/drm/sun4i/sun8i_mixer.h
index 915479cc3077..9c2ff87923d8 100644
--- a/drivers/gpu/drm/sun4i/sun8i_mixer.h
+++ b/drivers/gpu/drm/sun4i/sun8i_mixer.h
@@ -178,6 +178,9 @@ struct sun8i_mixer {
 
 	struct clk			*bus_clk;
 	struct clk			*mod_clk;
+
+	/* -1 means that layer is disabled */
+	int channel_zpos[5];
 };
 
 static inline struct sun8i_mixer *
diff --git a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
index 893076716070..23c2f4b68c89 100644
--- a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
@@ -24,12 +24,10 @@
 #include "sun8i_ui_scaler.h"
 
 static void sun8i_ui_layer_enable(struct sun8i_mixer *mixer, int channel,
-				  int overlay, bool enable, unsigned int zpos,
-				  unsigned int old_zpos)
+				  int overlay, bool enable, unsigned int zpos)
 {
-	u32 val, bld_base, ch_base;
+	u32 val, ch_base;
 
-	bld_base = sun8i_blender_base(mixer);
 	ch_base = sun8i_channel_base(mixer, channel);
 
 	DRM_DEBUG_DRIVER("%sabling channel %d overlay %d\n",
@@ -44,32 +42,7 @@ static void sun8i_ui_layer_enable(struct sun8i_mixer *mixer, int channel,
 			   SUN8I_MIXER_CHAN_UI_LAYER_ATTR(ch_base, overlay),
 			   SUN8I_MIXER_CHAN_UI_LAYER_ATTR_EN, val);
 
-	if (!enable || zpos != old_zpos) {
-		regmap_update_bits(mixer->engine.regs,
-				   SUN8I_MIXER_BLEND_PIPE_CTL(bld_base),
-				   SUN8I_MIXER_BLEND_PIPE_CTL_EN(old_zpos),
-				   0);
-
-		regmap_update_bits(mixer->engine.regs,
-				   SUN8I_MIXER_BLEND_ROUTE(bld_base),
-				   SUN8I_MIXER_BLEND_ROUTE_PIPE_MSK(old_zpos),
-				   0);
-	}
-
-	if (enable) {
-		val = SUN8I_MIXER_BLEND_PIPE_CTL_EN(zpos);
-
-		regmap_update_bits(mixer->engine.regs,
-				   SUN8I_MIXER_BLEND_PIPE_CTL(bld_base),
-				   val, val);
-
-		val = channel << SUN8I_MIXER_BLEND_ROUTE_PIPE_SHIFT(zpos);
-
-		regmap_update_bits(mixer->engine.regs,
-				   SUN8I_MIXER_BLEND_ROUTE(bld_base),
-				   SUN8I_MIXER_BLEND_ROUTE_PIPE_MSK(zpos),
-				   val);
-	}
+	mixer->channel_zpos[channel] = enable ? zpos : -1;
 }
 
 static int sun8i_ui_layer_update_coord(struct sun8i_mixer *mixer, int channel,
@@ -235,11 +208,9 @@ static void sun8i_ui_layer_atomic_disable(struct drm_plane *plane,
 					  struct drm_plane_state *old_state)
 {
 	struct sun8i_ui_layer *layer = plane_to_sun8i_ui_layer(plane);
-	unsigned int old_zpos = old_state->normalized_zpos;
 	struct sun8i_mixer *mixer = layer->mixer;
 
-	sun8i_ui_layer_enable(mixer, layer->channel, layer->overlay, false, 0,
-			      old_zpos);
+	sun8i_ui_layer_enable(mixer, layer->channel, layer->overlay, false, 0);
 }
 
 static void sun8i_ui_layer_atomic_update(struct drm_plane *plane,
@@ -247,12 +218,11 @@ static void sun8i_ui_layer_atomic_update(struct drm_plane *plane,
 {
 	struct sun8i_ui_layer *layer = plane_to_sun8i_ui_layer(plane);
 	unsigned int zpos = plane->state->normalized_zpos;
-	unsigned int old_zpos = old_state->normalized_zpos;
 	struct sun8i_mixer *mixer = layer->mixer;
 
 	if (!plane->state->visible) {
 		sun8i_ui_layer_enable(mixer, layer->channel,
-				      layer->overlay, false, 0, old_zpos);
+				      layer->overlay, false, 0);
 		return;
 	}
 
@@ -263,7 +233,7 @@ static void sun8i_ui_layer_atomic_update(struct drm_plane *plane,
 	sun8i_ui_layer_update_buffer(mixer, layer->channel,
 				     layer->overlay, plane);
 	sun8i_ui_layer_enable(mixer, layer->channel, layer->overlay,
-			      true, zpos, old_zpos);
+			      true, zpos);
 }
 
 static struct drm_plane_helper_funcs sun8i_ui_layer_helper_funcs = {
diff --git a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
index 42d445d23773..97cbc98bf781 100644
--- a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
@@ -17,8 +17,7 @@
 #include "sun8i_vi_scaler.h"
 
 static void sun8i_vi_layer_enable(struct sun8i_mixer *mixer, int channel,
-				  int overlay, bool enable, unsigned int zpos,
-				  unsigned int old_zpos)
+				  int overlay, bool enable, unsigned int zpos)
 {
 	u32 val, bld_base, ch_base;
 
@@ -37,32 +36,7 @@ static void sun8i_vi_layer_enable(struct sun8i_mixer *mixer, int channel,
 			   SUN8I_MIXER_CHAN_VI_LAYER_ATTR(ch_base, overlay),
 			   SUN8I_MIXER_CHAN_VI_LAYER_ATTR_EN, val);
 
-	if (!enable || zpos != old_zpos) {
-		regmap_update_bits(mixer->engine.regs,
-				   SUN8I_MIXER_BLEND_PIPE_CTL(bld_base),
-				   SUN8I_MIXER_BLEND_PIPE_CTL_EN(old_zpos),
-				   0);
-
-		regmap_update_bits(mixer->engine.regs,
-				   SUN8I_MIXER_BLEND_ROUTE(bld_base),
-				   SUN8I_MIXER_BLEND_ROUTE_PIPE_MSK(old_zpos),
-				   0);
-	}
-
-	if (enable) {
-		val = SUN8I_MIXER_BLEND_PIPE_CTL_EN(zpos);
-
-		regmap_update_bits(mixer->engine.regs,
-				   SUN8I_MIXER_BLEND_PIPE_CTL(bld_base),
-				   val, val);
-
-		val = channel << SUN8I_MIXER_BLEND_ROUTE_PIPE_SHIFT(zpos);
-
-		regmap_update_bits(mixer->engine.regs,
-				   SUN8I_MIXER_BLEND_ROUTE(bld_base),
-				   SUN8I_MIXER_BLEND_ROUTE_PIPE_MSK(zpos),
-				   val);
-	}
+	mixer->channel_zpos[channel] = enable ? zpos : -1;
 }
 
 static int sun8i_vi_layer_update_coord(struct sun8i_mixer *mixer, int channel,
@@ -350,11 +324,9 @@ static void sun8i_vi_layer_atomic_disable(struct drm_plane *plane,
 					  struct drm_plane_state *old_state)
 {
 	struct sun8i_vi_layer *layer = plane_to_sun8i_vi_layer(plane);
-	unsigned int old_zpos = old_state->normalized_zpos;
 	struct sun8i_mixer *mixer = layer->mixer;
 
-	sun8i_vi_layer_enable(mixer, layer->channel, layer->overlay, false, 0,
-			      old_zpos);
+	sun8i_vi_layer_enable(mixer, layer->channel, layer->overlay, false, 0);
 }
 
 static void sun8i_vi_layer_atomic_update(struct drm_plane *plane,
@@ -362,12 +334,11 @@ static void sun8i_vi_layer_atomic_update(struct drm_plane *plane,
 {
 	struct sun8i_vi_layer *layer = plane_to_sun8i_vi_layer(plane);
 	unsigned int zpos = plane->state->normalized_zpos;
-	unsigned int old_zpos = old_state->normalized_zpos;
 	struct sun8i_mixer *mixer = layer->mixer;
 
 	if (!plane->state->visible) {
 		sun8i_vi_layer_enable(mixer, layer->channel,
-				      layer->overlay, false, 0, old_zpos);
+				      layer->overlay, false, 0);
 		return;
 	}
 
@@ -378,7 +349,7 @@ static void sun8i_vi_layer_atomic_update(struct drm_plane *plane,
 	sun8i_vi_layer_update_buffer(mixer, layer->channel,
 				     layer->overlay, plane);
 	sun8i_vi_layer_enable(mixer, layer->channel, layer->overlay,
-			      true, zpos, old_zpos);
+			      true, zpos);
 }
 
 static struct drm_plane_helper_funcs sun8i_vi_layer_helper_funcs = {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
