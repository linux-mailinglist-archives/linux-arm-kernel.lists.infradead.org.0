Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D981DB742
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 16:41:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nrX++XebVvsIJb1+m+dKZy4QVDUjRIg9fOpkLfvKeHw=; b=UL724gtYnNwoXeIedkG2l3+ed
	VCFHe7BIK5SqkjNeZpr8heAvlnt4vMtowETrrQTPuIXeeBTq0hT6E+82IRU18jn+7HsWvDhPqjxHx
	i+kPfYHiqSoBzj1/fQZm4/TNjHeUcmwSe7vwBYdBETZdUpcrb+1cJX8Ik6sN404JLnRonXtJGnCNk
	JofXZyOie+QhppK20Wt/YQBRR9eCTEmHYJxKKr82M53/ZAu22HhZuGwz0X7Nic9N4pi86eFcDN5DH
	hmEvgO3ff9250pTN4KPmsc2du6h8dgxXJe72MzdRn0M1OQXNDUnZChrkhzn8vA9AgL11cSYngXgLs
	5Vkg7k6iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbPuj-0005QX-Ri; Wed, 20 May 2020 14:41:45 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbPua-0005P3-3c; Wed, 20 May 2020 14:41:37 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id EC4A0AD7C;
 Wed, 20 May 2020 14:41:36 +0000 (UTC)
Message-ID: <347f6b51e6ab74ad2ccf1dd60a345ce41b0defb3.camel@suse.de>
Subject: Re: [PATCH 04/15] PCI: brcmstb: Add compatibily of other chips
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Jim Quinlan <james.quinlan@broadcom.com>
Date: Wed, 20 May 2020 16:41:31 +0200
In-Reply-To: <CA+-6iNwE7CkD0r7Z0cKGXxE14Unf7ZGsr4q7Z8dPhgYYXHXHEg@mail.gmail.com>
References: <20200519203419.12369-1-james.quinlan@broadcom.com>
 <20200519203419.12369-5-james.quinlan@broadcom.com>
 <5a52e39ce99214877e83104b8ea9f95c0d5b4e90.camel@suse.de>
 <CA+-6iNwE7CkD0r7Z0cKGXxE14Unf7ZGsr4q7Z8dPhgYYXHXHEg@mail.gmail.com>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_074136_436944_FB2E25FC 
X-CRM114-Status: GOOD (  19.82  )
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
Cc: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "open list:PCI NATIVE HOST BRIDGE
 AND ENDPOINT DRIVERS" <linux-pci@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>, "moderated list:BROADCOM
 BCM2711/BCM2835 ARM ARCHITECTURE" <linux-rpi-kernel@lists.infradead.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============1804960311697173718=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1804960311697173718==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-3J5TA+ZbKVPEYhHFoms+"


--=-3J5TA+ZbKVPEYhHFoms+
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2020-05-20 at 10:30 -0400, Jim Quinlan wrote:
> On Wed, May 20, 2020 at 7:51 AM Nicolas Saenz Julienne
> <nsaenzjulienne@suse.de> wrote:
[...]
> > > +
> > > +static const struct pcie_cfg_data bcm7278_cfg =3D {
> > > +     .reg_field_info =3D pcie_reg_field_info_bcm7278,
> > > +     .offsets        =3D pcie_offset_bcm7278,
> > > +     .type           =3D BCM7278,
> > > +};
> >=20
> > It's not essential, but if v2 is due I'd suggest factoring out the bcm2=
728
> > specific structures above, and moving them to patch #15. This will keep=
 a
> > clearer division between the patch introducing the infrastructure and t=
he
> > one
> > adding the support for a new device.
> The problem is that one of the commits needs the 7278 type so it has
> to be declared earlier.

Fair enough.

> > > +
> > >  struct brcm_msi {
> > >       struct device           *dev;
> > >       void __iomem            *base;
> > > @@ -176,6 +238,9 @@ struct brcm_pcie {
> > >       int                     gen;
> > >       u64                     msi_target_addr;
> > >       struct brcm_msi         *msi;
> > > +     const int               *reg_offsets;
> > > +     const int               *reg_field_info;
> > > +     enum pcie_type          type;
> > >  };
> > >=20
> > >  /*
> > > @@ -602,20 +667,21 @@ static struct pci_ops brcm_pcie_ops =3D {
> > >=20
> > >  static inline void brcm_pcie_bridge_sw_init_set(struct brcm_pcie *pc=
ie,
> > > u32
> > > val)
> > >  {
> > > -     u32 tmp;
> > > +     u32 tmp, mask =3D  pcie->reg_field_info[RGR1_SW_INIT_1_INIT_MAS=
K];
> > > +     u32 shift =3D pcie->reg_field_info[RGR1_SW_INIT_1_INIT_SHIFT];
> >=20
> > I don't think you need shift here, IIUC u32p_replace_bits() will take c=
are
> > of
> > all the masking and shifting internally, moreover, you'd be able to dro=
p the
> > shift entry from reg_field_info.
> Got it.
> > > -     tmp =3D readl(pcie->base + PCIE_RGR1_SW_INIT_1);
> > > -     u32p_replace_bits(&tmp, val, PCIE_RGR1_SW_INIT_1_INIT_MASK);
> > > -     writel(tmp, pcie->base + PCIE_RGR1_SW_INIT_1);
> > > +     tmp =3D readl(pcie->base + PCIE_RGR1_SW_INIT_1(pcie));
> > > +     tmp =3D (tmp & ~mask) | ((val << shift) & mask);
> > > +     writel(tmp, pcie->base + PCIE_RGR1_SW_INIT_1(pcie));
> > >  }
> >=20
> > Regards,
> > Nicolas
> >=20
> Thanks!
> Jim


--=-3J5TA+ZbKVPEYhHFoms+
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7FQZsACgkQlfZmHno8
x/6VQgf/cJT/5x/71u3+htRaslZTFTyUAZQv/3eizMzwVZpl9O6CXq9BBYywwvsh
8Sqil2C6vuPMZSEc2QpkQfSzNgj887ewvXpUIz7nN7igG1lxcStg7WjplO0EBEw5
XXlsbKu7z6Khi5OGhjBvdh/ldGrHMgHQsqlrP+vVPjflwuR0xQWxMnYKoIVZwQlS
vOf6mtBgTpNs/0+9C8L+nk+0nVKAxil0DEyu/Qy2U4Xl75F3aV/2cmG+RUDYFGcu
A1zXTMp9rIYEbth53z12ChDVnGi52c3WrW7Mnh2Hsm9JEqZ+AVAldoymlKRuZPXs
VFFZVSzKSLklY9R193lnxj/GiPV1pw==
=XlCJ
-----END PGP SIGNATURE-----

--=-3J5TA+ZbKVPEYhHFoms+--



--===============1804960311697173718==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1804960311697173718==--


