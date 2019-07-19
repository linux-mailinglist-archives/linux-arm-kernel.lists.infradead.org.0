Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48CBB6E617
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 15:09:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5dzLVmUpcPZzrKJv5Oa8DDxswVWqtxd8UlQJBtGBCq0=; b=PvzwY1FbFvI1r8dtblXLGXhtI
	5cjaHdq/bOFUEPj3FYY0C/4quU+8+KeSxpoWLZnXHhmerVROYdG1lKTrviw7FLCSFUu4Di7GUVkGY
	/empMth0084xj1mH6B6Vxi4fCUoejXdUoag6/7oRbGp7LG/Qjxi+7xVGWkjyK786nEaTXQAocqgRY
	COmmBmaC0n7A5avZ0yhUsjQH+qVrLtnmPWPzALKI7VjxtUB648i22Porjam7f8rccuD7m9EZsBXVR
	m9rgCuypl8sxxtAGhpESCuHPb8YhSzmAfOiNNda/+fnUpqR7V3qIYYjWRvAfSFHXRKqQfwB4TXaMX
	jGD4FJOZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoSdU-0004Ke-AY; Fri, 19 Jul 2019 13:09:20 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoSd9-0004Ji-0I
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 13:09:00 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 7A20CAF8A;
 Fri, 19 Jul 2019 13:08:55 +0000 (UTC)
Message-ID: <58753252bd7964e3b9e9558b633bd325c4a898a1.camel@suse.de>
Subject: Re: [RFC 3/4] dma-direct: add dma_direct_min_mask
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Christoph Hellwig <hch@lst.de>
Date: Fri, 19 Jul 2019 15:08:52 +0200
In-Reply-To: <13dd1a4f33fcf814545f0d93f18429e853de9eaf.camel@suse.de>
References: <20190717153135.15507-1-nsaenzjulienne@suse.de>
 <20190717153135.15507-4-nsaenzjulienne@suse.de>
 <20190718091526.GA25321@lst.de>
 <13dd1a4f33fcf814545f0d93f18429e853de9eaf.camel@suse.de>
User-Agent: Evolution 3.32.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_060859_343516_B15503A7 
X-CRM114-Status: GOOD (  19.79  )
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
Cc: stefan.wahren@i2se.com, f.fainelli@gmail.com, catalin.marinas@arm.com,
 phil@raspberrypi.org, Robin Murphy <robin.murphy@arm.com>,
 iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Jisheng.Zhang@synaptics.com, mbrugger@suse.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: multipart/mixed; boundary="===============8639744814901986110=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8639744814901986110==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-yHJZ8oknJEb7FX+m0jvD"


--=-yHJZ8oknJEb7FX+m0jvD
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-07-18 at 13:18 +0200, Nicolas Saenz Julienne wrote:
> On Thu, 2019-07-18 at 11:15 +0200, Christoph Hellwig wrote:
> > On Wed, Jul 17, 2019 at 05:31:34PM +0200, Nicolas Saenz Julienne wrote:
> > > Historically devices with ZONE_DMA32 have been assumed to be able to
> > > address at least the lower 4GB of ram for DMA. This is still the defu=
alt
> > > behavior yet the Raspberry Pi 4 is limited to the first GB of memory.
> > > This has been observed to trigger failures in dma_direct_supported() =
as
> > > the 'min_mask' isn't properly set.
> > >=20
> > > We create 'dma_direct_min_mask' in order for the arch init code to be
> > > able to fine-tune dma direct's 'min_dma' mask.
> >=20
> > Normally we use ZONE_DMA for that case.
>=20
> Fair enough, I didn't think of that possibility.
>=20
> So would the arm64 maintainers be happy with something like this:
>=20
> - ZONE_DMA: Follows standard definition, 16MB in size. ARCH_ZONE_DMA_BITS=
 is
> 	    left as is.
> - ZONE_DMA32: Will honor the most constraining 'dma-ranges'. Which so far=
 for
> 	      most devices is 4G, except for RPi4.
> - ZONE_NORMAL: The rest of the memory.

Never mind this suggestion, I don't think it makes any sense. If anything a=
rm64
seems to fit the ZONE_DMA usage pattern of arm and powerpc: where ZONE_DMA'=
s
size is decided based on ram size and/or board configuration. It was actual=
ly
set-up like this until Christoph's ad67f5a6545f7 ("arm64: replace ZONE_DMA =
with
ZONE_DMA32").

So the easy solution would be to simply revert that commit. On one hand I f=
eel
it would be a step backwards as most 64 bit architectures have been moving =
to
use ZONE_DMA32. On the other, current ZONE_DMA32 usage seems to be heavily
rooted on having a 32 bit DMA mask*, which will no longer be the case on ar=
m64
if we want to support the RPi 4.

So the way I see it and lacking a better solution, the argument is stronger=
 on
moving back arm64 to using ZONE_DMA. Any comments/opinions?

Note that I've been looking at all the DMA/CMA/swiotlb code to see if this
would break anything or change behaviors and couldn't find anything obvious=
. I
also tested the revert on my RPi4 and nothing seems to fail.

* A good example is dma-direct's implementation.


--=-yHJZ8oknJEb7FX+m0jvD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl0xwOQACgkQlfZmHno8
x/4SeAf+MwPSVWf/ID6jt6VrnWUTSIi5Z+nZtH48wv+4/USMxGds1Kd+TeULaZEf
xYq9ukgZgipmxlQ6AX01EmJvtV3h6RhMaiq0EMckFyh2H1U3LfLJ56hgmlXcef9m
ktws/JY7JeK2ygPKynPRqgY4H1v1dmFlsjSU6szy4QKEEfx2ET1Yukvl8Zs9eSpa
hdhddrM5AG53/SILdrQacParrMb2NXl1r6WRQqmOURLzV274d0ut3bjDPa6pv/Yd
xRekzhU6SIHJ4mmPTxC4fBbtslGmh3+RwCczC9UaefCVJ5lZsGkNfsMocTUfakqO
hv1LXHuOi2kbBY9/aaRmhHBEajVEog==
=bSz/
-----END PGP SIGNATURE-----

--=-yHJZ8oknJEb7FX+m0jvD--



--===============8639744814901986110==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8639744814901986110==--


