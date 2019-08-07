Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C72AA84C62
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 15:05:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lQwPn/KnKOR/6n8K0MdKjK1aSL9sU0K2PLY64Ap5rHY=; b=m8virwni2BTi68ZanoKcZoZis
	wAcoz1Lo7oT2vwxDkf0Uls6ZJZaZo/ravd8nhShcIxKmMpLoWTb4cC8FX53NWRGi55a3KjOTn9wrL
	9Xo6wIaDova7TLTLQ6qceiF8gaKczzbIK5uBJa5r5FhcjzgFV+MrxkA0u0P5AyyCDeWt+Hbyk6go3
	2Y2TKrqxSoi3HxT2j1zPMPsTTPkJS6ZmmNhyASfXItYDSUoAWdDtQjCVH3s5wwb/q4YWQS3PjoBKW
	KP9yxCdivct0KTAZvx3zlPxgQzKaTbli9kJBf9ONLQ/fnVKWXg/rRTf//a0cdeyaRezFhbsT6GtaU
	19eztkw3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvLdR-0005wr-8Q; Wed, 07 Aug 2019 13:05:45 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvLdE-0005wU-3V
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 13:05:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aMELl7eZ6o9h3lDoCfPQPbyogz/QHSph7+YWLc1ijL0=; b=KwHg8t47oMmmqPHYaXKzQbv36
 CepZlxHGu+StYRkzMcLtDX14I81LOL7NA4oqpZiX55mwClPlxO6IVZA+vL1FDAv0Z9ekrNSRMSAKd
 1vWNqlleAc7b95ghsXxLE4cQGQaqfAzqHRb2YrZDXv5J3FQ0ZE2ZLpT2xJHeOV2a1TflQ=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hvLdA-0007bu-Qj; Wed, 07 Aug 2019 13:05:28 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 6E5D32742B9E; Wed,  7 Aug 2019 14:05:27 +0100 (BST)
Date: Wed, 7 Aug 2019 14:05:27 +0100
From: Mark Brown <broonie@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64: Disable big endian builds with clang
Message-ID: <20190807130527.GD4048@sirena.co.uk>
References: <20190806183918.41078-1-broonie@kernel.org>
 <20190807130111.GE54191@lakrids.cambridge.arm.com>
MIME-Version: 1.0
In-Reply-To: <20190807130111.GE54191@lakrids.cambridge.arm.com>
X-Cookie: Dammit Jim, I'm an actor, not a doctor.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_060534_534605_219114E5 
X-CRM114-Status: GOOD (  10.65  )
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
Cc: Tri Vo <trong@google.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com,
 Nathan Chancellor <natechancellor@gmail.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3885296008590739606=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3885296008590739606==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wLAMOaPNJ0fu1fTG"
Content-Disposition: inline


--wLAMOaPNJ0fu1fTG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Aug 07, 2019 at 02:01:11PM +0100, Mark Rutland wrote:
> On Tue, Aug 06, 2019 at 07:39:18PM +0100, Mark Brown wrote:

> Judging by the kernel log linked in a reply, this is with:

> * clang version 8.0.1-svn359952-1~exp1~20190504004501.65 (branches/release_80)

>   Is that the llvm.org binary release, or a custom build of clang?

It's from a llvm.org .deb.

> * Linux 5.3.0-rc2-next-20190730

>   Could we previously build a BE kernel with clang? If so, what's the
>   last working kernel?

As far as I know this has been broken for as long as we tried building
and booting big endian kernels in clang.  The compile works fine, it's
just that the resulting binary doesn't seem to be working so well.

--wLAMOaPNJ0fu1fTG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1KzJYACgkQJNaLcl1U
h9DYhwf9E0PI153LLixWIQl6KYCRRVz4KTHCzN5UkOAU3JEAXoxXaLv9U9YSa3/n
vvYR4o/xUbkHnOZacPhw5KXyyxj3HftPSa2ojSub04S9eI5NHCAO+BzvOLNt6MRf
pyuBw2MRCzJsOok5jjFgBYnk9jzabMuEd1F7Zp6x5B0+Gm1GXt7moWY78FCujzdC
yQDIQ2jwlEIIOiUXWwj9juzgcQrTnp2k7TKexpnKam5cWGvUq92SM9rUD+dbqJ9V
/woI57YMZ5pEZVSp5rmFaQYDkla0BIpLYgJLh7NmlrouU0VJ5ywLKYYgGR1QdhN8
MUwxEa0xfagvc49QKPC9Deh+drGO9A==
=dn9v
-----END PGP SIGNATURE-----

--wLAMOaPNJ0fu1fTG--


--===============3885296008590739606==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3885296008590739606==--

