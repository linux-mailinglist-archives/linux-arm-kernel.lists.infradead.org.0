Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A63091B0BEB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 14:59:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=k99WWNZUK1Fj9YrIS6wxLjk7cxM6+rSpZgpb3sE836U=; b=CDjgnnEoPfdC/iX7VdPy1Putn
	YbIkwJ3WZ83HsSQbgSMlI3ktgjevKthaWUxUQhTTqde79v8Js8oELdJ3IRHq+O1j4OQRv08t68iAf
	dU4Rleu+y2cP/NWLJ/594XamoEBuKJAIkoSRBF1CKJf+mb9nh6y5p/uZwM22QOBvBgeKDZHHgvSrq
	d5k2nMho6LAlwD/X8CMBhy5TQYL94Uj0hq3NY65oj+7M5E/qzPCQtewURk+3LXgDOJu1R/MstNguE
	wefj2vbNWC5Q2Z7/HXKzjMa+ptJM4HD/S/G47YBG65FXygU85yyYSW0o+s9LIiSGHXlY5VyW6bcG2
	tJGQ2LnBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQW1N-00008K-MG; Mon, 20 Apr 2020 12:59:33 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQW1D-00007W-BY
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 12:59:24 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 0B0C52F2;
 Mon, 20 Apr 2020 08:59:21 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Mon, 20 Apr 2020 08:59:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=Z4Tx++3ZiTnOn+3/RNXgeV13mzY
 czYnd6hnaCAv6DxU=; b=t/XOmMYQJv7YFcnsTVIYHEhbPvHuvMrvIfpfUglv4yC
 pWRgDVBdxfzJQvjsLV3/ksnCZuLGab+iKs3XRDR5Wf1hrdrZ88Dfqh0SkXBFyZ7b
 WNVVbJyvnA7CQQSjuif+8TL1QyCy1B0RSEFakcGubek2nG4RhqfNd3BbBURm2ghI
 3P7jcJZhpc9zMe3fLpD4Up6dqujQuCXg1Kru3v+GonZ+rrj4PIMTVLXJ7DLUqAEh
 85boYT4Jx2Ohe/zEr6luqckz5gDU9cy2ZrAnExq5bl3Wd4j6tES3mvR17EHPCM6T
 svYYepcg4yI2CEbyhv92+LhlwtPUke+gJT52TRzEo/Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=Z4Tx++
 3ZiTnOn+3/RNXgeV13mzYczYnd6hnaCAv6DxU=; b=OdaLG8aCJmXh7rG4CSRUqF
 4FiigsUn6otSH2vWMkFc3CpVemP3dEXEWL0I1QywaZdTOpNnFnYqDeBqN11fJG1o
 smoQJpBGP0A8GzHLwhRNJ7XNNdycXXHoyTPwNOh3FuHK+u9UlhKcI8fi9T7SM7zV
 Se39pa61EkaACX5uO1ggA0+WIwOybGH9kH9BWZtpBh9XSrUaWZvNbp7ViE9nCRNo
 wsneUcvbVXTq2Nzb5QByxvmUbI6tRLKVy5IpluocEtPbVOPPUWdImDhhzPoxPYk5
 H5rNF/zJ3x6uw3+L4hNBeG35HXYmQWi+RkgY0sknv+G2Khr1KwdpK2hyDrJnxwlw
 ==
X-ME-Sender: <xms:qZydXkWOP9VFnj_bMXgrmtEhJk5Yxl6WycU11XNhdDyXkH1vEgdnNA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrgeefgdehkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:qZydXs2GooQrliKtdJGCuEaQlJe6YIXOVxqh8NP2GgxkxH-C9wPiKw>
 <xmx:qZydXjaA9koIQRTh0YItL0TdRxY7pbBKFhtm_hxVx_qmi89LcDfw7w>
 <xmx:qZydXnok7HbV5kG-bom49qpFyTDPsN0jpV5A-t-B-YJGBsNgq_Lvxw>
 <xmx:qZydXhnAID3tdIYtMuaKHVCA1Y7TScwjZCevTJjvL_5OEtOnmGkwaQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id CB79C3065C16;
 Mon, 20 Apr 2020 08:59:20 -0400 (EDT)
Date: Mon, 20 Apr 2020 14:59:19 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Priit Laes <plaes@plaes.org>
Subject: Re: [PATCH 4/4] ARM: dts: sun7i: Use syscon-based implementation for
 gmac
Message-ID: <20200420125919.3bqosps7nzwvmasn@gilmour.lan>
References: <20200417221730.555954-1-plaes@plaes.org>
 <20200417221730.555954-5-plaes@plaes.org>
MIME-Version: 1.0
In-Reply-To: <20200417221730.555954-5-plaes@plaes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_055923_436372_76BDB72C 
X-CRM114-Status: GOOD (  15.07  )
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
Content-Type: multipart/mixed; boundary="===============8214695480494131449=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8214695480494131449==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lxwfdky4v247xqnt"
Content-Disposition: inline


--lxwfdky4v247xqnt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Apr 18, 2020 at 01:17:30AM +0300, Priit Laes wrote:
> Use syscon-based approach to access gmac clock configuration
> register, instead of relying on a custom clock driver.
>=20
> As a bonus, we can now drop the custom clock implementation
> and dummy clocks making sun7i fully CCU-compatible.
>=20
> Signed-off-by: Priit Laes <plaes@plaes.org>
> ---
>  arch/arm/boot/dts/sun7i-a20.dtsi | 36 +++-----------------------------
>  1 file changed, 3 insertions(+), 33 deletions(-)
>=20
> diff --git a/arch/arm/boot/dts/sun7i-a20.dtsi b/arch/arm/boot/dts/sun7i-a=
20.dtsi
> index ffe1d10a1a84..750962a94fad 100644
> --- a/arch/arm/boot/dts/sun7i-a20.dtsi
> +++ b/arch/arm/boot/dts/sun7i-a20.dtsi
> @@ -219,37 +219,6 @@ osc32k: clk-32k {
>  			clock-frequency =3D <32768>;
>  			clock-output-names =3D "osc32k";
>  		};
> -
> -		/*
> -		 * The following two are dummy clocks, placeholders
> -		 * used in the gmac_tx clock. The gmac driver will
> -		 * choose one parent depending on the PHY interface
> -		 * mode, using clk_set_rate auto-reparenting.
> -		 *
> -		 * The actual TX clock rate is not controlled by the
> -		 * gmac_tx clock.
> -		 */
> -		mii_phy_tx_clk: clk-mii-phy-tx {
> -			#clock-cells =3D <0>;
> -			compatible =3D "fixed-clock";
> -			clock-frequency =3D <25000000>;
> -			clock-output-names =3D "mii_phy_tx";
> -		};
> -
> -		gmac_int_tx_clk: clk-gmac-int-tx {
> -			#clock-cells =3D <0>;
> -			compatible =3D "fixed-clock";
> -			clock-frequency =3D <125000000>;
> -			clock-output-names =3D "gmac_int_tx";
> -		};
> -
> -		gmac_tx_clk: clk@1c20164 {
> -			#clock-cells =3D <0>;
> -			compatible =3D "allwinner,sun7i-a20-gmac-clk";
> -			reg =3D <0x01c20164 0x4>;
> -			clocks =3D <&mii_phy_tx_clk>, <&gmac_int_tx_clk>;
> -			clock-output-names =3D "gmac_tx";
> -		};
>  	};
> =20
> =20
> @@ -1511,11 +1480,12 @@ mali: gpu@1c40000 {
> =20
>  		gmac: ethernet@1c50000 {
>  			compatible =3D "allwinner,sun7i-a20-gmac";
> +			syscon =3D <&ccu>;
>  			reg =3D <0x01c50000 0x10000>;
>  			interrupts =3D <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
>  			interrupt-names =3D "macirq";
> -			clocks =3D <&ccu CLK_AHB_GMAC>, <&gmac_tx_clk>;
> -			clock-names =3D "stmmaceth", "allwinner_gmac_tx";
> +			clocks =3D <&ccu CLK_AHB_GMAC>;
> +			clock-names =3D "stmmaceth";

I guess you also need to update the binding so that it considers it valid?

Maxime

--lxwfdky4v247xqnt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXp2cpwAKCRDj7w1vZxhR
xV8eAPwMjpw8ngiA7+PMTh3y1+0bYmvhl8gwYCzmS3VzAT3r4QEAhXCLgzR7Iy1z
EImQYxxDHoP0F/irj6QPAyoSRxOrswc=
=URSt
-----END PGP SIGNATURE-----

--lxwfdky4v247xqnt--


--===============8214695480494131449==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8214695480494131449==--

