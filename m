Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2681BD786
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 10:48:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O3JTCqGjFr7XwfsapW14kfYIN9ZHA3w8oreYdyhS33I=; b=UAEjCsIK8yS2aLQlFG9OnrRhp
	NG5MdS2Fv6M0Lf0hsPrx7//e1AVHhpCP2TcGhUxJLql66JVrj8jkg19tIRoC3ShoL/Cl9L4zn0Z+B
	csOdOtlKmTw587CcS1fsB4HlwK0gWkX9BqusUA2DJQdPlML8MR1tG6uNaNceCbCcxJMQhHR4pPpdT
	2VxM3igDaOs3QReguq/HC7xLWxxpRwd9yZtCD3yMdKhAm8ZT4afCnG3eGdXVqm72cMtPC4a2wB00x
	fmoUCJ0Yy6K/t/Jg2ZpDuVwhGZ55/jWuMlOaDXXsg3hWU1CNdJV7y2LwIcqgqvoCWzeQncp40gjcM
	3yYnbHfOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTiNd-0003SN-Sx; Wed, 29 Apr 2020 08:47:45 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTiNQ-0003Qc-2J
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 08:47:33 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 9AB75580104;
 Wed, 29 Apr 2020 04:47:30 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 29 Apr 2020 04:47:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=+x1hnvO451DFLw58Xq3iUsbF2Jz
 alXMCx3P3fGnFW08=; b=mDylNO0ImdJQcBjcJhxqGwZ0gLH65YlOxSjvQREEP3f
 4qGYzmConM9HkJufYMjsnhf4/U5f/nMYa7Y4bpNHEPZRGxnLHIjQiWjERglE53zA
 oKMD/cPGAwRaPGqCJ5/SiN46qyNsjQGFSvMny9nDQB6IkO1SJfBgD9EdtiaVDZ7d
 A/0pbA75VQ1czsx3Ud3zZ0Ct1tM7dRs5LdgkX5nrL4wlzG5WiI+zMV3YRbG6e9lU
 EfEjiSIOEGi0F1dFrhGkZzyaX9IhNnWJBcdmGy3kakaIYmrgYV2DTu3hhEr3UJ+B
 5cyi95cQhZgjntybSHnjxI/ELKDeyPR6wO+DmEdIyNQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=+x1hnv
 O451DFLw58Xq3iUsbF2JzalXMCx3P3fGnFW08=; b=E2GG4YtpPx9b335eVlOleh
 Vf8483NTNxzjs95yfN4uRYnvVs2tiKuUvRyMMVSInBLyjh+qMlQ0dVtjSwJbsDUK
 WQWtSA+Bwb1TRuouQ6Rb6pdXfGYF71YpiWoLMMd4B0/gUi2rfcg5JorfqN0JJssQ
 b5NszxFBVjt1AJHxC1DJ+KMryBcTxX33yCPmx9xaU+gujbvcPTEUhLLXynjJE6yy
 miqhu3mWUKdKBcCgKILcyM6xOfgqmO5G1ZTnt75gOcYXtIUlupWdCgLceHSTqR8Q
 BUigUlYpBZcCXoJnGIlSKCLjDvyVjMLksV6GI/iUupM/vJJdPxnutvDdSf42SJBQ
 ==
X-ME-Sender: <xms:HT-pXhpN54g-6aCMfmUe-4DMD6dWLtA3usgSR6go2S5ER7rxsPhAww>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrieefgddtkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtudenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:HT-pXrVffufAEMQkyDUZKoQp7m4gU6WDQH-928szCVw6XspkjR09Bw>
 <xmx:HT-pXkD0RZGaxlLx-cC-xX6d0cZb-LFHZKS3nww8to01I-3FCcWuVg>
 <xmx:HT-pXuTBDDqX0KhTqh3gFz8BYE7BbY0XahpKNhyToXMGSNRpH-Z_Jw>
 <xmx:Ij-pXvat0UK807ynw6DTDs5CBzCYKJ5Cy3QP0hnPHBSOnNjslvCryA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id D9FE03280066;
 Wed, 29 Apr 2020 04:47:24 -0400 (EDT)
Date: Wed, 29 Apr 2020 10:47:23 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Jonathan Bakker <xc-racer2@live.ca>
Subject: Re: [PATCH v7 08/12] arm: dts: s5pv210: Add node for SGX 540
Message-ID: <20200429084723.jxybvsakniinvivt@gilmour.lan>
References: <cover.1587760454.git.hns@goldelico.com>
 <3fd18c747426e15fd1f3500b9c4adce2db9ddd0c.1587760454.git.hns@goldelico.com>
 <NYBE9Q.YH08US7A7DC3@crapouillou.net>
 <BN6PR04MB0660A180D2069848E5C03D7EA3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
 <20200427154617.GA1798@pi3>
 <BN6PR04MB06605F014024061C894AFBA4A3AC0@BN6PR04MB0660.namprd04.prod.outlook.com>
 <BN6PR04MB0660044B5B1D45BE4CBCD2AAA3AC0@BN6PR04MB0660.namprd04.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <BN6PR04MB0660044B5B1D45BE4CBCD2AAA3AC0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_014732_252887_86A3C19A 
X-CRM114-Status: GOOD (  22.16  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, David Airlie <airlied@linux.ie>,
 "H. Nikolaus Schaller" <hns@goldelico.com>, dri-devel@lists.freedesktop.org,
 linux-mips@vger.kernel.org, Paul Cercueil <paul@crapouillou.net>,
 linux-samsung-soc@vger.kernel.org, linux-omap@vger.kernel.org,
 Paul Burton <paulburton@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, James Hogan <jhogan@kernel.org>,
 devicetree@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, letux-kernel@openphoenux.org,
 linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>, openpvrsgx-devgroup@letux.org,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 kernel@pyra-handheld.com
Content-Type: multipart/mixed; boundary="===============8672687341032957933=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8672687341032957933==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="u22eiu3zouiknukx"
Content-Disposition: inline


--u22eiu3zouiknukx
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Apr 28, 2020 at 03:58:03PM -0700, Jonathan Bakker wrote:
> On 2020-04-28 2:39 p.m., Jonathan Bakker wrote:
> > On 2020-04-27 8:46 a.m., Krzysztof Kozlowski wrote:
> >> On Sun, Apr 26, 2020 at 07:57:12AM -0700, Jonathan Bakker wrote:
> >>> Hi Paul,
> >>>
> >>> On 2020-04-26 5:56 a.m., Paul Cercueil wrote:
> >>>>
> >>>>
> >>>> Le ven. 24 avril 2020 =E0 22:34, H. Nikolaus Schaller <hns@goldelico=
=2Ecom> a =E9crit :
> >>>>> From: Jonathan Bakker <xc-racer2@live.ca>
> >>>>>
> >>>>> All s5pv210 devices have a PowerVR SGX 540 (revision 120) attached.
> >>>>>
> >>>>> There is no external regulator for it so it can be enabled by defau=
lt.
> >>>>>
> >>>>> Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
> >>>>> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
> >>>>> ---
> >>>>> =A0arch/arm/boot/dts/s5pv210.dtsi | 13 +++++++++++++
> >>>>> =A01 file changed, 13 insertions(+)
> >>>>>
> >>>>> diff --git a/arch/arm/boot/dts/s5pv210.dtsi b/arch/arm/boot/dts/s5p=
v210.dtsi
> >>>>> index 2ad642f51fd9..abbdda205c1b 100644
> >>>>> --- a/arch/arm/boot/dts/s5pv210.dtsi
> >>>>> +++ b/arch/arm/boot/dts/s5pv210.dtsi
> >>>>> @@ -512,6 +512,19 @@ vic3: interrupt-controller@f2300000 {
> >>>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 #interrupt-cells =3D <1>;
> >>>>> =A0=A0=A0=A0=A0=A0=A0=A0 };
> >>>>>
> >>>>> +=A0=A0=A0=A0=A0=A0=A0 gpu: gpu@f3000000 {
> >>>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 compatible =3D "samsung,s5pv210-=
sgx540-120";
> >>
> >> This should not pass the bindings check because you missed last
> >> compatibles.
> >>
> >=20
> > Thanks for pointing that out, I'll add it and make sure it passes the b=
indings check.
> >=20
> >>>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 reg =3D <0xf3000000 0x10000>;
> >>>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 interrupt-parent =3D <&vic2>;
> >>>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 interrupts =3D <10>;
> >>>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 clock-names =3D "core";
> >>>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 clocks =3D <&clocks CLK_G3D>;
> >>>>> +
> >>>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 assigned-clocks =3D <&clocks MOU=
T_G3D>, <&clocks DOUT_G3D>;
> >>>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 assigned-clock-rates =3D <0>, <6=
6700000>;
> >>>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 assigned-clock-parents =3D <&clo=
cks MOUT_MPLL>;
> >>>>
> >>>> What are these clocks for, and why are they reparented / reclocked?
> >>>>
> >>>> Shouldn't they be passed to 'clocks' as well?
> >>>>
> >>>> -Paul
> >>>>
> >>>
> >>> The G3D clock system can have multiple parents, and for stable operat=
ion
> >>> it's recommended to use the MPLL clock as the parent (which in turn
> >>> is actually a mux as well).  MOUT_G3D is simply the mux for CLK_G3D
> >>> (SGX core clock), DOUT_G3D is the divider.  DOUT_G3D could equally be=
 CLK_G3D
> >>> (and probably should be, for readability) as CLK_G3D is simply the ga=
te and
> >>> DOUT_G3D is the divider for it.
> >>
> >> Good point, it should be CLK_G3D instead of DOUT.  Can you fix this as
> >> well?
> >=20
> > Yep, will do.  Nikolaus, I'll send you an updated patch to include.
> >=20
>=20
> How are assigned-clocks handled in the yaml DT schema?  When running make=
 dtbs_check,
> I end up with messages such as
>=20
> arch/arm/boot/dts/s5pv210-aquila.dt.yaml: gpu@f3000000: 'assigned-clock-p=
arents', 'assigned-clock-rates', 'assigned-clocks' do not match any of the =
regexes: 'pinctrl-[0-9]+'
>=20
> Do they need to explicitly be listed as valid entries?

If you have additionalProperties set to false, yes. But you should really
consider not using them in the first place, since they provide no guarantee=
 on
whether the setup you did in the DT will remain during the life of the syst=
em.

I'm not sure why it's needed on that SoC in particular, but this should be =
fixed
in the driver itself (either the clock or the GPU driver).

Maxime

--u22eiu3zouiknukx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXqk/GwAKCRDj7w1vZxhR
xR+OAP9zSq/md3bxfVKk4er7ZI7jk8/dQzTxgBO3mo3r+wRqmwEAy6d+UHyzeb5t
qZLq2zIdK45SI8CMqYcGeBsbBQ1iVAc=
=VCha
-----END PGP SIGNATURE-----

--u22eiu3zouiknukx--


--===============8672687341032957933==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8672687341032957933==--

