Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70ACF107643
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 18:10:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Cjy88fMDOU1o6x6LxBznIbGOglzeycStwZXCRayNIM=; b=u1h8RKZbM+Xt1d
	GXYOEYLss7ZdHlpwUC+1oPZxcodoX7SQLabEFuXJbLNT8Q2uP4gg94boXsEZZV3CEvXpvGDSmJP7v
	wZ++j8CFtM8WgBWVS6W38BfgI6IgvJLLJfSE1DrAQAluZYVquSj9R2iW771z1E5T3QmXZiT+86ZPD
	6y5bxs5acMr9fUva1iJj7K5BzoFq6BQbBAvwxUyg2rZJDtoGP8//VXr9WD8sFSagdDnE4mXzvTNxk
	51njAU2EHVprHnNjPpZ6VJDQcpcm5OHWR6U19jt0udDzBlhUnW98XhaRoeafkRBO5g8SfhmEOEw6u
	6ouTbSPXqDRAoVNqI7ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYCRl-0005sk-Im; Fri, 22 Nov 2019 17:10:17 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYCRP-0005r2-MA
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 17:09:57 +0000
Received: by mail-wr1-x442.google.com with SMTP id z10so9434964wrs.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 09:09:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=GveeeDV1nQsr0bSwcCCx8Vsl+3Babn6Mlzv1ByhFH+Y=;
 b=eIBsIiSXvp5sCJ0yKABqoG/j1h+d84G9Zl0HXR0dSvxVhfIscq6daBNS4i0L3j3Fbf
 duO+xDNv0XJY09AcoqHPk0Ix3qIgPTsZ0UDjULIVZXqDQWkXjSytqrRayjTNAz81gVce
 goTINcX86DPQxJjU2D2wGD4TGIw4AIpqF/sgU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GveeeDV1nQsr0bSwcCCx8Vsl+3Babn6Mlzv1ByhFH+Y=;
 b=t6sZSSy3gNjuaoMYcJ7/40pZaFRAZLmSrrmz2Nb3+MVw8/7/1butKIMt/pls90CXCg
 DmqSYi9p3weZ8hONtd7B5S01LcVxHieSITSifPwq62yzjyjArA3oSbUTzEtVddU0NSpQ
 5BgoGZdbzaSYY2qGX3FqZhJBXs+AJ+N+yn7sSK00613Ppj2nCXhzMBvjl6wDo+6cw8By
 gPYdw6fTxLBlDBePNY/cpdqQHhGTQcUP+FYB4pEJyKids9dLDNCCrSdP4YTEwXTiPu3L
 2yp6sdVC1faxrNluGdSI1r+CD0ySKX4EWfOBL6SPwcNwkHmwhS6EjIa+B/zHeE7xNpDB
 9+Xw==
X-Gm-Message-State: APjAAAU4IQRNFGhc9GBXQ38cuCPpW8djhjJzLhw8ehT6p+rSMsJ0FpMC
 Gh9c2M9fmjHVZ30/bGOip8fuiQ==
X-Google-Smtp-Source: APXvYqw21AitnDiR+uQCAQr38tNh94j5CW1Rt6qcwqHjdlzEy/qK8QLOZBeeWzbGVlFlIo1UR84bxw==
X-Received: by 2002:a5d:570f:: with SMTP id a15mr18390167wrv.316.1574442592095; 
 Fri, 22 Nov 2019 09:09:52 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id y11sm6590631wrq.12.2019.11.22.09.09.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 09:09:51 -0800 (PST)
Date: Fri, 22 Nov 2019 18:09:49 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: CK Hu <ck.hu@mediatek.com>
Subject: Re: [PATCH 3/8] drm/mediatek: don't open-code drm_gem_fb_create
Message-ID: <20191122170949.GH6236@phenom.ffwll.local>
References: <20191115092120.4445-1-daniel.vetter@ffwll.ch>
 <20191115092120.4445-4-daniel.vetter@ffwll.ch>
 <1574408559.21408.2.camel@mtksdaap41>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1574408559.21408.2.camel@mtksdaap41>
X-Operating-System: Linux phenom 5.3.0-1-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_090955_793222_62574589 
X-CRM114-Status: GOOD (  23.54  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 DRI Development <dri-devel@lists.freedesktop.org>,
 linux-mediatek@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 22, 2019 at 03:42:39PM +0800, CK Hu wrote:
> Hi, Daniel:
> 
> On Fri, 2019-11-15 at 10:21 +0100, Daniel Vetter wrote:
> > Aside: There's a few other fb_create implementations which
> > simply check for valid buffer format (or an approximation thereof),
> > and then call drm_gem_fb_create. For atomic drivers at least we could
> > walk all planes and make sure the format/modifier combo is valid,
> > and remove even more code.
> > 
> > For non-atomic drivers that's not possible, since the format list for
> > the primary buffer might be garbage (and most likely it is).
> > 
> > Also delete mtk_drm_fb.[hc] since it would now only contain one
> > function.
> 
> Acked-by: CK Hu <ck.hu@mediatek.com>

Pushed to drm-misc-next, thanks for taking a look.
-Daniel

> 
> > 
> > Signed-off-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> > Cc: CK Hu <ck.hu@mediatek.com>
> > Cc: Philipp Zabel <p.zabel@pengutronix.de>
> > Cc: Matthias Brugger <matthias.bgg@gmail.com>
> > Cc: linux-arm-kernel@lists.infradead.org
> > Cc: linux-mediatek@lists.infradead.org
> > ---
> >  drivers/gpu/drm/mediatek/mtk_drm_drv.c   | 16 ++++-
> >  drivers/gpu/drm/mediatek/mtk_drm_fb.c    | 92 ------------------------
> >  drivers/gpu/drm/mediatek/mtk_drm_fb.h    | 13 ----
> >  drivers/gpu/drm/mediatek/mtk_drm_plane.c |  1 -
> >  4 files changed, 15 insertions(+), 107 deletions(-)
> >  delete mode 100644 drivers/gpu/drm/mediatek/mtk_drm_fb.c
> >  delete mode 100644 drivers/gpu/drm/mediatek/mtk_drm_fb.h
> > 
> > diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> > index 84d14213d992..2b1c122066ea 100644
> > --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> > +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> > @@ -16,8 +16,10 @@
> >  #include <drm/drm_atomic_helper.h>
> >  #include <drm/drm_drv.h>
> >  #include <drm/drm_fb_helper.h>
> > +#include <drm/drm_fourcc.h>
> >  #include <drm/drm_gem.h>
> >  #include <drm/drm_gem_cma_helper.h>
> > +#include <drm/drm_gem_framebuffer_helper.h>
> >  #include <drm/drm_of.h>
> >  #include <drm/drm_probe_helper.h>
> >  #include <drm/drm_vblank.h>
> > @@ -27,7 +29,6 @@
> >  #include "mtk_drm_ddp.h"
> >  #include "mtk_drm_ddp_comp.h"
> >  #include "mtk_drm_drv.h"
> > -#include "mtk_drm_fb.h"
> >  #include "mtk_drm_gem.h"
> >  
> >  #define DRIVER_NAME "mediatek"
> > @@ -115,6 +116,19 @@ static int mtk_atomic_commit(struct drm_device *drm,
> >  	return 0;
> >  }
> >  
> > +static struct drm_framebuffer *
> > +mtk_drm_mode_fb_create(struct drm_device *dev,
> > +		       struct drm_file *file,
> > +		       const struct drm_mode_fb_cmd2 *cmd)
> > +{
> > +	const struct drm_format_info *info = drm_get_format_info(dev, cmd);
> > +
> > +	if (info->num_planes != 1)
> > +		return ERR_PTR(-EINVAL);
> > +
> > +	return drm_gem_fb_create(dev, file, cmd);
> > +}
> > +
> >  static const struct drm_mode_config_funcs mtk_drm_mode_config_funcs = {
> >  	.fb_create = mtk_drm_mode_fb_create,
> >  	.atomic_check = drm_atomic_helper_check,
> > diff --git a/drivers/gpu/drm/mediatek/mtk_drm_fb.c b/drivers/gpu/drm/mediatek/mtk_drm_fb.c
> > deleted file mode 100644
> > index 3f230a28a2dc..000000000000
> > --- a/drivers/gpu/drm/mediatek/mtk_drm_fb.c
> > +++ /dev/null
> > @@ -1,92 +0,0 @@
> > -// SPDX-License-Identifier: GPL-2.0-only
> > -/*
> > - * Copyright (c) 2015 MediaTek Inc.
> > - */
> > -
> > -#include <linux/dma-buf.h>
> > -#include <linux/dma-resv.h>
> > -
> > -#include <drm/drm_modeset_helper.h>
> > -#include <drm/drm_fb_helper.h>
> > -#include <drm/drm_fourcc.h>
> > -#include <drm/drm_gem.h>
> > -#include <drm/drm_gem_framebuffer_helper.h>
> > -
> > -#include "mtk_drm_drv.h"
> > -#include "mtk_drm_fb.h"
> > -#include "mtk_drm_gem.h"
> > -
> > -static const struct drm_framebuffer_funcs mtk_drm_fb_funcs = {
> > -	.create_handle = drm_gem_fb_create_handle,
> > -	.destroy = drm_gem_fb_destroy,
> > -};
> > -
> > -static struct drm_framebuffer *mtk_drm_framebuffer_init(struct drm_device *dev,
> > -					const struct drm_mode_fb_cmd2 *mode,
> > -					struct drm_gem_object *obj)
> > -{
> > -	const struct drm_format_info *info = drm_get_format_info(dev, mode);
> > -	struct drm_framebuffer *fb;
> > -	int ret;
> > -
> > -	if (info->num_planes != 1)
> > -		return ERR_PTR(-EINVAL);
> > -
> > -	fb = kzalloc(sizeof(*fb), GFP_KERNEL);
> > -	if (!fb)
> > -		return ERR_PTR(-ENOMEM);
> > -
> > -	drm_helper_mode_fill_fb_struct(dev, fb, mode);
> > -
> > -	fb->obj[0] = obj;
> > -
> > -	ret = drm_framebuffer_init(dev, fb, &mtk_drm_fb_funcs);
> > -	if (ret) {
> > -		DRM_ERROR("failed to initialize framebuffer\n");
> > -		kfree(fb);
> > -		return ERR_PTR(ret);
> > -	}
> > -
> > -	return fb;
> > -}
> > -
> > -struct drm_framebuffer *mtk_drm_mode_fb_create(struct drm_device *dev,
> > -					       struct drm_file *file,
> > -					       const struct drm_mode_fb_cmd2 *cmd)
> > -{
> > -	const struct drm_format_info *info = drm_get_format_info(dev, cmd);
> > -	struct drm_framebuffer *fb;
> > -	struct drm_gem_object *gem;
> > -	unsigned int width = cmd->width;
> > -	unsigned int height = cmd->height;
> > -	unsigned int size, bpp;
> > -	int ret;
> > -
> > -	if (info->num_planes != 1)
> > -		return ERR_PTR(-EINVAL);
> > -
> > -	gem = drm_gem_object_lookup(file, cmd->handles[0]);
> > -	if (!gem)
> > -		return ERR_PTR(-ENOENT);
> > -
> > -	bpp = info->cpp[0];
> > -	size = (height - 1) * cmd->pitches[0] + width * bpp;
> > -	size += cmd->offsets[0];
> > -
> > -	if (gem->size < size) {
> > -		ret = -EINVAL;
> > -		goto unreference;
> > -	}
> > -
> > -	fb = mtk_drm_framebuffer_init(dev, cmd, gem);
> > -	if (IS_ERR(fb)) {
> > -		ret = PTR_ERR(fb);
> > -		goto unreference;
> > -	}
> > -
> > -	return fb;
> > -
> > -unreference:
> > -	drm_gem_object_put_unlocked(gem);
> > -	return ERR_PTR(ret);
> > -}
> > diff --git a/drivers/gpu/drm/mediatek/mtk_drm_fb.h b/drivers/gpu/drm/mediatek/mtk_drm_fb.h
> > deleted file mode 100644
> > index eb64d26001c6..000000000000
> > --- a/drivers/gpu/drm/mediatek/mtk_drm_fb.h
> > +++ /dev/null
> > @@ -1,13 +0,0 @@
> > -/* SPDX-License-Identifier: GPL-2.0-only */
> > -/*
> > - * Copyright (c) 2015 MediaTek Inc.
> > - */
> > -
> > -#ifndef MTK_DRM_FB_H
> > -#define MTK_DRM_FB_H
> > -
> > -struct drm_framebuffer *mtk_drm_mode_fb_create(struct drm_device *dev,
> > -					       struct drm_file *file,
> > -					       const struct drm_mode_fb_cmd2 *cmd);
> > -
> > -#endif /* MTK_DRM_FB_H */
> > diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.c b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> > index 3b0cc91c7023..540ef2faa40a 100644
> > --- a/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> > +++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> > @@ -13,7 +13,6 @@
> >  #include "mtk_drm_crtc.h"
> >  #include "mtk_drm_ddp_comp.h"
> >  #include "mtk_drm_drv.h"
> > -#include "mtk_drm_fb.h"
> >  #include "mtk_drm_gem.h"
> >  #include "mtk_drm_plane.h"
> >  
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
