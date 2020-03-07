Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD51317CCE3
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 09:39:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jyX8OOExqY5wy/YuGcpaX2BeXb0GDz6jot5iaeQXve4=; b=JnihS3IZWiff7F
	eqrdRnbEeYi3skUkeSlscuOoCsaqVV5ZQHXQqbcQjSJ707bLMbx9b0Bv40SuFoQwfQcfyJzUSABtK
	9PfGkj1o01aJvbi+SGtPKVf9sE1UmvJ6hQxyEfzT7ZTvoqA2zKzZizpZ25ewDzONytjRK391mO08Q
	qn5GzXSkumd7TnBLSc5nHF/NEp5Rb1+NFd9isGh9INin2F3PZw7sfLRIIz0PQ8nYVs48hXNNiEas9
	TNEjvcB5cuacTo0+Jz8VWCnSEPWq4RWYoLnP3amzPmWtsLKCXONb23oDjeYwaC0627/UKhGWfWNxz
	03PAJq4DUf/SfDDgJTSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAUzN-0001FL-Lr; Sat, 07 Mar 2020 08:39:17 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAUzC-0001Em-Rr; Sat, 07 Mar 2020 08:39:08 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 930BF80535;
 Sat,  7 Mar 2020 09:39:00 +0100 (CET)
Date: Sat, 7 Mar 2020 09:38:59 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [PATCH 37/51] drm/rockchip: Drop explicit
 drm_mode_config_cleanup call
Message-ID: <20200307083859.GF28810@ravnborg.org>
References: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
 <20200302222631.3861340-38-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302222631.3861340-38-daniel.vetter@ffwll.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=XpTUx2N9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=8nJEP1OIZ-IA:10 a=7gkXJVJtAAAA:8
 a=pGLkceISAAAA:8 a=P1BnusSwAAAA:8 a=QyXUC8HyAAAA:8 a=s8YR1HE3AAAA:8
 a=JfrnYn6hAAAA:8 a=e5mUnYsNAAAA:8 a=fTf22ox30svBRv1lsmkA:9
 a=wPNLvfGTeEIA:10 a=E9Po1WZjFZOl8hwRPBS3:22 a=D0XLA9XvdZm18NrgonBM:22
 a=jGH_LyMDp9YhSvY-UuyI:22 a=1CNFftbPRP8L7MoqJWF3:22
 a=Vxmtnl_E_bksehYqCbjh:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_003907_264269_0656F82D 
X-CRM114-Status: GOOD (  20.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Francesco Lavra <francescolavra.fl@gmail.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Sandy Huang <hjc@rock-chips.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linux-rockchip@lists.infradead.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 02, 2020 at 11:26:17PM +0100, Daniel Vetter wrote:
> It's (almost, there's some iommu stuff without significance) right
> above the drm_dev_put().
> =

> This is made possible by a preceeding patch which added a drmm_
> cleanup action to drm_mode_config_init(), hence all we need to do to
> ensure that drm_mode_config_cleanup() is run on final drm_device
> cleanup is check the new error code for _init().
> =

> Aside: Another driver with a bit much devm_kzalloc, which should
> probably use drmm_kzalloc instead ...
> =

> v2: Explain why this cleanup is possible (Laurent).
> =

> v3: Jump out at the right label (Francesco)
> =

> v4: Try again, kbuild caught that I didn't build test this properly
> ...
> =

> v5: Use drmm_mode_config_init() for more clarity (Sam, Thomas)
> =

> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Francesco Lavra <francescolavra.fl@gmail.com>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Sandy Huang <hjc@rock-chips.com>
> Cc: "Heiko St=FCbner" <heiko@sntech.de>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-rockchip@lists.infradead.org

Acked-by: Sam Ravnborg <sam@ravnborg.org>

> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 14 +++++---------
>  1 file changed, 5 insertions(+), 9 deletions(-)
> =

> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/dr=
m/rockchip/rockchip_drm_drv.c
> index 20ecb1508a22..0f3eb392fe39 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> @@ -135,14 +135,16 @@ static int rockchip_drm_bind(struct device *dev)
>  	if (ret)
>  		goto err_free;
>  =

> -	drm_mode_config_init(drm_dev);
> +	ret =3D drmm_mode_config_init(drm_dev);
> +	if (ret)
> +		goto err_iommu_cleanup;
>  =

>  	rockchip_drm_mode_config_init(drm_dev);
>  =

>  	/* Try to bind all sub drivers. */
>  	ret =3D component_bind_all(dev, drm_dev);
>  	if (ret)
> -		goto err_mode_config_cleanup;
> +		goto err_iommu_cleanup;
>  =

>  	ret =3D drm_vblank_init(drm_dev, drm_dev->mode_config.num_crtc);
>  	if (ret)
> @@ -173,12 +175,9 @@ static int rockchip_drm_bind(struct device *dev)
>  	rockchip_drm_fbdev_fini(drm_dev);
>  err_unbind_all:
>  	component_unbind_all(dev, drm_dev);
> -err_mode_config_cleanup:
> -	drm_mode_config_cleanup(drm_dev);
> +err_iommu_cleanup:
>  	rockchip_iommu_cleanup(drm_dev);
>  err_free:
> -	drm_dev->dev_private =3D NULL;
> -	dev_set_drvdata(dev, NULL);
>  	drm_dev_put(drm_dev);
>  	return ret;
>  }
> @@ -194,11 +193,8 @@ static void rockchip_drm_unbind(struct device *dev)
>  =

>  	drm_atomic_helper_shutdown(drm_dev);
>  	component_unbind_all(dev, drm_dev);
> -	drm_mode_config_cleanup(drm_dev);
>  	rockchip_iommu_cleanup(drm_dev);
>  =

> -	drm_dev->dev_private =3D NULL;
> -	dev_set_drvdata(dev, NULL);
>  	drm_dev_put(drm_dev);
>  }
>  =

> -- =

> 2.24.1
> =

> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
