Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6785BEB446
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 16:53:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=20Xv3ltO/MM4GFhKMXelcwJ9hAnCSZLhYuZbWXizzAw=; b=KPWTfr4t9tihNvVmebRG3rz5t
	7N/hqcCpeL3YFfRR5rGcd18+/E09m+RAqgEH+/LW/7XSJWBWXHHqPWDv0Lc3G7lnKs35AEfhCM10U
	xvjuU11mScyPJlBYrBemTk/N0IbxX8pepsF7aiudv/8IeumIPtZgZRvxjKSk8K7v+8wb9nN9mctCY
	NucD/xmkisr5RzF5PO/dtuZFrpALaGFKDa2q8n83nOs6rj2WsDEaGAFOjG38w6OYPsowA1CPpGNvq
	dmh7MAEO+s6zfvkAXUATgvtCvvwHMeWR20UGAH9gTY1JHre5aI1is/nd9nfvnPn8YkBs2ehvny+J8
	cLDOCRW3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQClK-00013c-6c; Thu, 31 Oct 2019 15:53:26 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQClA-00012j-Dj
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 15:53:19 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id E32D1B7DF;
 Thu, 31 Oct 2019 15:53:14 +0000 (UTC)
Message-ID: <40d06d463c05d36968e8b64924d78f7794f8de50.camel@suse.de>
Subject: Re: [PATCH] dma/direct: turn ARCH_ZONE_DMA_BITS into a variable
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Christoph Hellwig <hch@lst.de>
Date: Thu, 31 Oct 2019 16:53:13 +0100
In-Reply-To: <20191031154759.GA7162@lst.de>
References: <20191031152837.15253-1-nsaenzjulienne@suse.de>
 <20191031154759.GA7162@lst.de>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_085316_610362_18A46326 
X-CRM114-Status: GOOD (  16.55  )
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
Cc: linux-s390@vger.kernel.org, Vasily Gorbik <gor@linux.ibm.com>,
 Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 linuxppc-dev@lists.ozlabs.org, Heiko Carstens <heiko.carstens@de.ibm.com>,
 linux-kernel@vger.kernel.org, Christian Borntraeger <borntraeger@de.ibm.com>,
 iommu@lists.linux-foundation.org, Paul Mackerras <paulus@samba.org>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: multipart/mixed; boundary="===============6459875798169825110=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6459875798169825110==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-IbItouLWOYON9B5ojQkb"


--=-IbItouLWOYON9B5ojQkb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-10-31 at 16:47 +0100, Christoph Hellwig wrote:
> On Thu, Oct 31, 2019 at 04:28:37PM +0100, Nicolas Saenz Julienne wrote:
> > Some architectures, notably ARM, are interested in tweaking this
> > depending on their runtime DMA addressing limitations.
> >=20
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > ---
> >=20
> > Changes since RFC:
> >  - Rebased to v5.4-rc6, fixed arm64 code.
> >=20
> > NOTE: This will only apply to linux-next, where=20
>=20
> missing end of the sentence.  But only applying to linux-next isn't
> going to help anyone..

Arrgh, excuse me, I meant to delete that line.

> > diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> > index 45c00a54909c..f716ea634804 100644
> > --- a/arch/arm64/mm/init.c
> > +++ b/arch/arm64/mm/init.c
> > @@ -20,6 +20,7 @@
> >  #include <linux/sort.h>
> >  #include <linux/of.h>
> >  #include <linux/of_fdt.h>
> > +#include <linux/dma-direct.h>
> >  #include <linux/dma-mapping.h>
> >  #include <linux/dma-contiguous.h>
> >  #include <linux/efi.h>
> > @@ -41,6 +42,8 @@
> >  #include <asm/tlb.h>
> >  #include <asm/alternative.h>
> > =20
> > +#define ARM64_ZONE_DMA_BITS	30
> > +
> >  /*
> >   * We need to be able to catch inadvertent references to memstart_addr
> >   * that occur (potentially in generic code) before arm64_memblock_init=
()
> > @@ -424,6 +427,8 @@ void __init arm64_memblock_init(void)
> >  	else
> >  		arm64_dma_phys_limit =3D PHYS_MASK + 1;
> > =20
> > +	zone_dma_bits =3D ARM64_ZONE_DMA_BITS;
> > +
> >  	reserve_crashkernel();
>=20
> This actually adds a new limit, as there wasn't one before for arm64.

Well, as zone_dma_bits is only relevant in dma/direct when ZONE_DMA is defi=
ned
I figured it doesn't matter if the variable is set conditionally to ZONE_DM=
A or
not.


--=-IbItouLWOYON9B5ojQkb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl27A2kACgkQlfZmHno8
x/7XBAf+KJ5m8SMWsJJk7jjM0aD1BkIeWDHPYCN7ZJq7655nTwa46aZv3zb18e3J
4muJ6LfXcTh/PbK64B+/uJ+wGYyg0y4ObyEshTyxygfgDnnyCQ4Mr3kD38jm40tR
pJh9bItNrHBr+LzC2oZhwwnj4K4haI2q1HO8C6waGzeQLNW6KGmQquBqbROWiTG3
EJVQ5SwIHesd1qwzVo+Lpba3IHAf6FrVDoZ1/TnUCDgkEvPOX2N20IUroOb0O2Eu
5L80i++E4veGNr4AxY2Ne0kXVIZWCiZNoO5HpB7EPreFYta5w5JCbVqZDvGl9YGI
T+txLLE6SqBuvD/E5j2iwzXXv2SqQA==
=jZsg
-----END PGP SIGNATURE-----

--=-IbItouLWOYON9B5ojQkb--



--===============6459875798169825110==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6459875798169825110==--


