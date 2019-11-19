Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56CBB1020C1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 10:36:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UKBuIP1wVztlK2zWP3+4grjBEenyKVLnS/JpTqrbRx4=; b=Z3sK3569oaCnMINaNsHOCJHjn
	b4wGPyHZMIKYnhcHEmi8OvnpxrKVX7lQZEUE33y89fEadUg5EV2XUnzgsBsrugWjnvrgDpCtspXSW
	BRLpvEbxcJzUh+TqXJvutK0HHshI+RHwo+gVSr7rq0nqxz5v7YeSczppYPNnutrxoa0qgjsNtyn5E
	EPlnZEKt8n0HzCEbsZtSEJGUCJ66sbxSjE62nQ/zDkoxU9/gZGg18T3+5DHJ5fJ8rWlVr42mtv+fs
	1b1wOyxknU5QZVdEY1FoclOb58VEHB3mnJJKbF0TKpUUs23P9JZ3JnoJ1ak7j80wkY7vQQz2wh9y+
	Zsqau3i8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWzvM-0004ZJ-Bp; Tue, 19 Nov 2019 09:35:52 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWzvA-0004Xv-Sl; Tue, 19 Nov 2019 09:35:45 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id ACA38AED6;
 Tue, 19 Nov 2019 09:35:38 +0000 (UTC)
Message-ID: <6c34f6a1ced09da8e9c1df6347299820947adc0c.camel@suse.de>
Subject: Re: [PATCH v2 2/6] dt-bindings: PCI: Add bindings for brcmstb's
 PCIe device
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Rob Herring <robh@kernel.org>
Date: Tue, 19 Nov 2019 10:35:36 +0100
In-Reply-To: <20191118212312.GA24969@bogus>
References: <20191112155926.16476-1-nsaenzjulienne@suse.de>
 <20191112155926.16476-3-nsaenzjulienne@suse.de>
 <20191118212312.GA24969@bogus>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_013541_219465_5E02AD51 
X-CRM114-Status: GOOD (  24.18  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, maz@kernel.org, phil@raspberrypi.org,
 linux-kernel@vger.kernel.org, jeremy.linton@arm.com,
 Eric Anholt <eric@anholt.net>, mbrugger@suse.com,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 james.quinlan@broadcom.com, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, andrew.murray@arm.com,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5815021792904872468=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5815021792904872468==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-HfkeJ3NjhLZryLi7OGNK"


--=-HfkeJ3NjhLZryLi7OGNK
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob, thanks for the review.

On Mon, 2019-11-18 at 15:23 -0600, Rob Herring wrote:
> On Tue, Nov 12, 2019 at 04:59:21PM +0100, Nicolas Saenz Julienne wrote:
> > From: Jim Quinlan <james.quinlan@broadcom.com>
> >=20
> > The DT bindings description of the brcmstb PCIe device is described.
> > This node can only be used for now on the Raspberry Pi 4.
> >=20
> > Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>
> > Co-developed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> >=20
> > ---
> >=20
> > Changes since v1:
> >   - Fix commit Subject
> >   - Remove linux,pci-domain
> >=20
> > This was based on Jim's original submission[1], converted to yaml and
> > adapted to the RPi4 case.
> >=20
> > [1] https://patchwork.kernel.org/patch/10605937/
> >=20
> >  .../bindings/pci/brcm,stb-pcie.yaml           | 110 ++++++++++++++++++
> >  1 file changed, 110 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/pci/brcm,stb-pcie=
.yaml
> >=20
> > diff --git a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
> > b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
> > new file mode 100644
> > index 000000000000..4cbb18821300
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
> > @@ -0,0 +1,110 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/pci/brcm,stb-pcie.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Brcmstb PCIe Host Controller Device Tree Bindings
> > +
> > +maintainers:
> > +  - Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > +
>=20
> I added a common PCI schema to dt-schema. You can reference it here:
>=20
> allOf:
>   - $ref: /schemas/pci/pci-bus.yaml#

Thanks!

> > +properties:
> > +  compatible:
> > +    const: brcm,bcm2711-pcie # The Raspberry Pi 4
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    minItems: 1
> > +    maxItems: 2
> > +    items:
> > +      - description: PCIe host controller
> > +      - description: builtin MSI controller
> > +
> > +  interrupt-names:
> > +    minItems: 1
> > +    maxItems: 2
> > +    items:
> > +      - const: pcie
> > +      - const: msi
> > +
> > +  "#address-cells":
> > +    const: 3
> > +
> > +  "#size-cells":
> > +    const: 2
> > +
> > +  "#interrupt-cells":
> > +    const: 1
> > +
> > +  interrupt-map-mask: true
> > +
> > +  interrupt-map: true
>=20
> Drop all these as the pci-bus.yaml will cover them.

OK

> > +
> > +  ranges: true
>=20
> Do you know many entries, if not, you can drop it too?

As this is only aimed at the RPi4's controller we know. Only one for now, s=
ame
for dma-ranges.

> > +
> > +  dma-ranges: true
>=20
> Do you know many entries, if not, you can drop it too?
>=20
> > +
> > +  clocks:
> > +    maxItems: 1
> > +
> > +  clock-names:
> > +    items:
> > +      - const: sw_pcie
> > +
> > +  msi-controller:
> > +    description: Identifies the node as an MSI controller.
> > +    type: boolean
> > +
> > +  msi-parent:
> > +    description: MSI controller the device is capable of using.
> > +    $ref: /schemas/types.yaml#/definitions/phandle
>=20
> Assume these 2 have a type defined.

Ok

> > +
> > +  brcm,enable-ssc:
> > +    description: Indicates usage of spread-spectrum clocking.
> > +    type: boolean
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - "#address-cells"
> > +  - "#size-cells"
> > +  - "#interrupt-cells"
> > +  - interrupt-map-mask
> > +  - interrupt-map
> > +  - ranges
> > +  - dma-ranges
>=20
> You can drop ranges, #address-cells and #size-cells as they are required=
=20
> in pci-bus.yaml.
>=20
> Shouldn't interrupts, interrupt-names, and msi-controller all be=20
> required?

Agree, I've have doubts with msi-controller, but I guess the HW is still a
msi-controller regardless of whether you use it so it reasonable to require=
 it.

> > +
> > +additionalProperties: false
>=20
> This won't work having the commmon binding, but=20
> 'unevaluatedProperties: false' will (eventually when json-schema draft8=
=20
> is supported).=20

I'll change it.

> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/interrupt-controller/irq.h>
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +
> > +    scb {
> > +            #address-cells =3D <2>;
> > +            #size-cells =3D <1>;
> > +            pcie0: pcie@7d500000 {
> > +                    compatible =3D "brcm,bcm2711-pcie";
> > +                    reg =3D <0x0 0x7d500000 0x9310>;
> > +                    #address-cells =3D <3>;
> > +                    #size-cells =3D <2>;
> > +                    #interrupt-cells =3D <1>;
> > +                    interrupts =3D <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>,
> > +                                 <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
> > +                    interrupt-names =3D "pcie", "msi";
> > +                    interrupt-map-mask =3D <0x0 0x0 0x0 0x7>;
> > +                    interrupt-map =3D <0 0 0 1 &gicv2 GIC_SPI 143
> > IRQ_TYPE_LEVEL_HIGH
> > +                                     0 0 0 2 &gicv2 GIC_SPI 144
> > IRQ_TYPE_LEVEL_HIGH
> > +                                     0 0 0 3 &gicv2 GIC_SPI 145
> > IRQ_TYPE_LEVEL_HIGH
> > +                                     0 0 0 4 &gicv2 GIC_SPI 146
> > IRQ_TYPE_LEVEL_HIGH>;
>=20
> Bracket each entry. The schema is making this stricter.

Noted.

Regards,
Nicolas


--=-HfkeJ3NjhLZryLi7OGNK
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3Tt2gACgkQlfZmHno8
x/50EQgAmflpS28ePnEFFCis1DjTQmqx6Z2FULtBjfe+6Xvf7jlf1mGpi3PICER8
6BliLBP0OHeUYiwTGbYKRyaiFP4YsiCnLtzCcI5Dq994a/1oE2/MiLWUzlCX8uFk
DYgnneZq/kY1qNBOSLFWr9hofr2gUjG5FYsJK93hbzWNCV7xiMccDNtVRPT4TG3h
17rpSNC8tGbwVf2F+7XNWJXu8cAQM0toRozYMaiQ8kaTWxJQisdDdQm4YQaaG8jP
0qmyi0DIVIt8rzNPwvntvXcA90VmHg4ZOJxuao8q5sehD7FeHjy+nBFpt4i13dy0
bGb/tpgkotPmfLtoAgMlE0wivTAmmQ==
=AyEr
-----END PGP SIGNATURE-----

--=-HfkeJ3NjhLZryLi7OGNK--



--===============5815021792904872468==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5815021792904872468==--


