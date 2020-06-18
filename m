Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7601FFB4F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 20:50:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BuCnnBuVCzTE5fo4lfaGji7khuBdkKayl6YH50xZpWM=; b=iPfuQY5ajdMTU7q8MNMYoEu+o
	g4Ak+F+Fv9avPrJ28e4UsE74U49GlMMUyI3MdSK4PmO9VcJke2ys9MWjeL0dzTAmwYR98OYs+XODh
	16ZN/lH4a6kfEJYd59Qq2UDUWOnfeXiOFAjDBhEJPI3VBQnA29hBNU1AyJJSk/4FAc7/+SErE4g/i
	eo3LUy9G8C/2xlIl+sB4UKn9cLhwM+l9FC51yw5d7BlBhskk1f9pYbHzbKvTKQ1cXkdVKX7/a5fuu
	J/rK0bhX0/XIf/vLp8AEnXSDRSVOueAscIwHyxPeSFQiBDScEBZ2wQOWfwyavNv5BxkZ9++MNC7ce
	udT/oM0eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlzbt-0008WB-BM; Thu, 18 Jun 2020 18:50:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlzbk-0008Vd-Fl
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 18:49:53 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EDAFB208C7;
 Thu, 18 Jun 2020 18:49:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592506191;
 bh=3JhBiusur49Ukxgosfk4jTOV46joZ9kCsuJwVD7Rlno=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hVWrVNXz3n8rWyH5VBDVUIpyLiqYn7voH7pocjq7GH83f82vsK5rb7vttfkol2jv+
 8NrLopdnLZ/mvFKeVA9PU6ebusKmh6yfp5Fk5yNQNCnwLs15KKSQhenpyLPgtX8tGE
 jNW7ZQPghgHxjzjSKyBqHx506sX96Ep96Bfm6O1U=
Date: Thu, 18 Jun 2020 19:49:49 +0100
From: Mark Brown <broonie@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] arm64: Depend on newer binutils when building PAC
Message-ID: <20200618184949.GA10828@sirena.org.uk>
References: <20200618145539.53539-1-broonie@kernel.org>
 <CAKwvOdmOCVJOzp7tc62SV8yO8KkFpY9_fiX6yWqQRTtFC6vsfA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAKwvOdmOCVJOzp7tc62SV8yO8KkFpY9_fiX6yWqQRTtFC6vsfA@mail.gmail.com>
X-Cookie: Avoid contact with skin.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_114952_571089_A8AEAAC3 
X-CRM114-Status: GOOD (  20.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Daniel Kiss <Daniel.Kiss@arm.com>
Content-Type: multipart/mixed; boundary="===============2793837692303042441=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2793837692303042441==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PEIAKu/WMn1b1Hv9"
Content-Disposition: inline


--PEIAKu/WMn1b1Hv9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 18, 2020 at 10:37:45AM -0700, Nick Desaulniers wrote:

> Thanks for the patch.  I'm curious about the case for LD=3Dld.lld, which
> we use on Android and CrOS.
> I think this would be solved via an explicit line for the linker to check:
> depends on CC_IS_LLD || LD_VERSION >=3D 233010000

Ah, I see LD_IS_LLD is actually upstream now which complicates it - I
managed to miss it when looking earlier (must've thought of the wrong
name).

> Since we probably don't want to remove the check when using GCC?

Worse, with GCC we only want to check the binutils version if GCC is new
enough to emit the notes so we need to make the binutils check.  I think

	depends on LD_IS_LLD || LD_VERSION >=3D 233010000 || (CC_IS_GCC && GCC_VER=
SION < 90100)

in place of the existing GCC line covers it.

> Though, LD_VERSION is only a weak proxy for binutils version.
>=20
> It's tricky right now for CC=3Dclang builds because we still depend on
> GNU `as` from binutils.  So you could do:

> $ make CC=3Dclang LD=3Dld.lld

> which would be a problem since clang would emit the notes, and the
> Kconfig check against ld.lld would succeed, but then the binutils
> older than 2.33.1 would still choke.  Would a script that checks $(AR)

Oh, bother.

> $(OBJCOPY) $(OBJDUMP) $(STRIP) $(NM) $(LD) support be overkill
> (feature test or version check)?  See the `Link` above; we see
> warnings from all of those tools when binutils < 2.33.1.  In that
> case, I'd even remove the check for AS_HAS_CFI_NEGATE_RA_STATE (err,
> maybe not, looking at commit 3b446c7d27dd ("arm64: Kconfig: verify
> binutils support for ARM64_PTR_AUTH") cites binutils 2.34.  It would
> be good to support a build of just LLVM tools, or just GNU tools, but
> right now a lot of various builds that use clang are still a mix of
> various GNU binutil utilities.  (See commit a0d1c951ef08 ("kbuild:
> support LLVM=3D1 to switch the default tools to Clang/LLVM") for a view
> of what we're looking to use once we've burned down a few more bugs).

This is a mess.  I think the most robust thing here is going to be to
abandon version checks and do an end to end build check to see if the
feature is supported, that's overhead but anything else is starting to
look like nailing jelly to a wall.

> This mixing and matching does slightly complicate support for new
> features that require extensive tooling support, but I think we can
> make it work for everyone.

Hopefully the learning curve with this will make things smoother in
future.

> (Also, general plea to please use scripts/get_maintainer.pl, which
> should cc our list for any patch mentioning clang or llvm; we may have
> caught this in code review before it hit mainline).

Especially for a file like Kconfig get_maintainer.pl is rather prone to
false positives and negatives unfortunately :(

--PEIAKu/WMn1b1Hv9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7rt0wACgkQJNaLcl1U
h9D8WQf/e/TFpe0vQrPscoOvfPGUS4wCnfBceVaoTiDwt98umz07Ml+m2y18rob0
sDs3jWAyZTU6rORoy+t1s31C1wk2ZKl5y3oJtFeAVtvjNNw4JzK17QxOgTnmss1o
HgW1cpBlEFr7ZIMGYIIQSrNADUvo7BkxzEylTnLsZb1QiZpUBkKGLS+AWO06HdcM
Omd8UIE7+V6D3x3/wL1lgk2nzpBufRoRMuAqChn9qKuvYbryxCwSkpH9D6xrG8sQ
z9sw50giMHTT11kG5cz/DUEUTDcivLlpfmlWY7dfjCSeIOFyYe7ygqINt/8AmN+p
qDEhK3LyRyqOwiNolfEJlDYly8zAMA==
=WVb2
-----END PGP SIGNATURE-----

--PEIAKu/WMn1b1Hv9--


--===============2793837692303042441==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2793837692303042441==--

