Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F221F3978
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 13:20:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1yXmP/pOUmk3LJfKx4ZXk0NAjuzH5M7V6az8Oc8UWrU=; b=LhbZCgv1BXebNfMdT/b4w6mKg
	Yz66DSZoZLfyE9ZJ2QlnBkEhiXvyBaSvEogwxy6MTqDTwfCEP8St3lDSP2mljk9ilZkBxGFTTbeUK
	zzWt2T9MKZqAs+nb23hX/zN8ZR6wUgY7G72CqSHFv8hk6jDUV8vQRr49sHaETQWtbxiCIQnQjJzEh
	k5gP3EmA4vIBrNuVC8o+S84811poFAjusVSOouqKQy0/n7t4ZQ7XyKtk3GyMBldaWHL6d7GrXuc2C
	FYSMC9G2rNXKWyRVnHBuuaQxaMexmuZFu7FY4QVRb8oFHmHmj1Zg1Fe8m7IOEzEWJ286bMcwoGqfb
	6Uu/pqGhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jicIm-000821-P9; Tue, 09 Jun 2020 11:20:20 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jicIT-0007PH-Cx; Tue, 09 Jun 2020 11:20:03 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 182F8B160;
 Tue,  9 Jun 2020 11:20:03 +0000 (UTC)
Message-ID: <582f63b8140a01e75a79c96ec569c3a68f434c61.camel@suse.de>
Subject: Re: [PATCH 5/9] usb: xhci-pci: Add support for reset controllers
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 09 Jun 2020 13:19:57 +0200
In-Reply-To: <CAHp75VdWq96SSzB1S9pM=H8=3np8-1Cep_9BqGiTCUTtCUt-yw@mail.gmail.com>
References: <20200608192701.18355-1-nsaenzjulienne@suse.de>
 <20200608192701.18355-6-nsaenzjulienne@suse.de>
 <CAHp75VdWq96SSzB1S9pM=H8=3np8-1Cep_9BqGiTCUTtCUt-yw@mail.gmail.com>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_042001_777545_976D05B7 
X-CRM114-Status: GOOD (  18.49  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "robh@kernel.org" <robh@kernel.org>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "mathias.nyman@linux.intel.com" <mathias.nyman@linux.intel.com>,
 Mathias Nyman <mathias.nyman@intel.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Anholt <eric@anholt.net>,
 "tim.gover@raspberrypi.org" <tim.gover@raspberrypi.org>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>, "wahrenst@gmx.net" <wahrenst@gmx.net>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "helgaas@kernel.org" <helgaas@kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-rpi-kernel@lists.infradead.org" <linux-rpi-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============6485593054154318983=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6485593054154318983==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-9EBI8hzXNUG3ROBaqpAE"


--=-9EBI8hzXNUG3ROBaqpAE
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2020-06-08 at 22:44 +0300, Andy Shevchenko wrote:
>=20
>=20
> On Monday, June 8, 2020, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> wrote:
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
> >=20
> >  #include "xhci.h"
> >  #include "xhci-trace.h"
> > @@ -339,6 +340,7 @@ static int xhci_pci_probe(struct pci_dev *dev, cons=
t
> > struct pci_device_id *id)
> >         struct xhci_hcd *xhci;
> >         struct usb_hcd *hcd;
> >         struct xhci_driver_data *driver_data;
> > +       struct reset_control *reset;
> >=20
> >         driver_data =3D (struct xhci_driver_data *)id->driver_data;
> >         if (driver_data && driver_data->quirks & XHCI_RENESAS_FW_QUIRK)=
 {
> > @@ -347,6 +349,13 @@ static int xhci_pci_probe(struct pci_dev *dev, con=
st
> > struct pci_device_id *id)
> >                         return retval;
> >         }
> >=20
> > +       reset =3D devm_reset_control_get(&dev->bus->dev, NULL);
>=20
> =20
> > +       if (IS_ERR(reset)) {
> > +               retval =3D PTR_ERR(reset);
> > +               return retval;
> > +       }
>=20
> These four can be two, we have too many LOCs in the kernel for no reason.

Noted

> =20
> > +       reset_control_reset(reset);
> > +
> >         /* Prevent runtime suspending between USB-2 and USB-3 initializ=
ation
> > */
> >         pm_runtime_get_noresume(&dev->dev);
> > =20
> > --=20
> > 2.26.2
> >=20
> >=20
>=20
>=20


--=-9EBI8hzXNUG3ROBaqpAE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7fcF0ACgkQlfZmHno8
x/5HTAgAmhR811lue01X7GYq1cj7N9zCOPoNa2ZH9QWAMqqWbHR+24haBspjEywh
jqF4feZsoD4jj1ZGrwSy+MKq2rRt+iaXPbDCcTrN/zuL38U9Zt/lZPxhvauQruKI
NaVoK8R4lJRJ7HVHxMYPGUmT1FOVmZuYi4rp/uZlRjTmedsU/6s/x5xkgsTSAga1
j9EWMT39vfMLMJeVsjynLw94bwl0nmwUxrWYi+C0W3qlrsIyTx39FOoa6HRdjwT9
KPyQPzlPsUPEmrTbDdaDztFp39r0ESQYqvDjv3wReVtp3wWBsgbe5ECwiovUcKMu
sp04DqMNxUJu/iqC8gkJkvc80XiI/Q==
=H32q
-----END PGP SIGNATURE-----

--=-9EBI8hzXNUG3ROBaqpAE--



--===============6485593054154318983==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6485593054154318983==--


