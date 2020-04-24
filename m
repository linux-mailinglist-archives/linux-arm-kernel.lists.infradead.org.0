Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E97B1B7D94
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 20:10:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8y6JSJejAh8r4y5IhdsexODy2cEaCB+PjzGFgYEj+Lc=; b=L+4R1oGoOT+Qqo
	nIoQkOlBLt9yZMtvApNmLMk7i5Iu9QTPVhCrGBzvkT5Ewqpoj8Y2miamxEGgbd21+kNpUiMCfnB/K
	xCHN3OzFQwRYwX90CV5xpQpPXGl9QT9vEqDtJSrqyjr57O48JUDSJkLZPWWrcLQUHB2f6xyEiVRE0
	RjSrqRRPlbVr1fVE3CvZRfoHKY2N7JrKzJCayKjNXHByVwG3xzDS+H3ZXg8KiAy264wNeUri6Jdvp
	m2imZ3k/MWvUVkU5mEM70mQMDZ29d6/uxv/lY6EQNg7D3YCYUc57Ucf3Zh5tv7KCn5Pv9c1xkjg9K
	443FwZfuJYfj2ohuXVyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS2mK-0000SC-3T; Fri, 24 Apr 2020 18:10:20 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS2m5-0007eX-Dz
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 18:10:07 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 5651220035;
 Fri, 24 Apr 2020 20:10:03 +0200 (CEST)
Date: Fri, 24 Apr 2020 20:10:02 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [PATCH 56/59] drm/aspeed: Use managed drmm_mode_config_cleanup
Message-ID: <20200424181002.GL7074@ravnborg.org>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
 <20200415074034.175360-57-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415074034.175360-57-daniel.vetter@ffwll.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=ULXz4hXy c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=kj9zAlcOel0A:10 a=QyXUC8HyAAAA:8 a=voM4FWlXAAAA:8 a=JfrnYn6hAAAA:8
 a=7gkXJVJtAAAA:8 a=e5mUnYsNAAAA:8 a=CSi-g0QDi58lmbhQoQkA:9
 a=CjuIK1q_8ugA:10 a=IC2XNlieTeVoXbcui8wp:22 a=1CNFftbPRP8L7MoqJWF3:22
 a=E9Po1WZjFZOl8hwRPBS3:22 a=Vxmtnl_E_bksehYqCbjh:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_111005_843220_67CB61DA 
X-CRM114-Status: GOOD (  19.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Joel Stanley <joel@jms.id.au>, Daniel Vetter <daniel.vetter@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 09:40:31AM +0200, Daniel Vetter wrote:
> Since aspeed doesn't use devm_kzalloc anymore we can use the managed
> mode config cleanup.
> 
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Joel Stanley <joel@jms.id.au>
> Cc: Andrew Jeffery <andrew@aj.id.au>
> Cc: linux-aspeed@lists.ozlabs.org
> Cc: linux-arm-kernel@lists.infradead.org

Hmm, the helper function makes no sense, maybe embed it?

One Q below. Whith Q addressed:
Acked-by: Sam Ravnborg <sam@ravnborg.org>

> ---
>  drivers/gpu/drm/aspeed/aspeed_gfx_drv.c | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c b/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c
> index 6b27242b9ee3..6e464b84a256 100644
> --- a/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c
> +++ b/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c
> @@ -63,15 +63,15 @@ static const struct drm_mode_config_funcs aspeed_gfx_mode_config_funcs = {
>  	.atomic_commit		= drm_atomic_helper_commit,
>  };
>  
> -static void aspeed_gfx_setup_mode_config(struct drm_device *drm)
> +static int aspeed_gfx_setup_mode_config(struct drm_device *drm)
>  {
> -	drm_mode_config_init(drm);
> -
>  	drm->mode_config.min_width = 0;
>  	drm->mode_config.min_height = 0;
>  	drm->mode_config.max_width = 800;
>  	drm->mode_config.max_height = 600;
>  	drm->mode_config.funcs = &aspeed_gfx_mode_config_funcs;
> +
> +	return drmm_mode_config_init(drm);

I do not see anything that documents that it is OK to init min/max
width/heigh not funcs before drmm_mode_config_init() is called.
Maybe drmm_mode_config_init() gain an memset(drm->mode_config),
and we loose all the assingments from before the call to init().

Also most (all?) other users of drmm_mode_config_init()
set them after the call to drmm_mode_config_init().
So re-order here and then embed while you are touching the code again.

	Sam

>  }
>  
>  static irqreturn_t aspeed_gfx_irq_handler(int irq, void *data)
> @@ -144,7 +144,9 @@ static int aspeed_gfx_load(struct drm_device *drm)
>  	writel(0, priv->base + CRT_CTRL1);
>  	writel(0, priv->base + CRT_CTRL2);
>  
> -	aspeed_gfx_setup_mode_config(drm);
> +	ret = aspeed_gfx_setup_mode_config(drm);
> +	if (ret < 0)
> +		return ret;
>  
>  	ret = drm_vblank_init(drm, 1);
>  	if (ret < 0) {
> @@ -181,7 +183,6 @@ static int aspeed_gfx_load(struct drm_device *drm)
>  static void aspeed_gfx_unload(struct drm_device *drm)
>  {
>  	drm_kms_helper_poll_fini(drm);
> -	drm_mode_config_cleanup(drm);
>  }
>  
>  DEFINE_DRM_GEM_CMA_FOPS(fops);
> -- 
> 2.25.1
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
