Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D5D61DB249
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 13:51:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EiwgO8UrlsJ4E7hY7x7u7EKdMWAkj+XI+h/uReeFAaM=; b=S2BTVHWUKiIcvqUrn6XoVW8Nf
	x5PJ9qehDG7smDqWUqaj5JVRAya4nW7m4fNEBvxsKDM1jzTv3RI8FTc2x2XUHJeXj+L5HfWZYAR5p
	fTfAD0W9PN6v4q4HSPrKSKM/DPTzad4Jg6LfiuCxpXaJ4LzAjbW3DK8gcEi5Cg6aVZRU48r9DdmA0
	QitRGoddFlz6Z+np1kvAHjpsUrcOlaYs4SeSG07ggenot1DqfhMFSLyV7HRKwAjZNGP7UnJBTi7nZ
	ojbVqHKqT7BOd2vULMF2MppsVZwcGHCCul0HE2wfzojAD85kLtc3eE5cI0Iqtyor3n0clFnYo67Xu
	t8JJik0Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbNGA-0003v5-Pz; Wed, 20 May 2020 11:51:42 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbNG2-0003tv-2t; Wed, 20 May 2020 11:51:35 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 1B5F3ABCF;
 Wed, 20 May 2020 11:51:32 +0000 (UTC)
Message-ID: <5a52e39ce99214877e83104b8ea9f95c0d5b4e90.camel@suse.de>
Subject: Re: [PATCH 04/15] PCI: brcmstb: Add compatibily of other chips
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Jim Quinlan <james.quinlan@broadcom.com>
Date: Wed, 20 May 2020 13:51:26 +0200
In-Reply-To: <20200519203419.12369-5-james.quinlan@broadcom.com>
References: <20200519203419.12369-1-james.quinlan@broadcom.com>
 <20200519203419.12369-5-james.quinlan@broadcom.com>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_045134_415202_7556DC27 
X-CRM114-Status: GOOD (  20.15  )
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
Content-Type: multipart/mixed; boundary="===============5115588935304564553=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5115588935304564553==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-Jq1cvgOnIw0Gps6POiR0"


--=-Jq1cvgOnIw0Gps6POiR0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jim,

On Tue, 2020-05-19 at 16:34 -0400, Jim Quinlan wrote:
> From: Jim Quinlan <jquinlan@broadcom.com>
>=20
> Add in compatibility strings and code for three Broadcom STB chips.
> Some of the register locations, shifts, and masks are different
> for certain chips, requiring the use of different constants based
> on of_id.
>=20
> We would like to add the following at this time to the match list
> but we need to wait until the end of this patchset so that
> everything works.
>=20
>     { .compatible =3D "brcm,bcm7211-pcie", .data =3D &generic_cfg },
>     { .compatible =3D "brcm,bcm7278-pcie", .data =3D &bcm7278_cfg },
>     { .compatible =3D "brcm,bcm7216-pcie", .data =3D &bcm7278_cfg },
>     { .compatible =3D "brcm,bcm7445-pcie", .data =3D &generic_cfg },
>=20
> Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
> ---
>  drivers/pci/controller/pcie-brcmstb.c | 103 +++++++++++++++++++++++---
>  1 file changed, 91 insertions(+), 12 deletions(-)
>=20
> diff --git a/drivers/pci/controller/pcie-brcmstb.c
> b/drivers/pci/controller/pcie-brcmstb.c
> index 73020b4ff090..c1cf4ea7d3d9 100644
> --- a/drivers/pci/controller/pcie-brcmstb.c
> +++ b/drivers/pci/controller/pcie-brcmstb.c
> @@ -120,9 +120,8 @@
>  #define  PCIE_EXT_SLOT_SHIFT				15
>  #define  PCIE_EXT_FUNC_SHIFT				12
> =20
> -#define PCIE_RGR1_SW_INIT_1				0x9210
>  #define  PCIE_RGR1_SW_INIT_1_PERST_MASK			0x1
> -#define  PCIE_RGR1_SW_INIT_1_INIT_MASK			0x2
> +#define  PCIE_RGR1_SW_INIT_1_PERST_SHIFT		0x0
> =20
>  /* PCIe parameters */
>  #define BRCM_NUM_PCIE_OUT_WINS		0x4
> @@ -152,6 +151,69 @@
>  #define SSC_STATUS_SSC_MASK		0x400
>  #define SSC_STATUS_PLL_LOCK_MASK	0x800
> =20
> +#define IDX_ADDR(pcie)	\
> +	(pcie->reg_offsets[EXT_CFG_INDEX])
> +#define DATA_ADDR(pcie)	\
> +	(pcie->reg_offsets[EXT_CFG_DATA])
> +#define PCIE_RGR1_SW_INIT_1(pcie) \
> +	(pcie->reg_offsets[RGR1_SW_INIT_1])
> +
> +enum {
> +	RGR1_SW_INIT_1,
> +	EXT_CFG_INDEX,
> +	EXT_CFG_DATA,
> +};
> +
> +enum {
> +	RGR1_SW_INIT_1_INIT_MASK,
> +	RGR1_SW_INIT_1_INIT_SHIFT,
> +};
> +
> +enum pcie_type {
> +	GENERIC,
> +	BCM7278,
> +};
> +
> +struct pcie_cfg_data {
> +	const int *reg_field_info;
> +	const int *offsets;
> +	const enum pcie_type type;
> +};
> +
> +static const int pcie_reg_field_info[] =3D {
> +	[RGR1_SW_INIT_1_INIT_MASK] =3D 0x2,
> +	[RGR1_SW_INIT_1_INIT_SHIFT] =3D 0x1,
> +};
> +
> +static const int pcie_reg_field_info_bcm7278[] =3D {
> +	[RGR1_SW_INIT_1_INIT_MASK] =3D 0x1,
> +	[RGR1_SW_INIT_1_INIT_SHIFT] =3D 0x0,
> +};
> +
> +static const int pcie_offsets[] =3D {
> +	[RGR1_SW_INIT_1] =3D 0x9210,
> +	[EXT_CFG_INDEX]  =3D 0x9000,
> +	[EXT_CFG_DATA]   =3D 0x9004,
> +};
> +
> +static const struct pcie_cfg_data generic_cfg =3D {
> +	.reg_field_info	=3D pcie_reg_field_info,
> +	.offsets	=3D pcie_offsets,
> +	.type		=3D GENERIC,
> +};
> +
> +static const int pcie_offset_bcm7278[] =3D {
> +	[RGR1_SW_INIT_1] =3D 0xc010,
> +	[EXT_CFG_INDEX] =3D 0x9000,
> +	[EXT_CFG_DATA] =3D 0x9004,
> +};
> +
> +static const struct pcie_cfg_data bcm7278_cfg =3D {
> +	.reg_field_info =3D pcie_reg_field_info_bcm7278,
> +	.offsets	=3D pcie_offset_bcm7278,
> +	.type		=3D BCM7278,
> +};

It's not essential, but if v2 is due I'd suggest factoring out the bcm2728
specific structures above, and moving them to patch #15. This will keep a
clearer division between the patch introducing the infrastructure and the o=
ne
adding the support for a new device.

> +
>  struct brcm_msi {
>  	struct device		*dev;
>  	void __iomem		*base;
> @@ -176,6 +238,9 @@ struct brcm_pcie {
>  	int			gen;
>  	u64			msi_target_addr;
>  	struct brcm_msi		*msi;
> +	const int		*reg_offsets;
> +	const int		*reg_field_info;
> +	enum pcie_type		type;
>  };
> =20
>  /*
> @@ -602,20 +667,21 @@ static struct pci_ops brcm_pcie_ops =3D {
> =20
>  static inline void brcm_pcie_bridge_sw_init_set(struct brcm_pcie *pcie, =
u32
> val)
>  {
> -	u32 tmp;
> +	u32 tmp, mask =3D  pcie->reg_field_info[RGR1_SW_INIT_1_INIT_MASK];
> +	u32 shift =3D pcie->reg_field_info[RGR1_SW_INIT_1_INIT_SHIFT];

I don't think you need shift here, IIUC u32p_replace_bits() will take care =
of
all the masking and shifting internally, moreover, you'd be able to drop th=
e
shift entry from reg_field_info.

> -	tmp =3D readl(pcie->base + PCIE_RGR1_SW_INIT_1);
> -	u32p_replace_bits(&tmp, val, PCIE_RGR1_SW_INIT_1_INIT_MASK);
> -	writel(tmp, pcie->base + PCIE_RGR1_SW_INIT_1);
> +	tmp =3D readl(pcie->base + PCIE_RGR1_SW_INIT_1(pcie));
> +	tmp =3D (tmp & ~mask) | ((val << shift) & mask);
> +	writel(tmp, pcie->base + PCIE_RGR1_SW_INIT_1(pcie));
>  }

Regards,
Nicolas


--=-Jq1cvgOnIw0Gps6POiR0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7FGb4ACgkQlfZmHno8
x/7r3Af9FXMBMrDwT+Vt9o7RkKFabu6R0R+3IDKueGxDKtwNVX9URFSH2FK8L1qb
E8BBO5KDQScZitOeDkdnG6eRtnTzT1qMXdAOUWHJ0qP/UpQ2dtwmqbUyGbnFwKY1
6p/V9Rp6kgePO275Jw45G+jVzM2x3fUma2idaqI9MbNJzYP3B0DgfLiOd0Ii+Kpx
Ws3Zs3GVLxfZ1IZ3/YKjfhadL9fzkNdqwgwWDJQRoxEaLXItSZdrMzdoHwlBHz+k
2eodgvkTQ+4715irAd4eFzp63cOM/HE2K48EuepCt8g7HvyHh/aIsaWuXczhvrxw
rXSlOTVJIPYkNOAlKyTTr/zmyoF3aQ==
=1UHK
-----END PGP SIGNATURE-----

--=-Jq1cvgOnIw0Gps6POiR0--



--===============5115588935304564553==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5115588935304564553==--


