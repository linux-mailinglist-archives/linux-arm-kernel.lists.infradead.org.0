Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7949218F8A4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 16:32:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oherP+M8E22Y24M4fNikI2lUUShtHS4yiWOj/rOCcJY=; b=ZCxYK0VHV1gvTZUCKbs+uKoo8
	dj6jg1RZ2yMV9+zZpzfnbplld52lPBXSwc0KR2T1X8dQlKrT2j7dCqPhZQr4lrr9z5vzoo0RNrJVU
	GamS3wUsx3d3xEbv/1TGi9AziPB0Pa/ptE56kQPZ6gE4nwTEfBRkiDdIBdpkLJ25WPcHGSjI5/jda
	2emI6p5B85dYx9rb9uAyoLzZE3bF2zDCc5j+G/rGp9JmSK0J1hw2Xue3G1M1kOfUN26TblcGB6BwZ
	JQFl0kKOIw7cB4YCncJx1+8NUTfI2C0D1zOy7FEOZCg/TR4jytkQMW00Eku9LP9e2UuhjoTA+Bxry
	SMffLY3mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGP4D-0000cZ-AA; Mon, 23 Mar 2020 15:32:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGP44-0000bb-SX
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 15:32:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 640121FB;
 Mon, 23 Mar 2020 08:32:30 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B83F23F7C3;
 Mon, 23 Mar 2020 08:32:29 -0700 (PDT)
Date: Mon, 23 Mar 2020 15:32:28 +0000
From: Mark Brown <broonie@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v10 00/13] arm64: Branch Target Identification support
Message-ID: <20200323153228.GE4948@sirena.org.uk>
References: <20200316165055.31179-1-broonie@kernel.org>
 <20200320173945.GC27072@arm.com> <20200323122143.GB4892@mbp>
 <20200323132412.GD4948@sirena.org.uk>
 <20200323135722.GA3959@C02TD0UTHF1T.local>
 <20200323143954.GC4892@mbp>
 <20200323145546.GB3959@C02TD0UTHF1T.local>
MIME-Version: 1.0
In-Reply-To: <20200323145546.GB3959@C02TD0UTHF1T.local>
X-Cookie: Stay on the trail.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_083232_966236_BC16FB74 
X-CRM114-Status: GOOD (  14.79  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Paul Elliott <paul.elliott@arm.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Andrew Jones <drjones@redhat.com>,
 Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Eugene Syromiatnikov <esyr@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
 "H . J . Lu " <hjl.tools@gmail.com>, Yu-cheng Yu <yu-cheng.yu@intel.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 nd@arm.com, linux-arm-kernel@lists.infradead.org,
 Florian Weimer <fweimer@redhat.com>, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Sudakshina Das <sudi.das@arm.com>
Content-Type: multipart/mixed; boundary="===============5184026393314462673=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5184026393314462673==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2hMgfIw2X+zgXrFs"
Content-Disposition: inline


--2hMgfIw2X+zgXrFs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Mar 23, 2020 at 02:55:46PM +0000, Mark Rutland wrote:
> On Mon, Mar 23, 2020 at 02:39:55PM +0000, Catalin Marinas wrote:

> > So this means that the interpreter will have to mprotect(PROT_BTI) the
> > text section of the primary executable.

> Yes, but after fixing up any relocations in that section it's going to
> have to call mprotect() on it anyhow (e.g. in order to make it
> read-only), and in doing so would throw away BTI unless it was BTI
> aware.

Ah, of course - I forgot that's not a read/modify/write cycle.  I'll
send the comment version.

> > That's a valid point. If we have an old dynamic linker and the kernel
> > enabled BTI automatically for the main executable, could things go wrong
> > (e.g. does the PLT need to be BTI-aware)?

> I believe that a PLT in an unguarded page needs no special treatment. A
> PLT within a guarded page needs to be built specially for BTI.

Unguarded stuff is unaffected.

--2hMgfIw2X+zgXrFs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl541osACgkQJNaLcl1U
h9A4pAf+IvJV9iWwP6vJKgT868+5ZjhSjiVsOKwt0PqgVzwOcV5HIX7k7mlf91GM
k1Fn/ZsPWecmng93bj0iUlMtnBCoxTyE4F20odXx1vgUhscr6RjCvtPkGlLEgYEz
0Cs6mB6NDjJxcTJDxB54HIXhlP4lL3Jo++u+yRS2/0lLHba08FUu7/gJYjh7TTCV
n9kw50W8boGR1DgRe51u0Yn08RqNt2Boe/tauY2huT9H5zgbM2d40jv7qVcdTffJ
PWeuF23KN9w9E/burfR4MrA8JtLgZHrnjt5cuSXuogtP28D1UcfgaKfr8JSDPT6P
VjN8hBGRZhte6hqR58+ZsNUrKDDLIw==
=1CsH
-----END PGP SIGNATURE-----

--2hMgfIw2X+zgXrFs--


--===============5184026393314462673==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5184026393314462673==--

