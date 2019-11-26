Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0996A10A43A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 19:52:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+KyyWz6ZxZX+zNQx0HEIovzJ4NBoF5LW7xc6K932Mtc=; b=E3TXmnFW052SqO8p6zpuOKiPa
	Mv3TBW+SoPn2z2arZ2QNqK9RZMhf1/x9GlJ5ra3q48B2TLyfk/ymIqVamE2F99MSTXHCpILsUasb9
	lXOp4dPSN7prb/yKlsx+9vPeh1luocZ37CR2uioMm3XPlRxff/hH4E/i6GV+zlo3bqR/awUSHxwvS
	zwh5ats0MuNw3OlCBmBB/L694Evf0wONTApXywSxyLF273rbmNj2N0AxvsxGE90SKGM2eDGrA9BRF
	USYBoqhvHzPmU14lUrksVE1RWEbLczJynmiKnfggaQmmo8orL97Wv3tJa1tT30xt4VFp9sivBnCRA
	dh1JbguJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZfwj-00014X-VH; Tue, 26 Nov 2019 18:52:21 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZfwa-00013o-W0
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 18:52:14 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 38C30ABD6;
 Tue, 26 Nov 2019 18:52:08 +0000 (UTC)
Message-ID: <45feed391bbd95c46f64b31cf8817d4f773c8da1.camel@suse.de>
Subject: Re: [PATCH v2] dma-mapping: treat dev->bus_dma_mask as a DMA limit
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>, 
 Nathan Chancellor <natechancellor@gmail.com>
Date: Tue, 26 Nov 2019 19:51:59 +0100
In-Reply-To: <0b851d0e-37c7-062e-c287-05f8c8a54c16@arm.com>
References: <20191121092646.8449-1-nsaenzjulienne@suse.de>
 <20191123165108.GA15306@ubuntu-x2-xlarge-x86>
 <20191125074412.GA30595@lst.de>
 <0b851d0e-37c7-062e-c287-05f8c8a54c16@arm.com>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_105213_179040_2C33EF5B 
X-CRM114-Status: GOOD (  13.46  )
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-mips@vger.kernel.org,
 linux-ide@vger.kernel.org, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, Frank Rowand <frowand.list@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Paul Burton <paulburton@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Joerg Roedel <joro@8bytes.org>, x86@kernel.org, linux-acpi@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, linux-pci@vger.kernel.org,
 James Hogan <jhogan@kernel.org>, Len Brown <lenb@kernel.org>,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Jens Axboe <axboe@kernel.dk>, "Rafael J.
 Wysocki" <rjw@rjwysocki.net>, Hanjun Guo <guohanjun@huawei.com>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 iommu@lists.linux-foundation.org, Sudeep Holla <sudeep.holla@arm.com>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: multipart/mixed; boundary="===============0233013299834410872=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0233013299834410872==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-B9dp7hYRMOcivm0VMcWv"


--=-B9dp7hYRMOcivm0VMcWv
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2019-11-25 at 16:33 +0000, Robin Murphy wrote:
> On 25/11/2019 7:44 am, Christoph Hellwig wrote:
> > On Sat, Nov 23, 2019 at 09:51:08AM -0700, Nathan Chancellor wrote:
> > > Just as an FYI, this introduces a warning on arm32 allyesconfig for m=
e:
> >=20
> > I think the dma_limit argument to iommu_dma_alloc_iova should be a u64
> > and/or we need to use min_t and open code the zero exception.
> >=20
> > Robin, Nicolas - any opinions?
>=20
> Yeah, given that it's always held a mask I'm not entirely sure why it=20
> was ever a dma_addr_t rather than a u64. Unless anyone else is desperate=
=20
> to do it I'll get a cleanup patch ready for rc1.

Sounds good to me too

Robin, since I started the mess, I'll be happy to do it if it helps offload=
ing
some work from you.

Regards,
Nicolas


--=-B9dp7hYRMOcivm0VMcWv
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3ddE8ACgkQlfZmHno8
x/5fVwgAnN7cpWXNHEbGgqyZcMqmBWCtR0bMa/xIu1xNgr/CAwMMZj0Z3/+6d18p
mlU5N6AqlkTxefP9mV5ZxBzugcsriGR4+qJ05kZZAMxAeG625qDkfhSEl0FmUZRT
WmEv98IN0aFzHEjZJAyPDNV8Ff1a3JpoHKQmnYs5z438rMZt49CPBC0jNPFdaEuj
v9ry1DkR+cGYuD1WRyBQJjtze14XoG7ZCu0o9Htc02GZHq3OuabxDikuTC+UJ1jR
BZX4ak4qGpJUGYT8fQA7IOA94Sd/N/CHMrDp8yv5f/kRcprKqgGX8PnMCUOPf4ns
PsCZZGhEKvVwZy3/+QzWSYQ7q20O8w==
=WYKI
-----END PGP SIGNATURE-----

--=-B9dp7hYRMOcivm0VMcWv--



--===============0233013299834410872==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0233013299834410872==--


