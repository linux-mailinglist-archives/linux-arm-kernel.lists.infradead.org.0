Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F3EB0B77
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 11:32:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PF4AseugAFm3U5qNfBlcUuWew9YhaUR5B8/iWNofesA=; b=nxhA4RsqkXjeOdzlSLNHMhP4D
	ZSBl0oZKb62VHcx83zjb/0GY4ps/iKC1OWpkILEO9WdtrMwJzn6S0AWELkVF2jQBJB0LlmZbV+1Hx
	mHiOQeE/sOK710PdVxW7fZw+xBtj+F0ycLVLOubijWYL+ab53aIXjPb/sQaqJHHd7tQJAC5S0f12b
	kSIpa5h2MR6R/87buGpiUE8v+yaGMgPQXV9OcSrxB07w33TyhxVaHwrU8wI3ygS8LQcv7GWILP1Zt
	fwS9MMI1CxBi7+lwb2aPXa8f85aIt9iWS1rbG0pvXK8ucMAdTSrU5RhqU1cEmhy1aoknvCp4eb3U9
	ceGhmbjnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8LT7-0007VF-IS; Thu, 12 Sep 2019 09:32:49 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8LSu-0007UO-Sp
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 09:32:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3mFlkL6LvJaHhmldjRcA8fde/UOpm7KObuOHbWtlrTc=; b=bwBZKqN5kk1WMU5x6Av29Vme7
 4JM6sEhhrGVE5L/2MjiW4Q2LSCxBNhNzfX03LsqYWAuukw9LfptenmjZxSk1lrfy2txvcOtldCall
 OXN22cYVw3wKOPzL+sjnK6oQ5FBrI+av85lScnLBbjnnByrmC0nRfD6dsYbNHbpU7DWBo=;
Received: from 195-23-252-136.net.novis.pt ([195.23.252.136]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1i8LSp-0006Qq-L8; Thu, 12 Sep 2019 09:32:31 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id EF65DD00AB0; Thu, 12 Sep 2019 10:32:30 +0100 (BST)
Date: Thu, 12 Sep 2019 10:32:30 +0100
From: Mark Brown <broonie@kernel.org>
To: Amit Kucheria <amit.kucheria@linaro.org>
Subject: Re: [PATCH 4/4] arm64: Kconfig: Fix EXYNOS driver dependencies
Message-ID: <20190912093230.GG2036@sirena.org.uk>
References: <cover.1568239378.git.amit.kucheria@linaro.org>
 <79755cb29b8c23709e346b5dd290481a36627648.1568239378.git.amit.kucheria@linaro.org>
MIME-Version: 1.0
In-Reply-To: <79755cb29b8c23709e346b5dd290481a36627648.1568239378.git.amit.kucheria@linaro.org>
X-Cookie: Be careful!  UGLY strikes 9 out of 10!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_023236_943476_9524D264 
X-CRM114-Status: GOOD (  10.70  )
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
 Linus Walleij <linus.walleij@linaro.org>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, arm@kernel.org,
 Sebastian Reichel <sre@kernel.org>, Will Deacon <will@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4176922168495828742=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4176922168495828742==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aPOcx+xoD6gZZHnz"
Content-Disposition: inline


--aPOcx+xoD6gZZHnz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Sep 12, 2019 at 03:48:48AM +0530, Amit Kucheria wrote:

> Push various EXYNOS drivers behind ARCH_EXYNOS dependency so that it
> doesn't get enabled by default on other platforms.

>  config REGULATOR_S2MPS11
>  	tristate "Samsung S2MPS11/13/14/15/S2MPU02 voltage regulator"
> +	depends on ARCH_EXYNOS
>  	depends on MFD_SEC_CORE
>  	help
>  	 This driver supports a Samsung S2MPS11/13/14/15/S2MPU02 voltage

This doesn't match the changelog at all.  This driver is not
enabled by default since it's just a normal tristate, they are
disabled by default.  As far as I can see all this change will
do is reduce our build test coverage by adding an artificial
dependency without an || COMPILE_TEST.

--aPOcx+xoD6gZZHnz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl16EK4ACgkQJNaLcl1U
h9Dn7gf/YZh55qkA7bTLAJHRocCdo/3Gm4Me5DO+Rnt0FyEcbwX3+E2akxCedkaX
vqvhDX4nSIwMVmq6qzNR+c4H2lZcev0KD0Glwi6Hi5olMJAiHYmVl9Da2MNPiYAe
mnlnY/bgrpmJ41nqm63s2PvtEWp+PL2QbnIikDS4Rb5vGLjTQGSmhGlU3o6dB3Om
WxlDHZkCMO/9csX/UHjJUro2TPkgc9FfLnqx9N3Rs5/pL6zdXtZL5TK+6PGpkC/B
NRx26W9Az9yIWMAu0MO7QPlcpT1b1O8dCYg3mM6fMjSiv9y3u8NLnp+zwhrHfIx+
3xM5RHEbBYANmiIr66vXfKMKbQvvEw==
=hxyF
-----END PGP SIGNATURE-----

--aPOcx+xoD6gZZHnz--


--===============4176922168495828742==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4176922168495828742==--

