Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F8C3CEAF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 16:28:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JNSAcX5zKPnIUSf829Jrw6gzEdJwA45WtkvtsVR+pmw=; b=ZlfDbZxWOnMribrSgCAJSaixk
	2pMTBahhENcA96I7F9LY+iHAXPj+C7ezJ+rmtVQlh0UQCf9IzzAW0f4zfKNtyZ3iKT7qHrSrhkf7S
	loPWYLWNAi0aRcKzCL1o0zNHgBfAnrRSPkTemtOS/wuFADTexpZc7rbPv7IQKnDhMD45bgWvkmu/x
	KmXtxvAWRZnKkQpkC4Tzf6/qPzF4WJ9aVp3FttJCfyH3GoS6tU0ch4Vc13rxL9BlR8wMnKZLAyDbt
	F7u/YOrfZ/rrR6I22zwlTVsEYXv/hdUosIl8wqMAlElzR07rqAYQ1GGElYDaUSML+xf2oc2/ruT6S
	vNTx+LB3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hahkr-0004q4-4G; Tue, 11 Jun 2019 14:28:05 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hahke-0004p6-Vj
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 14:27:54 +0000
X-Originating-IP: 90.88.159.246
Received: from localhost (aaubervilliers-681-1-40-246.w90-88.abo.wanadoo.fr
 [90.88.159.246]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 1965AE0011;
 Tue, 11 Jun 2019 14:27:40 +0000 (UTC)
Date: Tue, 11 Jun 2019 16:27:40 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH v2 03/11] pinctrl: sunxi: v3s: introduce support for V3
Message-ID: <20190611142740.2gqm3nxq2nl6sz7w@flea>
References: <20190611140940.14357-1-icenowy@aosc.io>
 <20190611140940.14357-4-icenowy@aosc.io>
MIME-Version: 1.0
In-Reply-To: <20190611140940.14357-4-icenowy@aosc.io>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_072753_178488_07BE803C 
X-CRM114-Status: GOOD (  16.37  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8827081785450025251=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8827081785450025251==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ttqlhhfclj7eb7xn"
Content-Disposition: inline


--ttqlhhfclj7eb7xn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Tue, Jun 11, 2019 at 10:09:32PM +0800, Icenowy Zheng wrote:
> Introduce the GPIO pins that is only available on V3 (not on V3s) to the
> V3s pinctrl driver.
>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> ---
> Changes in v2:
> - Dropped the driver rename patch and apply the changes directly on V3s
>   driver.
>
>  drivers/pinctrl/sunxi/pinctrl-sun8i-v3s.c | 265 +++++++++++++++++++++-
>  drivers/pinctrl/sunxi/pinctrl-sunxi.h     |   2 +
>  2 files changed, 262 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/pinctrl/sunxi/pinctrl-sun8i-v3s.c b/drivers/pinctrl/sunxi/pinctrl-sun8i-v3s.c
> index 6704ce8e5e3d..9e82fd38cf21 100644
> --- a/drivers/pinctrl/sunxi/pinctrl-sun8i-v3s.c
> +++ b/drivers/pinctrl/sunxi/pinctrl-sun8i-v3s.c
> @@ -1,5 +1,5 @@
>  /*
> - * Allwinner V3s SoCs pinctrl driver.
> + * Allwinner V3/V3s SoCs pinctrl driver.
>   *
>   * Copyright (C) 2016 Icenowy Zheng <icenowy@aosc.xyz>
>   *
> @@ -77,6 +77,30 @@ static const struct sunxi_desc_pin sun8i_v3s_pins[] = {
>  		  SUNXI_FUNCTION(0x2, "i2c1"),		/* SCK */
>  		  SUNXI_FUNCTION(0x3, "uart0"),		/* RX */
>  		  SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 9)),	/* PB_EINT9 */
> +	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(B, 10),
> +		  PINCTRL_SUN8I_V3,
> +		  SUNXI_FUNCTION(0x0, "gpio_in"),
> +		  SUNXI_FUNCTION(0x1, "gpio_out"),
> +		  SUNXI_FUNCTION(0x2, "jtag"),		/* MS */
> +		  SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 10)),	/* PB_EINT10 */

The alignment should be on the parenthesis

Looks good otherwise

maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--ttqlhhfclj7eb7xn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXP+6WwAKCRDj7w1vZxhR
xWvDAP4sUsS8lzwwMZirLseQPv9XAS76rNYD57+nctEZGaZNQwEAvNAXDoM60OLA
47GX+cRJkvkgdUzlpDnXxMBujGw8qAA=
=z2T/
-----END PGP SIGNATURE-----

--ttqlhhfclj7eb7xn--


--===============8827081785450025251==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8827081785450025251==--

