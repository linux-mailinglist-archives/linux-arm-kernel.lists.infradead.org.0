Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DFAD1B4855
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 17:14:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Y+/4L5z63uwLhLufQvvkTreBolEWaYmB8QlokKT22mM=; b=gla7F6ZQnCVMsBWW5xXWksZ3s
	nBeTXoA4x4UTZdKCsFQSabinPdwX9zd8sVszo2iycwldQpY1fZ0kE2ioQmsscYzmzYEmiEt8XiNmB
	iYI33NY5aVZK2Lall9weYTz6C+zXspeQGSeYEitGvhsinrodOBRQJuBuwFNOnT3HfvdDZj14ZCjAO
	Iy/fQtHy7/ADBUYmnwl9P6vVYZAea6TioVxOw9/Kwp5kY4bl/06Sg00SEuN8ErsflQmX8plp9hBEe
	8FZ5GAQ+1LZjb2P1kEMwrpuZzecbKViUK1rbaDHu72kO/npG1fqhQGWNH9V5JtoCRRpyul2B4H8LM
	HeqbQ8vCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRH4U-0002nL-KR; Wed, 22 Apr 2020 15:13:54 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRH4I-0002m6-JV
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 15:13:44 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 91DD65800DD;
 Wed, 22 Apr 2020 11:13:36 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 22 Apr 2020 11:13:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=/ftWw9tHlitciumaaug4a1Czrh7
 36GE3jEJuWgmD3SY=; b=tbwhr2e9IectRyCHdVrQk9XLSpGKO6zc9jdte3x5eKI
 sy8rt00KrKw5fVcnWrZz6/Vg/BfNuEhQyZwrlAXZNp/4BLSPEhyHMJrev0eiWq9T
 PGDheS8Aj9EaKjnj2Rj8abBAktYTjqE3jI+E+JPO0Ef3HjnK+qarV8do007cCviK
 AqBIbW/exkVD7DfQbAmUZAeH+dHfZgRYLkLddFp+1tNhexzgvILBhSpzgQYUxJMp
 i0Pk5VGK42WWdThariqK+N3mhnRLknIwjhTWzGNdmp+onIo4tAD/2B0i6IE4tW17
 r4eTEIpARnksJO0lhIrwzomO8Zq/VLJ8MGTkYFE7DGw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=/ftWw9
 tHlitciumaaug4a1Czrh736GE3jEJuWgmD3SY=; b=bse4Moqzfl9bRZmpeMKwID
 +adLbBq6TvV7yZkdrsx4H5E6vrYt6vRuT4wmbdHsIwgoZJ2/49MLuCpgJNu7OegP
 JF6KaANRzn80w0ye3onNFi2jElrQmMu14F3UcUdoBI8XMWWup4zdqsqLAKYLDOGr
 34YnDDLkzz6s6/rmKzgk1NbXHNjCiQwN8CJa0zZW30Vixn7wiV31o7eH4AbM5mQi
 3RI1mPho3FdOAqAE2JCqcLcX41rPEbvQrYAX68V9w2kdHmZI2Fy0xC3gvWip6DjT
 27HC/zTnnYCvHO7L4XCH+Pc0IqmRdinX3cFmc9K1UZUCxEZiE2cmbP5E9hsXjf6A
 ==
X-ME-Sender: <xms:Gl-gXghEoq-o-n5nwsG1IKrj0JWzudlgpH6yLlXPty2TyAoB68C_8g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrgeejgdejlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:Gl-gXsQHg22AOERE85yCpjhFXTKZXMp9oVSpayV_m_ygC_0sXGwKfA>
 <xmx:Gl-gXutctsLbbOSAuoWkag-wuB64l7CIOa8b_-hySmQE9JfsQIgtgg>
 <xmx:Gl-gXkn1vTZZxkYuwLgB-85wA1D7KCrx7wMTwtD3jCFuYHOUaWUVyg>
 <xmx:IF-gXggCCQFHcUcvNnWqcdFSVFP7l3urmIa4aTlNEv39JTfX-8TrxQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id E8B423280068;
 Wed, 22 Apr 2020 11:13:29 -0400 (EDT)
Date: Wed, 22 Apr 2020 17:13:28 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: Re: [PATCH v6 00/12] ARM/MIPS: DTS: add child nodes describing the
 PVRSGX GPU present in some OMAP SoC and JZ4780 (and many more)
Message-ID: <20200422151328.2oyqz7gqkbunmd6o@gilmour.lan>
References: <20200415130233.rgn7xrtwqicptke2@gilmour.lan>
 <C589D06E-435E-4316-AD0A-8498325039E3@goldelico.com>
 <10969e64-fe1f-d692-4984-4ba916bd2161@gmail.com>
 <20200420073842.nx4xb3zqvu23arkc@gilmour.lan>
 <b5a06c19-7a3e-bcb8-5ae3-76901b9c6c35@gmail.com>
 <20200421112129.zjmkmzo3aftksgka@gilmour.lan>
 <20200421141543.GU37466@atomide.com>
 <D9D4D057-A73D-485F-898D-5C05E89C16B7@goldelico.com>
 <20200422065859.quy6ane5v7vsy5tf@gilmour.lan>
 <1AA57A0C-48E6-49BB-BB9A-2AAFFB371BCD@goldelico.com>
MIME-Version: 1.0
In-Reply-To: <1AA57A0C-48E6-49BB-BB9A-2AAFFB371BCD@goldelico.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_081342_809075_B3B7E8A2 
X-CRM114-Status: GOOD (  23.07  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: multipart/mixed; boundary="===============5086445445067327499=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5086445445067327499==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rleqzgonq2kd6jcq"
Content-Disposition: inline


--rleqzgonq2kd6jcq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 22, 2020 at 09:10:57AM +0200, H. Nikolaus Schaller wrote:
> > Am 22.04.2020 um 08:58 schrieb Maxime Ripard <maxime@cerno.tech>:
> >=20
> > On Tue, Apr 21, 2020 at 07:29:32PM +0200, H. Nikolaus Schaller wrote:
> >>=20
> >>> Am 21.04.2020 um 16:15 schrieb Tony Lindgren <tony@atomide.com>:
> >>>=20
> >>> * Maxime Ripard <maxime@cerno.tech> [200421 11:22]:
> >>>> On Tue, Apr 21, 2020 at 11:57:33AM +0200, Philipp Rossak wrote:
> >>>>> I had a look on genpd and I'm not really sure if that fits.
> >>>>>=20
> >>>>> It is basically some bit that verify that the clocks should be enab=
led or
> >>>>> disabled.
> >>>>=20
> >>>> No, it can do much more than that. It's a framework to control the S=
oCs power
> >>>> domains, so clocks might be a part of it, but most of the time it's =
going to be
> >>>> about powering up a particular device.
> >>>=20
> >>> Note that on omaps there are actually SoC module specific registers.
> >>=20
> >> Ah, I see. This is of course a difference that the TI glue logic has
> >> its own registers in the same address range as the sgx and this can't
> >> be easily handled by a common sgx driver.
> >>=20
> >> This indeed seems to be unique with omap.
> >>=20
> >>> And there can be multiple devices within a single target module on
> >>> omaps. So the extra dts node and device is justified there.
> >>>=20
> >>> For other SoCs, the SGX clocks are probably best handled directly
> >>> in pvr-drv.c PM runtime functions unless a custom hardware wrapper
> >>> with SoC specific registers exists.
> >>=20
> >> That is why we need to evaluate what the better strategy is.
> >>=20
> >> So we have
> >> a) omap which has a custom wrapper around the sgx
> >> b) others without, i.e. an empty (or pass-through) wrapper
> >>=20
> >> Which one do we make the "standard" and which one the "exception"?
> >> What are good reasons for either one?
> >>=20
> >>=20
> >> I am currently in strong favour of a) being standard because it
> >> makes the pvr-drv.c simpler and really generic (independent of
> >> wrapping into any SoC).
> >>=20
> >> This will likely avoid problems if we find more SoC with yet another
> >> scheme how the SGX clocks are wrapped.
> >>=20
> >> It also allows to handle different number of clocks (A31 seems to
> >> need 4, Samsung, A83 and JZ4780 one) without changing the sgx bindings
> >> or making big lists of conditionals. This variance would be handled
> >> outside the sgx core bindings and driver.
> >=20
> > I disagree. Every other GPU binding and driver is handling that just fi=
ne, and
> > the SGX is not special in any case here.
>=20
> Can you please better explain this? With example or a description
> or a proposal?

I can't, I don't have any knowledge about this GPU.

> I simply do not have your experience with "every other GPU" as you have.
> And I admit that I can't read from your statement what we should do
> to bring this topic forward.
>=20
> So please make a proposal how it should be in your view.

If you need some inspiration, I guess you could look at the mali and vivante
bindings once you have an idea of what the GPU needs across the SoCs it's
integrated in.

Maxime

--rleqzgonq2kd6jcq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHQEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXqBfGAAKCRDj7w1vZxhR
xVRsAPYpkPvaPx/Gv4bZtD3Q7LlR8I4ICX5CAiGURBKX85mvAQCaSeZMVEC2ANUR
ZQ5hvxKQcP4oYw7VwmIsM46WtpHQDg==
=lYBS
-----END PGP SIGNATURE-----

--rleqzgonq2kd6jcq--


--===============5086445445067327499==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5086445445067327499==--

