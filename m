Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D3AEB498
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 17:23:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v/bbS/GpxLxYIaqjFIBGWchW40DKDm6RfOFKsWOS7Js=; b=r0rkCwiJZACxAvkVB9PdjDzwB
	ZJc2MVIHT6a1XhRNdrNl+Rp0xwbmPoiQnw3ydAdH39yUBUMPqEWaZ7alDFOQcbe48mTAhs3eGP4Gj
	bTfb1g+C1xwxUzxY5Fg9qdDFIMUvwJcb/A+Nf+N4vNT1GVCYx0cVMM5rvD+j9X8cokxdWtL0ICKYN
	mjj5ltXyyTHHJr+MvmWlV/WCiCHBVrA1JRpaoN8UBLxarVRE+bi50F7aAs0aQOKXj8/rY/PMSrPMy
	b+WeDPQLCBkife8jrnR13lxKsp/zr5AbDjl7PfcoDu2n1stUhggqkeNiUwIo09rZPs9CFW3JaXytM
	/HIGnyXQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQDE9-0004aS-GD; Thu, 31 Oct 2019 16:23:13 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQDDz-0004ZR-V9
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 16:23:05 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 60797B833;
 Thu, 31 Oct 2019 16:23:01 +0000 (UTC)
Message-ID: <6726a651c12d91ca22b9d8984745d90db5d507ec.camel@suse.de>
Subject: Re: [PATCH] dma/direct: turn ARCH_ZONE_DMA_BITS into a variable
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Christoph Hellwig <hch@lst.de>
Date: Thu, 31 Oct 2019 17:22:59 +0100
In-Reply-To: <20191031155750.GA7394@lst.de>
References: <20191031152837.15253-1-nsaenzjulienne@suse.de>
 <20191031154759.GA7162@lst.de>
 <40d06d463c05d36968e8b64924d78f7794f8de50.camel@suse.de>
 <20191031155750.GA7394@lst.de>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_092304_151780_C46763A8 
X-CRM114-Status: GOOD (  17.03  )
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
Content-Type: multipart/mixed; boundary="===============3053091502514754171=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3053091502514754171==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-geumnkbETQYdG1ZUMwUA"


--=-geumnkbETQYdG1ZUMwUA
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-10-31 at 16:57 +0100, Christoph Hellwig wrote:
> On Thu, Oct 31, 2019 at 04:53:13PM +0100, Nicolas Saenz Julienne wrote:
> > > > +#define ARM64_ZONE_DMA_BITS	30
> > > > +
> > > >  /*
> > > >   * We need to be able to catch inadvertent references to memstart_=
addr
> > > >   * that occur (potentially in generic code) before
> > > > arm64_memblock_init()
> > > > @@ -424,6 +427,8 @@ void __init arm64_memblock_init(void)
> > > >  	else
> > > >  		arm64_dma_phys_limit =3D PHYS_MASK + 1;
> > > > =20
> > > > +	zone_dma_bits =3D ARM64_ZONE_DMA_BITS;
> > > > +
> > > >  	reserve_crashkernel();
> > >=20
> > > This actually adds a new limit, as there wasn't one before for arm64.
> >=20
> > Well, as zone_dma_bits is only relevant in dma/direct when ZONE_DMA is
> > defined
> > I figured it doesn't matter if the variable is set conditionally to ZON=
E_DMA
> > or
> > not.
>=20
> I'd much prefer that to do separately.

OK, I see what you mean now. It's wrong indeed.

The trouble is the ZONE_DMA series[1] in arm64, also due for v5.5, will be
affected by this patch. I don't know the right way to approach this problem
since depending on the merge order, this patch should be updated or the arm=
64
ZONE_DMA series fixed.

Maybe it's easier to just wait for v5.6.

Regards,
Nicolas

[1] https://lkml.org/lkml/2019/9/11/734


--=-geumnkbETQYdG1ZUMwUA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl27CmMACgkQlfZmHno8
x/4b+AgAoH8wv9sfGomdszgwev9YRlMzey4HKe8HTYaOtmPwv+9I5u2Q1L0Hll8U
oOvfmsMi3/GCphnYxgVI15TV3gT23I4f+e1sVmHtdJwOja145qdVYeN0eVrJBGlW
gllgXNWdKSeomR5jQYRo6/r/e4b2DFreMuJMYO5Ac0Jmp4lqqbZ9tXDqMvKt0VcB
4olZERu99fJIT8AxzUVXOG9cft6l18Fio1WtXJLzXgVrjxEKnxGLAq1GxY5o8VF7
mf5621L1pvp/rNs/CBhehPADNaJqYwdS+nm7md9u/My8zRvp2OqT8O9a4e7RxcQi
QPdhGBoQVaeZdUmbRgLmr2hq8cGTqw==
=2ip7
-----END PGP SIGNATURE-----

--=-geumnkbETQYdG1ZUMwUA--



--===============3053091502514754171==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3053091502514754171==--


