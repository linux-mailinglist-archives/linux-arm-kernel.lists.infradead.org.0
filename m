Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B85CBB403
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 14:40:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8OMb6i5zKbjp8RjGHsE8RfnK1jp9EXs5qQ7mehFqj7g=; b=ijmbrutLGImii0PFVSGmbOFgFS
	G6trqdhJqNYsBVxJvMUpSL+OP+aqNK/TI8HlvCKwUP8EaEuG2KGp0eaUhgGoC/pqjmHcYus396+aL
	aKOfrJZ9M9eMJyLdkNFCFMGbGCen7JVZKPdvcXBwxmcv64KCJegR1eMrMV92DHp+HjZs049gFxqJm
	sxOEmDkaAagACwsvQK33r32Pzh8IRS5eRB1HUElIzmVkQnGOnKQCJMA1xKBURTrdVq/1Sd6cLhGnt
	CYgf9cCLMYTYJN5BMwxesauBWBIR3pzWBPn7MoCfPM3BpK+SdoivRxPmrmc+s/uy6OZ0Hun/xyP96
	Btx87iOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCNdx-0004XL-Fn; Mon, 23 Sep 2019 12:40:41 +0000
Received: from regular1.263xmail.com ([211.150.70.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCNdP-0003Sh-Km
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 12:40:09 +0000
Received: from hjc?rock-chips.com (unknown [192.168.167.32])
 by regular1.263xmail.com (Postfix) with ESMTP id B3EAB3E9;
 Mon, 23 Sep 2019 20:40:04 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P10893T140454720919296S1569242369031174_; 
 Mon, 23 Sep 2019 20:40:03 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <34ffe67a50f98c47a25cd474b3d01953>
X-RL-SENDER: hjc@rock-chips.com
X-SENDER: hjc@rock-chips.com
X-LOGIN-NAME: hjc@rock-chips.com
X-FST-TO: dri-devel@lists.freedesktop.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Sandy Huang <hjc@rock-chips.com>
To: dri-devel@lists.freedesktop.org, Inki Dae <inki.dae@samsung.com>,
 Joonyoung Shim <jy0922.shim@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH 04/36] drm: exynos: use bpp instead of cpp for drm_format_info
Date: Mon, 23 Sep 2019 20:38:53 +0800
Message-Id: <1569242365-182133-5-git-send-email-hjc@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569242365-182133-1-git-send-email-hjc@rock-chips.com>
References: <1569242365-182133-1-git-send-email-hjc@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_054008_127876_BA98E186 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.199 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: linux-samsung-soc@vger.kernel.org, hjc@rock-chips.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cpp[BytePerPlane] can't describe the 10bit data format correctly,
So we use bpp[BitPerPlane] to instead cpp.

Signed-off-by: Sandy Huang <hjc@rock-chips.com>
---
 drivers/gpu/drm/exynos/exynos5433_drm_decon.c | 4 ++--
 drivers/gpu/drm/exynos/exynos7_drm_decon.c    | 6 +++---
 drivers/gpu/drm/exynos/exynos_drm_fbdev.c     | 4 ++--
 drivers/gpu/drm/exynos/exynos_drm_fimc.c      | 6 +++---
 drivers/gpu/drm/exynos/exynos_drm_fimd.c      | 2 +-
 drivers/gpu/drm/exynos/exynos_drm_gsc.c       | 4 ++--
 drivers/gpu/drm/exynos/exynos_drm_ipp.c       | 6 +++---
 drivers/gpu/drm/exynos/exynos_drm_rotator.c   | 4 ++--
 drivers/gpu/drm/exynos/exynos_drm_scaler.c    | 4 ++--
 drivers/gpu/drm/exynos/exynos_mixer.c         | 4 ++--
 10 files changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/exynos/exynos5433_drm_decon.c b/drivers/gpu/drm/exynos/exynos5433_drm_decon.c
index 2d5cbfd..9401591 100644
--- a/drivers/gpu/drm/exynos/exynos5433_drm_decon.c
+++ b/drivers/gpu/drm/exynos/exynos5433_drm_decon.c
@@ -356,7 +356,7 @@ static void decon_win_set_pixfmt(struct decon_context *ctx, unsigned int win,
 		break;
 	}
 
-	DRM_DEV_DEBUG_KMS(ctx->dev, "cpp = %u\n", fb->format->cpp[0]);
+	DRM_DEV_DEBUG_KMS(ctx->dev, "bpp = %u\n", fb->format->bpp[0]);
 
 	/*
 	 * In case of exynos, setting dma-burst to 16Word causes permanent
@@ -403,7 +403,7 @@ static void decon_update_plane(struct exynos_drm_crtc *crtc,
 	struct decon_context *ctx = crtc->ctx;
 	struct drm_framebuffer *fb = state->base.fb;
 	unsigned int win = plane->index;
-	unsigned int cpp = fb->format->cpp[0];
+	unsigned int cpp = fb->format->bpp[0] / 8;
 	unsigned int pitch = fb->pitches[0];
 	dma_addr_t dma_addr = exynos_drm_fb_dma_addr(fb, 0);
 	u32 val;
diff --git a/drivers/gpu/drm/exynos/exynos7_drm_decon.c b/drivers/gpu/drm/exynos/exynos7_drm_decon.c
index f064095..d6158b7 100644
--- a/drivers/gpu/drm/exynos/exynos7_drm_decon.c
+++ b/drivers/gpu/drm/exynos/exynos7_drm_decon.c
@@ -310,7 +310,7 @@ static void decon_win_set_pixfmt(struct decon_context *ctx, unsigned int win,
 		break;
 	}
 
-	DRM_DEV_DEBUG_KMS(ctx->dev, "cpp = %d\n", fb->format->cpp[0]);
+	DRM_DEV_DEBUG_KMS(ctx->dev, "bpp = %d\n", fb->format->bpp[0]);
 
 	/*
 	 * In case of exynos, setting dma-burst to 16Word causes permanent
@@ -320,7 +320,7 @@ static void decon_win_set_pixfmt(struct decon_context *ctx, unsigned int win,
 	 * movement causes unstable DMA which results into iommu crash/tear.
 	 */
 
-	padding = (fb->pitches[0] / fb->format->cpp[0]) - fb->width;
+	padding = (fb->pitches[0] / fb->format->bpp[0] / 8) - fb->width;
 	if (fb->width + padding < MIN_FB_WIDTH_FOR_16WORD_BURST) {
 		val &= ~WINCONx_BURSTLEN_MASK;
 		val |= WINCONx_BURSTLEN_8WORD;
@@ -387,7 +387,7 @@ static void decon_update_plane(struct exynos_drm_crtc *crtc,
 	unsigned int last_x;
 	unsigned int last_y;
 	unsigned int win = plane->index;
-	unsigned int cpp = fb->format->cpp[0];
+	unsigned int cpp = fb->format->bpp[0] / 8;
 	unsigned int pitch = fb->pitches[0];
 
 	if (ctx->suspended)
diff --git a/drivers/gpu/drm/exynos/exynos_drm_fbdev.c b/drivers/gpu/drm/exynos/exynos_drm_fbdev.c
index b0877b9..f82ac12 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_fbdev.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_fbdev.c
@@ -75,7 +75,7 @@ static int exynos_drm_fbdev_update(struct drm_fb_helper *helper,
 {
 	struct fb_info *fbi;
 	struct drm_framebuffer *fb = helper->fb;
-	unsigned int size = fb->width * fb->height * fb->format->cpp[0];
+	unsigned int size = fb->width * fb->height * fb->format->bpp[0] / 8;
 	unsigned int nr_pages;
 	unsigned long offset;
 
@@ -100,7 +100,7 @@ static int exynos_drm_fbdev_update(struct drm_fb_helper *helper,
 		return -EIO;
 	}
 
-	offset = fbi->var.xoffset * fb->format->cpp[0];
+	offset = fbi->var.xoffset * fb->format->bpp[0] / 8;
 	offset += fbi->var.yoffset * fb->pitches[0];
 
 	fbi->screen_base = exynos_gem->kvaddr + offset;
diff --git a/drivers/gpu/drm/exynos/exynos_drm_fimc.c b/drivers/gpu/drm/exynos/exynos_drm_fimc.c
index a594ab7..ceb889c 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_fimc.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_fimc.c
@@ -466,7 +466,7 @@ static void fimc_src_set_transf(struct fimc_context *ctx, unsigned int rotation)
 static void fimc_set_window(struct fimc_context *ctx,
 			    struct exynos_drm_ipp_buffer *buf)
 {
-	unsigned int real_width = buf->buf.pitch[0] / buf->format->cpp[0];
+	unsigned int real_width = buf->buf.pitch[0] / buf->format->bpp[0] / 8;
 	u32 cfg, h1, h2, v1, v2;
 
 	/* cropped image */
@@ -501,7 +501,7 @@ static void fimc_set_window(struct fimc_context *ctx,
 static void fimc_src_set_size(struct fimc_context *ctx,
 			      struct exynos_drm_ipp_buffer *buf)
 {
-	unsigned int real_width = buf->buf.pitch[0] / buf->format->cpp[0];
+	unsigned int real_width = buf->buf.pitch[0] / buf->format->bpp[0] / 8;
 	u32 cfg;
 
 	DRM_DEV_DEBUG_KMS(ctx->dev, "hsize[%d]vsize[%d]\n", real_width,
@@ -843,7 +843,7 @@ static void fimc_set_scaler(struct fimc_context *ctx, struct fimc_scaler *sc)
 static void fimc_dst_set_size(struct fimc_context *ctx,
 			     struct exynos_drm_ipp_buffer *buf)
 {
-	unsigned int real_width = buf->buf.pitch[0] / buf->format->cpp[0];
+	unsigned int real_width = buf->buf.pitch[0] / buf->format->bpp[0] / 8;
 	u32 cfg, cfg_ext;
 
 	DRM_DEV_DEBUG_KMS(ctx->dev, "hsize[%d]vsize[%d]\n", real_width,
diff --git a/drivers/gpu/drm/exynos/exynos_drm_fimd.c b/drivers/gpu/drm/exynos/exynos_drm_fimd.c
index 8d0a929..561597b 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_fimd.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_fimd.c
@@ -795,7 +795,7 @@ static void fimd_update_plane(struct exynos_drm_crtc *crtc,
 	unsigned long val, size, offset;
 	unsigned int last_x, last_y, buf_offsize, line_size;
 	unsigned int win = plane->index;
-	unsigned int cpp = fb->format->cpp[0];
+	unsigned int cpp = fb->format->bpp[0] / 8;
 	unsigned int pitch = fb->pitches[0];
 
 	if (ctx->suspended)
diff --git a/drivers/gpu/drm/exynos/exynos_drm_gsc.c b/drivers/gpu/drm/exynos/exynos_drm_gsc.c
index 1e4b21c..a15e2d9 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_gsc.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_gsc.c
@@ -579,7 +579,7 @@ static void gsc_src_set_size(struct gsc_context *ctx,
 	cfg &= ~(GSC_SRCIMG_HEIGHT_MASK |
 		GSC_SRCIMG_WIDTH_MASK);
 
-	cfg |= (GSC_SRCIMG_WIDTH(buf->buf.pitch[0] / buf->format->cpp[0]) |
+	cfg |= (GSC_SRCIMG_WIDTH(buf->buf.pitch[0] / buf->format->bpp[0] / 8) |
 		GSC_SRCIMG_HEIGHT(buf->buf.height));
 
 	gsc_write(cfg, GSC_SRCIMG_SIZE);
@@ -881,7 +881,7 @@ static void gsc_dst_set_size(struct gsc_context *ctx,
 	/* original size */
 	cfg = gsc_read(GSC_DSTIMG_SIZE);
 	cfg &= ~(GSC_DSTIMG_HEIGHT_MASK | GSC_DSTIMG_WIDTH_MASK);
-	cfg |= GSC_DSTIMG_WIDTH(buf->buf.pitch[0] / buf->format->cpp[0]) |
+	cfg |= GSC_DSTIMG_WIDTH(buf->buf.pitch[0] / buf->format->bpp[0] / 8) |
 	       GSC_DSTIMG_HEIGHT(buf->buf.height);
 	gsc_write(cfg, GSC_DSTIMG_SIZE);
 
diff --git a/drivers/gpu/drm/exynos/exynos_drm_ipp.c b/drivers/gpu/drm/exynos/exynos_drm_ipp.c
index d45bfab..14c728e 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_ipp.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_ipp.c
@@ -475,7 +475,7 @@ static int exynos_drm_ipp_check_size_limits(struct exynos_drm_ipp_buffer *buf,
 	enum drm_ipp_size_id id = rotate ? IPP_LIMIT_ROTATED : IPP_LIMIT_AREA;
 	struct drm_ipp_limit l;
 	struct drm_exynos_ipp_limit_val *lh = &l.h, *lv = &l.v;
-	int real_width = buf->buf.pitch[0] / buf->format->cpp[0];
+	int real_width = buf->buf.pitch[0] / buf->format->bpp[0] / 8;
 
 	if (!limits)
 		return 0;
@@ -570,8 +570,8 @@ static int exynos_drm_ipp_check_format(struct exynos_drm_ipp_task *task,
 			     DIV_ROUND_UP(buf->buf.width, buf->format->hsub);
 
 		if (buf->buf.pitch[i] == 0)
-			buf->buf.pitch[i] = width * buf->format->cpp[i];
-		if (buf->buf.pitch[i] < width * buf->format->cpp[i])
+			buf->buf.pitch[i] = width * buf->format->bpp[i] / 8;
+		if (buf->buf.pitch[i] < width * buf->format->bpp[i] / 8)
 			return -EINVAL;
 		if (!buf->buf.gem_id[i])
 			return -ENOENT;
diff --git a/drivers/gpu/drm/exynos/exynos_drm_rotator.c b/drivers/gpu/drm/exynos/exynos_drm_rotator.c
index 8ebad27..8d1da0f 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_rotator.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_rotator.c
@@ -139,7 +139,7 @@ static void rotator_src_set_buf(struct rot_context *rot,
 
 	/* Set buffer size configuration */
 	val = ROT_SET_BUF_SIZE_H(buf->buf.height) |
-	      ROT_SET_BUF_SIZE_W(buf->buf.pitch[0] / buf->format->cpp[0]);
+	      ROT_SET_BUF_SIZE_W(buf->buf.pitch[0] / buf->format->bpp[0] / 8);
 	rot_write(val, ROT_SRC_BUF_SIZE);
 
 	/* Set crop image position configuration */
@@ -187,7 +187,7 @@ static void rotator_dst_set_buf(struct rot_context *rot,
 
 	/* Set buffer size configuration */
 	val = ROT_SET_BUF_SIZE_H(buf->buf.height) |
-	      ROT_SET_BUF_SIZE_W(buf->buf.pitch[0] / buf->format->cpp[0]);
+	      ROT_SET_BUF_SIZE_W(buf->buf.pitch[0] / buf->format->bpp[0] / 8);
 	rot_write(val, ROT_DST_BUF_SIZE);
 
 	/* Set crop image position configuration */
diff --git a/drivers/gpu/drm/exynos/exynos_drm_scaler.c b/drivers/gpu/drm/exynos/exynos_drm_scaler.c
index 9af0964..c9ad312 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_scaler.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_scaler.c
@@ -166,7 +166,7 @@ static inline void scaler_set_src_span(struct scaler_context *scaler,
 	u32 val;
 
 	val = SCALER_SRC_SPAN_SET_Y_SPAN(src_buf->buf.pitch[0] /
-		src_buf->format->cpp[0]);
+		src_buf->format->bpp[0] / 8);
 
 	if (src_buf->format->num_planes > 1)
 		val |= SCALER_SRC_SPAN_SET_C_SPAN(src_buf->buf.pitch[1]);
@@ -229,7 +229,7 @@ static inline void scaler_set_dst_span(struct scaler_context *scaler,
 	u32 val;
 
 	val = SCALER_DST_SPAN_SET_Y_SPAN(dst_buf->buf.pitch[0] /
-		dst_buf->format->cpp[0]);
+		dst_buf->format->bpp[0] / 8);
 
 	if (dst_buf->format->num_planes > 1)
 		val |= SCALER_DST_SPAN_SET_C_SPAN(dst_buf->buf.pitch[1]);
diff --git a/drivers/gpu/drm/exynos/exynos_mixer.c b/drivers/gpu/drm/exynos/exynos_mixer.c
index 7b24338f..015dbab 100644
--- a/drivers/gpu/drm/exynos/exynos_mixer.c
+++ b/drivers/gpu/drm/exynos/exynos_mixer.c
@@ -646,7 +646,7 @@ static void mixer_graph_buffer(struct mixer_context *ctx,
 
 	/* translate dma address base s.t. the source image offset is zero */
 	dma_addr = exynos_drm_fb_dma_addr(fb, 0)
-		+ (state->src.x * fb->format->cpp[0])
+		+ (state->src.x * fb->format->bpp[0] / 8)
 		+ (state->src.y * fb->pitches[0]);
 
 	spin_lock_irqsave(&ctx->reg_slock, flags);
@@ -657,7 +657,7 @@ static void mixer_graph_buffer(struct mixer_context *ctx,
 
 	/* setup geometry */
 	mixer_reg_write(ctx, MXR_GRAPHIC_SPAN(win),
-			fb->pitches[0] / fb->format->cpp[0]);
+			fb->pitches[0] / fb->format->bpp[0] / 8);
 
 	val  = MXR_GRP_WH_WIDTH(state->src.w);
 	val |= MXR_GRP_WH_HEIGHT(state->src.h);
-- 
2.7.4




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
