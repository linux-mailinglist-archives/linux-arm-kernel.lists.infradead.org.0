Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7150130AA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 16:47:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Pt9tk8ZCXkSrUtWTfoEI8+OzP1+2YDbwLtwA/36NHMw=; b=cHgm6kQWvuYBCU76rmNJKNFUZ
	xePEEzkR2nvGoXCXlXqd9w/HAxHGNT7VBRP/ZInq7fdpejgMIg6BmK4i2ga8b9r0c79alO+B8YIF6
	QI3EPyP5gO3abExYwIhE7PRP7tAdiSjmvEgkC10LiFB5PhXteTe4tr0BFlgdpjtUnoiQIvHlA4GKn
	VPvJ1XSeHxHHJMliVz+bkm1lPaJ9ilphh5kAEuLAi6RM7bUU0cvJEFuSU2Ftk+LjVRS19zj5xKbd2
	zgwD4LiDuZksHg8XwckdzV43cIdKR1qha0Ev+8w0A8/gdlmClp9AhHOCVXET1eP4Fr2BgJkPBg52P
	Jnf8qOGnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMZTI-000225-VS; Fri, 03 May 2019 14:47:32 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMZTC-00021v-L7
 for linux-arm-kernel@bombadil.infradead.org; Fri, 03 May 2019 14:47:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FwvreMNElU0lt9KkkoWXnqXetGh0xcvigJcRx0iPCPQ=; b=wUW86VRmfpJ7bwlJ2kLhGrdAC
 6PtmbvOVsO3WSj6/x0NQnzfiNQcx5/45JEu+gyTLK92DLp3b97yMs8IYxjX6dBlhFHXykO3u37AJF
 SlXX/kuHQtSrgRJv5l5dLB0B3SRPOYV1OXLOqAvttY95rmmOzx39fnb/FDrUzr7KAmOO4+uafNDYZ
 GN+FjckRIbZDm3z0a0tAAs+OWvzWG0mT4MHB6Z51xnK5OeM0RQnWXP9YQ8dJHGXTYEFnhKpJNCD19
 JUs8pVDcSfIbIN916F4PgnEzkQvj3c3aTjbKgU1YsjZV07CdtGCrWbBxqWZuSV/wIkTQ86YQNo4aR
 xzkpjbs7Q==;
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMZT9-0007q3-36
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 14:47:25 +0000
X-Originating-IP: 90.88.149.145
Received: from localhost (aaubervilliers-681-1-29-145.w90-88.abo.wanadoo.fr
 [90.88.149.145]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 2C69420008;
 Fri,  3 May 2019 14:46:51 +0000 (UTC)
Date: Fri, 3 May 2019 16:46:51 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v2] arm64: allwinner: h6: orangepi-one-plus: Add Ethernet
 support
Message-ID: <20190503144651.ttqfha656dykqjzo@flea>
References: <20190503115928.27662-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
In-Reply-To: <20190503115928.27662-1-jagan@amarulasolutions.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_154723_191054_1ED5C071 
X-CRM114-Status: GOOD (  27.64  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7044043325404716976=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7044043325404716976==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2rmkjhbiz7qfnwvn"
Content-Disposition: inline


--2rmkjhbiz7qfnwvn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 03, 2019 at 05:29:28PM +0530, Jagan Teki wrote:
> Add Ethernet support for orangepi-one-plus board,
>
> - Ethernet port connected via RTL8211E PHY
> - PHY suppiled with
>   GMAC-2V5, fixed regulator with GMAC_EN pin via PD6
>   GMAC-3V, which is supplied by VCC3V3-MAC via aldo2
> - RGMII-RESET pin connected via PD14
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Your commit log should be improved. We can get those informations from
the patch itself...

> ---
> Changes for v2:
> - emac changes on top of https://patchwork.kernel.org/cover/10899529/
>   series
>
>  .../allwinner/sun50i-h6-orangepi-one-plus.dts |  8 ++++
>  .../dts/allwinner/sun50i-h6-orangepi.dtsi     | 42 +++++++++++++++++++
>  2 files changed, 50 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-plus.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-plus.dts
> index 12e17567ab56..9e8ed1053715 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-plus.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-plus.dts
> @@ -9,4 +9,12 @@
>  / {
>  	model = "OrangePi One Plus";
>  	compatible = "xunlong,orangepi-one-plus", "allwinner,sun50i-h6";
> +
> +	aliases {
> +		ethernet0 = &emac;
> +	};
> +};
> +
> +&emac {
> +	status = "okay";
>  };
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi
> index 62e27948a3fa..c48e24acaf8a 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi
> @@ -45,6 +45,48 @@
>  		regulator-max-microvolt = <5000000>;
>  		regulator-always-on;
>  	};
> +
> +	/*
> +	 * The board uses 2.5V RGMII signalling. Power sequence to enable
> +	 * the phy is to enable GMAC-2V5 and GMAC-3V (aldo2) power rails
> +	 * at the same time and to wait 100ms.
> +	 */
> +	reg_gmac_2v5: gmac-2v5 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "gmac-2v5";
> +		regulator-min-microvolt = <2500000>;
> +		regulator-max-microvolt = <2500000>;
> +		startup-delay-us = <100000>;
> +		enable-active-high;
> +		gpio = <&pio 3 6 GPIO_ACTIVE_HIGH>; /* GMAC_EN: PD6 */
> +
> +		/* The real parent of gmac-2v5 is reg_vcc5v, but we need to
> +		 * enable two regulators to power the phy. This is one way
> +		 * to achieve that.
> +		 */
> +		vin-supply = <&reg_aldo2>; /* VCC3V3-MAC: GMAC-3V */
> +	};
> +};
> +
> +&emac {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&ext_rgmii_pins>;
> +	phy-mode = "rgmii";
> +	phy-handle = <&ext_rgmii_phy>;
> +	phy-supply = <&reg_gmac_2v5>;
> +	allwinner,rx-delay-ps = <1500>;
> +	allwinner,tx-delay-ps = <700>;
> +};
> +
> +&mdio {
> +	ext_rgmii_phy: ethernet-phy@1 {
> +		compatible = "ethernet-phy-ieee802.3-c22";
> +		reg = <1>;
> +
> +		reset-gpios = <&pio 3 14 GPIO_ACTIVE_LOW>; /* RGMII-RESET: PD14 */
> +		reset-assert-us = <15000>;
> +		reset-deassert-us = <40000>;
> +	};
>  };

... however, at no point in time you explain why you made that switch,
and while most of the definition of the EMAC nodes is in the DTSI, you
only enable it in one DTS.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--2rmkjhbiz7qfnwvn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXMxUWwAKCRDj7w1vZxhR
xRfCAQDVy0LVhlnpOdbjD47WRofRerK8UUI9OFy/pcKdkOrHHwD9GqdywGWCgKB+
W2rCZhn4ntKVt7j9hzPYI7c9zdztUAM=
=I+i9
-----END PGP SIGNATURE-----

--2rmkjhbiz7qfnwvn--


--===============7044043325404716976==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7044043325404716976==--

