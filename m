Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 396AA10E813
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 11:00:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=084f3Mjq6ygfgdONTfACK76Z5Vr2cqow/zC5h7/Qdqo=; b=IFYeJ7NodLRaRiFln71vo2ZQt
	0PJ3cII0+ZkdMpUb5uug3sVk+DKfZn3QlAl7pNvxa058TM45KTmSVCzTQmHpJSAPUZK1bz2i386Hr
	0yC0L9AH2dCHvjuXhFnBnAp+rxrQt8OOMNxr5FiuiViOqwuGdXCSL6FEvgnJCv6JSWEIjJP+VPXC5
	Q95H/SEN+nBIdrarUKXnxs5TOXxeZR8VNUqv4KgrMp5k/wNrYRrwVzcvB8i98XzFtxPjY3csJKjWb
	t8IRay/bit7A+pLo8qzALcqNk241rSQCurTrP3r1tvYBSyan8h0RGIqPSOuljWuNqpq+VaiYCgTCi
	n7wewQGAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibiV7-0002z9-PO; Mon, 02 Dec 2019 10:00:17 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibiV0-0002Ub-2V; Mon, 02 Dec 2019 10:00:11 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D8DE5ADD9;
 Mon,  2 Dec 2019 10:00:05 +0000 (UTC)
Message-ID: <2820f3fb9abc69d54df0dee1b6233eaf3cb63834.camel@suse.de>
Subject: Re: [PATCH v3 5/7] PCI: brcmstb: add MSI capability
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Andrew Murray <andrew.murray@arm.com>
Date: Mon, 02 Dec 2019 10:59:36 +0100
In-Reply-To: <20191129154629.GF43905@e119886-lin.cambridge.arm.com>
References: <20191126091946.7970-1-nsaenzjulienne@suse.de>
 <20191126091946.7970-6-nsaenzjulienne@suse.de>
 <20191129154629.GF43905@e119886-lin.cambridge.arm.com>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_020010_407170_1AFC2A9D 
X-CRM114-Status: GOOD (  21.25  )
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, mbrugger@suse.com, maz@kernel.org,
 phil@raspberrypi.org, linux-kernel@vger.kernel.org, jeremy.linton@arm.com,
 Eric Anholt <eric@anholt.net>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 james.quinlan@broadcom.com, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5087256067347936853=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5087256067347936853==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-K6gbtw6TubZyS8Q2Q2nd"


--=-K6gbtw6TubZyS8Q2Q2nd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andrew,

On Fri, 2019-11-29 at 15:46 +0000, Andrew Murray wrote:
> On Tue, Nov 26, 2019 at 10:19:43AM +0100, Nicolas Saenz Julienne wrote:
> > From: Jim Quinlan <james.quinlan@broadcom.com>
> >=20
> > This adds MSI support to the Broadcom STB PCIe host controller. The MSI
> > controller is physically located within the PCIe block, however, there
> > is no reason why the MSI controller could not be moved elsewhere in the
> > future. MSIX is not supported by the HW.
> >=20
> > Since the internal Brcmstb MSI controller is intertwined with the PCIe
> > controller, it is not its own platform device but rather part of the
> > PCIe platform device.
> >=20
> > Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>
> > Co-developed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > Reviewed-by: Marc Zyngier <maz@kernel.org>
> >=20
> > ---
> >=20
> > Changes since v2 (kept Marc's Reviewed-by as changes didn't affect irq
> > subsystem stuff or seem petty enough):
> >   - Use standard APIs on register operations
> >   - Get rid of revision code
>=20
> Do any RPI4's have a HW revision of less than 33?

No, IIRC it's actually revision 34. I had left that bit of code in, followi=
ng
the same train of thought as with the of_data on the device-tree part of th=
e
driver: "It's harmless and should make accomodating other devices easier." =
It
turned out not to be such a great approach. Lesson's learned. So I decided =
to
remove it.

> >   - Update rules to msi_target_addr selection
> >   - Remove unwarranted MSI_FLAG_PCI_MSIX
> >   - Small cosmetic changes
> >=20
> > Changes since v1:cuando ten=C3=ADas tu vacaciones?
> >   - Move revision code and some registers to this patch
> >   - Use PCIE_MSI_IRQ_DOMAIN in Kconfig
> >   - Remove redundant register read from ISR
> >   - Fail probe on MSI init error
> >   - Get rid of msi_internal
> >   - Use bitmap family of functions
> >   - Use edge triggered setup
> >   - Add comment regarding MultiMSI
> >   - Simplify compose_msi_msg to avoid reg read
> >=20
> > This is based on Jim's original submission[1] with some slight changes
> > regarding how pcie->msi_target_addr is decided.
> >=20
> > [1] https://patchwork.kernel.org/patch/10605955/
> >=20
> >  drivers/pci/controller/Kconfig        |   1 +
> >  drivers/pci/controller/pcie-brcmstb.c | 261 +++++++++++++++++++++++++-
> >  2 files changed, 261 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/drivers/pci/controller/Kconfig b/drivers/pci/controller/Kc=
onfig
> > index 27504f108ee5..918e283bbff1 100644
> > +
> > +static void brcm_msi_compose_msi_msg(struct irq_data *data, struct msi=
_msg
> > *msg)
> > +{
> > +	struct brcm_msi *msi =3D irq_data_get_irq_chip_data(data);
> > +
> > +	msg->address_lo =3D lower_32_bits(msi->target_addr);
> > +	msg->address_hi =3D upper_32_bits(msi->target_addr);
> > +	msg->data =3D 0x6540 | data->hwirq;
>=20
> NIT: Perhaps this 0x6540 can be a define - just in the same way we have a
> define
> for PCIE_MISC_MSI_DATA_CONFIG_VAL.

Noted

Regards,
Nicolas


--=-K6gbtw6TubZyS8Q2Q2nd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3k4IgACgkQlfZmHno8
x/6oLAf/ZrjxvdunJzn4AYQQQ3YqnEVeLonAfG7NdyTmIPouYioWmuAJeWWycG9Z
w9LJ5HQWtb34zAbKgJL9oznp+tlE/SKI+BoIxJt3HnNC44bQvYP9D2mVuC3khAMQ
6wsSY7nKOQ84BC1wNhhsTxVOrR4TqAaCXG+Qh+rP5Vu/4tcH5CDJCg1+NpsTN1Lh
/skKo6q+DbjQxyRUwXp0CpTm0VpSQpbhu9BDRAFUNT9VKY0zptPGFF1CiDaV+dsU
WJENZ1GM/PaynUdZFbUE/y+uRf0JyvJeXyq6h7tsX0ORPvBHSR/mqSw70UregaH6
c+jSMYmGSBOe+KRNM9w/TLdcRBa6Qw==
=Z/P8
-----END PGP SIGNATURE-----

--=-K6gbtw6TubZyS8Q2Q2nd--



--===============5087256067347936853==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5087256067347936853==--


