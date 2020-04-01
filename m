Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F4A19B518
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 20:07:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vfh7nv9vyPq1P2Jm4APfHxJWW61BMC4EowC5Y+r2Dc8=; b=iWKocs3M3VUK5X3CVG5cfnWRf
	1N6susPdkAJ4f2zr/97pV5IkVubS9HWajH7fWgCsVAbYaab2QgY0UfkSfWtd5prROvrS/ayOPn2yy
	4VGdpjm32XlriyZ1X79QmFWSe1OAZK/Sl1zPms1/7bGgffQyzF+5XtHdDo9Cw6gUFyvdCikmeXk/m
	cU28UsqV+APdmNj0fjLfuuk2DdL8HZCrkCWbIRLrrOnWiNI485JfeQTKnUblmpELh5yOJGufb5Y9W
	Gh+Qu3X1igffb985PDpw7GmoAtoq7slZ+Kk65qPPKMv/2gKaVx5Z8b8hPFUO120y+V/2aP21LcdaA
	SB8yd081w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJhm0-00087R-Co; Wed, 01 Apr 2020 18:07:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJhlu-00086p-2N
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 18:07:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F1EC41FB;
 Wed,  1 Apr 2020 11:07:23 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 759483F52E;
 Wed,  1 Apr 2020 11:07:23 -0700 (PDT)
Date: Wed, 1 Apr 2020 19:07:21 +0100
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH] arm64: Always force a branch protection mode when the
 compiler has one
Message-ID: <20200401180721.GG4943@sirena.org.uk>
References: <20200331194459.54740-1-broonie@kernel.org>
 <20200401175444.GF9434@mbp>
MIME-Version: 1.0
In-Reply-To: <20200401175444.GF9434@mbp>
X-Cookie: The Ranger isn't gonna like it, Yogi.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_110726_151607_B7E27E40 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 Amit Kachhap <Amit.Kachhap@arm.com>, Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============8624242309432944092=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8624242309432944092==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bajzpZikUji1w+G9"
Content-Disposition: inline


--bajzpZikUji1w+G9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Apr 01, 2020 at 06:54:44PM +0100, Catalin Marinas wrote:
> On Tue, Mar 31, 2020 at 08:44:59PM +0100, Mark Brown wrote:
> > Compilers with branch protection support can be configured to enable it by
> > default, it is likely that distributions will do this as part of deploying
> > branch protection system wide. As well as the slight overhead from having
> > some extra NOPs for unused branch protection features this can cause more
> > serious problems when the kernel is providing pointer authentication to
> > userspace but not built for pointer authentication itself.

> With 5.7 you won't be able to configure user and kernel PAC support
> independently. So, I guess that's something only for prior kernel
> versions.

Yes, it's really for the benefit of stable at this point - hence the Cc.
Going forward it's hopefully more for defensiveness than anything else,
it's possible something similar might come up with some future stuff but
ideally not.

--bajzpZikUji1w+G9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEyBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6E2FkACgkQJNaLcl1U
h9AvZAf4kcawmHf3KjTLz/Ml0UjkQlK6IiE5hl/jqyojdkmbqJ6vdmNYVpxdGRZv
jXhRkAf8jc6tuNYEJESXynxGqqygMkn46iMlBKpNRjNcs9niJoI5Xsc8cxczlyMD
RyPLCVtV0rGCXUbCqprcZc+0OvIXavtvAGPiOW+A1uoqKmBjY8EzJOheTJPCmGxj
3RgoWrHUHfDs9UnAlSleC9HdpI1o2x+H8T6pW8lw1jKwgx7O1kGSbv/EFXWcFfqT
wOGT+/QHawC2xC1GHO4hzOvq7Ao9pF4jBEAmZAxQVUgknxumFQJlSviubg8lGKxe
4jkQAXQgBy3YGWhzdW37lSBfpHaH
=5eIU
-----END PGP SIGNATURE-----

--bajzpZikUji1w+G9--


--===============8624242309432944092==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8624242309432944092==--

