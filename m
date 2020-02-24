Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1DA316ADCC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 18:40:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JMq5shVfQ8SmFLY65Cg4UrHQ3l3J6nJiWh0R9M6Nev4=; b=ZU00/jVSFeI1Ii
	EC7+vX3ihuWgmrY7JwdJ5oKofjq2sIgoEZkpNRLI18GLGcUw7wjpn0nDq0nfwDzE+rOBeluLVap5d
	zmgHLWzdskFfpQtj8h22QZaC5Pog3rp38SCU4FG6LBnj/TdDw+9Q79Qknn3yr5nkFr3OL4iSwyRnK
	bJ7Z03gzDpTbpnscQ3kzqVjG093fdctKMOPAc4xFLjw4X9FuIEcOASQHRGq+Uxqal5bPB4MoX6ijk
	Q74k1IF4cuQgerqGB9Ucrl0GOlgChZ4k79xnj8qTKjyeVH4m3ajfr+t/Z2fg2o1mNwop4ghCpoB80
	KkT0qzAFzIJE9/VAsD4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Hin-0001dV-E4; Mon, 24 Feb 2020 17:40:45 +0000
Received: from mailoutvs5.siol.net ([185.57.226.196] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6HhR-00086i-Jw
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 17:39:24 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id B5E49523735;
 Mon, 24 Feb 2020 18:39:16 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id VgrH-4XPApOv; Mon, 24 Feb 2020 18:39:16 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 52FC25236BB;
 Mon, 24 Feb 2020 18:39:16 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 0463C5236EE;
 Mon, 24 Feb 2020 18:39:14 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH 3/7] drm/sun4i: Fix DE2 VI layer format support
Date: Mon, 24 Feb 2020 18:38:57 +0100
Message-Id: <20200224173901.174016-4-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200224173901.174016-1-jernej.skrabec@siol.net>
References: <20200224173901.174016-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_093921_834065_89080602 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.196 listed in list.dnswl.org]
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

DE2 VI layer doesn't support blending which means alpha channel is
ignored. Replace all formats with alpha with "don't care" (X) channel.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/gpu/drm/sun4i/sun8i_mixer.c    | 56 ++++++++++++++++++++++++++
 drivers/gpu/drm/sun4i/sun8i_vi_layer.c | 22 +++++-----
 2 files changed, 67 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.c b/drivers/gpu/drm/sun4i/sun8i_mixer.c
index 655445bfe64a..4a64f7ae437a 100644
--- a/drivers/gpu/drm/sun4i/sun8i_mixer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_mixer.c
@@ -106,48 +106,104 @@ static const struct de2_fmt_info de2_formats[] = {
 		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
+	{
+		/* for DE2 VI layer which ignores alpha */
+		.drm_fmt = DRM_FORMAT_XRGB4444,
+		.de2_fmt = SUN8I_MIXER_FBFMT_ARGB4444,
+		.rgb = true,
+		.csc = SUN8I_CSC_MODE_OFF,
+	},
 	{
 		.drm_fmt = DRM_FORMAT_ABGR4444,
 		.de2_fmt = SUN8I_MIXER_FBFMT_ABGR4444,
 		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
+	{
+		/* for DE2 VI layer which ignores alpha */
+		.drm_fmt = DRM_FORMAT_XBGR4444,
+		.de2_fmt = SUN8I_MIXER_FBFMT_ABGR4444,
+		.rgb = true,
+		.csc = SUN8I_CSC_MODE_OFF,
+	},
 	{
 		.drm_fmt = DRM_FORMAT_RGBA4444,
 		.de2_fmt = SUN8I_MIXER_FBFMT_RGBA4444,
 		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
+	{
+		/* for DE2 VI layer which ignores alpha */
+		.drm_fmt = DRM_FORMAT_RGBX4444,
+		.de2_fmt = SUN8I_MIXER_FBFMT_RGBA4444,
+		.rgb = true,
+		.csc = SUN8I_CSC_MODE_OFF,
+	},
 	{
 		.drm_fmt = DRM_FORMAT_BGRA4444,
 		.de2_fmt = SUN8I_MIXER_FBFMT_BGRA4444,
 		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
+	{
+		/* for DE2 VI layer which ignores alpha */
+		.drm_fmt = DRM_FORMAT_BGRX4444,
+		.de2_fmt = SUN8I_MIXER_FBFMT_BGRA4444,
+		.rgb = true,
+		.csc = SUN8I_CSC_MODE_OFF,
+	},
 	{
 		.drm_fmt = DRM_FORMAT_ARGB1555,
 		.de2_fmt = SUN8I_MIXER_FBFMT_ARGB1555,
 		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
+	{
+		/* for DE2 VI layer which ignores alpha */
+		.drm_fmt = DRM_FORMAT_XRGB1555,
+		.de2_fmt = SUN8I_MIXER_FBFMT_ARGB1555,
+		.rgb = true,
+		.csc = SUN8I_CSC_MODE_OFF,
+	},
 	{
 		.drm_fmt = DRM_FORMAT_ABGR1555,
 		.de2_fmt = SUN8I_MIXER_FBFMT_ABGR1555,
 		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
+	{
+		/* for DE2 VI layer which ignores alpha */
+		.drm_fmt = DRM_FORMAT_XBGR1555,
+		.de2_fmt = SUN8I_MIXER_FBFMT_ABGR1555,
+		.rgb = true,
+		.csc = SUN8I_CSC_MODE_OFF,
+	},
 	{
 		.drm_fmt = DRM_FORMAT_RGBA5551,
 		.de2_fmt = SUN8I_MIXER_FBFMT_RGBA5551,
 		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
+	{
+		/* for DE2 VI layer which ignores alpha */
+		.drm_fmt = DRM_FORMAT_RGBX5551,
+		.de2_fmt = SUN8I_MIXER_FBFMT_RGBA5551,
+		.rgb = true,
+		.csc = SUN8I_CSC_MODE_OFF,
+	},
 	{
 		.drm_fmt = DRM_FORMAT_BGRA5551,
 		.de2_fmt = SUN8I_MIXER_FBFMT_BGRA5551,
 		.rgb = true,
 		.csc = SUN8I_CSC_MODE_OFF,
 	},
+	{
+		/* for DE2 VI layer which ignores alpha */
+		.drm_fmt = DRM_FORMAT_BGRX5551,
+		.de2_fmt = SUN8I_MIXER_FBFMT_BGRA5551,
+		.rgb = true,
+		.csc = SUN8I_CSC_MODE_OFF,
+	},
 	{
 		.drm_fmt = DRM_FORMAT_ARGB2101010,
 		.de2_fmt = SUN8I_MIXER_FBFMT_ARGB2101010,
diff --git a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
index 6c0084a3c3d7..b8398ca18b0f 100644
--- a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
@@ -398,26 +398,26 @@ static const struct drm_plane_funcs sun8i_vi_layer_funcs = {
 };
 
 /*
- * While all RGB formats are supported, VI planes don't support
- * alpha blending, so there is no point having formats with alpha
- * channel if their opaque analog exist.
+ * While DE2 VI layer supports same RGB formats as UI layer, alpha
+ * channel is ignored. This structure lists all unique variants
+ * where alpha channel is replaced with "don't care" (X) channel.
  */
 static const u32 sun8i_vi_layer_formats[] = {
-	DRM_FORMAT_ABGR1555,
-	DRM_FORMAT_ABGR4444,
-	DRM_FORMAT_ARGB1555,
-	DRM_FORMAT_ARGB4444,
 	DRM_FORMAT_BGR565,
 	DRM_FORMAT_BGR888,
-	DRM_FORMAT_BGRA5551,
-	DRM_FORMAT_BGRA4444,
+	DRM_FORMAT_BGRX4444,
+	DRM_FORMAT_BGRX5551,
 	DRM_FORMAT_BGRX8888,
 	DRM_FORMAT_RGB565,
 	DRM_FORMAT_RGB888,
-	DRM_FORMAT_RGBA4444,
-	DRM_FORMAT_RGBA5551,
+	DRM_FORMAT_RGBX4444,
+	DRM_FORMAT_RGBX5551,
 	DRM_FORMAT_RGBX8888,
+	DRM_FORMAT_XBGR1555,
+	DRM_FORMAT_XBGR4444,
 	DRM_FORMAT_XBGR8888,
+	DRM_FORMAT_XRGB1555,
+	DRM_FORMAT_XRGB4444,
 	DRM_FORMAT_XRGB8888,
 
 	DRM_FORMAT_NV16,
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
