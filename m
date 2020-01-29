Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6785C14CE05
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 17:11:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6bC2Fr+2o29negI501i/uTKpQ4IaOwrnky3ejh/tNR4=; b=aC/FhAkK8FPSGGteDZwIfqXew
	oQhZmN/O5OKO6rfHc0JZVvX7grT6n2CO60XOe941zFqutIBhHwzqH+Q1JM6J6cat52uFGfcKeFpqG
	yZZPMkijHkvLXlR6uLniZp09AGntUn2WW8yYzs2b/aYw7jbXlL2ce5aICTqNUh+Ywghanbjflp0is
	yFkjJHjmBDWoObgf1iM0fh18GZALcZg9wo3zPWyuD+ighQVHBgdlIrL8e8z4KriyYeSmbRzZ39Gwf
	nLkhyKKVlrEJxuCzk6ynxkKdbvV/2NF0HVsbnlCz9W/WRHdwRwBPRD7tnXv0OuZGfQX9Q4PTPhny1
	ebmX1bH8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwpw9-0002Rb-Vn; Wed, 29 Jan 2020 16:11:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwpw0-0002RJ-7v
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 16:11:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9897A328;
 Wed, 29 Jan 2020 08:11:18 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 171023F52E;
 Wed, 29 Jan 2020 08:11:17 -0800 (PST)
Date: Wed, 29 Jan 2020 16:11:13 +0000
From: Mark Brown <broonie@kernel.org>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Sangbeom Kim <sbkim73@samsung.com>
Subject: Re: next/master boot: 148 boots: 10 failed, 136 passed with 2
 untried/unknown (next-20200129)
Message-ID: <20200129161113.GE3928@sirena.org.uk>
References: <5e31aaaa.1c69fb81.a7667.f187@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <5e31aaaa.1c69fb81.a7667.f187@mx.google.com>
X-Cookie: Chocolate chip.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_081120_323372_1A02D7AA 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: alsa-devel@alsa-project.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
Content-Type: multipart/mixed; boundary="===============3531138343340266802=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3531138343340266802==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qFgkTsE6LiHkLPZw"
Content-Disposition: inline


--qFgkTsE6LiHkLPZw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jan 29, 2020 at 07:54:18AM -0800, kernelci.org bot wrote:

Today's -next fails to boot on Odroid X2 and XU3 with exynos_defconfig
or multi_v7_defconfig with SMP=n.  It appears to get stuck in a loop
probing the I2S secondary DAI for some reason:

12:07:05.997409  <6>[    6.421596] exynos-bus: new bus device registered: soc:bus_mscl ( 84000 KHz ~ 666000 KHz)
12:07:05.997653  <4>[    6.429763] samsung-i2s 3830000.i2s-sec: DMA channels sourced from device 3830000.i2s
12:07:06.006838  <4>[    6.439652] samsung-i2s 3830000.i2s-sec: DMA channels sourced from device 3830000.i2s
12:07:06.015764  <4>[    6.448666] samsung-i2s 3830000.i2s-sec: DMA channels sourced from device 3830000.i2s

and so on ad infinitum.  Vanilla multi_v7_defconfig is fine and just
displays a saingle copy of that log message.  Full logs and other
details here:

	https://kernelci.org/boot/id/5e3176467f121dbdef2824fc/
	https://kernelci.org/boot/id/5e317b7322dcdaa3e5282500/
	https://kernelci.org/boot/id/5e317c0f6bfd765fb42824f1/
	https://kernelci.org/boot/id/5e317517be8559c7542824f1/

I don't *think* it's an audio issue as mainline seems fine and all the
ASoC changes have already landed in mainline for this merge window.

--qFgkTsE6LiHkLPZw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4xrqAACgkQJNaLcl1U
h9ATugf/ZQktKxJUE958PkbhFp8L06jo/MfX8fgEE6ntse19PBpXeuilaGQUAPJ7
JMfQp+W9juAvCnOSh9WFvc1jzs+gVNS8KgxuPNVwNsFf2IrRRegGtC/WnnadBjJ1
Ud/4su9USIquKP1QAI/6J/PayS06xyzkwWIiO9F7YqWHUQlS3sijE3rR2ik3NqRU
Xelgon/8TonC//tBv6OSP3aX2y1US/l1P8fqtZBpQL/wz7ZBxuaWaK5Mk46ppSmk
O2X9aooL11ie3Bo2erGOQomMcy8/i70DqCzGwCXdoay1BPENPNZ9mMTmCBrEvHfL
amhYBa+Zwl2H9Gl09SNTzgjQY7b/Ow==
=2GQU
-----END PGP SIGNATURE-----

--qFgkTsE6LiHkLPZw--


--===============3531138343340266802==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3531138343340266802==--

