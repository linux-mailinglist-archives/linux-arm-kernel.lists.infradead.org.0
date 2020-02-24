Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A1E16ADD8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 18:41:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vvo/36ptrbKoJpbFx535+fPSFiyagzD1+jFgw4UUDKQ=; b=Wb1LSJKjHOh64i
	bdy+1E9pZxMkvYhk8OvmYtKaB++yYWc9cqLnvtgNVBLmanpkeSALnHPwKm4jSGfQ7XYmmkhe7RqNY
	umvtf2+37vt6d4s8qq8aka9xaPNbRZDhWNhnCgft9f73rjfwkPY5ViuaFTST8zwBu2TMgYXZkCBQU
	OxkOCmqP2lNpDp3BBGgT5FOo0LFetdJZCmYGKfamn9Qnioi/fRNbQF7TC7UVoZqCgJ2ddNVDr7rNv
	D5Z0qw3sWN36yiltehYtr6pm+57EhRuZzSmHV5b1Dfb8IYuXnWd9qGhNORUwkSKwlQJ40GDf3dk9j
	pI+5URZKvbQVo85K7Rlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Hjl-0002NR-ST; Mon, 24 Feb 2020 17:41:45 +0000
Received: from mailoutvs56.siol.net ([185.57.226.247] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6HhU-00089X-TN
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 17:39:27 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id A6940523703;
 Mon, 24 Feb 2020 18:39:21 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id NodN5chrT5Df; Mon, 24 Feb 2020 18:39:21 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 0C400523723;
 Mon, 24 Feb 2020 18:39:21 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id B00F1523703;
 Mon, 24 Feb 2020 18:39:18 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH 5/7] drm/sun4i: de2: csc_mode in de2 format struct is mostly
 redundant
Date: Mon, 24 Feb 2020 18:38:59 +0100
Message-Id: <20200224173901.174016-6-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200224173901.174016-1-jernej.skrabec@siol.net>
References: <20200224173901.174016-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_093925_294207_B30D8A10 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.247 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: jernej.skrabec@siol.net, airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For RGB formats CSC mode is always set to none and for YUV formats
almost always set to YUV to RGB.

Add a helper function to deduce CSC mode from format.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/gpu/drm/sun4i/sun8i_mixer.c    | 48 --------------------------
 drivers/gpu/drm/sun4i/sun8i_mixer.h    |  6 ++--
 drivers/gpu/drm/sun4i/sun8i_vi_layer.c | 24 +++++++++++--
 3 files changed, 23 insertions(+), 55 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.c b/drivers/gpu/drm/sun4i/sun8i_mixer.c
index 45e3cd9e718c..e078ec96de2d 100644
--- a/drivers/gpu/drm/sun4i/sun8i_mixer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_mixer.c
@@ -31,250 +31,202 @@ static const struct de2_fmt_info de2_formats[] = {
 	{
 		.drm_fmt = DRM_FORMAT_ARGB8888,
 		.de2_fmt = SUN8I_MIXER_FBFMT_ARGB8888,
-		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_ABGR8888,
 		.de2_fmt = SUN8I_MIXER_FBFMT_ABGR8888,
-		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_RGBA8888,
 		.de2_fmt = SUN8I_MIXER_FBFMT_RGBA8888,
-		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_BGRA8888,
 		.de2_fmt = SUN8I_MIXER_FBFMT_BGRA8888,
-		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_XRGB8888,
 		.de2_fmt = SUN8I_MIXER_FBFMT_XRGB8888,
-		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_XBGR8888,
 		.de2_fmt = SUN8I_MIXER_FBFMT_XBGR8888,
-		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_RGBX8888,
 		.de2_fmt = SUN8I_MIXER_FBFMT_RGBX8888,
-		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_BGRX8888,
 		.de2_fmt = SUN8I_MIXER_FBFMT_BGRX8888,
-		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_RGB888,
 		.de2_fmt = SUN8I_MIXER_FBFMT_RGB888,
-		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_BGR888,
 		.de2_fmt = SUN8I_MIXER_FBFMT_BGR888,
-		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_RGB565,
 		.de2_fmt = SUN8I_MIXER_FBFMT_RGB565,
-		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_BGR565,
 		.de2_fmt = SUN8I_MIXER_FBFMT_BGR565,
-		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_ARGB4444,
 		.de2_fmt = SUN8I_MIXER_FBFMT_ARGB4444,
-		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		/* for DE2 VI layer which ignores alpha */
 		.drm_fmt = DRM_FORMAT_XRGB4444,
 		.de2_fmt = SUN8I_MIXER_FBFMT_ARGB4444,
-		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_ABGR4444,
 		.de2_fmt = SUN8I_MIXER_FBFMT_ABGR4444,
-		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		/* for DE2 VI layer which ignores alpha */
 		.drm_fmt = DRM_FORMAT_XBGR4444,
 		.de2_fmt = SUN8I_MIXER_FBFMT_ABGR4444,
-		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_RGBA4444,
 		.de2_fmt = SUN8I_MIXER_FBFMT_RGBA4444,
-		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		/* for DE2 VI layer which ignores alpha */
 		.drm_fmt = DRM_FORMAT_RGBX4444,
 		.de2_fmt = SUN8I_MIXER_FBFMT_RGBA4444,
-		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_BGRA4444,
 		.de2_fmt = SUN8I_MIXER_FBFMT_BGRA4444,
-		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		/* for DE2 VI layer which ignores alpha */
 		.drm_fmt = DRM_FORMAT_BGRX4444,
 		.de2_fmt = SUN8I_MIXER_FBFMT_BGRA4444,
-		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_ARGB1555,
 		.de2_fmt = SUN8I_MIXER_FBFMT_ARGB1555,
-		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		/* for DE2 VI layer which ignores alpha */
 		.drm_fmt = DRM_FORMAT_XRGB1555,
 		.de2_fmt = SUN8I_MIXER_FBFMT_ARGB1555,
-		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_ABGR1555,
 		.de2_fmt = SUN8I_MIXER_FBFMT_ABGR1555,
-		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		/* for DE2 VI layer which ignores alpha */
 		.drm_fmt = DRM_FORMAT_XBGR1555,
 		.de2_fmt = SUN8I_MIXER_FBFMT_ABGR1555,
-		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_RGBA5551,
 		.de2_fmt = SUN8I_MIXER_FBFMT_RGBA5551,
-		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		/* for DE2 VI layer which ignores alpha */
 		.drm_fmt = DRM_FORMAT_RGBX5551,
 		.de2_fmt = SUN8I_MIXER_FBFMT_RGBA5551,
-		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_BGRA5551,
 		.de2_fmt = SUN8I_MIXER_FBFMT_BGRA5551,
-		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		/* for DE2 VI layer which ignores alpha */
 		.drm_fmt = DRM_FORMAT_BGRX5551,
 		.de2_fmt = SUN8I_MIXER_FBFMT_BGRA5551,
-		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_ARGB2101010,
 		.de2_fmt = SUN8I_MIXER_FBFMT_ARGB2101010,
-		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_ABGR2101010,
 		.de2_fmt = SUN8I_MIXER_FBFMT_ABGR2101010,
-		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_RGBA1010102,
 		.de2_fmt = SUN8I_MIXER_FBFMT_RGBA1010102,
-		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_BGRA1010102,
 		.de2_fmt = SUN8I_MIXER_FBFMT_BGRA1010102,
-		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_UYVY,
 		.de2_fmt = SUN8I_MIXER_FBFMT_UYVY,
-		.csc = SUN8I_CSC_MODE_YUV2RGB,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_VYUY,
 		.de2_fmt = SUN8I_MIXER_FBFMT_VYUY,
-		.csc = SUN8I_CSC_MODE_YUV2RGB,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_YUYV,
 		.de2_fmt = SUN8I_MIXER_FBFMT_YUYV,
-		.csc = SUN8I_CSC_MODE_YUV2RGB,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_YVYU,
 		.de2_fmt = SUN8I_MIXER_FBFMT_YVYU,
-		.csc = SUN8I_CSC_MODE_YUV2RGB,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_NV16,
 		.de2_fmt = SUN8I_MIXER_FBFMT_NV16,
-		.csc = SUN8I_CSC_MODE_YUV2RGB,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_NV61,
 		.de2_fmt = SUN8I_MIXER_FBFMT_NV61,
-		.csc = SUN8I_CSC_MODE_YUV2RGB,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_NV12,
 		.de2_fmt = SUN8I_MIXER_FBFMT_NV12,
-		.csc = SUN8I_CSC_MODE_YUV2RGB,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_NV21,
 		.de2_fmt = SUN8I_MIXER_FBFMT_NV21,
-		.csc = SUN8I_CSC_MODE_YUV2RGB,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_YUV422,
 		.de2_fmt = SUN8I_MIXER_FBFMT_YUV422,
-		.csc = SUN8I_CSC_MODE_YUV2RGB,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_YUV420,
 		.de2_fmt = SUN8I_MIXER_FBFMT_YUV420,
-		.csc = SUN8I_CSC_MODE_YUV2RGB,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_YUV411,
 		.de2_fmt = SUN8I_MIXER_FBFMT_YUV411,
-		.csc = SUN8I_CSC_MODE_YUV2RGB,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_YVU422,
 		.de2_fmt = SUN8I_MIXER_FBFMT_YUV422,
-		.csc = SUN8I_CSC_MODE_YVU2RGB,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_YVU420,
 		.de2_fmt = SUN8I_MIXER_FBFMT_YUV420,
-		.csc = SUN8I_CSC_MODE_YVU2RGB,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_YVU411,
 		.de2_fmt = SUN8I_MIXER_FBFMT_YUV411,
-		.csc = SUN8I_CSC_MODE_YVU2RGB,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_P010,
 		.de2_fmt = SUN8I_MIXER_FBFMT_P010_YUV,
-		.csc = SUN8I_CSC_MODE_YUV2RGB,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_P210,
 		.de2_fmt = SUN8I_MIXER_FBFMT_P210_YUV,
-		.csc = SUN8I_CSC_MODE_YUV2RGB,
 	},
 };
 
diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.h b/drivers/gpu/drm/sun4i/sun8i_mixer.h
index 447ad0b01b00..0dd4a347fa06 100644
--- a/drivers/gpu/drm/sun4i/sun8i_mixer.h
+++ b/drivers/gpu/drm/sun4i/sun8i_mixer.h
@@ -10,7 +10,6 @@
 #include <linux/regmap.h>
 #include <linux/reset.h>
 
-#include "sun8i_csc.h"
 #include "sunxi_engine.h"
 
 #define SUN8I_MIXER_SIZE(w, h)			(((h) - 1) << 16 | ((w) - 1))
@@ -145,9 +144,8 @@
 #define SUN50I_MIXER_CDC1_EN			0xd8000
 
 struct de2_fmt_info {
-	u32			drm_fmt;
-	u32			de2_fmt;
-	enum sun8i_csc_mode	csc;
+	u32	drm_fmt;
+	u32	de2_fmt;
 };
 
 /**
diff --git a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
index a2eb4371026d..d783c2bfc77e 100644
--- a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
@@ -12,6 +12,7 @@
 #include <drm/drm_plane_helper.h>
 #include <drm/drm_probe_helper.h>
 
+#include "sun8i_csc.h"
 #include "sun8i_vi_layer.h"
 #include "sun8i_mixer.h"
 #include "sun8i_vi_scaler.h"
@@ -210,13 +211,29 @@ static int sun8i_vi_layer_update_coord(struct sun8i_mixer *mixer, int channel,
 	return 0;
 }
 
+static bool sun8i_vi_layer_get_csc_mode(const struct drm_format_info *format)
+{
+	if (!format->is_yuv)
+		return SUN8I_CSC_MODE_OFF;
+
+	switch (format->format) {
+	case DRM_FORMAT_YVU411:
+	case DRM_FORMAT_YVU420:
+	case DRM_FORMAT_YVU422:
+	case DRM_FORMAT_YVU444:
+		return SUN8I_CSC_MODE_YVU2RGB;
+	default:
+		return SUN8I_CSC_MODE_YUV2RGB;
+	}
+}
+
 static int sun8i_vi_layer_update_formats(struct sun8i_mixer *mixer, int channel,
 					 int overlay, struct drm_plane *plane)
 {
 	struct drm_plane_state *state = plane->state;
 	const struct de2_fmt_info *fmt_info;
 	const struct drm_format_info *fmt;
-	u32 val, ch_base;
+	u32 val, ch_base, csc_mode;
 
 	ch_base = sun8i_channel_base(mixer, channel);
 
@@ -232,8 +249,9 @@ static int sun8i_vi_layer_update_formats(struct sun8i_mixer *mixer, int channel,
 			   SUN8I_MIXER_CHAN_VI_LAYER_ATTR(ch_base, overlay),
 			   SUN8I_MIXER_CHAN_VI_LAYER_ATTR_FBFMT_MASK, val);
 
-	if (fmt_info->csc != SUN8I_CSC_MODE_OFF) {
-		sun8i_csc_set_ccsc_coefficients(mixer, channel, fmt_info->csc,
+	csc_mode = sun8i_vi_layer_get_csc_mode(fmt);
+	if (csc_mode != SUN8I_CSC_MODE_OFF) {
+		sun8i_csc_set_ccsc_coefficients(mixer, channel, csc_mode,
 						state->color_encoding,
 						state->color_range);
 		sun8i_csc_enable_ccsc(mixer, channel, true);
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
