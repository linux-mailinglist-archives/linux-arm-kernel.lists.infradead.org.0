Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 518CB1F911C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 10:13:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O9Dx5+SUXlxcfwGLgQ90VR+FVPzXODYHAT2gYNIiSRA=; b=Cxr73ALcYKFhLtSKnCRtlTs2r
	/eItvZWrLl79GVqVOpfiygk1b5+iQ7m/Yu/j+25mqgowe/5l2Bz1sgIwwQFoHs1csQ59lAi+VYAl6
	WKde+Ap81Bpe6djzf4XSLsEqkUuf0fAVMIixUjXQSkn2JIQuKEIqAiWi5faGJyiBRVFHYSXVxsb5s
	RHsJf0lg+3ca5/BDuRR2d8oumpO+cgteqtTFNgeULlXtXKiBP8U5j6FvbaTyAYB0WOeLrqZZ9ZL6L
	5NR6CrcucIWCNhSbN/yH2DTI+ma5U3M3dyetsmiSFt0O62ySNmRHu/vsCTfDcP+BT+BYmlKaa45VU
	06VBrgRDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkkEt-0006VL-Mt; Mon, 15 Jun 2020 08:13:07 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkkEl-0006U2-JB
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 08:13:01 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id CB05F5C00A7;
 Mon, 15 Jun 2020 04:12:51 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 15 Jun 2020 04:12:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=sAfu4p+QiVeNnuEcI3dCQR633pL
 v27vuwHggq/8UNPk=; b=c6TQB5IO+se7UhdTaUAAm4AbOCSU6oH94xlzR17ZRJb
 xRk/LYcxyMqmX31VFketon1w65JvTnh1QmJgvNYGgc3JZf/civgef/BhH6F6ssgC
 yyYEwB2zOgcJWLdOOcBCjd9TgjtoCzuKMe6ulDs6VaKR7h14G54ZYfPp9nHxZDxt
 Xlu2xiIq3P7DTkUnoksJMoVP6g/xspJz/9z1oR1KBoGC6Arg3fENLqOlP5lzt8c+
 ssCii8sXngs57wOfyieDj6h8jpKEWeSEO7mmcg1IZd4Wivscwv8OjrlCwzmreM7c
 mGIcMf33UDWXKPGmvmVEoilZBCA6XbcOmCo+qTa1QNQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=sAfu4p
 +QiVeNnuEcI3dCQR633pLv27vuwHggq/8UNPk=; b=nzprzlOTjayaOK/LwLkSb5
 FSgNJVEawb7PUpqqIFw7UxZGT7jbuTX1kNgoU7+atS0elw71SRYxtxMPdcbChBxi
 uQBdzSLAwbEKrdjMAW/BujZETNnj44U31L3DmKVO3fZAMHH6+gg3VCPaOWXmTUsH
 KcLAZYSXS0lTCitesZDGH2NF4HhUHvATpO/Gz3xtVbPLKUnwR5EyruEcVrrcbcyG
 4EcAu9kt2hDwBcuVLLc2N2+H9Mg1DeokOS3QPfthUX0Lfq+O9dyGVUsywqva7/d7
 P/0ublXIRqEK7v5zgZEo5B2bApv86qbJ7HFjnC/9bjhkUabpgbAMfiLL3yQy6pXg
 ==
X-ME-Sender: <xms:gy3nXrNPwdpt83ykIxo4DVy-YXFVhIf4yaOFm5bTsV7rrXHMc_az0Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudeikecutefuodetggdotefrodftvfcurf
 hrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
 hrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgvucft
 ihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtthgvrh
 hnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheeiheeguden
 ucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrh
 grmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:gy3nXl_d48xf74ugtZHDOi92LxftFaHPR_ruLHOHLvVDeiQPsRkgBg>
 <xmx:gy3nXqTz3GKvwThxRh_Z-TY8Nag74qeO70zgmnVhUC_dsWefUyAqRg>
 <xmx:gy3nXvuADLO1-9us_vHUwf8292XL9qxGp6ycUHTIdysiI-aIH-5NLw>
 <xmx:gy3nXv4ap4YyrLEtJUG8liu0zAs1Cop1-vz1Hj9WzdT9KfJ0V3-Xvg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id E7D923280059;
 Mon, 15 Jun 2020 04:12:50 -0400 (EDT)
Date: Mon, 15 Jun 2020 10:12:49 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Diego Rondini <diego.rondini@kynetics.com>
Subject: Re: [PATCH 1/2] ARM: dts: orange-pi-zero-plus2: enable USB OTG port
Message-ID: <20200615081249.zx6caiirp72jywui@gilmour.lan>
References: <20200528204712.552964-1-diego.rondini@kynetics.com>
MIME-Version: 1.0
In-Reply-To: <20200528204712.552964-1-diego.rondini@kynetics.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_011259_769078_53513516 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6820257067212069898=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6820257067212069898==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tpgcvphjqdudnw7t"
Content-Disposition: inline


--tpgcvphjqdudnw7t
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Diego,

On Thu, May 28, 2020 at 10:47:11PM +0200, Diego Rondini wrote:
> Enable support for USB OTG port on Orange Pi Zero Plus 2 (both H3 and H5
> variants). As, according to the board schematics, the USB OTG port cannot
> provide power to external devices, we set dr_mode to peripheral.
>=20
> Signed-off-by: Diego Rondini <diego.rondini@kynetics.com>

Sorry for the time it took to review it. I initially thought it was ok
and wanted to wait until -rc1 was out to apply it, but...

> ---
>  .../boot/dts/sun8i-h3-orangepi-zero-plus2.dts | 23 +++++++++++++++++++
>  .../sun50i-h5-orangepi-zero-plus2.dts         | 23 +++++++++++++++++++
>  2 files changed, 46 insertions(+)
>=20
> diff --git a/arch/arm/boot/dts/sun8i-h3-orangepi-zero-plus2.dts b/arch/ar=
m/boot/dts/sun8i-h3-orangepi-zero-plus2.dts
> index b8f46e2802fd3..4376767699a47 100644
> --- a/arch/arm/boot/dts/sun8i-h3-orangepi-zero-plus2.dts
> +++ b/arch/arm/boot/dts/sun8i-h3-orangepi-zero-plus2.dts
> @@ -137,3 +137,26 @@ &uart0 {
>  	pinctrl-0 =3D <&uart0_pa_pins>;
>  	status =3D "okay";
>  };
> +
> +&usbphy {
> +	status =3D "okay";
> +};
> +
> +&usb_otg {
> +	/*
> +	 * According to schematics CN1 MicroUSB port can be used to take
> +	 * external 5V to power up the board VBUS. On the contrary CN1 MicroUSB
> +	 * port cannot provide power externally even if the board is powered
> +	 * via GPIO pins. It thus makes sense to force peripheral mode.
> +	 */
> +	dr_mode =3D "peripheral";
> +	status =3D "okay";
> +};
> +
> +&ehci0 {
> +	status =3D "okay";
> +};
> +
> +&ohci0 {
> +	status =3D "okay";
> +};

Nodes should be ordered alphabetically here.

> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus2.=
dts b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus2.dts
> index c95a68541309c..d8192a7483e9e 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus2.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus2.dts
> @@ -103,3 +103,26 @@ &uart1 {
>  	pinctrl-0 =3D <&uart1_pins>, <&uart1_rts_cts_pins>;
>  	status =3D "okay";
>  };
> +
> +&usbphy {
> +	status =3D "okay";
> +};
> +
> +&usb_otg {
> +	/*
> +	 * According to schematics CN1 MicroUSB port can be used to take
> +	 * external 5V to power up the board VBUS. On the contrary CN1 MicroUSB
> +	 * port cannot provide power externally even if the board is powered
> +	 * via GPIO pins. It thus makes sense to force peripheral mode.
> +	 */
> +	dr_mode =3D "peripheral";
> +	status =3D "okay";
> +};
> +
> +&ehci0 {
> +	status =3D "okay";
> +};
> +
> +&ohci0 {
> +	status =3D "okay";
> +};

And here too.

Sorry for not spotting this earlier.

Maxime

--tpgcvphjqdudnw7t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXuctgQAKCRDj7w1vZxhR
xWnzAQCSvSidJmcewISQiPCQTATc2AKJsvFQJCKjT31JrlJGjQEAqor0s+oGJb62
aUklO6rMf2UikngeBjD1cdXEn04sEw8=
=RVYf
-----END PGP SIGNATURE-----

--tpgcvphjqdudnw7t--


--===============6820257067212069898==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6820257067212069898==--

