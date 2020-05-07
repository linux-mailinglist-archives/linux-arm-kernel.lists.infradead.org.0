Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD761C96D0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 18:48:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kMa+9P35lRAQRR48HgLsom3zvT7W4q496d3Lz9j6lLM=; b=LBYsjCMleaKfWTbp9NiO25UU9
	a969e/1+DzzAZrrjXddET83MySQPPTOkMMAIiFct5fEAHRdoacC3zOe8T6Rh6sormDiZEggPqc6DA
	43lhexKkCd7aKf7cJLEi3WAFE/corD7RcHorZUunRNBhsoV5VkrTriouJLrL/iFEdEuugzKlzl3bJ
	nmvh3QDgVXXfUWmobQDcmeCpqu+k4SnCOeripmhEqy0njbD1R6wgm1DIjvOq2FiS1rZPYt59Y8Ajs
	o25txXClwJBbg6e4hNdJEaUbBFHq7zoe3VkI1hrpqzJ22KyQqgPewdugkHshn80eZHC/RQkbOBWQP
	mnGwtqm5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWjgh-0002xh-Rp; Thu, 07 May 2020 16:47:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWjgb-0002oH-S7
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 16:47:51 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E0DB020870;
 Thu,  7 May 2020 16:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588870069;
 bh=wXrhFL7ZkDxdvVqq5II1eKFCD+GFt9RiVWoUUUrzcsU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ps8OGbEotEzFiQ4vSiODI3BCLjgza469ctzAd22gZYU1T7gxDJJBoIfei4ZNRz4rd
 5ql3ALow9sVkYrqlYxHaay38mgys2lqX7yyGoUMhd7yfb0r0SJHUH0xm7eHLfBbVRA
 ZBIugcgfzlp4Q2Ofqeb5okxzchEuZb5KDfcOzUZ4=
Date: Thu, 7 May 2020 17:47:46 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v3 00/11] arm64: BTI kernel and vDSO support
Message-ID: <20200507164746.GE6183@sirena.org.uk>
References: <20200506195138.22086-1-broonie@kernel.org>
 <20200507143332.GB1422@willie-the-truck>
 <20200507143547.GC1422@willie-the-truck>
 <20200507145901.GA1938@willie-the-truck>
 <20200507150905.GB6183@sirena.org.uk>
 <20200507151848.GA2294@willie-the-truck>
 <20200507154854.GC6183@sirena.org.uk>
 <20200507155523.GB2648@willie-the-truck>
 <20200507163045.GD6183@sirena.org.uk>
 <20200507163658.GC2648@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200507163658.GC2648@willie-the-truck>
X-Cookie: 1 + 1 = 3, for large values of 1.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_094749_928729_BC9B4103 
X-CRM114-Status: GOOD (  13.91  )
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
Content-Type: multipart/mixed; boundary="===============3416582522270674447=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3416582522270674447==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7LkOrbQMr4cezO2T"
Content-Disposition: inline


--7LkOrbQMr4cezO2T
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 07, 2020 at 05:36:58PM +0100, Will Deacon wrote:
> On Thu, May 07, 2020 at 05:30:45PM +0100, Mark Brown wrote:

> > GCC does emit some helper functions wrapping GCOV stuff but they have
> > appropriate annotations, eg:

> > 00000000000000ac <_sub_D_00100_1>:
> >   ac:	d503245f 	bti	c

> Hmm, where have the PAC/AUT instructions gone?

I was testing with -mbranch-protection=bti while trying to narrow down
the issue when I pasted that example in, if PAC is enabled then you get
the PAC/AUT instructions instead.

> > It does seem it's a straight compiler issue, if the compiler is emitting
> > runtime then the compiler ought to be ensuring that it agrees with the
> > build options the compiler was given and I can't think how this would be
> > fixable or avoidable outside of the compiler other than "don't do that"
> > which is what my Kconfig bodge did.  I'm talking to the toolchain people
> > internally about this.

> Thanks. I'll apply your 'depends on ...' line locally and push that out
> if I don't run into any more issues.

Thanks, hopefully it'll be fine.

--7LkOrbQMr4cezO2T
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl60O7IACgkQJNaLcl1U
h9CcJQf/Su9Dcjg4IvxmRRZ3ipceB7T0unD2ionx52JreUAJBHDaBgeM2171KdI9
WeS2LkQk0Evb4055bYU1WGJHLooeWuEI3KXS5MoGjQwc1I+iiJJyWjOhHzTr5tyk
ouOwlLfFUHpCrjbLzTvfn+g+oMNJj3KWdoccb3ZxFT1IbhK+DwWeu4dsCdJCuQAR
Uqf8lr25NBz8Z08biFrUrKRJLm9mvR534OZNDQnXcCTauuLFpSZ+jRBUIjxF4n4H
ShigzM0idpiEWNrPhj47+bNQ5tkCiB3iBMS9oeYcwCVCtsPlGNnzGWtxufCsCvFC
ItxNkWfIaLo45tYyPDmFBXpuKmXUZw==
=qYHd
-----END PGP SIGNATURE-----

--7LkOrbQMr4cezO2T--


--===============3416582522270674447==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3416582522270674447==--

