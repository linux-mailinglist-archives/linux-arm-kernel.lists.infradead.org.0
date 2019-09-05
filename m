Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D57AA772
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 17:40:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+We7/YqWPLR92zSGOJCqh+3p9Ir7neCUohSi8hFWQ+g=; b=e5QosdTqaoM0up2k8QB+f7nPi
	A2RCV/v2Q+FLAtaeMWjSde9lQkvwpbLsFWe1JcfebgqY8/ysXDc+4DYWYIE1yKXWcAHC06N3RPCoy
	yFiZ4aY9ePoNT7SvDSP/KAV/mHXmFXpHtb5lWYJqEs7ihc2pj3ufsodwFBuEzrJUdZ3Ix2CsVy6ic
	fkwQORqPbh0R0/A8EW6zCC1uNizKlRnmk7G0crtM8VJyqJwyhjnbi35r5OI+M9vPcWzdNYT6FkGSP
	wF9587BGmq7o5TuLZCiI2Ni2bBvgU5Lersh7gdKi69vYWucBCBlaHSsd3lQ1cliwqI1qTxerzggQU
	ke5I7ECQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5trZ-0001kj-9S; Thu, 05 Sep 2019 15:39:57 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5trQ-0001i5-O0; Thu, 05 Sep 2019 15:39:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OR4KsdTR6qlnJfcuPq23qYuhdT83olFWcd2Vl++hgOA=; b=qlAgvzxFV+m6F+mEGGiNwjz1r
 o7UgLbNCia/eoJH2H9t2g3iB4sUzhZUWlmHlr0sL1WQ1dYfNeXfgl/odfD66MZ7k5HuFrQ5vPYS0M
 DjyhLBHSr/rslTMNg2g2zFz82y3LkRi3v51QCmTs+s23bt5Jq8I4pX0QGMIfl+1lxxpJU=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i5trI-0004xL-7h; Thu, 05 Sep 2019 15:39:40 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id C6A052742D07; Thu,  5 Sep 2019 16:39:38 +0100 (BST)
Date: Thu, 5 Sep 2019 16:39:38 +0100
From: Mark Brown <broonie@kernel.org>
To: Kevin Hilman <khilman@baylibre.com>, Christoph Hellwig <hch@lst.de>
Subject: Re: next/master boot: 310 boots: 11 failed, 292 passed with 6
 offline, 1 untried/unknown (next-20190904)
Message-ID: <20190905153938.GB4053@sirena.co.uk>
References: <5d700b15.1c69fb81.2abcd.479b@mx.google.com>
 <20190904192725.GI4348@sirena.co.uk> <7hzhjjsime.fsf@baylibre.com>
MIME-Version: 1.0
In-Reply-To: <7hzhjjsime.fsf@baylibre.com>
X-Cookie: You humans are all alike.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_083948_938001_0733D6D8 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Steven Liu <steven.liu@mediatek.com>, kernel-build-reports@lists.linaro.org,
 Catalin Marinas <catalin.marinas@arm.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8685996915612095976=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8685996915612095976==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="CUfgB8w4ZwR/yMy5"
Content-Disposition: inline


--CUfgB8w4ZwR/yMy5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 04, 2019 at 05:15:53PM -0700, Kevin Hilman wrote:
> [ + Steven Liu who donated this board to my kernelCI lab ]

Also adding Christoph since this was bisected to his commit and Catalin
and Will since this was an architecture change.

> Mark Brown <broonie@kernel.org> writes:
> > On Wed, Sep 04, 2019 at 12:05:57PM -0700, kernelci.org bot wrote:

> > Since 30th August -next fails to boot with no kernel output on
> > mt7622-rfb1:

=2E..

> > There's logging from ATF so it looks like we try to boot the kernel:
> >
> > Starting kernel ...
> >
> > [ATF][    36.199793]save kernel info
> > [ATF][    36.202824]Kernel_EL2
> > [ATF][    36.205580]Kernel is 64Bit
> > [ATF][    36.208768]pc=3D0x40080000, r0=3D0x5cf48000, r1=3D0x0
> > INFO:    BL3-1: Preparing for EL3 exit to normal world, Kernel
> > INFO:    BL3-1: Next image address =3D 0x40080000
> > INFO:    BL3-1: Next image spsr =3D 0x3c9
> > [ATF][    36.227037]el3_exit

> > but no output.  More details including full logs at:
> >
> > 	https://kernelci.org/boot/id/5d6fe70059b514164ef1224d/
> > 	https://kernelci.org/boot/id/5d6fe6e259b514164ef12243/
>=20
> Bisected down to this commit[1], full bisect log here[2].  It didn't
> revert cleanly on top of next-20190904, so I didn't get any further.

> [1]
> 419e2f1838819e954071dfa1d1f820ab3386ada1 is the first bad commit
> commit 419e2f1838819e954071dfa1d1f820ab3386ada1
> Author: Christoph Hellwig <hch@lst.de>
> Date:   Mon Aug 26 09:03:44 2019 +0200
>=20
>     dma-mapping: remove arch_dma_mmap_pgprot
>    =20
>     arch_dma_mmap_pgprot is used for two things:
>    =20
>      1) to override the "normal" uncached page attributes for mapping
>         memory coherent to devices that can't snoop the CPU caches
>      2) to provide the special DMA_ATTR_WRITE_COMBINE semantics on older
>         arm systems and some mips platforms
>    =20
>     Replace one with the pgprot_dmacoherent macro that is already provided
>     by arm and much simpler to use, and lift the DMA_ATTR_WRITE_COMBINE
>     handling to common code with an explicit arch opt-in.
>    =20
>     Signed-off-by: Christoph Hellwig <hch@lst.de>
>     Acked-by: Geert Uytterhoeven <geert@linux-m68k.org>     # m68k
>     Acked-by: Paul Burton <paul.burton@mips.com>            # mips
>=20
>  arch/arm/Kconfig                   |  2 +-
>  arch/arm/mm/dma-mapping.c          |  6 ------
>  arch/arm64/Kconfig                 |  1 -
>  arch/arm64/include/asm/pgtable.h   |  4 ++++
>  arch/arm64/mm/dma-mapping.c        |  6 ------
>  arch/m68k/Kconfig                  |  1 -
>  arch/m68k/include/asm/pgtable_mm.h |  3 +++
>  arch/m68k/kernel/dma.c             |  3 +--
>  arch/mips/Kconfig                  |  2 +-
>  arch/mips/mm/dma-noncoherent.c     |  8 --------
>  include/linux/dma-noncoherent.h    | 13 +++++++++++--
>  kernel/dma/Kconfig                 | 12 +++++++++---
>  kernel/dma/mapping.c               |  8 +++++---
>  13 files changed, 35 insertions(+), 34 deletions(-)
> bisect run success
>=20
> [2]
> $ git bisect log
> git bisect start
> # bad: [35394d031b710e832849fca60d0f53b513f0c390] Add linux-next specific=
 files for 20190904
> git bisect bad 35394d031b710e832849fca60d0f53b513f0c390
> # good: [089cf7f6ecb266b6a4164919a2e69bd2f938374a] Linux 5.3-rc7
> git bisect good 089cf7f6ecb266b6a4164919a2e69bd2f938374a
> # bad: [493424779be81b03fb4aca89cc05ba95e9fc0c31] Merge remote-tracking b=
ranch 'crypto/master'
> git bisect bad 493424779be81b03fb4aca89cc05ba95e9fc0c31
> # bad: [58a02f90fddfdc9e4dfbd6579ff788ffdc22afe4] Merge remote-tracking b=
ranch 'hid/for-next'
> git bisect bad 58a02f90fddfdc9e4dfbd6579ff788ffdc22afe4
> # bad: [27c3f6e1d84b47def9060fd481be92838d819a9b] Merge remote-tracking b=
ranch 'csky/linux-next'
> git bisect bad 27c3f6e1d84b47def9060fd481be92838d819a9b
> # good: [f119c164735d85f2a41d14503cb9933d219c539e] arm-soc: document merg=
es
> git bisect good f119c164735d85f2a41d14503cb9933d219c539e
> # bad: [e87b432d6c45697defc03eb69261661060c85245] Merge remote-tracking b=
ranch 'actions/for-next'
> git bisect bad e87b432d6c45697defc03eb69261661060c85245
> # good: [1ab97157f64dadb44d029096c6a92305d6631ab2] Merge remote-tracking =
branch 'kbuild/for-next'
> git bisect good 1ab97157f64dadb44d029096c6a92305d6631ab2
> # good: [ac12cf85d682a2c1948210c65f7fb21ef01dd9f6] Merge branches 'for-ne=
xt/52-bit-kva', 'for-next/cpu-topology', 'for-next/error-injection', 'for-n=
ext/perf', 'for-next/psci-cpuidle', 'for-next/rng', 'for-next/smpboot', 'fo=
r-next/tbi' and 'for-next/tlbi' into for-next/core
> git bisect good ac12cf85d682a2c1948210c65f7fb21ef01dd9f6
> # bad: [4934d349f6e5afc9345a44acb0daa3066594088a] Merge remote-tracking b=
ranch 'asm-generic/master'
> git bisect bad 4934d349f6e5afc9345a44acb0daa3066594088a
> # good: [5251a1c90f7f4e458dc3154920e09624311f54b6] Merge remote-tracking =
branch 'compiler-attributes/compiler-attributes'
> git bisect good 5251a1c90f7f4e458dc3154920e09624311f54b6
> # skip: [38c38cb73223218f6eedf485280917af1f8a0af2] mmc: queue: use bigger=
 segments if DMA MAP layer can merge the segments
> git bisect skip 38c38cb73223218f6eedf485280917af1f8a0af2
> # bad: [419e2f1838819e954071dfa1d1f820ab3386ada1] dma-mapping: remove arc=
h_dma_mmap_pgprot
> git bisect bad 419e2f1838819e954071dfa1d1f820ab3386ada1
> # good: [5518ea1ad2c0c7f38d067f621d9349e6a11c8879] unicore32: remove the =
unused pgprot_dmacoherent define
> git bisect good 5518ea1ad2c0c7f38d067f621d9349e6a11c8879
> # good: [b898e50f9f49f7d90f3bca94ac046145072034a2] arm-nommu: remove the =
unused pgprot_dmacoherent define
> git bisect good b898e50f9f49f7d90f3bca94ac046145072034a2

--CUfgB8w4ZwR/yMy5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1xLDkACgkQJNaLcl1U
h9DgTggAgNKu6Bl5URIx11dhIav8pf8bkvwDNJHzBRYkoox0rH8xPgf5ZgjVsrdr
T5rUJfsL52dxPHge5eIUQcBAYqeUp1cdJ7uH+jPyK/vgikgnvFERc186FTS0aUtq
+7xCcG2VAMZuLzSkwh1ekNQaE8DyxDjkKsuvhrwMgcue8tuSmel61ebqmtzjWXrS
uG+m167qg8sr3/HOCadiVFfigZq2BZbMUYPsXC+SP/CCj9ioTfrAd/pUWkNBoQ0Y
b9Uvf/GFi9lWtqXMx67a/SibpsqU6ZVcHwa65EWgcuVqCsWe7E8feHXRHtgpp4cJ
3NJl7wjTyKLG02X2ZhObsD+LimmG4A==
=gqYU
-----END PGP SIGNATURE-----

--CUfgB8w4ZwR/yMy5--


--===============8685996915612095976==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8685996915612095976==--

