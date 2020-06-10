Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 786571F582E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 17:49:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+1S0Y0YidzGEiNhlzyCS7ExXHWJl1Dq+MwUI1pzwX1E=; b=t+MuIDOWX8XVGv/UH7ZfGOltS
	Q/tWdhPrrk86FtzMdGDgy84TzICj/YTReEtE1BxG8ytfTZfAG4N1oxzZ8WhW6U49javrN/DeBTB6W
	vuuUGEU/g3dzse9RzQwzTAYcbhimj/L0P11Hz/x58sj7AV3bbdhEgP091koXxOpO6QXNN74zI+Df3
	2rg+8aAflGl7tpY+rhHk6M6b3C+H3ht1YEj3DNYrCTkGdNcu+uLXRlV9FKy3/d7lN/N6R5kmcDZev
	+J+H43pzmcUMN2B0jagCQ8wb7tgHLoDzZjvPrSOgXA+jX1h5rCNxsEBdR0/qKmdcqKPIpp38lFTed
	Etf+USNzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj2yz-00075V-FX; Wed, 10 Jun 2020 15:49:41 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj2yr-00074q-Di; Wed, 10 Jun 2020 15:49:34 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 3BCFCAD7D;
 Wed, 10 Jun 2020 15:49:35 +0000 (UTC)
Message-ID: <1f486fc41030df8c74bf021b02e59f007bf9d14e.camel@suse.de>
Subject: Re: [PATCH v2 5/9] usb: xhci-pci: Add support for reset controllers
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <f.fainelli@gmail.com>, gregkh@linuxfoundation.org, 
 wahrenst@gmx.net, p.zabel@pengutronix.de, linux-kernel@vger.kernel.org,
 Mathias Nyman <mathias.nyman@intel.com>
Date: Wed, 10 Jun 2020 17:49:28 +0200
In-Reply-To: <d452ddb8-cd30-1bfc-7b72-af3412e22ed4@gmail.com>
References: <20200609175003.19793-1-nsaenzjulienne@suse.de>
 <20200609175003.19793-6-nsaenzjulienne@suse.de>
 <d452ddb8-cd30-1bfc-7b72-af3412e22ed4@gmail.com>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_084933_756256_A7C8C105 
X-CRM114-Status: GOOD (  19.02  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: lorenzo.pieralisi@arm.com, mathias.nyman@linux.intel.com,
 linux-pci@vger.kernel.org, linux-usb@vger.kernel.org,
 andy.shevchenko@gmail.com, tim.gover@raspberrypi.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 helgaas@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3444579043939962083=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3444579043939962083==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-p+TvsQpoIbGXnKb+ob9S"


--=-p+TvsQpoIbGXnKb+ob9S
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Florian,

On Tue, 2020-06-09 at 11:13 -0700, Florian Fainelli wrote:
>=20
> On 6/9/2020 10:49 AM, Nicolas Saenz Julienne wrote:
> > Some atypical users of xhci-pci might need to manually reset their xHCI
> > controller before starting the HCD setup. Check if a reset controller
> > device is available to the PCI bus and trigger a reset.
> >=20
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> >=20
> > ---
> >=20
> > Changes since v1:
> >  - Use proper reset API
> >  - Make code simpler
> >=20
> >  drivers/usb/host/xhci-pci.c | 7 +++++++
> >  1 file changed, 7 insertions(+)
> >=20
> > diff --git a/drivers/usb/host/xhci-pci.c b/drivers/usb/host/xhci-pci.c
> > index ef513c2fb843..6e96affa4ceb 100644
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
> > @@ -347,6 +349,11 @@ static int xhci_pci_probe(struct pci_dev *dev, con=
st
> > struct pci_device_id *id)
> >  			return retval;
> >  	}
> > =20
> > +	reset =3D devm_reset_control_get_optional_exclusive(&dev->bus->dev, N=
ULL);
> > +	if (IS_ERR(reset))
> > +		return PTR_ERR(reset);
> > +	reset_control_reset(reset);
>=20
> Sorry for not catching this earlier, since this is a generic integration
> with the reset controller API, should not you also add a
> reset_control_reset() to hcd_pci_resume() for symmetry?

Agreed, if the RPi4 supported suspend/resume, which AFAIK doesn't, an extra
reset would be needed as pcie-brcmstb performs a fundamental reset on resum=
e
forcing us to reinitialize vl805.

Thanks!
Nicolas


--=-p+TvsQpoIbGXnKb+ob9S
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7hAQgACgkQlfZmHno8
x/6Fzgf8CkpRsxb++ft8vkQZu512oFbwoacT+zoJ74u+pVjwyS77fNOhO2Guu5/b
LFcIThixpQXCsNbhbJ7ioJ+S/+ZLgITbcd9DpBFqsyWeoPGJUQU+uLpViwauaRTJ
7spzpPtmApUR5s3zC5zTT2w3DKdHyMSnco9nX1URRO6HMD1iVbm2WOzDOI/MC4w/
y8j3XjcaaFvusXOYe5J0JzFNvvLr8oqVj7gQSJQOaLbPg9nfvCQT/gjWiz/G9tqS
000fU5+zSJ1wCMw22lWR6WOppHi4/w8YIswcVeat+d6RwA/oCs1soywj1XvApDBh
6blr3s73GBC82xV02R8fcfG+AaroUQ==
=DneD
-----END PGP SIGNATURE-----

--=-p+TvsQpoIbGXnKb+ob9S--



--===============3444579043939962083==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3444579043939962083==--


