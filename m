Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1565F1DB56E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 15:44:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lj6O41Brqv1wT5GYDwGlhiT87W7l8sSfsqzYOG+FOOo=; b=Uy/rvGJib+jp9u3PuknGucPZ2
	4YGUioHu9ajLb0bksuHmnt4VOtWZEAWybfC02Ns9Greua6A1WKzciC4TIjEa0D8+eb9vknJqGiAic
	ZgBYkn9RXym+fqovqMTPGFA+f/zG7CvToHwT04ywpYE92XwGEBwoG7XvlA5TpIzUcV4EVk/F0L7sR
	OqjfYdkGa8YYrTnu+oupWou8ZpfV6ecaBEO8c7HUymBdHLbYRc6xfMGVR3Ltuwx5AbsT3/Cnq8xkS
	d0n5gShZU4PLnC/QQuMPCrm8MKPs88/nvhCc8O3H5ABVzD0aIqRXO8OF7c/PVDHL+KD5LgevAn2Ui
	lXIx+T5vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbP1L-0004qu-NK; Wed, 20 May 2020 13:44:31 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbP1B-0004m5-6G; Wed, 20 May 2020 13:44:22 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id B59DCAC46;
 Wed, 20 May 2020 13:44:20 +0000 (UTC)
Message-ID: <4a49e7724e9a12e4f128a5e9ff4181da7af40bd3.camel@suse.de>
Subject: Re: [PATCH 14/15] PCI: brcmstb: Set bus max burst side by chip type
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Jim Quinlan <james.quinlan@broadcom.com>
Date: Wed, 20 May 2020 15:44:16 +0200
In-Reply-To: <20200519203419.12369-15-james.quinlan@broadcom.com>
References: <20200519203419.12369-1-james.quinlan@broadcom.com>
 <20200519203419.12369-15-james.quinlan@broadcom.com>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_064421_519051_6497316E 
X-CRM114-Status: GOOD (  19.21  )
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
Content-Type: multipart/mixed; boundary="===============8245935513774816399=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8245935513774816399==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-67gf22uKBltY92+BH4yY"


--=-67gf22uKBltY92+BH4yY
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2020-05-19 at 16:34 -0400, Jim Quinlan wrote:
> From: Jim Quinlan <jquinlan@broadcom.com>
>=20
> The proper value of the parameter SCB_MAX_BURST_SIZE varies
> per chip.  The 2711 family requires 128B whereas other devices
> can employ 512.  The assignment is complicated by the fact
> that the values for this two-bit field have different meanings;
>=20
>   Value   Type_Generic    Type_7278
>=20
>      00       Reserved         128B
>      01           128B         256B
>      10           256B         512B
>      11           512B     Reserved
>=20
> Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
> ---
>  drivers/pci/controller/pcie-brcmstb.c | 18 +++++++++++++++---
>  1 file changed, 15 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/pci/controller/pcie-brcmstb.c
> b/drivers/pci/controller/pcie-brcmstb.c
> index 7bf945efd71b..0dfa1bbd9764 100644
> --- a/drivers/pci/controller/pcie-brcmstb.c
> +++ b/drivers/pci/controller/pcie-brcmstb.c
> @@ -53,7 +53,7 @@
>  #define  PCIE_MISC_MISC_CTRL_SCB_ACCESS_EN_MASK		0x1000
>  #define  PCIE_MISC_MISC_CTRL_CFG_READ_UR_MODE_MASK	0x2000
>  #define  PCIE_MISC_MISC_CTRL_MAX_BURST_SIZE_MASK	0x300000
> -#define  PCIE_MISC_MISC_CTRL_MAX_BURST_SIZE_128		0x0
> +
>  #define  PCIE_MISC_MISC_CTRL_SCB0_SIZE_MASK		0xf8000000
>  #define  PCIE_MISC_MISC_CTRL_SCB1_SIZE_MASK		0x07c00000
>  #define  PCIE_MISC_MISC_CTRL_SCB2_SIZE_MASK		0x0000001f
> @@ -276,6 +276,7 @@ struct brcm_pcie {
>  	int			num_memc;
>  	u64			memc_size[PCIE_BRCM_MAX_MEMC];
>  	u32			hw_rev;
> +	const struct of_device_id *of_id;
>  };
> =20
>  /*
> @@ -841,7 +842,7 @@ static int brcm_pcie_setup(struct brcm_pcie *pcie)
>  	int num_out_wins =3D 0;
>  	u16 nlw, cls, lnksta;
>  	int i, ret, memc;
> -	u32 tmp, aspm_support;
> +	u32 tmp, burst, aspm_support;
> =20
>  	/* Reset the bridge */
>  	brcm_pcie_bridge_sw_init_set(pcie, 1);
> @@ -857,10 +858,20 @@ static int brcm_pcie_setup(struct brcm_pcie *pcie)
>  	/* Wait for SerDes to be stable */
>  	usleep_range(100, 200);
> =20
> +	/*
> +	 * SCB_MAX_BURST_SIZE is a two bit field.  For GENERIC chips it
> +	 * is encoded as 0=3D128, 1=3D256, 2=3D512, 3=3DRsvd, for BCM7278 it
> +	 * is encoded as 0=3DRsvd, 1=3D128, 2=3D256, 3=3D512.
> +	 */
> +	if (strcmp(pcie->of_id->compatible, "brcm,bcm2711-pcie") =3D=3D 0)

Would it make sense to use pcie->type here? I know GENERIC !=3D BCM2711, bu=
t we
could define it and avoid adding redundant info in struct brcm_pcie.

Regards,
Nicolas

> +		burst =3D 0x0; /* 128B */
> +	else
> +		burst =3D (pcie->type =3D=3D BCM7278) ? 0x3 : 0x2; /* 512 bytes */
> +
>  	/* Set SCB_MAX_BURST_SIZE, CFG_READ_UR_MODE, SCB_ACCESS_EN */
>  	u32p_replace_bits(&tmp, 1, PCIE_MISC_MISC_CTRL_SCB_ACCESS_EN_MASK);
>  	u32p_replace_bits(&tmp, 1, PCIE_MISC_MISC_CTRL_CFG_READ_UR_MODE_MASK);
> -	u32p_replace_bits(&tmp, PCIE_MISC_MISC_CTRL_MAX_BURST_SIZE_128,
> +	u32p_replace_bits(&tmp, burst,
>  			  PCIE_MISC_MISC_CTRL_MAX_BURST_SIZE_MASK);
>  	writel(tmp, base + PCIE_MISC_MISC_CTRL);
> =20
> @@ -1200,6 +1211,7 @@ static int brcm_pcie_probe(struct platform_device *=
pdev)
>  	pcie->reg_offsets =3D data->offsets;
>  	pcie->reg_field_info =3D data->reg_field_info;
>  	pcie->type =3D data->type;
> +	pcie->of_id =3D of_id;
> =20
>  	res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
>  	pcie->base =3D devm_ioremap_resource(&pdev->dev, res);


--=-67gf22uKBltY92+BH4yY
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7FNDAACgkQlfZmHno8
x/5Lpwf/eAOpwSlhLavh+bn9QboXcCi13EVtwNjwBha1uical8dcFXceMgfJOJVm
7x35rF6gyugDp+uKGHdsG9q71U/R4VLiwdGJrsCYYgFa+8RALwAXNqefb3kmyFIt
GSh8WzRkKUSR4/5Py6TfcgxWJ4ATyzSRwXIJ8KTOPEt73GFPgKyQFmfCthpvD8as
iVdWqU6HmzlhsNPPgH98RCZ7d4lIAlN4VjhayR7A3QO2mBoQqtX3xyBGKM5Wzu9w
vfRTV1Wnb3nFeK3ly+iGGCUJG1vWtDIWZFNSNHxmjgqKLiS9Lp7HgrWXAOpUZJ/J
9dDEJKpEi1M3rhu+p8ItSk3hat7sTg==
=pmwt
-----END PGP SIGNATURE-----

--=-67gf22uKBltY92+BH4yY--



--===============8245935513774816399==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8245935513774816399==--


