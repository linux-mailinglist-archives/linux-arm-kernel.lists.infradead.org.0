Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA4EE0A13
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 19:07:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SK8emEhydebHJnHesTmbr2GgKpkhxVsVp1bCC7FJTgs=; b=hRuphYH8GZ2DNx
	FcYC0Z7h9h3SHiQ4ltu56ZH7r/UYPgKs+OFOD396Ya+Zv4uWNL9kPE9frHMOlwMoDSD4petmTMI5r
	G+Ft6z5tZicTKxP0hHKk7o0JV0uxvwy9VHYp7g/OloQMjpM0zlGmU/WSTe8SWK45584kyoJqWmfSR
	+VTByprPvmJ4BzT0laZ1O6AehqR53M/UlWlWQcjJSJMjsm7QVxC7yijugof8XwSm7218donKCnW4T
	LkQu4a09VBYPbOIB+qQ8szHZx9BVPbaOOH70MsrG30vhXzQOIPZdJZUf6tMESeOdcd+yHE2+OmWkD
	BlTRB7pcJEE6+XkxdKnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMxdT-0002js-0J; Tue, 22 Oct 2019 17:07:55 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMxdH-0002hX-7c; Tue, 22 Oct 2019 17:07:45 +0000
Received: by mail-wr1-x442.google.com with SMTP id n15so8131840wrw.13;
 Tue, 22 Oct 2019 10:07:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=JsrDlTvHPAbcfh1hQNzT3lK8ix7PHbU9YfhPaXTVTqs=;
 b=QA1CAekAkxNZ7qh8y0838xML+LN9yFAzU9t8D7x2NBL2AobMKvherO2JTQiYk91IRP
 bufk8+OmgWUuV+o3e2fqZG7DKCKjgd6z/XzfxK6iieYHxcWz70ND+8rr2fp8iYy1+JNZ
 qqH/y1+gQUushUbQ6DGGV6CqBeqo1wD5VhCbP8RzZ0R3VBLUMxbJJwZ3VQimycMt3S2X
 yI1QonB34iTP7ASEYdSnaoCxmk2rV+Bb8bmW8/k4b9vxibszUuX1ybmucY5lA7dt+kjc
 WjEffTVg8wCG+95cX41yBlMXjTYLArskhXEIA6Jpp+6/rB6U+PwT0oO5vict8ZepcqTH
 f9Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=JsrDlTvHPAbcfh1hQNzT3lK8ix7PHbU9YfhPaXTVTqs=;
 b=o6ej0DtHN5a/F/ebyVY3q8hoIZiFiow6bG997ggS2SK7mLHcuFzBiuTctD/AtILamD
 SrMXNE8Ulkb5gZgCU0Bx5kSRRhmFtmRhmq66BW4hFy992E9CAjH6zohlgZAwnF66LvhY
 T6KT9nm5w13wJfVRuOGV+WXgpeAw5oG7wS3eS+tOvrSTdBDPe5ZkqaePN1H08Pz48mvQ
 kMfjWqLAFEKJSyIXITq56qRi5xDIeTfpqYh3bCUJ6/eqwKlqgBzGY54fWSpW+u5rnQgK
 UQJTMrcrR+tJvrjghCC8+q5VFxSl6xkfDKaAQQkr+uFqM553rTjhE17i1kk1EFRK2UES
 RvbQ==
X-Gm-Message-State: APjAAAWLh2pcUvTbqoAieAWuP5OPp+rfIPxFsWtP/FUxghJHe7iiGhfp
 axjr0qcisT6kwWf+WdZh8u0=
X-Google-Smtp-Source: APXvYqxPSSz5FLpJNbNiy2bf/QvPcjHLKlUtY5uC3e2DmFSbAQH7/SQFBJD++/EgciM4odSuAWhGiA==
X-Received: by 2002:a5d:560e:: with SMTP id l14mr4238294wrv.173.1571764060236; 
 Tue, 22 Oct 2019 10:07:40 -0700 (PDT)
Received: from ziggy.stardust ([95.169.226.6])
 by smtp.gmail.com with ESMTPSA id d4sm26149298wrc.54.2019.10.22.10.07.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Oct 2019 10:07:39 -0700 (PDT)
Subject: Re: [PATCH 5/6] drm/mediatek: Convert to use CMA helpers
To: Rob Herring <robh@kernel.org>, dri-devel@lists.freedesktop.org,
 Ulrich Hecht <uli@fpond.eu>, Daniel Kurtz <djkurtz@chromium.org>,
 Nicolas Boichat <drinkcat@chromium.org>
References: <20191021214550.1461-1-robh@kernel.org>
 <20191021214550.1461-6-robh@kernel.org>
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
 r2JwH1CJjrHWeQEI2ucSKsNa8FllDmG/fQ==
Message-ID: <1cbca96c-19dd-1d15-949c-7fbcc15369b4@gmail.com>
Date: Tue, 22 Oct 2019 19:07:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191021214550.1461-6-robh@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_100743_305152_0752B061 
X-CRM114-Status: GOOD (  26.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (matthias.bgg[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Liviu Dudau <liviu.dudau@arm.com>, Sandy Huang <hjc@rock-chips.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Yannick Fertre <yannick.fertre@st.com>, Kevin Hilman <khilman@baylibre.com>,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Xinliang Liu <z.liuxinliang@hisilicon.com>, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>,
 =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>,
 "James \(Qian\) Wang" <james.qian.wang@arm.com>, CK Hu <ck.hu@mediatek.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Chen Feng <puck.chen@hisilicon.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, Philippe Cornu <philippe.cornu@st.com>,
 Vincent Abriou <vincent.abriou@st.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Rongrong Zou <zourongrong@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On 21/10/2019 23:45, Rob Herring wrote:
> The only reason the Mediatek driver doesn't use the CMA helpers is it
> sets DMA_ATTR_NO_KERNEL_MAPPING and does a vmap() on demand. Using
> vmap() is not even guaranteed to work as DMA buffers may not have a
> struct page. Now that the CMA helpers support setting
> DMA_ATTR_NO_KERNEL_MAPPING as needed or not, convert Mediatek driver to
> use CMA helpers.
> 
> Cc: CK Hu <ck.hu@mediatek.com>
> Cc: Philipp Zabel <p.zabel@pengutronix.de>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Matthias Brugger <matthias.bgg@gmail.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-mediatek@lists.infradead.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---

I tested this on my Chromebook with some patches on top of v5.4-rc1 [1], which
work. If I add your patches on top of that, the system does not boot up.
Unfortunately I don't have a serial console, so I wasn't able to see if there is
any error message.

I checked the config and didn't see any suspicious

I added Uli and some guys from chromium, maybe someone can provide some
logs/insights.

Regards,
Matthias

[1] https://github.com/uli/kernel/tree/elm-working-5.4

>  drivers/gpu/drm/mediatek/Makefile        |   1 -
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c  |   2 +-
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c   |  28 +--
>  drivers/gpu/drm/mediatek/mtk_drm_fb.c    |   1 -
>  drivers/gpu/drm/mediatek/mtk_drm_gem.c   | 289 -----------------------
>  drivers/gpu/drm/mediatek/mtk_drm_gem.h   |  51 ----
>  drivers/gpu/drm/mediatek/mtk_drm_plane.c |   7 +-
>  7 files changed, 15 insertions(+), 364 deletions(-)
>  delete mode 100644 drivers/gpu/drm/mediatek/mtk_drm_gem.c
>  delete mode 100644 drivers/gpu/drm/mediatek/mtk_drm_gem.h
> 
> diff --git a/drivers/gpu/drm/mediatek/Makefile b/drivers/gpu/drm/mediatek/Makefile
> index 82ae49c64221..50a50e86738f 100644
> --- a/drivers/gpu/drm/mediatek/Makefile
> +++ b/drivers/gpu/drm/mediatek/Makefile
> @@ -8,7 +8,6 @@ mediatek-drm-y := mtk_disp_color.o \
>  		  mtk_drm_ddp_comp.o \
>  		  mtk_drm_drv.o \
>  		  mtk_drm_fb.o \
> -		  mtk_drm_gem.o \
>  		  mtk_drm_plane.o \
>  		  mtk_dsi.o \
>  		  mtk_mipi_tx.o \
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> index 34a731755791..638d57e8ac12 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> @@ -11,6 +11,7 @@
>  
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_plane_helper.h>
> +#include <drm/drm_print.h>
>  #include <drm/drm_probe_helper.h>
>  #include <drm/drm_vblank.h>
>  
> @@ -18,7 +19,6 @@
>  #include "mtk_drm_crtc.h"
>  #include "mtk_drm_ddp.h"
>  #include "mtk_drm_ddp_comp.h"
> -#include "mtk_drm_gem.h"
>  #include "mtk_drm_plane.h"
>  
>  /**
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> index 352b81a7a670..36f32507e5fb 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> @@ -28,7 +28,6 @@
>  #include "mtk_drm_ddp_comp.h"
>  #include "mtk_drm_drv.h"
>  #include "mtk_drm_fb.h"
> -#include "mtk_drm_gem.h"
>  
>  #define DRIVER_NAME "mediatek"
>  #define DRIVER_DESC "Mediatek SoC DRM"
> @@ -335,16 +334,14 @@ static void mtk_drm_kms_deinit(struct drm_device *drm)
>  	drm_mode_config_cleanup(drm);
>  }
>  
> -static const struct file_operations mtk_drm_fops = {
> -	.owner = THIS_MODULE,
> -	.open = drm_open,
> -	.release = drm_release,
> -	.unlocked_ioctl = drm_ioctl,
> -	.mmap = mtk_drm_gem_mmap,
> -	.poll = drm_poll,
> -	.read = drm_read,
> -	.compat_ioctl = drm_compat_ioctl,
> -};
> +DEFINE_DRM_GEM_CMA_FOPS(mtk_drm_fops);
> +
> +static int mtk_drm_gem_dumb_create(struct drm_file *file_priv,
> +				   struct drm_device *dev,
> +				   struct drm_mode_create_dumb *args)
> +{
> +	return drm_gem_cma_dumb_create_internal(file_priv, dev, args);
> +}
>  
>  /*
>   * We need to override this because the device used to import the memory is
> @@ -361,18 +358,15 @@ struct drm_gem_object *mtk_drm_gem_prime_import(struct drm_device *dev,
>  static struct drm_driver mtk_drm_driver = {
>  	.driver_features = DRIVER_MODESET | DRIVER_GEM | DRIVER_ATOMIC,
>  
> -	.gem_free_object_unlocked = mtk_drm_gem_free_object,
>  	.gem_vm_ops = &drm_gem_cma_vm_ops,
> +	.gem_create_object = drm_cma_gem_create_object_default_funcs,
>  	.dumb_create = mtk_drm_gem_dumb_create,
>  
>  	.prime_handle_to_fd = drm_gem_prime_handle_to_fd,
>  	.prime_fd_to_handle = drm_gem_prime_fd_to_handle,
>  	.gem_prime_import = mtk_drm_gem_prime_import,
> -	.gem_prime_get_sg_table = mtk_gem_prime_get_sg_table,
> -	.gem_prime_import_sg_table = mtk_gem_prime_import_sg_table,
> -	.gem_prime_mmap = mtk_drm_gem_mmap_buf,
> -	.gem_prime_vmap = mtk_drm_gem_prime_vmap,
> -	.gem_prime_vunmap = mtk_drm_gem_prime_vunmap,
> +	.gem_prime_import_sg_table = drm_gem_cma_prime_import_sg_table_vmap,
> +	.gem_prime_mmap = drm_gem_prime_mmap,
>  	.fops = &mtk_drm_fops,
>  
>  	.name = DRIVER_NAME,
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_fb.c b/drivers/gpu/drm/mediatek/mtk_drm_fb.c
> index 3f230a28a2dc..596b4d5ed002 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_fb.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_fb.c
> @@ -14,7 +14,6 @@
>  
>  #include "mtk_drm_drv.h"
>  #include "mtk_drm_fb.h"
> -#include "mtk_drm_gem.h"
>  
>  static const struct drm_framebuffer_funcs mtk_drm_fb_funcs = {
>  	.create_handle = drm_gem_fb_create_handle,
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_gem.c b/drivers/gpu/drm/mediatek/mtk_drm_gem.c
> deleted file mode 100644
> index ca672f1d140d..000000000000
> --- a/drivers/gpu/drm/mediatek/mtk_drm_gem.c
> +++ /dev/null
> @@ -1,289 +0,0 @@
> -// SPDX-License-Identifier: GPL-2.0-only
> -/*
> - * Copyright (c) 2015 MediaTek Inc.
> - */
> -
> -#include <linux/dma-buf.h>
> -
> -#include <drm/drm.h>
> -#include <drm/drm_device.h>
> -#include <drm/drm_gem.h>
> -#include <drm/drm_prime.h>
> -
> -#include "mtk_drm_drv.h"
> -#include "mtk_drm_gem.h"
> -
> -static struct mtk_drm_gem_obj *mtk_drm_gem_init(struct drm_device *dev,
> -						unsigned long size)
> -{
> -	struct mtk_drm_gem_obj *mtk_gem_obj;
> -	int ret;
> -
> -	size = round_up(size, PAGE_SIZE);
> -
> -	mtk_gem_obj = kzalloc(sizeof(*mtk_gem_obj), GFP_KERNEL);
> -	if (!mtk_gem_obj)
> -		return ERR_PTR(-ENOMEM);
> -
> -	ret = drm_gem_object_init(dev, &mtk_gem_obj->base, size);
> -	if (ret < 0) {
> -		DRM_ERROR("failed to initialize gem object\n");
> -		kfree(mtk_gem_obj);
> -		return ERR_PTR(ret);
> -	}
> -
> -	return mtk_gem_obj;
> -}
> -
> -struct mtk_drm_gem_obj *mtk_drm_gem_create(struct drm_device *dev,
> -					   size_t size, bool alloc_kmap)
> -{
> -	struct mtk_drm_private *priv = dev->dev_private;
> -	struct mtk_drm_gem_obj *mtk_gem;
> -	struct drm_gem_object *obj;
> -	int ret;
> -
> -	mtk_gem = mtk_drm_gem_init(dev, size);
> -	if (IS_ERR(mtk_gem))
> -		return ERR_CAST(mtk_gem);
> -
> -	obj = &mtk_gem->base;
> -
> -	mtk_gem->dma_attrs = DMA_ATTR_WRITE_COMBINE;
> -
> -	if (!alloc_kmap)
> -		mtk_gem->dma_attrs |= DMA_ATTR_NO_KERNEL_MAPPING;
> -
> -	mtk_gem->cookie = dma_alloc_attrs(priv->dma_dev, obj->size,
> -					  &mtk_gem->dma_addr, GFP_KERNEL,
> -					  mtk_gem->dma_attrs);
> -	if (!mtk_gem->cookie) {
> -		DRM_ERROR("failed to allocate %zx byte dma buffer", obj->size);
> -		ret = -ENOMEM;
> -		goto err_gem_free;
> -	}
> -
> -	if (alloc_kmap)
> -		mtk_gem->kvaddr = mtk_gem->cookie;
> -
> -	DRM_DEBUG_DRIVER("cookie = %p dma_addr = %pad size = %zu\n",
> -			 mtk_gem->cookie, &mtk_gem->dma_addr,
> -			 size);
> -
> -	return mtk_gem;
> -
> -err_gem_free:
> -	drm_gem_object_release(obj);
> -	kfree(mtk_gem);
> -	return ERR_PTR(ret);
> -}
> -
> -void mtk_drm_gem_free_object(struct drm_gem_object *obj)
> -{
> -	struct mtk_drm_gem_obj *mtk_gem = to_mtk_gem_obj(obj);
> -	struct mtk_drm_private *priv = obj->dev->dev_private;
> -
> -	if (mtk_gem->sg)
> -		drm_prime_gem_destroy(obj, mtk_gem->sg);
> -	else
> -		dma_free_attrs(priv->dma_dev, obj->size, mtk_gem->cookie,
> -			       mtk_gem->dma_addr, mtk_gem->dma_attrs);
> -
> -	/* release file pointer to gem object. */
> -	drm_gem_object_release(obj);
> -
> -	kfree(mtk_gem);
> -}
> -
> -int mtk_drm_gem_dumb_create(struct drm_file *file_priv, struct drm_device *dev,
> -			    struct drm_mode_create_dumb *args)
> -{
> -	struct mtk_drm_gem_obj *mtk_gem;
> -	int ret;
> -
> -	args->pitch = DIV_ROUND_UP(args->width * args->bpp, 8);
> -	args->size = args->pitch * args->height;
> -
> -	mtk_gem = mtk_drm_gem_create(dev, args->size, false);
> -	if (IS_ERR(mtk_gem))
> -		return PTR_ERR(mtk_gem);
> -
> -	/*
> -	 * allocate a id of idr table where the obj is registered
> -	 * and handle has the id what user can see.
> -	 */
> -	ret = drm_gem_handle_create(file_priv, &mtk_gem->base, &args->handle);
> -	if (ret)
> -		goto err_handle_create;
> -
> -	/* drop reference from allocate - handle holds it now. */
> -	drm_gem_object_put_unlocked(&mtk_gem->base);
> -
> -	return 0;
> -
> -err_handle_create:
> -	mtk_drm_gem_free_object(&mtk_gem->base);
> -	return ret;
> -}
> -
> -static int mtk_drm_gem_object_mmap(struct drm_gem_object *obj,
> -				   struct vm_area_struct *vma)
> -
> -{
> -	int ret;
> -	struct mtk_drm_gem_obj *mtk_gem = to_mtk_gem_obj(obj);
> -	struct mtk_drm_private *priv = obj->dev->dev_private;
> -
> -	/*
> -	 * dma_alloc_attrs() allocated a struct page table for mtk_gem, so clear
> -	 * VM_PFNMAP flag that was set by drm_gem_mmap_obj()/drm_gem_mmap().
> -	 */
> -	vma->vm_flags &= ~VM_PFNMAP;
> -
> -	ret = dma_mmap_attrs(priv->dma_dev, vma, mtk_gem->cookie,
> -			     mtk_gem->dma_addr, obj->size, mtk_gem->dma_attrs);
> -	if (ret)
> -		drm_gem_vm_close(vma);
> -
> -	return ret;
> -}
> -
> -int mtk_drm_gem_mmap_buf(struct drm_gem_object *obj, struct vm_area_struct *vma)
> -{
> -	int ret;
> -
> -	ret = drm_gem_mmap_obj(obj, obj->size, vma);
> -	if (ret)
> -		return ret;
> -
> -	return mtk_drm_gem_object_mmap(obj, vma);
> -}
> -
> -int mtk_drm_gem_mmap(struct file *filp, struct vm_area_struct *vma)
> -{
> -	struct drm_gem_object *obj;
> -	int ret;
> -
> -	ret = drm_gem_mmap(filp, vma);
> -	if (ret)
> -		return ret;
> -
> -	obj = vma->vm_private_data;
> -
> -	/*
> -	 * Set vm_pgoff (used as a fake buffer offset by DRM) to 0 and map the
> -	 * whole buffer from the start.
> -	 */
> -	vma->vm_pgoff = 0;
> -
> -	return mtk_drm_gem_object_mmap(obj, vma);
> -}
> -
> -/*
> - * Allocate a sg_table for this GEM object.
> - * Note: Both the table's contents, and the sg_table itself must be freed by
> - *       the caller.
> - * Returns a pointer to the newly allocated sg_table, or an ERR_PTR() error.
> - */
> -struct sg_table *mtk_gem_prime_get_sg_table(struct drm_gem_object *obj)
> -{
> -	struct mtk_drm_gem_obj *mtk_gem = to_mtk_gem_obj(obj);
> -	struct mtk_drm_private *priv = obj->dev->dev_private;
> -	struct sg_table *sgt;
> -	int ret;
> -
> -	sgt = kzalloc(sizeof(*sgt), GFP_KERNEL);
> -	if (!sgt)
> -		return ERR_PTR(-ENOMEM);
> -
> -	ret = dma_get_sgtable_attrs(priv->dma_dev, sgt, mtk_gem->cookie,
> -				    mtk_gem->dma_addr, obj->size,
> -				    mtk_gem->dma_attrs);
> -	if (ret) {
> -		DRM_ERROR("failed to allocate sgt, %d\n", ret);
> -		kfree(sgt);
> -		return ERR_PTR(ret);
> -	}
> -
> -	return sgt;
> -}
> -
> -struct drm_gem_object *mtk_gem_prime_import_sg_table(struct drm_device *dev,
> -			struct dma_buf_attachment *attach, struct sg_table *sg)
> -{
> -	struct mtk_drm_gem_obj *mtk_gem;
> -	int ret;
> -	struct scatterlist *s;
> -	unsigned int i;
> -	dma_addr_t expected;
> -
> -	mtk_gem = mtk_drm_gem_init(dev, attach->dmabuf->size);
> -
> -	if (IS_ERR(mtk_gem))
> -		return ERR_CAST(mtk_gem);
> -
> -	expected = sg_dma_address(sg->sgl);
> -	for_each_sg(sg->sgl, s, sg->nents, i) {
> -		if (sg_dma_address(s) != expected) {
> -			DRM_ERROR("sg_table is not contiguous");
> -			ret = -EINVAL;
> -			goto err_gem_free;
> -		}
> -		expected = sg_dma_address(s) + sg_dma_len(s);
> -	}
> -
> -	mtk_gem->dma_addr = sg_dma_address(sg->sgl);
> -	mtk_gem->sg = sg;
> -
> -	return &mtk_gem->base;
> -
> -err_gem_free:
> -	kfree(mtk_gem);
> -	return ERR_PTR(ret);
> -}
> -
> -void *mtk_drm_gem_prime_vmap(struct drm_gem_object *obj)
> -{
> -	struct mtk_drm_gem_obj *mtk_gem = to_mtk_gem_obj(obj);
> -	struct sg_table *sgt;
> -	struct sg_page_iter iter;
> -	unsigned int npages;
> -	unsigned int i = 0;
> -
> -	if (mtk_gem->kvaddr)
> -		return mtk_gem->kvaddr;
> -
> -	sgt = mtk_gem_prime_get_sg_table(obj);
> -	if (IS_ERR(sgt))
> -		return NULL;
> -
> -	npages = obj->size >> PAGE_SHIFT;
> -	mtk_gem->pages = kcalloc(npages, sizeof(*mtk_gem->pages), GFP_KERNEL);
> -	if (!mtk_gem->pages)
> -		goto out;
> -
> -	for_each_sg_page(sgt->sgl, &iter, sgt->orig_nents, 0) {
> -		mtk_gem->pages[i++] = sg_page_iter_page(&iter);
> -		if (i > npages)
> -			break;
> -	}
> -	mtk_gem->kvaddr = vmap(mtk_gem->pages, npages, VM_MAP,
> -			       pgprot_writecombine(PAGE_KERNEL));
> -
> -out:
> -	kfree((void *)sgt);
> -
> -	return mtk_gem->kvaddr;
> -}
> -
> -void mtk_drm_gem_prime_vunmap(struct drm_gem_object *obj, void *vaddr)
> -{
> -	struct mtk_drm_gem_obj *mtk_gem = to_mtk_gem_obj(obj);
> -
> -	if (!mtk_gem->pages)
> -		return;
> -
> -	vunmap(vaddr);
> -	mtk_gem->kvaddr = 0;
> -	kfree((void *)mtk_gem->pages);
> -}
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_gem.h b/drivers/gpu/drm/mediatek/mtk_drm_gem.h
> deleted file mode 100644
> index ff9f976d9807..000000000000
> --- a/drivers/gpu/drm/mediatek/mtk_drm_gem.h
> +++ /dev/null
> @@ -1,51 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0-only */
> -/*
> - * Copyright (c) 2015 MediaTek Inc.
> - */
> -
> -#ifndef _MTK_DRM_GEM_H_
> -#define _MTK_DRM_GEM_H_
> -
> -#include <drm/drm_gem.h>
> -
> -/*
> - * mtk drm buffer structure.
> - *
> - * @base: a gem object.
> - *	- a new handle to this gem object would be created
> - *	by drm_gem_handle_create().
> - * @cookie: the return value of dma_alloc_attrs(), keep it for dma_free_attrs()
> - * @kvaddr: kernel virtual address of gem buffer.
> - * @dma_addr: dma address of gem buffer.
> - * @dma_attrs: dma attributes of gem buffer.
> - *
> - * P.S. this object would be transferred to user as kms_bo.handle so
> - *	user can access the buffer through kms_bo.handle.
> - */
> -struct mtk_drm_gem_obj {
> -	struct drm_gem_object	base;
> -	void			*cookie;
> -	void			*kvaddr;
> -	dma_addr_t		dma_addr;
> -	unsigned long		dma_attrs;
> -	struct sg_table		*sg;
> -	struct page		**pages;
> -};
> -
> -#define to_mtk_gem_obj(x)	container_of(x, struct mtk_drm_gem_obj, base)
> -
> -void mtk_drm_gem_free_object(struct drm_gem_object *gem);
> -struct mtk_drm_gem_obj *mtk_drm_gem_create(struct drm_device *dev, size_t size,
> -					   bool alloc_kmap);
> -int mtk_drm_gem_dumb_create(struct drm_file *file_priv, struct drm_device *dev,
> -			    struct drm_mode_create_dumb *args);
> -int mtk_drm_gem_mmap(struct file *filp, struct vm_area_struct *vma);
> -int mtk_drm_gem_mmap_buf(struct drm_gem_object *obj,
> -			 struct vm_area_struct *vma);
> -struct sg_table *mtk_gem_prime_get_sg_table(struct drm_gem_object *obj);
> -struct drm_gem_object *mtk_gem_prime_import_sg_table(struct drm_device *dev,
> -			struct dma_buf_attachment *attach, struct sg_table *sg);
> -void *mtk_drm_gem_prime_vmap(struct drm_gem_object *obj);
> -void mtk_drm_gem_prime_vunmap(struct drm_gem_object *obj, void *vaddr);
> -
> -#endif
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.c b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> index 584a9ecadce6..8f256602f075 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> @@ -8,13 +8,14 @@
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_fourcc.h>
>  #include <drm/drm_plane_helper.h>
> +#include <drm/drm_print.h>
> +#include <drm/drm_gem_cma_helper.h>
>  #include <drm/drm_gem_framebuffer_helper.h>
>  
>  #include "mtk_drm_crtc.h"
>  #include "mtk_drm_ddp_comp.h"
>  #include "mtk_drm_drv.h"
>  #include "mtk_drm_fb.h"
> -#include "mtk_drm_gem.h"
>  #include "mtk_drm_plane.h"
>  
>  static const u32 formats[] = {
> @@ -108,7 +109,6 @@ static void mtk_plane_atomic_update(struct drm_plane *plane,
>  	struct drm_crtc *crtc = plane->state->crtc;
>  	struct drm_framebuffer *fb = plane->state->fb;
>  	struct drm_gem_object *gem;
> -	struct mtk_drm_gem_obj *mtk_gem;
>  	unsigned int pitch, format;
>  	dma_addr_t addr;
>  
> @@ -116,8 +116,7 @@ static void mtk_plane_atomic_update(struct drm_plane *plane,
>  		return;
>  
>  	gem = fb->obj[0];
> -	mtk_gem = to_mtk_gem_obj(gem);
> -	addr = mtk_gem->dma_addr;
> +	addr = to_drm_gem_cma_obj(gem)->paddr;
>  	pitch = fb->pitches[0];
>  	format = fb->format->format;
>  
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
