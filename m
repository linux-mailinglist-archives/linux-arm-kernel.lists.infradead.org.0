Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B83C1C9689
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 18:31:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4CKxhhWeESc4k+ztlKPJG/WjQi/3ujJIkM+bKSb7EgE=; b=FYSTrZE6LroFkrxDncyZr+MPK
	3L9luN8dG2fNh3UsW1GiqjO9EMaN3ifq//B10FDRSvKIAe/f3xmFpiJBn8GLmx3+VxLBCcHBCvwVv
	gTWbc++OKJkQp4m5+9Ei647nW6jaTvQxSu1vk6ifanxyNcNCebYbFrmp2JaZI0LmYz9terdp9qK9+
	3NhWc/v1QXpv28aAIfgOahCBjOKMNEKxsmtg6tQw6B3U9DpqXaErRZbQhg4pnRQroDRevifK2The2
	Ue6fE/EwOh/bzw+xD+uhy+3zlmfy1Qk0g8CDYWWNKEQLqYIdsBwlFUjcS/WhdcO+6rV4sNjdt+621
	zpjJLJOFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWjQG-0008Iu-C6; Thu, 07 May 2020 16:30:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWjQ8-0008Bm-Cn
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 16:30:49 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 65A4220838;
 Thu,  7 May 2020 16:30:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588869047;
 bh=IF/gxffNE7XUzTkCDGiMvYKobLg7ej6jRy/hTtlUxeM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yd7rKxjyCl53f2Tz2yoAXTp67cJQb2aiXfIEbIJU4/mxgahoitvQL3u2erzwUQJAy
 wE+KfdOREatHRWe1c+ht8dbf5UgfV2jkeFC7AaasJIJljwSPYA31VgZP7CVOstkNmR
 HOQuAFRqafigeZ1aa3ITv7VVEvPeYy9bCm/Z7ugo=
Date: Thu, 7 May 2020 17:30:45 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v3 00/11] arm64: BTI kernel and vDSO support
Message-ID: <20200507163045.GD6183@sirena.org.uk>
References: <20200506195138.22086-1-broonie@kernel.org>
 <20200507143332.GB1422@willie-the-truck>
 <20200507143547.GC1422@willie-the-truck>
 <20200507145901.GA1938@willie-the-truck>
 <20200507150905.GB6183@sirena.org.uk>
 <20200507151848.GA2294@willie-the-truck>
 <20200507154854.GC6183@sirena.org.uk>
 <20200507155523.GB2648@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200507155523.GB2648@willie-the-truck>
X-Cookie: 1 + 1 = 3, for large values of 1.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_093048_482285_1FEB735B 
X-CRM114-Status: GOOD (  16.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kees Cook <keescook@chromium.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6075353365570366924=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6075353365570366924==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="MAH+hnPXVZWQ5cD/"
Content-Disposition: inline


--MAH+hnPXVZWQ5cD/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 07, 2020 at 04:55:24PM +0100, Will Deacon wrote:
> On Thu, May 07, 2020 at 04:48:54PM +0100, Mark Brown wrote:

> > Right, I'm seeing it here now - it's when CONFIG_GCOV_KERNEL is enabled
> > and happens for clang-10 as well but not a GCC 10 prerelease build.

> Interesting. Is that because GCC doesn't emit out-of-line GCOV functions,
> or does it emit PAC/BTI instructions for them instead? (you can disassemble
> one of the problematic opjects to have a look).

GCC does emit some helper functions wrapping GCOV stuff but they have
appropriate annotations, eg:

00000000000000ac <_sub_D_00100_1>:
  ac:	d503245f 	bti	c
  b0:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  b4:	910003fd 	mov	x29, sp
  b8:	94000000 	bl	0 <__gcov_exit>
  bc:	a8c17bfd 	ldp	x29, x30, [sp], #16
  c0:	d65f03c0 	ret

I can also reproduce this for clang with a trivial standalone source
file and -fprofile-arcs -mbranch-protection=bti so it's nothing funky
the kernel is doing as far as I can see.

> I can't immediately see how to fix it, so your hack above might be the best
> bet for now. I'm just a little wary that it might not be limited to GCOV,
> but rather anything where the compiler provides a form of runtime.

Indeed.  I guess the nice thing with BTI is that if something goes wrong
it will do so rather visibly so unless there are situations where the
toolchain emits rarely called functions the problems will tend to be
very obvious, and it seems that clang is detecting the problem itself
and complaining loudly which makes it even more likely that if something
else is affected it'll be noticed and we can at least add similar
bodges.

It does seem it's a straight compiler issue, if the compiler is emitting
runtime then the compiler ought to be ensuring that it agrees with the
build options the compiler was given and I can't think how this would be
fixable or avoidable outside of the compiler other than "don't do that"
which is what my Kconfig bodge did.  I'm talking to the toolchain people
internally about this.

--MAH+hnPXVZWQ5cD/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl60N7QACgkQJNaLcl1U
h9CbUgf/cl20aY70E/hkz/uj4do3Sk5WWtDkdE2TF5aui8v1pRvvLRVvYkkHtaBU
ytVCEzYEHJIbUQ/nrEPp7pX2rehjQL/lE9hmf0vgCciSLDjCuXJqywGKQFhmbDPH
2w/rLkoGb7R2e+oRcLAHs9JMPOZiQisPoCnJ0Qa/sk/kz/DiLeytstkmx8fE2Jkv
cCPvDljE+s9AgqWurPUdtAnDeV0c5wRwGgtVMiUAsC1XCwlqU6EYqyHitCcEAk6e
L8HqEFpPl5A1/pW0Rfyalm0ZFSvnWIcwtA/bUVF4+RsnQjo9JJc/7D0zK5/2BeeL
XOi9R2nL4YprzQCL3oPF0yK026k0FA==
=4w5Y
-----END PGP SIGNATURE-----

--MAH+hnPXVZWQ5cD/--


--===============6075353365570366924==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6075353365570366924==--

