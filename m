Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DDE91C56C6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 15:25:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iTcP8WIPbfOBzShDCUAhyx1V3/gbumTqSLKmUO7Riso=; b=D9QtYtt7Af7eC83qgZbwoZUpj
	gKeu9h+DdhVowksoMtezb0CnD0m4WkDlqAbqTnGBbAuavVYyAfCY+94ZMG0wgb2ZGjr5Id2zbtW+3
	B9GGCfHzPQd+C3X9ur9nw316XXJKDWf2o2eRrryk2ydUQYzN+s088jqWBd2/rOjNoegYvkD16jAB1
	3t4NpzeEHnOoQqTPcHcMFzy8uHWBR9VzDrys7KuMouuoBwX0hrbUQ6cSIpA0gZFmC8YOZObU+ScYF
	hzXdseZtp6+UlzPi2TPfQTRksSNrQUFqzlov8P4DoiW4uWBHMoW1GnCLRmzNF+gJYQcEChZqHOZtM
	aTp4UX9QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVxZo-0007SI-Ce; Tue, 05 May 2020 13:25:36 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVxZR-0006sh-36; Tue, 05 May 2020 13:25:14 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 55C02AB89;
 Tue,  5 May 2020 13:25:13 +0000 (UTC)
Message-ID: <a23de9954ffca762bdcd075c4ed02b1a17af3eb5.camel@suse.de>
Subject: Re: [PATCH v2 2/4] PCI: brcmstb: Fix window register offset from 4
 to 8
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Jim Quinlan <james.quinlan@broadcom.com>
Date: Tue, 05 May 2020 15:25:07 +0200
In-Reply-To: <20200501142831.35174-3-james.quinlan@broadcom.com>
References: <20200501142831.35174-1-james.quinlan@broadcom.com>
 <20200501142831.35174-3-james.quinlan@broadcom.com>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_062513_312168_713EE4DF 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS"
 <linux-pci@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Jeremy Linton <jeremy.linton@arm.com>, Florian Fainelli <f.fainelli@gmail.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Bjorn Helgaas <bhelgaas@google.com>,
 "moderated list:BROADCOM
 BCM2711/BCM2835 ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: multipart/mixed; boundary="===============3194741665353110760=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3194741665353110760==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-WdhCVQQ77luNuTrwjynR"


--=-WdhCVQQ77luNuTrwjynR
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2020-05-01 at 10:28 -0400, Jim Quinlan wrote:
> From: Jim Quinlan <jquinlan@broadcom.com>
>=20
> The outbound memory window registers were being referenced
> with an incorrect stride offset.  This probably wasn't noticed
> previously as there was likely only one such window employed.
>=20
> Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
> Acked-by: Florian Fainelli <f.fainelli@gmail.com>
>=20
> Fixes: c0452137034b ("PCI: brcmstb: Add Broadcom STB PCIe host controller
> driver")
> ---

Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Regards,
Nicolas

>  drivers/pci/controller/pcie-brcmstb.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/pci/controller/pcie-brcmstb.c
> b/drivers/pci/controller/pcie-brcmstb.c
> index 454917ee9241..5b0dec5971b8 100644
> --- a/drivers/pci/controller/pcie-brcmstb.c
> +++ b/drivers/pci/controller/pcie-brcmstb.c
> @@ -54,11 +54,11 @@
> =20
>  #define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_LO		0x400c
>  #define PCIE_MEM_WIN0_LO(win)	\
> -		PCIE_MISC_CPU_2_PCIE_MEM_WIN0_LO + ((win) * 4)
> +		PCIE_MISC_CPU_2_PCIE_MEM_WIN0_LO + ((win) * 8)
> =20
>  #define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_HI		0x4010
>  #define PCIE_MEM_WIN0_HI(win)	\
> -		PCIE_MISC_CPU_2_PCIE_MEM_WIN0_HI + ((win) * 4)
> +		PCIE_MISC_CPU_2_PCIE_MEM_WIN0_HI + ((win) * 8)
> =20
>  #define PCIE_MISC_RC_BAR1_CONFIG_LO			0x402c
>  #define  PCIE_MISC_RC_BAR1_CONFIG_LO_SIZE_MASK		0x1f


--=-WdhCVQQ77luNuTrwjynR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl6xaTMACgkQlfZmHno8
x/7l/wgAqNRIM6mZcLbEIafYCYznZMUminRZvoGWDMa0AwR/Ei3ngd3/mhph4nuA
lsn6NfNF2SbIpz7gE+UslD9UW6L8MWG9M0cAfMKPyJQuqkGjYa/0cTBJIr+VVTfc
fsbKn/xCa5Dku8sbKXAvjxMh3hzgFrZrYIlnJwdLPvD4oxUHkDoXLJyowalp4scx
MELFQgm2NyYvznpYRhKwnbIYZNqQis9RpZgimsrLpjOTXYFeARKZAY+p63cn4c8u
kiANyMwcDyNARBa4B5cjg7gxT20kwIQDMPGj63lp8wknIuIkwf9mKuhiglcrjlHF
bNmX73xmfHGy7qSbCisqETc6qyxKsA==
=PUO0
-----END PGP SIGNATURE-----

--=-WdhCVQQ77luNuTrwjynR--



--===============3194741665353110760==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3194741665353110760==--


