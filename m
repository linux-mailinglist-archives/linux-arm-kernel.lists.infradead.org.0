Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4E512B45B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 12:52:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=52VVzKkruH1R5Cl1nQ0Rkiym7ARsfMY33NAMNi9Xe+U=; b=V7MEwukqLGwLW9PNA6Xd0fcGa
	BQ1Y99VQ1VgnVyWfCIWV8UmK7pg+0F0WBsdGmR+89CS94T4JwlYszazkPVzq3lXy2TbMv8HSfXxwD
	DMsmNNDQF+TpVBbt3nQtFwzpwGTRcEMDUhGpdr7aVikaFlcT7+1xxxYq6RJWid3oWIHGQ22F9mE+7
	Cz7RHrLaOS/Vcz1+pU8huq65qVoE9kUpbPhGtS4u5kA4DLqVfAOGMz2nQXR2yT//93NDo/KlmWu7U
	53cMnue9AjEgVEZT5R+Vi7dKKft8i/EXLDj9dxyADzhh4R1fgaTzyBg5XvibITAZzvCz95N6r3Y92
	fGwvpL0yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikoAk-00023s-0X; Fri, 27 Dec 2019 11:52:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikoAb-00022s-UF
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Dec 2019 11:52:43 +0000
Received: from localhost (lfbn-lyo-1-633-204.w90-119.abo.wanadoo.fr
 [90.119.206.204])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 569B5208C4;
 Fri, 27 Dec 2019 11:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577447560;
 bh=fpxAuj56PtPkXj1kH4oxVP3nuSYEPKqNh67BNwrzLbU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=K6ladlkbq2xNmkwSxOz0zb1jzq/dpn0LveU9V5KElUbc4eaIQUbAq/Llimn2PcVNS
 djnkcmEGFB7TEMa/wCCIG1zFTkK8gAFpZl3eII6Yf1Wgntu359GOA07TwDBfZulqjE
 LxMW1yK+5DLJM/CWGWpogwzCRR19OWLP+0sz/C8o=
Date: Fri, 27 Dec 2019 12:54:01 +0100
From: Maxime Ripard <mripard@kernel.org>
To: yu kuai <yukuai3@huawei.com>
Subject: Re: [PATCH] drm: replace IS_ERR and PTR_ERR with PTR_ERR_OR_ZERO
Message-ID: <20191227115401.agumkfuiwexl2wmx@hendrix.home>
References: <20191225132042.5491-1-yukuai3@huawei.com>
MIME-Version: 1.0
In-Reply-To: <20191225132042.5491-1-yukuai3@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_035242_018136_494BAD66 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: jernej.skrabec@siol.net, yi.zhang@huawei.com, airlied@linux.ie,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 jonathanh@nvidia.com, zhengbin13@huawei.com, wens@csie.org,
 tomi.valkeinen@ti.com, thierry.reding@gmail.com, daniel@ffwll.ch,
 linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4840622964174120400=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4840622964174120400==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qekez63uoqkeptq7"
Content-Disposition: inline


--qekez63uoqkeptq7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Dec 25, 2019 at 09:20:42PM +0800, yu kuai wrote:
> no functional change, just to make the code simpler
>
> Signed-off-by: yu kuai <yukuai3@huawei.com>
> ---
>  drivers/gpu/drm/omapdrm/dss/hdmi4.c         | 5 +----
>  drivers/gpu/drm/omapdrm/dss/hdmi4_core.c    | 6 ++----
>  drivers/gpu/drm/omapdrm/dss/hdmi5_core.c    | 4 +---
>  drivers/gpu/drm/omapdrm/dss/hdmi_phy.c      | 4 +---
>  drivers/gpu/drm/sun4i/sun4i_dotclock.c      | 4 +---
>  drivers/gpu/drm/sun4i/sun4i_hdmi_i2c.c      | 4 +---
>  drivers/gpu/drm/sun4i/sun4i_hdmi_tmds_clk.c | 4 +---
>  drivers/gpu/drm/sun4i/sun8i_hdmi_phy_clk.c  | 5 +----
>  drivers/gpu/drm/tegra/drm.c                 | 4 +---
>  drivers/gpu/drm/tegra/gem.c                 | 4 +---
>  10 files changed, 11 insertions(+), 33 deletions(-)
>
> diff --git a/drivers/gpu/drm/omapdrm/dss/hdmi4.c b/drivers/gpu/drm/omapdrm/dss/hdmi4.c
> index 0f557fad4513..eb71baedf19e 100644
> --- a/drivers/gpu/drm/omapdrm/dss/hdmi4.c
> +++ b/drivers/gpu/drm/omapdrm/dss/hdmi4.c
> @@ -587,10 +587,7 @@ static int hdmi_audio_register(struct omap_hdmi *hdmi)
>  		&hdmi->pdev->dev, "omap-hdmi-audio", PLATFORM_DEVID_AUTO,
>  		&pdata, sizeof(pdata));
>
> -	if (IS_ERR(hdmi->audio_pdev))
> -		return PTR_ERR(hdmi->audio_pdev);
> -
> -	return 0;
> +	return PTR_ERR_OR_ZERO(hdmi->audio_pdev);
>  }
>
>  /* -----------------------------------------------------------------------------
> diff --git a/drivers/gpu/drm/omapdrm/dss/hdmi4_core.c b/drivers/gpu/drm/omapdrm/dss/hdmi4_core.c
> index ea5d5c228534..fdd73fb73653 100644
> --- a/drivers/gpu/drm/omapdrm/dss/hdmi4_core.c
> +++ b/drivers/gpu/drm/omapdrm/dss/hdmi4_core.c
> @@ -924,8 +924,6 @@ int hdmi4_core_init(struct platform_device *pdev, struct hdmi_core_data *core)
>
>  	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "core");
>  	core->base = devm_ioremap_resource(&pdev->dev, res);
> -	if (IS_ERR(core->base))
> -		return PTR_ERR(core->base);
> -
> -	return 0;
> +
> +	return PTR_ERR_OR_ZERO(core->base);
>  }
> diff --git a/drivers/gpu/drm/omapdrm/dss/hdmi5_core.c b/drivers/gpu/drm/omapdrm/dss/hdmi5_core.c
> index ff4d35c8771f..30454bc9de78 100644
> --- a/drivers/gpu/drm/omapdrm/dss/hdmi5_core.c
> +++ b/drivers/gpu/drm/omapdrm/dss/hdmi5_core.c
> @@ -908,8 +908,6 @@ int hdmi5_core_init(struct platform_device *pdev, struct hdmi_core_data *core)
>
>  	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "core");
>  	core->base = devm_ioremap_resource(&pdev->dev, res);
> -	if (IS_ERR(core->base))
> -		return PTR_ERR(core->base);
>
> -	return 0;
> +	return PTR_ERR_OR_ZERO(core->base);
>  }
> diff --git a/drivers/gpu/drm/omapdrm/dss/hdmi_phy.c b/drivers/gpu/drm/omapdrm/dss/hdmi_phy.c
> index 00bbf24488c1..bbc02d5aa8fb 100644
> --- a/drivers/gpu/drm/omapdrm/dss/hdmi_phy.c
> +++ b/drivers/gpu/drm/omapdrm/dss/hdmi_phy.c
> @@ -191,8 +191,6 @@ int hdmi_phy_init(struct platform_device *pdev, struct hdmi_phy_data *phy,
>
>  	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "phy");
>  	phy->base = devm_ioremap_resource(&pdev->dev, res);
> -	if (IS_ERR(phy->base))
> -		return PTR_ERR(phy->base);
>
> -	return 0;
> +	return PTR_ERR_OR_ZERO(phy->base);
>  }
> diff --git a/drivers/gpu/drm/sun4i/sun4i_dotclock.c b/drivers/gpu/drm/sun4i/sun4i_dotclock.c
> index 417ade3d2565..84c04d8192b3 100644
> --- a/drivers/gpu/drm/sun4i/sun4i_dotclock.c
> +++ b/drivers/gpu/drm/sun4i/sun4i_dotclock.c
> @@ -191,10 +191,8 @@ int sun4i_dclk_create(struct device *dev, struct sun4i_tcon *tcon)
>  	dclk->hw.init = &init;
>
>  	tcon->dclk = clk_register(dev, &dclk->hw);
> -	if (IS_ERR(tcon->dclk))
> -		return PTR_ERR(tcon->dclk);
>
> -	return 0;
> +	return PTR_ERR_OR_ZERO(tcon->dclk);

This has been submitted a couple of times already. It's harder to
maintain and not easier to read.

Please remove sun4i from your patch

Maxime

--qekez63uoqkeptq7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXgXw2QAKCRDj7w1vZxhR
xcC0AP41YnCplFDuwO92c5iWckNOenpr5t0CgtMx4SUZvRwRfAEAofLF2tx6/nNv
2u5zEYJchT5oj2oyNfSR2wa6CCYaMQM=
=9hHy
-----END PGP SIGNATURE-----

--qekez63uoqkeptq7--


--===============4840622964174120400==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4840622964174120400==--

