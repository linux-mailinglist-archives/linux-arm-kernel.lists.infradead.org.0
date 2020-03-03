Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5072C177E77
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 19:33:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WbwMlRSrOsthodHKWmLi+T9MXgbC/bX7pgiF/RmWd8s=; b=EcTjQ7+pomO5LICxKQTwpI+PY
	pjzk1ufOmenLrMZzW3gIOTe1ynA5loadTjFZVxhpXm3p6EtVlfGe0D92K23JsHJ6KcPs9k9yDivv4
	U9pFU2ZzSvq2eYKRpBKgIWhi9qOIRWKhPR1EuWuJtWMgC/oK3Pa3XZJyxiCUmK+RSU3EJ4456Ps/Y
	Fi5DFDAATzmP5geCi/YSXHFcDZgfhbXa/js4XDmbG5OsnCxatI7oGZKDL+6DTtOz7l5VFu/sULE73
	ehEfyXz8ofhcLm9WSxnvRmBvNVAUApuj2y0XwAAa9Ib9WEWjtW2KPxMHtXmm9Cp6711iDJ+SxdOpA
	C9tTCDKCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9CLm-0006VE-Fj; Tue, 03 Mar 2020 18:33:02 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9CLd-0006Ui-TJ; Tue, 03 Mar 2020 18:32:55 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id D161BB259;
 Tue,  3 Mar 2020 18:32:51 +0000 (UTC)
Message-ID: <d706df27ceb8af106f15a328c2ffbe20f62d61c6.camel@suse.de>
Subject: Re: [PATCH] DTS: bcm2711: Move emmc2 into its own bus
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <f.fainelli@gmail.com>, Rob Herring <robh+dt@kernel.org>
Date: Tue, 03 Mar 2020 19:32:49 +0100
In-Reply-To: <b1b49120-701c-5ebd-8f2d-fd3c88ff3fac@gmail.com>
References: <20200303120820.4377-1-nsaenzjulienne@suse.de>
 <b1b49120-701c-5ebd-8f2d-fd3c88ff3fac@gmail.com>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_103254_237151_0D9658EB 
X-CRM114-Status: GOOD (  21.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, florian.fainelli@broadcom.com,
 phil@raspberrypi.org, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5218321349186853154=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5218321349186853154==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-RFl3Qiw92Rz2LT1BjykV"


--=-RFl3Qiw92Rz2LT1BjykV
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Florian,

On Tue, 2020-03-03 at 10:21 -0800, Florian Fainelli wrote:
> On 3/3/20 4:08 AM, Nicolas Saenz Julienne wrote:
> > Depending on bcm2711's revision its emmc2 controller might have
> > different DMA constraints. Raspberry Pi 4's firmware will take care of
> > updating those, but only if a certain alias is found in the device tree=
.
> > So, move emmc2 into its own bus, so as not to pollute other devices wit=
h
> > dma-ranges changes and create the emmc2bus alias.
> >=20
> > Based in Phil ELwell's downstream implementation.
> >=20
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>=20
> Nit: the subject should be ARM: dts: bcm2711. Some more comments below.

Of course, should have known better.

> > ---
> >  arch/arm/boot/dts/bcm2711-rpi-4-b.dts |  1 +
> >  arch/arm/boot/dts/bcm2711.dtsi        | 19 ++++++++++++++-----
> >  2 files changed, 15 insertions(+), 5 deletions(-)
> >=20
> > diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> > b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> > index 1d4b589fe233..e26ea9006378 100644
> > --- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> > +++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> > @@ -20,6 +20,7 @@ memory@0 {
> >  	};
> > =20
> >  	aliases {
> > +		emmc2bus =3D &emmc2bus;
> >  		ethernet0 =3D &genet;
> >  		pcie0 =3D &pcie0;
> >  	};
> > diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711=
.dtsi
> > index d1e684d0acfd..61ea8b44c51e 100644
> > --- a/arch/arm/boot/dts/bcm2711.dtsi
> > +++ b/arch/arm/boot/dts/bcm2711.dtsi
> > @@ -241,17 +241,26 @@ pwm1: pwm@7e20c800 {
> >  			status =3D "disabled";
> >  		};
> > =20
> > +		hvs@7e400000 {
> > +			interrupts =3D <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>;
> > +		};
> > +	};
> > +
> > +	emmc2bus: emmc2bus {
> > +		compatible =3D "simple-bus";
> > +		#address-cells =3D <2>;
> > +		#size-cells =3D <1>;
> > +
> > +		ranges =3D <0x0 0x7e000000  0x0 0xfe000000  0x01800000>;
> > +		dma-ranges =3D <0x0 0xc0000000  0x0 0x00000000  0x40000000>;
>=20
> This deserves a comment for two reasons:
>=20
> - explaining which of these properties is getting patched by the
> firmware (and it would be really nice if we had a concept of annotation
> attributes for Device Tree such that you could express something like:
>=20
> 	dma-ranges =3D <> __patchable;

Something like this would've been useful to me some time ago while debuggin=
g
CMA issues on a random arm64 Board. I was left wondering if the memory node=
s on
that specific board were set in stone or just a placeholder.

> - explaining why this is not collapsed in the soc bus node, because the
> dma-ranges constraint can be different based on the Pi4 revision

Noted

> With that fixed, this looks good to me!

Thanks!

>=20
> > +
> >  		emmc2: emmc2@7e340000 {
> >  			compatible =3D "brcm,bcm2711-emmc2";
> > -			reg =3D <0x7e340000 0x100>;
> > +			reg =3D <0x0 0x7e340000 0x100>;
> >  			interrupts =3D <GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>;
> >  			clocks =3D <&clocks BCM2711_CLOCK_EMMC2>;
> >  			status =3D "disabled";
> >  		};
> > -
> > -		hvs@7e400000 {
> > -			interrupts =3D <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>;
> > -		};
> >  	};
> > =20
> >  	arm-pmu {
> >=20
>=20
>=20


--=-RFl3Qiw92Rz2LT1BjykV
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5eotEACgkQlfZmHno8
x/65SQgAjizh4jYhQUUdPkHWpK1vmzYwARYZ9gDu0tyF+J26+4j7LFgytfLPEUMg
JHjH0xmFXW7cG80ISt2NxRInXjq/eaFytgby5zsBxG1DJhspUYn2zBb7VXWDevZ2
FHWjiKw2adk6mzNkO4sNG4P/D9WTtUlSvwAFDuNvsHEV8kUmtIldA6iItq4Xtyg6
BgojLHH0tqNjzdDeB0aOFaDXJMM7svxHiupbP0Li50uQByQgGoxiwsOVt2SBBdFa
qa6ucFjQstOAn207YYZeAYZinMZaMa0K1+0VeQ/SuVsUCNHCavKLkl4c7JEqixUR
TrQHZbzYvV//fJJISCqUAFBpdMNnTg==
=9Zb+
-----END PGP SIGNATURE-----

--=-RFl3Qiw92Rz2LT1BjykV--



--===============5218321349186853154==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5218321349186853154==--


