Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 290CF13B1E8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 19:19:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=p/YQPhdAjKjvsugRF+MzsiUpuah7g0LI8494HAWhZdo=; b=VhfY54lEDkJlVH2nwcLlGr/MS
	cOjs8ccQpXhKwkPEfPwThkfleUISB036Ntgj+379UFbD1UXdhMT7tHKaS1ZHJ3bldKqJt9Z86Yp1t
	uf630wc0qULFRSRWqvKZ0OwG3z6Xvi2qqYtgx6dk0QK3SpHcd8IsFyphKybhlr3H29JMGH+DCCTdS
	t4WQzHnxYf+k+PdyLlPN1ItGMkDWHf2+bUtvAOp41o/oyhZ/01jQZDE91jPXW2fBkzQTRPwr/W7Qn
	N8+J2yFofDtxZG3b74tp83WqpJWXzJF1O8BvjUryCefp6N3AN5bIjwI65c4RB8+LaLgZYzN81rrFg
	bEX3OCTSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irQmJ-00032u-WD; Tue, 14 Jan 2020 18:19:00 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irQmA-00031S-66; Tue, 14 Jan 2020 18:18:54 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 9CB5AAC5C;
 Tue, 14 Jan 2020 18:18:48 +0000 (UTC)
Message-ID: <8a7057fe1aaf415272d28f4e690313984c3a148d.camel@suse.de>
Subject: Re: [PATCH v5 3/6] PCI: brcmstb: Add Broadcom STB PCIe host
 controller driver
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Date: Tue, 14 Jan 2020 19:18:46 +0100
In-Reply-To: <20200114171101.GA11177@e121166-lin.cambridge.arm.com>
References: <20191216110113.30436-1-nsaenzjulienne@suse.de>
 <20191216110113.30436-4-nsaenzjulienne@suse.de>
 <20200114171101.GA11177@e121166-lin.cambridge.arm.com>
User-Agent: Evolution 3.34.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_101850_509848_DDC800F7 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, maz@kernel.org,
 phil@raspberrypi.org, linux-kernel@vger.kernel.org, jeremy.linton@arm.com,
 mbrugger@suse.com, bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 james.quinlan@broadcom.com, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, andrew.murray@arm.com,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5916448073970443839=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5916448073970443839==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-aT8Qvga/f/1E/yJbYhHH"


--=-aT8Qvga/f/1E/yJbYhHH
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Lorenzo,

On Tue, 2020-01-14 at 17:11 +0000, Lorenzo Pieralisi wrote:
> On Mon, Dec 16, 2019 at 12:01:09PM +0100, Nicolas Saenz Julienne wrote:
> > From: Jim Quinlan <james.quinlan@broadcom.com>
> >=20
> > This adds a basic driver for Broadcom's STB PCIe controller, for now
> > aimed at Raspberry Pi 4's SoC, bcm2711.
> >=20
> > Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>
> > Co-developed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > Reviewed-by: Andrew Murray <andrew.murray@arm.com>
> > Reviewed-by: Jeremy Linton <jeremy.linton@arm.com>
> >=20
> > ---
> >=20
> > Changes since v3:
> >   - Update commit message
> >   - rollback roundup_pow_two usage, it'll be updated later down the lin=
e
> >   - Remove comment in register definition
> >=20
> > Changes since v2:
> >   - Correct rc_bar2_offset sign
>=20
> In relation to this change.
>=20
> [...]
>=20
> > +static inline int brcm_pcie_get_rc_bar2_size_and_offset(struct brcm_pc=
ie
> > *pcie,
> > +							u64 *rc_bar2_size,
> > +							u64 *rc_bar2_offset)
> > +{
> > +	struct pci_host_bridge *bridge =3D pci_host_bridge_from_priv(pcie);
> > +	struct device *dev =3D pcie->dev;
> > +	struct resource_entry *entry;
> > +
> > +	entry =3D resource_list_first_type(&bridge->dma_ranges, IORESOURCE_ME=
M);
> > +	if (!entry)
> > +		return -ENODEV;
> > +
> > +	*rc_bar2_offset =3D -entry->offset;
>=20
> I think this deserves a comment - I guess it has to do with how the
> controller expects CPU<->PCI offsets to be expressed compared to how it
> is computed in dma_ranges entries.

You're right, OF code calculates it by doing:

	offset =3D cpu_start_addr - pci_start_addr (see
devm_of_pci_get_host_bridge_resources())

While the RC_BAR2_CONFIG register expects the opposite subtraction. I'll ad=
d a
comment on the next revision.

> I will try to complete the review shortly and try to apply it given
> that it has already been reviewed by others.

Thanks!

Regards,
Nicolas

> Lorenzo
>=20


--=-aT8Qvga/f/1E/yJbYhHH
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl4eBgYACgkQlfZmHno8
x/5eqQf9E0hAW+zHpUgu0m0lqOFYwXeP3hO0XVERD2rmERkNOwvehWM7LhMdsfRA
jtDJJSpC5itlAY7Oz8bi0SfTTRzt8XjaF7eSR6EfkCgwPpvMlw2pJIFlGEKYhv0k
+NEwi+dOPllYZXC656nAKXI0c5CAt7B4P373ByV7fNjw9ULWv04O58QWh3mTAyBO
x9nWW6d8ZGwD8SQcsGY9RRjpr/XaZ85LDxxbvYCKC7JXCuW1CfyetICSveZ1R22v
ysutXh0PlbPP8+jvTFfYrkPnc6SIytq0tdqr+Rma/BBF/lGvvi1uF2rUc5HYXZ+g
gAkFA1hv1HEEr2m4IXDi96GBnimNnw==
=EJpg
-----END PGP SIGNATURE-----

--=-aT8Qvga/f/1E/yJbYhHH--



--===============5916448073970443839==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5916448073970443839==--


