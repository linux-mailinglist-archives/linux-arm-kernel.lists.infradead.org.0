Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2ADE1BF34C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 10:46:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PtbJqxDfcSTgSQLysCZFb8MDV4zav832HKZxIZ5dfA4=; b=gxfoRBHE7ZIkdDb6BI6k3Pld7
	UsDAksae4gE+XacO4VkGZSDtT3R5cJQWDNWr0KQYNzs27bo9Lga4Gup13Ua1R2Mm6yXu/lgNXtw3i
	Crm88jqEYO8JGXQoT2xT1BLA7mY3ZB3hkg46FOMdJNEIuAbXDIAiBmljWopBLYbTMgWtIc2ohyP8g
	WNw4NpeX1COsHGGLle6zJZ+3j+azLm6GQqnELBjR+Y0XqT/kXeTT7tRbGVEuUkr/ku6nbSrAWpN8o
	6FQc1J4aWys8/yj4nb+mEHpjgJ1EvO4hL7pic5u+rWGjLeMQoDhLCV8TkO+oebRFRWMt3q7Nxbw8u
	D/tPeo2TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU4pt-0006AW-VE; Thu, 30 Apr 2020 08:46:25 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU4pf-000697-4Z
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 08:46:12 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 941B190D;
 Thu, 30 Apr 2020 04:46:05 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 30 Apr 2020 04:46:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=fpjtGZf8AqSI48exIlo8OnF8z0r
 obzEYf4a720y11JI=; b=Crn54lkBtd00EaqOJspktSUBCz50ahh6oNvAj45B9nN
 Iwl59n8WUN4O2OGxKJz0cNVwsmE3RdYV+3VrQAcA7L7umKCCt2/DUlTmNUBMr56Q
 BxuwEjBk4fF/pEj8TJOyPTUbKDBAkAxpha/IstRwOrsXiHC+nn78wQf7BVCXC8HC
 gRpC2Ih4tLzOA5KnczD36BWaZL6SuZQTuoggbyx8ySwZWqhfeRqjGqznqCne+QIq
 fES7oWLLnLoImdP9lHX0evFtLflOksq9e9Z+1A3dQhGjo+HAPhAQC1voptWLQyUv
 eKp6xf83V69RUKxIEV6G9GTJtNnN3VcfNvpxQPHuc0A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=fpjtGZ
 f8AqSI48exIlo8OnF8z0robzEYf4a720y11JI=; b=MfacvNZm1+/+qJ2z+cBQh9
 CWx/PNOje+aXmEZyXakBvlexfUNKWaee4mYIFb4WPcefbzxemjkRDc6nBp4MOoz4
 k4PmL1Flr7D9pvwoY8BiDFGOki1p61NVDqiezlvuKoOoamyRc02v40H2jxlNrfSH
 p35tV48BXr+yHhgL6RNwaDFQcGW+o2mxWIIrDBvLe2ZJkF2cqLh3deifsMOxWXZ6
 TxHjUoJjnji88vysO/jHChZtcWA0V1YRJNM/h1leuNuCrgGlfxMzjGFCN+7+a5bO
 0BDRiH+2y82LZUMIhvbK3dCeWTQU+GRMMcVangrSLfvoYzivKhm5alewsSNa2JFg
 ==
X-ME-Sender: <xms:SpCqXhoWXIPqto5Zw9q9kGy8eExsyYKiFCJs7MvLNuhXR9-EWk8Ryw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrieehgddtkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtudenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpeduvdduhfekkeehgffftefflefgffdtheffudffgeevteffheeuiedvvdejvdfg
 veenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
 grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:SpCqXt8_Xg_kmJW_z9vDfQNvzkNt0Qy2S24GmNMmKFQqiZAiOHBRvw>
 <xmx:SpCqXmYF-MTqX7R7WKqDvEh1JI1fs8uIYh1nZDFpPLjek26B8d0uNQ>
 <xmx:SpCqXn0MbOxK1PQtCxaoNwCyZulXcZPqOBUhbdCAXq3jAvkcAXmQIQ>
 <xmx:TZCqXsEDR3SBul6X-zgv3p3lwGz03BsnL8RlEu8Btqu5aDV62mGCvDcSyRU>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 3765C3280067;
 Thu, 30 Apr 2020 04:46:02 -0400 (EDT)
Date: Thu, 30 Apr 2020 10:46:00 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v3 3/7] ASoC: sun4i-i2s: Add support for H6 I2S
Message-ID: <20200430084600.samghw4zxb5zdbez@gilmour.lan>
References: <20200426104115.22630-1-peron.clem@gmail.com>
 <20200426104115.22630-4-peron.clem@gmail.com>
 <20200428081321.ht3el26yqhsnyfm4@gilmour.lan>
 <CAJiuCcdVs_drs40Q6537BYfz24F7NmC6B8S5-Lt4V4ggs-FXWA@mail.gmail.com>
 <20200429123529.y24dpy63wxq7uvkt@gilmour.lan>
 <CAJiuCcfXqizcq_JuXRCsqEqM2562cr1SGJ0pmy07jcJxAXojOw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJiuCcfXqizcq_JuXRCsqEqM2562cr1SGJ0pmy07jcJxAXojOw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_014611_424298_82781396 
X-CRM114-Status: GOOD (  17.49  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.17 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Takashi Iwai <tiwai@suse.com>,
 Rob Herring <robh+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Marcus Cooper <codekipper@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============7866735315503498568=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7866735315503498568==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="y3cvvuhxye45tbpz"
Content-Disposition: inline


--y3cvvuhxye45tbpz
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Apr 29, 2020 at 06:33:00PM +0200, Cl=E9ment P=E9ron wrote:
> On Wed, 29 Apr 2020 at 14:35, Maxime Ripard <maxime@cerno.tech> wrote:
> >
> > On Tue, Apr 28, 2020 at 10:55:47AM +0200, Cl=E9ment P=E9ron wrote:
> > > > > +static int sun50i_i2s_set_soc_fmt(const struct sun4i_i2s *i2s,
> > > > > +                              unsigned int fmt)
> > > >
> > > > The alignment is off here
> > > >
> > > > > +{
> > > > > +     u32 mode, val;
> > > > > +     u8 offset;
> > > > > +
> > > > > +     /*
> > > > > +      * DAI clock polarity
> > > > > +      *
> > > > > +      * The setup for LRCK contradicts the datasheet, but under a
> > > > > +      * scope it's clear that the LRCK polarity is reversed
> > > > > +      * compared to the expected polarity on the bus.
> > > > > +      */
> > > >
> > > > Did you check this or has it been copy-pasted?
> > >
> > > copy-pasted, I will check this.
> >
> > It's not going to be easy to do this if you only have a board with HDMI=
=2E If you
> > can't test that easily, just remove the comment (or make it explicit th=
at you
> > copy pasted it?), no comment is better than a wrong one.
>=20
> I have talked with Marcus Cooper it may be able to test this this week-en=
d.
> Also this can explain why we need the "
> simple-audio-card,frame-inversion;" in the device-tree.
>=20
> If think this fix has been introduced by you, correct? Could you say
> on which SoC did you see this issue?

This was seen on an H3

Maxime

--y3cvvuhxye45tbpz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXqqQRwAKCRDj7w1vZxhR
xc06AP4quZAf2DNrCglxI3FnGicJEvn/UCQlNMdBjtAZiNt6NAEAklrbdL9EUUv6
PaDu07BZiJ7iqnqxZPn5egwCTM/O1Ac=
=jFs3
-----END PGP SIGNATURE-----

--y3cvvuhxye45tbpz--


--===============7866735315503498568==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7866735315503498568==--

