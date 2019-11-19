Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0F5102302
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 12:28:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HYbByEN7vdO3ZAOV8APnwu3i/6h9iQsluLyWNJEVMFc=; b=saJXW139ydcGFQsUC4OYnRx4P
	U1hVgS05ZsiXkl1jJrTtrd2HHXq/lhFnHH7zKXO/i49fbVB91Ep2jVtMs45Rcu00lGeveDnTqBjOm
	rE65ARfeG+CyMoD5RVDkYfbYPxSyEu3y8Bsrw46wZeJXFzS5Qn96OmznYl5IXAvO3KCymkrq+v8zA
	5Z8gahbLnJGGlc+ZH4RsA2/rIXBQ8o/UxwiAU0hE3NajwZ57SaOBcxmO8m/GYftdfjQyOwyOjwp67
	LK6ONuF0hnWKxcu8rlXh8wb+TUAJCYVXijCAXqvFdp3TrpfXFUddqnwmLZFkB7vDDvZuWgM7aDFwa
	dcIZP3NyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX1gU-0007jx-5c; Tue, 19 Nov 2019 11:28:38 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX1gJ-0007i4-5b; Tue, 19 Nov 2019 11:28:28 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 9BA60BBFA;
 Tue, 19 Nov 2019 11:28:25 +0000 (UTC)
Message-ID: <5050053fc650e526d91e194465b21ae1730d571c.camel@suse.de>
Subject: Re: [PATCH v2 2/6] dt-bindings: PCI: Add bindings for brcmstb's
 PCIe device
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Andrew Murray <andrew.murray@arm.com>
Date: Tue, 19 Nov 2019 12:28:22 +0100
In-Reply-To: <20191119111735.GQ43905@e119886-lin.cambridge.arm.com>
References: <20191112155926.16476-1-nsaenzjulienne@suse.de>
 <20191112155926.16476-3-nsaenzjulienne@suse.de>
 <20191119111735.GQ43905@e119886-lin.cambridge.arm.com>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_032827_355722_4E20F3E7 
X-CRM114-Status: GOOD (  18.47  )
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
 Florian Fainelli <f.fainelli@gmail.com>, mbrugger@suse.com, maz@kernel.org,
 phil@raspberrypi.org, linux-kernel@vger.kernel.org, jeremy.linton@arm.com,
 Eric Anholt <eric@anholt.net>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 james.quinlan@broadcom.com, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2139047602707628671=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2139047602707628671==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-aRfpxxU/pqUdFGe5x0kl"


--=-aRfpxxU/pqUdFGe5x0kl
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-11-19 at 11:17 +0000, Andrew Murray wrote:
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
>=20
> I think in the last revision Rob asked you to change the license to
> the following:
>=20
> # SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)

Yes, but I had already sent this series by then. v3 will have all the fixes=
 in.

Regards,
Nicolas


--=-aRfpxxU/pqUdFGe5x0kl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3T0dYACgkQlfZmHno8
x/5LJgf/Q5Qh0zHUdY3QyjOEG6rvYIpqvit4rkhX3Feo92k3mEcYqJpkVsUWYWlx
5cL7rwP7YjYHl7wQEKjEdp7i5pOYk/TGorh5yQ/W7VMhgmOyZ2ofIVOmeUz+lcXj
7gGHa/2Fet0RMhMzvQl+Xm7/Fw5MEMDQDJSOZtmzcL4aanTI1pkh1UaA5NeXMP25
rrOfpPI2AqXjM5Qp35EGQZ9xuVVbSZpr602VXkAEeAOz3VSJoHbe4/J1wy+tPtbS
qn2/r0CLy0ndPVyogNhX+vWVgRCITMH/B+KhuhhxXqjbUAylC5JGurpTrDE37kO6
wA3wosxY3hFskV5PdpLlIq7x6tboGQ==
=oQ4d
-----END PGP SIGNATURE-----

--=-aRfpxxU/pqUdFGe5x0kl--



--===============2139047602707628671==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2139047602707628671==--


