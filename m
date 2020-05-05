Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FAD51C5EAA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 19:21:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AN1lmiSIZWcG0CtqO2dhKGyIydPQOHeF0yNP4rpjAYM=; b=QtkjAQv6Hmaw/2r5jg5KRK+sO
	X4/zbNgHX4xhe4Vblr6+MipN5LxYNG+aeUXKKRFVO4u/y2KpguAITAY6KUoHGWu+ASE0SZUcfKtsn
	r3BprBk784PeF3Z0YBZ0zyPamkDIrSddKzSTydwJH94nk3xcGJAHHHUnxMq9JAUDxxtUOQY3HTbDu
	Ze8A3dx/vImK8HPXyR/HviuPM3mqTrFJs+VOThFK50g85QHNApLtxykLsgbcI8c8yGzScDrEc0o8w
	p2mzXNDuObRCA+eRekwXzYCHhde/24fl52tzbgOf8YQtWPgbU3RdtT7Vmrzcuc8jRu8q6rQ5Mv8T6
	ll7D5HXIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW1Fm-0004QU-17; Tue, 05 May 2020 17:21:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW1Ff-0004Q5-Hv
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 17:21:04 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7AEC6206E6;
 Tue,  5 May 2020 17:21:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588699263;
 bh=9aVlQ6u6FXHfIvEyOIvfzCaOH41+bI7z19eVLNayuqk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VAOttl4lW5FMvvl+B/6iNddkuvyJuIxKVQd+7o/fhyF6Mxe2t/RJE5RYpLRqarVpo
 oYnAZ5TPmR3qRDy4NNu9lKd3PkCA/wSP+WxTry+uoG5DARx/OVJOBx/ejxRZltHa27
 09mNvvnOjHVnziEG1gNdYfBodfwCXfSygilNI6rg=
Date: Tue, 5 May 2020 18:21:00 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2 02/10] arm64: asm: Override SYM_FUNC_START when
 building the kernel with BTI
Message-ID: <20200505172100.GI5377@sirena.org.uk>
References: <20200429211641.9279-1-broonie@kernel.org>
 <20200429211641.9279-3-broonie@kernel.org>
 <20200505145642.GA24239@willie-the-truck>
 <20200505151806.GG5377@sirena.org.uk>
 <20200505160852.GF24239@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200505160852.GF24239@willie-the-truck>
X-Cookie: Poverty begins at home.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_102103_624517_42EEA91A 
X-CRM114-Status: GOOD (  14.72  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Kees Cook <keescook@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3008966886191828386=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3008966886191828386==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Az4VpBrmI9+OyhK/"
Content-Disposition: inline


--Az4VpBrmI9+OyhK/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 05, 2020 at 05:08:53PM +0100, Will Deacon wrote:
> On Tue, May 05, 2020 at 04:18:06PM +0100, Mark Brown wrote:

> > > I also see a scary linker warning about the native VDSO:

> > > aarch64-none-linux-gnu-ld: arch/arm64/kernel/vdso/vgettimeofday.o: warning: BTI turned on by -z force-bti when all inputs do not have BTI in NOTE section.

> > I can't reproduce this, I am using clang-10 as well...  can you share
> > your exact command line and config?  I'm using

> Just been debugging this, and it seems that not all clangs are created
> equal. Updating mine from 10.0.2 to 11.0.1 means I now get the
> '.note.gnu.property' sections emitted for C files compiled using
> '-mbranch-protection=pac-ret+leaf+bti', whereas I didn't before.

Oh, that's irritating.  I'm using clang from the llvm.org packages,
currently that's:

    10.0.0-++20200115115127+cbe681bd833-1~exp1~20200115105727.528

so if this is a clang issue it looks like they fixed it in the clang-10
branch.  I'm not sure it's worth trying to detect and handle this or
not, I don't know how widely deployed toolchains that don't emit the
property are and there's a fairly clear solution.  What do you think?

--Az4VpBrmI9+OyhK/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6xoHsACgkQJNaLcl1U
h9ASdwf+Pn5JTZth4KVj8Tje/7OgBYr1sp2c3FxIgsrewozmsT51SjnvNUQHo5Rr
vUUxD8F1gVD80vZfQX1125uDI/Oe1cDpdAVwH/CctOuVNc88xg2UaLkMo8kxpRWD
HmNJQxiK4UqyCk3ayDUU+8u66cp1eA3CvKoaLFNlL5kVzrC/mpdfblyLsIZ7FWKQ
ckpyauJhjtv+wTZ52A48YLD4JGtqC9m1iCbKenAbZoa6H5DXlCheXr5/4gT/qVc3
KpaddWTtS1OJfD4pXQIyDbqKCkL3GSdE8SS4D7TgjVEWsqWhxyNWZN1uiapg7xSp
6I8kN1h5MYrYoWS9lRj+xChKkQvadA==
=acZC
-----END PGP SIGNATURE-----

--Az4VpBrmI9+OyhK/--


--===============3008966886191828386==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3008966886191828386==--

