Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 229EC201AD4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 21:02:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=I5bfhBpt0AUk5rcsO9aF3myEaJZfsPufoOiQP54E9BM=; b=OeTFgUUGGcl7vDXVb+a5PETxL
	FqLTXQsHek8p3OxpySeFIMC8mEEdg5VFupKTlHrwA2Kuc/WUK2VYBWv3yDFPJ0ynqkkofMEekJ6ye
	87oNIEO3BPsB/75TrvF9noF3hW6xp19MLu2iAULIhPNqG+F/WrMvnKzKcgo6qGnCKRwn3iQ4iEB24
	x40sjiJYDJqUnk58JIh37U+Q7SwjS8DZfXhc8PN9A7OFymMKbS1St6OQRNk5Oq1sLPpUoXJ1WWOiH
	UZu2b6ZF/4v4jadZGs1uxXauMFMZoBGfE4ZsVH2DCMfro4gSCCBNyTiNrSrFHW6pDXjAKDqJwAr1R
	Epk6Rh5wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmMH0-0003I9-2O; Fri, 19 Jun 2020 19:01:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmMGq-0003Hi-Dn
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 19:01:49 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 640A720EDD;
 Fri, 19 Jun 2020 19:01:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592593306;
 bh=u0tG+Ja24eW/zsPxN2mT6JO75JU8LlvEi/J70n8Lwr4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lLjd4sH/k90Vs2aT2HOFLaS72ntvDxp4p5tTeUBHyw+1r5uqj7XEmFlnlZwqmaDYW
 gwOX31T8UBREdUd2Qn2o0wlFCg8vfqf6Mgm2Tw/pf6P071v19icVykp2wxDTspZoPb
 RnknWXEfSzDB2hGIIGv/fpp5zpZXcuavC4r2wRoU=
Date: Fri, 19 Jun 2020 20:01:44 +0100
From: Mark Brown <broonie@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v2] arm64: Depend on newer binutils when building PAC
Message-ID: <20200619190144.GA20310@sirena.org.uk>
References: <20200619123550.48098-1-broonie@kernel.org>
 <CAKwvOdnAamgwD8UKuxMsZtmAWnY99TwwCQRcFoHBzAmL2U+W=A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAKwvOdnAamgwD8UKuxMsZtmAWnY99TwwCQRcFoHBzAmL2U+W=A@mail.gmail.com>
X-Cookie: Sacred cows make great hamburgers.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_120148_570314_C2C959EA 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: KernelCI <bot@kernelci.org>, Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Daniel Kiss <Daniel.Kiss@arm.com>
Content-Type: multipart/mixed; boundary="===============8610376464264234821=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8610376464264234821==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="T4sUOijqQbZv57TR"
Content-Disposition: inline


--T4sUOijqQbZv57TR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 19, 2020 at 09:55:04AM -0700, Nick Desaulniers wrote:
> On Fri, Jun 19, 2020 at 5:35 AM Mark Brown <broonie@kernel.org> wrote:

> > binutils in Debian 10) so instead refactor so we require a new enough

> ^ is Debian 10 what KernelCI is running, currently?

The Docker images it uses for builds are Debian based so should be yeah
(it's the current release) but I actually pulled that version number
=66rom my desktop where I reproduced the problem.

> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Thanks.

> > -       # GCC 9.1 and later inserts a .note.gnu.property section note f=
or PAC
> > +       # Modern compilers insert a .note.gnu.property section note for=
 PAC

> It can still be helpful to note compiler version numbers (GCC 9.1,
> clang-10).  Someday those will be ancient history, and the kernel will
> move beyond support for those toolchain versions.  At that point,
> having a comment makes it easy to `grep` for `gcc 9` and find all the
> places in the code that can be cleaned up or simplified.

I figured that in this case it's more the binutils version that's the
issue than the compiler.

--T4sUOijqQbZv57TR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7tC5cACgkQJNaLcl1U
h9CAVAf/fpnSzeZcmnwbgDwiYmejxxxxM5H0Ztn3CsJ8BrZcyQO8M8jyzSOHwZP9
6n223ROVuBraRyQBMj3MurPAHsXcu7Dq6e3tnRL54rBFLcarcOpjYpLNqKWIhsrk
8g5fbeWRNnOrTB4Gw/VRMSOUfE4pbwgcjjy4rfjwuOOamloawOoVise7ScB4UrRZ
j3tkOUfC5rpwtiWjdqX72VEVS5Z/amB1XUePPPRPRNzlaGDC6w8Q2MUjvetakse5
o7SQJ5bPv2wmuY3cvUT0I3/QLcV9+fCJhHrlEavcXZVFFJpL7BPjbSmxlJMK41yA
qYxmJUe+ahgS+K2ctFP+31QMkx0eZA==
=XjQW
-----END PGP SIGNATURE-----

--T4sUOijqQbZv57TR--


--===============8610376464264234821==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8610376464264234821==--

