Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB9ED18F312
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 11:42:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NShITWDg2/oMz/YbfBftPvCacgu9UlhriiNULuMJJYY=; b=RrtJPv26qbTvUWOGJ3f3aBAoM
	av2tGpgLw6JQU/awSOqBSBV6TSxHxdzXhxs9+3XD64kjoN4H5ckFegbSyYgNjSShKdQx9qJ44iHAI
	V3OcHyUJbBwOxBJw2AnzARcIx+bNJwG94f6hebvH+U/sFL95KFftNYeyOTSUvpvahV6IDXm/b3BE6
	dqI5ATnEo5xG4ZKtIDzuGwCWZ7TekRXeL6Qon1i32Zlk/RO2otualenPaHWtNbFq55sCXBmsI7qsa
	w1v75iQAb74ylLo38hOik0pmNg43UFVgJGIM6IpjrAEJflFCxiBLGQiFBOMCfO39i4a9fAdoJqDRP
	lo5t5p6KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGKXh-00055D-1S; Mon, 23 Mar 2020 10:42:49 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGKXK-0004wb-Py; Mon, 23 Mar 2020 10:42:29 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 4C44FAEDA;
 Mon, 23 Mar 2020 10:42:20 +0000 (UTC)
Message-ID: <fc5bcca4feed54de243b3e24228ef1ad99430c4c.camel@suse.de>
Subject: Re: [PATCH v2 12/12] dt-bindings: arm: bcm: Convert BCM2835
 firmware binding to YAML
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Maxime Ripard <maxime@cerno.tech>, Florian Fainelli <f.fainelli@gmail.com>
Date: Mon, 23 Mar 2020 11:42:16 +0100
In-Reply-To: <20200323084044.dziwbk7pugoy73yh@gilmour.lan>
References: <20200204235552.7466-1-f.fainelli@gmail.com>
 <20200204235552.7466-13-f.fainelli@gmail.com>
 <20200206192333.GA30325@bogus>
 <47e12841-d9bb-3204-76c0-5bc0ef74b094@gmail.com>
 <20200323084044.dziwbk7pugoy73yh@gilmour.lan>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_034227_186288_E2454FD6 
X-CRM114-Status: GOOD (  26.32  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 "james.tai" <james.tai@realtek.com>, Arnd Bergmann <arnd@arndb.de>,
 Scott Branden <sbranden@broadcom.com>, "open list:OPEN
 FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Sugaya Taichi <sugaya.taichi@socionext.com>, Ray Jui <rjui@broadcom.com>,
 open list <linux-kernel@vger.kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
 Vinod Koul <vkoul@kernel.org>, "maintainer:BROADCOM IPROC ARM
 ARCHITECTURE" <bcm-kernel-feedback-list@broadcom.com>,
 Joel Stanley <joel@jms.id.au>, linux-arm-kernel@lists.infradead.org,
 "moderated list:BROADCOM
 BCM2711/BCM2835 ARM ARCHITECTURE" <linux-rpi-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============1551704594673181470=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1551704594673181470==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-RpMYkWCESsJPGDcne0PU"


--=-RpMYkWCESsJPGDcne0PU
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2020-03-23 at 09:40 +0100, Maxime Ripard wrote:
> Hi Florian,
>=20
> On Sun, Mar 22, 2020 at 02:35:17PM -0700, Florian Fainelli wrote:
> >=20
> > On 2/6/2020 11:23 AM, Rob Herring wrote:
> > > On Tue, Feb 04, 2020 at 03:55:52PM -0800, Florian Fainelli wrote:
> > > > Convert the Raspberry Pi BCM2835 firmware binding document to YAML.
> > > > Verified with dt_binding_check and dtbs_check.
> > > >=20
> > > > Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> > > > ---
> > > >  .../arm/bcm/raspberrypi,bcm2835-firmware.txt  | 14 --------
> > > >  .../arm/bcm/raspberrypi,bcm2835-firmware.yaml | 33 +++++++++++++++=
++++
> > > >  2 files changed, 33 insertions(+), 14 deletions(-)
> > > >  delete mode 100644
> > > > Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-
> > > > firmware.txt
> > > >  create mode 100644
> > > > Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-
> > > > firmware.yaml
> > > >=20
> > > > diff --git
> > > > a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-
> > > > firmware.txt
> > > > b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-
> > > > firmware.txt
> > > > deleted file mode 100644
> > > > index 6824b3180ffb..000000000000
> > > > --- a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835=
-
> > > > firmware.txt
> > > > +++ /dev/null
> > > > @@ -1,14 +0,0 @@
> > > > -Raspberry Pi VideoCore firmware driver
> > > > -
> > > > -Required properties:
> > > > -
> > > > -- compatible:		Should be "raspberrypi,bcm2835-firmware"
> > > > -- mboxes:		Phandle to the firmware device's Mailbox.
> > > > -			  (See: ../mailbox/mailbox.txt for more
> > > > information)
> > > > -
> > > > -Example:
> > > > -
> > > > -firmware {
> > > > -	compatible =3D "raspberrypi,bcm2835-firmware";
> > > > -	mboxes =3D <&mailbox>;
> > > > -};
> > > > diff --git
> > > > a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-
> > > > firmware.yaml
> > > > b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-
> > > > firmware.yaml
> > > > new file mode 100644
> > > > index 000000000000..db355d970f2b
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835=
-
> > > > firmware.yaml
> > > > @@ -0,0 +1,33 @@
> > > > +# SPDX-License-Identifier: GPL-2.0
> > > > +%YAML 1.2
> > > > +---
> > > > +$id:=20
> > > > http://devicetree.org/schemas/arm/bcm/raspberrypi,bcm2835-firmware.=
yaml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +title: Raspberry Pi VideoCore firmware driver
> > > > +
> > > > +maintainers:
> > > > +  - Eric Anholt <eric@anholt.net>
> > > > +  - Stefan Wahren <wahrenst@gmx.net>
> > > > +
> > > > +properties:
> > > > +  compatible:
> > > > +    const: raspberrypi,bcm2835-firmware simple-bus
> > >                                           ^
> > >=20
> > > I need to check for spaces with the meta-schema...
> >=20
> > I believe I had tried to use:
> >=20
> > const: raspberrypi,bcm2835-firmware
> > const: simple-bus
> >=20
> > but this did not work, and I had to resort to doing this.
>=20
> That would be:
>=20
> compatible:
>   items:
>     - const: raspberrypi,bcm2835-firmware
>     - const: simple-bus
>=20
> It changes slightly from what the initial binding was saying though,
> since it wasn't mentionning simple-bus at all? Is that on purpose?

I guess we failed to update the binding after starting to use the firmware
device as a bus.


--=-RpMYkWCESsJPGDcne0PU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl54kogACgkQlfZmHno8
x/6Oxwf/RxCalW3P6O6N4jDFJcvvMOR8hT0bzENJf8exug8nu2upzGFR9cp5rgvy
nIuAsApBBpQ7BBIaD/Quv6256Qx5iYLAZGxbDMXhUwI7FyLiPJtf4Xgy6N1JVxrI
KSxJVwYzKAqYvT0C8hEtcOYilaGkLv8uvoK/gN1x1zNYUZil304HblPxudfJUqb4
/EDOh3y8ZL53j+7GQLp512aIF82mtD5m1Kvh7PqJSW41iqdQHW709Fw/lY+WoqHf
8lRgpMAmDMxiw6rNLasp0M4CmTowgbE3FwjltqJdgykk1upD3GQXDbKkxoIVIzqZ
gXEUdkyF5HlKG1wbYsTgqC6+vSnZiw==
=I9aD
-----END PGP SIGNATURE-----

--=-RpMYkWCESsJPGDcne0PU--



--===============1551704594673181470==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1551704594673181470==--


