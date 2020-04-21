Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21EEC1B24F7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 13:22:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1Bvp9PlcFHSMOuJVE+g8grfaTMKXFlfGHV3EZvNSOJg=; b=i5eOsnB1sD1IhW4zQZJCYzqR5
	lC1xxO27ue5rvZISTeZQjCOO/ARkzpxXFAKc3DvstT+Eo0dyNNkWxAFWSjpplY4H5fp+0lOCZ/El1
	9kcm+8Na+tWjAK3vwypXEuj89jG/9+wckMLshrRJBKebHvMoFTnM3ZXy1STOUu/8756pqAbwQboLB
	7yCz36giSyW7SqE0/Bj6sjlmBmhQODd4aTf9Y+73F9dI0I7m5aGTgel1cLDo4zQdA/fzs4zP69LQj
	ZAaejYDiu6SW5LSm5QETAMn5CGNoxCFXadAuV23tKDCQmVzWOzEGHjjNjARrUZ9VxN5/d2TFlMy2h
	i8CuBpiow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQqyM-0006Gx-38; Tue, 21 Apr 2020 11:21:50 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQqyA-0006FS-Su
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 11:21:40 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id BAF3D58033F;
 Tue, 21 Apr 2020 07:21:35 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 21 Apr 2020 07:21:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=2qvNJ91IEb/AUiTXH8N0o6OegdF
 zI2xnwcLyFKBhmMg=; b=DNBSndQeBovAjuo60LXetRogX5AaJdhObX1sjwe4xcf
 CMMKX9QJTfF3+rlM36/XMBdZdLJXp1icf6pZtviVuNalueXOigbtH1QTRtnfsPtZ
 TVanzwcq2ykxH3BuowaZjElynooJjih7PGmbX1G9kYfeYGWuzIgsbBIHIYNi1+Y0
 qCjUhMSoau/3xr1yvYpU/Z3L+8mmxso/ek/ZXyer0tJEUcLEfZgonb2zrTShaDHs
 PhgJ9HkBexWIwEEfTZZ7g4BphUuRegIWwuSoCTIR8nTwkQAo/09Jg9+73e9ykzm0
 Qke4n693CDezgFuysXUZueqrhHDh2GQWkqp/d3k9GZg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=2qvNJ9
 1IEb/AUiTXH8N0o6OegdFzI2xnwcLyFKBhmMg=; b=IJl+L5/geetMjN0XJzV3I6
 UmgXvOceReTexMcUdkNPZUUBWhzKBS0xqgmTKNzYFV3pD7V2bA+mZ6jggj+yubnE
 OPexT32D4Ok+h2o3gryATORbu2W667LHIzIK+TkxYZxngRmnL8SOMVgNdWxei0pm
 ICzB6Cm855XL/C4a+Hg8S2GrgtuPyqwG5b84k/fCS2ulC1U3Vm6nEJ0r/9gqt8r7
 Ave1Zuu5XyKUaX/4y2mQmePO54LN9NEp8RBRclCmvuzWFMAiEkxl9DFYpE/cqKRW
 yZaOK/zOseCiM/zs7u7U9pOztzOVoIzVpVsrwjsDcbZat7fL88C1oYrN6GEykR/Q
 ==
X-ME-Sender: <xms:PNeeXnX3SmQG_u6OQi__5pBgi3j-koafOIeW1WBPVRoeu6KFqHqblg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrgeehgdegtdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:PNeeXuEChcO2S-tZ7fJK0z9aQAzoj90uEOW7EOuqdXysmOZ60Ko7HQ>
 <xmx:PNeeXu6ewiM2DHh0QSD66uXdfHCHIQZfx3bLwEuShb8Ny4Dl5-0Dqg>
 <xmx:PNeeXscSi97OlRj2s-EX6uC6eUYe1bPw7EVnrbNk7R-Of5rCmeQ6GQ>
 <xmx:P9eeXuB6eG0fsJ1kExaStSp_hhHi7Bo7rTJCux1YR72gUeDHVqxesw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id EC25B328005D;
 Tue, 21 Apr 2020 07:21:31 -0400 (EDT)
Date: Tue, 21 Apr 2020 13:21:29 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Philipp Rossak <embed3d@gmail.com>
Subject: Re: [PATCH v6 00/12] ARM/MIPS: DTS: add child nodes describing the
 PVRSGX GPU present in some OMAP SoC and JZ4780 (and many more)
Message-ID: <20200421112129.zjmkmzo3aftksgka@gilmour.lan>
References: <cover.1586939718.git.hns@goldelico.com>
 <20200415101008.zxzxca2vlfsefpdv@gilmour.lan>
 <2E3401F1-A106-4396-8FE6-51CAB72926A4@goldelico.com>
 <20200415130233.rgn7xrtwqicptke2@gilmour.lan>
 <C589D06E-435E-4316-AD0A-8498325039E3@goldelico.com>
 <10969e64-fe1f-d692-4984-4ba916bd2161@gmail.com>
 <20200420073842.nx4xb3zqvu23arkc@gilmour.lan>
 <b5a06c19-7a3e-bcb8-5ae3-76901b9c6c35@gmail.com>
MIME-Version: 1.0
In-Reply-To: <b5a06c19-7a3e-bcb8-5ae3-76901b9c6c35@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_042139_359357_DFE7AE46 
X-CRM114-Status: GOOD (  31.85  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, David Airlie <airlied@linux.ie>,
 "H. Nikolaus Schaller" <hns@goldelico.com>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 linux-mips@vger.kernel.org, Paul Cercueil <paul@crapouillou.net>,
 linux-samsung-soc@vger.kernel.org,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 Paul Burton <paulburton@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, James Hogan <jhogan@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, linux-omap <linux-omap@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 OpenPVRSGX Linux Driver Group <openpvrsgx-devgroup@letux.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Daniel Vetter <daniel@ffwll.ch>,
 kernel@pyra-handheld.com
Content-Type: multipart/mixed; boundary="===============0533973713296008136=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0533973713296008136==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bsmwn6lsujflbhcr"
Content-Disposition: inline


--bsmwn6lsujflbhcr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Apr 21, 2020 at 11:57:33AM +0200, Philipp Rossak wrote:
> On 20.04.20 09:38, Maxime Ripard wrote:
> > Hi,
> >=20
> > On Fri, Apr 17, 2020 at 02:09:06PM +0200, Philipp Rossak wrote:
> > > > > I'm a bit skeptical on that one since it doesn't even list the
> > > > > interrupts connected to the GPU that the binding mandates.
> > > >=20
> > > > I think he left it out for a future update.
> > > > But best he comments himself.
> > >=20
> > > I'm currently working on those bindings. They are now 90% done, but t=
hey are
> > > not finished till now. Currently there is some mainline support missi=
ng to
> > > add the full binding. The A83T and also the A31/A31s have a GPU Power=
 Off
> > > Gating Register in the R_PRCM module, that is not supported right now=
 in
> > > Mainline. The Register need to be written when the GPU is powered on =
and
> > > off.
> > >=20
> > > @Maxime: I totally agree on your point that a demo needs to be provid=
ed
> > > before the related DTS patches should be provided. That's the reason =
why I
> > > added the gpu placeholder patches.
> > > Do you have an idea how a driver for the R_PRCM stuff can look like? =
I'm not
> > > that experienced with the clock driver framework.
> >=20
> > It looks like a power-domain to me, so you'd rather plug that into the =
genpd
> > framework.
>=20
> I had a look on genpd and I'm not really sure if that fits.
>=20
> It is basically some bit that verify that the clocks should be enabled or
> disabled.

No, it can do much more than that. It's a framework to control the SoCs pow=
er
domains, so clocks might be a part of it, but most of the time it's going t=
o be
about powering up a particular device.

> I think this is better placed somewhere in the clocking framework.
> I see there more similarities to the gating stuff.
> Do you think it is suitable to implement it like the clock gating?

I'm really not sure what makes you think that this should be modelled as a
clock?

> > > The big question is right now how to proceed with the A83T and A31s p=
atches.
> > > I see there three options, which one do you prefer?:
> > >=20
> > > 1. Provide now placeholder patches and send new patches, if everythin=
g is
> > > clear and other things are mainlined
> > > 2. Provide now patches as complete as possible and provide later patc=
hes to
> > > complete them when the R_PRCM things are mainlined
> > > 3. Leave them out, till the related work is mainlined and the binding=
s are
> > > final.
> >=20
> > Like I said, the DT *has* to be backward-compatible, so for any DT patc=
h that
> > you are asking to be merged, you should be prepared to support it indef=
initely
> > and be able to run from it, and you won't be able to change the binding=
s later
> > on.
>=20
> I agree on your points. But is this also suitable to drivers that are
> currently off tree and might be merged in one or two years?

This is what we done for the Mali. The devicetree binding was first done fo=
r the
out-of-tree driver, and then lima/panfrost reused it.

The key thing here is to have enough confidence about how the hardware work=
s so
that you can accurately describe it.

Maxime

--bsmwn6lsujflbhcr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXp7XOQAKCRDj7w1vZxhR
xY2FAP98NEADiujPOYdZcBw58gJhiTHRG5M+7cY4QmY6LLWi6wEAmaVzzE9csrhP
gszgPuCUwSKxGaUpbu0VHqeb3LVqwQs=
=LITU
-----END PGP SIGNATURE-----

--bsmwn6lsujflbhcr--


--===============0533973713296008136==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0533973713296008136==--

