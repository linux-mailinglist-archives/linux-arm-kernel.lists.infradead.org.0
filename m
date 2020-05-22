Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7ED1DF066
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 22:13:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nxg0vyW4/hzlNgbmS2Sor1gUhlmp/b5dlqPA6IX7CYs=; b=SibokMgmCZe1Ns
	nmGpZ3vrMI7Btb1ZO5wFYHhzK8BCNASC9I1XxnliLu3IM85Aw+Sywmpk2BNyI9CTCbRkfiwuI6Q6f
	BryBsctnCUyA+Z4HTtU11fuktxitaa8WNPlS7ItwDatt0G3Tngvt6MRtRpxuXVJIekbnc2splrm1m
	yG+vZrf/Rv9H8H1WYBlHWo/y8gvKezsQX79lejiZA7fjx/kfHpjG0tSqX6ZMXn9Z00g/qOdqsy8Mv
	Kcvj63ZKkao/9taN74SNlotRGsp91wYzql4TLZxSL/P0fhDc410gDO1kCJ4C8iGniecOt9piozXBV
	NqtyaYvkzAnQx8xsGRKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcE2P-0005Cp-G6; Fri, 22 May 2020 20:13:01 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcE2I-0005CH-8H
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 20:12:55 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 19C22528;
 Fri, 22 May 2020 22:12:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1590178372;
 bh=I+wZgpNyVcUimjh6VCYSsmatF8H/txRwMkFNilu6/xA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Pl4y4wPCvM0wzr32mkeGQecK3ivGpVncrOxu/JWvZmuDCIASvWImob/z3zdIzztyx
 JC1zgtxonkYg+SsFbRTCdhSQtAsGnQ7dI1ArO30S8hubFKQ5Eh7817Sk5o/0fs09Ww
 ubZXGe+/77HZFnUilfU4RYpFw6ASBDHe3hVm91ZQ=
Date: Fri, 22 May 2020 23:12:40 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH 15/21] drm/rcar-du: Use GEM CMA object functions
Message-ID: <20200522201240.GE5824@pendragon.ideasonboard.com>
References: <20200522135246.10134-1-tzimmermann@suse.de>
 <20200522135246.10134-16-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200522135246.10134-16-tzimmermann@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_131254_446873_F6AFE0AA 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Fri, May 22, 2020 at 03:52:40PM +0200, Thomas Zimmermann wrote:
> The rcar-du driver uses the default implementation for CMA functions;
> except for the .dumb_create callback. The __DRM_GEM_CMA_DRIVER_OPS macro
> now sets these defaults and .dumb_create in struct drm_driver. All
> remaining operations are provided by CMA GEM object functions.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---
>  drivers/gpu/drm/rcar-du/rcar_du_drv.c | 11 +----------
>  1 file changed, 1 insertion(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rcar-du/rcar_du_drv.c b/drivers/gpu/drm/rcar-du/rcar_du_drv.c
> index 3e67cf70f0402..3728038cec1d1 100644
> --- a/drivers/gpu/drm/rcar-du/rcar_du_drv.c
> +++ b/drivers/gpu/drm/rcar-du/rcar_du_drv.c
> @@ -476,16 +476,7 @@ DEFINE_DRM_GEM_CMA_FOPS(rcar_du_fops);
>  
>  static struct drm_driver rcar_du_driver = {
>  	.driver_features	= DRIVER_GEM | DRIVER_MODESET | DRIVER_ATOMIC,
> -	.gem_free_object_unlocked = drm_gem_cma_free_object,
> -	.gem_vm_ops		= &drm_gem_cma_vm_ops,
> -	.prime_handle_to_fd	= drm_gem_prime_handle_to_fd,
> -	.prime_fd_to_handle	= drm_gem_prime_fd_to_handle,
> -	.gem_prime_get_sg_table	= drm_gem_cma_prime_get_sg_table,
> -	.gem_prime_import_sg_table = drm_gem_cma_prime_import_sg_table,
> -	.gem_prime_vmap		= drm_gem_cma_prime_vmap,
> -	.gem_prime_vunmap	= drm_gem_cma_prime_vunmap,
> -	.gem_prime_mmap		= drm_gem_cma_prime_mmap,
> -	.dumb_create		= rcar_du_dumb_create,
> +	__DRM_GEM_CMA_DRIVER_OPS(rcar_du_dumb_create),

Your __DRM_GEM_CMA_DRIVER_OPS is defined as

#define __DRM_GEM_CMA_DRIVER_OPS(__dumb_create) \
        .gem_create_object      = drm_cma_gem_create_object_default_funcs, \
        .dumb_create            = (__dumb_create), \
        .prime_handle_to_fd     = drm_gem_prime_handle_to_fd, \
        .prime_fd_to_handle     = drm_gem_prime_fd_to_handle, \
        .gem_prime_import_sg_table = drm_gem_cma_prime_import_sg_table_vmap, \
        .gem_prime_mmap         = drm_gem_prime_mmap

The patch thus introduces several changes:

- drm_gem_cma_prime_import_sg_table_vmap() is used instead of
  drm_gem_cma_prime_import_sg_table() combined with .gem_prime_vmap()
  and .gem_prime_vunmap(). I believe that's fine, but splitting that
  change in a separate commit, or at the very least explaining it in
  details in the commit message, would make review easier.

- .gem_create_object() is now set. That seems to be OK, but I'm not sure
  to grasp all the implications. This should also be explained in the
  commit message, and ideally split to a separate patch.

- drm_gem_cma_prime_mmap() is replaced with drm_gem_prime_mmap(). Same
  comments :-)

This patch hides way too many changes in what is documented as just
innocent refactoring. It seems other drivers are affected too.

>  	.fops			= &rcar_du_fops,
>  	.name			= "rcar-du",
>  	.desc			= "Renesas R-Car Display Unit",

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
