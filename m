Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C7D1B3861
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 08:59:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mZ6bF7XEqmxdgctGVzuopZ+qxm/Eq68ofg3WIpF/DaM=; b=JeQ5/MSpGpVcQb6+Z/h9VEBvG
	V99oAA1blTlZ3zbN+RUdBnARaNIuRCYY2A9tz2N6U3UteomXID+WDJl94Aw9pWB0b0kpOmmfrYK2z
	EtKJ4XjWbAVlgW4bgWhnPQ9+vjwmzXD6X7Qi4emgl9amLIjJUVzr1Q9H52oFS834z9KiJ3+Q+VNeC
	rxcOMUo5R3ESEA8YQt42DOLQ4wxlonz7jEAFZjoWOSDKqmvcObHeDIgcfWDGKHUrO8xp18DhlZFgP
	OnpmjWpnL/d1l2HTfLMiO0tXRwwclgvOqcWns90/R48RVipGjYxEYysKZ5LEEA10iyYPGdImJ5+IN
	VxoWmQjog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR9Lq-0008KU-ON; Wed, 22 Apr 2020 06:59:18 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR9Lf-0008JT-OU
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 06:59:09 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 200DC580411;
 Wed, 22 Apr 2020 02:59:04 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 22 Apr 2020 02:59:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=OBWSZn5yL6C+0MElTSOqVaCW++0
 OPBYI5fNYvq+pEHg=; b=bMf9CAeA2qQJ910ltYGk8M4n59VpYtkxPbBsMY2mF5k
 C1D31j+DGMJXFMWafxFzzKxiq47wKyniw3lDYVX8i+l1jX6c1eF0tRk1GkWSOZ3S
 qnQx8xbO7JetKyD63x0fh9OS6F1ywCpCjQly2STOccfuJfxgo9yuunQppGqXg5/p
 aKWUxDr/EzH/vdzO1LpnBug8zzlVB0FnmaEbfxetKs+hGkpChF0nmgox7nHMh0O0
 5BIslk4ShM+PagnQp8yKSPoQXx1vQ2fbejnVZAvqDvTACpC4Tz1cGlnqYzsfD0Ne
 tZimuo1fl3eN2YRUbWphh8QQzca/AabtAQoQAn3029w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=OBWSZn
 5yL6C+0MElTSOqVaCW++0OPBYI5fNYvq+pEHg=; b=JMyiz1ItUJ7Ylapm1wIlks
 5Bqbb91qhD3ti0a4dYJLooFh978YTL44arqDHJxb2wrgtFsekjdc4tvR6bUzkXch
 pKr6stQFc9E5AWObMnnnMeiQtlNdNTCeBAjqxf/e3wcWvLyH6AIAYP5OLFLju3cx
 xjqn87oFWjlC4nnSyZqKMYPiAUuxjdj1m/SR1lmJr+GFT1tCcQXUpx5euYW26+v9
 j4reObSR2Ltn3FCXLvUK/FXuSOnMR0TUZNUZhmMd+1ujiVzMPTuJz3wjBzztq+sZ
 gmlgJ/hjE9qwacVfNmJMiPU+MQQB1IVRsTxM6IFfwKxhjxmB9FQ5oHAcXFrLjy0w
 ==
X-ME-Sender: <xms:NuufXtusbAAnXI2JkCPqDpOxPo7D3mglz98hgYgAdRfXoRjWfLeTUw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrgeeigdduuddvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:NuufXjH-t66UOHBgEzUFRXJ645axhWyjb7cMDnr6CdoeY4i6c_gtzA>
 <xmx:NuufXsgu3nRiTBOH0NFEPwI5UmZM_eZxBhcCzlvLV_cUtBqiC8O4Ag>
 <xmx:NuufXoBRoGuUSj9nLG6mchqic8hWu6Lt-T-uN5ZmfffKcxTZlfCEZg>
 <xmx:OOufXq3L1pOYuPd1SrFFc8u4vgA616DBjBNwoqjTW-JY4YSjxXgsLQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id BD3CD3280065;
 Wed, 22 Apr 2020 02:59:01 -0400 (EDT)
Date: Wed, 22 Apr 2020 08:58:59 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: Re: [PATCH v6 00/12] ARM/MIPS: DTS: add child nodes describing the
 PVRSGX GPU present in some OMAP SoC and JZ4780 (and many more)
Message-ID: <20200422065859.quy6ane5v7vsy5tf@gilmour.lan>
References: <20200415101008.zxzxca2vlfsefpdv@gilmour.lan>
 <2E3401F1-A106-4396-8FE6-51CAB72926A4@goldelico.com>
 <20200415130233.rgn7xrtwqicptke2@gilmour.lan>
 <C589D06E-435E-4316-AD0A-8498325039E3@goldelico.com>
 <10969e64-fe1f-d692-4984-4ba916bd2161@gmail.com>
 <20200420073842.nx4xb3zqvu23arkc@gilmour.lan>
 <b5a06c19-7a3e-bcb8-5ae3-76901b9c6c35@gmail.com>
 <20200421112129.zjmkmzo3aftksgka@gilmour.lan>
 <20200421141543.GU37466@atomide.com>
 <D9D4D057-A73D-485F-898D-5C05E89C16B7@goldelico.com>
MIME-Version: 1.0
In-Reply-To: <D9D4D057-A73D-485F-898D-5C05E89C16B7@goldelico.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_235908_168361_02636043 
X-CRM114-Status: GOOD (  18.54  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Tony Lindgren <tony@atomide.com>,
 James Hogan <jhogan@kernel.org>, Jonathan Bakker <xc-racer2@live.ca>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 linux-mips@vger.kernel.org, Paul Cercueil <paul@crapouillou.net>,
 linux-samsung-soc@vger.kernel.org,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 Paul Burton <paulburton@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 David Airlie <airlied@linux.ie>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, linux-omap <linux-omap@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>,
 OpenPVRSGX Linux Driver Group <openpvrsgx-devgroup@letux.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 kernel@pyra-handheld.com
Content-Type: multipart/mixed; boundary="===============4423364029386526432=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4423364029386526432==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2amunzakhfscp3kq"
Content-Disposition: inline


--2amunzakhfscp3kq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 21, 2020 at 07:29:32PM +0200, H. Nikolaus Schaller wrote:
>=20
> > Am 21.04.2020 um 16:15 schrieb Tony Lindgren <tony@atomide.com>:
> >=20
> > * Maxime Ripard <maxime@cerno.tech> [200421 11:22]:
> >> On Tue, Apr 21, 2020 at 11:57:33AM +0200, Philipp Rossak wrote:
> >>> I had a look on genpd and I'm not really sure if that fits.
> >>>=20
> >>> It is basically some bit that verify that the clocks should be enable=
d or
> >>> disabled.
> >>=20
> >> No, it can do much more than that. It's a framework to control the SoC=
s power
> >> domains, so clocks might be a part of it, but most of the time it's go=
ing to be
> >> about powering up a particular device.
> >=20
> > Note that on omaps there are actually SoC module specific registers.
>=20
> Ah, I see. This is of course a difference that the TI glue logic has
> its own registers in the same address range as the sgx and this can't
> be easily handled by a common sgx driver.
>=20
> This indeed seems to be unique with omap.
>=20
> > And there can be multiple devices within a single target module on
> > omaps. So the extra dts node and device is justified there.
> >=20
> > For other SoCs, the SGX clocks are probably best handled directly
> > in pvr-drv.c PM runtime functions unless a custom hardware wrapper
> > with SoC specific registers exists.
>=20
> That is why we need to evaluate what the better strategy is.
>=20
> So we have
> a) omap which has a custom wrapper around the sgx
> b) others without, i.e. an empty (or pass-through) wrapper
>=20
> Which one do we make the "standard" and which one the "exception"?
> What are good reasons for either one?
>=20
>=20
> I am currently in strong favour of a) being standard because it
> makes the pvr-drv.c simpler and really generic (independent of
> wrapping into any SoC).
>=20
> This will likely avoid problems if we find more SoC with yet another
> scheme how the SGX clocks are wrapped.
>=20
> It also allows to handle different number of clocks (A31 seems to
> need 4, Samsung, A83 and JZ4780 one) without changing the sgx bindings
> or making big lists of conditionals. This variance would be handled
> outside the sgx core bindings and driver.

I disagree. Every other GPU binding and driver is handling that just fine, =
and
the SGX is not special in any case here.

Maxime

--2amunzakhfscp3kq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXp/rLwAKCRDj7w1vZxhR
xcRVAP9+eh7XB+uk8H5QIqpRYRnQPao/m3tRHXHCz92z/5kY+QEA3HL1hmXIYsGR
wTCOHiq6ZSI4eoHYRySSWAqNuTf5LwI=
=1ETM
-----END PGP SIGNATURE-----

--2amunzakhfscp3kq--


--===============4423364029386526432==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4423364029386526432==--

