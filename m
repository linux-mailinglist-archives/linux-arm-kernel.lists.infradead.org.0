Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CF5E1BB8A2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 10:15:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ErmCb5iG6ZJLcyXD8zezwuQm8kiIuDqSrmKjfmxbXOw=; b=i9EyJN/EJ5pCxFQbUxWvw3yV2
	JJ0RsD4NJ/Mw4v5zExKUw2kLZKCfPjIHfSH6LXEv94zyMj647boSus3etlx/SxcKml15u/nE/zhcD
	Z3IQO2ymGDbshSWjTQWJLcrJaNgkUkQC2f1mKC5PL88fJacKURqAWrmYziaUik9ucrPuSKLoI340j
	8t+/dtvM1OLZMIS+6M+hKEG1AJlx+mEMKac6qQvy1hKlNSd4xknOY5Nhi+wiW796vjK513UWMvVUP
	iHhM/2YoSWJpFiQzR1EDVhjneI/ihiHdEY7EksBPidM3clixyzJpWcjNEDdHhjGHgjssEFpHhi8V/
	hmqQdJENg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTLOL-0000Xc-7Y; Tue, 28 Apr 2020 08:14:57 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTLOB-0000Wx-OF
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 08:14:49 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id EC5E25800DA;
 Tue, 28 Apr 2020 04:14:46 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 28 Apr 2020 04:14:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=Rl2dKFp212hN23zX63f+C/P6dfS
 tbQu0uWJ4H7pCcec=; b=V7lGextHwtaxIFTLlazW3bKC48l9uSC2as9K94BLlMN
 z+AIrtVYMgFeI5s1fzR2vZJLTgCYuMiBHXX8XjwKg40/GBOj9YbDA8X3/9dtlL2p
 Ej2qudOwnoPoD9HGVJLJ8dtKa7sjd/lGCFZcVV8/0BYE+V4Gw1pSyKcpfTroKhkf
 KwRym875pnQhhDJwsEA7HoCRGs+5gYjlAisfoxfEoDdudnOXt9J8mFNU/VNRKi9H
 ae0dMzVTUQpVx/8162Z2XjOeCVGYggcWGm1Z92aTlEUDLmUxdFlyHdO2VWBzGMqi
 ic9o79CB86xGTeVdfrkOBgE+nJARcul+d1ZZceJiOAA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=Rl2dKF
 p212hN23zX63f+C/P6dfStbQu0uWJ4H7pCcec=; b=0KR9/7Z4PvGy27sTQOgVhj
 fGBAcavBXb62ROKnUOLF+FhaTXS1GLunRIez5dtgmzfkV37pamU2rRkRFGMSVzpL
 9flAOJrM3Xg9COKeQPuLSHSw8gwvwjQ9zWKuCLxiXWDdrGuxQ/rVVkzMBg4KSOXn
 6TlxnGOu3BsGNZ89VLacYb9DB+bll6azrrXztMMNlwksskTU/cC1HtY2ZjW7Tk6p
 OdosNU7dG2H61smxEyfMxjjLcLOKqIHFAMA3CNthGapohsg2TmBAzu2hZ29P2idq
 W74I9/CgUDRPa56fZZ7sxMSLHirhyUyXf3U1jUdVkLPFWRamKxx/JUM0z2SJ3RFA
 ==
X-ME-Sender: <xms:9uWnXsCpwV72yiqvxhE4nlArD6ON2JmAIoGATUy4T4viAwDmIL002Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedriedugddtvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtudenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:9uWnXgYfvH5yydUG2zNGQbmZvHRp1Jgmr6I2BlxSAswQCOVr9Hd72Q>
 <xmx:9uWnXkvL3rjW4j_ePDEEF4RS3SbMxrhRIp6P0PFVwJegIDnkOFqqrw>
 <xmx:9uWnXi9ad555hJxDt44hBAfwSzBHkpTsqqS5RQnRq1C3b-mP-reWIg>
 <xmx:9uWnXgFEU8EeGc3Pciue44v7fhSNlZ52z06WyNWJc36pdBh_avXZxQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id BBFA13065E8D;
 Tue, 28 Apr 2020 04:14:45 -0400 (EDT)
Date: Tue, 28 Apr 2020 10:14:44 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v3 7/7] arm64: dts: sun50i-h6: Add HDMI audio to H6 DTSI
Message-ID: <20200428081444.vddwswsorl5tf7yp@gilmour.lan>
References: <20200426104115.22630-1-peron.clem@gmail.com>
 <20200426104115.22630-8-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200426104115.22630-8-peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_011447_928647_4BD96B4E 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
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
 linux-kernel@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Takashi Iwai <tiwai@suse.com>, Rob Herring <robh+dt@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Marcus Cooper <codekipper@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6018478763347067045=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6018478763347067045==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="34tj5oypfixbg5ni"
Content-Disposition: inline


--34tj5oypfixbg5ni
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Apr 26, 2020 at 12:41:15PM +0200, Cl=E9ment P=E9ron wrote:
> From: Jernej Skrabec <jernej.skrabec@siol.net>
>=20
> Add a simple-soundcard to link audio between HDMI and I2S.
>=20
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 31 ++++++++++++++++++++
>  1 file changed, 31 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/bo=
ot/dts/allwinner/sun50i-h6.dtsi
> index a5ee68388bd3..558fe63739cb 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> @@ -88,6 +88,24 @@
>  			(GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
>  	};
> =20
> +	sound_hdmi: sound {
> +		compatible =3D "simple-audio-card";
> +		simple-audio-card,format =3D "i2s";
> +		simple-audio-card,name =3D "allwinner-hdmi";

It doesn't seem to be on purpose, but the name is different from the other
series you sent.

Maxime

--34tj5oypfixbg5ni
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXqfl9AAKCRDj7w1vZxhR
xSzfAQCyUP2gys2O31vFV8nbzG01R6D7k8xImWeYCJji+veaSgEA8v2gBNki9GaR
+i4rWPFMYJfnRvxQOzIiQzMgStA4hQ4=
=PQem
-----END PGP SIGNATURE-----

--34tj5oypfixbg5ni--


--===============6018478763347067045==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6018478763347067045==--

