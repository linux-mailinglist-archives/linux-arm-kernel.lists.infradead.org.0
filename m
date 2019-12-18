Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC9C125651
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 23:10:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CSeqeHnxzwQVeueoa9u8yrhj5VuRq6SBXfoJkr9RlBw=; b=RWet84/z9adm4COKBIeH7C5lS
	9QPMqcgoQg9V59MqKb16x2uaHE0SXXu895WR0hr95l7OAoGY9GgrLqHToB8w2eYDGW+IIZFtFVb61
	7GqB2TXR1+ouo6bsdzyKuacwlbweI+LEAaa+wHc0XXf7+i10E+bPhy1Y73GnMyLjG6Nzo9k5kjSZl
	D5GFZtZ9z6d1Cc53/UBcr5ICiboXEDzz8N8aUmbNOD+EXPHeTbvDbOuZoP60fVO4td3NsuLzS2oOu
	Bf9f+DB89EA+q9e/Unkljn2UVwFFHhzBy+7iLgx5N0RPAR3ffxKWx+ausFTv/vvOhj0xBwDbQHHCi
	jMamgIexA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihhW9-0003Hm-Jh; Wed, 18 Dec 2019 22:10:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihhRr-0007Sh-Ho
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 22:05:44 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5566C2146E;
 Wed, 18 Dec 2019 22:05:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576706738;
 bh=ldIzJgBmbf09kDl0vrUqWSLyL7mzcltk5SFmZPKF54E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eOnk/XK8zgnLRfjYtOHmhQ/VwAVQIkke9ZdYJLxpJxkKL79BUX6niRpkwxPbPm0sp
 18Zc9XZckw3Xd3IRAuxzrleh//uw6VnVMWod/iNv75MYZU9CbqjjMLZGsHINh/ZuF7
 Zc+uVEpSp15eckLnUnrn0VV5AtNqFWCS5vGaMQOo=
Date: Wed, 18 Dec 2019 23:05:36 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v13 4/7] drm/sun4i: dsi: Handle bus clock via
 regmap_mmio_attach_clk
Message-ID: <20191218220536.vwww45yctm5ye3vg@gilmour.lan>
References: <20191218191017.2895-1-jagan@amarulasolutions.com>
 <20191218191017.2895-5-jagan@amarulasolutions.com>
MIME-Version: 1.0
In-Reply-To: <20191218191017.2895-5-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_140539_823120_7F462050 
X-CRM114-Status: GOOD (  22.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, linux-sunxi <linux-sunxi@googlegroups.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, michael@amarulasolutions.com,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============3726347455574467271=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3726347455574467271==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ofkqbekjy7qwdomr"
Content-Disposition: inline


--ofkqbekjy7qwdomr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Dec 19, 2019 at 12:40:14AM +0530, Jagan Teki wrote:
> regmap has special API to enable the controller bus clock while
> initializing register space, and current driver is using
> devm_regmap_init_mmio_clk which require to specify bus
> clk_id argument as "bus"
>
> But, the usage of clocks are varies between different Allwinner
> DSI controllers. Clocking in A33 would need bus and mod clocks
> where as A64 would need only bus clock.
>
> Since A64 support only single bus clock, it is optional to
> specify the clock-names on the controller device tree node.
> So using NULL on clk_id would get the attached clock.
>
> To support clk_id as "bus" and "NULL" during clock enablement
> between controllers, this patch add generic code to handle
> the bus clock using regmap_mmio_attach_clk with associated
> regmap APIs.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
> Changes for v13:
> - update the changes since has_mod_clk is dropped in previous patch
>
>  drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 45 +++++++++++++++++++++-----
>  1 file changed, 37 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> index 68b88a3dc4c5..de8955fbeb00 100644
> --- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> +++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> @@ -1081,6 +1081,7 @@ static const struct component_ops sun6i_dsi_ops = {
>  static int sun6i_dsi_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
> +	const char *bus_clk_name = NULL;
>  	struct sun6i_dsi *dsi;
>  	struct resource *res;
>  	void __iomem *base;
> @@ -1094,6 +1095,10 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
>  	dsi->host.ops = &sun6i_dsi_host_ops;
>  	dsi->host.dev = dev;
>
> +	if (of_device_is_compatible(dev->of_node,
> +				    "allwinner,sun6i-a31-mipi-dsi"))
> +		bus_clk_name = "bus";
> +
>  	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>  	base = devm_ioremap_resource(dev, res);
>  	if (IS_ERR(base)) {
> @@ -1107,25 +1112,36 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
>  		return PTR_ERR(dsi->regulator);
>  	}
>
> -	dsi->regs = devm_regmap_init_mmio_clk(dev, "bus", base,
> -					      &sun6i_dsi_regmap_config);
> -	if (IS_ERR(dsi->regs)) {
> -		dev_err(dev, "Couldn't create the DSI encoder regmap\n");
> -		return PTR_ERR(dsi->regs);
> -	}
> -
>  	dsi->reset = devm_reset_control_get_shared(dev, NULL);
>  	if (IS_ERR(dsi->reset)) {
>  		dev_err(dev, "Couldn't get our reset line\n");
>  		return PTR_ERR(dsi->reset);
>  	}
>
> +	dsi->regs = devm_regmap_init_mmio(dev, base, &sun6i_dsi_regmap_config);
> +	if (IS_ERR(dsi->regs)) {
> +		dev_err(dev, "Couldn't init regmap\n");
> +		return PTR_ERR(dsi->regs);
> +	}
> +
> +	dsi->bus_clk = devm_clk_get(dev, bus_clk_name);
> +	if (IS_ERR(dsi->bus_clk)) {
> +		dev_err(dev, "Couldn't get the DSI bus clock\n");
> +		ret = PTR_ERR(dsi->bus_clk);
> +		goto err_regmap;
> +	} else {
> +		ret = regmap_mmio_attach_clk(dsi->regs, dsi->bus_clk);
> +		if (ret)
> +			goto err_bus_clk;
> +	}
> +
>  	if (of_device_is_compatible(dev->of_node,
>  				    "allwinner,sun6i-a31-mipi-dsi")) {
>  		dsi->mod_clk = devm_clk_get(dev, "mod");
>  		if (IS_ERR(dsi->mod_clk)) {
>  			dev_err(dev, "Couldn't get the DSI mod clock\n");
> -			return PTR_ERR(dsi->mod_clk);
> +			ret = PTR_ERR(dsi->mod_clk);
> +			goto err_attach_clk;
>  		}
>  	}
>
> @@ -1164,6 +1180,14 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
>  	pm_runtime_disable(dev);
>  err_unprotect_clk:
>  	clk_rate_exclusive_put(dsi->mod_clk);
> +err_attach_clk:
> +	if (!IS_ERR(dsi->bus_clk))
> +		regmap_mmio_detach_clk(dsi->regs);
> +err_bus_clk:
> +	if (!IS_ERR(dsi->bus_clk))
> +		clk_put(dsi->bus_clk);

You still have an unbalanced clk_get / clk_put here

> +err_regmap:
> +	regmap_exit(dsi->regs);

That's not needed.

>  	return ret;
>  }
>
> @@ -1177,6 +1201,11 @@ static int sun6i_dsi_remove(struct platform_device *pdev)
>  	pm_runtime_disable(dev);
>  	clk_rate_exclusive_put(dsi->mod_clk);
>
> +	if (!IS_ERR(dsi->bus_clk))
> +		regmap_mmio_detach_clk(dsi->regs);
> +
> +	regmap_exit(dsi->regs);

Same thing here.

Maxime

--ofkqbekjy7qwdomr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXfqisAAKCRDj7w1vZxhR
xSXxAQCpUpNnByJdW1d0yIMljpB+8oLISPdwuzQZMmFL+tHsgAD/UXHCqx+a6257
dO+MJ8jT2PYpOkhHNmnh8i7BPwe2tAE=
=454c
-----END PGP SIGNATURE-----

--ofkqbekjy7qwdomr--


--===============3726347455574467271==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3726347455574467271==--

