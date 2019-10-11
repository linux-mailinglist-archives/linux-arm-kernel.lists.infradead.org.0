Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D94D3E2F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 13:19:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CEyvI8JNGs+jakA5I7RXzT68vHOO1Vse954hThnoW8Y=; b=S/7mwDPO3J5fTNnpE5KWpGJ+g6
	p2jz+hq7gR631G4QB0sncc+91SAcAvvTv7RMDfwYFTU7MTgWziwEvQ3GZN7QzRALDq5ZYgmr0U+gU
	F5Qgb+69Pt9nZsX3kxn8Tp8JJ4b5hviJL5w1/o5VCkPJtGc4Y1MXsF3ggrTgt8/40a/OoDBqb4xag
	nvOVr9LXyjBKEqYDtNRFvWaw88q9bUdvvpPlFutIgUoIYb85lU+lM6OsUWYpGmCwIrlVWYcir+cy0
	DXCiifXJp3rwKc6nqNXBV36QLC9RDdsI9p7qjXziUD4BGsefIRCaiS5zm/wx+n777RCucq9tdGMW9
	ZUZmx4Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIsx3-0006Of-SU; Fri, 11 Oct 2019 11:19:18 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIswS-0005tv-2L; Fri, 11 Oct 2019 11:18:43 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 77EA1290DCE
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH 2/2] drm/rockchip: Add support for afbc
Date: Fri, 11 Oct 2019 13:18:11 +0200
Message-Id: <20191011111813.20851-3-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011111813.20851-1-andrzej.p@collabora.com>
References: <20191011111813.20851-1-andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_041840_390101_4F13F164 
X-CRM114-Status: GOOD (  19.25  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Liviu Dudau <liviu.dudau@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, kernel@collabora.com,
 Sean Paul <sean@poorly.run>, Brian Starkey <brian.starkey@arm.com>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds support for afbc handling. afbc is a compressed format
which reduces the necessary memory bandwidth.

Co-developed-by: Mark Yao <mark.yao@rock-chips.com>
Signed-off-by: Mark Yao <mark.yao@rock-chips.com>
Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 drivers/gpu/drm/rockchip/Kconfig            |   1 +
 drivers/gpu/drm/rockchip/rockchip_drm_fb.c  |  43 ++++++
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 140 +++++++++++++++++++-
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h |  12 ++
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c |  86 +++++++++++-
 5 files changed, 278 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
index 6f4222f8beeb..ff491efc52a5 100644
--- a/drivers/gpu/drm/rockchip/Kconfig
+++ b/drivers/gpu/drm/rockchip/Kconfig
@@ -5,6 +5,7 @@ config DRM_ROCKCHIP
 	select DRM_GEM_CMA_HELPER
 	select DRM_KMS_HELPER
 	select DRM_PANEL
+	select DRM_AFBC
 	select VIDEOMODE_HELPERS
 	select DRM_ANALOGIX_DP if ROCKCHIP_ANALOGIX_DP
 	select DRM_DW_HDMI if ROCKCHIP_DW_HDMI
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
index 64ca87cf6d50..873185b3a721 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
@@ -8,6 +8,7 @@
 #include <drm/drm.h>
 #include <drm/drmP.h>
 #include <drm/drm_atomic.h>
+#include <drm/drm_afbc.h>
 #include <drm/drm_damage_helper.h>
 #include <drm/drm_fb_helper.h>
 #include <drm/drm_gem_framebuffer_helper.h>
@@ -18,6 +19,8 @@
 #include "rockchip_drm_gem.h"
 #include "rockchip_drm_psr.h"
 
+#define ROCKCHIP_MAX_AFBC_WIDTH	2560
+
 static const struct drm_framebuffer_funcs rockchip_drm_fb_funcs = {
 	.destroy       = drm_gem_fb_destroy,
 	.create_handle = drm_gem_fb_create_handle,
@@ -32,6 +35,46 @@ rockchip_fb_alloc(struct drm_device *dev, const struct drm_mode_fb_cmd2 *mode_cm
 	int ret;
 	int i;
 
+	if (mode_cmd->modifier[0]) {
+		const struct drm_format_info *info;
+		int bpp;
+
+		if (mode_cmd->modifier[0] &
+			~DRM_FORMAT_MOD_ARM_AFBC(
+				AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 |
+				AFBC_FORMAT_MOD_SPARSE
+			 )
+		) {
+			DRM_DEV_ERROR(dev->dev,
+				"Unsupported format modifer 0x%llx\n",
+				mode_cmd->modifier[0]
+			);
+
+			return ERR_PTR(-EINVAL);
+		}
+
+		if (!drm_afbc_check_offset(dev, mode_cmd))
+			return ERR_PTR(-EINVAL);
+
+		if (!drm_afbc_check_size_align(dev, mode_cmd))
+			return ERR_PTR(-EINVAL);
+
+		if (mode_cmd->width > ROCKCHIP_MAX_AFBC_WIDTH) {
+			DRM_DEV_ERROR(dev->dev,
+				"Unsupported width %d>%d\n",
+				mode_cmd->width,
+				ROCKCHIP_MAX_AFBC_WIDTH);
+
+			return ERR_PTR(-EINVAL);
+		}
+
+		info = drm_get_format_info(dev, mode_cmd);
+		bpp = info->cpp[0] * 8;
+
+		if (!drm_afbc_check_fb_size(dev, mode_cmd, obj[0], bpp))
+			return ERR_PTR(-EINVAL);
+	}
+
 	fb = kzalloc(sizeof(*fb), GFP_KERNEL);
 	if (!fb)
 		return ERR_PTR(-ENOMEM);
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 21b68eea46cc..0ac9ab3be3f1 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -90,9 +90,20 @@
 #define VOP_WIN_TO_INDEX(vop_win) \
 	((vop_win) - (vop_win)->vop->win)
 
+#define VOP_AFBC_SET(vop, name, v) \
+	do { \
+		if ((vop)->data->afbc) \
+			vop_reg_set((vop), &(vop)->data->afbc->name, \
+				0, ~0, v, #name); \
+	} while (0)
+
 #define to_vop(x) container_of(x, struct vop, crtc)
 #define to_vop_win(x) container_of(x, struct vop_win, base)
 
+#define AFBC_FMT_RGB565		0x0
+#define AFBC_FMT_U8U8U8U8	0x5
+#define AFBC_FMT_U8U8U8		0x4
+
 /*
  * The coefficients of the following matrix are all fixed points.
  * The format is S2.10 for the 3x3 part of the matrix, and S9.12 for the offsets.
@@ -163,6 +174,7 @@ struct vop {
 	/* optional internal rgb encoder */
 	struct rockchip_rgb *rgb;
 
+	struct vop_win *afbc_win;
 	struct vop_win win[];
 };
 
@@ -271,6 +283,27 @@ static enum vop_data_format vop_convert_format(uint32_t format)
 	}
 }
 
+static int vop_convert_afbc_format(uint32_t format)
+{
+	switch (format) {
+	case DRM_FORMAT_XRGB8888:
+	case DRM_FORMAT_ARGB8888:
+	case DRM_FORMAT_XBGR8888:
+	case DRM_FORMAT_ABGR8888:
+		return AFBC_FMT_U8U8U8U8;
+	case DRM_FORMAT_RGB888:
+	case DRM_FORMAT_BGR888:
+		return AFBC_FMT_U8U8U8;
+	case DRM_FORMAT_RGB565:
+	case DRM_FORMAT_BGR565:
+		return AFBC_FMT_RGB565;
+	default:
+		DRM_ERROR("unsupported afbc format[%08x]\n", format);
+	}
+
+	return -EINVAL;
+}
+
 static uint16_t scl_vop_cal_scale(enum scale_mode mode, uint32_t src,
 				  uint32_t dst, bool is_horizontal,
 				  int vsu_mode, int *vskiplines)
@@ -587,6 +620,15 @@ static int vop_enable(struct drm_crtc *crtc)
 
 		vop_win_disable(vop, win);
 	}
+
+	if (vop->data->afbc) {
+		/*
+		 * Disable AFBC and forget there was a vop window with AFBC
+		 */
+		VOP_AFBC_SET(vop, enable, 0);
+		vop->afbc_win = NULL;
+	}
+
 	spin_unlock(&vop->reg_lock);
 
 	vop_cfg_done(vop);
@@ -671,6 +713,36 @@ static void vop_plane_destroy(struct drm_plane *plane)
 	drm_plane_cleanup(plane);
 }
 
+static bool rockchip_mod_supported(struct drm_plane *plane,
+				   u32 format, u64 modifier)
+{
+	const struct drm_format_info *info;
+
+	if (WARN_ON(modifier == DRM_FORMAT_MOD_INVALID))
+		return false;
+
+	if (modifier == DRM_FORMAT_MOD_LINEAR)
+		return true;
+
+	if (modifier & ~DRM_FORMAT_MOD_ARM_AFBC(
+				AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 |
+				AFBC_FORMAT_MOD_SPARSE
+			)
+	) {
+		DRM_DEBUG_KMS("Unsupported format modifer 0x%llx\n", modifier);
+
+		return false;
+	}
+
+	info = drm_format_info(format);
+	if (info->num_planes != 1) {
+		DRM_DEBUG_KMS("AFBC buffers expect one plane\n");
+		return false;
+	}
+
+	return true;
+}
+
 static int vop_plane_atomic_check(struct drm_plane *plane,
 			   struct drm_plane_state *state)
 {
@@ -719,6 +791,33 @@ static int vop_plane_atomic_check(struct drm_plane *plane,
 		return -EINVAL;
 	}
 
+	if (fb->modifier == DRM_FORMAT_MOD_ARM_AFBC(
+		AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 | AFBC_FORMAT_MOD_SPARSE)) {
+		struct vop *vop = to_vop(crtc);
+
+		if (!vop->data->afbc) {
+			DRM_ERROR("vop does not support AFBC\n");
+			return -EINVAL;
+		}
+
+		ret = vop_convert_afbc_format(fb->format->format);
+		if (ret < 0)
+			return ret;
+
+		if (state->src.x1 || state->src.y1) {
+			DRM_ERROR("afbc does not support offset display\n");
+			DRM_ERROR("xpos=%d, ypos=%d, offset=%d\n",
+				  state->src.x1, state->src.y1, fb->offsets[0]);
+			return -EINVAL;
+		}
+
+		if (state->rotation && state->rotation != DRM_MODE_ROTATE_0) {
+			DRM_ERROR("afbc does not support rotation\n");
+			DRM_ERROR("rotation=%d\n", state->rotation);
+			return -EINVAL;
+		}
+	}
+
 	return 0;
 }
 
@@ -735,6 +834,11 @@ static void vop_plane_atomic_disable(struct drm_plane *plane,
 	spin_lock(&vop->reg_lock);
 
 	vop_win_disable(vop, win);
+	/*
+	 * Forget about the AFBC window if it is being disabled
+	 */
+	if (vop_win == vop->afbc_win)
+		vop->afbc_win = NULL;
 
 	spin_unlock(&vop->reg_lock);
 }
@@ -774,6 +878,13 @@ static void vop_plane_atomic_update(struct drm_plane *plane,
 	if (WARN_ON(!vop->is_enabled))
 		return;
 
+	/*
+	 * If updating the AFBC window then assume that
+	 * after the update there will be no AFBC window.
+	 */
+	if (vop_win == vop->afbc_win)
+		vop->afbc_win = NULL;
+
 	if (!state->visible) {
 		vop_plane_atomic_disable(plane, old_state);
 		return;
@@ -808,6 +919,24 @@ static void vop_plane_atomic_update(struct drm_plane *plane,
 
 	spin_lock(&vop->reg_lock);
 
+	if (fb->modifier == DRM_FORMAT_MOD_ARM_AFBC(
+		AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 | AFBC_FORMAT_MOD_SPARSE)) {
+		int afbc_format = vop_convert_afbc_format(fb->format->format);
+
+		VOP_AFBC_SET(vop, format, afbc_format | 1 << 4);
+		VOP_AFBC_SET(vop, hreg_block_split, 0);
+		VOP_AFBC_SET(vop, win_sel, VOP_WIN_TO_INDEX(vop_win));
+		VOP_AFBC_SET(vop, hdr_ptr, dma_addr);
+		VOP_AFBC_SET(vop, pic_size, act_info);
+
+		/*
+		 * The window being udated becomes the AFBC window
+		 */
+		vop->afbc_win = vop_win;
+
+		pr_info("AFBC on plane %s\n", plane->name);
+	}
+
 	VOP_WIN_SET(vop, win, format, format);
 	VOP_WIN_SET(vop, win, yrgb_vir, DIV_ROUND_UP(fb->pitches[0], 4));
 	VOP_WIN_SET(vop, win, yrgb_mst, dma_addr);
@@ -964,6 +1093,7 @@ static const struct drm_plane_funcs vop_plane_funcs = {
 	.reset = drm_atomic_helper_plane_reset,
 	.atomic_duplicate_state = drm_atomic_helper_plane_duplicate_state,
 	.atomic_destroy_state = drm_atomic_helper_plane_destroy_state,
+	.format_mod_supported = rockchip_mod_supported,
 };
 
 static int vop_crtc_enable_vblank(struct drm_crtc *crtc)
@@ -1163,6 +1293,10 @@ static void vop_crtc_atomic_flush(struct drm_crtc *crtc,
 
 	spin_lock(&vop->reg_lock);
 
+	/*
+	 * Enable AFBC if there is some AFBC window, disable otherwise
+	 */
+	VOP_AFBC_SET(vop, enable, vop->afbc_win != NULL);
 	vop_cfg_done(vop);
 
 	spin_unlock(&vop->reg_lock);
@@ -1471,7 +1605,8 @@ static int vop_create_crtc(struct vop *vop)
 					       0, &vop_plane_funcs,
 					       win_data->phy->data_formats,
 					       win_data->phy->nformats,
-					       NULL, win_data->type, NULL);
+					       win_data->phy->format_modifiers,
+					       win_data->type, NULL);
 		if (ret) {
 			DRM_DEV_ERROR(vop->dev, "failed to init plane %d\n",
 				      ret);
@@ -1511,7 +1646,8 @@ static int vop_create_crtc(struct vop *vop)
 					       &vop_plane_funcs,
 					       win_data->phy->data_formats,
 					       win_data->phy->nformats,
-					       NULL, win_data->type, NULL);
+					       win_data->phy->format_modifiers,
+					       win_data->type, NULL);
 		if (ret) {
 			DRM_DEV_ERROR(vop->dev, "failed to init overlay %d\n",
 				      ret);
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
index 2149a889c29d..371b28b933a9 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
@@ -34,6 +34,16 @@ struct vop_reg {
 	bool relaxed;
 };
 
+struct vop_afbc {
+	struct vop_reg enable;
+	struct vop_reg win_sel;
+	struct vop_reg format;
+	struct vop_reg hreg_block_split;
+	struct vop_reg pic_size;
+	struct vop_reg hdr_ptr;
+	struct vop_reg rstn;
+};
+
 struct vop_modeset {
 	struct vop_reg htotal_pw;
 	struct vop_reg hact_st_end;
@@ -128,6 +138,7 @@ struct vop_win_phy {
 	const struct vop_scl_regs *scl;
 	const uint32_t *data_formats;
 	uint32_t nformats;
+	const uint64_t *format_modifiers;
 
 	struct vop_reg enable;
 	struct vop_reg gate;
@@ -167,6 +178,7 @@ struct vop_data {
 	const struct vop_misc *misc;
 	const struct vop_modeset *modeset;
 	const struct vop_output *output;
+	const struct vop_afbc *afbc;
 	const struct vop_win_yuv2yuv_data *win_yuv2yuv;
 	const struct vop_win_data *win;
 	unsigned int win_size;
diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
index 7b9c74750f6d..a3981f037c90 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
@@ -44,6 +44,20 @@ static const uint32_t formats_win_full[] = {
 	DRM_FORMAT_NV24,
 };
 
+static const uint64_t format_modifiers_win_full[] = {
+	DRM_FORMAT_MOD_NONE,
+	DRM_FORMAT_MOD_INVALID,
+};
+
+static const uint64_t format_modifiers_win_full_afbc[] = {
+	DRM_FORMAT_MOD_ARM_AFBC(
+		AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 |
+		AFBC_FORMAT_MOD_SPARSE
+	),
+	DRM_FORMAT_MOD_LINEAR,
+	DRM_FORMAT_MOD_INVALID,
+};
+
 static const uint32_t formats_win_lite[] = {
 	DRM_FORMAT_XRGB8888,
 	DRM_FORMAT_ARGB8888,
@@ -55,6 +69,11 @@ static const uint32_t formats_win_lite[] = {
 	DRM_FORMAT_BGR565,
 };
 
+static const uint64_t format_modifiers_win_lite[] = {
+	DRM_FORMAT_MOD_LINEAR,
+	DRM_FORMAT_MOD_INVALID,
+};
+
 static const struct vop_scl_regs rk3036_win_scl = {
 	.scale_yrgb_x = VOP_REG(RK3036_WIN0_SCL_FACTOR_YRGB, 0xffff, 0x0),
 	.scale_yrgb_y = VOP_REG(RK3036_WIN0_SCL_FACTOR_YRGB, 0xffff, 16),
@@ -66,6 +85,7 @@ static const struct vop_win_phy rk3036_win0_data = {
 	.scl = &rk3036_win_scl,
 	.data_formats = formats_win_full,
 	.nformats = ARRAY_SIZE(formats_win_full),
+	.format_modifiers = format_modifiers_win_full,
 	.enable = VOP_REG(RK3036_SYS_CTRL, 0x1, 0),
 	.format = VOP_REG(RK3036_SYS_CTRL, 0x7, 3),
 	.rb_swap = VOP_REG(RK3036_SYS_CTRL, 0x1, 15),
@@ -81,6 +101,7 @@ static const struct vop_win_phy rk3036_win0_data = {
 static const struct vop_win_phy rk3036_win1_data = {
 	.data_formats = formats_win_lite,
 	.nformats = ARRAY_SIZE(formats_win_lite),
+	.format_modifiers = format_modifiers_win_lite,
 	.enable = VOP_REG(RK3036_SYS_CTRL, 0x1, 1),
 	.format = VOP_REG(RK3036_SYS_CTRL, 0x7, 6),
 	.rb_swap = VOP_REG(RK3036_SYS_CTRL, 0x1, 19),
@@ -147,6 +168,7 @@ static const struct vop_data rk3036_vop = {
 static const struct vop_win_phy rk3126_win1_data = {
 	.data_formats = formats_win_lite,
 	.nformats = ARRAY_SIZE(formats_win_lite),
+	.format_modifiers = format_modifiers_win_lite,
 	.enable = VOP_REG(RK3036_SYS_CTRL, 0x1, 1),
 	.format = VOP_REG(RK3036_SYS_CTRL, 0x7, 6),
 	.rb_swap = VOP_REG(RK3036_SYS_CTRL, 0x1, 19),
@@ -226,6 +248,7 @@ static const struct vop_win_phy px30_win0_data = {
 	.scl = &px30_win_scl,
 	.data_formats = formats_win_full,
 	.nformats = ARRAY_SIZE(formats_win_full),
+	.format_modifiers = format_modifiers_win_full,
 	.enable = VOP_REG(PX30_WIN0_CTRL0, 0x1, 0),
 	.format = VOP_REG(PX30_WIN0_CTRL0, 0x7, 1),
 	.rb_swap = VOP_REG(PX30_WIN0_CTRL0, 0x1, 12),
@@ -241,6 +264,7 @@ static const struct vop_win_phy px30_win0_data = {
 static const struct vop_win_phy px30_win1_data = {
 	.data_formats = formats_win_lite,
 	.nformats = ARRAY_SIZE(formats_win_lite),
+	.format_modifiers = format_modifiers_win_lite,
 	.enable = VOP_REG(PX30_WIN1_CTRL0, 0x1, 0),
 	.format = VOP_REG(PX30_WIN1_CTRL0, 0x7, 4),
 	.rb_swap = VOP_REG(PX30_WIN1_CTRL0, 0x1, 12),
@@ -253,6 +277,7 @@ static const struct vop_win_phy px30_win1_data = {
 static const struct vop_win_phy px30_win2_data = {
 	.data_formats = formats_win_lite,
 	.nformats = ARRAY_SIZE(formats_win_lite),
+	.format_modifiers = format_modifiers_win_lite,
 	.gate = VOP_REG(PX30_WIN2_CTRL0, 0x1, 4),
 	.enable = VOP_REG(PX30_WIN2_CTRL0, 0x1, 0),
 	.format = VOP_REG(PX30_WIN2_CTRL0, 0x3, 5),
@@ -308,6 +333,7 @@ static const struct vop_win_phy rk3066_win0_data = {
 	.scl = &rk3066_win_scl,
 	.data_formats = formats_win_full,
 	.nformats = ARRAY_SIZE(formats_win_full),
+	.format_modifiers = format_modifiers_win_full,
 	.enable = VOP_REG(RK3066_SYS_CTRL1, 0x1, 0),
 	.format = VOP_REG(RK3066_SYS_CTRL0, 0x7, 4),
 	.rb_swap = VOP_REG(RK3066_SYS_CTRL0, 0x1, 19),
@@ -324,6 +350,7 @@ static const struct vop_win_phy rk3066_win1_data = {
 	.scl = &rk3066_win_scl,
 	.data_formats = formats_win_full,
 	.nformats = ARRAY_SIZE(formats_win_full),
+	.format_modifiers = format_modifiers_win_full,
 	.enable = VOP_REG(RK3066_SYS_CTRL1, 0x1, 1),
 	.format = VOP_REG(RK3066_SYS_CTRL0, 0x7, 7),
 	.rb_swap = VOP_REG(RK3066_SYS_CTRL0, 0x1, 23),
@@ -339,6 +366,7 @@ static const struct vop_win_phy rk3066_win1_data = {
 static const struct vop_win_phy rk3066_win2_data = {
 	.data_formats = formats_win_lite,
 	.nformats = ARRAY_SIZE(formats_win_lite),
+	.format_modifiers = format_modifiers_win_lite,
 	.enable = VOP_REG(RK3066_SYS_CTRL1, 0x1, 2),
 	.format = VOP_REG(RK3066_SYS_CTRL0, 0x7, 10),
 	.rb_swap = VOP_REG(RK3066_SYS_CTRL0, 0x1, 27),
@@ -418,6 +446,7 @@ static const struct vop_win_phy rk3188_win0_data = {
 	.scl = &rk3188_win_scl,
 	.data_formats = formats_win_full,
 	.nformats = ARRAY_SIZE(formats_win_full),
+	.format_modifiers = format_modifiers_win_full,
 	.enable = VOP_REG(RK3188_SYS_CTRL, 0x1, 0),
 	.format = VOP_REG(RK3188_SYS_CTRL, 0x7, 3),
 	.rb_swap = VOP_REG(RK3188_SYS_CTRL, 0x1, 15),
@@ -432,6 +461,7 @@ static const struct vop_win_phy rk3188_win0_data = {
 static const struct vop_win_phy rk3188_win1_data = {
 	.data_formats = formats_win_lite,
 	.nformats = ARRAY_SIZE(formats_win_lite),
+	.format_modifiers = format_modifiers_win_lite,
 	.enable = VOP_REG(RK3188_SYS_CTRL, 0x1, 1),
 	.format = VOP_REG(RK3188_SYS_CTRL, 0x7, 6),
 	.rb_swap = VOP_REG(RK3188_SYS_CTRL, 0x1, 19),
@@ -537,6 +567,7 @@ static const struct vop_win_phy rk3288_win01_data = {
 	.scl = &rk3288_win_full_scl,
 	.data_formats = formats_win_full,
 	.nformats = ARRAY_SIZE(formats_win_full),
+	.format_modifiers = format_modifiers_win_full,
 	.enable = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 0),
 	.format = VOP_REG(RK3288_WIN0_CTRL0, 0x7, 1),
 	.rb_swap = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 12),
@@ -555,6 +586,7 @@ static const struct vop_win_phy rk3288_win01_data = {
 static const struct vop_win_phy rk3288_win23_data = {
 	.data_formats = formats_win_lite,
 	.nformats = ARRAY_SIZE(formats_win_lite),
+	.format_modifiers = format_modifiers_win_lite,
 	.enable = VOP_REG(RK3288_WIN2_CTRL0, 0x1, 4),
 	.gate = VOP_REG(RK3288_WIN2_CTRL0, 0x1, 0),
 	.format = VOP_REG(RK3288_WIN2_CTRL0, 0x7, 1),
@@ -667,6 +699,7 @@ static const struct vop_win_phy rk3368_win01_data = {
 	.scl = &rk3288_win_full_scl,
 	.data_formats = formats_win_full,
 	.nformats = ARRAY_SIZE(formats_win_full),
+	.format_modifiers = format_modifiers_win_full,
 	.enable = VOP_REG(RK3368_WIN0_CTRL0, 0x1, 0),
 	.format = VOP_REG(RK3368_WIN0_CTRL0, 0x7, 1),
 	.rb_swap = VOP_REG(RK3368_WIN0_CTRL0, 0x1, 12),
@@ -687,6 +720,7 @@ static const struct vop_win_phy rk3368_win01_data = {
 static const struct vop_win_phy rk3368_win23_data = {
 	.data_formats = formats_win_lite,
 	.nformats = ARRAY_SIZE(formats_win_lite),
+	.format_modifiers = format_modifiers_win_lite,
 	.gate = VOP_REG(RK3368_WIN2_CTRL0, 0x1, 0),
 	.enable = VOP_REG(RK3368_WIN2_CTRL0, 0x1, 4),
 	.format = VOP_REG(RK3368_WIN2_CTRL0, 0x3, 5),
@@ -798,6 +832,53 @@ static const struct vop_win_yuv2yuv_data rk3399_vop_big_win_yuv2yuv_data[] = {
 	  .y2r_en = VOP_REG(RK3399_YUV2YUV_WIN, 0x1, 9) },
 	{ .base = 0xC0, .phy = &rk3399_yuv2yuv_win23_data },
 	{ .base = 0x120, .phy = &rk3399_yuv2yuv_win23_data },
+
+};
+
+static const struct vop_win_phy rk3399_win01_data = {
+	.scl = &rk3288_win_full_scl,
+	.data_formats = formats_win_full,
+	.nformats = ARRAY_SIZE(formats_win_full),
+	.format_modifiers = format_modifiers_win_full_afbc,
+	.enable = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 0),
+	.format = VOP_REG(RK3288_WIN0_CTRL0, 0x7, 1),
+	.rb_swap = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 12),
+	.y_mir_en = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 22),
+	.act_info = VOP_REG(RK3288_WIN0_ACT_INFO, 0x1fff1fff, 0),
+	.dsp_info = VOP_REG(RK3288_WIN0_DSP_INFO, 0x0fff0fff, 0),
+	.dsp_st = VOP_REG(RK3288_WIN0_DSP_ST, 0x1fff1fff, 0),
+	.yrgb_mst = VOP_REG(RK3288_WIN0_YRGB_MST, 0xffffffff, 0),
+	.uv_mst = VOP_REG(RK3288_WIN0_CBR_MST, 0xffffffff, 0),
+	.yrgb_vir = VOP_REG(RK3288_WIN0_VIR, 0x3fff, 0),
+	.uv_vir = VOP_REG(RK3288_WIN0_VIR, 0x3fff, 16),
+	.src_alpha_ctl = VOP_REG(RK3288_WIN0_SRC_ALPHA_CTRL, 0xff, 0),
+	.dst_alpha_ctl = VOP_REG(RK3288_WIN0_DST_ALPHA_CTRL, 0xff, 0),
+};
+
+/*
+ * rk3399 vop big windows register layout is same as rk3288, but we
+ * have a separate rk3399 win data array here so that we can advertise
+ * AFBC on the primary plane.
+ */
+static const struct vop_win_data rk3399_vop_win_data[] = {
+	{ .base = 0x00, .phy = &rk3399_win01_data,
+	  .type = DRM_PLANE_TYPE_PRIMARY },
+	{ .base = 0x40, .phy = &rk3288_win01_data,
+	  .type = DRM_PLANE_TYPE_OVERLAY },
+	{ .base = 0x00, .phy = &rk3288_win23_data,
+	  .type = DRM_PLANE_TYPE_OVERLAY },
+	{ .base = 0x50, .phy = &rk3288_win23_data,
+	  .type = DRM_PLANE_TYPE_CURSOR },
+};
+
+static const struct vop_afbc rk3399_vop_afbc = {
+	.rstn = VOP_REG(RK3399_AFBCD0_CTRL, 0x1, 3),
+	.enable = VOP_REG(RK3399_AFBCD0_CTRL, 0x1, 0),
+	.win_sel = VOP_REG(RK3399_AFBCD0_CTRL, 0x3, 1),
+	.format = VOP_REG(RK3399_AFBCD0_CTRL, 0x1f, 16),
+	.hreg_block_split = VOP_REG(RK3399_AFBCD0_CTRL, 0x1, 21),
+	.hdr_ptr = VOP_REG(RK3399_AFBCD0_HDR_PTR, 0xffffffff, 0),
+	.pic_size = VOP_REG(RK3399_AFBCD0_PIC_SIZE, 0xffffffff, 0),
 };
 
 static const struct vop_data rk3399_vop_big = {
@@ -807,9 +888,10 @@ static const struct vop_data rk3399_vop_big = {
 	.common = &rk3288_common,
 	.modeset = &rk3288_modeset,
 	.output = &rk3399_output,
+	.afbc = &rk3399_vop_afbc,
 	.misc = &rk3368_misc,
-	.win = rk3368_vop_win_data,
-	.win_size = ARRAY_SIZE(rk3368_vop_win_data),
+	.win = rk3399_vop_win_data,
+	.win_size = ARRAY_SIZE(rk3399_vop_win_data),
 	.win_yuv2yuv = rk3399_vop_big_win_yuv2yuv_data,
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
