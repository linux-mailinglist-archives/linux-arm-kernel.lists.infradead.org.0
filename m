Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61AE416790A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 10:10:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CgCRXCao6QqxAz9Jnmy/ULLrAHnUOTyzMpMf9c9dk+g=; b=ImvgXuMPi0sOER
	7S8S1zS0vbKHyElkFaS93z9Rze3vsfBXys6wdyFlyGvvK/HHtCMTuzX/JLvohr5HVwocC8SY4HPn5
	c4l+xQ/yh1afV1owoCq8QGU9xbaL1wNrLZJugYgX6B5yVWkIYlFl1Wx0q1kGYp3Ny32O6qWw5wtVf
	J490LNGo26ElMHyb5xwWej1f51zgsrCovZkM+rSSe9lTEPnLv3Ja/AipC/czzF0gXRDIOMWq0njRR
	vA1U1MloIxxCKotdu2DK50iF7vrARJ1BxVDRK1UHpJd0fEyBoVNPgA4ppxf1Bf3o+4Xn8wkzIoIkE
	0TYsQ7dza5f3GvynwviA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j54KH-0000X5-3V; Fri, 21 Feb 2020 09:10:25 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j54Io-0006XH-0T
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 09:08:59 +0000
Received: by mail-wm1-x341.google.com with SMTP id t14so845349wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 01:08:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZrjMNHoguUcpFr30YrDzqs9vPrSEB6e8QQoRgTYGAKE=;
 b=d5Nga09gB0LHbPHKw0g7Qa/mYbdOUoG0IT7g0TvY1dC+E9S8ePsAUAcg5qGsvF7YD7
 2Wr7ljuvQrjzb57ePGFYmLN/M/oIlms2ce68+O1se6yTP7iSB3VUJ2ORV+lBeBGR9Hcm
 IIbpc21jsguOsejszuoqNwqtdug01XsWiYqDd/apSypO8o/iuxgzKO3NzomWaSSJYST+
 N5tRzJ4lLBVmaB5Wdfr7S71u6n7OQdeJxKO0XMpPNrqmyau3qmx6AowmZy30vy2vJ2KC
 Od1KI8rrOkPYGQ3xY+Pcjo+dapOFG00eejnvfisIa3V3Lsd2ChIK7b1wYFTJbKrZQQYh
 xADQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZrjMNHoguUcpFr30YrDzqs9vPrSEB6e8QQoRgTYGAKE=;
 b=qhrRS79CI/XrBGkLjf2FYqDv8qbcLjaCyFxtybYwPKQagSlfFu4N/OFd2VWiCj6097
 fTTP83j9l4edw/Atd1VY9ZL+HisyV1gR8lCbasruvpkhSYayWgaNYUG3E5VrASTNQUrf
 Lkk3v6O4M89itGSoQ473zz8U4GzWQbS2vw0fO+oAiBjtzwe+pj7bWcQuvJeJLo58XvNu
 3KzU/P8jDIRjVTBZjI6lvO2GOXXQxe+3blxU74K4UFFwd6e2ANeV72gqGsCrMPpZ2mi8
 t3EzdVEM4cPs8GCOZokbgf9Sk0UCnQNXxYKlZZ3225aZk2SlMdEcp6rmekbJQjre6kxg
 2Kmw==
X-Gm-Message-State: APjAAAUaNKKjhVfRC6ASEWGF0RImLDkJWeMd8HGOUgzRmgN5iLKlQN3k
 lZt3w14xVo9D9GUEufFQVelnFA==
X-Google-Smtp-Source: APXvYqxDHSS3VKbSZtye4gfsFBN1cjOif37mY8qC4NlGDLcqE6/cR7F6MPI2+MEKF3d+RCpB0MfdrA==
X-Received: by 2002:a1c:2d43:: with SMTP id t64mr2512627wmt.50.1582276132419; 
 Fri, 21 Feb 2020 01:08:52 -0800 (PST)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:4ca8:b25b:98e4:858])
 by smtp.gmail.com with ESMTPSA id
 h5sm3173288wmf.8.2020.02.21.01.08.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2020 01:08:51 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org
Subject: [PATCH 3/4] drm/meson: overlay: setup overlay for Amlogic FBC
Date: Fri, 21 Feb 2020 10:08:44 +0100
Message-Id: <20200221090845.7397-4-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200221090845.7397-1-narmstrong@baylibre.com>
References: <20200221090845.7397-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_010854_133554_929CC519 
X-CRM114-Status: GOOD (  19.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Setup the Amlogic FBC decoder for the VD1 video overlay plane.

The VD1 Amlogic FBC decoder is integrated in the pipeline like the
YUV pixel reading/formatter but used a direct memory address instead.

The default mode needs to calculate the content body size since the header
is allocated after.

The scatter mode needs a simplier management since only the header is needed,
since it contains an IOMMU scatter table to locate the superblocks in memory.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/gpu/drm/meson/meson_drv.h     |  16 ++
 drivers/gpu/drm/meson/meson_overlay.c | 257 +++++++++++++++++++++++++-
 2 files changed, 265 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/meson/meson_drv.h b/drivers/gpu/drm/meson/meson_drv.h
index 04fdf3826643..da951964e988 100644
--- a/drivers/gpu/drm/meson/meson_drv.h
+++ b/drivers/gpu/drm/meson/meson_drv.h
@@ -80,6 +80,7 @@ struct meson_drm {
 
 		bool vd1_enabled;
 		bool vd1_commit;
+		bool vd1_afbc;
 		unsigned int vd1_planes;
 		uint32_t vd1_if0_gen_reg;
 		uint32_t vd1_if0_luma_x0;
@@ -105,6 +106,21 @@ struct meson_drm {
 		uint32_t vd1_height0;
 		uint32_t vd1_height1;
 		uint32_t vd1_height2;
+		uint32_t vd1_afbc_mode;
+		uint32_t vd1_afbc_en;
+		uint32_t vd1_afbc_head_addr;
+		uint32_t vd1_afbc_body_addr;
+		uint32_t vd1_afbc_conv_ctrl;
+		uint32_t vd1_afbc_dec_def_color;
+		uint32_t vd1_afbc_vd_cfmt_ctrl;
+		uint32_t vd1_afbc_vd_cfmt_w;
+		uint32_t vd1_afbc_vd_cfmt_h;
+		uint32_t vd1_afbc_mif_hor_scope;
+		uint32_t vd1_afbc_mif_ver_scope;
+		uint32_t vd1_afbc_size_out;
+		uint32_t vd1_afbc_pixel_hor_scope;
+		uint32_t vd1_afbc_pixel_ver_scope;
+		uint32_t vd1_afbc_size_in;
 		uint32_t vpp_pic_in_height;
 		uint32_t vpp_postblend_vd1_h_start_end;
 		uint32_t vpp_postblend_vd1_v_start_end;
diff --git a/drivers/gpu/drm/meson/meson_overlay.c b/drivers/gpu/drm/meson/meson_overlay.c
index 2468b0212d52..1fbb81732e9a 100644
--- a/drivers/gpu/drm/meson/meson_overlay.c
+++ b/drivers/gpu/drm/meson/meson_overlay.c
@@ -5,6 +5,7 @@
  * Copyright (C) 2015 Amlogic, Inc. All rights reserved.
  */
 
+#define DEBUG
 #include <linux/bitfield.h>
 
 #include <drm/drm_atomic.h>
@@ -76,6 +77,84 @@
 #define VD_REGION24_START(value)	FIELD_PREP(GENMASK(11, 0), value)
 #define VD_REGION13_END(value)		FIELD_PREP(GENMASK(27, 16), value)
 
+/* AFBC_ENABLE */
+#define AFBC_DEC_ENABLE			BIT(8)
+#define AFBC_FRM_START			BIT(0)
+
+/* AFBC_MODE */
+#define AFBC_HORZ_SKIP_UV(value)	FIELD_PREP(GENMASK(1, 0), value)
+#define AFBC_VERT_SKIP_UV(value)	FIELD_PREP(GENMASK(3, 2), value)
+#define AFBC_HORZ_SKIP_Y(value)		FIELD_PREP(GENMASK(5, 4), value)
+#define AFBC_VERT_SKIP_Y(value)		FIELD_PREP(GENMASK(7, 6), value)
+#define AFBC_COMPBITS_YUV(value)	FIELD_PREP(GENMASK(13, 8), value)
+#define AFBC_COMPBITS_8BIT		0
+#define AFBC_COMPBITS_10BIT		(2 | (2 << 2) | (2 << 4))
+#define AFBC_BURST_LEN(value)		FIELD_PREP(GENMASK(15, 14), value)
+#define AFBC_HOLD_LINE_NUM(value)	FIELD_PREP(GENMASK(22, 16), value)
+#define AFBC_MIF_URGENT(value)		FIELD_PREP(GENMASK(25, 24), value)
+#define AFBC_REV_MODE(value)		FIELD_PREP(GENMASK(27, 26), value)
+#define AFBC_BLK_MEM_MODE		BIT(28)
+#define AFBC_SCATTER_MODE		BIT(29)
+#define AFBC_SOFT_RESET			BIT(31)
+
+/* AFBC_SIZE_IN */
+#define AFBC_HSIZE_IN(value)		FIELD_PREP(GENMASK(28, 16), value)
+#define AFBC_VSIZE_IN(value)		FIELD_PREP(GENMASK(12, 0), value)
+
+/* AFBC_DEC_DEF_COLOR */
+#define AFBC_DEF_COLOR_Y(value)		FIELD_PREP(GENMASK(29, 20), value)
+#define AFBC_DEF_COLOR_U(value)		FIELD_PREP(GENMASK(19, 10), value)
+#define AFBC_DEF_COLOR_V(value)		FIELD_PREP(GENMASK(9, 0), value)
+
+/* AFBC_CONV_CTRL */
+#define AFBC_CONV_LBUF_LEN(value)	FIELD_PREP(GENMASK(11, 0), value)
+
+/* AFBC_LBUF_DEPTH */
+#define AFBC_DEC_LBUF_DEPTH(value)	FIELD_PREP(GENMASK(27, 16), value)
+#define AFBC_MIF_LBUF_DEPTH(value)	FIELD_PREP(GENMASK(11, 0), value)
+
+/* AFBC_OUT_XSCOPE/AFBC_SIZE_OUT */
+#define AFBC_HSIZE_OUT(value)		FIELD_PREP(GENMASK(28, 16), value)
+#define AFBC_VSIZE_OUT(value)		FIELD_PREP(GENMASK(12, 0), value)
+#define AFBC_OUT_HORZ_BGN(value)	FIELD_PREP(GENMASK(28, 16), value)
+#define AFBC_OUT_HORZ_END(value)	FIELD_PREP(GENMASK(12, 0), value)
+
+/* AFBC_OUT_YSCOPE */
+#define AFBC_OUT_VERT_BGN(value)	FIELD_PREP(GENMASK(28, 16), value)
+#define AFBC_OUT_VERT_END(value)	FIELD_PREP(GENMASK(12, 0), value)
+
+/* AFBC_VD_CFMT_CTRL */
+#define AFBC_HORZ_RPT_PIXEL0		BIT(23)
+#define AFBC_HORZ_Y_C_RATIO(value)	FIELD_PREP(GENMASK(22, 21), value)
+#define AFBC_HORZ_FMT_EN		BIT(20)
+#define AFBC_VERT_RPT_LINE0		BIT(16)
+#define AFBC_VERT_INITIAL_PHASE(value)	FIELD_PREP(GENMASK(11, 8), value)
+#define AFBC_VERT_PHASE_STEP(value)	FIELD_PREP(GENMASK(7, 1), value)
+#define AFBC_VERT_FMT_EN		BIT(0)
+
+/* AFBC_VD_CFMT_W */
+#define AFBC_VD_V_WIDTH(value)		FIELD_PREP(GENMASK(11, 0), value)
+#define AFBC_VD_H_WIDTH(value)		FIELD_PREP(GENMASK(27, 16), value)
+
+/* AFBC_MIF_HOR_SCOPE */
+#define AFBC_MIF_BLK_BGN_H(value)	FIELD_PREP(GENMASK(25, 16), value)
+#define AFBC_MIF_BLK_END_H(value)	FIELD_PREP(GENMASK(9, 0), value)
+
+/* AFBC_MIF_VER_SCOPE */
+#define AFBC_MIF_BLK_BGN_V(value)	FIELD_PREP(GENMASK(27, 16), value)
+#define AFBC_MIF_BLK_END_V(value)	FIELD_PREP(GENMASK(11, 0), value)
+
+/* AFBC_PIXEL_HOR_SCOPE */
+#define AFBC_DEC_PIXEL_BGN_H(value)	FIELD_PREP(GENMASK(28, 16), value)
+#define AFBC_DEC_PIXEL_END_H(value)	FIELD_PREP(GENMASK(12, 0), value)
+
+/* AFBC_PIXEL_VER_SCOPE */
+#define AFBC_DEC_PIXEL_BGN_V(value)	FIELD_PREP(GENMASK(28, 16), value)
+#define AFBC_DEC_PIXEL_END_V(value)	FIELD_PREP(GENMASK(12, 0), value)
+
+/* AFBC_VD_CFMT_H */
+#define AFBC_VD_HEIGHT(value)		FIELD_PREP(GENMASK(12, 0), value)
+
 struct meson_overlay {
 	struct drm_plane base;
 	struct meson_drm *priv;
@@ -157,6 +236,9 @@ static void meson_overlay_setup_scaler_params(struct meson_drm *priv,
 	unsigned int ratio_x, ratio_y;
 	int temp_height, temp_width;
 	unsigned int w_in, h_in;
+	int afbc_left, afbc_right;
+	int afbc_top_src, afbc_bottom_src;
+	int afbc_top, afbc_bottom;
 	int temp, start, end;
 
 	if (!crtc_state) {
@@ -169,7 +251,7 @@ static void meson_overlay_setup_scaler_params(struct meson_drm *priv,
 
 	w_in = fixed16_to_int(state->src_w);
 	h_in = fixed16_to_int(state->src_h);
-	crop_top = fixed16_to_int(state->src_x);
+	crop_top = fixed16_to_int(state->src_y);
 	crop_left = fixed16_to_int(state->src_x);
 
 	video_top = state->crtc_y;
@@ -243,6 +325,14 @@ static void meson_overlay_setup_scaler_params(struct meson_drm *priv,
 	DRM_DEBUG("vsc startp %d endp %d start_lines %d end_lines %d\n",
 		 vsc_startp, vsc_endp, vd_start_lines, vd_end_lines);
 
+	afbc_top = round_down(vd_start_lines, 4);
+	afbc_bottom = round_up(vd_end_lines + 1, 4);
+	afbc_top_src = 0;
+	afbc_bottom_src = round_up(h_in + 1, 4);
+
+	DRM_DEBUG("afbc top %d (src %d) bottom %d (src %d)\n",
+		  afbc_top, afbc_top_src, afbc_bottom, afbc_bottom_src);
+
 	/* Horizontal */
 
 	start = video_left + video_width / 2 - ((w_in << 17) / ratio_x);
@@ -278,6 +368,16 @@ static void meson_overlay_setup_scaler_params(struct meson_drm *priv,
 	DRM_DEBUG("hsc startp %d endp %d start_lines %d end_lines %d\n",
 		 hsc_startp, hsc_endp, hd_start_lines, hd_end_lines);
 
+	if (hd_start_lines > 0 || (hd_end_lines < w_in)) {
+		afbc_left = 0;
+		afbc_right = round_up(w_in, 32);
+	} else {
+		afbc_left = round_down(hd_start_lines, 32);
+		afbc_right = round_up(hd_end_lines + 1, 32);
+	}
+
+	DRM_DEBUG("afbc left %d right %d\n", afbc_left, afbc_right);
+
 	priv->viu.vpp_vsc_start_phase_step = ratio_y << 6;
 
 	priv->viu.vpp_vsc_ini_phase = vphase << 8;
@@ -293,6 +393,35 @@ static void meson_overlay_setup_scaler_params(struct meson_drm *priv,
 			VD_H_WIDTH(hd_end_lines - hd_start_lines + 1) |
 			VD_V_WIDTH(hd_end_lines/2 - hd_start_lines/2 + 1);
 
+	priv->viu.vd1_afbc_vd_cfmt_w =
+			AFBC_VD_H_WIDTH(afbc_right - afbc_left) |
+			AFBC_VD_V_WIDTH(afbc_right / 2 - afbc_left / 2);
+
+	priv->viu.vd1_afbc_vd_cfmt_h =
+			AFBC_VD_HEIGHT((afbc_bottom - afbc_top) / 2);
+
+	priv->viu.vd1_afbc_mif_hor_scope = AFBC_MIF_BLK_BGN_H(afbc_left / 32) |
+				AFBC_MIF_BLK_END_H((afbc_right / 32) - 1);
+
+	priv->viu.vd1_afbc_mif_ver_scope = AFBC_MIF_BLK_BGN_V(afbc_top / 4) |
+				AFBC_MIF_BLK_END_H((afbc_bottom / 4) - 1);
+
+	priv->viu.vd1_afbc_size_out =
+			AFBC_HSIZE_OUT(afbc_right - afbc_left) |
+			AFBC_VSIZE_OUT(afbc_bottom - afbc_top);
+
+	priv->viu.vd1_afbc_pixel_hor_scope =
+			AFBC_DEC_PIXEL_BGN_H(hd_start_lines - afbc_left) |
+			AFBC_DEC_PIXEL_END_H(hd_end_lines - afbc_left);
+
+	priv->viu.vd1_afbc_pixel_ver_scope =
+			AFBC_DEC_PIXEL_BGN_V(vd_start_lines - afbc_top) |
+			AFBC_DEC_PIXEL_END_V(vd_end_lines - afbc_top);
+
+	priv->viu.vd1_afbc_size_in =
+				AFBC_HSIZE_IN(afbc_right - afbc_left) |
+				AFBC_VSIZE_IN(afbc_bottom_src - afbc_top_src);
+
 	priv->viu.vd1_if0_luma_y0 = VD_Y_START(vd_start_lines) |
 				    VD_Y_END(vd_end_lines);
 
@@ -350,11 +479,63 @@ static void meson_overlay_atomic_update(struct drm_plane *plane,
 
 	spin_lock_irqsave(&priv->drm->event_lock, flags);
 
-	priv->viu.vd1_if0_gen_reg = VD_URGENT_CHROMA |
-				    VD_URGENT_LUMA |
-				    VD_HOLD_LINES(9) |
-				    VD_CHRO_RPT_LASTL_CTRL |
-				    VD_ENABLE;
+	if ((fb->modifier & DRM_FORMAT_MOD_AMLOGIC_FBC(0)) ==
+			    DRM_FORMAT_MOD_AMLOGIC_FBC(0)) {
+		priv->viu.vd1_afbc = true;
+
+		priv->viu.vd1_afbc_mode = AFBC_MIF_URGENT(3) |
+					  AFBC_HOLD_LINE_NUM(8) |
+					  AFBC_BURST_LEN(2);
+
+		if (fb->modifier & DRM_FORMAT_MOD_AMLOGIC_FBC_SCATTER)
+			priv->viu.vd1_afbc_mode |= AFBC_SCATTER_MODE;
+
+		if (fb->modifier & DRM_FORMAT_MOD_AMLOGIC_FBC_MEM_SAVING)
+			priv->viu.vd1_afbc_mode |= AFBC_BLK_MEM_MODE;
+
+		priv->viu.vd1_afbc_en = 0x1600 | AFBC_DEC_ENABLE;
+
+		priv->viu.vd1_afbc_conv_ctrl = AFBC_CONV_LBUF_LEN(256);
+
+		priv->viu.vd1_afbc_dec_def_color = AFBC_DEF_COLOR_Y(1023);
+
+		/* 420: horizontal / 2, vertical / 4 */
+		priv->viu.vd1_afbc_vd_cfmt_ctrl = AFBC_HORZ_RPT_PIXEL0 |
+						  AFBC_HORZ_Y_C_RATIO(1) |
+						  AFBC_HORZ_FMT_EN |
+						  AFBC_VERT_RPT_LINE0 |
+						  AFBC_VERT_INITIAL_PHASE(12) |
+						  AFBC_VERT_PHASE_STEP(8) |
+						  AFBC_VERT_FMT_EN;
+
+		switch (fb->format->format) {
+		/* AFBC Only formats */
+		case DRM_FORMAT_YUV420_10BIT:
+			priv->viu.vd1_afbc_mode |=
+				AFBC_COMPBITS_YUV(AFBC_COMPBITS_10BIT);
+			priv->viu.vd1_afbc_dec_def_color |=
+					AFBC_DEF_COLOR_U(512) |
+					AFBC_DEF_COLOR_V(512);
+			break;
+		case DRM_FORMAT_YUV420_8BIT:
+			priv->viu.vd1_afbc_dec_def_color |=
+					AFBC_DEF_COLOR_U(128) |
+					AFBC_DEF_COLOR_V(128);
+			break;
+		}
+
+		priv->viu.vd1_if0_gen_reg = 0;
+		priv->viu.vd1_if0_canvas0 = 0;
+		priv->viu.viu_vd1_fmt_ctrl = 0;
+	} else {
+		priv->viu.vd1_afbc = false;
+
+		priv->viu.vd1_if0_gen_reg = VD_URGENT_CHROMA |
+					    VD_URGENT_LUMA |
+					    VD_HOLD_LINES(9) |
+					    VD_CHRO_RPT_LASTL_CTRL |
+					    VD_ENABLE;
+	}
 
 	/* Setup scaler params */
 	meson_overlay_setup_scaler_params(priv, plane, interlace_mode);
@@ -370,6 +551,7 @@ static void meson_overlay_atomic_update(struct drm_plane *plane,
 	priv->viu.vd1_if0_gen_reg2 = 0;
 	priv->viu.viu_vd1_fmt_ctrl = 0;
 
+	/* None will match for AFBC Only formats */
 	switch (fb->format->format) {
 	/* TOFIX DRM_FORMAT_RGB888 should be supported */
 	case DRM_FORMAT_YUYV:
@@ -488,13 +670,42 @@ static void meson_overlay_atomic_update(struct drm_plane *plane,
 		priv->viu.vd1_stride0 = fb->pitches[0];
 		priv->viu.vd1_height0 =
 			drm_format_info_plane_height(fb->format,
-						fb->height, 0);
+						     fb->height, 0);
 		DRM_DEBUG("plane 0 addr 0x%x stride %d height %d\n",
 			 priv->viu.vd1_addr0,
 			 priv->viu.vd1_stride0,
 			 priv->viu.vd1_height0);
 	}
 
+	if (priv->viu.vd1_afbc) {
+		if (priv->viu.vd1_afbc_mode & AFBC_SCATTER_MODE) {
+			/*
+			 * In Scatter mode, the header contains the physical
+			 * body content layout, thus the body content
+			 * size isn't needed.
+			 */
+			priv->viu.vd1_afbc_head_addr = priv->viu.vd1_addr0 >> 4;
+			priv->viu.vd1_afbc_body_addr = 0;
+		} else {
+			/* Default mode is 4k per superblock */
+			unsigned long block_size = 4096;
+			unsigned long body_size;
+
+			/* 8bit mem saving mode is 3072bytes per superblock */
+			if (priv->viu.vd1_afbc_mode & AFBC_BLK_MEM_MODE)
+				block_size = 3072;
+
+			body_size = (ALIGN(priv->viu.vd1_stride0, 64) / 64) *
+				    (ALIGN(priv->viu.vd1_height0, 32) / 32) *
+				    block_size;
+
+			priv->viu.vd1_afbc_body_addr = priv->viu.vd1_addr0 >> 4;
+			/* Header is after body content */
+			priv->viu.vd1_afbc_head_addr = (priv->viu.vd1_addr0 +
+							body_size) >> 4;
+		}
+	}
+
 	priv->viu.vd1_enabled = true;
 
 	spin_unlock_irqrestore(&priv->drm->event_lock, flags);
@@ -531,6 +742,23 @@ static const struct drm_plane_helper_funcs meson_overlay_helper_funcs = {
 	.prepare_fb	= drm_gem_fb_prepare_fb,
 };
 
+static bool meson_overlay_format_mod_supported(struct drm_plane *plane,
+					       u32 format, u64 modifier)
+{
+	if (modifier == DRM_FORMAT_MOD_LINEAR &&
+	    format != DRM_FORMAT_YUV420_8BIT &&
+	    format != DRM_FORMAT_YUV420_10BIT)
+		return true;
+
+	if ((modifier & DRM_FORMAT_MOD_AMLOGIC_FBC(0)) ==
+			DRM_FORMAT_MOD_AMLOGIC_FBC(0) &&
+	    (format == DRM_FORMAT_YUV420_8BIT ||
+	     format == DRM_FORMAT_YUV420_10BIT))
+		return true;
+
+	return false;
+}
+
 static const struct drm_plane_funcs meson_overlay_funcs = {
 	.update_plane		= drm_atomic_helper_update_plane,
 	.disable_plane		= drm_atomic_helper_disable_plane,
@@ -538,6 +766,7 @@ static const struct drm_plane_funcs meson_overlay_funcs = {
 	.reset			= drm_atomic_helper_plane_reset,
 	.atomic_duplicate_state = drm_atomic_helper_plane_duplicate_state,
 	.atomic_destroy_state	= drm_atomic_helper_plane_destroy_state,
+	.format_mod_supported   = meson_overlay_format_mod_supported,
 };
 
 static const uint32_t supported_drm_formats[] = {
@@ -549,6 +778,18 @@ static const uint32_t supported_drm_formats[] = {
 	DRM_FORMAT_YUV420,
 	DRM_FORMAT_YUV411,
 	DRM_FORMAT_YUV410,
+	DRM_FORMAT_YUV420_8BIT, /* Amlogic FBC Only */
+	DRM_FORMAT_YUV420_10BIT, /* Amlogic FBC Only */
+};
+
+static const uint64_t format_modifiers[] = {
+	DRM_FORMAT_MOD_AMLOGIC_FBC(DRM_FORMAT_MOD_AMLOGIC_FBC_SCATTER |
+				   DRM_FORMAT_MOD_AMLOGIC_FBC_MEM_SAVING),
+	DRM_FORMAT_MOD_AMLOGIC_FBC(DRM_FORMAT_MOD_AMLOGIC_FBC_SCATTER),
+	DRM_FORMAT_MOD_AMLOGIC_FBC(DRM_FORMAT_MOD_AMLOGIC_FBC_MEM_SAVING),
+	DRM_FORMAT_MOD_AMLOGIC_FBC_DEFAULT,
+	DRM_FORMAT_MOD_LINEAR,
+	DRM_FORMAT_MOD_INVALID,
 };
 
 int meson_overlay_create(struct meson_drm *priv)
@@ -570,7 +811,7 @@ int meson_overlay_create(struct meson_drm *priv)
 				 &meson_overlay_funcs,
 				 supported_drm_formats,
 				 ARRAY_SIZE(supported_drm_formats),
-				 NULL,
+				 format_modifiers,
 				 DRM_PLANE_TYPE_OVERLAY, "meson_overlay_plane");
 
 	drm_plane_helper_add(plane, &meson_overlay_helper_funcs);
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
