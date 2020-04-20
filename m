Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B296C1B0BC8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 14:58:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K9OPz5pCmuHvqN/K99LLy1sQ4axP9DS9Y1xbCzTLymw=; b=A1M4pNMTHXxE2w5zpCgbeVkWt
	FRL+Fd46r/pc/fyOmniU4jV5y9gPaU/nGb0JriDTh/BNQcrPKaL8B9A6WdUABLv5bNHr8XWcLb8Wd
	tCKnDIxKm7WfUwqlXRLetYIsVlC4z9MgoFtDEe43vDb88HGp1YYnEvmhnU24LL/8fBN3vjTrJF9ja
	FrvTFphHCKb5pmXDkArx31kobmcyY6bxXM6oN4wo2nlQdeoKbc/J2GbmR/hVe5HSzbWfgKzBxMWYC
	jQKVNf4N5H3Lhg/Ttic4FaOrU2/lC5zlpxQSvMWDasOIknK+/HG1eWW6PE/hRcYRbkkydV8MABAud
	bVO6OiuJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQW0e-000868-Ep; Mon, 20 Apr 2020 12:58:48 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQW0T-00085P-M9
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 12:58:39 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 6E19F2F2;
 Mon, 20 Apr 2020 08:58:36 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 20 Apr 2020 08:58:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=aze/A7yGJ51s7DTamiziq9DJpYM
 G/+I750x+08txbDI=; b=Ii+EdH6Jeaqmldk0GUUKTjZenqnmB95KvKpRKgkRCWJ
 2nVqfaCK8B+UCxaIqIqm8DiSb7CTKcO+fpD1ithdxUTyMGgdGlJrrLntiXP4UZvi
 xkDS3BDUnHc5KmVf3E0WSnAkf5TQfwSIz5QU6TYd+ZnhuPA+DpgcqKhB4cIM5cdB
 4sQRX9wX15UAEhsbKZa8wlNpLe+WBggwt656S5ZDMIVoGNC0KBJS+CorICP6CE5R
 KiTWJOUDpdewvcSFLA1DrbjgEn7OL7/ier1+h1GQlSHd8fShb38HXH8b+csnX8Hj
 FZIyNECoArj3DqnJ5gE5PX48dvzzGzp4D/9Nk6ampPg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=aze/A7
 yGJ51s7DTamiziq9DJpYMG/+I750x+08txbDI=; b=pnS9onltAKhl1kQ5+RjDBB
 JMEC+q1EQCm0nVI6wnS29xZDotOzZbIyBamKt7JYdt/shRTILGpPmctbjDZYsPJ0
 K+UGBqEWIkfAHj44vTWFoH6G378+Yb2IBAoesVdvtpBajJbIeCcdovHBypsY/cC+
 u8JPwp2QGbsrC2/ysgz78KOOuLm5thoBkdemLgHpPfztWEPK+yWMsosV/HMmq5Vr
 PQ1KM2yZjy4FJU47ifjYvgKAhSbpqENLFEjn2IZVyDDcyRMhZjsAzj88htsbl7dt
 Ag4zS0BYqajn7ZLFR2WRLu7Y+ibYagbmGDSrL0Z5UBlX+nd7ymPSQDkA/New+aDg
 ==
X-ME-Sender: <xms:e5ydXuwZoCYvaAfcRfFWKabubVv5keJiwQRSdA5V1WP0vZrUCvRk8w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrgeefgdehkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:e5ydXmZApy9qsFgrxVwQ_k0Yrxz2D6d__rmzC6cgQf_NOYLFg9fXSg>
 <xmx:e5ydXsJbZIjypyZIT4i7w_MnLk0XFOqYI9OjthRgwPUA_bAHHj4MpQ>
 <xmx:e5ydXt34X6N1WaPM-7hn6OFc11Hf23tZH_qpYyaa7JPua_zPpj1i9Q>
 <xmx:fJydXvbmg5NTB1PxFCkUDDm-gCoZeW0NxJR7Nr3NQfsNVjRAyvOoPA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 454733280059;
 Mon, 20 Apr 2020 08:58:35 -0400 (EDT)
Date: Mon, 20 Apr 2020 14:58:33 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Priit Laes <plaes@plaes.org>
Subject: Re: [PATCH 3/4] net: stmmac: dwmac-sunxi: Implement syscon-based
 clock handling
Message-ID: <20200420125833.ybciii45akcpv2fl@gilmour.lan>
References: <20200417221730.555954-1-plaes@plaes.org>
 <20200417221730.555954-4-plaes@plaes.org>
MIME-Version: 1.0
In-Reply-To: <20200417221730.555954-4-plaes@plaes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_055837_770864_EFC77593 
X-CRM114-Status: GOOD (  24.82  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2603949676695697335=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2603949676695697335==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tgkfcjzjoptw7qlt"
Content-Disposition: inline


--tgkfcjzjoptw7qlt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Apr 18, 2020 at 01:17:29AM +0300, Priit Laes wrote:
> Convert the sun7i-gmac driver to use a regmap-based driver,
> instead of relying on the custom clock implementation.
>=20
> This allows to get rid of the last custom clock in the sun7i
> device tree making the sun7i fully CCU-compatible.
>=20
> Compatibility with existing devicetrees is retained.
>=20
> Signed-off-by: Priit Laes <plaes@plaes.org>
> ---
>  .../net/ethernet/stmicro/stmmac/dwmac-sunxi.c | 124 ++++++++++++++++--
>  1 file changed, 116 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-sunxi.c b/drivers/=
net/ethernet/stmicro/stmmac/dwmac-sunxi.c
> index 0e1ca2cba3c7..3476920bc762 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-sunxi.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-sunxi.c
> @@ -12,8 +12,11 @@
>  #include <linux/module.h>
>  #include <linux/phy.h>
>  #include <linux/platform_device.h>
> +#include <linux/of_device.h>
>  #include <linux/of_net.h>
>  #include <linux/regulator/consumer.h>
> +#include <linux/regmap.h>
> +#include <linux/mfd/syscon.h>
> =20
>  #include "stmmac_platform.h"
> =20
> @@ -22,10 +25,20 @@ struct sunxi_priv_data {
>  	int clk_enabled;
>  	struct clk *tx_clk;
>  	struct regulator *regulator;
> +	struct regmap_field *regmap_field;
> +};
> +
> +/* EMAC clock register @ 0x164 in the CCU address range */
> +static const struct reg_field ccu_reg_field =3D {
> +	.reg =3D 0x164,
> +	.lsb =3D 0,
> +	.msb =3D 31,
>  };
> =20
>  #define SUN7I_GMAC_GMII_RGMII_RATE	125000000
>  #define SUN7I_GMAC_MII_RATE		25000000
> +#define SUN7I_A20_RGMII_CLK		((3 << 1) | (1 << 12))
> +#define SUN7I_A20_MII_CLK		(1 << 12)
> =20
>  static int sun7i_gmac_init(struct platform_device *pdev, void *priv)
>  {
> @@ -38,7 +51,20 @@ static int sun7i_gmac_init(struct platform_device *pde=
v, void *priv)
>  			return ret;
>  	}
> =20
> -	/* Set GMAC interface port mode
> +	if (gmac->regmap_field) {
> +		if (phy_interface_mode_is_rgmii(gmac->interface)) {
> +			regmap_field_write(gmac->regmap_field,
> +					   SUN7I_A20_RGMII_CLK);
> +			return clk_prepare_enable(gmac->tx_clk);
> +		}
> +		regmap_field_write(gmac->regmap_field, SUN7I_A20_MII_CLK);
> +		return clk_enable(gmac->tx_clk);
> +	}
> +
> +	/* Legacy devicetree support */
> +

Saying why exactly this is legacy would be great. Otherwise, we might end up
with a legacy2 devicetree support somewhere down the line and no idea what =
each
actually mean.

> +	/*
> +	 * Set GMAC interface port mode

Comments in net start on the first line

>  	 *
>  	 * The GMAC TX clock lines are configured by setting the clock
>  	 * rate, which then uses the auto-reparenting feature of the
> @@ -62,9 +88,15 @@ static void sun7i_gmac_exit(struct platform_device *pd=
ev, void *priv)
>  {
>  	struct sunxi_priv_data *gmac =3D priv;
> =20
> -	if (gmac->clk_enabled) {
> +	if (gmac->regmap_field) {
> +		regmap_field_write(gmac->regmap_field, 0);
>  		clk_disable(gmac->tx_clk);
> -		gmac->clk_enabled =3D 0;
> +	} else {
> +		/* Legacy devicetree support */
> +		if (gmac->clk_enabled) {
> +			clk_disable(gmac->tx_clk);
> +			gmac->clk_enabled =3D 0;
> +		}
>  	}
>  	clk_unprepare(gmac->tx_clk);
> =20
> @@ -72,10 +104,53 @@ static void sun7i_gmac_exit(struct platform_device *=
pdev, void *priv)
>  		regulator_disable(gmac->regulator);
>  }
> =20
> +static struct regmap *sun7i_gmac_get_syscon_from_dev(struct device_node =
*node)
> +{
> +	struct device_node *syscon_node;
> +	struct platform_device *syscon_pdev;
> +	struct regmap *regmap =3D NULL;
> +
> +	syscon_node =3D of_parse_phandle(node, "syscon", 0);
> +	if (!syscon_node)
> +		return ERR_PTR(-ENODEV);
> +
> +	syscon_pdev =3D of_find_device_by_node(syscon_node);
> +	if (!syscon_pdev) {
> +		/* platform device might not be probed yet */
> +		regmap =3D ERR_PTR(-EPROBE_DEFER);
> +		goto out_put_node;
> +	}
> +
> +	/* If no regmap is found then the other device driver is at fault */
> +	regmap =3D dev_get_regmap(&syscon_pdev->dev, NULL);
> +	if (!regmap)
> +		regmap =3D ERR_PTR(-EINVAL);
> +
> +	platform_device_put(syscon_pdev);
> +out_put_node:
> +	of_node_put(syscon_node);
> +	return regmap;
> +}
> +
>  static void sun7i_fix_speed(void *priv, unsigned int speed)
>  {
>  	struct sunxi_priv_data *gmac =3D priv;
> =20
> +	if (gmac->regmap_field) {
> +		clk_disable(gmac->tx_clk);
> +		clk_unprepare(gmac->tx_clk);
> +		if (speed =3D=3D 1000)
> +			regmap_field_write(gmac->regmap_field,
> +					   SUN7I_A20_RGMII_CLK);
> +		else
> +			regmap_field_write(gmac->regmap_field,
> +					   SUN7I_A20_MII_CLK);
> +		clk_prepare_enable(gmac->tx_clk);
> +		return;
> +	}
> +
> +	/* Legacy devicetree support... */
> +
>  	/* only GMII mode requires us to reconfigure the clock lines */
>  	if (gmac->interface !=3D PHY_INTERFACE_MODE_GMII)
>  		return;
> @@ -102,6 +177,8 @@ static int sun7i_gmac_probe(struct platform_device *p=
dev)
>  	struct stmmac_resources stmmac_res;
>  	struct sunxi_priv_data *gmac;
>  	struct device *dev =3D &pdev->dev;
> +	struct device_node *syscon_node;
> +	struct regmap *regmap =3D NULL;
>  	int ret;
> =20
>  	ret =3D stmmac_get_platform_resources(pdev, &stmmac_res);
> @@ -124,11 +201,42 @@ static int sun7i_gmac_probe(struct platform_device =
*pdev)
>  		goto err_remove_config_dt;
>  	}
> =20
> -	gmac->tx_clk =3D devm_clk_get(dev, "allwinner_gmac_tx");
> -	if (IS_ERR(gmac->tx_clk)) {
> -		dev_err(dev, "could not get tx clock\n");
> -		ret =3D PTR_ERR(gmac->tx_clk);
> -		goto err_remove_config_dt;
> +	/* Attempt to fetch syscon node... */
> +	syscon_node =3D of_parse_phandle(dev->of_node, "syscon", 0);
> +	if (syscon_node) {
> +		gmac->tx_clk =3D devm_clk_get(dev, "stmmaceth");
> +		if (IS_ERR(gmac->tx_clk)) {
> +			dev_err(dev, "Could not get TX clock\n");
> +			ret =3D PTR_ERR(gmac->tx_clk);
> +			goto err_remove_config_dt;
> +		}
> +
> +		regmap =3D sun7i_gmac_get_syscon_from_dev(pdev->dev.of_node);
> +		if (IS_ERR(regmap))
> +			regmap =3D syscon_regmap_lookup_by_phandle(pdev->dev.of_node,
> +								 "syscon");
> +		if (IS_ERR(regmap)) {
> +			ret =3D PTR_ERR(regmap);
> +			dev_err(&pdev->dev, "Unable to map syscon: %d\n", ret);
> +			goto err_remove_config_dt;
> +		}
> +
> +		gmac->regmap_field =3D devm_regmap_field_alloc(dev, regmap, ccu_reg_fi=
eld);
> +
> +		if (IS_ERR(gmac->regmap_field)) {
> +			ret =3D PTR_ERR(gmac->regmap_field);
> +			dev_err(dev, "Unable to map syscon register: %d\n", ret);
> +			goto err_remove_config_dt;
> +		}
> +	/* ...or fall back to legacy clock setup */
> +	} else {
> +		dev_info(dev, "Falling back to legacy devicetree support!\n");
> +		gmac->tx_clk =3D devm_clk_get(dev, "allwinner_gmac_tx");
> +		if (IS_ERR(gmac->tx_clk)) {
> +			dev_err(dev, "could not get tx clock\n");
> +			ret =3D PTR_ERR(gmac->tx_clk);
> +			goto err_remove_config_dt;
> +		}
>  	}
> =20
>  	/* Optional regulator for PHY */
> --=20
> 2.25.2
>=20

--tgkfcjzjoptw7qlt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXp2ceQAKCRDj7w1vZxhR
xZLpAP95jFoC0Qc6mfzr6mzRMpJI06t+RyvL0dtKELzTASBpiwEAwpbsqJiv8Xgv
JRFUO0am9FdhVeVkXmRMr03PhIeziQw=
=JWDn
-----END PGP SIGNATURE-----

--tgkfcjzjoptw7qlt--


--===============2603949676695697335==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2603949676695697335==--

