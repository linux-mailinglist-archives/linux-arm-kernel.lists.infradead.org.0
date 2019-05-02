Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD2FF11450
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 09:39:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8FjrDFrpTLJdgpXqNW+oFw90K0BLMtHzt2zc4Aqcklc=; b=eBujCltk0pORbQ6hqrfHL8Pwe
	GlOljYZT2tgleIbzn6Q4wXujrBcUK3vexKqXU8aNPuwx8wlLP1frFhpEC0Bq2eeDfSH2LbxwHins4
	2Nhqh1Zlqy1RydavEj2WISKB72pMUnwpd0BF92EV+Tjp12YV8jEQRHd6e4PApq4iBe64ofN+bCd5S
	ExRqtWSp/95crKRItnzGCkCINcMfaBJ+FlzPCRMBSzM9yvi/D7Hhhtnj7m5FNTiSaJHO7dPoAI/hl
	dGilgTgmKAeQXCwAj50jKPujiogg8Q8WXZBneK1v64345Wj7CwRCej5vWHIzFwoxPJ+uqwujdRLMG
	L4IsCe3qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM6JF-0003q1-Nb; Thu, 02 May 2019 07:39:13 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM6J9-0003pe-KB
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 07:39:09 +0000
Received: from localhost (aaubervilliers-681-1-29-145.w90-88.abo.wanadoo.fr
 [90.88.149.145]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 0FF03100019;
 Thu,  2 May 2019 07:39:04 +0000 (UTC)
Date: Thu, 2 May 2019 09:39:04 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Pablo Greco <pgreco@centosproject.org>
Subject: Re: [PATCH v5 3/7] ARM: dts: sun8i: v40: bananapi-m2-berry: Enable
 GMAC ethernet controller
Message-ID: <20190502073904.yng5dz5kwgulw6ha@flea>
References: <1556040365-10913-1-git-send-email-pgreco@centosproject.org>
 <1556040365-10913-4-git-send-email-pgreco@centosproject.org>
MIME-Version: 1.0
In-Reply-To: <1556040365-10913-4-git-send-email-pgreco@centosproject.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_003907_805734_13C78F59 
X-CRM114-Status: GOOD (  16.21  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
 Chen-Yu Tsai <wens@csie.org>, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3156323489017017674=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3156323489017017674==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="d2v4zsdy3ohit6tk"
Content-Disposition: inline


--d2v4zsdy3ohit6tk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Apr 23, 2019 at 02:26:00PM -0300, Pablo Greco wrote:
> Just like the Bananapi M2 Ultra, the Bananapi M2 Berry has a Realtek
> RTL8211E RGMII PHY tied to the GMAC.
> The PMIC's DC1SW output provides power for the PHY, while the ALDO2
> output provides I/O voltages on both sides.
>
> Signed-off-by: Pablo Greco <pgreco@centosproject.org>
> ---
>  arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts | 29 +++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
>
> diff --git a/arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts b/arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts
> index 2cb2ce0..561319b 100644
> --- a/arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts
> +++ b/arch/arm/boot/dts/sun8i-v40-bananapi-m2-berry.dts
> @@ -50,6 +50,7 @@
>  	compatible = "sinovoip,bpi-m2-berry", "allwinner,sun8i-r40";
>
>  	aliases {
> +		ethernet0 = &gmac;
>  		serial0 = &uart0;
>  	};
>
> @@ -92,6 +93,22 @@
>  	status = "okay";
>  };
>
> +&gmac {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&gmac_rgmii_pins>;
> +	phy-handle = <&phy1>;
> +	phy-mode = "rgmii";
> +	phy-supply = <&reg_dc1sw>;
> +	status = "okay";
> +};
> +
> +&gmac_mdio {
> +	phy1: ethernet-phy@1 {
> +		compatible = "ethernet-phy-ieee802.3-c22";
> +		reg = <1>;
> +	};
> +};
> +
>  &i2c0 {
>  	status = "okay";
>
> @@ -133,6 +150,12 @@
>  	vcc-pg-supply = <&reg_dldo1>;
>  };
>
> +&reg_aldo2 {
> +	regulator-min-microvolt = <2500000>;
> +	regulator-max-microvolt = <2500000>;
> +	regulator-name = "vcc-pa";
> +};
> +

Shouldn't this one be added to the patch 2?

Thanks
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--d2v4zsdy3ohit6tk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXMqemAAKCRDj7w1vZxhR
xWdzAQC0mZNlKnsyMWKmAzQSzgvolqPbKRG2zRXlpGrUZP2jHgD9HRhKdaeZ7Bxj
Qwd2WYC/jYyLYVYxMKb8LMUjXnhUIQM=
=Kqmg
-----END PGP SIGNATURE-----

--d2v4zsdy3ohit6tk--


--===============3156323489017017674==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3156323489017017674==--

