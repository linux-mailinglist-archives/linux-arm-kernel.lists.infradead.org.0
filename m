Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD371F3B6B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 15:08:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jyYciM3lYWJQU+0KWhoJoXoBTt+yIYturIDOm7WZma4=; b=rPoR/E0AR8C21E9px9ePyf5Er
	4itGtHBc2lL9pVN6IF32TzXEHWGSQltJjTU3b0rvToAU9hkJfG1eo9kz98MPshPZNTztW1D2LyFLw
	Dv6mr4efSa4JIDpGC7Z5INvC9W9Q/utfFrprEwX1DZAbhCUL0GdY9wkKjWvNY47zvhYSc/uZIIzdj
	qvjKaoDqvtdBhKWz9Q0xdf/3WStal9CdoNW840L9CBSoeB9gOrOv6o/X8S8qekCr/70LFGNqYcAiN
	6IMPXJLw9TT1bG/ohvdoYJ71mFm9XTyhYUbM7p/NV9T8F8s0557maBK/hlDs63XCmrcSfIPLAaPCK
	BV4YxYymg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jidzF-0006IK-DN; Tue, 09 Jun 2020 13:08:17 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jidz7-0006HJ-ML; Tue, 09 Jun 2020 13:08:11 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id A221CAA6F;
 Tue,  9 Jun 2020 13:08:10 +0000 (UTC)
Message-ID: <5c55790c31603aed48fcd6e84ccbc4a6d8c6d1fd.camel@suse.de>
Subject: Re: [PATCH 5/9] usb: xhci-pci: Add support for reset controllers
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Philipp Zabel <p.zabel@pengutronix.de>, Florian Fainelli
 <f.fainelli@gmail.com>, gregkh@linuxfoundation.org, wahrenst@gmx.net, 
 robh@kernel.org, mathias.nyman@linux.intel.com, Eric Anholt
 <eric@anholt.net>,  bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-pci@vger.kernel.org, linux-usb@vger.kernel.org, Mathias Nyman
 <mathias.nyman@intel.com>
Date: Tue, 09 Jun 2020 15:08:04 +0200
In-Reply-To: <73fdeca7b651252f7907635e97f9f9b31e702868.camel@pengutronix.de>
References: <20200608192701.18355-1-nsaenzjulienne@suse.de>
 <20200608192701.18355-6-nsaenzjulienne@suse.de>
 <5d3200cc-17cc-026f-1dfe-c10ec949f9ad@gmail.com>
 <382b81937757de570a83ba4ff9276221c0bba547.camel@suse.de>
 <73fdeca7b651252f7907635e97f9f9b31e702868.camel@pengutronix.de>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_060809_877619_E5C7192E 
X-CRM114-Status: GOOD (  20.22  )
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
Content-Type: multipart/mixed; boundary="===============6353295927015080343=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6353295927015080343==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-aPyaZQX6Bi+lXKb2F+qi"


--=-aPyaZQX6Bi+lXKb2F+qi
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2020-06-09 at 13:59 +0200, Philipp Zabel wrote:
> Hi Nicolas,
>=20
>=20
>=20
> On Tue, 2020-06-09 at 13:18 +0200, Nicolas Saenz Julienne wrote:
>=20
> > Hi Florian, thanks for the reviews!
> > On Mon, 2020-06-08 at 12:43 -0700, Florian Fainelli wrote:
> > > On 6/8/2020 12:26 PM, Nicolas Saenz Julienne wrote:
> > > > Some atypical users of xhci-pci might need to manually reset their =
xHCI
> > > > controller before starting the HCD setup. Check if a reset controll=
er
> > > > device is available to the PCI bus and trigger a reset.
> > > > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > > > ---
> > > >   drivers/usb/host/xhci-pci.c | 9 +++++++++
> > > >   1 file changed, 9 insertions(+)
> > > > diff --git a/drivers/usb/host/xhci-pci.c b/drivers/usb/host/xhci-pc=
i.c
> > > > index ef513c2fb843..45f70facdfcd 100644
> > > > --- a/drivers/usb/host/xhci-pci.c
> > > > +++ b/drivers/usb/host/xhci-pci.c
>=20
> [...]
>=20
> > > > @@ -347,6 +349,13 @@ static int xhci_pci_probe(struct pci_dev *dev,
> > > > const
> > > > struct pci_device_id *id)
> > > >                    return retval;
> > > >    }
> > > >  =20
> > > > + reset =3D devm_reset_control_get(&dev->bus->dev, NULL);
> > > Should not this be devm_reset_control_get_optional()?
> > Yes, you're right.
>=20
>=20
> Please use devm_reset_control_get_optional_exclusive() while you're at
>=20
> it.
>=20

Will do!

Regards,
Nicolas


--=-aPyaZQX6Bi+lXKb2F+qi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7fibQACgkQlfZmHno8
x/4nCQf+Pu7jCPf9/NoIlTfRB7FZ4OANYt5inVdJyL5rJD2651r40FKjtZOBZzVA
WZF5fC3mPhzBuwiOY0BhQNmGczuZW7F3xzfWtitDo1ee7xMbBO6Sb+ppOQ3HD3qa
dDIcoWpQkUBSy4nF2HegV8Mk3lk1wNp5qWKhlOP9RdpI3TaMPQ6LYdjlHKXGnHfK
tW56rMzKdearm5rY/UuChAfqZgZnlTDugkE/U0PPUToNmd3HVw4I46wNgCPwxFKV
99FgNnbLiEAqYzOD32uSd8o8N+v7smGdeG8IgNMxji+01vqUH+ygdqUJt/9V3nfK
jYUgqXTX6cLyPVX9Km25skKw8UAcMw==
=bQPH
-----END PGP SIGNATURE-----

--=-aPyaZQX6Bi+lXKb2F+qi--



--===============6353295927015080343==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6353295927015080343==--


