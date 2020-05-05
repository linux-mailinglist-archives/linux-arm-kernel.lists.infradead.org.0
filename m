Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EDC81C56FA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 15:32:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=n0QhtUG+/083C2Fsv1narc0uBV8qSLSFnT2Wo89TV+I=; b=HlRo67TjEzhIe4RYrEJfV1+JT
	ja5Suo8g96mYIeuaQMB4jF86Y5Td9HPwvACQeXjJTdJ06rKo97cQa9Zifrf9Z5Uf1rM2kXlSFSdJL
	UPPJo3yGN3fuvyqVqNhMYlENfDH06WMmUazVHQzOF24sTmVa54NclV6zr+ggBr90K0QfD4eaBHbbm
	KxB1JKuZ74ojRztvMNmkC5rFfPiKTuH6po1jCxjFAZZA3uIFFWSeDAaOKynH4dt6APxNeGHSn13qL
	dV5LPrsYstpAzNvSYuHpv+Ll9+OEPJDQJdU55dEPV4XYP3fDxfu3HlTvvUNqFzKHmaqI7JGMGxo+E
	t9CMoo13g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVxg7-0004qP-Rx; Tue, 05 May 2020 13:32:07 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVxfd-0004aO-S2; Tue, 05 May 2020 13:31:43 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 06B06AC7B;
 Tue,  5 May 2020 13:31:37 +0000 (UTC)
Message-ID: <71f91033780ee9d95da2be44884d4d47efb03b5f.camel@suse.de>
Subject: Re: [PATCH v2 4/4] PCI: brcmstb: Disable L0s component of ASPM if
 requested
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Jim Quinlan <james.quinlan@broadcom.com>
Date: Tue, 05 May 2020 15:31:32 +0200
In-Reply-To: <20200501142831.35174-5-james.quinlan@broadcom.com>
References: <20200501142831.35174-1-james.quinlan@broadcom.com>
 <20200501142831.35174-5-james.quinlan@broadcom.com>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_063138_210944_E1CD93C4 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: multipart/mixed; boundary="===============6199141192697437526=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6199141192697437526==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-/WMc+4hb6CwtaW97uLCZ"


--=-/WMc+4hb6CwtaW97uLCZ
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2020-05-01 at 10:28 -0400, Jim Quinlan wrote:
> From: Jim Quinlan <jquinlan@broadcom.com>
>=20
> Some informal internal experiments has shown that the BrcmSTB ASPM L0s
> savings may introduce an undesirable noise signal on some customers'
> boards.  In addition, L0s was found lacking in realized power savings,
> especially relative to the L1 ASPM component.  This is BrcmSTB's
> experience and may not hold for others.  At any rate, if the
> 'aspm-no-l0s' property is present L0s will be disabled.
>=20
> Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
> Acked-by: Florian Fainelli <f.fainelli@gmail.com>

Modulo the new generic dt property:

Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Regards,
Nicolas

> ---
>  drivers/pci/controller/pcie-brcmstb.c | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/pci/controller/pcie-brcmstb.c
> b/drivers/pci/controller/pcie-brcmstb.c
> index 5b0dec5971b8..73020b4ff090 100644
> --- a/drivers/pci/controller/pcie-brcmstb.c
> +++ b/drivers/pci/controller/pcie-brcmstb.c
> @@ -41,6 +41,9 @@
>  #define PCIE_RC_CFG_PRIV1_ID_VAL3			0x043c
>  #define  PCIE_RC_CFG_PRIV1_ID_VAL3_CLASS_CODE_MASK	0xffffff
> =20
> +#define PCIE_RC_CFG_PRIV1_LINK_CAPABILITY			0x04dc
> +#define  PCIE_RC_CFG_PRIV1_LINK_CAPABILITY_ASPM_SUPPORT_MASK	0xc00
> +
>  #define PCIE_RC_DL_MDIO_ADDR				0x1100
>  #define PCIE_RC_DL_MDIO_WR_DATA				0x1104
>  #define PCIE_RC_DL_MDIO_RD_DATA				0x1108
> @@ -693,7 +696,7 @@ static int brcm_pcie_setup(struct brcm_pcie *pcie)
>  	int num_out_wins =3D 0;
>  	u16 nlw, cls, lnksta;
>  	int i, ret;
> -	u32 tmp;
> +	u32 tmp, aspm_support;
> =20
>  	/* Reset the bridge */
>  	brcm_pcie_bridge_sw_init_set(pcie, 1);
> @@ -803,6 +806,15 @@ static int brcm_pcie_setup(struct brcm_pcie *pcie)
>  		num_out_wins++;
>  	}
> =20
> +	/* Don't advertise L0s capability if 'aspm-no-l0s' */
> +	aspm_support =3D PCIE_LINK_STATE_L1;
> +	if (!of_property_read_bool(pcie->np, "aspm-no-l0s"))
> +		aspm_support |=3D PCIE_LINK_STATE_L0S;
> +	tmp =3D readl(base + PCIE_RC_CFG_PRIV1_LINK_CAPABILITY);
> +	u32p_replace_bits(&tmp, aspm_support,
> +		PCIE_RC_CFG_PRIV1_LINK_CAPABILITY_ASPM_SUPPORT_MASK);
> +	writel(tmp, base + PCIE_RC_CFG_PRIV1_LINK_CAPABILITY);
> +
>  	/*
>  	 * For config space accesses on the RC, show the right class for
>  	 * a PCIe-PCIe bridge (the default setting is to be EP mode).


--=-/WMc+4hb6CwtaW97uLCZ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl6xarQACgkQlfZmHno8
x/5F2Af+NaU0XhF5SOoN9k/cqs0QD3cUh2gPJSrKgygCuqC79eeu2CIH9k3OmXSK
2ArwxrQvKZS8cw8icZPETD6PuD5Z0bWmeUbl7dbTZwReORzCUeFGGjbFJUCw6mLv
gzxQ1QTT60/rf2BeVu520PJeCB/KAnsiqwNo63UJhGYsdExXwGLyQqmgldCCfktl
9i8QE/4C4Ne3A1QXj0aowFHD9pCI54bYj3UeDFo2Z7C0Hb2vMAt+KDkGiR40dDF2
FBaM1gII/IUVqt12qLngl2aYjCWa8VQro6Hz53IM/Bkf1QVUbjYNq3GsIXph4sLQ
81jE683L/9ZlfI95hcoWXr8aaqGdsQ==
=aXbi
-----END PGP SIGNATURE-----

--=-/WMc+4hb6CwtaW97uLCZ--



--===============6199141192697437526==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6199141192697437526==--


