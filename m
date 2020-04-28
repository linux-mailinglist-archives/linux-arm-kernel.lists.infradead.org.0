Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6C51BB842
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 09:58:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1+CnjOCXxzMCQ6ORLCOy7KhiYql1p+L8+mwHhvmVC0Y=; b=YxcTBZtr1MwcG+v2vozQf9tFU
	SSaPhlVVINbKc1AcBiEHDdmvMrcMGXHgO1W52oFIldSs4gmzt0D0y49M6PyXmZFdbEvD9M2LH0DA7
	XIWpeaJNBe3R4nqwpwvfq6C1Yo2lntvuHCWGMMrzrg3yAGZoRMX78fq2wB8c7eKX86H1eTXZdX8FX
	TUriT9M6hSH7kuvX9sH8yTICgVFQFFkStEXCN4DlF+B3yUgEUQ5ymZX3fch4Tb2AweMr8+5dRdE9B
	R7/75xwVST2qEKr6WV5aAOjvwsl2IdZWCBUWQa8JP+RJq7SKInB1pE+TSaLiHhAhhArg8Wd4uoLjy
	bMDQ9D3Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTL8Q-0005G5-B2; Tue, 28 Apr 2020 07:58:30 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTL8G-0005Fj-3p
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 07:58:21 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 53D78580139;
 Tue, 28 Apr 2020 03:58:19 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 28 Apr 2020 03:58:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=E2zDRhRAXT59srKZrN/sdPOtf/1
 VxLhZFcu+n6RQ+70=; b=e+s/MFO1aKDyXc98fjOF6sGkjUtEDWkRrtpM1gXl59Y
 /4bEIjhRPD8pcErFk+EStYtKDaXCs3erk4Cifkz4VNoPzt7YcisKqsXB3oemRy9G
 jWXc95m9/dApLNcaJ78xwkS/aUmQ+3Gq2GS5OLevDuwMjFs+v4rWl2SFJ2l4r//M
 g8tXmawyEt7QgMxu2cKcvQA5dHWxVI7+HSSBhGxjD3QC9Rm6f1sedhccHvfZo9kN
 UCCGHR/QdLfbOW5j8iSpojFHZGXIFfM5RI2RE33GrhW+OZi5jv14ChIpm4OyV1IW
 vAxuwUvzNrz4V5a0+qrUIxfw3EzSJD/zAYqpSPNPRAg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=E2zDRh
 RAXT59srKZrN/sdPOtf/1VxLhZFcu+n6RQ+70=; b=G+Do9nnyXMVKs+tVrfUW/x
 lPzV2CSYXrAZkSaVCBm8LxW0KlOHZVn9VpMs49KE4FlxhYhgJO/d/Q53fJcYnF+8
 6ls8hCtb2voX1zGPjVnPqdyhV4fv4uCxKDJPytvXJvJZkUS/JHqHG6WYheSXpFy5
 CxI/V1qdyujXz/Cdvy+bGl8wEk1XFGFB+jSqCug+MjESFUqjs3ZCKpcxNX3fBoYd
 z2NjTa32fi4kGAWZrUsom6+C5weSGcXrvjKADn6MhaUAzKqpxAgY+pcp+99oR4XY
 ST0uuaNKIQ07k83mmeCygu2IHyLZw7lw0z1bbJ7adAE1JAxPAwQ7w1ounSwPMseA
 ==
X-ME-Sender: <xms:GuKnXlQp9-TvG0uZNDh0JTcfGTyDVOWb_vI5cCDQ7sHPnzaPNX-U3Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedriedtgdduvddvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddunecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:GuKnXpCuCThrunnZ6dFJYzWl3_95Qc-NEcGLy3N09_n9Nz8qtkDHdw>
 <xmx:GuKnXsmBtkjBZaH7hPWjH0_OynDP__2OulZYbSq882aHtQ-wCIC7tA>
 <xmx:GuKnXhkewsyxDRHdqfwjYNbJ49HYxCPwbj3_A4iYLuIMRF6pUtU41g>
 <xmx:G-KnXhewACw1mmiW1mKWwm47E5k5TAvNIRXUXQPs-9F1wK6umaOnwg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 025803280067;
 Tue, 28 Apr 2020 03:58:17 -0400 (EDT)
Date: Tue, 28 Apr 2020 09:58:16 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH 2/7] arm: dts: sunxi: h3/h5: Add HDMI audio
Message-ID: <20200428075816.p46abv7rrnlg6my6@gilmour.lan>
References: <20200426120442.11560-1-peron.clem@gmail.com>
 <20200426120442.11560-3-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200426120442.11560-3-peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_005820_295326_1364CC7D 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Takashi Iwai <tiwai@suse.com>,
 Rob Herring <robh+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Marcus Cooper <codekipper@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7447498742924845130=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7447498742924845130==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bats57frlj3pqipa"
Content-Disposition: inline


--bats57frlj3pqipa
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, Apr 26, 2020 at 02:04:37PM +0200, Cl=E9ment P=E9ron wrote:
> From: Marcus Cooper <codekipper@gmail.com>
>=20
> Add a simple-soundcard to link audio between HDMI and I2S.
>=20
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  arch/arm/boot/dts/sunxi-h3-h5.dtsi | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
>=20
> diff --git a/arch/arm/boot/dts/sunxi-h3-h5.dtsi b/arch/arm/boot/dts/sunxi=
-h3-h5.dtsi
> index 9be13378d4df..3a4262294950 100644
> --- a/arch/arm/boot/dts/sunxi-h3-h5.dtsi
> +++ b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
> @@ -105,6 +105,25 @@
>  		status =3D "disabled";
>  	};
> =20
> +	hdmi_sound: hdmi-sound {
> +		compatible =3D "simple-audio-card";
> +		simple-audio-card,format =3D "i2s";
> +		simple-audio-card,name =3D "allwinner,hdmi";
> +		simple-audio-card,mclk-fs =3D <128>;
> +		simple-audio-card,frame-inversion;
> +		status =3D "disabled";
> +
> +		simple-audio-card,codec {
> +			sound-dai =3D <&hdmi>;
> +		};
> +
> +		simple-audio-card,cpu {
> +			sound-dai =3D <&i2s2>;
> +			dai-tdm-slot-num =3D <2>;
> +			dai-tdm-slot-width =3D <32>;
> +		};
> +	};
> +
>  	soc {
>  		compatible =3D "simple-bus";
>  		#address-cells =3D <1>;
> @@ -672,6 +691,7 @@
>  			dmas =3D <&dma 27>;
>  			resets =3D <&ccu RST_BUS_I2S2>;
>  			dma-names =3D "tx";
> +			allwinner,playback-channels =3D <8>;

This property doesn't exist in the binding

Maxime

--bats57frlj3pqipa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXqfiGAAKCRDj7w1vZxhR
xXKlAQCv6MNWlrAX1U69XHGf0wvaL+nfygE1iVSzCRhMAp+wdAD/d9UJm7+SpDnw
YKDqJ4jLcBeUm3rEGjBnSLcIByUUNwI=
=l3WT
-----END PGP SIGNATURE-----

--bats57frlj3pqipa--


--===============7447498742924845130==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7447498742924845130==--

