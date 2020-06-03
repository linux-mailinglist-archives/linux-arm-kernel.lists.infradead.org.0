Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF6A1ECCD3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 11:44:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=G1TiujIfCbIFg45o1052B7/1L8kwbEwsWdtKrDF6ff4=; b=IYbViPf+xiDnpBL9AGGrnGZt/
	Qyw0yFyiMMxJdXxGRudwgekAtOlfosk/Y5dMahg3blk1noEwwS7vvaeI9gHEPA1/fvU/Xce0udNF7
	3mXZ/ws+y1KcIauvvk2NtkYc1rnqB4Alb3tLoYQjQwolM+6hoZ2gYChPLZi+nWjnTGSky+baHwQ2z
	Dnv49ntmLI3h08e9HfPgjnCCI9MugRK1BEFpt6vYsesBq9qtbGSvvT735bprdv336kOMTKbOYiBLv
	jeqEA+dhN2ZJ8TCxOHSLCFttIKJtZP/hQwpn78+QcdaRiY02fmEIb90b3nMIEXmcEn7d1j2vVlKZx
	39L035jPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgPwD-0001aO-HM; Wed, 03 Jun 2020 09:43:57 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgPw6-0001ZZ-A0; Wed, 03 Jun 2020 09:43:52 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 5337B5C00E8;
 Wed,  3 Jun 2020 05:43:46 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 03 Jun 2020 05:43:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=/ZRtaUlz4PlaZqSMUd3N2FgMnKs
 n8HhEgU7Tp69UW18=; b=E8hZCBPlOVM6zLvOJoUSHEwlSgWCpO9ACGcIS5aNLG9
 /gtndLVUDUV4275Lsyod8d6l2IsBXSEI+K+WPObDVPlPjq8A+CRMCub/3zHvLwrK
 dPJ41hMxKArfkw+4/cyfS0/rXLYwkuMfsMgKpTUL8Ezyrk7u4q6EHE+o4NRZHIWB
 CKGeqVajWdw95jJptBaUp81rzIsNKM2xI1TAqoPCGqJHVCZPUUWIbyqxxMpa8lO1
 xq4IEAOr70FZt51l24SJcUZU00TP3dbBAkSmsljgbmn19ucBD0R7RkdcGhAbCTSB
 C488QEmVfKnjp8Z02W/3OzlPHFeUuc/V3ltOBkBzr8Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=/ZRtaU
 lz4PlaZqSMUd3N2FgMnKsn8HhEgU7Tp69UW18=; b=SINOAoT4JazfhbsKagJ+zM
 d6URX6ZQpUZXzvGcmyqXfxZMAigbP+Yt1qyuPAFD+OB3SaMViqCgkC708lkLxz87
 2lo5D2YVxOsH1ljgm0+REEuQQ2Y2qVnFBcKFX+1XhVfMt0mffA3KkFw+JK9qczQJ
 s4CoV6cyFtWXj8NcfuursB0TVb/OYE8MWIJKhNScpOQ5d8vSOFBilFGrN8JLRGTQ
 Rj795VyzyVoJvEGapA5l84sMzwHdxx/zC0b19mR+9p+1dka43RVxbaJ7KAbmT2SN
 7gZuBubGFwRCiLWRx6Nw4AJmXXwp+liM9rgJLKUFtrWX4AVQ4xlXNoTpFHErMNvA
 ==
X-ME-Sender: <xms:0XDXXsprLaI-R2cY4HNKV7UqEr457KLah4HqP0C1nx_DOPpHIjOU9A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudefledgudegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
 gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:0XDXXip9XK6gOgtuK7SGr-IOLDmyaBc1EesBZyAoE4ltObPibRzu5Q>
 <xmx:0XDXXhNf7RsYEgS74MemgPswjemOUnRB2c8inF8Vla1_A_mWBrqyfw>
 <xmx:0XDXXj7544uB7aWwYDG9e-8-uRVrXD71GoGSJft06o_3Tiz8h87aEA>
 <xmx:0nDXXotXVcuFG2slJmfXNfn18LF27JAd5RhvwS88RjsrhDj4GbWV_A>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 38CBD328005D;
 Wed,  3 Jun 2020 05:43:45 -0400 (EDT)
Date: Wed, 3 Jun 2020 11:43:43 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Eric Anholt <eric@anholt.net>
Subject: Re: [PATCH v3 055/105] drm/vc4: hvs: Introduce a function to get the
 assigned FIFO
Message-ID: <20200603094343.p3exkblfmse5mmcn@gilmour>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
 <f1b1737fe0665e7191c3d2a3cd9bfafb831866be.1590594512.git-series.maxime@cerno.tech>
 <CADaigPUpH4DuK_FSVGmq-ZPPCtvxOcdq881h9h3NE1_ODJ6tuA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CADaigPUpH4DuK_FSVGmq-ZPPCtvxOcdq881h9h3NE1_ODJ6tuA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_024350_665012_121CE32C 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.25 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.25 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 DRI Development <dri-devel@lists.freedesktop.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3806483458557836891=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3806483458557836891==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5n2cnfauefut5xjz"
Content-Disposition: inline


--5n2cnfauefut5xjz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Eric,

On Wed, May 27, 2020 at 12:40:02PM -0700, Eric Anholt wrote:
> On Wed, May 27, 2020 at 8:50 AM Maxime Ripard <maxime@cerno.tech> wrote:
> >
> > At boot time, if we detect that a pixelvalve has been enabled, we need =
to
> > be able to retrieve the HVS channel it has been assigned to so that we =
can
> > disable that channel too. Let's create that function that returns the F=
IFO
> > or an error from a given output.
> >
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > ---
>=20
> > +int vc4_hvs_get_fifo_from_output(struct drm_device *dev, unsigned int =
output)
> > +{
> > +       struct vc4_dev *vc4 =3D to_vc4_dev(dev);
> > +       u32 reg;
> > +       int ret;
> > +
> > +       switch (output) {
> > +       case 0:
> > +               return 0;
> > +
> > +       case 1:
> > +               return 1;
> > +
> > +       case 2:
> > +               reg =3D HVS_READ(SCALER_DISPECTRL);
> > +               ret =3D FIELD_GET(SCALER_DISPECTRL_DSP2_MUX_MASK, reg);
> > +               if (ret =3D=3D 0)
> > +                       return 2;
> > +
> > +               return 0;
> > +
> > +       case 3:
> > +               reg =3D HVS_READ(SCALER_DISPCTRL);
> > +               ret =3D FIELD_GET(SCALER_DISPCTRL_DSP3_MUX_MASK, reg);
> > +               if (ret =3D=3D 3)
> > +                       return -EPIPE;
> > +
> > +               return ret;
> > +
> > +       case 4:
> > +               reg =3D HVS_READ(SCALER_DISPEOLN);
> > +               ret =3D FIELD_GET(SCALER_DISPEOLN_DSP4_MUX_MASK, reg);
> > +               if (ret =3D=3D 3)
> > +                       return -EPIPE;
> > +
> > +               return ret;
> > +
> > +       case 5:
> > +               reg =3D HVS_READ(SCALER_DISPDITHER);
> > +               ret =3D FIELD_GET(SCALER_DISPDITHER_DSP5_MUX_MASK, reg);
> > +               if (ret =3D=3D 3)
> > +                       return -EPIPE;
>=20
> Oh, FIELD_GET is new to me.  Looks like we should replace
> VC4_GET_FIELD usage with just using that header, and also
> VC4_SET_FIELD with WARN_ON(!FIELD_FIT()); FIELD_PREP.
>
> Could you follow up with that?

I will :)

> Other than that, 54-67 r-b.

Thanks!
Maxime

--5n2cnfauefut5xjz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXtdwzwAKCRDj7w1vZxhR
xSigAP9SVbehxfj1alttR069S1VUOyKC5fYaX83YpNFbUoAeiwD9HUSzu+1SMdx5
MFPJEKUFVFrMkPNpooUcet+mJufu5g0=
=QbRd
-----END PGP SIGNATURE-----

--5n2cnfauefut5xjz--


--===============3806483458557836891==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3806483458557836891==--

