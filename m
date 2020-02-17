Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C04C1610C4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 12:12:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qzLuDlOY2fgtfJ4yYnlpPSuDfSMkkpyF4bSG9Zlv0MM=; b=KmDsBIbu7irsZWJg7l8EArfcV
	5o0+Ak+4pHKWUiyz2HJNg0taSVQNfCe8YnlPryjBtaHWMs6mqCZMxhrGeeNYuFTNW1EbHmiQTUVuq
	1ZhfYqLsAgamFi4pwT1iV76YE9h3ETIZAZEW5vm40hfudje6cRybYhdZQBwjTVZWH815gqTUnM9h/
	g38UQqioIQx7HOQF/zyzxkfHHdTX+jMaJD73/4bNjDu+kDfScWQGl24YLTqjReCeX6yGb9veDVH5K
	Rxhqq2mUhq7CLyNadkeOTiqvKOG49u9cj94C7ZHE0D5Qkww9g13KybOa5UNV/tvoF8AXG51+oQrui
	B2g/0U2HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3eKd-00057o-Jk; Mon, 17 Feb 2020 11:12:55 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3eKV-00057R-KA; Mon, 17 Feb 2020 11:12:49 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 0CB5EB05D;
 Mon, 17 Feb 2020 11:12:45 +0000 (UTC)
Message-ID: <9d3a870fdd71fd2ed5a4a5992b2dd39388eaedd5.camel@suse.de>
Subject: Re: [PATCH] usb: xhci-pci: Raspberry Pi FW loader for VIA VL805
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Mon, 17 Feb 2020 12:12:42 +0100
In-Reply-To: <20200217103605.GA93732@kroah.com>
References: <20200217100701.19949-1-nsaenzjulienne@suse.de>
 <20200217103605.GA93732@kroah.com>
User-Agent: Evolution 3.34.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_031247_995896_8BFD9E34 
X-CRM114-Status: GOOD (  21.11  )
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Mathias Nyman <mathias.nyman@intel.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, oneukum@suse.com, linux-kernel@vger.kernel.org,
 tim.gover@raspberrypi.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-usb@vger.kernel.org,
 phil@raspberrypi.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6457653173331566141=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6457653173331566141==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-XZFCLbgsBknBnaLkhP22"


--=-XZFCLbgsBknBnaLkhP22
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Greg, thanks for having a look at this.

On Mon, 2020-02-17 at 11:36 +0100, Greg Kroah-Hartman wrote:

[...]

> > +#include <soc/bcm2835/raspberrypi-firmware.h>
>=20
> That feels really wrong :(

I know, not that happy about it either, but I had to start with something :=
)

> > +
> >  #include "xhci.h"
> >  #include "xhci-trace.h"
> > =20
> > @@ -308,6 +310,44 @@ static int xhci_pci_setup(struct usb_hcd *hcd)
> >  	return xhci_pci_reinit(xhci, pdev);
> >  }
> > =20
> > +/*
> > + * On the Raspberry Pi 4, after a PCI reset, VL805's firmware may eith=
er be
> > + * loaded directly from an EEPROM or, if not present, by the SoC's
> > VideCore.
> > + * Inform VideCore that VL805 was just reset, or defer xhci's probe if=
 not
> > yet
> > + * joinable trough the mailbox interface.
> > + */
> > +static int raspberrypi_load_vl805_fw(struct pci_dev *pdev)
> > +{
> > +#ifdef CONFIG_RASPBERRYPI_FIRMWARE
>=20
> Can you just put #ifdefs in a .h file instead please?

Yes, although...

> > +	struct device_node *fw_np;
> > +	struct rpi_firmware *fw;
> > +	u32 dev_addr;
> > +	int ret;
> > +
> > +	fw_np =3D of_find_compatible_node(NULL, NULL,
> > +					"raspberrypi,bcm2835-firmware");
> > +	if (!fw_np)
> > +		return 0;
>=20
> So for non-rpi systems, this will work just fine, no need to #ifdef out
> the whole function, right?

...you're right here, on non-rpi systems this will just return without erro=
rs.
On top of that, most VL805 users don't use device-tree, so it'll be fast.

> > +
> > +	fw =3D rpi_firmware_get(fw_np);
> > +	of_node_put(fw_np);
> > +	if (!fw)
> > +		return -EPROBE_DEFER;
> > +
> > +	dev_addr =3D pdev->bus->number << 20 | PCI_SLOT(pdev->devfn) << 15 |
> > +		   PCI_FUNC(pdev->devfn) << 12;
> > +
> > +	ret =3D rpi_firmware_property(fw, RPI_FIRMWARE_NOTIFY_XHCI_RESET,
> > +				    &dev_addr, sizeof(dev_addr));
> > +	if (ret)
> > +		return ret;
> > +
> > +	dev_dbg(&pdev->dev, "loaded Raspberry Pi's VL805 firmware\n");
> > +
> > +#endif
> > +	return 0;
> > +}

> Why not put this whole function in some rpi-platform code?

I think moving it into firmware/raspberrypi.c should be acceptable. That sa=
id
I'd still be on the loose regarding the include file, and the platform spec=
ific
function call in xhci_pci_probe(). Any suggestions?
Note that it's important to us to be able to defer the probe as the firmwar=
e
inteface bringup might race with xHC's

> > +
> >  /*
> >   * We need to register our own PCI probe function (instead of the USB
> > core's
> >   * function) in order to create a second roothub under xHCI.
> > @@ -321,6 +361,16 @@ static int xhci_pci_probe(struct pci_dev *dev, con=
st
> > struct pci_device_id *id)
> > =20
> >  	driver =3D (struct hc_driver *)id->driver_data;
> > =20
> > +	if (dev->vendor =3D=3D PCI_VENDOR_ID_VIA && dev->device =3D=3D 0x3483=
) {
> > +		retval =3D raspberrypi_load_vl805_fw(dev);
> > +		if (retval) {
> > +			if (retval !=3D -EPROBE_DEFER)
> > +				dev_err(&dev->dev,
> > +					"Failed to load VL805's firmware");
>=20
> Shouldn't the function print an error if there is one?

Noted, I'll update that.

Regards,
Nicolas


--=-XZFCLbgsBknBnaLkhP22
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5KdSoACgkQlfZmHno8
x/6d/Af5AT5S0Pwl8xDlumP0TchdnzD/yXqk8Z3/Ysr8N+PeZKeXQpprFdma2otT
z3axXIyIc2syYEscAQUqge9eKMfgHPBbsCSPICAEl00hQysxFxPmc1kJlhzxkN+F
6p3LRnzdUgVWGoc8ZMfym6EFVOlVcmQWqYKa4XaNhyhMIIMr0c5xfW2GSXpMFsNj
ZtKXzOkDVUdeD7bAZKXELiQL/O3Kgqaut8Wm4F3ux9qTTxLv8WhWNk/dIOrwIpfm
4zy6GgZ2zmr+3rP0JNXqSujyjh9ZYj2cuJ75c/JeRzVa5r4b5ARhZ64F5ZpP+slW
q5LpISI31g/y0STz1WxFgvLwttMljg==
=QcVm
-----END PGP SIGNATURE-----

--=-XZFCLbgsBknBnaLkhP22--



--===============6457653173331566141==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6457653173331566141==--


