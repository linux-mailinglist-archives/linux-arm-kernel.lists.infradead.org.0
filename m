Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CBEAB0D4B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 12:54:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=chumjJZe2hYpohJdXEiSu4v6ILrzZQBpYRjBhulZDpA=; b=HgQZkZvKf32ypDhh8hNvXiFM3
	zqNbwC54ljSgmh10X2fbucbQcUzzRy9eWIId2VthURmp4OMdBu+YcKmqK2/9sCPynIPm0tDKXPgeU
	zagTchRrc24OEREXTdil1CCZlxm/jP5utsq6Df7evZ/JpvnIANjDlvUL3qWGN2dFTXw9vvo1QbZko
	LF+XBc6+rF2a+B+OckzO7QuhUPkg0vZ8D1S+iBBfr6UULkqrCg63NPKF1E2HKgO55Ykwf7nAmD3PK
	TLhB9hrZV823Op8X6YwldzTPXWwoIat5cF2viNRZ6RoWxnL0XrxDk/NZfelqJoQCkY2Kc9Ve57TAm
	K8S66/jAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Mjg-0004Gh-6V; Thu, 12 Sep 2019 10:54:00 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8MjS-0004GH-PT
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 10:53:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=D2D5xYaEKANX2x4ZJuWEVTNW1zYISnb/gu0LN4hJxKM=; b=WNqaA4u/faAGf9OS5qIbmq2Hs
 mWYdtL6fbchxGuAx43E34yD8Iuej5YZd3OfeAtXScPg4snnUaiz4NneKJONB/gxrQ6u2M6Ed0Bstq
 yQrjujqbf5juAAMGsRHZf6mDLO3xGHGkO1G0qO2n4xFS1KP75OW60V0gBrQZ2iCuWjvIM=;
Received: from 195-23-252-136.net.novis.pt ([195.23.252.136]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1i8MjM-0006Ya-Sb; Thu, 12 Sep 2019 10:53:40 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id DD9C0D0046D; Thu, 12 Sep 2019 11:53:39 +0100 (BST)
Date: Thu, 12 Sep 2019 11:53:39 +0100
From: Mark Brown <broonie@kernel.org>
To: Amit Kucheria <amit.kucheria@linaro.org>
Subject: Re: [PATCH 0/4] Cleanup arm64 driver dependencies
Message-ID: <20190912105339.GK2036@sirena.org.uk>
References: <cover.1568239378.git.amit.kucheria@linaro.org>
 <20190912094651.GH2036@sirena.org.uk>
 <CAP245DXBwwtcbjRQV_bCdYK5SZH9C9oxZJ2rFraJpbd5L0sHvw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAP245DXBwwtcbjRQV_bCdYK5SZH9C9oxZJ2rFraJpbd5L0sHvw@mail.gmail.com>
X-Cookie: Be careful!  UGLY strikes 9 out of 10!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_035346_839344_A4212390 
X-CRM114-Status: GOOD (  16.06  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Stephen Boyd <sboyd@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-pci <linux-pci@vger.kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, arm-soc <arm@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Sebastian Reichel <sre@kernel.org>, Will Deacon <will@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Lists LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============5523629135399233179=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5523629135399233179==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="H6o9R95t2FPeZmf3"
Content-Disposition: inline


--H6o9R95t2FPeZmf3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Sep 12, 2019 at 03:33:20PM +0530, Amit Kucheria wrote:
> On Thu, Sep 12, 2019 at 3:17 PM Mark Brown <broonie@kernel.org> wrote:

> > > I was using initcall_debugging on a QCOM platform and ran across a bunch of
> > > driver initcalls that are enabled even if their SoC support is disabled.

> > What exactly is the problem you're trying to fix here?  For the
> > drivers I looked at these were bog standard register the driver
> > with the subsystem type initcalls on optional drivers so not
> > doing anything particularly disruptive or anything like that.

> I was trying to prune the defconfig only to drivers that make sense on
> the SoC. e.g. Why should I see a brcmstb_soc_device_early_init() call
> on a QCOM system when I've disabled ARCH_BRCMSTB?

So this is really just the standard make Kconfig easier to use by
filtering out noise thing.  It'd be clearer if you said that in
the changelog, and like the review comments have been saying you
need to leave in an || COMPILE_TEST in there otherwise it's
actively harmful.

> I came across this while trying to figure out how to make thermal and
> cpufreq frameworks initialise as early as possible.

AFAICT you'd also have been happy if you just built these drivers
modular?

--H6o9R95t2FPeZmf3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl16I7EACgkQJNaLcl1U
h9A5Xwf/Rv/6OyuOPX5W2hdLghPKgkdYoB2KbGacwvDTAd1oxRtRjMbzWEVEvqYO
j7Tj/JYrweUkTWM5SVxsDpiSAk7bx5eAGlLMxPDtK6NcM48bSaURXpoWhOQ4EWKo
ygzxV2PFMVmDf3yOmTcSXDpu+sAvb5eIF+gbsLCS98uc3uPZT8dO8Q3ZOI8R8TLJ
6AAdcecAKc+T156a8ted8iIlK9Ze2hTY1J1mfrIsXvpdAxcfmLaqB26ZfDSUN5AE
EUZFeWQboDrYzuSWYGjgqKMyzFhgigoYgnKI1hnepKs1tqoieoT9DZZ0AT2dcCGL
2STeoJiRo8YT6dVf8HnBzwNSizJdQg==
=8wH4
-----END PGP SIGNATURE-----

--H6o9R95t2FPeZmf3--


--===============5523629135399233179==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5523629135399233179==--

