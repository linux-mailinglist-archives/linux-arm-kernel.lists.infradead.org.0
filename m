Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9394197ABF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 13:33:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9EePArAeIQGlkW7ol/ZnrL994YtcisiZusOcAXa3ESo=; b=USNNLOx/edWekplNaEy7Z7ckt
	lVC8pUzhDPjQdUSnF1bqNzNlC7zkUEW/EKiQA108U6EeTgZemqwop6E3FcC/fx8JOnUjCOzrqgsaU
	LgS4gYYDCNVQBMjSpoipWz5tNeC7tTkQXBl+UFmCenXcyvBCw+GDnowaEnDkXvzSofg1tkb6YJN5V
	Iqat5fmh56Fp7QKT+po2+teUPT+RnqxOWM/IzNqQCF8Q5MenYtv0A9QKDL4sMyP8jqbTr8s508olE
	uVXYjZrgY65SUNht5Xho+JGIf0uXYROSURqzNbimbKsfYUjFdfE5jSUaPyW0nIK8cArN/ZP+r0OkT
	OPAKOnzEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIsfU-0007Bb-NS; Mon, 30 Mar 2020 11:33:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIsfE-0007Ah-M7
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 11:33:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D940A31B;
 Mon, 30 Mar 2020 04:33:02 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5B5EE3F52E;
 Mon, 30 Mar 2020 04:33:02 -0700 (PDT)
Date: Mon, 30 Mar 2020 12:33:00 +0100
From: Mark Brown <broonie@kernel.org>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH 1/5] arm64: bti: Support building kernel C code using BTI
Message-ID: <20200330113300.GD4792@sirena.org.uk>
References: <20200327192107.18394-1-broonie@kernel.org>
 <20200327192107.18394-2-broonie@kernel.org>
 <202003281348.B5ECC9DB2@keescook>
MIME-Version: 1.0
In-Reply-To: <202003281348.B5ECC9DB2@keescook>
X-Cookie: Ahead warp factor one, Mr. Sulu.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_043308_767898_6377DE3F 
X-CRM114-Status: GOOD (  14.29  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5061787018348439053=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5061787018348439053==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vni90+aGYgRvsTuO"
Content-Disposition: inline


--vni90+aGYgRvsTuO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Mar 28, 2020 at 02:14:09PM -0700, Kees Cook wrote:
> On Fri, Mar 27, 2020 at 07:21:03PM +0000, Mark Brown wrote:

> > When running with BTI enabled we need to ask the compiler to enable
> > generation of BTI landing pads beyond those generated as a result of
> > pointer authentication instructions being landing pads. Since the two
> > features are practically speaking unlikely to be used separately we
> > will make kernel mode BTI depend on pointer authentication in order
> > to simplify the Makefile.

> Some vendors have been making chips with weird combinations of features.
> Is there a better justification to use beyond "unlikely"?

The design intent is that BTI is complementary to PAC so it would be a
peculiar implementation choice to do BTI without also doing PAC but yes,
implementors and system integrators have the freedom to innovate in ways
that we cannot always forsee.  The other bit of it is that there's
fairly limited overhead from running PAC enabled code on hardware
without the support.

> The compiler appears to accept a leading +, so how about:

...

> Or, this is all overkill. :)

I feel better about adding the extra dependency than feeding an option
to the compiler that looks wrong like -mbranch-protection=+bti (more
BTI!) but ultimately I don't have strong feelings either way so whatever
Catalin and Will prefer.

--vni90+aGYgRvsTuO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6B2OwACgkQJNaLcl1U
h9APIgf/cISGK7SQjDmMhVW5kKagg9IJoJaSpsZe5tippg/qIhoVJzRdIswLy0fR
HJmu1IH5b7vtK4oMzkOmrpC/xczRJkGqQ8fuK0mWuq3Lzwn20+l1s62CBvmsFe7C
HqvcH3/UDbWFE7UyUvRQYfzYOQTERiIXPPTXbiq9kNTb7BacZidu3gAEpvPhY3MA
/Qq/i1rIBGSXRoEOyZNz0/kxmDJmFyLYzuZuIYWrJqOsxYvKyPYBlmClt4Sm6xpg
zCauDL3Zo5rkQP6K916/kAIsbohhsvr/Lse8BY7w0CCYWjBWUC0lYJX6sIU/xoC2
6MxleaN0Fy0J4kQDubbVceEMAuo7Gw==
=iX3m
-----END PGP SIGNATURE-----

--vni90+aGYgRvsTuO--


--===============5061787018348439053==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5061787018348439053==--

