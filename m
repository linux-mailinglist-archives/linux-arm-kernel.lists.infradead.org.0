Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28AA4D3E2E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 13:19:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=O3zA8cToVXlEgCz6TQghyIoXOvNpgsC51aEmKxJx/1I=; b=JVCR0D9t6J7pk8um9p7DhQ+kuB
	4TxIkW9F230yOsOoZA+9S1IwToCin0DuWTwb0iQMN0rRV6jSyS61v6uyLlyfK9ATorAfAbrm3SSHt
	o2Xbf5XiluDwrfPqMxeO7sirfm/NtvH0Z7cXoFpQXsSu/4cjd/1Wgi8xNwpgZNtah03zhY30qTJxr
	CULYWtOvsx69lUqtYXVfLUdDhC1Ntlv22QakrIssC6kiO6IQRs4EGYuO9zsvsW1mw8AnzwXxp7M/7
	N4ihnNSOerCVNZnMFUp+pO2cyDy0rrQwURhzklPzIFfEt61GriVCyrC9n1A38+04USDMPvCta5Ail
	Yi+xw1tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIswp-00067U-DB; Fri, 11 Oct 2019 11:19:03 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIswQ-0005sj-HM; Fri, 11 Oct 2019 11:18:40 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 5611128D251
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH 1/2] drm/arm: Factor out generic afbc helpers
Date: Fri, 11 Oct 2019 13:18:10 +0200
Message-Id: <20191011111813.20851-2-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011111813.20851-1-andrzej.p@collabora.com>
References: <20191011111813.20851-1-andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_041838_838026_504ECEA7 
X-CRM114-Status: GOOD (  17.93  )
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

These are useful for other users of afbc, e.g. rockchip.

Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 drivers/gpu/drm/Kconfig          |   4 ++
 drivers/gpu/drm/Makefile         |   1 +
 drivers/gpu/drm/arm/Kconfig      |   1 +
 drivers/gpu/drm/arm/malidp_drv.c |  58 ++--------------
 drivers/gpu/drm/drm_afbc.c       | 114 +++++++++++++++++++++++++++++++
 include/drm/drm_afbc.h           |  25 +++++++
 6 files changed, 149 insertions(+), 54 deletions(-)
 create mode 100644 drivers/gpu/drm/drm_afbc.c
 create mode 100644 include/drm/drm_afbc.h

diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
index 3c88420e3497..00e3f90557f4 100644
--- a/drivers/gpu/drm/Kconfig
+++ b/drivers/gpu/drm/Kconfig
@@ -195,6 +195,10 @@ config DRM_SCHED
 	tristate
 	depends on DRM
 
+config DRM_AFBC
+	tristate
+	depends on DRM
+
 source "drivers/gpu/drm/i2c/Kconfig"
 
 source "drivers/gpu/drm/arm/Kconfig"
diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
index 9f0d2ee35794..55368b668355 100644
--- a/drivers/gpu/drm/Makefile
+++ b/drivers/gpu/drm/Makefile
@@ -31,6 +31,7 @@ drm-$(CONFIG_OF) += drm_of.o
 drm-$(CONFIG_AGP) += drm_agpsupport.o
 drm-$(CONFIG_DEBUG_FS) += drm_debugfs.o drm_debugfs_crc.o
 drm-$(CONFIG_DRM_LOAD_EDID_FIRMWARE) += drm_edid_load.o
+drm-$(CONFIG_DRM_AFBC) += drm_afbc.o
 
 drm_vram_helper-y := drm_gem_vram_helper.o \
 		     drm_vram_helper_common.o \
diff --git a/drivers/gpu/drm/arm/Kconfig b/drivers/gpu/drm/arm/Kconfig
index a204103b3efb..25c3dc408cda 100644
--- a/drivers/gpu/drm/arm/Kconfig
+++ b/drivers/gpu/drm/arm/Kconfig
@@ -29,6 +29,7 @@ config DRM_MALI_DISPLAY
 	select DRM_KMS_HELPER
 	select DRM_KMS_CMA_HELPER
 	select DRM_GEM_CMA_HELPER
+	select DRM_AFBC
 	select VIDEOMODE_HELPERS
 	help
 	  Choose this option if you want to compile the ARM Mali Display
diff --git a/drivers/gpu/drm/arm/malidp_drv.c b/drivers/gpu/drm/arm/malidp_drv.c
index f25ec4382277..a67b69e08f63 100644
--- a/drivers/gpu/drm/arm/malidp_drv.c
+++ b/drivers/gpu/drm/arm/malidp_drv.c
@@ -16,6 +16,7 @@
 #include <linux/debugfs.h>
 
 #include <drm/drmP.h>
+#include <drm/drm_afbc.h>
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc.h>
@@ -33,8 +34,6 @@
 #include "malidp_hw.h"
 
 #define MALIDP_CONF_VALID_TIMEOUT	250
-#define AFBC_HEADER_SIZE		16
-#define AFBC_SUPERBLK_ALIGNMENT		128
 
 static void malidp_write_gamma_table(struct malidp_hw_device *hwdev,
 				     u32 data[MALIDP_COEFFTAB_NUM_COEFFS])
@@ -275,24 +274,8 @@ malidp_verify_afbc_framebuffer_caps(struct drm_device *dev,
 					mode_cmd->modifier[0]) == false)
 		return false;
 
-	if (mode_cmd->offsets[0] != 0) {
-		DRM_DEBUG_KMS("AFBC buffers' plane offset should be 0\n");
-		return false;
-	}
-
-	switch (mode_cmd->modifier[0] & AFBC_SIZE_MASK) {
-	case AFBC_SIZE_16X16:
-		if ((mode_cmd->width % 16) || (mode_cmd->height % 16)) {
-			DRM_DEBUG_KMS("AFBC buffers must be aligned to 16 pixels\n");
-			return false;
-		}
-		break;
-	default:
-		DRM_DEBUG_KMS("Unsupported AFBC block size\n");
-		return false;
-	}
-
-	return true;
+	return drm_afbc_check_offset(dev, mode_cmd) &&
+	       drm_afbc_check_size_align(dev, mode_cmd);
 }
 
 static bool
@@ -300,53 +283,20 @@ malidp_verify_afbc_framebuffer_size(struct drm_device *dev,
 				    struct drm_file *file,
 				    const struct drm_mode_fb_cmd2 *mode_cmd)
 {
-	int n_superblocks = 0;
 	const struct drm_format_info *info;
 	struct drm_gem_object *objs = NULL;
-	u32 afbc_superblock_size = 0, afbc_superblock_height = 0;
-	u32 afbc_superblock_width = 0, afbc_size = 0;
 	int bpp = 0;
 
-	switch (mode_cmd->modifier[0] & AFBC_SIZE_MASK) {
-	case AFBC_SIZE_16X16:
-		afbc_superblock_height = 16;
-		afbc_superblock_width = 16;
-		break;
-	default:
-		DRM_DEBUG_KMS("AFBC superblock size is not supported\n");
-		return false;
-	}
-
 	info = drm_get_format_info(dev, mode_cmd);
-
-	n_superblocks = (mode_cmd->width / afbc_superblock_width) *
-		(mode_cmd->height / afbc_superblock_height);
-
 	bpp = malidp_format_get_bpp(info->format);
 
-	afbc_superblock_size = (bpp * afbc_superblock_width * afbc_superblock_height)
-				/ BITS_PER_BYTE;
-
-	afbc_size = ALIGN(n_superblocks * AFBC_HEADER_SIZE, AFBC_SUPERBLK_ALIGNMENT);
-	afbc_size += n_superblocks * ALIGN(afbc_superblock_size, AFBC_SUPERBLK_ALIGNMENT);
-
-	if ((mode_cmd->width * bpp) != (mode_cmd->pitches[0] * BITS_PER_BYTE)) {
-		DRM_DEBUG_KMS("Invalid value of (pitch * BITS_PER_BYTE) (=%u) "
-			      "should be same as width (=%u) * bpp (=%u)\n",
-			      (mode_cmd->pitches[0] * BITS_PER_BYTE),
-			      mode_cmd->width, bpp);
-		return false;
-	}
-
 	objs = drm_gem_object_lookup(file, mode_cmd->handles[0]);
 	if (!objs) {
 		DRM_DEBUG_KMS("Failed to lookup GEM object\n");
 		return false;
 	}
 
-	if (objs->size < afbc_size) {
-		DRM_DEBUG_KMS("buffer size (%zu) too small for AFBC buffer size = %u\n",
-			      objs->size, afbc_size);
+	if (!drm_afbc_check_fb_size(dev, mode_cmd, objs, bpp)) {
 		drm_gem_object_put_unlocked(objs);
 		return false;
 	}
diff --git a/drivers/gpu/drm/drm_afbc.c b/drivers/gpu/drm/drm_afbc.c
new file mode 100644
index 000000000000..3e8a9225fd2e
--- /dev/null
+++ b/drivers/gpu/drm/drm_afbc.c
@@ -0,0 +1,114 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * (C) 2019 Collabora Ltd.
+ *
+ * author: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
+ *
+ */
+#include <linux/module.h>
+
+#include <drm/drm_afbc.h>
+#include <drm/drm_device.h>
+#include <drm/drm_fourcc.h>
+#include <drm/drm_gem.h>
+#include <drm/drm_mode.h>
+#include <drm/drm_print.h>
+
+#define AFBC_HEADER_SIZE		16
+#define AFBC_SUPERBLK_ALIGNMENT		128
+
+bool drm_afbc_check_offset(struct drm_device *dev,
+			   const struct drm_mode_fb_cmd2 *mode_cmd)
+{
+	if (mode_cmd->offsets[0] != 0) {
+		DRM_DEBUG_KMS("AFBC buffers' plane offset should be 0\n");
+		return false;
+	}
+
+	return true;
+}
+EXPORT_SYMBOL_GPL(drm_afbc_check_offset);
+
+bool drm_afbc_check_size_align(struct drm_device *dev,
+			       const struct drm_mode_fb_cmd2 *mode_cmd)
+{
+
+	switch (mode_cmd->modifier[0] & AFBC_FORMAT_MOD_BLOCK_SIZE_MASK) {
+	case AFBC_FORMAT_MOD_BLOCK_SIZE_16x16:
+		if ((mode_cmd->width % 16) || (mode_cmd->height % 16)) {
+			DRM_DEBUG_KMS(
+				"AFBC buffer must be aligned to 16 pixels\n"
+			);
+			return false;
+		}
+		break;
+	case AFBC_FORMAT_MOD_BLOCK_SIZE_32x8:
+		/* fall through */
+	case AFBC_FORMAT_MOD_BLOCK_SIZE_64x4:
+		/* fall through */
+	case AFBC_FORMAT_MOD_BLOCK_SIZE_32x8_64x4:
+		/* fall through */
+	default:
+		DRM_DEBUG_KMS("Unsupported AFBC block size\n");
+		return false;
+	}
+
+	return true;
+}
+EXPORT_SYMBOL_GPL(drm_afbc_check_size_align);
+
+bool drm_afbc_check_fb_size(struct drm_device *dev,
+			    const struct drm_mode_fb_cmd2 *mode_cmd,
+			    struct drm_gem_object *objs, int bpp)
+{
+	int n_superblocks = 0;
+	u32 afbc_superblock_size = 0, afbc_superblock_height = 0;
+	u32 afbc_superblock_width = 0, afbc_size = 0;
+
+	switch (mode_cmd->modifier[0] & AFBC_FORMAT_MOD_BLOCK_SIZE_MASK) {
+	case AFBC_FORMAT_MOD_BLOCK_SIZE_16x16:
+		afbc_superblock_height = 16;
+		afbc_superblock_width = 16;
+		break;
+	case AFBC_FORMAT_MOD_BLOCK_SIZE_32x8:
+		/* fall through */
+	case AFBC_FORMAT_MOD_BLOCK_SIZE_64x4:
+		/* fall through */
+	case AFBC_FORMAT_MOD_BLOCK_SIZE_32x8_64x4:
+		/* fall through */
+	default:
+		DRM_DEBUG_KMS("AFBC superblock size is not supported\n");
+		return false;
+	}
+
+	n_superblocks = (mode_cmd->width / afbc_superblock_width) *
+		(mode_cmd->height / afbc_superblock_height);
+
+	afbc_superblock_size =
+		(bpp * afbc_superblock_width * afbc_superblock_height)
+			/ BITS_PER_BYTE;
+
+	afbc_size = ALIGN(n_superblocks * AFBC_HEADER_SIZE,
+			  AFBC_SUPERBLK_ALIGNMENT);
+	afbc_size += n_superblocks *
+		ALIGN(afbc_superblock_size, AFBC_SUPERBLK_ALIGNMENT);
+
+	if ((mode_cmd->width * bpp) != (mode_cmd->pitches[0] * BITS_PER_BYTE)) {
+		DRM_DEBUG_KMS("Invalid value of (pitch * BITS_PER_BYTE) (=%u) should be same as width (=%u) * bpp (=%u)\n",
+			mode_cmd->pitches[0] * BITS_PER_BYTE,
+			mode_cmd->width, bpp
+		);
+		return false;
+	}
+
+	if (objs->size < afbc_size) {
+		DRM_DEBUG_KMS("buffer size (%zu) too small for AFBC buffer size = %u\n",
+			objs->size, afbc_size
+		);
+
+		return false;
+	}
+
+	return true;
+}
+EXPORT_SYMBOL(drm_afbc_check_fb_size);
diff --git a/include/drm/drm_afbc.h b/include/drm/drm_afbc.h
new file mode 100644
index 000000000000..ce39c850217b
--- /dev/null
+++ b/include/drm/drm_afbc.h
@@ -0,0 +1,25 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * (C) 2019 Collabora Ltd.
+ *
+ * author: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
+ *
+ */
+#ifndef __DRM_AFBC_H__
+#define __DRM_AFBC_H__
+
+struct drm_device;
+struct drm_mode_fb_cmd2;
+struct drm_gem_object;
+
+bool drm_afbc_check_offset(struct drm_device *dev,
+			   const struct drm_mode_fb_cmd2 *mode_cmd);
+
+bool drm_afbc_check_size_align(struct drm_device *dev,
+			       const struct drm_mode_fb_cmd2 *mode_cmd);
+
+bool drm_afbc_check_fb_size(struct drm_device *dev,
+			    const struct drm_mode_fb_cmd2 *mode_cmd,
+			    struct drm_gem_object *objs, int bpp);
+
+#endif /* __DRM_AFBC_H__ */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
