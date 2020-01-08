Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2B9134975
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 18:37:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=p5bdEH4S0K+eFzJqWKP5h3IbBSJ2ZejcgPDHWiIBem0=; b=hAnu7BCHYgf7j49jnHUhGDa6x
	kN5b3yiDSswNlQNhpOLrRo++M1eKJBTYlM97Mqc8gfw+s/LbaSO15kYOPT4Sihhq+/cHlDOxUfi0J
	nKzerDh9Wa5fgb4GPSVZu7sLbhehGChDZLTdOeFcryWl5YeN1MVLIW4CJheV+DJi0JcgwoC2MLVCP
	nBU8DkAq+dso07Ud1IDMI0ie7uHIRWUvp/P9eERidLRDlu2sD2FT3ZYPRysV/5Kx7ntbaGoiDhpTq
	xbUgYFujAWU8emI75WoQb4ACCC1QU6nZeVQomQw13eKlkjnsQrEdZSeDIkazWE4TGyOsyB8NkXQvI
	Rx12OV5vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipFGR-0008Ae-Pp; Wed, 08 Jan 2020 17:37:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipFGK-0008AI-N3
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 17:36:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 198061FB;
 Wed,  8 Jan 2020 09:36:56 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 975093F534;
 Wed,  8 Jan 2020 09:36:55 -0800 (PST)
Date: Wed, 8 Jan 2020 17:36:54 +0000
From: Mark Brown <broonie@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v8 2/3] arm64: random: Add data to pool from setup_arch()
Message-ID: <20200108173654.GC4036@sirena.org.uk>
References: <20200107183540.54794-1-broonie@kernel.org>
 <20200107183540.54794-3-broonie@kernel.org>
 <20200108172041.GI49203@lakrids.cambridge.arm.com>
MIME-Version: 1.0
In-Reply-To: <20200108172041.GI49203@lakrids.cambridge.arm.com>
X-Cookie: My vaseline is RUNNING...
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_093656_796806_FE663F3E 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: suzuki.poulose@arm.com, Catalin Marinas <catalin.marinas@arm.com>,
 ard.biesheuvel@linaro.org, Richard Henderson <richard.henderson@linaro.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6562723231110622507=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6562723231110622507==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="da4uJneut+ArUgXk"
Content-Disposition: inline


--da4uJneut+ArUgXk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jan 08, 2020 at 05:20:41PM +0000, Mark Rutland wrote:
> On Tue, Jan 07, 2020 at 06:35:39PM +0000, Mark Brown wrote:

> > +	/* Add multiple values to mirror the generic code. */
> > +	for (i = 0; i < 16; i++)
> > +		if (__arm64_rndr(&val))
> > +			add_device_randomness(&val, sizeof(val));
> > +}

> Given the next patch also needs to check the I reckon it is worth
> factoring the ID register check into a helper:

> /* Used on the boot CPU before the CPU feature framework is up */
> static inline bool __init __early_cpu_has_rndr(void)
> {
> 	unsigned long ftr = read_sysreg_s(SYS_ID_AA64ISAR0_EL1);
> 	return (ftr >> ID_AA64ISAR0_RNDR_SHIFT) & 0xf;
> }

There was also some suggestion about making a generic helper that takes
the register and bitfield to look at.

At some point I do also start to question if we're really winning with
all this stuff static inline...

--da4uJneut+ArUgXk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4WEzUACgkQJNaLcl1U
h9DjHwgAgTyKHlhpYYEof1IBHo+ucBqCRJ2yifwNzjZjTW6IK2SZ1zoSNYdht5NI
1PaeERePdP71hycoZxDbRG5HvjtnWcHacC002CYepazmgfUdBVlgj4py7YBjPeFS
M5iPlG6ZyoXjKn9Zllf/XD8w3taluFoCT4gI+wcnzGw8VNAqTeO8pwDHM8kcQ3YP
rdbudgB0a5P0lUFxrDXWN2cCGgK9OLRWECgofFn9eGE2faYSP7+sG0BSr5ae2Tcv
/eiU8G9Tq8Mj4h1OV58ENxz/7eriRd+3qyHkT+HpFHbcvfATxI/VwpaeTUX/eOZl
EQkw2jExfdBVK5cBN4HXFYMuPpW2bQ==
=5jUY
-----END PGP SIGNATURE-----

--da4uJneut+ArUgXk--


--===============6562723231110622507==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6562723231110622507==--

