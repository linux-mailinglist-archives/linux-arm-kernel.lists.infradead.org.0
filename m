Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 759561EF349
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 10:41:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mUJyXgf/399+izqqseHTbYT9+DjTJpyWa40kanmfjkA=; b=e0Ru3YrShfdNNE
	Q6cSil39siZYQQV9kpx8O2ZTmbfFFfXxylIZf7IAp9raQgCEeNeOw3BCC9VU30VVQXzuA2Z7Eq0Xp
	JTWvQF2nMG7RSgpqjHdSZkvNvwiH4SRo4c1mf7aIn03GbhyUqOhwDir540D2jD3OaQWwZotHmwl6H
	PRkoflV1MYLO7KCi1qEIQ0JyjA+XnADZ2ZZksd9soeTdiyfw52rkt9d8cCxkVDHvRcGUVMTNg+Taj
	QHcvuBiWBiUgPym799HMmS0LzFSN2XZKxlKE0bBwSBHd6BfXjIf07znakB2vMwtOwu+i5leLAqdXM
	0ZcMTgg5qL3Bd02vcstA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh7uJ-0002NO-Cp; Fri, 05 Jun 2020 08:40:55 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh7uA-0002MZ-6b
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 08:40:47 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 388CE27C;
 Fri,  5 Jun 2020 10:40:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1591346444;
 bh=qeOMSh9LCZzBcN478pFcjTQ8N6O1QJ8KVWwqw52Pegg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IDlQsRutMZzgiWC/SkKG+jbkH3YM3NoYOb1c+tZw5kf5eKC1IyAq4yc5/KR3xV1sF
 8kWP8VUasn1gT/IYRmMLG/G2/rn0R60lJnznUZ5M+WRM1K9UlqvdpW9P+387aZukzU
 Tnkqa00FU3UJQjIn1ZjG4Z+s4JSAL6m08O6vHKwI=
Date: Fri, 5 Jun 2020 11:40:26 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH v3 01/43] drm/cma-helper: Rename symbols from
 drm_cma_gem_ to drm_gem_cma_
Message-ID: <20200605084026.GB11426@pendragon.ideasonboard.com>
References: <20200605073247.4057-1-tzimmermann@suse.de>
 <20200605073247.4057-2-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200605073247.4057-2-tzimmermann@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_014046_390387_12E0A836 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alexandre.belloni@bootlin.com, linux-aspeed@lists.ozlabs.org,
 narmstrong@baylibre.com, airlied@linux.ie, linus.walleij@linaro.org,
 liviu.dudau@arm.com, stefan@agner.ch, philippe.cornu@st.com,
 paul@crapouillou.net, benjamin.gaignard@linaro.org, mihail.atanassov@arm.com,
 sam@ravnborg.org, alexandre.torgue@st.com, marex@denx.de, festevam@gmail.com,
 abrodkin@synopsys.com, ludovic.desroches@microchip.com,
 xinliang.liu@linaro.org, kong.kongxinwei@hisilicon.com, tomi.valkeinen@ti.com,
 james.qian.wang@arm.com, joel@jms.id.au, linux-imx@nxp.com,
 p.zabel@pengutronix.de, puck.chen@hisilicon.com, s.hauer@pengutronix.de,
 alison.wang@nxp.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 john.stultz@linaro.org, jsarha@ti.com, wens@csie.org, vincent.abriou@st.com,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org,
 mcoquelin.stm32@gmail.com, noralf@tronnes.org, bbrezillon@kernel.org,
 andrew@aj.id.au, dri-devel@lists.freedesktop.org, yannick.fertre@st.com,
 kieran.bingham+renesas@ideasonboard.com, daniel@ffwll.ch, khilman@baylibre.com,
 zourongrong@gmail.com, shawnguo@kernel.org, brian.starkey@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Thomas,

Thank you for the patch.

On Fri, Jun 05, 2020 at 09:32:05AM +0200, Thomas Zimmermann wrote:
> This fixes the naming of several symbols within CMA helpers. No functional
> changes are made.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>

Thank you for the patch.

Speaking of naming, I wish we could rename drm_gem_cma_* to something
else, as those helpers don't use CMA directly (and may not use it at
all), but I think that would be too much intrusive changes for too
little gain :-(

> ---
>  drivers/gpu/drm/aspeed/aspeed_gfx_drv.c |  2 +-
>  drivers/gpu/drm/drm_gem_cma_helper.c    | 10 +++++-----
>  include/drm/drm_gem_cma_helper.h        |  4 ++--
>  3 files changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c b/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c
> index 6b27242b9ee3c..5e7ea0459d018 100644
> --- a/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c
> +++ b/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c
> @@ -188,7 +188,7 @@ DEFINE_DRM_GEM_CMA_FOPS(fops);
>  
>  static struct drm_driver aspeed_gfx_driver = {
>  	.driver_features        = DRIVER_GEM | DRIVER_MODESET | DRIVER_ATOMIC,
> -	.gem_create_object	= drm_cma_gem_create_object_default_funcs,
> +	.gem_create_object	= drm_gem_cma_create_object_default_funcs,
>  	.dumb_create		= drm_gem_cma_dumb_create,
>  	.prime_handle_to_fd	= drm_gem_prime_handle_to_fd,
>  	.prime_fd_to_handle	= drm_gem_prime_fd_to_handle,
> diff --git a/drivers/gpu/drm/drm_gem_cma_helper.c b/drivers/gpu/drm/drm_gem_cma_helper.c
> index b3db3ca7bd7a7..842e2fa332354 100644
> --- a/drivers/gpu/drm/drm_gem_cma_helper.c
> +++ b/drivers/gpu/drm/drm_gem_cma_helper.c
> @@ -572,7 +572,7 @@ void drm_gem_cma_prime_vunmap(struct drm_gem_object *obj, void *vaddr)
>  }
>  EXPORT_SYMBOL_GPL(drm_gem_cma_prime_vunmap);
>  
> -static const struct drm_gem_object_funcs drm_cma_gem_default_funcs = {
> +static const struct drm_gem_object_funcs drm_gem_cma_default_funcs = {
>  	.free = drm_gem_cma_free_object,
>  	.print_info = drm_gem_cma_print_info,
>  	.get_sg_table = drm_gem_cma_prime_get_sg_table,
> @@ -581,7 +581,7 @@ static const struct drm_gem_object_funcs drm_cma_gem_default_funcs = {
>  };
>  
>  /**
> - * drm_cma_gem_create_object_default_funcs - Create a CMA GEM object with a
> + * drm_gem_cma_create_object_default_funcs - Create a CMA GEM object with a
>   *                                           default function table
>   * @dev: DRM device
>   * @size: Size of the object to allocate
> @@ -593,7 +593,7 @@ static const struct drm_gem_object_funcs drm_cma_gem_default_funcs = {
>   * A pointer to a allocated GEM object or an error pointer on failure.
>   */
>  struct drm_gem_object *
> -drm_cma_gem_create_object_default_funcs(struct drm_device *dev, size_t size)
> +drm_gem_cma_create_object_default_funcs(struct drm_device *dev, size_t size)
>  {
>  	struct drm_gem_cma_object *cma_obj;
>  
> @@ -601,11 +601,11 @@ drm_cma_gem_create_object_default_funcs(struct drm_device *dev, size_t size)
>  	if (!cma_obj)
>  		return NULL;
>  
> -	cma_obj->base.funcs = &drm_cma_gem_default_funcs;
> +	cma_obj->base.funcs = &drm_gem_cma_default_funcs;
>  
>  	return &cma_obj->base;
>  }
> -EXPORT_SYMBOL(drm_cma_gem_create_object_default_funcs);
> +EXPORT_SYMBOL(drm_gem_cma_create_object_default_funcs);
>  
>  /**
>   * drm_gem_cma_prime_import_sg_table_vmap - PRIME import another driver's
> diff --git a/include/drm/drm_gem_cma_helper.h b/include/drm/drm_gem_cma_helper.h
> index 947ac95eb24a9..64b7e9d42129a 100644
> --- a/include/drm/drm_gem_cma_helper.h
> +++ b/include/drm/drm_gem_cma_helper.h
> @@ -107,7 +107,7 @@ void *drm_gem_cma_prime_vmap(struct drm_gem_object *obj);
>  void drm_gem_cma_prime_vunmap(struct drm_gem_object *obj, void *vaddr);
>  
>  struct drm_gem_object *
> -drm_cma_gem_create_object_default_funcs(struct drm_device *dev, size_t size);
> +drm_gem_cma_create_object_default_funcs(struct drm_device *dev, size_t size);
>  
>  /**
>   * DRM_GEM_CMA_VMAP_DRIVER_OPS - CMA GEM driver operations ensuring a virtual
> @@ -118,7 +118,7 @@ drm_cma_gem_create_object_default_funcs(struct drm_device *dev, size_t size);
>   * imported buffers.
>   */
>  #define DRM_GEM_CMA_VMAP_DRIVER_OPS \
> -	.gem_create_object	= drm_cma_gem_create_object_default_funcs, \
> +	.gem_create_object	= drm_gem_cma_create_object_default_funcs, \
>  	.dumb_create		= drm_gem_cma_dumb_create, \
>  	.prime_handle_to_fd	= drm_gem_prime_handle_to_fd, \
>  	.prime_fd_to_handle	= drm_gem_prime_fd_to_handle, \

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
