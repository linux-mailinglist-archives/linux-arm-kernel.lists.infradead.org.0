Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B6A150AEF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 14:41:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=L3oRjMxxmlLBsWRh64jptDNSWP+6MGe4FRNSFcDP9o4=; b=U6z75SRhPHU6H/l22b0XoKnYJ
	ij9Yx5+kVGip0ylPLEceRcAcUgCx4fpbjeeh04HSn3JlLpOzPK4kxUlBtoR0XK93tqoQGTNl711Rj
	BBIdrqUVLEKB9oXDBrfNTaTcyj6YGWVPYweqSp7sMFhPRXyIAQp/QLg93hd5vFKOHdx13PQwFHYNd
	EytC/pR6OfBSQSQedNlm/v0m+jxQvWOY2fIlYpxseqMP1agFIOhchj/sy2xVaibRqcZ/y6OqRYPYd
	huM0YpuQN9mlo9oayRFUvzbteBhPqwMU5usM+vfdKh9jbjoMoWTnsJiik2k2xgN9zSIKxIUQqSLHb
	inoABeVfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfOHP-0000vh-Oh; Mon, 24 Jun 2019 12:41:03 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfOH1-0000iz-3g
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 12:40:41 +0000
Received: from localhost (aaubervilliers-681-1-41-156.w90-88.abo.wanadoo.fr
 [90.88.16.156]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 285C810000F;
 Mon, 24 Jun 2019 12:40:20 +0000 (UTC)
Date: Mon, 24 Jun 2019 14:40:19 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH v3 1/9] pinctrl: sunxi: v3s: introduce support for V3
Message-ID: <20190624124019.o6acnnkjikekshl5@flea>
References: <20190623043801.14040-1-icenowy@aosc.io>
 <20190623043801.14040-2-icenowy@aosc.io>
MIME-Version: 1.0
In-Reply-To: <20190623043801.14040-2-icenowy@aosc.io>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_054039_350094_EC7AFE02 
X-CRM114-Status: GOOD (  15.73  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5757208628606373082=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5757208628606373082==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2wajni7mcz7mizzf"
Content-Disposition: inline


--2wajni7mcz7mizzf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Jun 23, 2019 at 12:37:53PM +0800, Icenowy Zheng wrote:
> Introduce the GPIO pins that is only available on V3 (not on V3s) to the
> V3s pinctrl driver.
>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> ---
> Changes in v3:
> - Fixed code alignment.
> - Fixed LVDS function number.
>
> Changes in v2:
> - Dropped the driver rename patch and apply the changes directly on V3s
>   driver.
>
>  drivers/pinctrl/sunxi/pinctrl-sun8i-v3s.c | 473 +++++++++++++++++-----
>  drivers/pinctrl/sunxi/pinctrl-sunxi.h     |   2 +
>  2 files changed, 366 insertions(+), 109 deletions(-)
>
> diff --git a/drivers/pinctrl/sunxi/pinctrl-sun8i-v3s.c b/drivers/pinctrl/sunxi/pinctrl-sun8i-v3s.c
> index 6704ce8e5e3d..721c997d472b 100644
> --- a/drivers/pinctrl/sunxi/pinctrl-sun8i-v3s.c
> +++ b/drivers/pinctrl/sunxi/pinctrl-sun8i-v3s.c
> @@ -1,5 +1,5 @@
>  /*
> - * Allwinner V3s SoCs pinctrl driver.
> + * Allwinner V3/V3s SoCs pinctrl driver.
>   *
>   * Copyright (C) 2016 Icenowy Zheng <icenowy@aosc.xyz>
>   *
> @@ -28,235 +28,433 @@ static const struct sunxi_desc_pin sun8i_v3s_pins[] = {
>  	SUNXI_PIN(SUNXI_PINCTRL_PIN(B, 0),
>  		  SUNXI_FUNCTION(0x0, "gpio_in"),
>  		  SUNXI_FUNCTION(0x1, "gpio_out"),
> -		  SUNXI_FUNCTION(0x2, "uart2"),		/* TX */
> -		  SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 0)),	/* PB_EINT0 */
> +		  SUNXI_FUNCTION(0x2, "uart2"),			/* TX */
> +		  SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 0)),		/* PB_EINT0 */

I'm not sure why all that churn is needed.

Looks good otherwise.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--2wajni7mcz7mizzf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXRDEswAKCRDj7w1vZxhR
xcUqAP96jDUQxD5ktA8bJadn0csZC5zu80WvAEMGgbNIXKKLTAD/U+6znAbbceG1
7MaO9SVfGDrn45QzR2JTKu4r3t/2VAw=
=tGMg
-----END PGP SIGNATURE-----

--2wajni7mcz7mizzf--


--===============5757208628606373082==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5757208628606373082==--

