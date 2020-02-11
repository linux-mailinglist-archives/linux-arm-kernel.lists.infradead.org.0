Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A66158B55
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 09:36:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yrlO7QLIicY2C3w86APa1qvjkCYc6qlM1yu+4d/y8wo=; b=iW4Qfn0iNuSFpnwv2yrpaaNWe
	fgcNfsgKOfLo9HEVMK5bscaBufV/dO8Jx6hoeP5px8z5iZ7EVZNlPHFMJ09fZjIHp/N6ehRd+Kv0C
	GU3qtRXWkaQ+/qVe7tBtuRyyCzzoKutrF0cSQ8m1sZrp1n/NiA4OKsWJ4K3KEA3Z5hMlY7TJ3t4PU
	+gSvEhXaMoyhUCHGJSW0T3p1SkM3OML/2eJskvs/p4Uk3W2nmN7Yz6JcFEUxc1nt8Xbh2tln9xE5v
	IWNnWFoDMkAsJLYvTcE6DVQizZbDGpFCehrwpzhsENDbsux4F2hNfCcIugkeV3G1PQOqgQaVPAg28
	EchQdv03Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1R1N-0003Wi-Gy; Tue, 11 Feb 2020 08:35:53 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1R1C-0003Uw-Mv
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 08:35:44 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id EC04C21FBC;
 Tue, 11 Feb 2020 03:35:41 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Tue, 11 Feb 2020 03:35:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=hFJPLcnX8s+3qIibRSJBHtz36o0
 Xcn/sOE9MnHdM2nc=; b=mOhmXSeHq26+QkB6NNaPcF7iJe+NUrPjcs9h1UM6HxE
 1v4f1t/E8wrLAIyGQ6+4xpAw6/ClNPhfwZ8JJtz8eZEZ56cv2hrEoen6A/KU2P+6
 9cZyEMTTkNacGdzqHakFT2uVb67N7EQIAX5dcagKxOab2+MPjcAhFKvxtzOUyCCr
 DrnNckO8RO9Y47OamqAz2Dcf2U83fLVYffzN8DVFZXdz+6Vp4cpQQfGetn36bj/m
 4r30osjF+/3S6HVkgJasOOhRRE38JOv6+P7eN8ZmQH003lRpUJ2k8q3wiUiNU5N8
 Rnd/BJmZamIC4Eg+gGpq2EoEmynSbgHmL3mIIEn2HDQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=hFJPLc
 nX8s+3qIibRSJBHtz36o0Xcn/sOE9MnHdM2nc=; b=FTWAl0a3DGQCpyOaobOCBY
 ldmAheX1HeEtYFHQtS5RklwF6RtaAcle/jG/0TqpmSAhZwzbPKl/g+fL6OMJFbpx
 PQ3DqTA992mPk93syf2j2zKRRM1yh/oBMvALa56U9kC4ayH3YZTKlwrnkLsbOL4P
 c0oDJ/MJza5snqrRyAvi/Jp+wL7v46KpmF5ixZNdv5OJAFpAEE/7ZGsAtHlPYzmo
 hsJ/Bx3Rzbglb4iKGpzefXu0eC/kjQMvKIvAqOcip3eV/G8tk9xO2rwbawn2H6Oq
 YiXQkqv4awjVLAOQK3ADsV6P7gWj23H+vv0BKVyxlxEuTF2obzBoy2ukqlVxTYeg
 ==
X-ME-Sender: <xms:XWdCXpZogL5KTOSweHyx6aZx_aDEzRF__be1i8TpE611rjsVJu-3xg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedriedvgdduvdduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttdejnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:XWdCXty0q4wMncxGba1tOZQp_hv4opMhLG0T0vqlX4drutiF74HOUA>
 <xmx:XWdCXle6226wyAmAowvxW7zI-oYNboOYdO1mjvowJ0VcUBJx-FrDZg>
 <xmx:XWdCXi5Dp2A7YN6SFIRW_xiXIwj2MeLfFa0bpj3tPZnKK5kwXRbBqw>
 <xmx:XWdCXhg_vFke7fRwPoFxzH-xhpZpfMTdNuxnI1RwFZtBzRP7JOfdtA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1EDF3328005A;
 Tue, 11 Feb 2020 03:35:41 -0500 (EST)
Date: Tue, 11 Feb 2020 09:35:39 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>
Subject: Re: [PATCH v2] arm64: dts: allwinner: h6: orangepi-3: Add eMMC node
Message-ID: <20200211083539.wciujb6zgjxnwkio@gilmour.lan>
References: <20200210174007.118575-1-jernej.skrabec@siol.net>
 <20200211065141.2kn2gsg5kvzu7kl6@gilmour.lan>
 <5325319.DvuYhMxLoT@jernej-laptop>
MIME-Version: 1.0
In-Reply-To: <5325319.DvuYhMxLoT@jernej-laptop>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_003542_891678_82840D55 
X-CRM114-Status: GOOD (  20.42  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1051663086465455278=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1051663086465455278==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gz5taobraj7y6ke5"
Content-Disposition: inline


--gz5taobraj7y6ke5
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 11, 2020 at 08:09:57AM +0100, Jernej =C5=A0krabec wrote:
> Hi!
>
> Dne torek, 11. februar 2020 ob 07:51:41 CET je Maxime Ripard napisal(a):
> > On Mon, Feb 10, 2020 at 06:40:07PM +0100, Jernej Skrabec wrote:
> > > OrangePi 3 can optionally have 8 GiB eMMC (soldered on board). Because
> > > those pins are dedicated to eMMC exclusively, node can be added for b=
oth
> > > variants (with and without eMMC). Kernel will then scan bus for prese=
nce
> > > of eMMC and act accordingly.
> > >
> > > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > > ---
> > > Changes since v1:
> > > - don't make separate DT just for -emmc variant - add node to existing
> > >
> > >   orangepi 3 DT
> > >
> > >  arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts | 9 +++++++++
> > >  1 file changed, 9 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> > > b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts index
> > > c311eee52a35..1e0abd9d047f 100644
> > > --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> > > @@ -144,6 +144,15 @@ brcm: sdio-wifi@1 {
> > >
> > >  	};
> > >
> > >  };
> > >
> > > +&mmc2 {
> > > +	vmmc-supply =3D <&reg_cldo1>;
> > > +	vqmmc-supply =3D <&reg_bldo2>;
> > > +	cap-mmc-hw-reset;
> > > +	non-removable;
> >
> > Given that non-removable is documented as "Non-removable slot (like
> > eMMC); assume always present.", we should probably get rid of that
> > property?
>
> I checked mmc core code and this property means that bus will be scanned =
only
> once. In this form, node doesn't tell what kind of device is connected, so
> core has to scan it no matter if "non-removable" property is present or n=
ot. I
> maybe missed something though, so it would be great if someone can check =
it
> again.

It looks like it does indeed :)

I've applied that patch, thanks!
Maxime

--gz5taobraj7y6ke5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXkJnWwAKCRDj7w1vZxhR
xQ9DAPwKsJ5NfkwTvuzamY+OX8zTm78ylv/XrhL2Zjagyt1lSAEAiV+LhGVcTzyw
qAB87cY7DepYjwV8j3ucYDyOZ57UYgM=
=UejU
-----END PGP SIGNATURE-----

--gz5taobraj7y6ke5--


--===============1051663086465455278==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1051663086465455278==--

