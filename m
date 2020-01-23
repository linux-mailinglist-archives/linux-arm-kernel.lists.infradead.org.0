Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67305146305
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 09:06:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E1mrP8Dnt1BhVKVy/+QHKFp6jdBzRkTBLSuaKX33isM=; b=LNvMbhdLVCc1oq
	pZfKqhAx8eGhitnRrj7/lFE5GP3wULQrPZLIdGf6miskghbCSIKFJFo+qusXZgdgnYEemyD1Uok8K
	yk5mOnjSTcysmeCSwasAqdIh9F5GTPjKT9R9BTLvroN6XI7KexxiGJKeT9Sbh1Dd4hov7G60Xo+0X
	oZwBuhOlo3X7bJTpoKt93Z+uxB+fGYrlCKK7j8VqzukiZS5tJaX0AA6tQCkRr33ghpgrz4VUk73T4
	Z0eZOlWGpj7eQByCv/bks+WSti6MKAb1Vq0Ce8Wb4N7Ahzczo6YUGyTWXLJlGel4Q02s0gsdqOGkR
	Ng/C1ol1kTvmx+3UugJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuXVi-0003IV-Ne; Thu, 23 Jan 2020 08:06:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuXVT-0003HK-Rg; Thu, 23 Jan 2020 08:06:30 +0000
Received: from ip092042140082.rev.nessus.at ([92.42.140.82] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iuXVN-0004gu-Fu; Thu, 23 Jan 2020 09:06:21 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH] drm/rockchip: Add GEM create ioctl support
Date: Thu, 23 Jan 2020 09:06:20 +0100
Message-ID: <2150585.39Qbo98K5S@phil>
In-Reply-To: <20200122190855.20385-1-ezequiel@collabora.com>
References: <20200122190855.20385-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_000628_045769_962DE5B8 
X-CRM114-Status: GOOD (  25.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Douglas Anderson <dianders@chromium.org>, David Airlie <airlied@linux.ie>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Tomasz Figa <tfiga@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org,
 Mark Yao <mark.yao@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ezquiel,

Am Mittwoch, 22. Januar 2020, 20:08:55 CET schrieb Ezequiel Garcia:
> From: Mark Yao <mark.yao@rock-chips.com>
> 
> Add driver-specific GEM create/offset ioctls, to allow users
> to create objects of arbitrary size.
> 
> These are required to allocate buffers to be shared with
> video decoder block, with hardware-specific needs such as
> macroblock alignment and extra room for motion vectors.

Previously the use of this ioctl was to allow a custom xserver
to allocate memory to hand over to a binary mali blob for rendering.
The counter argument was that these dumb buffer should not be
rendered into at all.

Nowadays we have prime for buffer sharing between display ip
and 3d-renderer, and somehow this seems to work also with
binary blobs via libgbm or so. Not sure how this behaves with X11
though but at least up to wayland that seems to work, so in current
display pipelines there doesn't seem to be a need for such an ioctl
anymore.

So I guess my question to understand this is, shouldn't there be
something similar done when sharing buffers with a video decoder?
Instead of userspace requesting a buffer and then handing it to
the hardware video decoder?

Thanks
Heiko

> Signed-off-by: Mark Yao <mark.yao@rock-chips.com>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 11 ++++
>  drivers/gpu/drm/rockchip/rockchip_drm_gem.c | 21 +++++++
>  drivers/gpu/drm/rockchip/rockchip_drm_gem.h | 13 +++++
>  include/uapi/drm/rockchip_drm.h             | 61 +++++++++++++++++++++
>  4 files changed, 106 insertions(+)
>  create mode 100644 include/uapi/drm/rockchip_drm.h
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> index ca12a35483f9..bd35a0b1aa5a 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> @@ -22,6 +22,7 @@
>  #include <drm/drm_of.h>
>  #include <drm/drm_probe_helper.h>
>  #include <drm/drm_vblank.h>
> +#include <drm/rockchip_drm.h>
>  
>  #include "rockchip_drm_drv.h"
>  #include "rockchip_drm_fb.h"
> @@ -206,6 +207,14 @@ static void rockchip_drm_unbind(struct device *dev)
>  	drm_dev_put(drm_dev);
>  }
>  
> +static const struct drm_ioctl_desc rockchip_ioctls[] = {
> +	DRM_IOCTL_DEF_DRV(ROCKCHIP_GEM_CREATE, rockchip_gem_create_ioctl,
> +			  DRM_UNLOCKED | DRM_AUTH),
> +	DRM_IOCTL_DEF_DRV(ROCKCHIP_GEM_MAP_OFFSET,
> +			  rockchip_gem_map_offset_ioctl,
> +			  DRM_UNLOCKED | DRM_AUTH),
> +};
> +
>  static const struct file_operations rockchip_drm_driver_fops = {
>  	.owner = THIS_MODULE,
>  	.open = drm_open,
> @@ -230,6 +239,8 @@ static struct drm_driver rockchip_drm_driver = {
>  	.gem_prime_vmap		= rockchip_gem_prime_vmap,
>  	.gem_prime_vunmap	= rockchip_gem_prime_vunmap,
>  	.gem_prime_mmap		= rockchip_gem_mmap_buf,
> +	.ioctls			= rockchip_ioctls,
> +	.num_ioctls		= ARRAY_SIZE(rockchip_ioctls),
>  	.fops			= &rockchip_drm_driver_fops,
>  	.name	= DRIVER_NAME,
>  	.desc	= DRIVER_DESC,
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
> index 0d1884684dcb..315fa67d5668 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
> @@ -12,6 +12,7 @@
>  #include <drm/drm_gem.h>
>  #include <drm/drm_prime.h>
>  #include <drm/drm_vma_manager.h>
> +#include <drm/rockchip_drm.h>
>  
>  #include "rockchip_drm_drv.h"
>  #include "rockchip_drm_gem.h"
> @@ -428,6 +429,26 @@ int rockchip_gem_dumb_create(struct drm_file *file_priv,
>  	return PTR_ERR_OR_ZERO(rk_obj);
>  }
>  
> +int rockchip_gem_map_offset_ioctl(struct drm_device *drm, void *data,
> +				  struct drm_file *file_priv)
> +{
> +	struct drm_rockchip_gem_map_off *args = data;
> +
> +	return drm_gem_dumb_map_offset(file_priv, drm, args->handle,
> +				       &args->offset);
> +}
> +
> +int rockchip_gem_create_ioctl(struct drm_device *dev, void *data,
> +			      struct drm_file *file_priv)
> +{
> +	struct drm_rockchip_gem_create *args = data;
> +	struct rockchip_gem_object *rk_obj;
> +
> +	rk_obj = rockchip_gem_create_with_handle(file_priv, dev, args->size,
> +						 &args->handle);
> +	return PTR_ERR_OR_ZERO(rk_obj);
> +}
> +
>  /*
>   * Allocate a sg_table for this GEM object.
>   * Note: Both the table's contents, and the sg_table itself must be freed by
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.h b/drivers/gpu/drm/rockchip/rockchip_drm_gem.h
> index 7ffc541bea07..87fe58b05bf6 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.h
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.h
> @@ -50,4 +50,17 @@ void rockchip_gem_free_object(struct drm_gem_object *obj);
>  int rockchip_gem_dumb_create(struct drm_file *file_priv,
>  			     struct drm_device *dev,
>  			     struct drm_mode_create_dumb *args);
> +
> +/*
> + * request gem object creation and buffer allocation as the size
> + * that it is calculated with framebuffer information such as width,
> + * height and bpp.
> + */
> +int rockchip_gem_create_ioctl(struct drm_device *dev, void *data,
> +			      struct drm_file *file_priv);
> +
> +/* get buffer offset to map to user space. */
> +int rockchip_gem_map_offset_ioctl(struct drm_device *dev, void *data,
> +				  struct drm_file *file_priv);
> +
>  #endif /* _ROCKCHIP_DRM_GEM_H */
> diff --git a/include/uapi/drm/rockchip_drm.h b/include/uapi/drm/rockchip_drm.h
> new file mode 100644
> index 000000000000..3185f72f36b9
> --- /dev/null
> +++ b/include/uapi/drm/rockchip_drm.h
> @@ -0,0 +1,61 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +
> +/*
> + * Copyright (c) Fuzhou Rockchip Electronics Co.Ltd
> + * Authors:
> + *       Mark Yao <yzq@rock-chips.com>
> + *
> + * base on exynos_drm.h
> + */
> +
> +#ifndef _ROCKCHIP_DRM_H
> +#define _ROCKCHIP_DRM_H
> +
> +#include <drm/drm.h>
> +
> +#if defined(__cplusplus)
> +extern "C" {
> +#endif
> +
> +/**
> + * User-desired buffer creation information structure.
> + *
> + * @size: user-desired memory allocation size.
> + * @flags: user request for setting memory type or cache attributes.
> + * @handle: returned a handle to created gem object.
> + *     - this handle will be set by gem module of kernel side.
> + */
> +struct drm_rockchip_gem_create {
> +	uint64_t size;
> +	uint32_t flags;
> +	uint32_t handle;
> +};
> +
> +/**
> + * A structure for getting buffer offset.
> + *
> + * @handle: a pointer to gem object created.
> + * @pad: just padding to be 64-bit aligned.
> + * @offset: relatived offset value of the memory region allocated.
> + *     - this value should be set by user.
> + */
> +struct drm_rockchip_gem_map_off {
> +	uint32_t handle;
> +	uint32_t pad;
> +	uint64_t offset;
> +};
> +
> +#define DRM_ROCKCHIP_GEM_CREATE		0x00
> +#define DRM_ROCKCHIP_GEM_MAP_OFFSET	0x01
> +
> +#define DRM_IOCTL_ROCKCHIP_GEM_CREATE	DRM_IOWR(DRM_COMMAND_BASE + \
> +		DRM_ROCKCHIP_GEM_CREATE, struct drm_rockchip_gem_create)
> +
> +#define DRM_IOCTL_ROCKCHIP_GEM_MAP_OFFSET	DRM_IOWR(DRM_COMMAND_BASE + \
> +		DRM_ROCKCHIP_GEM_MAP_OFFSET, struct drm_rockchip_gem_map_off)
> +
> +#if defined(__cplusplus)
> +}
> +#endif
> +
> +#endif /* _ROCKCHIP_DRM_H */
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
