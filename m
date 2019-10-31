Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E807DEB6A7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 19:11:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=n8E0sr8n5crcXd3Uuu6NzyJLPZ/EwBj3oVXtTE3gK88=; b=u/6VW2jr+t9IYm+/ujyDeIyhM
	ndKImXvQ5ya/Bmbxl+q8JFQCI7fAilFuYAxJ/N5/ZKxsy4qg/u5caCPrZtEwlR7W4O4CImoU3BZFN
	b21DSdKw+NiEZdYMGIbJS3QBg9iM5Xt1pNv/eJeX64YnxlfJ2EoNUGCBxZGG+42vg/W8s5ryRpD+N
	mNQPJUfUfU3BBtnpYaAVXZzn9RvkAzsIUldzuvWHtQQEUs/QWVpK8aw3ma9g8gbT4z0GYa0UOgpWt
	mMypHde6rDfPhdv6O6MCXfe3oubt9TAek4SJ2qoY+xACvuganJvq7dfMEUosdfoedG3jzxQYTaKja
	tkdzXOdyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQEvF-0005tA-B6; Thu, 31 Oct 2019 18:11:49 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQEuy-0005rT-Oq; Thu, 31 Oct 2019 18:11:37 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 90237B289;
 Thu, 31 Oct 2019 18:11:29 +0000 (UTC)
Message-ID: <f2323af749395a49918bf842115318820b6f2052.camel@suse.de>
Subject: Re: [PATCH v6 3/4] arm64: use both ZONE_DMA and ZONE_DMA32
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Catalin Marinas <catalin.marinas@arm.com>
Date: Thu, 31 Oct 2019 19:11:27 +0100
In-Reply-To: <20191031180240.GH39590@arrakis.emea.arm.com>
References: <6703f8dab4a21fe4e1049f8f224502e1733bf72c.camel@suse.de>
 <A1A8EEF0-2273-4338-B4D8-D9B1328484B4@lca.pw>
 <9208de061fe2b9ee7b74206b3cd52cc116e43ac0.camel@suse.de>
 <AA6D37F1-A1B3-4EC4-8620-007095168BC7@lca.pw>
 <1956a2c8f4911b2a7e2ba3c53506c0f06efb93f8.camel@suse.de>
 <20191031155145.GF39590@arrakis.emea.arm.com>
 <6fd539b82cbbb2ae307a67a76eb4c2ead0bd5d4a.camel@suse.de>
 <20191031180240.GH39590@arrakis.emea.arm.com>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_111135_626925_99C5645A 
X-CRM114-Status: GOOD (  23.50  )
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
Cc: f.fainelli@gmail.com, mbrugger@suse.com, marc.zyngier@arm.com,
 Robin Murphy <Robin.Murphy@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-mm@kvack.org,
 Rob Herring <robh+dt@kernel.org>, Qian Cai <cai@lca.pw>, wahrenst@gmx.net,
 m.szyprowski@samsung.com, phill@raspberrypi.org, will@kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8927354962262164702=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8927354962262164702==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-0nB4hsVLGZWtq+lRpP5k"


--=-0nB4hsVLGZWtq+lRpP5k
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-10-31 at 18:02 +0000, Catalin Marinas wrote:
> On Thu, Oct 31, 2019 at 05:04:34PM +0100, Nicolas Saenz Julienne wrote:
> > On Thu, 2019-10-31 at 15:51 +0000, Catalin Marinas wrote:
> > > (sorry, I've been away last week and only now caught up with emails)
> > >=20
> > > On Tue, Oct 22, 2019 at 01:23:32PM +0200, Nicolas Saenz Julienne wrot=
e:
> > > > On Mon, 2019-10-21 at 16:36 -0400, Qian Cai wrote:
> > > > > I managed to get more information here,
> > > > >=20
> > > > > [    0.000000] cma: dma_contiguous_reserve(limit c0000000)
> > > > > [    0.000000] cma: dma_contiguous_reserve: reserving 64 MiB for
> > > > > global
> > > > > area
> > > > > [    0.000000] cma: cma_declare_contiguous(size 0x000000000400000=
0,
> > > > > base
> > > > > 0x0000000000000000, limit 0x00000000c0000000 alignment
> > > > > 0x0000000000000000)
> > > > > [    0.000000] cma: Failed to reserve 512 MiB
> > > > >=20
> > > > > Full dmesg:
> > > > >=20
> > > > > https://cailca.github.io/files/dmesg.txt
> > > >=20
> > > > OK I got it, reproduced it too.
> > > >=20
> > > > Here are the relevant logs:
> > > >=20
> > > > 	[    0.000000]   DMA      [mem 0x00000000802f0000-
> > > > 0x00000000bfffffff]
> > > > 	[    0.000000]   DMA32    [mem 0x00000000c0000000-
> > > > 0x00000000ffffffff]
> > > > 	[    0.000000]   Normal   [mem 0x0000000100000000-
> > > > 0x00000097fcffffff]
> > > >=20
> > > > As you can see ZONE_DMA spans from 0x00000000802f0000-0x00000000bff=
fffff
> > > > which
> > > > is slightly smaller than 1GB.
> > > >=20
> > > > 	[    0.000000] crashkernel reserved: 0x000000009fe00000 -
> > > > 0x00000000bfe00000 (512 MB)
> > > >=20
> > > > Here crashkernel reserved 512M in ZONE_DMA.
> > > >=20
> > > > 	[    0.000000] cma: Failed to reserve 512 MiB
> > > >=20
> > > > CMA tried to allocate 512M in ZONE_DMA which fails as there is no e=
nough
> > > > space.
> > > > Makes sense.
> > > >=20
> > > > A fix could be moving crashkernel reservations after CMA and then i=
f
> > > > unable
> > > > to
> > > > fit in ZONE_DMA try ZONE_DMA32 before bailing out. Maybe it's a lit=
tle
> > > > over
> > > > the
> > > > top, yet although most devices will be fine with ZONE_DMA32, the RP=
i4
> > > > needs
> > > > crashkernel to be reserved in ZONE_DMA.
> > >=20
> > > Does RPi4 need CMA in ZONE_DMA? If not, I'd rather reserve the CMA fr=
om
> > > ZONE_DMA32.
> >=20
> > Yes, CMA is imperatively to be reserved in ZONE_DMA.
> >=20
> > > Even if you moved the crash kernel, someone else might complain that
> > > they had 2GB of CMA and it no longer works.
> >=20
> > I have yet to look into it, but I've been told that on x86/x64 they hav=
e a
> > 'high' flag to be set alongside with crashkernel that forces the alloca=
tion
> > into ZONE_DMA32. We could mimic this behavior for big servers that don'=
t
> > depend
> > on ZONE_DMA but need to reserve big chunks of memory.
>=20
> The 'high' flag actually talks about crashkernel reserved above 4G which
> is not really the case here. Since RPi4 is the odd one out, I'd rather
> have the default crashkernel and CMA in the ZONE_DMA32 (current mainline
> behaviour) and have the RPi4 use explicit size@offset parameters for
> crashkernel and cma.

Fair enough, I'll send a fix for this on Monday if it's OK with you.


--=-0nB4hsVLGZWtq+lRpP5k
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl27I88ACgkQlfZmHno8
x/77YAf/V0K1PqymlC4VxG/okp/c1RBd5+Y4fI8k1F8dZ+ZWAt/2GBorPjHc5QGU
DxoqyRn8f1Gbn66/NROlptZpUKkS62GNqWJu+UJJ6Ew2GJ8RHkTgW1g84BlDRNoP
mtHuOPwtfQjJn6BoeZTrpmw5sqY2uEQr3ctuvm03/S2UA9f6//VdsavlPLp64pf4
c1Fpz+o+KCAMzhHVC1v0AMaJTNEwms9TQ9rZU37NUJCLaAjYBX/fz4TV+9AK5N7p
Dz+b6ONtFFrHMiEUwfw2Qq66GCY1tOqMOYeuYha7KbhKePA5ysltou+d5U9rJgNi
f1fkO3U5fO7ONYnBSgSDbBz2XUiM+Q==
=2yjC
-----END PGP SIGNATURE-----

--=-0nB4hsVLGZWtq+lRpP5k--



--===============8927354962262164702==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8927354962262164702==--


