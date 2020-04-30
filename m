Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCE21BFF67
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:58:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cBIuyI1qO6kJ3iksefuBvziRvo8Gbkfne9Ptot+XIbA=; b=SP6bA2qOPJq34tyBWV1KnutRo
	tP7vBj3Cc7z8pRteFGzPpi8mIr06Q2IUloZnbfIvQzdQj0TrxUSR5e3iqrclOR7Kf/TnnEDykOV5l
	IqzmZ/tzZ/drURMFVv0QGfD8+lTaBOEAoJ4uU/ZWL3LN15xbTOsNbGISbbfB1/xksm6k3pmGSVe2w
	EYfR3ZuEl8aGzBrwiqMXFoUEQgXpbtk2FnhS+lC0vFTT1AETuA2LVk8rntIE/JQ80BzMFxKTBFIHD
	JaVAQC+dTfqQBTnMHmT5NaAgxkrbXzobKcP1zxJspz+3Yeic4RGNgBXcTEHbkniEIq8Kc1RwDyptT
	y22MsVAsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUAe4-0007pK-Oo; Thu, 30 Apr 2020 14:58:36 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAdr-0007o5-RU
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:58:25 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 8D9458A2;
 Thu, 30 Apr 2020 10:58:22 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 30 Apr 2020 10:58:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=Ak+6sr0EdSMe3A9inDGvwJSeZxZ
 IogcefCgeBSV8VR0=; b=XQAV9/kRBmRyGAocCw4OPv0FgLqOY+7u4SYFjXEElPn
 puY5XUBWU3DhYpF62WzXhacU1tvWgLIk0L65DysYnDmfSpv8jhSMiAdvj/Yvhbrw
 15qC1LoptX4yyI1aVcjvNckN8ir9yfuSY5+kFvTLKzKLwtusC3wrKPi5LgKG25dM
 Ct+hQQAX4jeWxAmaJzLTecpmp9mIswSOaXO9v9I0yJ/pE6+k9HyRBzsdUBYKcx8y
 Yf5np2aaO7vmsHpN9a9RNxyCEf6AEcka0p22EU34N+ZMzuZqFtOd7w7dtOF0S0mJ
 8CBRahhhSnSuk/nN37gwGPEl+zxVrn4UIa3gaYVrh7Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=Ak+6sr
 0EdSMe3A9inDGvwJSeZxZIogcefCgeBSV8VR0=; b=3yeCPvZyx+ICx+H4qFKXKw
 mIAPI8F5eRzBzwx7nbu76Gj+5u/Qtb60mqF8vdSRvqm34hdXj7KMelpz0CHuG50A
 GQN1UOV0BOpluxE5huMKFKxAW9ZrSJFQynQW+8r33JAUOIeuFkoA5/VLksWPhWLb
 hwwjvl6LseFebXRh7MGNK951l4XROIlXItct7E1b7dFNQkU8Tj/qnItZXiHESvR0
 6q5L+IsQiXD6uRLSAVmNPiaMb7MMBUBW0WQmlNi2nBCJhhnmG7ghThhwdYz441fp
 Vrnu732c4Aju18AHAui4OJ+hDeajkEh8fTKisxy1JsjcZ80QIQVFk29hFz15yy1A
 ==
X-ME-Sender: <xms:i-eqXsXFmiFAOha2sFLvEBVbhhGJIpylCcxwsBLspE7PBORMn4l7pg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrieehgdekvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheeiheeg
 udenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
 grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:i-eqXv3TLeO7zifGOzODK7cQi9jkVk5tGE9mjpNX3UEX8NlsI-f1Mw>
 <xmx:i-eqXskllfiqos-IENPO5uo30cPdhaz8nrJ68Vz3fie8ACKYi1yECQ>
 <xmx:i-eqXmHlsJa2ZY1E0jqyARB1P0PY_j-XGRpUpjE1mtLIcoFM0aT52g>
 <xmx:jueqXtQPpNh6ld88GnZUCc77-eyLRMN0UW9LrPrDg-7WGZCEaIdKKw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 3E2913280065;
 Thu, 30 Apr 2020 10:58:19 -0400 (EDT)
Date: Thu, 30 Apr 2020 16:58:17 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Priit Laes <plaes@plaes.org>
Subject: Re: [PATCH v3 3/6] net: stmmac: dwmac-sunxi: Implement syscon-based
 clock handling
Message-ID: <20200430145817.5cqa542jncomcklt@gilmour.lan>
References: <20200430115702.5768-1-plaes@plaes.org>
 <20200430115702.5768-4-plaes@plaes.org>
MIME-Version: 1.0
In-Reply-To: <20200430115702.5768-4-plaes@plaes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_075823_935184_C61175C2 
X-CRM114-Status: GOOD (  22.97  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.21 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6995901629234618260=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6995901629234618260==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="putviyvqcoxcobld"
Content-Disposition: inline


--putviyvqcoxcobld
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 30, 2020 at 02:56:59PM +0300, Priit Laes wrote:
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
>  .../net/ethernet/stmicro/stmmac/dwmac-sunxi.c | 130 ++++++++++++++++--
>  1 file changed, 122 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-sunxi.c b/drivers/=
net/ethernet/stmicro/stmmac/dwmac-sunxi.c
> index 0e1ca2cba3c7..206398f7a2af 100644
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
> @@ -22,11 +25,23 @@ struct sunxi_priv_data {
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
> =20
> +#define SUN7I_A20_CLK_MASK		GENMASK(2, 0)
> +#define SUN7I_A20_RGMII_CLK		(BIT(2) | BIT(1))
> +#define SUN7I_A20_MII_CLK		0
> +
>  static int sun7i_gmac_init(struct platform_device *pdev, void *priv)
>  {
>  	struct sunxi_priv_data *gmac =3D priv;
> @@ -38,7 +53,20 @@ static int sun7i_gmac_init(struct platform_device *pde=
v, void *priv)
>  			return ret;
>  	}
> =20
> -	/* Set GMAC interface port mode
> +	if (gmac->regmap_field) {
> +		if (phy_interface_mode_is_rgmii(gmac->interface)) {
> +			regmap_field_update_bits(gmac->regmap_field,
> +						 SUN7I_A20_CLK_MASK,
> +						 SUN7I_A20_RGMII_CLK);
> +			return clk_prepare_enable(gmac->tx_clk);
> +		}

Why do you prepare and enable the clock here? ...

> +		regmap_field_update_bits(gmac->regmap_field,
> +					 SUN7I_A20_CLK_MASK,
> +					 SUN7I_A20_MII_CLK);
> +		return clk_enable(gmac->tx_clk);
> +	}

=2E.. while you only enable it here ...

> +	/* Legacy devicetree clock (allwinner,sun7i-a20-gmac-clk) support:
>  	 *
>  	 * The GMAC TX clock lines are configured by setting the clock
>  	 * rate, which then uses the auto-reparenting feature of the
> @@ -62,9 +90,16 @@ static void sun7i_gmac_exit(struct platform_device *pd=
ev, void *priv)
>  {
>  	struct sunxi_priv_data *gmac =3D priv;
> =20
> -	if (gmac->clk_enabled) {
> +	if (gmac->regmap_field) {
> +		regmap_field_update_bits(gmac->regmap_field,
> +					 SUN7I_A20_CLK_MASK, 0);
>  		clk_disable(gmac->tx_clk);
> -		gmac->clk_enabled =3D 0;
> +	} else {
> +		/* Handle legacy devicetree clock (sun7i-a20-gmac-clk) */
> +		if (gmac->clk_enabled) {
> +			clk_disable(gmac->tx_clk);
> +			gmac->clk_enabled =3D 0;
> +		}
>  	}
>  	clk_unprepare(gmac->tx_clk);

=2E... and disable and unprepare it here?

> @@ -72,10 +107,55 @@ static void sun7i_gmac_exit(struct platform_device *=
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
> +			regmap_field_update_bits(gmac->regmap_field,
> +						 SUN7I_A20_CLK_MASK,
> +						 SUN7I_A20_RGMII_CLK);
> +		else
> +			regmap_field_update_bits(gmac->regmap_field,
> +						 SUN7I_A20_CLK_MASK,
> +						 SUN7I_A20_MII_CLK);
> +		clk_prepare_enable(gmac->tx_clk);


If were going to use clk_prepare_enable, we might as well use
clk_disable_unprepare

> +		return;
> +	}
> +
> +	/* Handle legacy devicetree clock (sun7i-a20-gmac-clk) */

That doesn't say much, you should rather explain what the situation is exac=
tly.

> +
>  	/* only GMII mode requires us to reconfigure the clock lines */
>  	if (gmac->interface !=3D PHY_INTERFACE_MODE_GMII)
>  		return;
> @@ -102,6 +182,8 @@ static int sun7i_gmac_probe(struct platform_device *p=
dev)
>  	struct stmmac_resources stmmac_res;
>  	struct sunxi_priv_data *gmac;
>  	struct device *dev =3D &pdev->dev;
> +	struct device_node *syscon_node;
> +	struct regmap *regmap =3D NULL;
>  	int ret;
> =20
>  	ret =3D stmmac_get_platform_resources(pdev, &stmmac_res);
> @@ -124,11 +206,43 @@ static int sun7i_gmac_probe(struct platform_device =
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

I'm not quite sure why you added this clock lookup here? Wasn't it here alr=
eady?

Maxime

--putviyvqcoxcobld
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXqrniQAKCRDj7w1vZxhR
xZyaAQDsoPEZO+RMAghgqFiaZgAIxVjUOPbVNuYyKb7pEwGGCQEA7VGSYNwkBDzN
PWU3lUz+NIedfeEMtoNHCeq3266+hg8=
=L/+p
-----END PGP SIGNATURE-----

--putviyvqcoxcobld--


--===============6995901629234618260==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6995901629234618260==--

