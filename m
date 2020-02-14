Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0989F15D9D0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 15:52:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V7PGeKM2MvddTX0nY/dsIa1QtbyowuT9hlA3A/vFj0k=; b=Qdn1CTC2JzKYXc2gNjagQU5SN
	GfPx1QgBScw7VhNDsKfsO6yoqv27+j35L4asJHEHQpUN5LS4555CJmyaGjQbtcGaHWz7sI3IDyMQd
	sFuzvquZxlWf7w9mPOTiY9U5rxuRe8pMyzM3FVgzpQWDVf+0ThCj1uXyzpLKkl4qo0FIOlFk9ZS9A
	n96M9KhHS+4FpjH7v6wZfIXZcSlhuI7OK0WhEOyVXj8rsnwPVTQL6IlyNk7Cv2jlgKbxvcPhFTmxE
	mf3VF/dDizV2V7GJLIUmXOHUFI0iVN9Qu4KS7TQrk/KgvkMNYphYKmO6AQlJb8s9Ry/u0mctuvn/0
	+l/+f57bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2cKW-0002Ak-Ff; Fri, 14 Feb 2020 14:52:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2cKM-0002AB-Nr
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 14:52:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C8E04328;
 Fri, 14 Feb 2020 06:52:20 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4BC8E3F6CF;
 Fri, 14 Feb 2020 06:52:20 -0800 (PST)
Date: Fri, 14 Feb 2020 14:52:18 +0000
From: Mark Brown <broonie@kernel.org>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH] arm64: kvm: Annotate assembly using modern annoations
Message-ID: <20200214145218.GN4827@sirena.org.uk>
References: <20200213153820.32049-1-broonie@kernel.org>
 <b25323d02c76441ee12c206f07907383@kernel.org>
 <20200214114027.GA4827@sirena.org.uk>
 <e8e8da7f1e02e9c2f8e67968697bdf85@kernel.org>
MIME-Version: 1.0
In-Reply-To: <e8e8da7f1e02e9c2f8e67968697bdf85@kernel.org>
X-Cookie: Shipping not included.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_065222_824862_132141D9 
X-CRM114-Status: GOOD (  19.09  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4649678715222001947=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4649678715222001947==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="D9sZ58tf58331Q5M"
Content-Disposition: inline


--D9sZ58tf58331Q5M
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Feb 14, 2020 at 02:19:18PM +0000, Marc Zyngier wrote:
> On 2020-02-14 11:40, Mark Brown wrote:
> > On Thu, Feb 13, 2020 at 09:36:56PM +0000, Marc Zyngier wrote:
> > > On 2020-02-13 15:38, Mark Brown wrote:

> > > >  	.align	11
> > > > -ENTRY(__bp_harden_hyp_vecs_start)
> > > > +SYM_CODE_START_NOALIGN(__bp_harden_hyp_vecs)
> > > > +SYM_INNER_LABEL(__bp_harden_hyp_vecs_start, SYM_L_GLOBAL)

> > > Why isn't SYM_CODE_START_NOALIGN enough? And what is the rational for

> > The _start and _end labels that were there before are explicitly
> > referenced by code, removing them would break the build.

> But if we're going to clean things up, I'd rather we actually do that.
> The only time __bp_harden_hyp_vecs_end is used is when computing the
> size of the vectors, and that'd better be BP_HARDEN_EL2_SLOTS * 2kB
> (which can be statically asserted at compile time).

OK, I'll drop this bit of the patch and send a separate change for this
since it's more than a direct substitution.

For reference the underlying goal here is to be able to use
SYM_FUNC_START to add BTI annotations to assembly functions for
in-kernel BTI, the cleanup is just a byproduct.

> > > the _NOALIGN, btw? I'd expect an alignment of 2kB to be more than
> > > enough.

> > So that the explicit .align above takes effect rather than anything the
> > macro decides to do, I'm trying to err on the side of caution here.

> I don't think we need this. The macros should do the right thing, and
> be fixed if they don't.

OK, I'll just use a regular annotation - the explicit .align isn't
documented so I don't really know what it's supposed to be doing.

--D9sZ58tf58331Q5M
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5GtCEACgkQJNaLcl1U
h9BreggAgSerbtdbm5K5UiEHgG67hxxU6BHNa834eGlNqgI8m+g5oqW1fAgziN20
7/3iZlKvyiwOxJT3lHnzcWxIO6BAaYMA13e7rtbS9+FgUtkghQg6Ssu69U7YxOsl
+bLRBts5KorIN5N4rbzASY8d1rGVs6TlrkuhD0XvC3dRDPbp7GkdlfQTHVft21lE
LjnKPQnbWZokp+2mwypFsrZ3Cs5e/SKMZk+PuovNWArdugoojirFuoKuUoXB0kHs
cMKUubb8nt4NcU392PL+WLlyDrrx6+2WhRNIXh/3mUwNIbcriY+8Uk6JnkKAfLa8
SBRVSZzdw0X4NFD8qXRxQNtEC1kdGQ==
=mDv2
-----END PGP SIGNATURE-----

--D9sZ58tf58331Q5M--


--===============4649678715222001947==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4649678715222001947==--

