Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07622DF7AE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 23:47:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f2DHslpf+iT5YGaJ29N+seaAeIoWOsT8bMbV5IBingQ=; b=GyK5fKwVl2pPIQ
	fxnG52+w4WgfybuG5b32MIm4ZEGpkYbxgAWQJlKXwPFgN9qK4iMZiacDeybL0LQXHfwGAFw01s6iZ
	xQyB1E/NYTg3gWIB0gwtavMLzTdbeP+LisawHIhX5sNaifWvRHHuuONJbbnsnnTQHo6HiipuS1ELx
	MOWzG7AuxhK7oxPH1A9+FObXVoF0tXZae57BycNP9LNr4ggWQZFOPHkFKD9VgjaOwCLQHXdRVnDNn
	jeH052WukQhTBLpYs/n76Lo5KSI0VXqrEORIt+kOdivUePWglMd9UHVyrjplzvY21L9+bU8NcFWxW
	eZxAMrb8TeAUVikxQsUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMfWe-0001fw-MI; Mon, 21 Oct 2019 21:47:40 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMfV6-0000JL-Di; Mon, 21 Oct 2019 21:46:07 +0000
Received: by mail-ot1-f67.google.com with SMTP id e11so12373826otl.5;
 Mon, 21 Oct 2019 14:46:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QQDw9NPftsDM5OhHs6ZNOxGtsrxVPosqKf8720sJxbM=;
 b=UU/4gXVzkca73PEEl1ZezHLkWFrkddXIlFuYG8iiUUcX7+UC5yS+uFPUltu474kmuZ
 85GDhHpoXBuJ+bMLd5rbeCNQBCFAvtrBb2ElqWyDijc+xnmZTEQ1mJ4C15j+gWntFfIz
 YivMrabcSimRiCSTU/u9So63jbPVo4T8gewRBlyy1lX35U6oX0NtMAKNsKLYPiOa8uzM
 KJdgq/mxiZKzzs6DTEZlvOkTaLWUu5agnMTogxfmCwPXK6Y8MdKw8c2pxx/ZdKDznc0t
 cQn1+xU9cYoCFjFcU1weyrPTKTn4O9OWUwkS1Z4WfXeWlsYMUwvoJ3i/iWZ8MfaiuilG
 jxSQ==
X-Gm-Message-State: APjAAAV+lGtJEcJI9cdavjOYYv1vmiQR/d8HakZWSO471MN6iSZNM5HC
 STPW6wyWFUz1DQ3Xub/lIQ==
X-Google-Smtp-Source: APXvYqw6b8W3vI30N7gM1+NXuyDoi2C4I2ewSclJeKb4IZyrqQe6H9toYKkWgNpHOdph0+3yURR+Rw==
X-Received: by 2002:a9d:344a:: with SMTP id v68mr55638otb.85.1571694363240;
 Mon, 21 Oct 2019 14:46:03 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id u130sm4122676oib.56.2019.10.21.14.46.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 14:46:02 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH 5/6] drm/mediatek: Convert to use CMA helpers
Date: Mon, 21 Oct 2019 16:45:49 -0500
Message-Id: <20191021214550.1461-6-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191021214550.1461-1-robh@kernel.org>
References: <20191021214550.1461-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_144604_481693_D1DCF7B1 
X-CRM114-Status: GOOD (  23.61  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Liviu Dudau <liviu.dudau@arm.com>, Sandy Huang <hjc@rock-chips.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Yannick Fertre <yannick.fertre@st.com>, Kevin Hilman <khilman@baylibre.com>,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Xinliang Liu <z.liuxinliang@hisilicon.com>, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 "James \(Qian\) Wang" <james.qian.wang@arm.com>, CK Hu <ck.hu@mediatek.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Chen Feng <puck.chen@hisilicon.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org,
 Philippe Cornu <philippe.cornu@st.com>, Vincent Abriou <vincent.abriou@st.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Rongrong Zou <zourongrong@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The only reason the Mediatek driver doesn't use the CMA helpers is it
sets DMA_ATTR_NO_KERNEL_MAPPING and does a vmap() on demand. Using
vmap() is not even guaranteed to work as DMA buffers may not have a
struct page. Now that the CMA helpers support setting
DMA_ATTR_NO_KERNEL_MAPPING as needed or not, convert Mediatek driver to
use CMA helpers.

Cc: CK Hu <ck.hu@mediatek.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mediatek@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/gpu/drm/mediatek/Makefile        |   1 -
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c  |   2 +-
 drivers/gpu/drm/mediatek/mtk_drm_drv.c   |  28 +--
 drivers/gpu/drm/mediatek/mtk_drm_fb.c    |   1 -
 drivers/gpu/drm/mediatek/mtk_drm_gem.c   | 289 -----------------------
 drivers/gpu/drm/mediatek/mtk_drm_gem.h   |  51 ----
 drivers/gpu/drm/mediatek/mtk_drm_plane.c |   7 +-
 7 files changed, 15 insertions(+), 364 deletions(-)
 delete mode 100644 drivers/gpu/drm/mediatek/mtk_drm_gem.c
 delete mode 100644 drivers/gpu/drm/mediatek/mtk_drm_gem.h

diff --git a/drivers/gpu/drm/mediatek/Makefile b/drivers/gpu/drm/mediatek/Makefile
index 82ae49c64221..50a50e86738f 100644
--- a/drivers/gpu/drm/mediatek/Makefile
+++ b/drivers/gpu/drm/mediatek/Makefile
@@ -8,7 +8,6 @@ mediatek-drm-y := mtk_disp_color.o \
 		  mtk_drm_ddp_comp.o \
 		  mtk_drm_drv.o \
 		  mtk_drm_fb.o \
-		  mtk_drm_gem.o \
 		  mtk_drm_plane.o \
 		  mtk_dsi.o \
 		  mtk_mipi_tx.o \
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
index 34a731755791..638d57e8ac12 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
@@ -11,6 +11,7 @@
 
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_plane_helper.h>
+#include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_vblank.h>
 
@@ -18,7 +19,6 @@
 #include "mtk_drm_crtc.h"
 #include "mtk_drm_ddp.h"
 #include "mtk_drm_ddp_comp.h"
-#include "mtk_drm_gem.h"
 #include "mtk_drm_plane.h"
 
 /**
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index 352b81a7a670..36f32507e5fb 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -28,7 +28,6 @@
 #include "mtk_drm_ddp_comp.h"
 #include "mtk_drm_drv.h"
 #include "mtk_drm_fb.h"
-#include "mtk_drm_gem.h"
 
 #define DRIVER_NAME "mediatek"
 #define DRIVER_DESC "Mediatek SoC DRM"
@@ -335,16 +334,14 @@ static void mtk_drm_kms_deinit(struct drm_device *drm)
 	drm_mode_config_cleanup(drm);
 }
 
-static const struct file_operations mtk_drm_fops = {
-	.owner = THIS_MODULE,
-	.open = drm_open,
-	.release = drm_release,
-	.unlocked_ioctl = drm_ioctl,
-	.mmap = mtk_drm_gem_mmap,
-	.poll = drm_poll,
-	.read = drm_read,
-	.compat_ioctl = drm_compat_ioctl,
-};
+DEFINE_DRM_GEM_CMA_FOPS(mtk_drm_fops);
+
+static int mtk_drm_gem_dumb_create(struct drm_file *file_priv,
+				   struct drm_device *dev,
+				   struct drm_mode_create_dumb *args)
+{
+	return drm_gem_cma_dumb_create_internal(file_priv, dev, args);
+}
 
 /*
  * We need to override this because the device used to import the memory is
@@ -361,18 +358,15 @@ struct drm_gem_object *mtk_drm_gem_prime_import(struct drm_device *dev,
 static struct drm_driver mtk_drm_driver = {
 	.driver_features = DRIVER_MODESET | DRIVER_GEM | DRIVER_ATOMIC,
 
-	.gem_free_object_unlocked = mtk_drm_gem_free_object,
 	.gem_vm_ops = &drm_gem_cma_vm_ops,
+	.gem_create_object = drm_cma_gem_create_object_default_funcs,
 	.dumb_create = mtk_drm_gem_dumb_create,
 
 	.prime_handle_to_fd = drm_gem_prime_handle_to_fd,
 	.prime_fd_to_handle = drm_gem_prime_fd_to_handle,
 	.gem_prime_import = mtk_drm_gem_prime_import,
-	.gem_prime_get_sg_table = mtk_gem_prime_get_sg_table,
-	.gem_prime_import_sg_table = mtk_gem_prime_import_sg_table,
-	.gem_prime_mmap = mtk_drm_gem_mmap_buf,
-	.gem_prime_vmap = mtk_drm_gem_prime_vmap,
-	.gem_prime_vunmap = mtk_drm_gem_prime_vunmap,
+	.gem_prime_import_sg_table = drm_gem_cma_prime_import_sg_table_vmap,
+	.gem_prime_mmap = drm_gem_prime_mmap,
 	.fops = &mtk_drm_fops,
 
 	.name = DRIVER_NAME,
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_fb.c b/drivers/gpu/drm/mediatek/mtk_drm_fb.c
index 3f230a28a2dc..596b4d5ed002 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_fb.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_fb.c
@@ -14,7 +14,6 @@
 
 #include "mtk_drm_drv.h"
 #include "mtk_drm_fb.h"
-#include "mtk_drm_gem.h"
 
 static const struct drm_framebuffer_funcs mtk_drm_fb_funcs = {
 	.create_handle = drm_gem_fb_create_handle,
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_gem.c b/drivers/gpu/drm/mediatek/mtk_drm_gem.c
deleted file mode 100644
index ca672f1d140d..000000000000
--- a/drivers/gpu/drm/mediatek/mtk_drm_gem.c
+++ /dev/null
@@ -1,289 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * Copyright (c) 2015 MediaTek Inc.
- */
-
-#include <linux/dma-buf.h>
-
-#include <drm/drm.h>
-#include <drm/drm_device.h>
-#include <drm/drm_gem.h>
-#include <drm/drm_prime.h>
-
-#include "mtk_drm_drv.h"
-#include "mtk_drm_gem.h"
-
-static struct mtk_drm_gem_obj *mtk_drm_gem_init(struct drm_device *dev,
-						unsigned long size)
-{
-	struct mtk_drm_gem_obj *mtk_gem_obj;
-	int ret;
-
-	size = round_up(size, PAGE_SIZE);
-
-	mtk_gem_obj = kzalloc(sizeof(*mtk_gem_obj), GFP_KERNEL);
-	if (!mtk_gem_obj)
-		return ERR_PTR(-ENOMEM);
-
-	ret = drm_gem_object_init(dev, &mtk_gem_obj->base, size);
-	if (ret < 0) {
-		DRM_ERROR("failed to initialize gem object\n");
-		kfree(mtk_gem_obj);
-		return ERR_PTR(ret);
-	}
-
-	return mtk_gem_obj;
-}
-
-struct mtk_drm_gem_obj *mtk_drm_gem_create(struct drm_device *dev,
-					   size_t size, bool alloc_kmap)
-{
-	struct mtk_drm_private *priv = dev->dev_private;
-	struct mtk_drm_gem_obj *mtk_gem;
-	struct drm_gem_object *obj;
-	int ret;
-
-	mtk_gem = mtk_drm_gem_init(dev, size);
-	if (IS_ERR(mtk_gem))
-		return ERR_CAST(mtk_gem);
-
-	obj = &mtk_gem->base;
-
-	mtk_gem->dma_attrs = DMA_ATTR_WRITE_COMBINE;
-
-	if (!alloc_kmap)
-		mtk_gem->dma_attrs |= DMA_ATTR_NO_KERNEL_MAPPING;
-
-	mtk_gem->cookie = dma_alloc_attrs(priv->dma_dev, obj->size,
-					  &mtk_gem->dma_addr, GFP_KERNEL,
-					  mtk_gem->dma_attrs);
-	if (!mtk_gem->cookie) {
-		DRM_ERROR("failed to allocate %zx byte dma buffer", obj->size);
-		ret = -ENOMEM;
-		goto err_gem_free;
-	}
-
-	if (alloc_kmap)
-		mtk_gem->kvaddr = mtk_gem->cookie;
-
-	DRM_DEBUG_DRIVER("cookie = %p dma_addr = %pad size = %zu\n",
-			 mtk_gem->cookie, &mtk_gem->dma_addr,
-			 size);
-
-	return mtk_gem;
-
-err_gem_free:
-	drm_gem_object_release(obj);
-	kfree(mtk_gem);
-	return ERR_PTR(ret);
-}
-
-void mtk_drm_gem_free_object(struct drm_gem_object *obj)
-{
-	struct mtk_drm_gem_obj *mtk_gem = to_mtk_gem_obj(obj);
-	struct mtk_drm_private *priv = obj->dev->dev_private;
-
-	if (mtk_gem->sg)
-		drm_prime_gem_destroy(obj, mtk_gem->sg);
-	else
-		dma_free_attrs(priv->dma_dev, obj->size, mtk_gem->cookie,
-			       mtk_gem->dma_addr, mtk_gem->dma_attrs);
-
-	/* release file pointer to gem object. */
-	drm_gem_object_release(obj);
-
-	kfree(mtk_gem);
-}
-
-int mtk_drm_gem_dumb_create(struct drm_file *file_priv, struct drm_device *dev,
-			    struct drm_mode_create_dumb *args)
-{
-	struct mtk_drm_gem_obj *mtk_gem;
-	int ret;
-
-	args->pitch = DIV_ROUND_UP(args->width * args->bpp, 8);
-	args->size = args->pitch * args->height;
-
-	mtk_gem = mtk_drm_gem_create(dev, args->size, false);
-	if (IS_ERR(mtk_gem))
-		return PTR_ERR(mtk_gem);
-
-	/*
-	 * allocate a id of idr table where the obj is registered
-	 * and handle has the id what user can see.
-	 */
-	ret = drm_gem_handle_create(file_priv, &mtk_gem->base, &args->handle);
-	if (ret)
-		goto err_handle_create;
-
-	/* drop reference from allocate - handle holds it now. */
-	drm_gem_object_put_unlocked(&mtk_gem->base);
-
-	return 0;
-
-err_handle_create:
-	mtk_drm_gem_free_object(&mtk_gem->base);
-	return ret;
-}
-
-static int mtk_drm_gem_object_mmap(struct drm_gem_object *obj,
-				   struct vm_area_struct *vma)
-
-{
-	int ret;
-	struct mtk_drm_gem_obj *mtk_gem = to_mtk_gem_obj(obj);
-	struct mtk_drm_private *priv = obj->dev->dev_private;
-
-	/*
-	 * dma_alloc_attrs() allocated a struct page table for mtk_gem, so clear
-	 * VM_PFNMAP flag that was set by drm_gem_mmap_obj()/drm_gem_mmap().
-	 */
-	vma->vm_flags &= ~VM_PFNMAP;
-
-	ret = dma_mmap_attrs(priv->dma_dev, vma, mtk_gem->cookie,
-			     mtk_gem->dma_addr, obj->size, mtk_gem->dma_attrs);
-	if (ret)
-		drm_gem_vm_close(vma);
-
-	return ret;
-}
-
-int mtk_drm_gem_mmap_buf(struct drm_gem_object *obj, struct vm_area_struct *vma)
-{
-	int ret;
-
-	ret = drm_gem_mmap_obj(obj, obj->size, vma);
-	if (ret)
-		return ret;
-
-	return mtk_drm_gem_object_mmap(obj, vma);
-}
-
-int mtk_drm_gem_mmap(struct file *filp, struct vm_area_struct *vma)
-{
-	struct drm_gem_object *obj;
-	int ret;
-
-	ret = drm_gem_mmap(filp, vma);
-	if (ret)
-		return ret;
-
-	obj = vma->vm_private_data;
-
-	/*
-	 * Set vm_pgoff (used as a fake buffer offset by DRM) to 0 and map the
-	 * whole buffer from the start.
-	 */
-	vma->vm_pgoff = 0;
-
-	return mtk_drm_gem_object_mmap(obj, vma);
-}
-
-/*
- * Allocate a sg_table for this GEM object.
- * Note: Both the table's contents, and the sg_table itself must be freed by
- *       the caller.
- * Returns a pointer to the newly allocated sg_table, or an ERR_PTR() error.
- */
-struct sg_table *mtk_gem_prime_get_sg_table(struct drm_gem_object *obj)
-{
-	struct mtk_drm_gem_obj *mtk_gem = to_mtk_gem_obj(obj);
-	struct mtk_drm_private *priv = obj->dev->dev_private;
-	struct sg_table *sgt;
-	int ret;
-
-	sgt = kzalloc(sizeof(*sgt), GFP_KERNEL);
-	if (!sgt)
-		return ERR_PTR(-ENOMEM);
-
-	ret = dma_get_sgtable_attrs(priv->dma_dev, sgt, mtk_gem->cookie,
-				    mtk_gem->dma_addr, obj->size,
-				    mtk_gem->dma_attrs);
-	if (ret) {
-		DRM_ERROR("failed to allocate sgt, %d\n", ret);
-		kfree(sgt);
-		return ERR_PTR(ret);
-	}
-
-	return sgt;
-}
-
-struct drm_gem_object *mtk_gem_prime_import_sg_table(struct drm_device *dev,
-			struct dma_buf_attachment *attach, struct sg_table *sg)
-{
-	struct mtk_drm_gem_obj *mtk_gem;
-	int ret;
-	struct scatterlist *s;
-	unsigned int i;
-	dma_addr_t expected;
-
-	mtk_gem = mtk_drm_gem_init(dev, attach->dmabuf->size);
-
-	if (IS_ERR(mtk_gem))
-		return ERR_CAST(mtk_gem);
-
-	expected = sg_dma_address(sg->sgl);
-	for_each_sg(sg->sgl, s, sg->nents, i) {
-		if (sg_dma_address(s) != expected) {
-			DRM_ERROR("sg_table is not contiguous");
-			ret = -EINVAL;
-			goto err_gem_free;
-		}
-		expected = sg_dma_address(s) + sg_dma_len(s);
-	}
-
-	mtk_gem->dma_addr = sg_dma_address(sg->sgl);
-	mtk_gem->sg = sg;
-
-	return &mtk_gem->base;
-
-err_gem_free:
-	kfree(mtk_gem);
-	return ERR_PTR(ret);
-}
-
-void *mtk_drm_gem_prime_vmap(struct drm_gem_object *obj)
-{
-	struct mtk_drm_gem_obj *mtk_gem = to_mtk_gem_obj(obj);
-	struct sg_table *sgt;
-	struct sg_page_iter iter;
-	unsigned int npages;
-	unsigned int i = 0;
-
-	if (mtk_gem->kvaddr)
-		return mtk_gem->kvaddr;
-
-	sgt = mtk_gem_prime_get_sg_table(obj);
-	if (IS_ERR(sgt))
-		return NULL;
-
-	npages = obj->size >> PAGE_SHIFT;
-	mtk_gem->pages = kcalloc(npages, sizeof(*mtk_gem->pages), GFP_KERNEL);
-	if (!mtk_gem->pages)
-		goto out;
-
-	for_each_sg_page(sgt->sgl, &iter, sgt->orig_nents, 0) {
-		mtk_gem->pages[i++] = sg_page_iter_page(&iter);
-		if (i > npages)
-			break;
-	}
-	mtk_gem->kvaddr = vmap(mtk_gem->pages, npages, VM_MAP,
-			       pgprot_writecombine(PAGE_KERNEL));
-
-out:
-	kfree((void *)sgt);
-
-	return mtk_gem->kvaddr;
-}
-
-void mtk_drm_gem_prime_vunmap(struct drm_gem_object *obj, void *vaddr)
-{
-	struct mtk_drm_gem_obj *mtk_gem = to_mtk_gem_obj(obj);
-
-	if (!mtk_gem->pages)
-		return;
-
-	vunmap(vaddr);
-	mtk_gem->kvaddr = 0;
-	kfree((void *)mtk_gem->pages);
-}
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_gem.h b/drivers/gpu/drm/mediatek/mtk_drm_gem.h
deleted file mode 100644
index ff9f976d9807..000000000000
--- a/drivers/gpu/drm/mediatek/mtk_drm_gem.h
+++ /dev/null
@@ -1,51 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * Copyright (c) 2015 MediaTek Inc.
- */
-
-#ifndef _MTK_DRM_GEM_H_
-#define _MTK_DRM_GEM_H_
-
-#include <drm/drm_gem.h>
-
-/*
- * mtk drm buffer structure.
- *
- * @base: a gem object.
- *	- a new handle to this gem object would be created
- *	by drm_gem_handle_create().
- * @cookie: the return value of dma_alloc_attrs(), keep it for dma_free_attrs()
- * @kvaddr: kernel virtual address of gem buffer.
- * @dma_addr: dma address of gem buffer.
- * @dma_attrs: dma attributes of gem buffer.
- *
- * P.S. this object would be transferred to user as kms_bo.handle so
- *	user can access the buffer through kms_bo.handle.
- */
-struct mtk_drm_gem_obj {
-	struct drm_gem_object	base;
-	void			*cookie;
-	void			*kvaddr;
-	dma_addr_t		dma_addr;
-	unsigned long		dma_attrs;
-	struct sg_table		*sg;
-	struct page		**pages;
-};
-
-#define to_mtk_gem_obj(x)	container_of(x, struct mtk_drm_gem_obj, base)
-
-void mtk_drm_gem_free_object(struct drm_gem_object *gem);
-struct mtk_drm_gem_obj *mtk_drm_gem_create(struct drm_device *dev, size_t size,
-					   bool alloc_kmap);
-int mtk_drm_gem_dumb_create(struct drm_file *file_priv, struct drm_device *dev,
-			    struct drm_mode_create_dumb *args);
-int mtk_drm_gem_mmap(struct file *filp, struct vm_area_struct *vma);
-int mtk_drm_gem_mmap_buf(struct drm_gem_object *obj,
-			 struct vm_area_struct *vma);
-struct sg_table *mtk_gem_prime_get_sg_table(struct drm_gem_object *obj);
-struct drm_gem_object *mtk_gem_prime_import_sg_table(struct drm_device *dev,
-			struct dma_buf_attachment *attach, struct sg_table *sg);
-void *mtk_drm_gem_prime_vmap(struct drm_gem_object *obj);
-void mtk_drm_gem_prime_vunmap(struct drm_gem_object *obj, void *vaddr);
-
-#endif
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.c b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
index 584a9ecadce6..8f256602f075 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_plane.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
@@ -8,13 +8,14 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_plane_helper.h>
+#include <drm/drm_print.h>
+#include <drm/drm_gem_cma_helper.h>
 #include <drm/drm_gem_framebuffer_helper.h>
 
 #include "mtk_drm_crtc.h"
 #include "mtk_drm_ddp_comp.h"
 #include "mtk_drm_drv.h"
 #include "mtk_drm_fb.h"
-#include "mtk_drm_gem.h"
 #include "mtk_drm_plane.h"
 
 static const u32 formats[] = {
@@ -108,7 +109,6 @@ static void mtk_plane_atomic_update(struct drm_plane *plane,
 	struct drm_crtc *crtc = plane->state->crtc;
 	struct drm_framebuffer *fb = plane->state->fb;
 	struct drm_gem_object *gem;
-	struct mtk_drm_gem_obj *mtk_gem;
 	unsigned int pitch, format;
 	dma_addr_t addr;
 
@@ -116,8 +116,7 @@ static void mtk_plane_atomic_update(struct drm_plane *plane,
 		return;
 
 	gem = fb->obj[0];
-	mtk_gem = to_mtk_gem_obj(gem);
-	addr = mtk_gem->dma_addr;
+	addr = to_drm_gem_cma_obj(gem)->paddr;
 	pitch = fb->pitches[0];
 	format = fb->format->format;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
