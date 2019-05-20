Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA3323204
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 13:11:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lJzk6YGcaYrdughWjUcfrrWDxzKhHBjSsF2JCbWVmVs=; b=W74XanFevhF7E4L3D0IIzs6N+
	ohprd7InY3dp6bMiYyRViGIp11ZqRgHZ/XXIt16twQlAM2IWWZuIBolXyMOyU65wndbN8bk9fEW3T
	7iw1RyCYASIS2yNGv2jntccjUuDhBYKmxB3Z+gUXGbIp1cmzNlwq2iDm8bXxkvmleilAHQdGX4UcY
	DA9LGarOdVKNBb8GWIdMhsUaG9sikQGN693NV41snsZvZ0KoHkKdcmMBd2B7rrcDOm7ku1VEtbIch
	qm/g6uEIqc91RkGBHxrBRQvCsbzIdykFWkKCbaXu/cNAqSKMV1WcQK3YkEpjb3QL+mV/N08WycT0X
	f8hZlSyRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSgC6-0001yP-Hq; Mon, 20 May 2019 11:11:02 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSgBy-0001xz-LF
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 11:10:56 +0000
X-Originating-IP: 90.88.22.185
Received: from localhost (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr
 [90.88.22.185]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 75B681C0007;
 Mon, 20 May 2019 11:10:49 +0000 (UTC)
Date: Mon, 20 May 2019 13:10:49 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Chen-Yu Tsai <wens@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [PATCH 4/6] ARM: dts: sun8i: a83t: Add device node for CSI
 (Camera Sensor Interface)
Message-ID: <20190520111048.cnh435fnmz7esyks@flea>
References: <20190408165744.11672-1-wens@kernel.org>
 <20190408165744.11672-5-wens@kernel.org>
 <20190409075804.4zrwjil7ie2gjigu@flea>
 <CAGb2v64CYV68Q0a7x5p-XabS74vaQWP3paPopodmqQPTOrq2gQ@mail.gmail.com>
 <20190409082818.z33mq2qrxethldzf@flea>
 <CAGb2v67pX+7ccihmGEWPKrXg8mMhht-vh37p2auWYgt=qGDA6A@mail.gmail.com>
 <20190409145225.2ltluiyqa5xha4zd@flea>
 <20190519135422.l2bnumyjr3dxehhx@core.my.home>
MIME-Version: 1.0
In-Reply-To: <20190519135422.l2bnumyjr3dxehhx@core.my.home>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_041054_992470_4439885A 
X-CRM114-Status: GOOD (  34.57  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: multipart/mixed; boundary="===============8506051482723871697=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8506051482723871697==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qkatogddc44c6dds"
Content-Disposition: inline


--qkatogddc44c6dds
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Ond=C5=99ej,

On Sun, May 19, 2019 at 03:54:22PM +0200, Ond=C5=99ej Jirman wrote:
> On Tue, Apr 09, 2019 at 04:52:25PM +0200, Maxime Ripard wrote:
> > On Tue, Apr 09, 2019 at 04:40:40PM +0800, Chen-Yu Tsai wrote:
> > > On Tue, Apr 9, 2019 at 4:28 PM Maxime Ripard <maxime.ripard@bootlin.c=
om> wrote:
> > > >
> > > > On Tue, Apr 09, 2019 at 04:07:34PM +0800, Chen-Yu Tsai wrote:
> > > > > On Tue, Apr 9, 2019 at 3:58 PM Maxime Ripard <maxime.ripard@bootl=
in.com> wrote:
> > > > > > On Tue, Apr 09, 2019 at 12:57:42AM +0800, Chen-Yu Tsai wrote:
> > > > > > > From: Chen-Yu Tsai <wens@csie.org>
> > > > > > >
> > > > > > > The A83T SoC has a camera sensor interface (known as CSI in A=
llwinner
> > > > > > > lingo), which is similar to the one found on the A64 and H3. =
The only
> > > > > > > difference seems to be that support of MIPI CSI through a con=
nected
> > > > > > > MIPI CSI-2 bridge.
> > > > > > >
> > > > > > > Add a device node for it, and pinctrl nodes for the commonly =
used MCLK
> > > > > > > and 8-bit parallel interface. The property /omit-if-no-ref/ i=
s added to
> > > > > > > the pinctrl nodes to keep the device tree blob size down if t=
hey are
> > > > > > > unused.
> > > > > > >
> > > > > > > Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> > > > > > > ---
> > > > > > >  arch/arm/boot/dts/sun8i-a83t.dtsi | 31 +++++++++++++++++++++=
++++++++++
> > > > > > >  1 file changed, 31 insertions(+)
> > > > > > >
> > > > > > > diff --git a/arch/arm/boot/dts/sun8i-a83t.dtsi b/arch/arm/boo=
t/dts/sun8i-a83t.dtsi
> > > > > > > index f739b88efb53..0c52f945fd5f 100644
> > > > > > > --- a/arch/arm/boot/dts/sun8i-a83t.dtsi
> > > > > > > +++ b/arch/arm/boot/dts/sun8i-a83t.dtsi
> > > > > > > @@ -682,6 +682,20 @@
> > > > > > >                       #interrupt-cells =3D <3>;
> > > > > > >                       #gpio-cells =3D <3>;
> > > > > > >
> > > > > > > +                     /omit-if-no-ref/
> > > > > > > +                     csi_8bit_parallel_pins: csi-8bit-parall=
el-pins {
> > > > > > > +                             pins =3D "PE0", "PE2", "PE3", "=
PE6", "PE7",
> > > > > > > +                                    "PE8", "PE9", "PE10", "P=
E11",
> > > > > > > +                                    "PE12", "PE13";
> > > > > > > +                             function =3D "csi";
> > > > > > > +                     };
> > > > > > > +
> > > > > > > +                     /omit-if-no-ref/
> > > > > > > +                     csi_mclk_pin: csi-mclk-pin {
> > > > > > > +                             pins =3D "PE1";
> > > > > > > +                             function =3D "csi";
> > > > > > > +                     };
> > > > > > > +
> > > > > > >                       emac_rgmii_pins: emac-rgmii-pins {
> > > > > > >                               pins =3D "PD2", "PD3", "PD4", "=
PD5", "PD6", "PD7",
> > > > > > >                                      "PD11", "PD12", "PD13", =
"PD14", "PD18",
> > > > > > > @@ -994,6 +1008,23 @@
> > > > > > >                       interrupts =3D <GIC_PPI 9 (GIC_CPU_MASK=
_SIMPLE(8) | IRQ_TYPE_LEVEL_HIGH)>;
> > > > > > >               };
> > > > > > >
> > > > > > > +             csi: camera@1cb0000 {
> > > > > > > +                     compatible =3D "allwinner,sun8i-a83t-cs=
i";
> > > > > > > +                     reg =3D <0x01cb0000 0x1000>;
> > > > > > > +                     interrupts =3D <GIC_SPI 84 IRQ_TYPE_LEV=
EL_HIGH>;
> > > > > > > +                     clocks =3D <&ccu CLK_BUS_CSI>,
> > > > > > > +                              <&ccu CLK_CSI_SCLK>,
> > > > > > > +                              <&ccu CLK_DRAM_CSI>;
> > > > > > > +                     clock-names =3D "bus", "mod", "ram";
> > > > > > > +                     resets =3D <&ccu RST_BUS_CSI>;
> > > > > > > +                     status =3D "disabled";
> > > > > > > +
> > > > > > > +                     csi_in: port {
> > > > > > > +                             #address-cells =3D <1>;
> > > > > > > +                             #size-cells =3D <0>;
> > > > > >
> > > > > > If we expect a single enpoint, then we don't need the address-c=
ells
> > > > > > and size-cells properties.
> > > > >
> > > > > I wouldn't bet on anything. The way the Q8 tablets did front/back=
 cameras
> > > > > is kind of genius if not very hacky. They have two "identical" se=
nsors
> > > > > on the same I2C bus and CSI bus, with shared reset line but separ=
ate
> > > > > shutdown lines. Since they are identical, they also have the same=
 I2C
> > > > > address. I haven't figured out how to model this in the device tr=
ee.
> > > > >
> > > > > The point is, it's perfectly possible to have two or more sensors=
 use
> > > > > the same controller, provided only one be active at a time.
> > > >
> > > > Right, but I guess the common case would be to have a single sensor,
> > > > where that wouldn't be needed.
> > > >
> > > > In odd cases, we can always specify it in the DTS, and if it becomes
> > > > common enough, we can move it to the DTSI.
> > >
> > > Makes sense. Do you want me to re-spin?
> >
> > If there's no other comment, we'll fix it when applying.
>
> This patch series seems to have been forgotten. It doesn't seem there are=
 any
> blockers.

Sorry about that :/

> Can you please apply it now? I have some further series (camera module
> support for TBS-A711) that depend on this.

Some parts of it will have to be merged through v4l2, and I can't
apply those patches.

Can you resend that series, and ping on a regular basis (like once a
week) if you don't get any feedback?

Thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--qkatogddc44c6dds
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOKLOAAKCRDj7w1vZxhR
xcUUAQD7Jfd29f0QBa+jm16CGAaZx4LxWkZ47YM74jycMwsRPQD+JbLPWMLy39fT
gI37QUUND5p2czBiA+hpbcz3sQLb8w8=
=a/4m
-----END PGP SIGNATURE-----

--qkatogddc44c6dds--


--===============8506051482723871697==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8506051482723871697==--

