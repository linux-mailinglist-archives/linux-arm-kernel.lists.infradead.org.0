Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9745123964
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:06:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2DuVIEcF5fq/+us7G9zEw6Lgc5jKmYOY+t/lSdvc1Lg=; b=sfr0lodr41v2ytlAnQ8Hz1pmw
	ShNFzBNpH4Vg8BRFZycrHLdTgd6XSSW7uct1KlQZGHChULWao5fE7xBAYjuxqDFzlEN3jvZR4my0V
	J/76cd+DFEHbXc6vw1tBmFU1g5qiPXHiMvz27bH7jL5gvj0ZdfU3SpaQqNnm24W6wegSpSEnSkuay
	pkJN4Rspp12jq48VbQcZBeCg72uR6YpTFf6eeTUIgznxBiIzSPqMQCXVxj2xSJMt+sS73c3J0EMBi
	HCENHW08RzeCMWFHv5R8rZgMOddg92IXPKAXalMExS4Wx1osn8g+KHSCJYl0HP4JpvHso4r2Q9laF
	NthgiZJ+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSiw0-0005IY-L4; Mon, 20 May 2019 14:06:36 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSivu-0005D9-1G
 for linux-arm-kernel@bombadil.infradead.org; Mon, 20 May 2019 14:06:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=86ueWGuRVUQdzYfSrjWREYkZ3WFd5+pDsZWzQshwwXc=; b=eCuMyrr3+gu/DHnJRUY22JIdx
 f+CHq35k9oYMH4L+BC82z/n9lR8LjTFDKbmjy2a3eYAwTNELyvddT2RFVnrHQ7rTZG473XLqab7AK
 zPmbY7YuXA9LVHHy7irCjN2Jny3gqmRpidsr0ahVOOLm85XPFdfdbs/RhrVj1VmfppF2tha7wfz8L
 j1qjZWZA7gCT9izNGvewQQhFrnBKOKEG/5pKmbOpyDtaRNZFpYoA00UVR5hgk/HpNHtwtKkIQ25IL
 A/qI6uzvwVQUEDFSLPj7NQAlW3MuhneVhaQ7YPj6jybm1aPMkpKNYRAqfXn5kJbfwOmYRo/D4qsfP
 3rd5tcoSg==;
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSivp-0003MR-F2
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:06:28 +0000
X-Originating-IP: 90.88.22.185
Received: from localhost (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr
 [90.88.22.185]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 338381C0006;
 Mon, 20 May 2019 14:05:51 +0000 (UTC)
Date: Mon, 20 May 2019 16:05:50 +0200
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
Message-ID: <20190520140550.hgywrzgmaswmguev@flea>
References: <20190408165744.11672-1-wens@kernel.org>
 <20190408165744.11672-5-wens@kernel.org>
 <20190409075804.4zrwjil7ie2gjigu@flea>
 <CAGb2v64CYV68Q0a7x5p-XabS74vaQWP3paPopodmqQPTOrq2gQ@mail.gmail.com>
 <20190409082818.z33mq2qrxethldzf@flea>
 <CAGb2v67pX+7ccihmGEWPKrXg8mMhht-vh37p2auWYgt=qGDA6A@mail.gmail.com>
 <20190409145225.2ltluiyqa5xha4zd@flea>
 <20190519135422.l2bnumyjr3dxehhx@core.my.home>
 <20190520111048.cnh435fnmz7esyks@flea>
 <20190520113854.ngyaw4mgki77gdbn@core.my.home>
MIME-Version: 1.0
In-Reply-To: <20190520113854.ngyaw4mgki77gdbn@core.my.home>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_150626_044666_5990496E 
X-CRM114-Status: GOOD (  48.17  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
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
Content-Type: multipart/mixed; boundary="===============4535644357216108722=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4535644357216108722==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="o6jx6uqtuurnu7e4"
Content-Disposition: inline


--o6jx6uqtuurnu7e4
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 20, 2019 at 01:38:54PM +0200, Ond=C5=99ej Jirman wrote:
> Hi Maxime,
>
> On Mon, May 20, 2019 at 01:10:49PM +0200, Maxime Ripard wrote:
> > Hi Ond=C5=99ej,
> >
> > On Sun, May 19, 2019 at 03:54:22PM +0200, Ond=C5=99ej Jirman wrote:
> > > On Tue, Apr 09, 2019 at 04:52:25PM +0200, Maxime Ripard wrote:
> > > > On Tue, Apr 09, 2019 at 04:40:40PM +0800, Chen-Yu Tsai wrote:
> > > > > On Tue, Apr 9, 2019 at 4:28 PM Maxime Ripard <maxime.ripard@bootl=
in.com> wrote:
> > > > > >
> > > > > > On Tue, Apr 09, 2019 at 04:07:34PM +0800, Chen-Yu Tsai wrote:
> > > > > > > On Tue, Apr 9, 2019 at 3:58 PM Maxime Ripard <maxime.ripard@b=
ootlin.com> wrote:
> > > > > > > > On Tue, Apr 09, 2019 at 12:57:42AM +0800, Chen-Yu Tsai wrot=
e:
> > > > > > > > > From: Chen-Yu Tsai <wens@csie.org>
> > > > > > > > >
> > > > > > > > > The A83T SoC has a camera sensor interface (known as CSI =
in Allwinner
> > > > > > > > > lingo), which is similar to the one found on the A64 and =
H3. The only
> > > > > > > > > difference seems to be that support of MIPI CSI through a=
 connected
> > > > > > > > > MIPI CSI-2 bridge.
> > > > > > > > >
> > > > > > > > > Add a device node for it, and pinctrl nodes for the commo=
nly used MCLK
> > > > > > > > > and 8-bit parallel interface. The property /omit-if-no-re=
f/ is added to
> > > > > > > > > the pinctrl nodes to keep the device tree blob size down =
if they are
> > > > > > > > > unused.
> > > > > > > > >
> > > > > > > > > Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> > > > > > > > > ---
> > > > > > > > >  arch/arm/boot/dts/sun8i-a83t.dtsi | 31 +++++++++++++++++=
++++++++++++++
> > > > > > > > >  1 file changed, 31 insertions(+)
> > > > > > > > >
> > > > > > > > > diff --git a/arch/arm/boot/dts/sun8i-a83t.dtsi b/arch/arm=
/boot/dts/sun8i-a83t.dtsi
> > > > > > > > > index f739b88efb53..0c52f945fd5f 100644
> > > > > > > > > --- a/arch/arm/boot/dts/sun8i-a83t.dtsi
> > > > > > > > > +++ b/arch/arm/boot/dts/sun8i-a83t.dtsi
> > > > > > > > > @@ -682,6 +682,20 @@
> > > > > > > > >                       #interrupt-cells =3D <3>;
> > > > > > > > >                       #gpio-cells =3D <3>;
> > > > > > > > >
> > > > > > > > > +                     /omit-if-no-ref/
> > > > > > > > > +                     csi_8bit_parallel_pins: csi-8bit-pa=
rallel-pins {
> > > > > > > > > +                             pins =3D "PE0", "PE2", "PE3=
", "PE6", "PE7",
> > > > > > > > > +                                    "PE8", "PE9", "PE10"=
, "PE11",
> > > > > > > > > +                                    "PE12", "PE13";
> > > > > > > > > +                             function =3D "csi";
> > > > > > > > > +                     };
> > > > > > > > > +
> > > > > > > > > +                     /omit-if-no-ref/
> > > > > > > > > +                     csi_mclk_pin: csi-mclk-pin {
> > > > > > > > > +                             pins =3D "PE1";
> > > > > > > > > +                             function =3D "csi";
> > > > > > > > > +                     };
> > > > > > > > > +
> > > > > > > > >                       emac_rgmii_pins: emac-rgmii-pins {
> > > > > > > > >                               pins =3D "PD2", "PD3", "PD4=
", "PD5", "PD6", "PD7",
> > > > > > > > >                                      "PD11", "PD12", "PD1=
3", "PD14", "PD18",
> > > > > > > > > @@ -994,6 +1008,23 @@
> > > > > > > > >                       interrupts =3D <GIC_PPI 9 (GIC_CPU_=
MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_HIGH)>;
> > > > > > > > >               };
> > > > > > > > >
> > > > > > > > > +             csi: camera@1cb0000 {
> > > > > > > > > +                     compatible =3D "allwinner,sun8i-a83=
t-csi";
> > > > > > > > > +                     reg =3D <0x01cb0000 0x1000>;
> > > > > > > > > +                     interrupts =3D <GIC_SPI 84 IRQ_TYPE=
_LEVEL_HIGH>;
> > > > > > > > > +                     clocks =3D <&ccu CLK_BUS_CSI>,
> > > > > > > > > +                              <&ccu CLK_CSI_SCLK>,
> > > > > > > > > +                              <&ccu CLK_DRAM_CSI>;
> > > > > > > > > +                     clock-names =3D "bus", "mod", "ram";
> > > > > > > > > +                     resets =3D <&ccu RST_BUS_CSI>;
> > > > > > > > > +                     status =3D "disabled";
> > > > > > > > > +
> > > > > > > > > +                     csi_in: port {
> > > > > > > > > +                             #address-cells =3D <1>;
> > > > > > > > > +                             #size-cells =3D <0>;
> > > > > > > >
> > > > > > > > If we expect a single enpoint, then we don't need the addre=
ss-cells
> > > > > > > > and size-cells properties.
> > > > > > >
> > > > > > > I wouldn't bet on anything. The way the Q8 tablets did front/=
back cameras
> > > > > > > is kind of genius if not very hacky. They have two "identical=
" sensors
> > > > > > > on the same I2C bus and CSI bus, with shared reset line but s=
eparate
> > > > > > > shutdown lines. Since they are identical, they also have the =
same I2C
> > > > > > > address. I haven't figured out how to model this in the devic=
e tree.
> > > > > > >
> > > > > > > The point is, it's perfectly possible to have two or more sen=
sors use
> > > > > > > the same controller, provided only one be active at a time.
> > > > > >
> > > > > > Right, but I guess the common case would be to have a single se=
nsor,
> > > > > > where that wouldn't be needed.
> > > > > >
> > > > > > In odd cases, we can always specify it in the DTS, and if it be=
comes
> > > > > > common enough, we can move it to the DTSI.
> > > > >
> > > > > Makes sense. Do you want me to re-spin?
> > > >
> > > > If there's no other comment, we'll fix it when applying.
> > >
> > > This patch series seems to have been forgotten. It doesn't seem there=
 are any
> > > blockers.
> >
> > Sorry about that :/
> >
> > > Can you please apply it now? I have some further series (camera module
> > > support for TBS-A711) that depend on this.
> >
> > Some parts of it will have to be merged through v4l2, and I can't
> > apply those patches.
> >
> > Can you resend that series, and ping on a regular basis (like once a
> > week) if you don't get any feedback?
>
> You mean this series for A83t CSI?

Yes

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--o6jx6uqtuurnu7e4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOK0PgAKCRDj7w1vZxhR
xcv4AP44YHUqXgqLNs20yLl0IGtRgEFHh+6F7uKMnEuTj0jvigEA+TnQs05mjZKN
jFi6Dr7tQqPp7xCqfu0tamu/BAfYCwo=
=BwxC
-----END PGP SIGNATURE-----

--o6jx6uqtuurnu7e4--


--===============4535644357216108722==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4535644357216108722==--

