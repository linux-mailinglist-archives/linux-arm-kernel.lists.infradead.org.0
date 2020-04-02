Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4CD19C402
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 16:27:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=41lUhJ0PABZF6hJIu5Rllszz62F91Mc3nkIxuCLEbqU=; b=c7WQBdCUIaxq9GgDk1LOqPXf/
	CrD0nam+MvmGPCXRWcA1GnjHrb3ve/Ebh+Bh/ITMWLgO85/OQsAoWUbyqSEYRGCIc9nZ0Qs+l/x6N
	8P6YhB12kwPXVXbF5/4aFHBFrBRly5KUZ/Npcq+TrTvGZSaOVHjJdVVMJrVLtLShsxIgGMv1qEpC+
	WwcbuhJvk0l6rDh0YT132WK3U5e8jGC5nz+mazMxLomFm9t78Tz8lHgRR1WSOxNDVtualIVZG3PbV
	wl4uuAKOlB6uATq7PdBVn9s13FSUs/VbgsmLe+qHK55ACtW/I6RGKUpBiYz10K026T18MTjAZnQle
	p+Gc+nCDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK0og-0005aD-OR; Thu, 02 Apr 2020 14:27:34 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK0ob-0005ZW-0y; Thu, 02 Apr 2020 14:27:30 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 81969AC44;
 Thu,  2 Apr 2020 14:27:25 +0000 (UTC)
Message-ID: <47c543e2144d5247743548b00d1931e9fc217f43.camel@suse.de>
Subject: Re: [PATCH v6 3/4] PCI: brcmstb: Wait for Raspberry Pi's firmware
 when present
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Bjorn Helgaas <helgaas@kernel.org>
Date: Thu, 02 Apr 2020 16:27:23 +0200
In-Reply-To: <20200401204149.GA131584@google.com>
References: <20200401204149.GA131584@google.com>
User-Agent: Evolution 3.34.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_072729_359821_8DE9374C 
X-CRM114-Status: GOOD (  25.30  )
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, wahrenst@gmx.net,
 sergei.shtylyov@cogentembedded.com, tim.gover@raspberrypi.org,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: multipart/mixed; boundary="===============0084866118671555432=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0084866118671555432==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-UbnwTZ/sE1EQtQ8St3GX"


--=-UbnwTZ/sE1EQtQ8St3GX
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Bjorn,

On Wed, 2020-04-01 at 15:41 -0500, Bjorn Helgaas wrote:
> On Tue, Mar 24, 2020 at 07:28:11PM +0100, Nicolas Saenz Julienne wrote:
> > xHCI's PCI fixup, run at the end of pcie-brcmstb's probe, depends on
>=20
> Is there a function name for this fixup that you can mention?

Yes, rpi_firmware_init_vl805(), I'll update the description.

> > RPi4's VideoCore firmware interface to be up and running. It's possible
> > for both initializations to race, so make sure it's available prior to
> > starting.
>=20
> I guess "both initializations" means brcm_pcie_probe() and something
> else?  It'd be nice to include that function name here, too.

Noted, I'll be more explicit on the next version of the series. More in dep=
th
explanation below.

> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
> > ---
> >  drivers/pci/controller/pcie-brcmstb.c | 15 +++++++++++++++
> >  1 file changed, 15 insertions(+)
> >=20
> > diff --git a/drivers/pci/controller/pcie-brcmstb.c
> > b/drivers/pci/controller/pcie-brcmstb.c
> > index 3a10e678c7f4..a3d3070a5832 100644
> > --- a/drivers/pci/controller/pcie-brcmstb.c
> > +++ b/drivers/pci/controller/pcie-brcmstb.c
> > @@ -28,6 +28,8 @@
> >  #include <linux/string.h>
> >  #include <linux/types.h>
> > =20
> > +#include <soc/bcm2835/raspberrypi-firmware.h>
> > +
> >  #include "../pci.h"
> > =20
> >  /* BRCM_PCIE_CAP_REGS - Offset for the mandatory capability config reg=
s */
> > @@ -917,11 +919,24 @@ static int brcm_pcie_probe(struct platform_device
> > *pdev)
> >  {
> >  	struct device_node *np =3D pdev->dev.of_node, *msi_np;
> >  	struct pci_host_bridge *bridge;
> > +	struct device_node *fw_np;
> >  	struct brcm_pcie *pcie;
> >  	struct pci_bus *child;
> >  	struct resource *res;
> >  	int ret;
> > =20
> > +	/*
> > +	 * We have to wait for the Raspberry Pi's firmware interface to be up
> > +	 * as some PCI fixups depend on it.
>=20
> It'd be nice to know the nature of this dependency between the
> firmware interface and the fixups.  This may be useful for future
> maintenance.  E.g., if PCI config access doesn't work until the
> firmware interface is up, that would affect almost everything.  But
> you say "some PCI fixups", so I suppose the actual dependency is
> probably something else.

Sorry it wasn't clear enough, I'll redo this comment. Also note that the PC=
Ie
bus and the XHCI chip are hardwired, so that's the only device that'll ever=
 be
available on the bus.

VIA805's XHCI firmware has to be loaded trough RPi's firmware mailbox in
between the PCIe bus probe and the subsequent USB probe. Note that a PCI re=
set
clears the firmware. The only mechanism available in between the two operat=
ions
are PCI Fixups. These are limited in their own way, as I can't return
-EPROBE_DEFER if the firmware interface isn't available yet. Hence the need=
 for
an explicit dependency between pcie-brcmstb and raspberrypi's firmware mail=
box
device.

Your concern here showcases this series' limitations. From a high level
perspective it's not clear to me who should be responsible for downloading =
the
firmware. And I get the feeling I'm abusing PCI fixups. I haven't found any
smart way to deal with this three way dependency of platform/non-platform
devices. I even looked into adding -EPROBE_DEFER support to fixups, but I f=
ear
that would entail moving them into the core device definition.

Regards,
Nicolas


--=-UbnwTZ/sE1EQtQ8St3GX
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl6F9ksACgkQlfZmHno8
x/7wXQf9GeRwGPIeI/wbeH0RFkXsyiFyaYxhvRtWla25hLtNxPLBoPWmR9sR5YP3
8ZM10ZELD5DqgwBhBeWqJk43ZzNYnJACp97N2fe7wZBVXFx9fCtlG1VmcqG02CiT
JkIgFDeAAq5tjbgWfKEBtTiLXch+C66Ja+7H7XOAm0RhEdVDqhrCI9lZecoHYWev
0TarGDoABp25KqujbYb/TXFzg4LPMEA39tNdvt8slPf28Z5En4IdPUpogXQ6+fA6
WbbY64G1WCnBQBlnB/XFRX+cuVRcwX+FImDSzSowaEZHeuMyC1qXQcmMHkym59KP
0cMQjaZhNNzZpO26RCF2+eJSzDzS5Q==
=jbBy
-----END PGP SIGNATURE-----

--=-UbnwTZ/sE1EQtQ8St3GX--



--===============0084866118671555432==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0084866118671555432==--


