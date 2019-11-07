Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD9E3F36F1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 19:24:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mEUUuhg9VGhaRwNWl5uZxmHitbzfJY668s8qqrrY1u8=; b=vCfyR+e/8QvXme1pL9Nn2pejy
	ahPGlo5cNBxaeQbtWAsyFng9YTweHwH9YsEpCwS30sKwA4Mj0FDP/Z8VPWQ26NyWBUs3rDaKO+aQ2
	RxGNKaSojA0bBA+0QKKMNiVDgj3a2GqWx2D3AdV+Qbwcox/1K/Y6Ed6WpbUiiIGOGwAUj0uPuQ3VR
	wPRjhL5VVjcqhCcaFsmcnUPs+i7Ty6Y60qEvlim5ivW5VBb7TjujD4aM/CXdjfZz8sXK4J8T20O3v
	qMN1uGLEOBeGZ1BqUNopmvgqa173h3o5buU6ZbDd0E/baXZY4IRlOq4695bBNd3LC+MHF8LSIKjMR
	jpBJEOgDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSmSC-0002gW-6V; Thu, 07 Nov 2019 18:24:20 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSmS1-0002fz-68; Thu, 07 Nov 2019 18:24:10 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 707D4ACA5;
 Thu,  7 Nov 2019 18:24:07 +0000 (UTC)
Message-ID: <2dcc3fca914a454006bcf2e9bd4479a30228e9fa.camel@suse.de>
Subject: Re: [PATCH 2/4] ARM: dts: bcm2711: Enable PCIe controller
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <wahrenst@gmx.net>, Andrew Murray <andrew.murray@arm.com>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
 bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Eric Anholt <eric@anholt.net>
Date: Thu, 07 Nov 2019 19:24:03 +0100
In-Reply-To: <50074e33-17bf-d555-cbf6-4ec079472ecd@gmx.net>
References: <20191106214527.18736-1-nsaenzjulienne@suse.de>
 <20191106214527.18736-3-nsaenzjulienne@suse.de>
 <50074e33-17bf-d555-cbf6-4ec079472ecd@gmx.net>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_102409_519782_CBA40625 
X-CRM114-Status: GOOD (  20.34  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: f.fainelli@gmail.com, phil@raspberrypi.org, linux-kernel@vger.kernel.org,
 james.quinlan@broadcom.com, mbrugger@suse.com
Content-Type: multipart/mixed; boundary="===============7581043447771319413=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7581043447771319413==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-TlMxNcfADV/A26dcLaFO"


--=-TlMxNcfADV/A26dcLaFO
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-11-07 at 18:44 +0100, Stefan Wahren wrote:
> Hi Nicolas,
>=20
> please move this patch behind the driver patches, which is the better ord=
er.
>=20
> Am 06.11.19 um 22:45 schrieb Nicolas Saenz Julienne:
> > This enables bcm2711's PCIe bus, wich is hardwired to a VIA Technologie=
s
> > XHCI USB 3.0 controller.
> AFAIU this only applies to the Raspberry Pi 4, since the VIA is outside
> of the SoC.
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > ---
> >  arch/arm/boot/dts/bcm2711.dtsi | 47 ++++++++++++++++++++++++++++++++++
> >  1 file changed, 47 insertions(+)
> >=20
> > diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711=
.dtsi
> > index a9d84e28f245..c7b2e7b57da6 100644
> > --- a/arch/arm/boot/dts/bcm2711.dtsi
> > +++ b/arch/arm/boot/dts/bcm2711.dtsi
> > @@ -288,6 +288,53 @@
> >  		arm,cpu-registers-not-fw-configured;
> >  	};
> >=20
> > +	scb {
> > +		compatible =3D "simple-bus";
> > +		#address-cells =3D <2>;
> > +		#size-cells =3D <1>;
> > +
> > +		ranges =3D <0x0 0x7c000000  0x0 0xfc000000  0x03800000>,
> > +			 <0x6 0x00000000  0x6 0x00000000  0x40000000>;
> > +
> > +		pcie_0: pcie@7d500000 {
> > +			compatible =3D "brcm,bcm2711-pcie";
> > +			reg =3D <0x0 0x7d500000 0x9310>;
> > +			msi-controller;
> > +			msi-parent =3D <&pcie_0>;
> > +			#address-cells =3D <3>;
> > +			#interrupt-cells =3D <1>;
> > +			#size-cells =3D <2>;
> > +			linux,pci-domain =3D <0>;
> > +			brcm,enable-ssc;
> > +			interrupts =3D <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>,
> > +				     <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
> > +			interrupt-names =3D "pcie", "msi";
> > +			interrupt-map-mask =3D <0x0 0x0 0x0 0x7>;
> > +			interrupt-map =3D <0 0 0 1 &gicv2 GIC_SPI 143
> > +							IRQ_TYPE_LEVEL_HIGH
> > +					 0 0 0 2 &gicv2 GIC_SPI 144
> > +							IRQ_TYPE_LEVEL_HIGH
> > +					 0 0 0 3 &gicv2 GIC_SPI 145
> > +							IRQ_TYPE_LEVEL_HIGH
> > +					 0 0 0 4 &gicv2 GIC_SPI 146
> > +							IRQ_TYPE_LEVEL_HIGH>;
> > +
> > +			ranges =3D <0x02000000 0x0 0xf8000000 0x6 0x00000000
> > +				  0x0 0x04000000>;
> > +			/*
> > +			 * The wrapper around the PCIe block has a bug
> > +			 * preventing it from accessing beyond the first 3GB of
> > +			 * memory. As the bus DMA mask is rounded up to the
> > +			 * closest power of two of the dma-range size, we're
> > +			 * forced to set the limit at 2GB. This can be
> > +			 * harmlessly changed in the future once the DMA code
> > +			 * handles non power of two DMA limits.
> > +			 */
> > +			dma-ranges =3D <0x02000000 0x0 0x00000000 0x0 0x00000000
> > +				      0x0 0x80000000>;
> In case this bug will ever be fixed, do you see this as a future proof
> practical solution?

The dts I provide should work on any bcm2711 (fixed or not) and any future
kernel, with the downside that we'll perform some unnecessary buffer bounci=
ng.

If we were able to address the whole 32bit address space on some future bcm=
2711
we'd be forced to update the dma-ranges in the bootloader based on the SoC
revision.

The driver should work with any sensible dma-range, I even did a test emula=
ting
the 4GB inbound memory setup.

Regards,
Nicolas


--=-TlMxNcfADV/A26dcLaFO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3EYUMACgkQlfZmHno8
x/7I8gf+Krf4eAVjY+gGoFj4B/+Wk2M4/i71Ubp+SIWiZarPgzumoZIAaDv91+YO
qwHAuQGIEnx8YvltDs3CkbNUJBzwuQAZQ9Ve652E8P/f4+wM+XVegdIWTk3M1G2/
t2N8OH87E+Ag8pGV9bfAtFi7oyFC3a+HDGLTAN1RezBLzlnn1EhN7fr4xXT7lQA7
HPmn9BjtUkQaXDMSghNPH9TaEVpEVxeRx9pXrDVaNQGeQN3RtfpznjbQj7GFHnG/
HYtWFf8ha82VlW+9EoWIXxKx0GQgZq9pehmr3cFgETyxUFf0AQCgVE0yhOXW/f5X
4xQXvqZLhwYBafJgw6LKn6qwz0vlpw==
=9wr0
-----END PGP SIGNATURE-----

--=-TlMxNcfADV/A26dcLaFO--



--===============7581043447771319413==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7581043447771319413==--


