Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9121BDC6B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 14:36:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oM4tgW8roWKuScHx5LXIY70MzWfvolQG4OjN1eDuQL0=; b=oZ3uMXEkWTtDdaBFfRKCIHT9n
	BNDpkeD70zTiJpNfD1Mc1TXEuNmiwsoLlynDQeAYoCbhhVMuTn4tiKr9wld3eVWA4dHg2dGc009o/
	M5LrNjIrHWW2ciIwEc/7qpQN63n/8P4hator6aUmeWsYRgzAS9vdLy5K9LCK3cGf7lS3Dtn2kfXnr
	svP625eBYeo734H9+vOgK4/iv86CgbYcKO+de4AWbcdTGccbbFVPrMJwmzChMTHUNcOTUvvvwXaXS
	e3+4HT+3gzsfFjwPrRr5KgKC0uWbiEp6yLbEMHftcQCNX4u6nmCNoj12FQGDLyHnBRH1JBO59IoaD
	GiBWShDyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTlwN-0002JI-Hx; Wed, 29 Apr 2020 12:35:51 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTlwB-0002Ib-9P
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 12:35:40 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 4187A5801CC;
 Wed, 29 Apr 2020 08:35:32 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 29 Apr 2020 08:35:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=c+9mUYpBdnOaBwykChFhcenmVtw
 9Gzvx3ldZ3YuHZDE=; b=lMmqBzMsWh43/t2YdttBouyW5iVp6dCQdZj/fOz3H1d
 Dm/7Y0wD1t7Qhqaf1dZSlt//mf/V62NMAx9jNyzT2eA52JxeQlxbaESuOjmXbIDM
 BB0q+8AJMOLGufrIrrDmlRP0zFfbj1x4R0k4Kd1st85gvkhoqJHdJsusVXaIjzG6
 IbzGBzdc1gccaVlznMNMauP7u74kYSbQtubCgo1udKZT60Us4JEO7Lhb9w/O16UH
 OUI81hYbXkI8Z10onZX2w3fDwxM2nIxHY9PWjF4WJ4lv/CBXoNatTymKStK+9lOR
 jdc5z7er/S1wADjy2BkMXEZJxYV16xz8aoABYr+yuEA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=c+9mUY
 pBdnOaBwykChFhcenmVtw9Gzvx3ldZ3YuHZDE=; b=gN+Mn29OayTJ50jcW1+vxJ
 jolSrul8nF4EHDQq2CdeL9WH36K+vk5qtiVbdhUCMDz2OriGY8S9x5zpEZAQD9XY
 zQDRhqIuXCZNSyBbwkBMSH1LfIHVctO1tYRZ7NHa6ibP1cxLoybEDi/kON/OsHHk
 aeH0W6Sm6r14ZrVLWAOFUoaHEe4cENs+2TcKIlVsZugQy/Qi5nrbwGP3rtUcMb7t
 f+d8mCsKWC3K1OhQnnCB9rnhNyQBLu0M3tDeeawWrGwYod8Ljxr8hXJISYzWYZZ/
 XjZIiNIXJI1B1Oqf5kmp+Zo9o5maELICMhOe2wHq6/N8MM2Z7+d/CBW/liq1p/Qg
 ==
X-ME-Sender: <xms:k3SpXpGA2NsI1LpjKQpePExH66TePqj82Bu0RZA-0E16HKXSo74eiw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrieefgdehgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtudenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:k3SpXpcp2cjteMbrV6tVzU1OAb4HfglVBI6S6pWxqvOHWoMc0hStZw>
 <xmx:k3SpXgh6khNMHd7bQAs_djhE6464AP0f1IJNVQhCXkJvenSynyvXow>
 <xmx:k3SpXu7kpl6cHsO55jleUPsBLuO5YGvbwOn8tMIe6nb52uf53qGFtg>
 <xmx:lHSpXl2XuvQ7vHyGfSBrMMkN28yCT0mlxb8jK4PAnimTaNDh77iv3w>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id BD9D13280066;
 Wed, 29 Apr 2020 08:35:30 -0400 (EDT)
Date: Wed, 29 Apr 2020 14:35:29 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v3 3/7] ASoC: sun4i-i2s: Add support for H6 I2S
Message-ID: <20200429123529.y24dpy63wxq7uvkt@gilmour.lan>
References: <20200426104115.22630-1-peron.clem@gmail.com>
 <20200426104115.22630-4-peron.clem@gmail.com>
 <20200428081321.ht3el26yqhsnyfm4@gilmour.lan>
 <CAJiuCcdVs_drs40Q6537BYfz24F7NmC6B8S5-Lt4V4ggs-FXWA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJiuCcdVs_drs40Q6537BYfz24F7NmC6B8S5-Lt4V4ggs-FXWA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_053539_468339_6338913C 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Takashi Iwai <tiwai@suse.com>,
 Rob Herring <robh+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Marcus Cooper <codekipper@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============6962094800037924360=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6962094800037924360==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xa3hju3zorbs63j6"
Content-Disposition: inline


--xa3hju3zorbs63j6
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 28, 2020 at 10:55:47AM +0200, Cl=E9ment P=E9ron wrote:
> > > +static int sun50i_i2s_set_soc_fmt(const struct sun4i_i2s *i2s,
> > > +                              unsigned int fmt)
> >
> > The alignment is off here
> >
> > > +{
> > > +     u32 mode, val;
> > > +     u8 offset;
> > > +
> > > +     /*
> > > +      * DAI clock polarity
> > > +      *
> > > +      * The setup for LRCK contradicts the datasheet, but under a
> > > +      * scope it's clear that the LRCK polarity is reversed
> > > +      * compared to the expected polarity on the bus.
> > > +      */
> >
> > Did you check this or has it been copy-pasted?
>=20
> copy-pasted, I will check this.

It's not going to be easy to do this if you only have a board with HDMI. If=
 you
can't test that easily, just remove the comment (or make it explicit that y=
ou
copy pasted it?), no comment is better than a wrong one.

Maxime

--xa3hju3zorbs63j6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXql0kQAKCRDj7w1vZxhR
xUWEAP0SrqSZD58viGba5AVL4qJo+eXiSzFllUnrvAolQg9p/gEAqQDc4TVprwLF
ugV0n3K3xZMYx6BObJM8w1vig/EXdAA=
=J0U2
-----END PGP SIGNATURE-----

--xa3hju3zorbs63j6--


--===============6962094800037924360==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6962094800037924360==--

