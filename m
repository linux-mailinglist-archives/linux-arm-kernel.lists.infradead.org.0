Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5389DC1DD6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 11:21:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KVCl1jkdvHHnRtWl5cxj8DUmEdEyKtM1w2OVlqUJYOs=; b=IkgJGPYhsyhj1wkz/cmP1gcpy
	Qzd4mAmgOsE9phUJi9IS0bVFxNzeRx9I4GUL+TRIZR6WgQU5ktr+Nv4t2jWnx4QiEGEVqAdODxXxs
	MmSea+68GOkpdX/uP5LSS4gqcK/OZKwwwpa+bCdVeoXi8V21AjfViD8bqxxsoTGP91Y2LaN7gGdRZ
	fNMKCY+iTUYzM0HMSvkjimRmfmoiW6dOhBhOZb7nVgC1ZMuJlG4VTNZl3DPCgRvq8AcIdp/z90YLQ
	27gwZ+UBMkxoiVYR9T5kqndAgLogP38YZdL+6Hn7Q3cVXIVEXbCrZVtSu6D9JHiwk8IaM3N3fgeDx
	6F6uhyW5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iErrh-0006Zf-7D; Mon, 30 Sep 2019 09:21:09 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iErrX-0006YT-Oh
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 09:21:01 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id AF5F1B087;
 Mon, 30 Sep 2019 09:20:57 +0000 (UTC)
Message-ID: <202216c6e456bfd1a30f7cdb000aa714e3855e10.camel@suse.de>
Subject: Re: [PATCH 00/11] of: dma-ranges fixes and improvements
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org
Date: Mon, 30 Sep 2019 11:20:55 +0200
In-Reply-To: <20190927002455.13169-1-robh@kernel.org>
References: <20190927002455.13169-1-robh@kernel.org>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_022100_093201_2855AF5E 
X-CRM114-Status: GOOD (  15.15  )
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Frank Rowand <frowand.list@gmail.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Marek Vasut <marek.vasut@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Oza Pawandeep <oza.oza@broadcom.com>, Stefan Wahren <wahrenst@gmx.net>,
 Simon Horman <horms+renesas@verge.net.au>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: multipart/mixed; boundary="===============5869790988460388871=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5869790988460388871==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-/7Fyj1jMsFE0z7R36gtv"


--=-/7Fyj1jMsFE0z7R36gtv
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-09-26 at 19:24 -0500, Rob Herring wrote:
> This series fixes several issues related to 'dma-ranges'. Primarily,
> 'dma-ranges' in a PCI bridge node does correctly set dma masks for PCI
> devices not described in the DT. A common case needing dma-ranges is a
> 32-bit PCIe bridge on a 64-bit system. This affects several platforms
> including Broadcom, NXP, Renesas, and Arm Juno. There's been several
> attempts to fix these issues, most recently earlier this week[1].
>=20
> In the process, I found several bugs in the address translation. It
> appears that things have happened to work as various DTs happen to use
> 1:1 addresses.
>=20
> First 3 patches are just some clean-up. The 4th patch adds a unittest
> exhibiting the issues. Patches 5-9 rework how of_dma_configure() works
> making it work on either a struct device child node or a struct
> device_node parent node so that it works on bus leaf nodes like PCI
> bridges. Patches 10 and 11 fix 2 issues with address translation for
> dma-ranges.
>=20
> My testing on this has been with QEMU virt machine hacked up to set PCI
> dma-ranges and the unittest. Nicolas reports this series resolves the
> issues on Rpi4 and NXP Layerscape platforms.
>=20
> Rob
>=20
> [1]=20
>=20
https://lore.kernel.org/linux-arm-kernel/20190924181244.7159-1-nsaenzjulien=
ne@suse.de/
>=20
> Rob Herring (5):
>   of: Remove unused of_find_matching_node_by_address()
>   of: Make of_dma_get_range() private
>   of/unittest: Add dma-ranges address translation tests
>   of/address: Translate 'dma-ranges' for parent nodes missing
>     'dma-ranges'
>   of/address: Fix of_pci_range_parser_one translation of DMA addresses
>=20
> Robin Murphy (6):
>   of: address: Report of_dma_get_range() errors meaningfully
>   of: Ratify of_dma_configure() interface
>   of/address: Introduce of_get_next_dma_parent() helper
>   of: address: Follow DMA parent for "dma-coherent"
>   of: Factor out #{addr,size}-cells parsing
>   of: Make of_dma_get_range() work on bus nodes

Re-tested the whole series. Verified both the unittests run fine and PCIe's
behaviour is fixed.

Tested-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Also for the whole series:

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Regards,
Nicolas


--=-/7Fyj1jMsFE0z7R36gtv
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl2RyPcACgkQlfZmHno8
x/5aaggAjeyCHdUtuhmPYMOr0eHC3qN6bd3dUsbXdN2lP82cn6S6n08OsHIfHaS/
mKzeb3RK8lHn7v8Pv/nfe7UU93Lxx4Dyq4D4vXXTWyTFNg67C/KxtJswHvKhdQBX
u/r/OIhCnewJLTEZV9g44OFAko61Zuf8mp8KIwSjj+vfUXORyUc/KLfFYNt6b8Fb
YQRdgTyuF4Xhy/XYdxn8uCcDKkz0MtQ1Z9yJiao0h1c5p1Hia8Xhilq7uglx6+/3
w6Izh+0OAiDP30yMBVW+5APyhFPUdfzlP3hdifrkv8LiwCyMsukutfWawrm0r9E6
Ubrk8jYhhRg1qlpwQQ9V6QeapBjgsA==
=14/S
-----END PGP SIGNATURE-----

--=-/7Fyj1jMsFE0z7R36gtv--



--===============5869790988460388871==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5869790988460388871==--


