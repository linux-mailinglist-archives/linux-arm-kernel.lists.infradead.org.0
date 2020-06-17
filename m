Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A0EE1FCABB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 12:22:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8CYB4g5mQxI+/nIChOA3G1dXf9zj8RZ82QjdoLuY2rE=; b=P8Id6zmq0xalhgzJEcpdWK6ao
	kebnYi3HZW9FatTgaWh8e7MrsZ6OUkY3IS4DuBjRno5BFfA7TGTchQV4JFkJlJ+m1WEX8JNv17tSX
	cTBOkfs0ivgK1MPoYFnhspiX6f1VFK7LqQAUhwXgc9a/v3KpgINf7j5JrugzBYflrlvPvRw451LzG
	C6Ko8bjbRizK5n1oyWrw5Su0rKVa5smqOZGOjuEgmKpdB8ohirgXEXHT7qBPcavPb56S417qAK9nD
	6nD3qI+Xb0C57y6JIiqS8L5sHk3WMHyYiVk8viSP9zBh8q/UsuDLvvKkgEYWrE14u/pNHGFYpqCHX
	NUnvGQKtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlVDH-0001Qr-Pc; Wed, 17 Jun 2020 10:22:35 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlVD2-0001Gh-2c; Wed, 17 Jun 2020 10:22:22 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id C9C2AAC50;
 Wed, 17 Jun 2020 10:22:17 +0000 (UTC)
Message-ID: <2b435e7fcf2c4600cf1618132f107a49d826d375.camel@suse.de>
Subject: Re: [PATCH v3 1/9] dt-bindings: reset: Add a binding for the RPi
 Firmware reset controller
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Philipp Zabel <p.zabel@pengutronix.de>, f.fainelli@gmail.com, 
 gregkh@linuxfoundation.org, wahrenst@gmx.net, linux-kernel@vger.kernel.org,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 bcm-kernel-feedback-list@broadcom.com, Eric Anholt <eric@anholt.net>
Date: Wed, 17 Jun 2020 12:22:10 +0200
In-Reply-To: <babff895a0b5e2cd63082bd38f087bd1bc345671.camel@pengutronix.de>
References: <20200612171334.26385-1-nsaenzjulienne@suse.de>
 <20200612171334.26385-2-nsaenzjulienne@suse.de>
 <babff895a0b5e2cd63082bd38f087bd1bc345671.camel@pengutronix.de>
User-Agent: Evolution 3.36.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_032220_442841_096ABC6B 
X-CRM114-Status: GOOD (  22.63  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, tim.gover@raspberrypi.org,
 mathias.nyman@linux.intel.com, linux-pci@vger.kernel.org,
 linux-usb@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 andy.shevchenko@gmail.com, lorenzo.pieralisi@arm.com, helgaas@kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2494844936506643896=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2494844936506643896==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-SUf4bLGSB+5z9632Byq0"


--=-SUf4bLGSB+5z9632Byq0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, 2020-06-17 at 11:55 +0200, Philipp Zabel wrote:
> Hi Nicolas,
>=20
> On Fri, 2020-06-12 at 19:13 +0200, Nicolas Saenz Julienne wrote:
> > The firmware running on the RPi VideoCore can be used to reset and
> > initialize HW controlled by the firmware.
> >=20
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
> >=20
> > ---
> > Changes since v2:
> >  - Add include file for reset IDs
> >=20
> > Changes since v1:
> >  - Correct cells binding as per Florian's comment
> >  - Change compatible string to be more generic
> >=20
> >  .../arm/bcm/raspberrypi,bcm2835-firmware.yaml | 21 +++++++++++++++++++
> >  .../reset/raspberrypi,firmware-reset.h        | 13 ++++++++++++
> >  2 files changed, 34 insertions(+)
> >  create mode 100644 include/dt-bindings/reset/raspberrypi,firmware-rese=
t.h
> >=20
> > diff --git a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2=
835-
> > firmware.yaml
> > b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-
> > firmware.yaml
> > index b48ed875eb8e..23a885af3a28 100644
> > --- a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-
> > firmware.yaml
> > +++ b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-
> > firmware.yaml
> > @@ -39,6 +39,22 @@ properties:
> >        - compatible
> >        - "#clock-cells"
> > =20
> > +  reset:
> > +    type: object
> > +
> > +    properties:
> > +      compatible:
> > +        const: raspberrypi,firmware-reset
> > +
> > +      "#reset-cells":
> > +        const: 1
> > +        description: >
> > +          The argument is the ID of the firmware reset line to affect.
> > +
> > +    required:
> > +      - compatible
> > +      - "#reset-cells"
> > +
> >      additionalProperties: false
> > =20
> >  required:
> > @@ -55,5 +71,10 @@ examples:
> >              compatible =3D "raspberrypi,firmware-clocks";
> >              #clock-cells =3D <1>;
> >          };
> > +
> > +        reset: reset {
> > +            compatible =3D "raspberrypi,firmware-reset";
> > +            #reset-cells =3D <1>;
> > +        };
> >      };
> >  ...
> > diff --git a/include/dt-bindings/reset/raspberrypi,firmware-reset.h
> > b/include/dt-bindings/reset/raspberrypi,firmware-reset.h
> > new file mode 100644
> > index 000000000000..1a4f4c792723
> > --- /dev/null
> > +++ b/include/dt-bindings/reset/raspberrypi,firmware-reset.h
> > @@ -0,0 +1,13 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * Copyright (c) 2020 Nicolas Saenz Julienne
> > + * Author: Nicolas Saenz Julienne <nsaenzjulienne@suse.com>
> > + */
> > +
> > +#ifndef _DT_BINDINGS_RASPBERRYPI_FIRMWARE_RESET_H
> > +#define _DT_BINDINGS_RASPBERRYPI_FIRMWARE_RESET_H
> > +
> > +#define RASPBERRYPI_FIRMWARE_RESET_ID_USB	0
> > +#define RASPBERRYPI_FIRMWARE_RESET_NUM_IDS	1
> > +
> > +#endif
>=20
> Are there going to be any more firmware controlled resets in the future?

There are not right now, but it's likely some will show up in the future. I
have some contenders in mind, which I'll request once we settle on a design
here, but it ultimately depends on what the RPi people decide to implement.

Regards,
Nicolas


--=-SUf4bLGSB+5z9632Byq0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7p7tIACgkQlfZmHno8
x/5gbQf+NdkkGDqz0A6JT3txmSyClQsVqxhiMqgbCjdVtLi8EHQ6VKQLpz6o9Tfr
BQY0MADjoJqdwne4+fryTGo6UPQqCRzitdc1RCPHX7YXnXK1x3tQZ39IqBf7hZqZ
i/8dNQ7g057lEcxI8ZdS9E0DcBy7LuIqvROjPcgYyeoEkmg3WdzKSVOWBv6RLVC2
/jSfNFWWvUu3a94VqQqORqVn63oYrmPdYMsE/KBgG925yvYmz3vCwSMOUmIyeLja
N2edh+OTAMNtfof6a7LOnvFEI/0G2GOn6q0mTxrQP2M+8IgUOnSu5P2rOmn6lFo2
9N2BwOQZ5Zy7RTqa/XQrEpqvnSF9Pw==
=BLff
-----END PGP SIGNATURE-----

--=-SUf4bLGSB+5z9632Byq0--



--===============2494844936506643896==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2494844936506643896==--


