Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54174105878
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 18:19:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5d1y5HieZ5IY8dsP/4ZIQRduTeiuoY+/i4zx/biych4=; b=B25pgjBxnw8X7X7ead8sbMgUK
	XAMK3Ro1TNqhEkp19cZT+Mh1IMDuYISADCJWxN5zjH9FpVUHJuxHW0MooYbsYeLDrIdyJyCAJII3U
	2M5VveSPSaWrOdBNPFj1LJC4ldClTzUkkWQT67lzw0aq0MieLksxRDkdMLTZDi9SV6w4irzcEE0uE
	2W2vUpybRWxSI3eT9aVOzc8Mwx2swkPPE7Uq8BSVfnqV7SUKEUvneZCUq0ahcZvqjmwvLnmcHCMm+
	3pSoCk64Ww07rAMAAGAwoin/39tUXyHj0NeRsyp/O0RFA6sZWc5oJZQtvIyIzZOOjASMIqM8qZqAJ
	fKFgIYFug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXq76-00020F-88; Thu, 21 Nov 2019 17:19:28 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXq6u-0001zC-Cs; Thu, 21 Nov 2019 17:19:19 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 883FFB2A5;
 Thu, 21 Nov 2019 17:19:14 +0000 (UTC)
Message-ID: <85c4a01d4991a8593a9c3b56cf04bff38cc110e5.camel@suse.de>
Subject: Re: [PATCH v2 5/6] PCI: brcmstb: add MSI capability
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Andrew Murray <andrew.murray@arm.com>
Date: Thu, 21 Nov 2019 18:19:12 +0100
In-Reply-To: <20191121153842.GZ43905@e119886-lin.cambridge.arm.com>
References: <20191112155926.16476-1-nsaenzjulienne@suse.de>
 <20191112155926.16476-6-nsaenzjulienne@suse.de>
 <20191121153842.GZ43905@e119886-lin.cambridge.arm.com>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_091917_897294_9E903DD3 
X-CRM114-Status: GOOD (  20.07  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: multipart/mixed; boundary="===============7084640222067607678=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7084640222067607678==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-UzSeM3n4DH+cLONL/tLo"


--=-UzSeM3n4DH+cLONL/tLo
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-11-21 at 15:38 +0000, Andrew Murray wrote:
> >  #define PCIE_MISC_PCIE_STATUS_PCIE_PHYLINKUP_SHIFT		0x4
> >  #define PCIE_MISC_PCIE_STATUS_PCIE_LINK_IN_L23_MASK		0x40
> >  #define PCIE_MISC_PCIE_STATUS_PCIE_LINK_IN_L23_SHIFT		0x6
> > +#define PCIE_MISC_REVISION_MAJMIN_MASK				0xffff
> > +#define PCIE_MISC_REVISION_MAJMIN_SHIFT				0
>=20
> I don't think these two are used.

Yes, in brcm_pcie_setup(), when we grab the PCIe hw revision number.

[...]
> > +static struct msi_domain_info brcm_msi_domain_info =3D {
> > +	/* TODO: Multi MSI is technically supported by the controller */
>=20
> As I understand we're not supporting MSI_FLAG_MULTI_PCI_MSI, not because =
there
> is no hardware capability, but because the current use-case (RPi EPs) hav=
e no
> need for it. It wouldn't be a stretch to add this support (compare your a=
lloc
> implementation with nwl_irq_domain_alloc from pcie-xilinx-nwl.c) - though=
 I
> appreciate the difficulity you may have with testing.
>=20
> I'd probably replace the TODO line with:
>=20
> /* Multi MSI is supported by the controller, but not by this driver */

I'll replace the comment for now.

I've already seen people who unsoldered the XHCI chip on the RPi4 to then a=
dd a
proper PCI connector. If someone shows up with such setup, I'll be happy to
work out the MultiMSI support.

[...]
> > +	.flags	=3D (MSI_FLAG_USE_DEF_DOM_OPS | MSI_FLAG_USE_DEF_CHIP_OPS |
> > +		   MSI_FLAG_PCI_MSIX),
>=20
> Why the MSIX flag if the commit message says "It does not add MSIX since =
that
> functionality is not in the HW." in the commit message?

That's plain wrong, sorry.

[...]
> > +	.chip	=3D &brcm_msi_irq_chip,
> > +};
> > +
> > +static void brcm_pcie_msi_isr(struct irq_desc *desc)
> > +{
> > +	struct irq_chip *chip =3D irq_desc_get_chip(desc);
> > +	unsigned long status, virq;
> > +	struct brcm_msi *msi;
> > +	u32 mask, bit, hwirq;
> > +	struct device *dev;
> > +
> > +	chained_irq_enter(chip, desc);
> > +	msi =3D irq_desc_get_handler_data(desc);
> > +	mask =3D msi->intr_legacy_mask;
>=20
> NIT: As you only use this variable once, you could get rid of it.

OK

[...]
> > +
> > +static int brcm_pcie_enable_msi(struct brcm_pcie *pcie)
> > +{
> > +	struct brcm_msi *msi;
> > +	int irq, ret;
> > +	struct device *dev =3D pcie->dev;
> > +
> > +	irq =3D irq_of_parse_and_map(dev->of_node, 1);
> > +	if (irq <=3D 0) {
> > +		dev_err(dev, "cannot map msi intr\n");
>=20
> NIT: I think we can spare a few more characters and replace intr with
> interrupt.

Of course.

[...]
> > +	/*
> > +	 * We ideally want the MSI target address to be located in the 32bit
> > +	 * addressable memory area. Some devices might depend on it. This is
> > +	 * possible either when the inbound window is located above the lower
> > +	 * 4GB or when the inbound and outbound areas fit in the lower 4GB of
> > +	 * memory.
> > +	 */
> > +	if (rc_bar2_offset >=3D SZ_4G || (rc_bar2_size + rc_bar2_offset) <=3D=
 SZ_4G)
> > +		pcie->msi_target_addr =3D BRCM_MSI_TARGET_ADDR_LT_4GB;
> > +	else
> > +		pcie->msi_target_addr =3D BRCM_MSI_TARGET_ADDR_GT_4GB;
> > +
>=20
> Can this above hunk me moved into brcm_pcie_enable_msi? You could then av=
oid
> having the pcie->msi_target_addr and just have a single msi->target_addr
> variable?

As it depends on rc_bar2_offset and rc_bar2_size it's not really possible
without having to store those values in exchange, which IMO amounts to
negative benefit.

Regards,
Nicolas


--=-UzSeM3n4DH+cLONL/tLo
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3WxxAACgkQlfZmHno8
x/4EZwf+PyAPkh0UtAsvf4S0SYBMGvE9nq5YufRa9bbo8y2gJtF99mGmDE+vaFY6
j4WKgp7o/lvfJsAgTxQPuCKJUIr5A5KyYdbhGsNKeAo9HlKbTXlLcpmYORwxcUV3
EDzMGxjS932zAl+sx2U18FpVDqll8IUwltdg0+1QPdq9r5XgYeSaj9VfVd3GDAfj
9LwSGO0lBPJtqRMHACgJfmFlgdxDo1mTPTZvmC9WguIY8wzIJId7vXDuKFOffCrU
VLZupE8IQMFDjK+q5Wxg0HXvWuHO7Hw/dnV/Jhw3o5GN6jSkxLtLBf3b/oS3n5jp
GEWb/IwLhwfAqMntETAGUczaFyZwEQ==
=GSi8
-----END PGP SIGNATURE-----

--=-UzSeM3n4DH+cLONL/tLo--



--===============7084640222067607678==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7084640222067607678==--


