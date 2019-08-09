Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E35987937
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 14:02:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=P2JDJzIcQ4EcIst+H8DxG6sVcHVgOHca+BfQCfTpj6g=; b=IAjGuuDLaFQVOdhui0cn5zyml
	icaH86GbcV0iRmyvrycB47iQXiWX8QbShkbKioz0WiTZ+8MGoTV4McspAYmW+f96864kmzeYGmpeQ
	9GU/vU4vlWiBr9yDkHHJMYAMdbxjtPtP2h7sS3CJqT5cvKw780K+G0zUr2P6O7iG8dQcrxx+DUNDu
	lQhwxCzNMfyGxZ8nfyzAehFJvfr13d9cR/HsvUx7dxu/CUMl/p0cOWo/LBm6hHG8HrRsIno1E/UtN
	NXB/7cZST99Hpmdg7OUEo0/4M1Dr+nmQWm7+IjMQ5FEkMMBxbAazIR9TYNfX2l7HWv8Bn5EIOe5dD
	/r3Pia8Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw3aq-0000bi-V4; Fri, 09 Aug 2019 12:02:01 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw3ad-0000bP-OS
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 12:01:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hUtaPSltEcXHVj72o+olbdV6HgeE8OWSIe3V2Uuu1E0=; b=HYR+RmxIHYcnV12KQgaa45QYm
 GoLpS+CUr2+B771DY9+uhonKQLK7YsOJAwGv75D3RZbMPZIBuW8boHuc9XkIts0Daloey31CHcgUa
 WH+rTEag4wVkzNL5wEJyHMs0PXe5Yxd8Nl1mueXt6MmxoZmfr8yfY9cc0f5GK8L4jy0Ek=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hw3aU-0005uE-Rc; Fri, 09 Aug 2019 12:01:38 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id B8B46274303D; Fri,  9 Aug 2019 13:01:37 +0100 (BST)
Date: Fri, 9 Aug 2019 13:01:37 +0100
From: Mark Brown <broonie@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 07/22] ARM: omap1: move perseus spi pinconf to board file
Message-ID: <20190809120137.GB3963@sirena.co.uk>
References: <20190808212234.2213262-1-arnd@arndb.de>
 <20190808212234.2213262-8-arnd@arndb.de>
 <20190808222408.GS3795@sirena.co.uk>
 <CAK8P3a0qTvDFMj4GrKfD=2mkPpKN=eRJ--mp0r7mqAH+b2r=kg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAK8P3a0qTvDFMj4GrKfD=2mkPpKN=eRJ--mp0r7mqAH+b2r=kg@mail.gmail.com>
X-Cookie: Klatu barada nikto.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_050147_804131_1C516C85 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>, Tony Lindgren <tony@atomide.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-spi <linux-spi@vger.kernel.org>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 linux-omap <linux-omap@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Boris Brezillon <bbrezillon@kernel.org>
Content-Type: multipart/mixed; boundary="===============8666528492479128516=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8666528492479128516==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mojUlQ0s9EVzWg2t"
Content-Disposition: inline


--mojUlQ0s9EVzWg2t
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Aug 09, 2019 at 01:29:13PM +0200, Arnd Bergmann wrote:
> On Fri, Aug 9, 2019 at 12:24 AM Mark Brown <broonie@kernel.org> wrote:

> > On Thu, Aug 08, 2019 at 11:22:16PM +0200, Arnd Bergmann wrote:
> > > The driver has always had a FIXME about this, and it seems
> > > like this trivial code move avoids a mach header inclusion,
> > > so just do it.

> > This appears to be part of a series but I've no cover letter or anything
> > else from it.  What's the story for dependencies and merging?

> Sorry for missing you on the cover letter. The patch is part of a series
> to make omap1 part of ARCH_MULTIPLATFORM. I'd like to merge the entire
> series through the arm-soc tree to avoid dependencies:

Acked-by: Mark Brown <broonie@kernel.org>

--mojUlQ0s9EVzWg2t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1NYKAACgkQJNaLcl1U
h9D0Mgf/YWgKanEmJ6JDhVz0YRrbGtKA8AWG2fRI2pGeEytOfrDSw7hneA7X5s8z
h4/FRWERBh3ITDppRQSAK0n/A9qeD5rERsYSRCqAoMWMLKEkvuYwyCWwZQgdtH33
SNzuCxSqJYCuGS7xhq4K3rAm6f7xKmiZdznNEw85e5ko/vKsep9rvM/GypIE4eFH
q8p6nexDb6VAQrJoaq6APDLZxygD6QNvokmhM0rjgSpX7VIwBwuYJOKhO9+dwglw
9sQ/rq8KIuYpIWQ1idwf7c3NCGeJ9kbhjaHC31QhDZlSYRyV1mtmoocSCkU3Hg2D
rA7q8CGPt8k2fysNcaxG/yrZBUY4QA==
=ujey
-----END PGP SIGNATURE-----

--mojUlQ0s9EVzWg2t--


--===============8666528492479128516==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8666528492479128516==--

