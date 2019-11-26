Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F97109B71
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 10:44:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=k5HIKnAqQs1Ld20vDpIwuVLPAbxVKykE6OU+IgNr3es=; b=nDN5pRllRuTOj0iw5x6GdBKwC
	Cb0PUpd+YEDpnYMOrSTLQdl2E8WnyMwU17ZuVIgsnU3NlSidQo9YZw3yTv8FeMMCIdhhSgHDh15C2
	trIchJrLfpVq8PKVOrgQrjwg0eFyhgKuuYTfPeaz6QWLw4FLA3OX/LGscPeQHcWdZglgBWZ29vmXo
	DkYY1pyV/SV+BrzRWKMyq9Ccq1+U/aPXeXCtdtNPJOIIxsBdAOdvLUNA5aYQAQAf8tF+f6CXAQt28
	ukyCHa6lQevYhdJbT9qmnUtOroPmwmuIXZoaznY/9jnXBh86XaggM7vcLn/n0BLOxoS8bzQdsjN1h
	5OJ/fo3Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZXO7-0000mO-RW; Tue, 26 Nov 2019 09:44:03 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZXNm-0000Co-Hz; Tue, 26 Nov 2019 09:43:44 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id EBD8DBBFE;
 Tue, 26 Nov 2019 09:43:40 +0000 (UTC)
Message-ID: <26c9cb9434fe59b61884e0e43d116fbff6c8590a.camel@suse.de>
Subject: Re: [PATCH v3 3/7] ARM: dts: bcm2711: Enable PCIe controller
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Phil Elwell <phil@raspberrypi.org>, andrew.murray@arm.com,
 maz@kernel.org,  linux-kernel@vger.kernel.org, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Eric Anholt
 <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>
Date: Tue, 26 Nov 2019 10:43:39 +0100
In-Reply-To: <ede90a60-8194-4035-01c2-2673f4a8cfe7@raspberrypi.org>
References: <20191126091946.7970-1-nsaenzjulienne@suse.de>
 <20191126091946.7970-4-nsaenzjulienne@suse.de>
 <ede90a60-8194-4035-01c2-2673f4a8cfe7@raspberrypi.org>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_014342_899370_73B3AC85 
X-CRM114-Status: GOOD (  21.67  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, f.fainelli@gmail.com, linux-pci@vger.kernel.org,
 jeremy.linton@arm.com, mbrugger@suse.com,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 james.quinlan@broadcom.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1590827540361776107=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1590827540361776107==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-MjOyRhx4Yk8pEyDha5vk"


--=-MjOyRhx4Yk8pEyDha5vk
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-11-26 at 09:37 +0000, Phil Elwell wrote:
> Hi Nicolas,
>=20
> On 26/11/2019 09:19, Nicolas Saenz Julienne wrote:
> > This enables bcm2711's PCIe bus, which is hardwired to a VIA
> > Technologies XHCI USB 3.0 controller.
> >=20
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> >=20
> > ---
> >=20
> > This will likely need a rebase once the RPi GENET patches land.
> >=20
> > Changes since v2:
> >    - Remove unused interrupt-map
> >    - correct dma-ranges to it's full size, non power of 2 bus DMA
> >      constraints now supported in linux-next[1]
> >    - add device_type
> >    - rename alias from pcie_0 to pcie0
> >=20
> > Changes since v1:
> >    - remove linux,pci-domain
> >=20
> > [1] https://lkml.org/lkml/2019/11/21/235
> >=20
> >   arch/arm/boot/dts/bcm2711.dtsi | 41 +++++++++++++++++++++++++++++++++=
+
> >   1 file changed, 41 insertions(+)
> >=20
> > diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711=
.dtsi
> > index 667658497898..2e121fc8b3d0 100644
> > --- a/arch/arm/boot/dts/bcm2711.dtsi
> > +++ b/arch/arm/boot/dts/bcm2711.dtsi
> > @@ -288,6 +288,47 @@ IRQ_TYPE_LEVEL_LOW)>,
> >   		arm,cpu-registers-not-fw-configured;
> >   	};
> >  =20
> > +	scb {
> > +		compatible =3D "simple-bus";
> > +		#address-cells =3D <2>;
> > +		#size-cells =3D <1>;
> > +
> > +		ranges =3D <0x0 0x7c000000  0x0 0xfc000000  0x03800000>,
> > +			 <0x6 0x00000000  0x6 0x00000000  0x40000000>;
> > +
> > +		pcie0: pcie@7d500000 {
> > +			compatible =3D "brcm,bcm2711-pcie";
> > +			reg =3D <0x0 0x7d500000 0x9310>;
> > +			device_type =3D "pci";
> > +			#address-cells =3D <3>;
> > +			#interrupt-cells =3D <1>;
> > +			#size-cells =3D <2>;
> > +			interrupts =3D <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>,
> > +				     <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
> > +			interrupt-names =3D "pcie", "msi";
> > +			interrupt-map-mask =3D <0x0 0x0 0x0 0x7>;
> > +			interrupt-map =3D <0 0 0 1 &gicv2 GIC_SPI 143
> > +							IRQ_TYPE_LEVEL_HIGH>;
> > +			msi-controller;
> > +			msi-parent =3D <&pcie0>;
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
> > +				      0x0 0xc0000000>;
>=20
> The comment doesn't match the data here - I think for now the size field=
=20
> needs to be reduced to 2GB to match the comment.

You're right, my bad, should've edited it out. The good part is that with t=
his
commit[1], which will soon be in Linus' tree, we don't need to fake dma-ran=
ges
size anymore.

So for the record, the comment should state the following:

	/*
	 * The wrapper around the PCIe block has a bug
	 * preventing it from accessing beyond the first 3GB of
	 * memory.
	 */

Regards,
Nicolas

[1] https://lkml.org/lkml/2019/11/21/235


--=-MjOyRhx4Yk8pEyDha5vk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3c88sACgkQlfZmHno8
x/7oswgAh8iyNGIM8/MJDFgcwiJ/KpGC9jc+vkjrrB7lLjA2i2L72hTIiHL4BbzE
6sM5qVV7uml+1a9QwNLMsHkJQrK4VXdJohQEkPG+qqa1qWuYuQX9JIqA4CGowiMZ
X/tWSCI5DJS3npMmiOCXlh7zZBaZx90iuJZXMqWRKHuEXlw5nN/rfkYiMyf4J0kD
xquAH7gT/Tx5O20oh9cKjOoa745pbnX7At6qwIg7DTbU8mb2zLJWLhHA/GZmfkv3
dmzw2btV71x+s3JVkfdzzA9g+Ttm+MUbu4GJzVqkshuEUU3BR6If7xBQTh7EH51C
HFvZfdwyqnMSXjipC6RpifYEEX5tGQ==
=sINh
-----END PGP SIGNATURE-----

--=-MjOyRhx4Yk8pEyDha5vk--



--===============1590827540361776107==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1590827540361776107==--


