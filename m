Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B851F95A9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 13:53:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=t36lJE7FcIPgRCSDZu/aw/thlrORXDjta9IhNFw3MdY=; b=JEl/RuNHJRdP03jleFuxpiSP2
	zZnzkNDl8rcdVOh/RzHdC63DS0FjCt5zx9C/IvHXbXsRL97K9K4C+Ect8StP/Hy0eoSD4PBwkYcgY
	fNmwwDNQ8DLvooL9I4kIlU/0SyKopxSIaQreL5UhR37OlQMwLnra/pi2kRXXJLR4H8KAEL1LCtcSa
	f9kbRfC6MV4cOlAAO3TAntHSctrR/NQD9Ih3/rYy0cyZQo7fMQOoNgzY85qTF4lhPgk08auxVfXF8
	M6s30AUrJweYtZ0S8QPEwOTriJEG9zoI2fosiRG0jIKCuiWTEMnE5HmprC6pkcciOSnZpm/X1REQr
	UoJysBhvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkngT-0001vv-B7; Mon, 15 Jun 2020 11:53:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkngK-0001vT-9D
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 11:53:41 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6743720707;
 Mon, 15 Jun 2020 11:53:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592222019;
 bh=ucsWxCGxcXrDZ8lJt9rGlvTvHt6cK583zUTyVvXZjQU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PfyejClY80eromUUWRPmUlPHFj99e+kXp6dKholDjCQTT8rxom6U8N/fM8Hv2uttP
 QJLgscHYXdo+8oKKD5ud7NgHRYCekpqibqeHCkcvyR8lszOiPXaxK/Fk46pxShok0Y
 YWCuo55go8hHRsUMfTVVOCJ6/1iRxC4kXUrAbkdo=
Date: Mon, 15 Jun 2020 12:53:37 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: Clang miscompiling arm64 kernel with BTI and PAC?
Message-ID: <20200615115337.GG4447@sirena.org.uk>
References: <20200615105524.GA2694@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200615105524.GA2694@willie-the-truck>
X-Cookie: Offer may end without notice.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_045340_342208_B8055808 
X-CRM114-Status: GOOD (  10.46  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, android-kvm@google.com, catalin.marinas@arm.com,
 ndesaulniers@google.com, clang-built-linux@googlegroups.com,
 linux-arm-kernel@lists.infradead.org, daniel.kiss@arm.com
Content-Type: multipart/mixed; boundary="===============0223846162043333789=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0223846162043333789==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oOB74oR0WcNeq9Zb"
Content-Disposition: inline


--oOB74oR0WcNeq9Zb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 15, 2020 at 11:55:24AM +0100, Will Deacon wrote:

> Here, the switch statement has been replaced by a jump table which we *tail
> call* into. The register dump shows we're going to 0xffffd68929392e14:

> ffff800010032e14:       d503233f        paciasp
> ffff800010032e18:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
> ffff800010032e1c:       910003fd        mov     x29, sp
> ffff800010032e20:       aa0803e0        mov     x0, x8
> ffff800010032e24:       940017c0        bl      ffff800010038d24 <kvm_vm_ioctl_check_extension>
> ffff800010032e28:       93407c00        sxtw    x0, w0
> ffff800010032e2c:       a8c17bfd        ldp     x29, x30, [sp], #16
> ffff800010032e30:       d50323bf        autiasp
> ffff800010032e34:       d65f03c0        ret

> The problem is that the paciasp instruction is not BTYPE-compatible with BR;
> it expects to be called with a branch-and-link, and so we panic. I think you
> need to emit a 'bti j' here prior to the paciasp.

I checked with our internal teams and they actually ran into this
recently with some other code, the patch:

   https://reviews.llvm.org/D81746

([AArch64] Fix BTI instruction emission) should fix this, it's been
reviewed so should be merged shortly.

--oOB74oR0WcNeq9Zb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7nYUAACgkQJNaLcl1U
h9DyLQf7Bhsfl2G+2q4v0J8E4KX19EIP7PbfT//jfywg/LCih22CzPQ4ow90jBEa
a/9+8AtECexLWj1QCwOp/Zoik27A/YB+bNtRMOLYk12G4YthHncarh/TqcNJM9h3
HUD/m7BSfcxOCYiKBk3zR3SwWkNMl+gsbvwC1cPEgeE9v/VlGZKDNZrj6/FZCCvp
MrkD7kOuWoYTsYNQaVkQwxFGU4eHsXSTyy62fxtpJEptN4j7C61YWK//N/Bysnde
6thlTzSFrWcqQkf1KkIhuwna6FP3nXHcu4VMJKbqy97qmaqBo02BP+8qrxmU/JtG
G8uJ/qZAsHPvBKF84FJ8wkZewcDGLw==
=3A9l
-----END PGP SIGNATURE-----

--oOB74oR0WcNeq9Zb--


--===============0223846162043333789==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0223846162043333789==--

