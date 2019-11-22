Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA93106755
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 08:53:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=22e1vhc3BA1w+8XAT3HKATxR54pab09Ru286HE4g0zk=; b=H/IXNcB0YunsB0
	PAuZvaeTdb/wotL/GQQqlPB0GOEBKBTYoNortG68V5/F5ENZY4rUICXnCGJgBZV5po1ioMK43ckPQ
	Nv2Oit4plslB/wJAXc4sMoJXUeFAkVAFiPM+uLYGVYAPAxda3INRpldxVD9P1oHPgTbS8nH+XkBU8
	TkVf0YRVODDDCyI2VpACBOgKsiuQdgY5s3uIfFDNvdn+69bKij0ZcajbgUVN3veE/yYZoVYXpo4GB
	+qZ4hz7uSveb893/5McdJt2jVb96NcOiAwHlKWO4NqSzYJQsgc1ZMr/nxOnLAeHRKEKgh+xR9jQgN
	q7I6wh4U51KlZYyZxBHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY3kS-0008Nf-E0; Fri, 22 Nov 2019 07:53:00 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY3kG-0008MI-Aa; Fri, 22 Nov 2019 07:52:50 +0000
X-UUID: 5944717b177f4bb4989fa8b0e514854b-20191121
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=fO3a2sHaDCK8cWgJ43PTivPYbDuLooH3WDQSaJqbvHY=; 
 b=iK81P2fmuTSk5PNsJZmzcUZrwGPnToV8gLgLwKDbs0d4j8vb9hDOK06ERkS54YgJXkHAJq24Dl61wS9QyhtHRVVHzz4V9ZgOgtdy1kt/paqF0KzCZVL6l/A25qqU8koLcXszNQSQ/wwkmHLROuawFVFYsHhRvgANCXylRS6R45I=;
X-UUID: 5944717b177f4bb4989fa8b0e514854b-20191121
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1949494477; Thu, 21 Nov 2019 23:52:43 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 21 Nov 2019 23:42:47 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 22 Nov 2019 15:42:35 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 22 Nov 2019 15:42:41 +0800
Message-ID: <1574408559.21408.2.camel@mtksdaap41>
Subject: Re: [PATCH 3/8] drm/mediatek: don't open-code drm_gem_fb_create
From: CK Hu <ck.hu@mediatek.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 22 Nov 2019 15:42:39 +0800
In-Reply-To: <20191115092120.4445-4-daniel.vetter@ffwll.ch>
References: <20191115092120.4445-1-daniel.vetter@ffwll.ch>
 <20191115092120.4445-4-daniel.vetter@ffwll.ch>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: C567D168B7777EC4FDDD0886CBDB15D4E42E703B2427E1E245C023CAFA23D1982000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_235248_375757_8B77F147 
X-CRM114-Status: GOOD (  18.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linux-mediatek@lists.infradead.org, Philipp
 Zabel <p.zabel@pengutronix.de>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Daniel:

On Fri, 2019-11-15 at 10:21 +0100, Daniel Vetter wrote:
> Aside: There's a few other fb_create implementations which
> simply check for valid buffer format (or an approximation thereof),
> and then call drm_gem_fb_create. For atomic drivers at least we could
> walk all planes and make sure the format/modifier combo is valid,
> and remove even more code.
> 
> For non-atomic drivers that's not possible, since the format list for
> the primary buffer might be garbage (and most likely it is).
> 
> Also delete mtk_drm_fb.[hc] since it would now only contain one
> function.

Acked-by: CK Hu <ck.hu@mediatek.com>

> 
> Signed-off-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: CK Hu <ck.hu@mediatek.com>
> Cc: Philipp Zabel <p.zabel@pengutronix.de>
> Cc: Matthias Brugger <matthias.bgg@gmail.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-mediatek@lists.infradead.org
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c   | 16 ++++-
>  drivers/gpu/drm/mediatek/mtk_drm_fb.c    | 92 ------------------------
>  drivers/gpu/drm/mediatek/mtk_drm_fb.h    | 13 ----
>  drivers/gpu/drm/mediatek/mtk_drm_plane.c |  1 -
>  4 files changed, 15 insertions(+), 107 deletions(-)
>  delete mode 100644 drivers/gpu/drm/mediatek/mtk_drm_fb.c
>  delete mode 100644 drivers/gpu/drm/mediatek/mtk_drm_fb.h
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> index 84d14213d992..2b1c122066ea 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> @@ -16,8 +16,10 @@
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_drv.h>
>  #include <drm/drm_fb_helper.h>
> +#include <drm/drm_fourcc.h>
>  #include <drm/drm_gem.h>
>  #include <drm/drm_gem_cma_helper.h>
> +#include <drm/drm_gem_framebuffer_helper.h>
>  #include <drm/drm_of.h>
>  #include <drm/drm_probe_helper.h>
>  #include <drm/drm_vblank.h>
> @@ -27,7 +29,6 @@
>  #include "mtk_drm_ddp.h"
>  #include "mtk_drm_ddp_comp.h"
>  #include "mtk_drm_drv.h"
> -#include "mtk_drm_fb.h"
>  #include "mtk_drm_gem.h"
>  
>  #define DRIVER_NAME "mediatek"
> @@ -115,6 +116,19 @@ static int mtk_atomic_commit(struct drm_device *drm,
>  	return 0;
>  }
>  
> +static struct drm_framebuffer *
> +mtk_drm_mode_fb_create(struct drm_device *dev,
> +		       struct drm_file *file,
> +		       const struct drm_mode_fb_cmd2 *cmd)
> +{
> +	const struct drm_format_info *info = drm_get_format_info(dev, cmd);
> +
> +	if (info->num_planes != 1)
> +		return ERR_PTR(-EINVAL);
> +
> +	return drm_gem_fb_create(dev, file, cmd);
> +}
> +
>  static const struct drm_mode_config_funcs mtk_drm_mode_config_funcs = {
>  	.fb_create = mtk_drm_mode_fb_create,
>  	.atomic_check = drm_atomic_helper_check,
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_fb.c b/drivers/gpu/drm/mediatek/mtk_drm_fb.c
> deleted file mode 100644
> index 3f230a28a2dc..000000000000
> --- a/drivers/gpu/drm/mediatek/mtk_drm_fb.c
> +++ /dev/null
> @@ -1,92 +0,0 @@
> -// SPDX-License-Identifier: GPL-2.0-only
> -/*
> - * Copyright (c) 2015 MediaTek Inc.
> - */
> -
> -#include <linux/dma-buf.h>
> -#include <linux/dma-resv.h>
> -
> -#include <drm/drm_modeset_helper.h>
> -#include <drm/drm_fb_helper.h>
> -#include <drm/drm_fourcc.h>
> -#include <drm/drm_gem.h>
> -#include <drm/drm_gem_framebuffer_helper.h>
> -
> -#include "mtk_drm_drv.h"
> -#include "mtk_drm_fb.h"
> -#include "mtk_drm_gem.h"
> -
> -static const struct drm_framebuffer_funcs mtk_drm_fb_funcs = {
> -	.create_handle = drm_gem_fb_create_handle,
> -	.destroy = drm_gem_fb_destroy,
> -};
> -
> -static struct drm_framebuffer *mtk_drm_framebuffer_init(struct drm_device *dev,
> -					const struct drm_mode_fb_cmd2 *mode,
> -					struct drm_gem_object *obj)
> -{
> -	const struct drm_format_info *info = drm_get_format_info(dev, mode);
> -	struct drm_framebuffer *fb;
> -	int ret;
> -
> -	if (info->num_planes != 1)
> -		return ERR_PTR(-EINVAL);
> -
> -	fb = kzalloc(sizeof(*fb), GFP_KERNEL);
> -	if (!fb)
> -		return ERR_PTR(-ENOMEM);
> -
> -	drm_helper_mode_fill_fb_struct(dev, fb, mode);
> -
> -	fb->obj[0] = obj;
> -
> -	ret = drm_framebuffer_init(dev, fb, &mtk_drm_fb_funcs);
> -	if (ret) {
> -		DRM_ERROR("failed to initialize framebuffer\n");
> -		kfree(fb);
> -		return ERR_PTR(ret);
> -	}
> -
> -	return fb;
> -}
> -
> -struct drm_framebuffer *mtk_drm_mode_fb_create(struct drm_device *dev,
> -					       struct drm_file *file,
> -					       const struct drm_mode_fb_cmd2 *cmd)
> -{
> -	const struct drm_format_info *info = drm_get_format_info(dev, cmd);
> -	struct drm_framebuffer *fb;
> -	struct drm_gem_object *gem;
> -	unsigned int width = cmd->width;
> -	unsigned int height = cmd->height;
> -	unsigned int size, bpp;
> -	int ret;
> -
> -	if (info->num_planes != 1)
> -		return ERR_PTR(-EINVAL);
> -
> -	gem = drm_gem_object_lookup(file, cmd->handles[0]);
> -	if (!gem)
> -		return ERR_PTR(-ENOENT);
> -
> -	bpp = info->cpp[0];
> -	size = (height - 1) * cmd->pitches[0] + width * bpp;
> -	size += cmd->offsets[0];
> -
> -	if (gem->size < size) {
> -		ret = -EINVAL;
> -		goto unreference;
> -	}
> -
> -	fb = mtk_drm_framebuffer_init(dev, cmd, gem);
> -	if (IS_ERR(fb)) {
> -		ret = PTR_ERR(fb);
> -		goto unreference;
> -	}
> -
> -	return fb;
> -
> -unreference:
> -	drm_gem_object_put_unlocked(gem);
> -	return ERR_PTR(ret);
> -}
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_fb.h b/drivers/gpu/drm/mediatek/mtk_drm_fb.h
> deleted file mode 100644
> index eb64d26001c6..000000000000
> --- a/drivers/gpu/drm/mediatek/mtk_drm_fb.h
> +++ /dev/null
> @@ -1,13 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0-only */
> -/*
> - * Copyright (c) 2015 MediaTek Inc.
> - */
> -
> -#ifndef MTK_DRM_FB_H
> -#define MTK_DRM_FB_H
> -
> -struct drm_framebuffer *mtk_drm_mode_fb_create(struct drm_device *dev,
> -					       struct drm_file *file,
> -					       const struct drm_mode_fb_cmd2 *cmd);
> -
> -#endif /* MTK_DRM_FB_H */
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.c b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> index 3b0cc91c7023..540ef2faa40a 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> @@ -13,7 +13,6 @@
>  #include "mtk_drm_crtc.h"
>  #include "mtk_drm_ddp_comp.h"
>  #include "mtk_drm_drv.h"
> -#include "mtk_drm_fb.h"
>  #include "mtk_drm_gem.h"
>  #include "mtk_drm_plane.h"
>  

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
