Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A35E716EC7F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 18:27:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DIbQKg2dyC3H2xMCQLQhgACXyskOHI+qmRmO0VWRtMQ=; b=Pjpu6u0t0vJyZry9ubw0MqOP9
	fkGRAeeUGTbooxehBhQG+FM23b3W9TqgjGdqoHdnvGq/+3iUU/GDG/1fk1ybQyJNU+L5CbB9lOyt5
	EsLAQj8Sr3T3W3SA3upVjPPiB+PFMkUs4X6bv720/McQiWuwtqix0L69vzBhQ+GA23vOzM/F5xNjR
	WdbEvapDJ7kYiQ3mhmOrUI8V0kS+5oaaqVYqGULjgOT/CVMVLL0DqdgRZJhz1l0WB95tiHF+Pf2iy
	mWQsWNcEXnVlyPOFuQ2pevkoZanuYAhHxd0ZAQcfcMMQh2XayK66/UMNGOi60k0DXkL3ruDyEWG0o
	5ftpchVjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6dzf-0004yD-2u; Tue, 25 Feb 2020 17:27:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6dzU-0004xI-2G
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 17:27:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 21F221FB;
 Tue, 25 Feb 2020 09:27:25 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9A6403F6CF;
 Tue, 25 Feb 2020 09:27:24 -0800 (PST)
Date: Tue, 25 Feb 2020 17:27:23 +0000
From: Mark Brown <broonie@kernel.org>
To: Amit Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH v6 05/11] arm64: elf: Enable BTI at exec based on ELF
 program properties
Message-ID: <20200225172723.GG4633@sirena.org.uk>
References: <20200212192906.53366-1-broonie@kernel.org>
 <20200212192906.53366-6-broonie@kernel.org>
 <275b9cdb-7835-0dfe-9bea-acb0d8301e36@arm.com>
MIME-Version: 1.0
In-Reply-To: <275b9cdb-7835-0dfe-9bea-acb0d8301e36@arm.com>
X-Cookie: Booths for two or more.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_092728_150108_6A7A6454 
X-CRM114-Status: GOOD (  15.57  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Catalin Marinas <catalin.marinas@arm.com>, Andrew Jones <drjones@redhat.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, "H . J . Lu" <hjl.tools@gmail.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Sudakshina Das <sudi.das@arm.com>
Content-Type: multipart/mixed; boundary="===============7453782397400497600=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7453782397400497600==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="TmwHKJoIRFM7Mu/A"
Content-Disposition: inline


--TmwHKJoIRFM7Mu/A
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Feb 25, 2020 at 06:58:50PM +0530, Amit Kachhap wrote:
> On 2/13/20 12:59 AM, Mark Brown wrote:

> > +static inline int arch_parse_elf_property(u32 type, const void *data,
> > +					  size_t datasz, bool compat,
> > +					  struct arch_elf_state *arch)
> > +{

> Does this check here make sense to skip running extra code?
>     if (!system_supports_bti())
>              return 0;

This specifically is the wrong place for such a test since we didn't
even figure out if we're looking at the BTI property yet so it'd need to
be moved if any further properties are added.

> Although this check is there in arch_validate_prot.

And more importantly in arch_calc_vm_prot_bits() so we never actually
create guarded pages on a system that doesn't support BTI.  That said I
do agree that it seems reasonable to add an explicit check in the
parsing of the actual BTI property for robustness and clarity, I'll do a
patch for that and roll it into any future versions or send it
incrementally if this one is applied but it doesn't seem sensible to
spin the whole series with the very broad CC list it has.

--TmwHKJoIRFM7Mu/A
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5VWPoACgkQJNaLcl1U
h9Bq6Af/XISIHfTbIdVWLIy9cav1xBGoNheQB8U8jrd370PqkAtHsvZwnq9aDdt3
IxSWEuRVgj4bCprzm7gRSiLT5DSxNEqraVfT9GtbAy2Yi/ErLTSHRTCafCelguRv
guxddwpmSo/yyNcyW0xen19YAhFjJ+VAKjlPdO0ApbplIBWPzwX7cvO7db6qnH9m
k0GBhysZIXjhJW9KtjmFjdeiJxWGkjTXMDiC5O+Lq0/PL5MIWzrALmT45mFq4Ojf
1rHAkV6H/8HqU7hSGxnKegK5uwx/gPT2JjhKVYoXXnTIogDeFmnBuz4ZlWMaVD0P
3T4W1JDe639jb8v2EqZNxjdsU2XPFA==
=os2p
-----END PGP SIGNATURE-----

--TmwHKJoIRFM7Mu/A--


--===============7453782397400497600==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7453782397400497600==--

