Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D2EBAD50F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 10:47:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9PJYyWhw0j6/zR2+aMRZCSi3jcHBmBXlmGXISfE3/zw=; b=F/g2nNZAyeQCS8zv2Beczf+65
	KwVDbvagPhgmRL8FOTVCXKENWoOTDyf7cpJpiIUQhzeRRusiQTGQVjjTbUOj/PzSPji11XQUz+A/1
	+lmvU/4MOWx7iUHyRSw0VkTgKYe5YqPbS5Dv3Nu6S/s42kVSuHyw+CbD4vWyDgDt8xBJRbhz6tWQr
	1uj4SvviAGy3WC0wCjK7X93+3mT5piyHaCikCHdm+Slg1nK8cF5xODh8kzPZo4wqZREqXl9fyVYp0
	U0+JiBBhQGlyclgmhtyKEiLesL8EpRBH+utvSfTnFcmRdJm1+2d6rYGuoIi3PkXoNRjIpVfBB31on
	il3UeAOww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7FKE-0000re-Aa; Mon, 09 Sep 2019 08:47:06 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7FJu-0000kY-2x; Mon, 09 Sep 2019 08:46:48 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 549CAAC37;
 Mon,  9 Sep 2019 08:46:42 +0000 (UTC)
Message-ID: <7fc8f4d9a992ef9e92e0d188d32c8763a11d39e3.camel@suse.de>
Subject: Re: [PATCH v4 3/4] arm64: use both ZONE_DMA and ZONE_DMA32
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Catalin Marinas <catalin.marinas@arm.com>
Date: Mon, 09 Sep 2019 10:46:39 +0200
In-Reply-To: <20190908212711.GA84759@huawei_p9_lite.cambridge.arm.com>
References: <20190906120617.18836-1-nsaenzjulienne@suse.de>
 <20190906120617.18836-4-nsaenzjulienne@suse.de>
 <20190908212711.GA84759@huawei_p9_lite.cambridge.arm.com>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_014646_365509_3E9B41C4 
X-CRM114-Status: GOOD (  14.80  )
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
Cc: linux-rpi-kernel@lists.infradead.org, f.fainelli@gmail.com,
 marc.zyngier@arm.com, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-mm@kvack.org,
 mbrugger@suse.com, wahrenst@gmx.net, linux-riscv@lists.infradead.org,
 phill@raspberrypi.org, robin.murphy@arm.com, hch@lst.de,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: multipart/mixed; boundary="===============5630781820322789315=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5630781820322789315==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-1LCc1QPqK5YGKmT2hHJ7"


--=-1LCc1QPqK5YGKmT2hHJ7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, 2019-09-08 at 22:27 +0100, Catalin Marinas wrote:
> On Fri, Sep 06, 2019 at 02:06:14PM +0200, Nicolas Saenz Julienne wrote:
> > @@ -430,7 +454,7 @@ void __init arm64_memblock_init(void)
> > =20
> >  	high_memory =3D __va(memblock_end_of_DRAM() - 1) + 1;
> > =20
> > -	dma_contiguous_reserve(arm64_dma32_phys_limit);
> > +	dma_contiguous_reserve(arm64_dma_phys_limit ? : arm64_dma32_phys_limi=
t);
> >  }
> > =20
> >  void __init bootmem_init(void)
> > @@ -534,6 +558,7 @@ static void __init free_unused_memmap(void)
> >  void __init mem_init(void)
> >  {
> >  	if (swiotlb_force =3D=3D SWIOTLB_FORCE ||
> > +	    max_pfn > (arm64_dma_phys_limit >> PAGE_SHIFT) ||
> >  	    max_pfn > (arm64_dma32_phys_limit >> PAGE_SHIFT))
> >  		swiotlb_init(1);
>=20
> So here we want to initialise the swiotlb only if we need bounce
> buffers. Prior to this patch, we assumed that swiotlb is needed if
> max_pfn is beyond the reach of 32-bit devices. With ZONE_DMA, we need to
> lower this limit to arm64_dma_phys_limit.
>
> If ZONE_DMA is enabled, just comparing max_pfn with arm64_dma_phys_limit
> is sufficient since the dma32 one limit always higher. However, if
> ZONE_DMA is disabled, arm64_dma_phys_limit is 0, so we may initialise
> swiotlb unnecessarily. I guess you need a similar check to the
> dma_contiguous_reserve() above.

Of course.

>=20
> With that:
>=20
> Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
>=20
> Unless there are other objections, I can queue this series for 5.5 in a
> few weeks time (too late for 5.4).

Thanks!


--=-1LCc1QPqK5YGKmT2hHJ7
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl12EW8ACgkQlfZmHno8
x/6gGAf+LvKqKpyRZyqYfBtVHx+Mh2KJ7diP9UrN83ZhxXEFsw7VTMSKhZkJ4Gwb
JukrC1rd+n1kNI5WHOQGKm3PgrtSn1zuBnf1/cWHvzy9kpD2n9UebAzNpkwg7SBR
e8h3pfAr4rEZTRalQhGBZfqHjqV6hPPrbMduCeJicfm6R1qQxSC35WG/etDmPG8i
IdERWdQ4oqIHyzxGaq4BMsZLVL9gmtAs/Dd78a8y6EMWZt1DTMicGO01riV0TmOs
mK+UJa6GL6K43yWnCa31wxSCwuiOK0ta/iZWcvgSdQEhGejqWzpXLrYPeGsFGYrV
8bc6QLV1/FvuZWy/lmEW05gQVGejyA==
=lI20
-----END PGP SIGNATURE-----

--=-1LCc1QPqK5YGKmT2hHJ7--



--===============5630781820322789315==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5630781820322789315==--


