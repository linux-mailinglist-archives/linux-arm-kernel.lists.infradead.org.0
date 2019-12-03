Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 674A711035C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 18:23:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2r1UAOjZnf2wDJ30LbtcDKS8WgSJcGLzi1pexzAciVk=; b=JDNhaYlv4gnuosJGmPU4PG3NA
	NLPGR0ctMrZm4a3e4Jtn687gVS9dmei58vCW1m1UujroygBYN+mBFU3GLTBawkVA3KoujdnzJfapN
	txF9BMC2+nND8znO8IrqSTe0pNi8rotD7GjGiAT8HRGxhkah5s8c1mwHmMERn4y7MvHN3SkAe2ve7
	boHIVYNw9mqCipJRawbRGOJxrcviSu8fEnVL1IEfl8pHsqisj5QCJdmXUDVmI55r/RbwMa8VOsQbz
	APRwH4dqUzt5B9zleV48deIY8HJEpdNjjJgdNv6OLxvn/FoCox6TVVuMK3+tqa2B3Q7Go0gjBOk/W
	GaS7Oa62w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icBtM-0002tU-RG; Tue, 03 Dec 2019 17:23:16 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icBtD-0002sQ-F2; Tue, 03 Dec 2019 17:23:09 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 83641B2074;
 Tue,  3 Dec 2019 17:23:05 +0000 (UTC)
Message-ID: <dd0d91b74853d1afa9bcb8a56a3ddbfa744ae116.camel@suse.de>
Subject: Re: [PATCH v3 4/7] PCI: brcmstb: add Broadcom STB PCIe host
 controller driver
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Jeremy Linton <jeremy.linton@arm.com>, andrew.murray@arm.com, 
 maz@kernel.org, linux-kernel@vger.kernel.org, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, Eric Anholt <eric@anholt.net>, Stefan Wahren
 <wahrenst@gmx.net>, Florian Fainelli <f.fainelli@gmail.com>, 
 bcm-kernel-feedback-list@broadcom.com
Date: Tue, 03 Dec 2019 18:23:03 +0100
In-Reply-To: <ddab6abd-68fb-543d-bb8e-057d92ac15ed@arm.com>
References: <20191126091946.7970-1-nsaenzjulienne@suse.de>
 <20191126091946.7970-5-nsaenzjulienne@suse.de>
 <ddab6abd-68fb-543d-bb8e-057d92ac15ed@arm.com>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_092307_792855_2590E148 
X-CRM114-Status: GOOD (  18.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mbrugger@suse.com, linux-pci@vger.kernel.org, phil@raspberrypi.org,
 linux-rpi-kernel@lists.infradead.org, james.quinlan@broadcom.com,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3766662200930906304=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3766662200930906304==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-tiQfYVDELUAGwVd1u8VU"


--=-tiQfYVDELUAGwVd1u8VU
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-12-03 at 10:31 -0600, Jeremy Linton wrote:
> Hi,
>=20
> On 11/26/19 3:19 AM, Nicolas Saenz Julienne wrote:
> > From: Jim Quinlan <james.quinlan@broadcom.com>
> >=20
> > This adds a basic driver for Broadcom's STB PCIe controller, for now
> > aimed at Raspberry Pi 4's SoC, bcm2711.
> >=20
> > Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>
> > Co-developed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> >=20
> > ---
> >=20
> > Changes since v2:
> >    - Correct rc_bar2_offset sign
> >    - Invert IRQ clear and masking in setup code
> >    - Use bitfield.h, redo all register ops while keeping the register
> >      names intact
> >    - Remove all SHIFT register definitions
> >    - Get rid of all _RB writes
> >    - Get rid of of_data
> >    - Don't iterate over inexisting dma-ranges
> >    - Add comment regarding dma-ranges validation
> >    - Small cosmetic cleanups
> >    - Fix license mismatch
> >    - Set driver Kconfig tristate
> >    - Didn't add any comment about the controller not being I/O coherent
> >      for now as I wait for Jeremy's reply
>=20
> I guess its fine.. In answer to the original query. It seems that this=
=20
> PCIe bridge requires explicit cache operations for DMA from PCIe=20
> endpoints. This wasn't obvious to me at first reading because I was=20
> assuming the custom DMA ops were strictly to deal with the stated DMA=20
> limits.

Thanks, I now see what you meant.

> So if you end up respinning, it still might be worthy mentioning=20
> somewhere that this is a non-coherent PCIe implementation. I still hold=
=20
> much of my original reservations about pieces of this driver.=20
> Particularly, how it might look if someone wanted to boot the RPi using=
=20
> ACPI on linux. But, I was shown a clever bit of AML recently, which=20
> solves those problems for the RPi and the attached XHCI.

I don't know much about ACPI, but ultimately if you're booting trough ACPI,
you're unlikely to use device-tree at all, right? And if you where and this
driver clashed with your ACPI implementation you'd simply have to disable i=
t on
the device-tree.

> So, given how much time I've looked at the root port configuration/etc=
=20
> sections of this driver and I've not found a serious bug:
>=20
> Reviewed-by: Jeremy Linton <jeremy.linton@arm.com>

Thanks!

Regards,
Nicolas


--=-tiQfYVDELUAGwVd1u8VU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3mmfcACgkQlfZmHno8
x/526wf/dHShet63is8+wboQUSa9Ik3p1r5FrbuSercRQWbob00Roa1615tbyVSg
vJvel1G4DtTT/bDzL7xsp4eixx0NeInNcuJvv9bBveOzD5U1TAFdlHu4o2wVtFVF
oqQevC+iJoMb4NX9qECr8NHoRgyBaw9fakVjgMRZ/xhqHQ1edsqJVjHcUHBVv6D8
w4r5CbB3AYmidDDOCx62CO6xKq+zHWg6yAVbDbCnisIc/zWA/F+Lq7U0ukqEP1aF
vthC/OvlaQXB7c9ui7cXtklRXL00yGBgpShG5TOQrNP1WInlUG5IkheQm3kdKYob
4k2yRLGOlwt8fOiPz3s2RCWt6NtXRg==
=ByNX
-----END PGP SIGNATURE-----

--=-tiQfYVDELUAGwVd1u8VU--



--===============3766662200930906304==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3766662200930906304==--


