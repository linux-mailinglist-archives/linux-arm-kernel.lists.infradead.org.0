Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 212D415DE3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 09:07:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BvBW59PBF2ox097riEPdsaOZMh8RWk0LM1GFKMhNBO8=; b=mQzcIuI+1ql4qdKrmy2/4pyTY
	rHO8eQARJ7BOQU4V9iH+wWBE3ulzuIoKAXQfkj0ixWu23k677HjbN/V+ML0czO7A09gk0hMwNwYaj
	+cIUZmMKYHCs7MBtyPux8iXlxp7U4SzVq8HLBiCs4s0nIPxfgXAjIjHkn3nbB3/9aVAVD8/m0UJKE
	Q8BncMOSskozJct9wLkO84WCOe/heaid6NcZMGAoRoRLv7nAGoHmlM/ezouchCOiR+Y2pRj4URUX8
	CuY3p9WGp0Q956hV9gPqCBknCVGYiBPiZWd1UjUBx8F+6/WVDIU1bAYXXBMd29cmzLIslvKDJp9ez
	0zPuBmGMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNuBr-0006Ra-0R; Tue, 07 May 2019 07:07:03 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNuBi-0006QC-NC
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 07:06:56 +0000
Received: from localhost (aaubervilliers-681-1-29-145.w90-88.abo.wanadoo.fr
 [90.88.149.145]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 1420C100012;
 Tue,  7 May 2019 07:06:41 +0000 (UTC)
Date: Tue, 7 May 2019 09:06:41 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jagan Teki <jagan@amarulasolutions.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>
Subject: Re: [linux-sunxi] Re: [PATCH v2] arm64: allwinner: h6:
 orangepi-one-plus: Add Ethernet support
Message-ID: <20190507070641.7whs4ckiqupaah35@flea>
References: <20190503115928.27662-1-jagan@amarulasolutions.com>
 <20190503144651.ttqfha656dykqjzo@flea>
 <CAMty3ZCQTiX5OvCG_uMRS02vFu0c1-bkcyauLD6oaFcd=y3RNA@mail.gmail.com>
 <20190506133101.c3twwwydy5mez3db@core.my.home>
MIME-Version: 1.0
In-Reply-To: <20190506133101.c3twwwydy5mez3db@core.my.home>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_000655_050749_75CA0DB9 
X-CRM114-Status: GOOD (  23.84  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4738755748858421670=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4738755748858421670==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="t252ai7obnvmcokm"
Content-Disposition: inline


--t252ai7obnvmcokm
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 06, 2019 at 03:31:01PM +0200, Ond=C5=99ej Jirman wrote:
> > > > ---
> > > > Changes for v2:
> > > > - emac changes on top of https://patchwork.kernel.org/cover/1089952=
9/
> > > >   series
> > > >
> > > >  .../allwinner/sun50i-h6-orangepi-one-plus.dts |  8 ++++
> > > >  .../dts/allwinner/sun50i-h6-orangepi.dtsi     | 42 +++++++++++++++=
++++
> > > >  2 files changed, 50 insertions(+)
> > > >
> > > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-p=
lus.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-plus.dts
> > > > index 12e17567ab56..9e8ed1053715 100644
> > > > --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-plus.dts
> > > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-plus.dts
> > > > @@ -9,4 +9,12 @@
> > > >  / {
> > > >       model =3D "OrangePi One Plus";
> > > >       compatible =3D "xunlong,orangepi-one-plus", "allwinner,sun50i=
-h6";
> > > > +
> > > > +     aliases {
> > > > +             ethernet0 =3D &emac;
> > > > +     };
> > > > +};
> > > > +
> > > > +&emac {
> > > > +     status =3D "okay";
> > > >  };
> > > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi =
b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi
> > > > index 62e27948a3fa..c48e24acaf8a 100644
> > > > --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi
> > > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi
> > > > @@ -45,6 +45,48 @@
> > > >               regulator-max-microvolt =3D <5000000>;
> > > >               regulator-always-on;
> > > >       };
> > > > +
> > > > +     /*
> > > > +      * The board uses 2.5V RGMII signalling. Power sequence to en=
able
> > > > +      * the phy is to enable GMAC-2V5 and GMAC-3V (aldo2) power ra=
ils
> > > > +      * at the same time and to wait 100ms.
> > > > +      */
> > > > +     reg_gmac_2v5: gmac-2v5 {
> > > > +             compatible =3D "regulator-fixed";
> > > > +             regulator-name =3D "gmac-2v5";
> > > > +             regulator-min-microvolt =3D <2500000>;
> > > > +             regulator-max-microvolt =3D <2500000>;
> > > > +             startup-delay-us =3D <100000>;
> > > > +             enable-active-high;
> > > > +             gpio =3D <&pio 3 6 GPIO_ACTIVE_HIGH>; /* GMAC_EN: PD6=
 */
> > > > +
> > > > +             /* The real parent of gmac-2v5 is reg_vcc5v, but we n=
eed to
> > > > +              * enable two regulators to power the phy. This is on=
e way
> > > > +              * to achieve that.
> > > > +              */
> > > > +             vin-supply =3D <&reg_aldo2>; /* VCC3V3-MAC: GMAC-3V */
> > > > +     };
> > > > +};
> > > > +
> > > > +&emac {
> > > > +     pinctrl-names =3D "default";
> > > > +     pinctrl-0 =3D <&ext_rgmii_pins>;
> > > > +     phy-mode =3D "rgmii";
> > > > +     phy-handle =3D <&ext_rgmii_phy>;
> > > > +     phy-supply =3D <&reg_gmac_2v5>;
> > > > +     allwinner,rx-delay-ps =3D <1500>;
> > > > +     allwinner,tx-delay-ps =3D <700>;
> > > > +};
> > > > +
> > > > +&mdio {
> > > > +     ext_rgmii_phy: ethernet-phy@1 {
> > > > +             compatible =3D "ethernet-phy-ieee802.3-c22";
> > > > +             reg =3D <1>;
> > > > +
> > > > +             reset-gpios =3D <&pio 3 14 GPIO_ACTIVE_LOW>; /* RGMII=
-RESET: PD14 */
> > > > +             reset-assert-us =3D <15000>;
> > > > +             reset-deassert-us =3D <40000>;
> > > > +     };
> > > >  };
> > >
> > > ... however, at no point in time you explain why you made that switch,
> > > and while most of the definition of the EMAC nodes is in the DTSI, you
> > > only enable it in one DTS.
> >
> > The dtsi is shared b/w 1+ and lite2 and 1+ has emac, so I enabled the
> > status directly on dts and keeping the relevant nodes on dtsi just
> > like SoC dtsi does. do I need to mention this in commit log?
>
> Lite 2 doesn't have reg_gmac_2v5 and it also doesn't have the external ph=
y.
> But with this patch, reg_gmac_2v5 will also show up in the Lite 2's final
> DTB.
>
> Comapred to SoC dtsi, the SoC always has things that are in the dtsi, they
> are just not enabled/used by the board, but they are present on the chip.
>
> So this comes down to what the meaning of board-level dtsi should be. I
> doubt we want it to mean "a collection of stuff that may or may not be
> present on the boards that depend on it".

Agreed.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--t252ai7obnvmcokm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXNEugQAKCRDj7w1vZxhR
xSqpAP9+c1gUKZN/ouCvKfloPe7AajE+A0yKbWtfWhHElWT14QEAzjJAuWb8Rv+a
FfdAW6X7qq2yr9sNkluAa/DRkDrm+Q8=
=30DV
-----END PGP SIGNATURE-----

--t252ai7obnvmcokm--


--===============4738755748858421670==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4738755748858421670==--

