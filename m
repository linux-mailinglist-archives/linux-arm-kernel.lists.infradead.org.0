Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41717FD8C3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 10:22:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FQmZHHVzmFt/dRty5INKGANCVneOM5IO2zirjmfSeDs=; b=T9jvZyFakYawXo
	RmQCU8c+CIyPYTpl5E/o3k8j1MJ2cvu0bfcaf0fnxA4E6cCeMJnRcz92B7qydYNymfTljrndfmgEI
	yc7KhOEwlXKLt9aEz4B6I30j4DmjORp0dlFxoGYTT1rWFuKiPX1WYMmIA620p09guDJI3j9baCvzj
	vIoBhpseCCHPEAn678rVkYa/Vg1N+xLGrevvvWcNPRhbkLOZntmd4QeHUFf6YM5L2nUh7Gse5LiR5
	3+KT/4ngHpq/fjJiJFbYAK0rI+w5iQmaq+6HKPFKW5yhwGQaCpMRFudj7qhxvHDmLszwOgbOjkAKw
	6+LcaKLdeulWwH1qsr7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVXnt-0007pN-MV; Fri, 15 Nov 2019 09:22:09 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVXnH-0007Mr-HL
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 09:21:34 +0000
Received: by mail-wr1-x442.google.com with SMTP id f2so10133240wrs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 01:21:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tGjIM2+uUqMORVIasokc3/CvFp+wprfDfEiecNEi+4o=;
 b=WfM8FyTO7ypE+YMQNKDxQoBKIEgYOliOhA8IHmPKabbGB3iVqRcp9+2Yiz95KojpyN
 5RRyo1OFsYseOMJj0ngbATa4TKXxD9cw6JBnsUbQKpNyC8sS9fwiLVyMISJSJt3Y2mwY
 EujkOzvZYc9UjWmsXzRIqw8m1ryOAtGIjx3UQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tGjIM2+uUqMORVIasokc3/CvFp+wprfDfEiecNEi+4o=;
 b=b3NIqevtz0gqkj39HSS3wT3UoJvZN9ExRivBQiIxA/JtWrwWmXujkwfo2uAS4ZpNy0
 yiIePOW0BBsgSk/pLyRjOxCmmwiEJf3rm6g43clIwyts+KqRuiKXy3KubFN1+z/5ToD6
 B9LId5iWpWvfC/w5HXrLnutnyvFEpJTY2gorRCqJMgNSgt38/0+eJ4vsiT1w9pfMbbZY
 s0Pnub1dRRf2eCNx/m/BZ6zuRCUwVLLggDYbFGNH4K/s89+O/k3rfjegmkGuQsgOxaP/
 PBlfBtSPE2+Qgle90OjhqdEL87R5fm5qyFoLzb4/ZrvqYge/JSNx1cmeyibarzkdEMVA
 LqhA==
X-Gm-Message-State: APjAAAUAWX4HFENAnIP7v5woBHpxK/OOfhSD/q6wy6vf/MnEyaFksRte
 2zy5OikcIOiGHoiecapysOFDCw==
X-Google-Smtp-Source: APXvYqwnf2/MQXZ679hFBEv5ABxJG5pWkcrTe0XZXAxsR67X5YWu3QoXY4fHOvAlU81ah5/AgJgOLA==
X-Received: by 2002:adf:e883:: with SMTP id d3mr13501518wrm.197.1573809690172; 
 Fri, 15 Nov 2019 01:21:30 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id 11sm8987506wmi.8.2019.11.15.01.21.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 01:21:29 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: [PATCH 3/8] drm/mediatek: don't open-code drm_gem_fb_create
Date: Fri, 15 Nov 2019 10:21:15 +0100
Message-Id: <20191115092120.4445-4-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191115092120.4445-1-daniel.vetter@ffwll.ch>
References: <20191115092120.4445-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_012131_597092_2E782531 
X-CRM114-Status: GOOD (  17.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>, CK Hu <ck.hu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Aside: There's a few other fb_create implementations which
simply check for valid buffer format (or an approximation thereof),
and then call drm_gem_fb_create. For atomic drivers at least we could
walk all planes and make sure the format/modifier combo is valid,
and remove even more code.

For non-atomic drivers that's not possible, since the format list for
the primary buffer might be garbage (and most likely it is).

Also delete mtk_drm_fb.[hc] since it would now only contain one
function.

Signed-off-by: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: CK Hu <ck.hu@mediatek.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mediatek@lists.infradead.org
---
 drivers/gpu/drm/mediatek/mtk_drm_drv.c   | 16 ++++-
 drivers/gpu/drm/mediatek/mtk_drm_fb.c    | 92 ------------------------
 drivers/gpu/drm/mediatek/mtk_drm_fb.h    | 13 ----
 drivers/gpu/drm/mediatek/mtk_drm_plane.c |  1 -
 4 files changed, 15 insertions(+), 107 deletions(-)
 delete mode 100644 drivers/gpu/drm/mediatek/mtk_drm_fb.c
 delete mode 100644 drivers/gpu/drm/mediatek/mtk_drm_fb.h

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index 84d14213d992..2b1c122066ea 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -16,8 +16,10 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_drv.h>
 #include <drm/drm_fb_helper.h>
+#include <drm/drm_fourcc.h>
 #include <drm/drm_gem.h>
 #include <drm/drm_gem_cma_helper.h>
+#include <drm/drm_gem_framebuffer_helper.h>
 #include <drm/drm_of.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_vblank.h>
@@ -27,7 +29,6 @@
 #include "mtk_drm_ddp.h"
 #include "mtk_drm_ddp_comp.h"
 #include "mtk_drm_drv.h"
-#include "mtk_drm_fb.h"
 #include "mtk_drm_gem.h"
 
 #define DRIVER_NAME "mediatek"
@@ -115,6 +116,19 @@ static int mtk_atomic_commit(struct drm_device *drm,
 	return 0;
 }
 
+static struct drm_framebuffer *
+mtk_drm_mode_fb_create(struct drm_device *dev,
+		       struct drm_file *file,
+		       const struct drm_mode_fb_cmd2 *cmd)
+{
+	const struct drm_format_info *info = drm_get_format_info(dev, cmd);
+
+	if (info->num_planes != 1)
+		return ERR_PTR(-EINVAL);
+
+	return drm_gem_fb_create(dev, file, cmd);
+}
+
 static const struct drm_mode_config_funcs mtk_drm_mode_config_funcs = {
 	.fb_create = mtk_drm_mode_fb_create,
 	.atomic_check = drm_atomic_helper_check,
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_fb.c b/drivers/gpu/drm/mediatek/mtk_drm_fb.c
deleted file mode 100644
index 3f230a28a2dc..000000000000
--- a/drivers/gpu/drm/mediatek/mtk_drm_fb.c
+++ /dev/null
@@ -1,92 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * Copyright (c) 2015 MediaTek Inc.
- */
-
-#include <linux/dma-buf.h>
-#include <linux/dma-resv.h>
-
-#include <drm/drm_modeset_helper.h>
-#include <drm/drm_fb_helper.h>
-#include <drm/drm_fourcc.h>
-#include <drm/drm_gem.h>
-#include <drm/drm_gem_framebuffer_helper.h>
-
-#include "mtk_drm_drv.h"
-#include "mtk_drm_fb.h"
-#include "mtk_drm_gem.h"
-
-static const struct drm_framebuffer_funcs mtk_drm_fb_funcs = {
-	.create_handle = drm_gem_fb_create_handle,
-	.destroy = drm_gem_fb_destroy,
-};
-
-static struct drm_framebuffer *mtk_drm_framebuffer_init(struct drm_device *dev,
-					const struct drm_mode_fb_cmd2 *mode,
-					struct drm_gem_object *obj)
-{
-	const struct drm_format_info *info = drm_get_format_info(dev, mode);
-	struct drm_framebuffer *fb;
-	int ret;
-
-	if (info->num_planes != 1)
-		return ERR_PTR(-EINVAL);
-
-	fb = kzalloc(sizeof(*fb), GFP_KERNEL);
-	if (!fb)
-		return ERR_PTR(-ENOMEM);
-
-	drm_helper_mode_fill_fb_struct(dev, fb, mode);
-
-	fb->obj[0] = obj;
-
-	ret = drm_framebuffer_init(dev, fb, &mtk_drm_fb_funcs);
-	if (ret) {
-		DRM_ERROR("failed to initialize framebuffer\n");
-		kfree(fb);
-		return ERR_PTR(ret);
-	}
-
-	return fb;
-}
-
-struct drm_framebuffer *mtk_drm_mode_fb_create(struct drm_device *dev,
-					       struct drm_file *file,
-					       const struct drm_mode_fb_cmd2 *cmd)
-{
-	const struct drm_format_info *info = drm_get_format_info(dev, cmd);
-	struct drm_framebuffer *fb;
-	struct drm_gem_object *gem;
-	unsigned int width = cmd->width;
-	unsigned int height = cmd->height;
-	unsigned int size, bpp;
-	int ret;
-
-	if (info->num_planes != 1)
-		return ERR_PTR(-EINVAL);
-
-	gem = drm_gem_object_lookup(file, cmd->handles[0]);
-	if (!gem)
-		return ERR_PTR(-ENOENT);
-
-	bpp = info->cpp[0];
-	size = (height - 1) * cmd->pitches[0] + width * bpp;
-	size += cmd->offsets[0];
-
-	if (gem->size < size) {
-		ret = -EINVAL;
-		goto unreference;
-	}
-
-	fb = mtk_drm_framebuffer_init(dev, cmd, gem);
-	if (IS_ERR(fb)) {
-		ret = PTR_ERR(fb);
-		goto unreference;
-	}
-
-	return fb;
-
-unreference:
-	drm_gem_object_put_unlocked(gem);
-	return ERR_PTR(ret);
-}
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_fb.h b/drivers/gpu/drm/mediatek/mtk_drm_fb.h
deleted file mode 100644
index eb64d26001c6..000000000000
--- a/drivers/gpu/drm/mediatek/mtk_drm_fb.h
+++ /dev/null
@@ -1,13 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * Copyright (c) 2015 MediaTek Inc.
- */
-
-#ifndef MTK_DRM_FB_H
-#define MTK_DRM_FB_H
-
-struct drm_framebuffer *mtk_drm_mode_fb_create(struct drm_device *dev,
-					       struct drm_file *file,
-					       const struct drm_mode_fb_cmd2 *cmd);
-
-#endif /* MTK_DRM_FB_H */
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.c b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
index 3b0cc91c7023..540ef2faa40a 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_plane.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
@@ -13,7 +13,6 @@
 #include "mtk_drm_crtc.h"
 #include "mtk_drm_ddp_comp.h"
 #include "mtk_drm_drv.h"
-#include "mtk_drm_fb.h"
 #include "mtk_drm_gem.h"
 #include "mtk_drm_plane.h"
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
