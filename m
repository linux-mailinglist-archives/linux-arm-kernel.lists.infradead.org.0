Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B87D1F8790
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 09:47:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n3p9zTmQB7r33CHgHDm9MjlfONz1CipIMuzKJDGP/xI=; b=e+3QKpOeUcYn4T
	lBZeSbI9ZQ8bLRLXy5up8Jgvv1sdRsVr9bew3OIM2IwO36MCw8bVEeJkv7VNdIJ8X3myeNybTnOND
	uh4KnWEKY9x8Jf1tNLhLy4EvO5F0LO9/5IvyxAyr15xRO1kPooziowxAl9JQC7aYN9+lbufQi1AdB
	ngdAoHScU1NDHi5Bt19IoCy+eUxBJWO4VTlv5YKsJjDJKqlv9VpPJ9M9Po4d2yHayj1EGPoWOaTJf
	lONRkLBmQzV18orNOb9jz7IZZxmCI2GNfSqcGcDfNAe4h6luQkeLBdwW/orHiohZ9LFeBn/lpa5yy
	5/dcuhZaS4nQg2Kwz5RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkNM8-0005PU-VH; Sun, 14 Jun 2020 07:47:04 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkNM1-0002wT-0r
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jun 2020 07:46:59 +0000
Received: from ravnborg.org (unknown [188.228.123.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 965248051D;
 Sun, 14 Jun 2020 09:44:42 +0200 (CEST)
Date: Sun, 14 Jun 2020 09:44:41 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 1/2] drm: mcde: Fix display initialization problem
Message-ID: <20200614074441.GA220677@ravnborg.org>
References: <20200613223027.4189309-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200613223027.4189309-1-linus.walleij@linaro.org>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=G88y7es5 c=1 sm=1 tr=0
 a=S6zTFyMACwkrwXSdXUNehg==:117 a=S6zTFyMACwkrwXSdXUNehg==:17
 a=kj9zAlcOel0A:10 a=KKAkSRfTAAAA:8 a=7gkXJVJtAAAA:8 a=e5mUnYsNAAAA:8
 a=Zvhud1mh3OEFsl6IILoA:9 a=CjuIK1q_8ugA:10 a=cvBusfyB2V15izCimMoJ:22
 a=E9Po1WZjFZOl8hwRPBS3:22 a=Vxmtnl_E_bksehYqCbjh:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_004657_240891_0F882606 
X-CRM114-Status: GOOD (  20.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org, Sean Paul <sean@poorly.run>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus.

On Sun, Jun 14, 2020 at 12:30:26AM +0200, Linus Walleij wrote:
> The following bug appeared in the MCDE driver/display
> initialization during the recent merge window.
> 
> First the place we call drm_fbdev_generic_setup() in the
> wrong place: this needs to be called AFTER calling
> drm_dev_register() else we get this splat:
> 
>  ------------[ cut here ]------------
> WARNING: CPU: 0 PID: 1 at ../drivers/gpu/drm/drm_fb_helper.c:2198 drm_fbdev_generic_setup+0x164/0x1a8
> mcde a0350000.mcde: Device has not been registered.
> Modules linked in:
> Hardware name: ST-Ericsson Ux5x0 platform (Device Tree Support)
> [<c010e704>] (unwind_backtrace) from [<c010a86c>] (show_stack+0x10/0x14)
> [<c010a86c>] (show_stack) from [<c0414f38>] (dump_stack+0x9c/0xb0)
> [<c0414f38>] (dump_stack) from [<c0121c8c>] (__warn+0xb8/0xd0)
> [<c0121c8c>] (__warn) from [<c0121d18>] (warn_slowpath_fmt+0x74/0xb8)
> [<c0121d18>] (warn_slowpath_fmt) from [<c04b154c>] (drm_fbdev_generic_setup+0x164/0x1a8)
> [<c04b154c>] (drm_fbdev_generic_setup) from [<c04ed278>] (mcde_drm_bind+0xc4/0x160)
> [<c04ed278>] (mcde_drm_bind) from [<c04f06b8>] (try_to_bring_up_master+0x15c/0x1a4)
> (...)
> 
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

Yup, this is the right way to do it.

Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

One small thing to consider, see below. But for another patch.

> ---
>  drivers/gpu/drm/mcde/mcde_drv.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/mcde/mcde_drv.c b/drivers/gpu/drm/mcde/mcde_drv.c
> index 84f3e2dbd77b..80082d6dce3a 100644
> --- a/drivers/gpu/drm/mcde/mcde_drv.c
> +++ b/drivers/gpu/drm/mcde/mcde_drv.c
> @@ -209,7 +209,6 @@ static int mcde_modeset_init(struct drm_device *drm)
>  
>  	drm_mode_config_reset(drm);
>  	drm_kms_helper_poll_init(drm);
> -	drm_fbdev_generic_setup(drm, 32);
>  
>  	return 0;
>  }
> @@ -264,6 +263,8 @@ static int mcde_drm_bind(struct device *dev)
>  	if (ret < 0)
>  		goto unbind;
>  
> +	drm_fbdev_generic_setup(drm, 32);
Consider using mode_config.preferred_depth, then you can pass 0 here.


> +
>  	return 0;
>  
>  unbind:
> -- 
> 2.26.2
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
