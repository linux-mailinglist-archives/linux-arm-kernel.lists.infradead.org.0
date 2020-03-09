Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0BD17EABB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 22:05:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Vyg+ZRQ3YE/G6k9wATXJHF2PTxhea2qBZm+Kflwgfd8=; b=S/j/Z6TLCrBFQavJAQqeTKoAs
	y+od9+Ou5FNtGIKNsbmyLyu/x/PyHunzsJQJ8NQtpjgG8fiqHP/cH5U+Scf7S6qBdOPG1XDDbVU2x
	hDz/OVgVL3VPN8QzMJVLMZultzeRS9MOfuMJS23fv2NOOmungoHeYaixAJdJyx3myNON7ZCSYjZfP
	nT8uiW/RxGHS++DVan0+RFW2Fu3GCj6Tjj9OhbO4dhVSrNnR9nLIIHMLA6K4Ki0a8LRq5OmcefuPB
	fK+AaFR8NZXHKaciYWXV23a/hLwSBL93uVq0MQLPjCrH+c6AjC9FP2bsuT0R5sbGumf6F4GACASF+
	hwC5oayAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBPaP-0004KY-Kb; Mon, 09 Mar 2020 21:05:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBPaH-0004AB-Un
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 21:05:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1222D1FB;
 Mon,  9 Mar 2020 14:05:07 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 891E23F534;
 Mon,  9 Mar 2020 14:05:06 -0700 (PDT)
Date: Mon, 9 Mar 2020 21:05:05 +0000
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v8 00/11] arm64: Branch Target Identification support
Message-ID: <20200309210505.GM4101@sirena.org.uk>
References: <20200227174417.23722-1-broonie@kernel.org>
 <20200306102729.GC2503422@arrakis.emea.arm.com>
MIME-Version: 1.0
In-Reply-To: <20200306102729.GC2503422@arrakis.emea.arm.com>
X-Cookie: Above all things, reverence yourself.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_140510_042553_9E86BA31 
X-CRM114-Status: GOOD (  12.53  )
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
Content-Type: multipart/mixed; boundary="===============2650174303449417059=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2650174303449417059==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qySB1iFW++5nzUxH"
Content-Disposition: inline


--qySB1iFW++5nzUxH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Mar 06, 2020 at 10:27:29AM +0000, Catalin Marinas wrote:
> On Thu, Feb 27, 2020 at 05:44:06PM +0000, Mark Brown wrote:

> > This patch series implements support for ARMv8.5-A Branch Target
> > Identification (BTI), which is a control flow integrity protection
> > feature introduced as part of the ARMv8.5-A extensions.

> Does this series affect uprobes in any way? I.e. can you probe a landing
> pad?

You can't probe a landing pad, uprobes on landing pads will be silently
ignored so the program isn't disrupted, you just don't get the expected
trace from those uprobes.  This isn't new with the BTI support since
the landing pads are generally pointer auth instructions, these already
can't be probed regardless of what's going on with this series.  It's
already on the list to get sorted.

--qySB1iFW++5nzUxH
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5mr4AACgkQJNaLcl1U
h9Blwwf8CR8zwN1uUuwJWSzyItw8ZiSf2fLHJ6Smgao/rc/O876dKM+ZZQqzuQ3B
kG8nQyocUyEa7jghPeuTnqveuK4hpSDe/++EG1Ncl+7gMe8pmbTLVfOCYZzs1TPc
3QiBL54YSDsAtYFT/Q+2Q27pv4vP3Xm7vsyhvWHYujG6HuFVt3Oco0Nnh8ipL6Eo
XPOS5rfxJTLe2vcwFfj6Nf03zK+DoS2gU4LAXCjQeXGuwGep9BYzoEQhXk8srTA7
ZJSrDH0XTMYRRmkmHTcppBRfqbKwES2xZYt6GDRWKqG7yvnEcq+v1MFR2Mgw87ZA
eQr2xNhLMxU8o5zqjJiwHMI5S3jMoQ==
=TGul
-----END PGP SIGNATURE-----

--qySB1iFW++5nzUxH--


--===============2650174303449417059==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2650174303449417059==--

