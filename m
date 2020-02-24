Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D56B16B598
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 00:31:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=If9pczB68r8ShhIqYQ+WnnekrA4ciZn7ZkEadyjuFXY=; b=Q8qAuOstwTRc1M1S2QWhRkKOe
	bA9fndmRS7NE2mPrOvNT3H/yPVX16dqYYmpb124l1x4LhL8285GmcjMpt0vPDTpOvoLlVeALsxCD0
	WAdYdmPBbLT9gjXXa8kjYw+BaQ5SLEjo0UqJJ9fcJU1kcwneJ3CILm0d355l7g4g7SIGs0KsNBIT9
	kr2eGC2lJFDKDwfyOiHwU52wwhrxD4j1U587VxkXLAWvVowhqrSp6DDKxEjlFhs5xLrIyzQq7Kdc7
	M3DTowSFLnuiABP240VQXaWMj82HLN4BuKsWwlSS1YQxCDs7Vi6NHpPVK1mkSk3HcmNsZfw2BsN4F
	rpzC10tgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6NC9-0007Zb-Re; Mon, 24 Feb 2020 23:31:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6NC0-0007ZA-SD
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 23:31:18 +0000
Received: from earth.universe (unknown [185.62.205.105])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 81D1420732;
 Mon, 24 Feb 2020 23:31:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582587074;
 bh=yyoIq9r3JJzdd087q+xbmylNb3EvsNWuyyYgC181N0Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lZ7dEbmgnyrf7AGyLL+C5vvM/f+nR6bGrL6GrfGWA2UWETaDVMMcHbqJbRBhO68XQ
 SysGILhpBVtNwzdTVL0VyfUgpabApQqZGTSqFRkUyokwwkakOmfQZ+3hF5+C+YbvDx
 fzuxcceQjaoE7kkUhzAH5UwQywAh4f1Eut8KlDwg=
Received: by earth.universe (Postfix, from userid 1000)
 id 0EF153C0C82; Tue, 25 Feb 2020 00:31:12 +0100 (CET)
Date: Tue, 25 Feb 2020 00:31:11 +0100
From: Sebastian Reichel <sre@kernel.org>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: [PATCH 1/3] drm/omap: Prepare DSS for probing without legacy
 platform data
Message-ID: <20200224233111.gkctx27usfxj2wgz@earth.universe>
References: <20200224191230.30972-1-tony@atomide.com>
 <20200224191230.30972-2-tony@atomide.com>
MIME-Version: 1.0
In-Reply-To: <20200224191230.30972-2-tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_153116_953674_C891F3D4 
X-CRM114-Status: GOOD (  23.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Suman Anna <s-anna@ti.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Dave Gerlach <d-gerlach@ti.com>, Keerthy <j-keerthy@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, "Andrew F . Davis" <afd@ti.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Faiz Abbas <faiz_abbas@ti.com>,
 Jyri Sarha <jsarha@ti.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: multipart/mixed; boundary="===============3895805501857452177=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3895805501857452177==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gmvioj7yfxkg2crl"
Content-Disposition: inline


--gmvioj7yfxkg2crl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Feb 24, 2020 at 11:12:28AM -0800, Tony Lindgren wrote:
> In order to probe display subsystem (DSS) components with ti-sysc
> interconnect target module without legacy platform data and using
> devicetree, we need to update dss probing a bit.
>=20
> In the device tree, we will be defining the data also for the interconnect
> target modules as DSS really is a private interconnect. There is some
> information about that in 4460 TRM in "Figure 10-3. DSS Integration" for
> example where it mentions "32-bit interconnect (SLX)".
>=20
> The changes we need to make are:
>=20
> 1. Parse also device tree subnodes for the compatible property fixup
>=20
> 2. Update the component code to consider device tree subnodes
>=20
> Cc: dri-devel@lists.freedesktop.org
> Cc: Jyri Sarha <jsarha@ti.com>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
>=20
> This is needed for dropping DSS platform data that I'll be posting
> seprately. If this looks OK, can you guys please test and ack?
>=20
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

FWIW, I dropped omapdss-boot-init.c in my patch series updating DSI
code to use common panel infrastructure, so this will conflict.

-- Sebastian

>  drivers/gpu/drm/omapdrm/dss/dss.c             | 25 ++++++++++++++++---
>  .../gpu/drm/omapdrm/dss/omapdss-boot-init.c   | 25 +++++++++++++------
>  2 files changed, 39 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/omapdrm/dss/dss.c b/drivers/gpu/drm/omapdrm/=
dss/dss.c
> --- a/drivers/gpu/drm/omapdrm/dss/dss.c
> +++ b/drivers/gpu/drm/omapdrm/dss/dss.c
> @@ -1339,9 +1339,15 @@ static int dss_component_compare(struct device *de=
v, void *data)
>  	return dev =3D=3D child;
>  }
> =20
> +struct dss_component_match_data {
> +	struct device *dev;
> +	struct component_match **match;
> +};
> +
>  static int dss_add_child_component(struct device *dev, void *data)
>  {
> -	struct component_match **match =3D data;
> +	struct dss_component_match_data *cmatch =3D data;
> +	struct component_match **match =3D cmatch->match;
> =20
>  	/*
>  	 * HACK
> @@ -1352,7 +1358,17 @@ static int dss_add_child_component(struct device *=
dev, void *data)
>  	if (strstr(dev_name(dev), "rfbi"))
>  		return 0;
> =20
> -	component_match_add(dev->parent, match, dss_component_compare, dev);
> +	/*
> +	 * Handle possible interconnect target modules defined within the DSS.
> +	 * The DSS components can be children of an interconnect target module
> +	 * after the device tree has been updated for the module data.
> +	 * See also omapdss_boot_init() for compatible fixup.
> +	 */
> +	if (strstr(dev_name(dev), "target-module"))
> +		return device_for_each_child(dev, cmatch,
> +					     dss_add_child_component);
> +
> +	component_match_add(cmatch->dev, match, dss_component_compare, dev);
> =20
>  	return 0;
>  }
> @@ -1395,6 +1411,7 @@ static int dss_probe_hardware(struct dss_device *ds=
s)
>  static int dss_probe(struct platform_device *pdev)
>  {
>  	const struct soc_device_attribute *soc;
> +	struct dss_component_match_data cmatch;
>  	struct component_match *match =3D NULL;
>  	struct resource *dss_mem;
>  	struct dss_device *dss;
> @@ -1472,7 +1489,9 @@ static int dss_probe(struct platform_device *pdev)
> =20
>  	omapdss_gather_components(&pdev->dev);
> =20
> -	device_for_each_child(&pdev->dev, &match, dss_add_child_component);
> +	cmatch.dev =3D &pdev->dev;
> +	cmatch.match =3D &match;
> +	device_for_each_child(&pdev->dev, &cmatch, dss_add_child_component);
> =20
>  	r =3D component_master_add_with_match(&pdev->dev, &dss_component_ops, m=
atch);
>  	if (r)
> diff --git a/drivers/gpu/drm/omapdrm/dss/omapdss-boot-init.c b/drivers/gp=
u/drm/omapdrm/dss/omapdss-boot-init.c
> --- a/drivers/gpu/drm/omapdrm/dss/omapdss-boot-init.c
> +++ b/drivers/gpu/drm/omapdrm/dss/omapdss-boot-init.c
> @@ -183,9 +183,24 @@ static const struct of_device_id omapdss_of_fixups_w=
hitelist[] __initconst =3D {
>  	{},
>  };
> =20
> +static void __init omapdss_find_children(struct device_node *np)
> +{
> +	struct device_node *child;
> +
> +	for_each_available_child_of_node(np, child) {
> +		if (!of_find_property(child, "compatible", NULL))
> +			continue;
> +
> +		omapdss_walk_device(child, true);
> +
> +		if (of_device_is_compatible(child, "ti,sysc"))
> +			omapdss_find_children(child);
> +	}
> +}
> +
>  static int __init omapdss_boot_init(void)
>  {
> -	struct device_node *dss, *child;
> +	struct device_node *dss;
> =20
>  	INIT_LIST_HEAD(&dss_conv_list);
> =20
> @@ -195,13 +210,7 @@ static int __init omapdss_boot_init(void)
>  		return 0;
> =20
>  	omapdss_walk_device(dss, true);
> -
> -	for_each_available_child_of_node(dss, child) {
> -		if (!of_find_property(child, "compatible", NULL))
> -			continue;
> -
> -		omapdss_walk_device(child, true);
> -	}
> +	omapdss_find_children(dss);
> =20
>  	while (!list_empty(&dss_conv_list)) {
>  		struct dss_conv_node *n;
> --=20
> 2.25.1

--gmvioj7yfxkg2crl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl5UXLkACgkQ2O7X88g7
+pqvHQ/+MVhgl1M4zDe/OMecKEJF4uCdkdG91ptiFdPBBV8SSRY5jY8dopPpRYGg
kzElUh1NCOZa9bIrK1Qi679UeR0gXpgiepSBoHe/I692eU3k6qKYodnmU9ov3Q+o
Nzwa58BI7RAajMKD/YoosJDwpLQGelvYXeFwPIqCLVGSxYryobRjnvtY4njMtbse
TJiDDNwLM6U4UADQKcI4MJtggdAn4u5U5yi0xZssI9U+eycLequvYn3yRLjngY0e
1km/CLhcUt/OKUgjQmpOS9rSirCpEsGTJsAeDmfq2enfP7ZgGJQ7d2ODcofmZpSV
6Njh5A0wu82y8rit714t0s3lG71wUN0NE/M2PW6E59D4+QQ4839JHO+gA4eqrqob
auMxA6MWmvp549+m1K+HmrIEPL/8G5K0Rm9AB8e+eaQEurRlyzCG1GtliUUlrLRn
1f82RrbAS1Uho6CjveVABFLqXBQ3WqMltaCE/rjlVY5mjoVpCltB3P1aSrcprDw3
NWnjGnzTO32ODYiB3psQmEqxoPKlcYDMBC6ErSgULf1H1Zdq27Mjf1+XatYvfSGN
tynLqDIwinYuZ9qHoER68UASq6QsYs7FI71VPC7TY+hilRggQOyblWyTvOJ6MOc4
T00iFoLdEBGFszLiK6ae8Mqc0TUaApQNBt67M7IoQmoPdGHTAsI=
=qcVF
-----END PGP SIGNATURE-----

--gmvioj7yfxkg2crl--


--===============3895805501857452177==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3895805501857452177==--

