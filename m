Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5676310528B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 14:00:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CCCX3FaPpfvSN51jDphbpUsEJRAOWIY6jDqpMnswfB0=; b=oshXmRBnq1dhO0ZZpHUqwAlFp
	MCcwjI4N6bPrWhWjwo0y87OG5QXl3OzrcMKoHZne5OmrUw2Dar+LGqsP/E/tQYr4Chnl8O7adqTIM
	rbgKtwy+C6ZIceNaHJGYO60ElWmJy0hehv2CbAcyg6ezPOyUyr2S+UWO85DA24UIZ0Xlq5JeYAn/8
	QJQVQqpWbgWHYGhCfZoGpl4nOx2gk+nNkUDRe/aUC2H9pQTlXLdDfJfrS+uorlHm3PiIb1AQDUxYZ
	brq3TrMoSMZc8xRiF6VTsLzYgvIiqQTPJ1edbz+xJggg9YUCQTlsJvKast8bZ7sTHQVhvrmSjL9IV
	iXZKSzaOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXm3x-0004PB-Kk; Thu, 21 Nov 2019 12:59:57 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXm3o-0004No-Kt; Thu, 21 Nov 2019 12:59:50 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 51097ABF4;
 Thu, 21 Nov 2019 12:59:42 +0000 (UTC)
Message-ID: <276d4160bbe6a4e8225bbd836f43d40da41d25f1.camel@suse.de>
Subject: Re: [PATCH v2 4/6] PCI: brcmstb: add Broadcom STB PCIe host
 controller driver
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Andrew Murray <andrew.murray@arm.com>
Date: Thu, 21 Nov 2019 13:59:40 +0100
In-Reply-To: <20191121120319.GW43905@e119886-lin.cambridge.arm.com>
References: <20191112155926.16476-1-nsaenzjulienne@suse.de>
 <20191112155926.16476-5-nsaenzjulienne@suse.de>
 <20191119162502.GS43905@e119886-lin.cambridge.arm.com>
 <7e1be0bdcf303224a3fe225654a3c2391207f9eb.camel@suse.de>
 <20191121120319.GW43905@e119886-lin.cambridge.arm.com>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_045948_979478_F1B93524 
X-CRM114-Status: GOOD (  36.90  )
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, maz@kernel.org,
 phil@raspberrypi.org, linux-kernel@vger.kernel.org, jeremy.linton@arm.com,
 Eric Anholt <eric@anholt.net>, mbrugger@suse.com,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 james.quinlan@broadcom.com, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8848831319714904598=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8848831319714904598==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-wqkhjN+9qK4qjBEkgN/j"


--=-wqkhjN+9qK4qjBEkgN/j
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andrew,

On Thu, 2019-11-21 at 12:03 +0000, Andrew Murray wrote:
> > > > +static void brcm_pcie_set_outbound_win(struct brcm_pcie *pcie,
> > > > +				       unsigned int win, phys_addr_t
> > > > cpu_addr,
> > > > +				       dma_addr_t  pcie_addr, dma_addr_t
> > > > size)
> > > > +{
> > > > +	phys_addr_t cpu_addr_mb, limit_addr_mb;
> > > > +	void __iomem *base =3D pcie->base;
> > > > +	u32 tmp;
> > > > +
> > > > +	/* Set the base of the pcie_addr window */
> > > > +	bcm_writel(lower_32_bits(pcie_addr) + MMIO_ENDIAN,
> > > > +		   base + PCIE_MISC_CPU_2_PCIE_MEM_WIN0_LO + (win * 8));
> > > > +	bcm_writel(upper_32_bits(pcie_addr),
> > > > +		   base + PCIE_MISC_CPU_2_PCIE_MEM_WIN0_HI + (win * 8));
> > > > +
> > > > +	cpu_addr_mb =3D cpu_addr >> 20;
> > > > +	limit_addr_mb =3D (cpu_addr + size - 1) >> 20;
> > > > +
> > > > +	/* Write the addr base low register */
> > > > +	WR_FLD_WITH_OFFSET(base, (win * 4),
> > > > +			   PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT,
> > > > +			   BASE, cpu_addr_mb);
> > > > +	/* Write the addr limit low register */
> > > > +	WR_FLD_WITH_OFFSET(base, (win * 4),
> > > > +			   PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT,
> > > > +			   LIMIT, limit_addr_mb);
> > > > +
> > > > +	/* Write the cpu addr high register */
> > > > +	tmp =3D (u32)(cpu_addr_mb >>
> > > > +		PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT_NUM_MASK_BITS);
> > >=20
> > > Despite the name _MASK_BITS, this isn't being used as a mask. Is this
> > > making
> > > some assumption about the value of cpu_addr from the DT?
> >=20
> > It should be read _NUM_MASK_BITS. It contains the number of set bits on=
 that
> > specific mask. I agree it's not ideal. I think I'll be able to do away =
with
> > it
> > using the bitfield.h macros.
>=20
> Also why do you have a define for
> PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT_NUM_MASK_BITS but not the '20' s=
hift
> used for the low registers?

Good point, I'm changing it to something more explicit:

	cpu_addr_mb =3D cpu_addr / SZ_1M;

As for [...]_NUM_MASK_BITS I'm looking for a smart/generic way to calculate=
 it
from the actual mask. No luck so far. If not, I think I'll simply leave it =
as
is for now.

> > FYI, What's happening here is that we have to save the CPU address rang=
e
> > (which
> > is already shifted right 20 positions) in two parts, the lower 12 bits =
go
> > into
> > PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT while the higher 8 bits go int=
o
> > PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_HI or
> > PCIE_MISC_CPU_2_PCIE_MEM_WIN0_LIMIT_HI.
>=20
> The hardware spec require bits 31:20 of the address, and the high registe=
rs
> require 39:32 right?

Yes, that's it.

> (Apologies, the indirection by the WR_FLD_** macros easily confuses me. T=
hese
> type of macros are helpful, or rather would be if the whole kernel used t=
hem.
> I think they can add confusion when each driver has its own set of simila=
r
> macros. This is why its *really* helpful to use any existing macros in th=
e
> kernel - and only invent new ones if needed).

I agree it's pretty confusing, I think v3, using bitfield.h as much as
possible, looks substantially more welcoming.

> > [...]
> >=20
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
> > > > +	u64 total_mem_size =3D 0;
> > > > +
> > > > +	*rc_bar2_offset =3D -1;
> > > > +
> > > > +	resource_list_for_each_entry(entry, &bridge->dma_ranges) {
> > > > +		/*
> > > > +		 * We're promised the RC will provide a contiguous view
> > > > of
> > > > +		 * memory to downstream devices. We can then infer the
> > > > +		 * rc_bar2_offset from the lower available dma-range
> > > > offset.
> > > > +		 */
> > > > +		if (entry->offset < *rc_bar2_offset)
> > > > +			*rc_bar2_offset =3D entry->offset;
> > > > +
> > > > +		total_mem_size +=3D entry->res->end - entry->res->start +
> > > > 1;
> > >=20
> > > This requires that if there are multiple dma-ranges, then there are n=
o
> > > gaps
> > > between them right?
> >=20
> > Yes, the PCI view of inbound memory will always be gapless. See an exam=
ple
> > here: https://patchwork.kernel.org/patch/10605957/
>=20
> Thanks for the reference.=20
>=20
>=20
> > That said, iterating over the dma-ranges is not strictly necessary for =
now
> > as
> > RPi4 is assured to only need one. If that's bothering you I can always
> > remove
> > it for now.
>=20
> One purpose of this function is to validate that the information given in=
 the
> device tree is valid - I've seen other feedback on these lists where the =
view
> is taken that 'it's not the job of the kernel to validate the DT'. Subscr=
ibing
> to this view would be a justification for removing this validation -
> especially
> given that the bindings you include have only one dma-range (in any case =
if
> there are constraints you ought to include them in the binding document).
>=20
> Though the problem with this point of view is that if the DT is wrong, it=
 may
> be possible for the driver to work well enough to do some function but wi=
th
> some horrible side effects that are difficult to track down to a bad DT.
>=20
> If you assume the DT will only have one range (at least for the Pi) then =
this
> code will never be used and so can probably be removed.

Ok, less is more, I'll simplify it.

[...]

> > > > +			continue;
> > > > +
> > > > +		if (num_out_wins >=3D BRCM_NUM_PCIE_OUT_WINS) {
> > > > +			dev_err(pcie->dev, "too many outbound wins\n");
> > > > +			return -EINVAL;
> > > > +		}
> > > > +
> > > > +		brcm_pcie_set_outbound_win(pcie, num_out_wins, res-
> > > > >start,
> > > > +					   res->start - entry->offset,
> > > > +					   res->end - res->start + 1);
> > > > +		num_out_wins++;
> > > > +	}
> > > > +
> > > > +	/*
> > > > +	 * For config space accesses on the RC, show the right class for
> > > > +	 * a PCIe-PCIe bridge (the default setting is to be EP mode).
> > > > +	 */
> > > > +	WR_FLD_RB(base, PCIE_RC_CFG_PRIV1_ID_VAL3, CLASS_CODE,
> > > > 0x060400);
> > >=20
> > > Why does this need to be _RB ? I haven't looked at all of the uses of=
 _RB
> > > though I think there are others that may not be necessary.
> >=20
> > We're reviewing the _RB usage with Jim, I'll come back to you on that t=
opic
> > later.
>=20
> Thanks.

Jim and Florian went over all the _RB usages and found out none of them app=
lied
to the Pi. Apparently they where introduced as a form of barrier needed on =
some
MIPS SoCs. Sorry for that, I'll remove them.

> > [...]
> >=20
> > > > +	__brcm_pcie_remove(pcie);
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > > +static const struct of_device_id brcm_pcie_match[] =3D {
> > > > +	{ .compatible =3D "brcm,bcm2711-pcie", .data =3D &bcm2711_cfg },
> > >=20
> > > I'd rather see use of the pcie_cfg_data structure removed from this
> > > series.
> > >=20
> > > I've seen the comments in the previous thread [1], and I understand t=
hat
> > > the intention is that this driver will eventually be used for other S=
OCs.
> > >=20
> > > However this indirection isn't needed *now* and it makes reviewing th=
is
> > > patch more difficult. If and when a later series is made to cover oth=
er
> > > SOCs - then I'd expect that series to find a way to apply this
> > > indirection.
> > >=20
> > > And if that later series is more difficult to review because of the n=
ewly
> > > added indirection, then I'd expect an early patch of that series to a=
pply
> > > the indirection in a single patch - which would be easy to review.
> > >=20
> > > The other risk of such premature changes like this is that when you c=
ome
> > > to adding other SOCs, you may then discover that there were shortcomi=
ngs
> > > in the way you've approached it here.
> > >=20
> >=20
> > I was about to make a point similar to Florian's. I'll wait for your re=
ply
> > and
> > change this accordingly.
>=20
> No problem.

Following your reply, I'll remove it.

Regards,
Nicolas


--=-wqkhjN+9qK4qjBEkgN/j
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3WijwACgkQlfZmHno8
x/6xAAf+LIkT3w/c8bEsultmWT5xTKh6ydt2GEkHuMOV+xYtKd3QM/z7XF1U6WDr
eQKpU8mUEAcsYU/wwhP+KqZ6tHplPlRtnt/IUetU1oITLzITHi9q8GpOo3lPPZjX
NxO68adiIHOYU3/cTazWvsIssw27hyEtAqWHkgnC9ZK+Gyy9i0Gxud8g9ONQNCjg
AFYth260li9Bb+Gml2rOxsxGzPk4cT63jDB9FSBAP/sIMHVucAUebZMYzi7k4fJP
IGGsof0LIzBNC9CcnN5A2vtVUViCApiTZ+Pvp1YzF+pvTdnpWiEhcT2QpJWBhoWD
Gm3EqkdBEpCaUHSNHe7TaYKw7v4N1Q==
=/W35
-----END PGP SIGNATURE-----

--=-wqkhjN+9qK4qjBEkgN/j--



--===============8848831319714904598==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8848831319714904598==--


