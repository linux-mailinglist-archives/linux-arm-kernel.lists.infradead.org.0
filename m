Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0BF16ADDA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 18:42:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=trCRIyEJccdhzQTanA4hkbLgkaO5hmrJSqy1Ps7GfkA=; b=e89kZIDapTbrAL
	s+3qLrmSQ55K7BBws5yr4i7JbTQzXt7nn3jo/v1QpJFsYrGlGADHxpcpdpsFdQrwEnHvJ7eJcesuW
	jm3LtHa0JiD4AuC9GqhWdpoSyyeqPIazc0Peg/F0MI4hqSrsYXxtQmK0/eJu2AGOVXGrdu6TR6qt/
	g/FDbRU7KsCnlcM3eM9wdpbq2r5J1MqvqJLt5fUijwotHPA0h9P2deH8zimmzT7UigZLqkaaZVJm4
	1ID/lRR5TXF8EmWHFH2zvD+duo04h5cik3zFPFGtJ75JLbJv/lc5WB6vuTXQ58f3KTZ6+ak0qbDcu
	fOB1brew8d2hGJgj7EcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Hk9-0002a3-Jw; Mon, 24 Feb 2020 17:42:09 +0000
Received: from mailoutvs15.siol.net ([185.57.226.206] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6HhV-0008Ab-AS
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 17:39:27 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id D633A5236FC;
 Mon, 24 Feb 2020 18:39:23 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id bQ31Av_L3CjJ; Mon, 24 Feb 2020 18:39:23 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 6F5505236BE;
 Mon, 24 Feb 2020 18:39:23 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 118EE52373C;
 Mon, 24 Feb 2020 18:39:21 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH 6/7] drm/sun4i: de2: Don't return de2_fmt_info struct
Date: Mon, 24 Feb 2020 18:39:00 +0100
Message-Id: <20200224173901.174016-7-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200224173901.174016-1-jernej.skrabec@siol.net>
References: <20200224173901.174016-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_093925_602582_7B850D81 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.206 listed in list.dnswl.org]
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

Now that de2_fmt_info contains only DRM <-> HW format mapping, it
doesn't make sense to return pointer to structure when searching by DRM
format. Rework that to return only HW format instead.

This doesn't make any functional change.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/gpu/drm/sun4i/sun8i_mixer.c    | 15 +++++++++++----
 drivers/gpu/drm/sun4i/sun8i_mixer.h    |  7 +------
 drivers/gpu/drm/sun4i/sun8i_ui_layer.c | 10 +++++-----
 drivers/gpu/drm/sun4i/sun8i_vi_layer.c | 12 ++++++------
 4 files changed, 23 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.c b/drivers/gpu/drm/sun4i/sun8i_mixer.c
index e078ec96de2d..56cc037fd312 100644
--- a/drivers/gpu/drm/sun4i/sun8i_mixer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_mixer.c
@@ -27,6 +27,11 @@
 #include "sun8i_vi_layer.h"
 #include "sunxi_engine.h"
 
+struct de2_fmt_info {
+	u32	drm_fmt;
+	u32	de2_fmt;
+};
+
 static const struct de2_fmt_info de2_formats[] = {
 	{
 		.drm_fmt = DRM_FORMAT_ARGB8888,
@@ -230,15 +235,17 @@ static const struct de2_fmt_info de2_formats[] = {
 	},
 };
 
-const struct de2_fmt_info *sun8i_mixer_format_info(u32 format)
+int sun8i_mixer_drm_format_to_hw(u32 format, u32 *hw_format)
 {
 	unsigned int i;
 
 	for (i = 0; i < ARRAY_SIZE(de2_formats); ++i)
-		if (de2_formats[i].drm_fmt == format)
-			return &de2_formats[i];
+		if (de2_formats[i].drm_fmt == format) {
+			*hw_format = de2_formats[i].de2_fmt;
+			return 0;
+		}
 
-	return NULL;
+	return -EINVAL;
 }
 
 static void sun8i_mixer_commit(struct sunxi_engine *engine)
diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.h b/drivers/gpu/drm/sun4i/sun8i_mixer.h
index 0dd4a347fa06..7576b523fdbb 100644
--- a/drivers/gpu/drm/sun4i/sun8i_mixer.h
+++ b/drivers/gpu/drm/sun4i/sun8i_mixer.h
@@ -143,11 +143,6 @@
 #define SUN50I_MIXER_CDC0_EN			0xd0000
 #define SUN50I_MIXER_CDC1_EN			0xd8000
 
-struct de2_fmt_info {
-	u32	drm_fmt;
-	u32	de2_fmt;
-};
-
 /**
  * struct sun8i_mixer_cfg - mixer HW configuration
  * @vi_num: number of VI channels
@@ -207,5 +202,5 @@ sun8i_channel_base(struct sun8i_mixer *mixer, int channel)
 		return DE2_CH_BASE + channel * DE2_CH_SIZE;
 }
 
-const struct de2_fmt_info *sun8i_mixer_format_info(u32 format);
+int sun8i_mixer_drm_format_to_hw(u32 format, u32 *hw_format);
 #endif /* _SUN8I_MIXER_H_ */
diff --git a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
index 99ee19a00415..a64aaea1ba74 100644
--- a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
@@ -174,20 +174,20 @@ static int sun8i_ui_layer_update_formats(struct sun8i_mixer *mixer, int channel,
 					 int overlay, struct drm_plane *plane)
 {
 	struct drm_plane_state *state = plane->state;
-	const struct de2_fmt_info *fmt_info;
 	const struct drm_format_info *fmt;
-	u32 val, ch_base;
+	u32 val, ch_base, hw_fmt;
+	int ret;
 
 	ch_base = sun8i_channel_base(mixer, channel);
 
 	fmt = state->fb->format;
-	fmt_info = sun8i_mixer_format_info(fmt->format);
-	if (!fmt_info || fmt->is_yuv) {
+	ret = sun8i_mixer_drm_format_to_hw(fmt->format, &hw_fmt);
+	if (ret || fmt->is_yuv) {
 		DRM_DEBUG_DRIVER("Invalid format\n");
 		return -EINVAL;
 	}
 
-	val = fmt_info->de2_fmt << SUN8I_MIXER_CHAN_UI_LAYER_ATTR_FBFMT_OFFSET;
+	val = hw_fmt << SUN8I_MIXER_CHAN_UI_LAYER_ATTR_FBFMT_OFFSET;
 	regmap_update_bits(mixer->engine.regs,
 			   SUN8I_MIXER_CHAN_UI_LAYER_ATTR(ch_base, overlay),
 			   SUN8I_MIXER_CHAN_UI_LAYER_ATTR_FBFMT_MASK, val);
diff --git a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
index d783c2bfc77e..b1e1ba2da663 100644
--- a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
@@ -231,20 +231,20 @@ static int sun8i_vi_layer_update_formats(struct sun8i_mixer *mixer, int channel,
 					 int overlay, struct drm_plane *plane)
 {
 	struct drm_plane_state *state = plane->state;
-	const struct de2_fmt_info *fmt_info;
+	u32 val, ch_base, csc_mode, hw_fmt;
 	const struct drm_format_info *fmt;
-	u32 val, ch_base, csc_mode;
+	int ret;
 
 	ch_base = sun8i_channel_base(mixer, channel);
 
 	fmt = state->fb->format;
-	fmt_info = sun8i_mixer_format_info(fmt->format);
-	if (!fmt_info) {
+	ret = sun8i_mixer_drm_format_to_hw(fmt->format, &hw_fmt);
+	if (ret) {
 		DRM_DEBUG_DRIVER("Invalid format\n");
-		return -EINVAL;
+		return ret;
 	}
 
-	val = fmt_info->de2_fmt << SUN8I_MIXER_CHAN_VI_LAYER_ATTR_FBFMT_OFFSET;
+	val = hw_fmt << SUN8I_MIXER_CHAN_VI_LAYER_ATTR_FBFMT_OFFSET;
 	regmap_update_bits(mixer->engine.regs,
 			   SUN8I_MIXER_CHAN_VI_LAYER_ATTR(ch_base, overlay),
 			   SUN8I_MIXER_CHAN_VI_LAYER_ATTR_FBFMT_MASK, val);
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
