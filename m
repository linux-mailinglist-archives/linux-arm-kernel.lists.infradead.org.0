Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E94B7DF9C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 18:00:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=y0ikKvc/Rn2HrEXC5JxUDBGzUZFsFQOeQWONSCKcDng=; b=fwKGU41GT2DHnaM48psmfOpBw
	5tfzgA4nvkION10o0bUEUS6jszajNoMOgJ1KyDYylDxHv78bdNGHf6QJCr8A33g2PprL89RKOWWvf
	lpACiH+/mhWPqNo91HgFiPe0ARski0hH8ol2+TIqebDv1UawBlFZmIjiD7vof69rWSCWajwAoXeki
	WP5qGSef6vvdnOUCGmj+QwguHC9CxpouVTHoQQbZp9MmUskhnwFsHshVWuJ8c/SEYnK+9XiE/z2V7
	OXBW48PCdztTcNWgyHWctkFcG6nhGev2EfnbPPQB0Ur5quL+2EXGAWW9cKWJD6Lxi6rh/kxy8loQi
	/HXO4UgFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htDVU-0002Rf-TB; Thu, 01 Aug 2019 16:00:45 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htDVH-0002KE-49; Thu, 01 Aug 2019 16:00:32 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 7FF1DAC2E;
 Thu,  1 Aug 2019 16:00:27 +0000 (UTC)
Message-ID: <ed5388412df78ad0a9ed69cdf3ac716eac075141.camel@suse.de>
Subject: Re: [PATCH 6/8] dma-direct: turn ARCH_ZONE_DMA_BITS into a variable
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Christoph Hellwig <hch@lst.de>
Date: Thu, 01 Aug 2019 17:59:34 +0200
In-Reply-To: <20190801140452.GB23435@lst.de>
References: <20190731154752.16557-1-nsaenzjulienne@suse.de>
 <20190731154752.16557-7-nsaenzjulienne@suse.de>
 <20190801140452.GB23435@lst.de>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_090031_593934_39ADA54B 
X-CRM114-Status: GOOD (  19.89  )
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, eric@anholt.net,
 Paul Mackerras <paulus@samba.org>, will@kernel.org,
 Marek Szyprowski <m.szyprowski@samsung.com>, phill@raspberryi.org,
 linux-s390@vger.kernel.org, f.fainelli@gmail.com, frowand.list@gmail.com,
 Michael Ellerman <mpe@ellerman.id.au>,
 Christian Borntraeger <borntraeger@de.ibm.com>, catalin.marinas@arm.com,
 devicetree@vger.kernel.org, Vasily Gorbik <gor@linux.ibm.com>,
 marc.zyngier@arm.com, robh+dt@kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, mbrugger@suse.com, linux-mm@kvack.org,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, wahrenst@gmx.net, akpm@linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: multipart/mixed; boundary="===============5492017327787931104=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5492017327787931104==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-1xpVXG9aO5tI8LW1PkIr"


--=-1xpVXG9aO5tI8LW1PkIr
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Christoph, thanks for the review.

On Thu, 2019-08-01 at 16:04 +0200, Christoph Hellwig wrote:
> A few nitpicks, otherwise this looks great:
>=20
> > @@ -201,7 +202,7 @@ static int __init mark_nonram_nosave(void)
> >   * everything else. GFP_DMA32 page allocations automatically fall back=
 to
> >   * ZONE_DMA.
> >   *
> > - * By using 31-bit unconditionally, we can exploit ARCH_ZONE_DMA_BITS =
to
> > + * By using 31-bit unconditionally, we can exploit arch_zone_dma_bits =
to
> >   * inform the generic DMA mapping code.  32-bit only devices (if not
> > handled
> >   * by an IOMMU anyway) will take a first dip into ZONE_NORMAL and get
> >   * otherwise served by ZONE_DMA.
> > @@ -237,9 +238,18 @@ void __init paging_init(void)
> >  	printk(KERN_DEBUG "Memory hole size: %ldMB\n",
> >  	       (long int)((top_of_ram - total_ram) >> 20));
> > =20
> > +	/*
> > +	 * Allow 30-bit DMA for very limited Broadcom wifi chips on many
> > +	 * powerbooks.
> > +	 */
> > +	if (IS_ENABLED(CONFIG_PPC32))
> > +		arch_zone_dma_bits =3D 30;
> > +	else
> > +		arch_zone_dma_bits =3D 31;
> > +
>=20
> So the above unconditionally comment obviously isn't true any more, and
> Ben also said for the recent ppc32 hack he'd prefer dynamic detection.
>=20
> Maybe Ben and or other ppc folks can chime in an add a patch to the serie=
s
> to sort this out now that we have a dynamic ZONE_DMA threshold?

Noted, for now I'll remove the comment.

> > diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
> > index 59bdceea3737..40dfc9b4ee4c 100644
> > --- a/kernel/dma/direct.c
> > +++ b/kernel/dma/direct.c
> > @@ -19,9 +19,7 @@
> >   * Most architectures use ZONE_DMA for the first 16 Megabytes, but
> >   * some use it for entirely different regions:
> >   */
> > -#ifndef ARCH_ZONE_DMA_BITS
> > -#define ARCH_ZONE_DMA_BITS 24
> > -#endif
> > +unsigned int arch_zone_dma_bits __ro_after_init =3D 24;
>=20
> I'd prefer to drop the arch_ prefix and just calls this zone_dma_bits.
> In the long run we really need to find a way to just automatically set
> this from the meminit code, but that is out of scope for this series.
> For now can you please just update the comment above to say something
> like:
>=20
> /*
>  * Most architectures use ZONE_DMA for the first 16 Megabytes, but some u=
se it
>  * it for entirely different regions.  In that case the arch code needs t=
o
>  * override the variable below for dma-direct to work properly.
>  */

Ok perfect.


--=-1xpVXG9aO5tI8LW1PkIr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl1DDGYACgkQlfZmHno8
x/7w9wgAsuuhgVK1nlC7WgrB2sfSYqL6HTJlDfkLJ2RMgzu/WSw4RJsje86on5R9
NmRSTVntXnCdpTNiKcSEKP7MnrVtMh2TtopfTOCvgho/uDJsc4DPAqZaLHO4quzo
ZfimsWkcpC6n/E8ybEcew+6U7BIyqJPtqxgdkXz98gLQ1NK1wJU2x0Gt+KXT5a/0
hR3hA3whz8yIe4hwQTEiAzX/LnSP8+Yp+g1LLFjYveqt2RUbfC/udykYkLS7LdoO
SJ6j5S/1jRpvusBjENkY3PQiRGrhfRnT4qxVSdpkK/rMG6pLMW4l9YjfbQCLOFhn
8qxZKNifDs1KxpZjExjd4Lisum4nhw==
=nw8i
-----END PGP SIGNATURE-----

--=-1xpVXG9aO5tI8LW1PkIr--



--===============5492017327787931104==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5492017327787931104==--


