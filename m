Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 771E918475A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 13:59:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UkUZQYIj4ir8s7+P/ILTCQD3PnIhlN/O5iBp5sr8QCs=; b=ufyQyWI+m2CKhSysWjQaiQLqJ
	hV1ihgG7Yydf8oexPL+7bkj6D4Kg6X3eFP7uNrgnOTzdlUgkbf9m8/ifoFzbAimchJ5bUnNCv4zzW
	CD5XtrAe7/DPIyuw/cwlV9HI1HiuPNlRlMe5/aemUPz8pRtkRsqnqWfsadmA0UVJJcgwlspTFa78w
	u3Q5R95KDpcefc6Gupt66EVV7Oisngdf7P9xvKm6LakjUSCEj6CSOZiH7RtW8RmOi8tlZUkwgUGCT
	YgPZmfQeN8UfRkGnO1S9gG0NzlVdnkAekXEI76mZ/bE5WwTeYY+4cW6x8D9o6OK7XQtpquLR0InCW
	Flj8acqrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCjug-0002te-CU; Fri, 13 Mar 2020 12:59:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCjuU-0002tE-20
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 12:59:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1981730E;
 Fri, 13 Mar 2020 05:59:29 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 905A13F67D;
 Fri, 13 Mar 2020 05:59:28 -0700 (PDT)
Date: Fri, 13 Mar 2020 12:59:27 +0000
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v8 00/11] arm64: Branch Target Identification support
Message-ID: <20200313125927.GE5528@sirena.org.uk>
References: <20200227174417.23722-1-broonie@kernel.org>
 <20200306102729.GC2503422@arrakis.emea.arm.com>
 <20200309210505.GM4101@sirena.org.uk>
 <20200310124226.GC4106@sirena.org.uk>
 <20200311162858.GK3216816@arrakis.emea.arm.com>
 <20200311172556.GJ5411@sirena.org.uk>
 <20200312184211.GA3849205@arrakis.emea.arm.com>
MIME-Version: 1.0
In-Reply-To: <20200312184211.GA3849205@arrakis.emea.arm.com>
X-Cookie: This page intentionally left blank.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_055930_190796_666764C5 
X-CRM114-Status: GOOD (  19.23  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Andrew Jones <drjones@redhat.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 "H . J . Lu " <hjl.tools@gmail.com>, Yu-cheng Yu <yu-cheng.yu@intel.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Sudakshina Das <sudi.das@arm.com>
Content-Type: multipart/mixed; boundary="===============3883546137158975759=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3883546137158975759==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="u5E4XgoOPWr4PD9E"
Content-Disposition: inline


--u5E4XgoOPWr4PD9E
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Mar 12, 2020 at 06:42:11PM +0000, Catalin Marinas wrote:
> On Wed, Mar 11, 2020 at 05:25:56PM +0000, Mark Brown wrote:
> > On Wed, Mar 11, 2020 at 04:28:58PM +0000, Catalin Marinas wrote:

> > > Can we not change aarch64_insn_is_nop() to actually return true only for
> > > NOP and ignore everything else in the hint space? We tend to re-use the

> > ignored. This isn't extensive userspace testing though.  Adding
> > whitelisting of the BTI and PAC hints would definitely be a safer as a
> > first step though.  I can post either version?

> I thought BTI and PAC are already whitelisted in mainline as they fall
> into the hint space (by whitelisting I mean you can probe them).

This was in the context of your comment above about modifying
aarch64_insn_is_nop() - if we do that and nothing else then we'd remove
the current whitelisting.

> I'm trying to understand how the BTI patches affect the current uprobes
> support and what is needed. Executing BTI or PCI?SP out of line should
> be fine as they don't generate a BTI exception (the BRK doesn't either,
> just the normal debug exception).

Right.

> I think (it needs checking) that BRK preserves the PSTATE.BTYPE in SPSR.

Yes, Exception_SoftwareBreakpoint preserves PSTATE.BTYPE.

> If we probe an instruction in a guarded page and then we single-step it
> in a non-guarded page, we'll miss a potential BTI fault. Is this an
> issue?

Obviously the main thing here is that if we miss faults then that's
potentially opening something that could be used as part of an exploit
chain.  I'm not aware of any sensible applications that would generate
the exceptions in normal operation.

> If we are to keep the BTI faulting behaviour, we'd need an additional
> xol page, guarded, and to find a way to report the original probed
> address of the fault rather than the xol page.

Yes, or just accept the inaccurate fault address which isn't good but
might be the least worst thing if there's issues with reporting the
original address.

> So, IIUC, we don't have an issue with the actual BTI or PACI?SP
> instructions but rather the other instructions that would not fault with
> the BTI support. While we should try to address this, I think the
> important bit now is not to break the existing uprobes support when
> running a binary with BTI enabled.

I think so, and as far as my ability to tell goes the worst consequence
would be missing exceptions like you say.  That's not great but it's at
least an extra hoop people have to jump through.

--u5E4XgoOPWr4PD9E
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5rg64ACgkQJNaLcl1U
h9DWnQgAhUxlaicd2a+MBwTWiCVEJTRRFVsRGhEykHrb5hzLpkJjryEGiVCRyRQu
oVmbnqJvqq7rPvgU9m5hjzCRHisdgwfusfAHEeh5wb2Mj4PDLjy5eZqVDiA070Qk
kTw4qZuayRbkD/k3axQ3/DT8+Etp7R7diCsLNp9VXMuc8E54XYtUv7lEreciqiJR
MSagKFj37vUFHTJIXAzynd1W+b4QyPA3FGKi1U90CijwuWGRu5HY8XKguW/7jLIp
5FsUaW+Qz45aPeQF9g5Ka85iNrTKuaj49BpvK4vsM7TjjKJ2Br7k1fmxqceWessd
5gP9y4bcPEjW+7sf40ALa+SsaPmVTw==
=g2Tj
-----END PGP SIGNATURE-----

--u5E4XgoOPWr4PD9E--


--===============3883546137158975759==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3883546137158975759==--

