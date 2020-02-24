Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A7D16ADD2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 18:41:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=98i4KGYunOoZo9isdhS5z6OIG0EZMsZUBWaph8f8OEE=; b=sxAbG7mWk1y+nN
	K9GLJsyWru+by6qQaUOL96vNh1KdSU0B9QXdzv6F2MB3j6zCyUtK9GsPj4LDiECgGNseXLfwjP3oh
	jdEXc2TbzPeROFWTISZ9n7eVpHCnhoSn5QSKGCu453EHU87OmS4S4ihIlarUcs2OmD8gIV7EavCN2
	bsPzlCSa0CcOxtE4I/wdlzYlCdFsAOvyrGVAvwgkxscS3gqSX8KTS26ZvsXPGJJF3zQQPub/LfKyI
	yUQlZyfAewiuk7pvQcqxKKTt7BExL97iEDT7dM1YCEiEwt9WxgC+cxP3zqkSqgPuQ77EYdbL3OeXH
	c60c/7NvCPyaO0ib1wOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6HjT-00026A-UU; Mon, 24 Feb 2020 17:41:27 +0000
Received: from mailoutvs60.siol.net ([185.57.226.251] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6HhQ-00086O-EG
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 17:39:24 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 6BA325236FE;
 Mon, 24 Feb 2020 18:39:14 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id bqT9S_aBDHSX; Mon, 24 Feb 2020 18:39:14 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id ED0725236BB;
 Mon, 24 Feb 2020 18:39:13 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id AD65E5236FE;
 Mon, 24 Feb 2020 18:39:11 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH 2/7] drm/sun4i: Add separate DE3 VI layer formats
Date: Mon, 24 Feb 2020 18:38:56 +0100
Message-Id: <20200224173901.174016-3-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200224173901.174016-1-jernej.skrabec@siol.net>
References: <20200224173901.174016-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_093920_790580_70E48555 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.251 listed in list.dnswl.org]
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

DE3 VI layers support alpha blending, but DE2 VI layers do not.
Additionally, DE3 VI layers support 10-bit RGB and YUV formats.

Make a separate list for DE3.

Fixes: c50519e6db4d ("drm/sun4i: Add basic support for DE3")
Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/gpu/drm/sun4i/sun8i_mixer.c    | 36 ++++++++++++++++
 drivers/gpu/drm/sun4i/sun8i_mixer.h    | 11 +++++
 drivers/gpu/drm/sun4i/sun8i_vi_layer.c | 58 ++++++++++++++++++++++++--
 3 files changed, 102 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.c b/drivers/gpu/drm/sun4i/sun8i_mixer.c
index 3a78dbbceb8a..655445bfe64a 100644
--- a/drivers/gpu/drm/sun4i/sun8i_mixer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_mixer.c
@@ -148,6 +148,30 @@ static const struct de2_fmt_info de2_formats[] = {
 		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
+	{
+		.drm_fmt = DRM_FORMAT_ARGB2101010,
+		.de2_fmt = SUN8I_MIXER_FBFMT_ARGB2101010,
+		.rgb = true,
+		.csc = SUN8I_CSC_MODE_OFF,
+	},
+	{
+		.drm_fmt = DRM_FORMAT_ABGR2101010,
+		.de2_fmt = SUN8I_MIXER_FBFMT_ABGR2101010,
+		.rgb = true,
+		.csc = SUN8I_CSC_MODE_OFF,
+	},
+	{
+		.drm_fmt = DRM_FORMAT_RGBA1010102,
+		.de2_fmt = SUN8I_MIXER_FBFMT_RGBA1010102,
+		.rgb = true,
+		.csc = SUN8I_CSC_MODE_OFF,
+	},
+	{
+		.drm_fmt = DRM_FORMAT_BGRA1010102,
+		.de2_fmt = SUN8I_MIXER_FBFMT_BGRA1010102,
+		.rgb = true,
+		.csc = SUN8I_CSC_MODE_OFF,
+	},
 	{
 		.drm_fmt = DRM_FORMAT_UYVY,
 		.de2_fmt = SUN8I_MIXER_FBFMT_UYVY,
@@ -232,6 +256,18 @@ static const struct de2_fmt_info de2_formats[] = {
 		.rgb = false,
 		.csc = SUN8I_CSC_MODE_YVU2RGB,
 	},
+	{
+		.drm_fmt = DRM_FORMAT_P010,
+		.de2_fmt = SUN8I_MIXER_FBFMT_P010_YUV,
+		.rgb = false,
+		.csc = SUN8I_CSC_MODE_YUV2RGB,
+	},
+	{
+		.drm_fmt = DRM_FORMAT_P210,
+		.de2_fmt = SUN8I_MIXER_FBFMT_P210_YUV,
+		.rgb = false,
+		.csc = SUN8I_CSC_MODE_YUV2RGB,
+	},
 };
 
 const struct de2_fmt_info *sun8i_mixer_format_info(u32 format)
diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.h b/drivers/gpu/drm/sun4i/sun8i_mixer.h
index c6cc94057faf..345b28b0a80a 100644
--- a/drivers/gpu/drm/sun4i/sun8i_mixer.h
+++ b/drivers/gpu/drm/sun4i/sun8i_mixer.h
@@ -93,6 +93,10 @@
 #define SUN8I_MIXER_FBFMT_ABGR1555	17
 #define SUN8I_MIXER_FBFMT_RGBA5551	18
 #define SUN8I_MIXER_FBFMT_BGRA5551	19
+#define SUN8I_MIXER_FBFMT_ARGB2101010	20
+#define SUN8I_MIXER_FBFMT_ABGR2101010	21
+#define SUN8I_MIXER_FBFMT_RGBA1010102	22
+#define SUN8I_MIXER_FBFMT_BGRA1010102	23
 
 #define SUN8I_MIXER_FBFMT_YUYV		0
 #define SUN8I_MIXER_FBFMT_UYVY		1
@@ -109,6 +113,13 @@
 /* format 12 is semi-planar YUV411 UVUV */
 /* format 13 is semi-planar YUV411 VUVU */
 #define SUN8I_MIXER_FBFMT_YUV411	14
+/* format 15 doesn't exist */
+/* format 16 is P010 YVU */
+#define SUN8I_MIXER_FBFMT_P010_YUV	17
+/* format 18 is P210 YVU */
+#define SUN8I_MIXER_FBFMT_P210_YUV	19
+/* format 20 is packed YVU444 10-bit */
+/* format 21 is packed YUV444 10-bit */
 
 /*
  * Sub-engines listed bellow are unused for now. The EN registers are here only
diff --git a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
index 6a244d6fafd9..6c0084a3c3d7 100644
--- a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
@@ -436,24 +436,76 @@ static const u32 sun8i_vi_layer_formats[] = {
 	DRM_FORMAT_YVU422,
 };
 
+static const u32 sun8i_vi_layer_de3_formats[] = {
+	DRM_FORMAT_ABGR1555,
+	DRM_FORMAT_ABGR2101010,
+	DRM_FORMAT_ABGR4444,
+	DRM_FORMAT_ABGR8888,
+	DRM_FORMAT_ARGB1555,
+	DRM_FORMAT_ARGB2101010,
+	DRM_FORMAT_ARGB4444,
+	DRM_FORMAT_ARGB8888,
+	DRM_FORMAT_BGR565,
+	DRM_FORMAT_BGR888,
+	DRM_FORMAT_BGRA1010102,
+	DRM_FORMAT_BGRA5551,
+	DRM_FORMAT_BGRA4444,
+	DRM_FORMAT_BGRA8888,
+	DRM_FORMAT_BGRX8888,
+	DRM_FORMAT_RGB565,
+	DRM_FORMAT_RGB888,
+	DRM_FORMAT_RGBA1010102,
+	DRM_FORMAT_RGBA4444,
+	DRM_FORMAT_RGBA5551,
+	DRM_FORMAT_RGBA8888,
+	DRM_FORMAT_RGBX8888,
+	DRM_FORMAT_XBGR8888,
+	DRM_FORMAT_XRGB8888,
+
+	DRM_FORMAT_NV16,
+	DRM_FORMAT_NV12,
+	DRM_FORMAT_NV21,
+	DRM_FORMAT_NV61,
+	DRM_FORMAT_P010,
+	DRM_FORMAT_P210,
+	DRM_FORMAT_UYVY,
+	DRM_FORMAT_VYUY,
+	DRM_FORMAT_YUYV,
+	DRM_FORMAT_YVYU,
+	DRM_FORMAT_YUV411,
+	DRM_FORMAT_YUV420,
+	DRM_FORMAT_YUV422,
+	DRM_FORMAT_YVU411,
+	DRM_FORMAT_YVU420,
+	DRM_FORMAT_YVU422,
+};
+
 struct sun8i_vi_layer *sun8i_vi_layer_init_one(struct drm_device *drm,
 					       struct sun8i_mixer *mixer,
 					       int index)
 {
 	u32 supported_encodings, supported_ranges;
+	unsigned int plane_cnt, format_count;
 	struct sun8i_vi_layer *layer;
-	unsigned int plane_cnt;
+	const u32 *formats;
 	int ret;
 
 	layer = devm_kzalloc(drm->dev, sizeof(*layer), GFP_KERNEL);
 	if (!layer)
 		return ERR_PTR(-ENOMEM);
 
+	if (mixer->cfg->is_de3) {
+		formats = sun8i_vi_layer_de3_formats;
+		format_count = ARRAY_SIZE(sun8i_vi_layer_de3_formats);
+	} else {
+		formats = sun8i_vi_layer_formats;
+		format_count = ARRAY_SIZE(sun8i_vi_layer_formats);
+	}
+
 	/* possible crtcs are set later */
 	ret = drm_universal_plane_init(drm, &layer->plane, 0,
 				       &sun8i_vi_layer_funcs,
-				       sun8i_vi_layer_formats,
-				       ARRAY_SIZE(sun8i_vi_layer_formats),
+				       formats, format_count,
 				       NULL, DRM_PLANE_TYPE_OVERLAY, NULL);
 	if (ret) {
 		dev_err(drm->dev, "Couldn't initialize layer\n");
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
