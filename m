Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B2C16ADCE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 18:41:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m+rwm/97bO4uIWLUc/yr7yWqg3vwRzAO2eKOvkG0hHU=; b=GJ1JH2fP8NZ46K
	mq6grjsRXztMu3B2yxrqzbQ1h+XaSssZLFWWOVvmqMaNoILCE73wIls1clHRgDHdDbXCcd/tyWDj9
	2oTEkrXntBetNVoKMWEumge+cE+WDVRFwO/aLvmldXpXjZTqw9E0Rm1QGsoA9/ZkBv0chVt37Ftv5
	8NG0SKGBYz/l6+DTvZSk0S9RihypLIBhB4cYILcn1c0/5o3xHZweIAI1unDrqpPHrA+gZWj2vUwZx
	KZZSpyi0HVrMt9oj93f4/YBEsBwBxh3jc6lSiybegE31sdKLQ6dnhjp1eq/dM7I3FrMous/CNZ+tx
	m+BnLxIa4YrilDqIlUnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6HjD-0001rt-NL; Mon, 24 Feb 2020 17:41:11 +0000
Received: from mailoutvs59.siol.net ([185.57.226.250] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6HhR-00087R-NU
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 17:39:25 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 49E9C523704;
 Mon, 24 Feb 2020 18:39:19 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id dGtPwmvNvSTs; Mon, 24 Feb 2020 18:39:18 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id A9B095236EE;
 Mon, 24 Feb 2020 18:39:18 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 5A5E5523705;
 Mon, 24 Feb 2020 18:39:16 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH 4/7] drm/sun4i: de2: rgb field in de2 format struct is
 redundant
Date: Mon, 24 Feb 2020 18:38:58 +0100
Message-Id: <20200224173901.174016-5-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200224173901.174016-1-jernej.skrabec@siol.net>
References: <20200224173901.174016-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_093921_942312_9787504D 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.250 listed in list.dnswl.org]
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

drm_format_info structure already contains information if format is RGB
or YUV. Use that instead.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/gpu/drm/sun4i/sun8i_mixer.c    | 48 --------------------------
 drivers/gpu/drm/sun4i/sun8i_mixer.h    |  1 -
 drivers/gpu/drm/sun4i/sun8i_ui_layer.c |  6 ++--
 drivers/gpu/drm/sun4i/sun8i_vi_layer.c |  6 ++--
 4 files changed, 8 insertions(+), 53 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.c b/drivers/gpu/drm/sun4i/sun8i_mixer.c
index 4a64f7ae437a..45e3cd9e718c 100644
--- a/drivers/gpu/drm/sun4i/sun8i_mixer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_mixer.c
@@ -31,297 +31,249 @@ static const struct de2_fmt_info de2_formats[] = {
 	{
 		.drm_fmt = DRM_FORMAT_ARGB8888,
 		.de2_fmt = SUN8I_MIXER_FBFMT_ARGB8888,
-		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_ABGR8888,
 		.de2_fmt = SUN8I_MIXER_FBFMT_ABGR8888,
-		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_RGBA8888,
 		.de2_fmt = SUN8I_MIXER_FBFMT_RGBA8888,
-		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_BGRA8888,
 		.de2_fmt = SUN8I_MIXER_FBFMT_BGRA8888,
-		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_XRGB8888,
 		.de2_fmt = SUN8I_MIXER_FBFMT_XRGB8888,
-		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_XBGR8888,
 		.de2_fmt = SUN8I_MIXER_FBFMT_XBGR8888,
-		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_RGBX8888,
 		.de2_fmt = SUN8I_MIXER_FBFMT_RGBX8888,
-		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_BGRX8888,
 		.de2_fmt = SUN8I_MIXER_FBFMT_BGRX8888,
-		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_RGB888,
 		.de2_fmt = SUN8I_MIXER_FBFMT_RGB888,
-		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_BGR888,
 		.de2_fmt = SUN8I_MIXER_FBFMT_BGR888,
-		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_RGB565,
 		.de2_fmt = SUN8I_MIXER_FBFMT_RGB565,
-		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_BGR565,
 		.de2_fmt = SUN8I_MIXER_FBFMT_BGR565,
-		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_ARGB4444,
 		.de2_fmt = SUN8I_MIXER_FBFMT_ARGB4444,
-		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		/* for DE2 VI layer which ignores alpha */
 		.drm_fmt = DRM_FORMAT_XRGB4444,
 		.de2_fmt = SUN8I_MIXER_FBFMT_ARGB4444,
-		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_ABGR4444,
 		.de2_fmt = SUN8I_MIXER_FBFMT_ABGR4444,
-		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		/* for DE2 VI layer which ignores alpha */
 		.drm_fmt = DRM_FORMAT_XBGR4444,
 		.de2_fmt = SUN8I_MIXER_FBFMT_ABGR4444,
-		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_RGBA4444,
 		.de2_fmt = SUN8I_MIXER_FBFMT_RGBA4444,
-		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		/* for DE2 VI layer which ignores alpha */
 		.drm_fmt = DRM_FORMAT_RGBX4444,
 		.de2_fmt = SUN8I_MIXER_FBFMT_RGBA4444,
-		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_BGRA4444,
 		.de2_fmt = SUN8I_MIXER_FBFMT_BGRA4444,
-		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		/* for DE2 VI layer which ignores alpha */
 		.drm_fmt = DRM_FORMAT_BGRX4444,
 		.de2_fmt = SUN8I_MIXER_FBFMT_BGRA4444,
-		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_ARGB1555,
 		.de2_fmt = SUN8I_MIXER_FBFMT_ARGB1555,
-		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		/* for DE2 VI layer which ignores alpha */
 		.drm_fmt = DRM_FORMAT_XRGB1555,
 		.de2_fmt = SUN8I_MIXER_FBFMT_ARGB1555,
-		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_ABGR1555,
 		.de2_fmt = SUN8I_MIXER_FBFMT_ABGR1555,
-		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		/* for DE2 VI layer which ignores alpha */
 		.drm_fmt = DRM_FORMAT_XBGR1555,
 		.de2_fmt = SUN8I_MIXER_FBFMT_ABGR1555,
-		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_RGBA5551,
 		.de2_fmt = SUN8I_MIXER_FBFMT_RGBA5551,
-		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		/* for DE2 VI layer which ignores alpha */
 		.drm_fmt = DRM_FORMAT_RGBX5551,
 		.de2_fmt = SUN8I_MIXER_FBFMT_RGBA5551,
-		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_BGRA5551,
 		.de2_fmt = SUN8I_MIXER_FBFMT_BGRA5551,
-		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		/* for DE2 VI layer which ignores alpha */
 		.drm_fmt = DRM_FORMAT_BGRX5551,
 		.de2_fmt = SUN8I_MIXER_FBFMT_BGRA5551,
-		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_ARGB2101010,
 		.de2_fmt = SUN8I_MIXER_FBFMT_ARGB2101010,
-		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_ABGR2101010,
 		.de2_fmt = SUN8I_MIXER_FBFMT_ABGR2101010,
-		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_RGBA1010102,
 		.de2_fmt = SUN8I_MIXER_FBFMT_RGBA1010102,
-		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_BGRA1010102,
 		.de2_fmt = SUN8I_MIXER_FBFMT_BGRA1010102,
-		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_UYVY,
 		.de2_fmt = SUN8I_MIXER_FBFMT_UYVY,
-		.rgb = false,
 		.csc = SUN8I_CSC_MODE_YUV2RGB,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_VYUY,
 		.de2_fmt = SUN8I_MIXER_FBFMT_VYUY,
-		.rgb = false,
 		.csc = SUN8I_CSC_MODE_YUV2RGB,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_YUYV,
 		.de2_fmt = SUN8I_MIXER_FBFMT_YUYV,
-		.rgb = false,
 		.csc = SUN8I_CSC_MODE_YUV2RGB,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_YVYU,
 		.de2_fmt = SUN8I_MIXER_FBFMT_YVYU,
-		.rgb = false,
 		.csc = SUN8I_CSC_MODE_YUV2RGB,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_NV16,
 		.de2_fmt = SUN8I_MIXER_FBFMT_NV16,
-		.rgb = false,
 		.csc = SUN8I_CSC_MODE_YUV2RGB,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_NV61,
 		.de2_fmt = SUN8I_MIXER_FBFMT_NV61,
-		.rgb = false,
 		.csc = SUN8I_CSC_MODE_YUV2RGB,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_NV12,
 		.de2_fmt = SUN8I_MIXER_FBFMT_NV12,
-		.rgb = false,
 		.csc = SUN8I_CSC_MODE_YUV2RGB,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_NV21,
 		.de2_fmt = SUN8I_MIXER_FBFMT_NV21,
-		.rgb = false,
 		.csc = SUN8I_CSC_MODE_YUV2RGB,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_YUV422,
 		.de2_fmt = SUN8I_MIXER_FBFMT_YUV422,
-		.rgb = false,
 		.csc = SUN8I_CSC_MODE_YUV2RGB,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_YUV420,
 		.de2_fmt = SUN8I_MIXER_FBFMT_YUV420,
-		.rgb = false,
 		.csc = SUN8I_CSC_MODE_YUV2RGB,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_YUV411,
 		.de2_fmt = SUN8I_MIXER_FBFMT_YUV411,
-		.rgb = false,
 		.csc = SUN8I_CSC_MODE_YUV2RGB,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_YVU422,
 		.de2_fmt = SUN8I_MIXER_FBFMT_YUV422,
-		.rgb = false,
 		.csc = SUN8I_CSC_MODE_YVU2RGB,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_YVU420,
 		.de2_fmt = SUN8I_MIXER_FBFMT_YUV420,
-		.rgb = false,
 		.csc = SUN8I_CSC_MODE_YVU2RGB,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_YVU411,
 		.de2_fmt = SUN8I_MIXER_FBFMT_YUV411,
-		.rgb = false,
 		.csc = SUN8I_CSC_MODE_YVU2RGB,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_P010,
 		.de2_fmt = SUN8I_MIXER_FBFMT_P010_YUV,
-		.rgb = false,
 		.csc = SUN8I_CSC_MODE_YUV2RGB,
 	},
 	{
 		.drm_fmt = DRM_FORMAT_P210,
 		.de2_fmt = SUN8I_MIXER_FBFMT_P210_YUV,
-		.rgb = false,
 		.csc = SUN8I_CSC_MODE_YUV2RGB,
 	},
 };
diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.h b/drivers/gpu/drm/sun4i/sun8i_mixer.h
index 345b28b0a80a..447ad0b01b00 100644
--- a/drivers/gpu/drm/sun4i/sun8i_mixer.h
+++ b/drivers/gpu/drm/sun4i/sun8i_mixer.h
@@ -147,7 +147,6 @@
 struct de2_fmt_info {
 	u32			drm_fmt;
 	u32			de2_fmt;
-	bool			rgb;
 	enum sun8i_csc_mode	csc;
 };
 
diff --git a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
index c87fd842918e..99ee19a00415 100644
--- a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
@@ -175,12 +175,14 @@ static int sun8i_ui_layer_update_formats(struct sun8i_mixer *mixer, int channel,
 {
 	struct drm_plane_state *state = plane->state;
 	const struct de2_fmt_info *fmt_info;
+	const struct drm_format_info *fmt;
 	u32 val, ch_base;
 
 	ch_base = sun8i_channel_base(mixer, channel);
 
-	fmt_info = sun8i_mixer_format_info(state->fb->format->format);
-	if (!fmt_info || !fmt_info->rgb) {
+	fmt = state->fb->format;
+	fmt_info = sun8i_mixer_format_info(fmt->format);
+	if (!fmt_info || fmt->is_yuv) {
 		DRM_DEBUG_DRIVER("Invalid format\n");
 		return -EINVAL;
 	}
diff --git a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
index b8398ca18b0f..a2eb4371026d 100644
--- a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
@@ -215,11 +215,13 @@ static int sun8i_vi_layer_update_formats(struct sun8i_mixer *mixer, int channel,
 {
 	struct drm_plane_state *state = plane->state;
 	const struct de2_fmt_info *fmt_info;
+	const struct drm_format_info *fmt;
 	u32 val, ch_base;
 
 	ch_base = sun8i_channel_base(mixer, channel);
 
-	fmt_info = sun8i_mixer_format_info(state->fb->format->format);
+	fmt = state->fb->format;
+	fmt_info = sun8i_mixer_format_info(fmt->format);
 	if (!fmt_info) {
 		DRM_DEBUG_DRIVER("Invalid format\n");
 		return -EINVAL;
@@ -239,7 +241,7 @@ static int sun8i_vi_layer_update_formats(struct sun8i_mixer *mixer, int channel,
 		sun8i_csc_enable_ccsc(mixer, channel, false);
 	}
 
-	if (fmt_info->rgb)
+	if (!fmt->is_yuv)
 		val = SUN8I_MIXER_CHAN_VI_LAYER_ATTR_RGB_MODE;
 	else
 		val = 0;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
