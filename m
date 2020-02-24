Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1084F16A481
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 12:01:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/DNo6194YNLrVOih+0ilC0h3Vhw9NZqsLEaFR7CnMpI=; b=id6ux8dY7xK5/chQKxnhwZ2tB
	acBooUj/j6JNtGR/bnczkZ8qsgffsM7c5j6Z4VnTIWxl1BA/3qy3gKwur8R0oGzHIQfvW73VwUeSq
	F5jxs18VAn3Sew3EialqVyKutxy7tE61IDldgjxsN25p/dU89GwbxxRyjBeWce7ttJS+NDHIDmD6Z
	EU/Ca7Fsx1wo2pu9LAazHMa2lDCdfWbyZMii/h9uUtonCVpeoo2TwFeEU1HbNI6Rfz1Bc1uqINFFt
	zscC22BMuJgRa3oH1Cj6jNKlOrQm08IPdLtoQ0pwh8NVqwUFia+kkD0UTAz4iJHGakrq5RzjUlkYs
	sO5VWtdsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6BUI-0000px-3r; Mon, 24 Feb 2020 11:01:22 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6BU2-0000oX-9H
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 11:01:07 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id E5629762B;
 Mon, 24 Feb 2020 06:01:03 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 06:01:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=ZcsAxlQzmgfp+248gfkt50f72yf
 XGFM0CMrpGGcfUak=; b=rqjz591JyJS7eCFFOrCKQhv/MhN/QfOGyBQHd2az1pe
 WoqWgpILpqn+XAr01g3Y/9dvYLq7Px2l+vOrWjirHSTKJ9M2TDOjem/FhVYW16Fy
 m5obfjQOt43XZUtCALzLBvYqNNG3eODcPaWqR4jTmSUAc6mOrjGkPGjbGwUyZtD5
 SIoR3MG7B6/ZG6IFXDdy8aSbSQM8ZkJ/lqAU9WNI2pcxWkfjlIYuPFUAgfqo4zMQ
 rZhrxUFTICGUBUF67QKAcjvOIlqY2/sOSn/Yrm6epoV5f0Nbhf1ribeFFlhzHgNh
 +68wIZz4oI/zTlcarut4v6Puy4ue/AXzsZbuTW6Tgog==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=ZcsAxl
 Qzmgfp+248gfkt50f72yfXGFM0CMrpGGcfUak=; b=Jo4xIfDL4pFRKONJsrXrFG
 AeGka/mFhVhUhgta9DD9XrZ8f30gJMqjGgId7HQMTyVn0bQW082W2Qb2TdhRRrrq
 37ExqrAwI5CPuPfaqeULjwziJWHym10gzeF5ZqiEjESUZO3fi1dGBrfvT4aTMtsS
 guieuIG1OY3sAKcVkzgsOJVA99XbSWzG1836DpPLesT8m525wfeqjZslrrj4hjpm
 /vDnIF1aG9IsN7izRd+EBRrdtWUmbwUVkkKs4sPNUCNJ42xYkoSJBSOOKI7/8nCP
 BYVmQXeFOzkGQ6yVHrH2Re2AInKDt5sJd0E8LyRBL6gUKEPYhimASk61+jiAGMWw
 ==
X-ME-Sender: <xms:7axTXmfCGfACAU-Go-6vz9eql4Q2BSZVUiXte9X8yotSfx2FCw1XUQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtgddvfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:7axTXkh9gpLI75GndVJ3GdD5soM5-p7zjLEBMKls7wFQRkKiZw7r-Q>
 <xmx:7axTXiYK4d3j8xndCEeDylH7DAgYfHrpspQOaMPMJ2zryJiOFBF_2Q>
 <xmx:7axTXvINQpa3s1NrVBiSHThpOsjpCYByxIgwTPYIhYnm3f3f7HhLDA>
 <xmx:76xTXguzJNiO0fOLLqMGRMeXVH-bHX0VrUTxCVQTQS6xoCpM9ZDL8Q>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 8B3CC3060FD3;
 Mon, 24 Feb 2020 06:01:01 -0500 (EST)
Date: Mon, 24 Feb 2020 12:01:00 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Ondrej Jirman <megous@megous.com>
Subject: Re: [PATCH 1/3] arm64: dts: sun50i-a64: Add i2c2 pins
Message-ID: <20200224110100.acwln7zv3j5y67b2@gilmour.lan>
References: <20200223172916.843379-1-megous@megous.com>
 <20200223172916.843379-2-megous@megous.com>
MIME-Version: 1.0
In-Reply-To: <20200223172916.843379-2-megous@megous.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_030106_461464_DCD87318 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Luca Weiss <luca@z3ntu.xyz>,
 linux-arm-kernel@lists.infradead.org, Samuel Holland <samuel@sholland.org>,
 Bhushan Shah <bshah@kde.org>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, Martijn Braam <martijn@brixit.nl>,
 Georgii Staroselskii <georgii.staroselskii@emlid.com>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Corentin Labbe <clabbe@baylibre.com>, devicetree@vger.kernel.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============8619318150289438811=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8619318150289438811==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="itczx53dk2nynkp7"
Content-Disposition: inline


--itczx53dk2nynkp7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Feb 23, 2020 at 06:29:14PM +0100, Ondrej Jirman wrote:
> PinePhone needs I2C2 pins description. Add it.
>
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> index 862b47dc9dc90..0fdf5f400d743 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> @@ -671,6 +671,11 @@ i2c1_pins: i2c1-pins {
>  				function = "i2c1";
>  			};
>
> +			i2c2_pins: i2c2-pins {
> +				pins = "PE14", "PE15";
> +				function = "i2c2";
> +			};
> +

Setting it as the default muxing for i2c2 would be great

Maxime

--itczx53dk2nynkp7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXlOs6wAKCRDj7w1vZxhR
xWI6AP44VoFKHK85VXx0xXuA1V0bHXa63zvjVyvoz5TB5O0mBAEAkLlwyvfiL8mG
2Ch1ACilRsLV/RB4PLsPCRzuHl8uNwU=
=M8JW
-----END PGP SIGNATURE-----

--itczx53dk2nynkp7--


--===============8619318150289438811==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8619318150289438811==--

