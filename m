Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A541BB85D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 10:02:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Qr84Y9meBkhWgcYx1WoPhMbF/AeA4EprvUsNEXPUMZc=; b=DfaRojGS7xe3OaqmAC4dkaITw
	I4Y9aHTSkDHlcOBxtHwVGdRSpDXBroYsfaUs5IerWQvcR7bREmkNWE0XRWS1r7QcUjSGEh0amh/9X
	/S19Zi2tWZDdvyoRAaOVv9ddRWix+ej07ZmLKdWZ+6mwQhRhtJcknYB8Yf6KxshqPWHxKQoCFk6CF
	Rgna/kA3obwyW2n13KmfAZ7/2QH4PE4NN7f2Pxk0j50ETMdHhqDkbEsOJ5YsRdsL6ZxKBqmGQwufK
	vy+ztaekfMsqadPwcH6lk2/JPCbrMAoPSz/Mcjo54B2/0oaQqjZpLWbZXRli+h8jh0LKig0t/1+/P
	4HRZUEbmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTLCA-0000ZF-UU; Tue, 28 Apr 2020 08:02:22 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTLC0-0000Xe-UA
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 08:02:14 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 65BEE58031B;
 Tue, 28 Apr 2020 04:02:11 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 28 Apr 2020 04:02:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=rgw/xMhvmtBFVnJEJieJuuX6oqE
 JNwtIrwF23ef3G7c=; b=rPrCkZZlKnK/4lvcnBnc5GbS1IXoysk2ALvP6IoJ3pO
 X7TY4hEjjaw/Vu5Sfj2cld0y7gpcMITeylr7N29uEzIwTmQPa4pM4YH1YuIWZIrF
 FFvs5xeWzyMORxjjWL4gyYDs8oPq0hp71SssLZWhy4lngd/CtD6kiOVvOUElc68i
 +OdhjqRZfLhye13LPThW6kxc4/QzkCzeFh9QadqrxH42EFMu1WWS0mHj7PnTv1lP
 gmqYLYPw3Rb5Yafh4JbyiqkDX7VM0BmdwGW9cjPuuoBwlQx8TAij7sxIdPtuQ1hW
 8ylbIJbYT/3TmpLGD2/FwCGTAKnLy1B4/qz1sBCZnFw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=rgw/xM
 hvmtBFVnJEJieJuuX6oqEJNwtIrwF23ef3G7c=; b=fMrR8klVr6SLP+PoH7M9vZ
 WiZ4vuAsb3YryyOMTs1cKZc2SNQXMGkSux3MsnM5yezkRj7+LptPjiSgTMxU8f0i
 +2IEiHr7I4FTdSwLvxFwX4d8NNnjZIca3/AOdkzwTBXX9eJLuoVACh49Z8UtLZ3n
 lchiJYs5v9erT0rPHWdJGvLFk/RfZdANEv1iGLdQYI8ztm3Z6PmTTOZxo5gnECqa
 I+2+tPpROkkjBfsOP+3+Pxaos7CR8wZXuE6CAuj4pgRYdblGScxo//mgeGVKiWTl
 0sCk9RU3DmqYlZrQKNTEqXFculOs3nuZ4zYCzdwGHDpXGoXsyU5rK/RqBpZh0kjA
 ==
X-ME-Sender: <xms:AuOnXgcGCuDMch6YM8lSZxKuJBJqQNakEroCMWRotKCW98kqNsyVtQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedriedtgdduvdefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddunecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepudenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:AuOnXrkmideO35ESHUCljugD81INszOX0Np_il6r7qfw5634zI8dNw>
 <xmx:AuOnXqDwuu7c1NbDMhZ7kKkcRx8F3EKSg6xszfDHI-xVVak5KvxjQA>
 <xmx:AuOnXleygGlaT7k0NHSa9CaIelT_5SB_A3dBY6_IyKIStZcTSd1ZEg>
 <xmx:A-OnXj7zoCfq_gjZ4KwWaLsGpWqEar0zZ23KM9qOd5WqVbFkBj5mKA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 5B0083280063;
 Tue, 28 Apr 2020 04:02:10 -0400 (EDT)
Date: Tue, 28 Apr 2020 10:02:09 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v3 1/7] ASoC: sun4i-i2s: Adjust LRCLK width
Message-ID: <20200428080209.2n7eeaksfze7jicn@gilmour.lan>
References: <20200426104115.22630-1-peron.clem@gmail.com>
 <20200426104115.22630-2-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200426104115.22630-2-peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_010213_109259_17A41975 
X-CRM114-Status: GOOD (  12.78  )
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
 linux-kernel@vger.kernel.org, Takashi Iwai <tiwai@suse.com>,
 Rob Herring <robh+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Marcus Cooper <codekipper@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8504641322492994111=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8504641322492994111==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qwt7wotkij5dx55c"
Content-Disposition: inline


--qwt7wotkij5dx55c
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Apr 26, 2020 at 12:41:09PM +0200, Cl=E9ment P=E9ron wrote:
> From: Marcus Cooper <codekipper@gmail.com>
>=20
> Some codecs such as i2s based HDMI audio and the Pine64 DAC require
> a different amount of bit clocks per frame than what is calculated
> by the sample width. Use the values obtained by the tdm slot bindings
> to adjust the LRCLK width accordingly.
>=20
> Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  sound/soc/sunxi/sun4i-i2s.c | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
> index d0a8d5810c0a..4198a5410bf9 100644
> --- a/sound/soc/sunxi/sun4i-i2s.c
> +++ b/sound/soc/sunxi/sun4i-i2s.c
> @@ -455,6 +455,9 @@ static int sun8i_i2s_set_chan_cfg(const struct sun4i_=
i2s *i2s,
>  		return -EINVAL;
>  	}
> =20
> +	if (i2s->slot_width)
> +		lrck_period =3D i2s->slot_width;
> +

Acked-by: Maxime Ripard <maxime@cerno.tech>

Thanks!
Maxime

--qwt7wotkij5dx55c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXqfjAQAKCRDj7w1vZxhR
xW9rAP9E5eTw2YKxU5C8kBBozs78d4lLnoBuIYyVxy8RIdQnUgD/ZqU2MRZZPXQ/
K2A3JMxDdOeMf5EQwLUdDtKXLCralQ4=
=F0Hq
-----END PGP SIGNATURE-----

--qwt7wotkij5dx55c--


--===============8504641322492994111==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8504641322492994111==--

