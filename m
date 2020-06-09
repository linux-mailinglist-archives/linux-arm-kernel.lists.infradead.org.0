Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 469671F396C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 13:18:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GG2p6TsXzbem45JpvldjhsrF+/KzFKc9dn9j/fTHsgE=; b=O3uhxJw9FbKTjuGV/FbuGpBOx
	1CiGrPAlYMCmcYp6X98c9Ktfo/h9ABvXP5WuP5wD8IhQvHHN8wWNGem9PGwkne5Vm7bifZZiF9PoG
	zbGB8ENJJ/J8KQM7/8+9jgtqXTX/4zq99IUGK4z187+aHQBkoob7ft0siAOdLIYcyTFEdbpEI6nE6
	D2e+alwDh40mWsvec0ORq+ZSu5+MDDvu41lvEZU+pyiLYuOI9I6Uatnf+bro2bVy/qhaaDPFgBNbO
	9bwHpA0b2yapP2MX7MYash6Z5h/Dobl8h/xrjFHazkAB2CcoCBJ7j27pUCjcRsZvyiXuotWZ/DqZH
	B1oFviWeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jicHK-00074P-U5; Tue, 09 Jun 2020 11:18:50 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jicHC-00073z-P0; Tue, 09 Jun 2020 11:18:44 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 7B218ACF2;
 Tue,  9 Jun 2020 11:18:44 +0000 (UTC)
Message-ID: <382b81937757de570a83ba4ff9276221c0bba547.camel@suse.de>
Subject: Re: [PATCH 5/9] usb: xhci-pci: Add support for reset controllers
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <f.fainelli@gmail.com>, gregkh@linuxfoundation.org, 
 wahrenst@gmx.net, robh@kernel.org, mathias.nyman@linux.intel.com, Eric
 Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com, 
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-usb@vger.kernel.org,  Mathias Nyman <mathias.nyman@intel.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Date: Tue, 09 Jun 2020 13:18:38 +0200
In-Reply-To: <5d3200cc-17cc-026f-1dfe-c10ec949f9ad@gmail.com>
References: <20200608192701.18355-1-nsaenzjulienne@suse.de>
 <20200608192701.18355-6-nsaenzjulienne@suse.de>
 <5d3200cc-17cc-026f-1dfe-c10ec949f9ad@gmail.com>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_041843_105379_FACA3731 
X-CRM114-Status: GOOD (  18.22  )
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
Cc: lorenzo.pieralisi@arm.com, helgaas@kernel.org, linux-kernel@vger.kernel.org,
 tim.gover@raspberrypi.org
Content-Type: multipart/mixed; boundary="===============3362320323325549340=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3362320323325549340==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-NVYfO6rea++DlkfIypsN"


--=-NVYfO6rea++DlkfIypsN
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Florian, thanks for the reviews!

On Mon, 2020-06-08 at 12:43 -0700, Florian Fainelli wrote:
>=20
> On 6/8/2020 12:26 PM, Nicolas Saenz Julienne wrote:
> > Some atypical users of xhci-pci might need to manually reset their xHCI
> > controller before starting the HCD setup. Check if a reset controller
> > device is available to the PCI bus and trigger a reset.
> >=20
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > ---
> >  drivers/usb/host/xhci-pci.c | 9 +++++++++
> >  1 file changed, 9 insertions(+)
> >=20
> > diff --git a/drivers/usb/host/xhci-pci.c b/drivers/usb/host/xhci-pci.c
> > index ef513c2fb843..45f70facdfcd 100644
> > --- a/drivers/usb/host/xhci-pci.c
> > +++ b/drivers/usb/host/xhci-pci.c
> > @@ -12,6 +12,7 @@
> >  #include <linux/slab.h>
> >  #include <linux/module.h>
> >  #include <linux/acpi.h>
> > +#include <linux/reset.h>
> > =20
> >  #include "xhci.h"
> >  #include "xhci-trace.h"
> > @@ -339,6 +340,7 @@ static int xhci_pci_probe(struct pci_dev *dev, cons=
t
> > struct pci_device_id *id)
> >  	struct xhci_hcd *xhci;
> >  	struct usb_hcd *hcd;
> >  	struct xhci_driver_data *driver_data;
> > +	struct reset_control *reset;
> > =20
> >  	driver_data =3D (struct xhci_driver_data *)id->driver_data;
> >  	if (driver_data && driver_data->quirks & XHCI_RENESAS_FW_QUIRK) {
> > @@ -347,6 +349,13 @@ static int xhci_pci_probe(struct pci_dev *dev, con=
st
> > struct pci_device_id *id)
> >  			return retval;
> >  	}
> > =20
> > +	reset =3D devm_reset_control_get(&dev->bus->dev, NULL);
>=20
> Should not this be devm_reset_control_get_optional()?

Yes, you're right.

Regards,
Nicolas

> > +	if (IS_ERR(reset)) {
> > +		retval =3D PTR_ERR(reset);
> > +		return retval;
> > +	}
> > +	reset_control_reset(reset);
> > +
> >  	/* Prevent runtime suspending between USB-2 and USB-3 initialization =
*/
> >  	pm_runtime_get_noresume(&dev->dev);
> > =20
> >=20


--=-NVYfO6rea++DlkfIypsN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7fcA4ACgkQlfZmHno8
x/42lggAr4gRLoLdRsOhuBSqjjZLdGcfoxGXMXDpXwxrRsd71lmv+/LtQABORuU3
Y4M35yyADqBeIuOMtzBSNCxGdLhCxhz4oRZwlAZMO2BRmbv5nVYbesB4JGCeGQ6j
Kac2Fhfb5aBF7KhISqp7HGN5cH6fQQAgjiPebWDmCNqg0k/kC82VQgJ+JfB3uL3t
3IuTyHni/9N/xdxeLwZDMjASxQGWRwCq0U+7uGJmsP1lYFB0ucjHa9egEzdeNbui
DgOvWHSrBjNS3t3bcSpaG5IUspjT+zCYVUOr24zhW7k2WurtDGlkx5Oeh3+/Pipf
+z7kYFcTP0uYL6kbSA4G7CdRzBFWHw==
=WpCe
-----END PGP SIGNATURE-----

--=-NVYfO6rea++DlkfIypsN--



--===============3362320323325549340==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3362320323325549340==--


