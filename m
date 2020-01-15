Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE2C713BE68
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 12:30:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=R/anQ55uucOXeRuTRyxHtxQnAb7CvQGRJvA4OFwbwtg=; b=mAyF3cEThxr8oIw/+bjvzYhvc
	ktwjFfXD1pUnDLCTTBLdi3pBoQL0JePD8J3dSBnPDZD9Ve+MHTWaDDuUVDOLllVXV4ibzPrHNEOUj
	VZRI+6hiAaShsSF0uLkgbj07iDxLObkpe67UPNxMec8axtwy0zrzF4vU+3bQ28egqujSF1kOD9sSZ
	Skfl5vSQmCFBrCmOJzww7ckJ/GQq+DUEwm2zQqjU3yVh+BnKunqTiHSC5ox8sGQN57aCFBVrB7bv3
	Dk+qdm2TVhHtPleJ1dbGm7NJpMxBodNCGDp8yUeC5+OMfal0LRCNNWSNOtICA+qMHJCbFhuy64XDz
	OyKRHhHXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irgsD-000080-RT; Wed, 15 Jan 2020 11:30:09 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irgrs-0008Ec-0Q; Wed, 15 Jan 2020 11:29:52 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 7F209AC18;
 Wed, 15 Jan 2020 11:29:42 +0000 (UTC)
Message-ID: <be8ddb33a7360af1815cf686f77f3f0913d02be3.camel@suse.de>
Subject: Re: [PATCH v5 3/6] PCI: brcmstb: Add Broadcom STB PCIe host
 controller driver
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Date: Wed, 15 Jan 2020 12:29:37 +0100
In-Reply-To: <20200115100054.GA2174@e121166-lin.cambridge.arm.com>
References: <20191216110113.30436-1-nsaenzjulienne@suse.de>
 <20191216110113.30436-4-nsaenzjulienne@suse.de>
 <20200114171101.GA11177@e121166-lin.cambridge.arm.com>
 <8a7057fe1aaf415272d28f4e690313984c3a148d.camel@suse.de>
 <20200115100054.GA2174@e121166-lin.cambridge.arm.com>
User-Agent: Evolution 3.34.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_032948_435425_BFB27DFE 
X-CRM114-Status: GOOD (  23.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, maz@kernel.org,
 phil@raspberrypi.org, linux-kernel@vger.kernel.org, jeremy.linton@arm.com,
 mbrugger@suse.com, bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 james.quinlan@broadcom.com, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, andrew.murray@arm.com,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6103329128868053257=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6103329128868053257==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-6y7LFOR+x4F4HPXiJaWq"


--=-6y7LFOR+x4F4HPXiJaWq
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2020-01-15 at 10:00 +0000, Lorenzo Pieralisi wrote:
> On Tue, Jan 14, 2020 at 07:18:46PM +0100, Nicolas Saenz Julienne wrote:
> > Hi Lorenzo,
> >=20
> > On Tue, 2020-01-14 at 17:11 +0000, Lorenzo Pieralisi wrote:
> > > On Mon, Dec 16, 2019 at 12:01:09PM +0100, Nicolas Saenz Julienne wrot=
e:
> > > > From: Jim Quinlan <james.quinlan@broadcom.com>
> > > >=20
> > > > This adds a basic driver for Broadcom's STB PCIe controller, for no=
w
> > > > aimed at Raspberry Pi 4's SoC, bcm2711.
> > > >=20
> > > > Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>
> > > > Co-developed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > > > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > > > Reviewed-by: Andrew Murray <andrew.murray@arm.com>
> > > > Reviewed-by: Jeremy Linton <jeremy.linton@arm.com>
> > > >=20
> > > > ---
> > > >=20
> > > > Changes since v3:
> > > >   - Update commit message
> > > >   - rollback roundup_pow_two usage, it'll be updated later down the=
 line
> > > >   - Remove comment in register definition
> > > >=20
> > > > Changes since v2:
> > > >   - Correct rc_bar2_offset sign
> > >=20
> > > In relation to this change.
> > >=20
> > > [...]
> > >=20
> > > > +static inline int brcm_pcie_get_rc_bar2_size_and_offset(struct
> > > > brcm_pcie
> > > > *pcie,
> > > > +							u64
> > > > *rc_bar2_size,
> > > > +							u64
> > > > *rc_bar2_offset)
> > > > +{
> > > > +	struct pci_host_bridge *bridge =3D
> > > > pci_host_bridge_from_priv(pcie);
> > > > +	struct device *dev =3D pcie->dev;
> > > > +	struct resource_entry *entry;
> > > > +
> > > > +	entry =3D resource_list_first_type(&bridge->dma_ranges,
> > > > IORESOURCE_MEM);
> > > > +	if (!entry)
> > > > +		return -ENODEV;
> > > > +
> > > > +	*rc_bar2_offset =3D -entry->offset;
> > >=20
> > > I think this deserves a comment - I guess it has to do with how the
> > > controller expects CPU<->PCI offsets to be expressed compared to how =
it
> > > is computed in dma_ranges entries.
> >=20
> > You're right, OF code calculates it by doing:
> >=20
> > 	offset =3D cpu_start_addr - pci_start_addr (see
> > devm_of_pci_get_host_bridge_resources())
> >=20
> > While the RC_BAR2_CONFIG register expects the opposite subtraction.
> > I'll add a comment on the next revision.
>=20
> There is no need for a new posting, either write that comment here
> and I update the code or inline the patch or just resend *this* updated
> patch to the list.

OK, hope this sounds good enough:

	/*
	 * The controller expects the inbound window offset to be calculated as
	 * the difference between PCIe's address space and CPU's. The offset
	 * provided by the firmware is calculated the opposite way, so we
	 * negate it.
	 */

Regards,
Nicolas


--=-6y7LFOR+x4F4HPXiJaWq
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl4e96IACgkQlfZmHno8
x/4MEgf/cet8Daq/EDQambM+OlNLvE+SC8wlpWaGDKclIGkLyfP8aBZgldzoTbKl
ScGl8Z8ZvXFpRs5ywBoyQDcFzRwwp3e1/4CKwopLwBAJXIPoMTN3jVpp6W0/XP34
8/ydNXm+FuF1SbbULl5a3/DDzB/quOrU32PpYpCN1yKqaPYEHSFCIbQuTx1vyHTZ
uLhxmCgoDoiuol+axJ1TPQ2MYwAd3ylYf3E2BvCe76p9ir6Pch7ztp3mZGBvnxsN
T3vd/jNNtjF1JQjjvdHPMmXsTzxp14GSwmemPpi0kmXhUOqVdtRK4JDF3TDY+qlA
QYFIfmj9WA/htGKe9jP/P2Ti86fNYw==
=lj1L
-----END PGP SIGNATURE-----

--=-6y7LFOR+x4F4HPXiJaWq--



--===============6103329128868053257==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6103329128868053257==--


