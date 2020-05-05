Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB9D1C5AD9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 17:18:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RqB4UfVRsuwea9c8h2+Tt8Un0Xm9CPJ2PCm22zhlgHc=; b=nlpfrAyD3pXnm3YTf2PgObn/0
	jMK0h9fDel5TN+6LklA/segv5yT/xQFlhowowFSJ83jLhZ6fLXoXUMfZUmRlqUM7Qxf09IjaSxVhv
	F+n3eufNLkAnAf4YsJymDJwcwP5wTjDl5a0YiZLJ1fwtJBFAo3OC5gEqMCyHST/2bPDkxXdwoeBej
	IIDlJFzdht4zX2Dl81ECgC4XGwZhQ/M9gfxG9eBa+SkSWyh2u7HvlgiiDuz5wyeaCJcI7+PxAt/sq
	viK8/ptYIUL+g9knplchU5P/B2OrrkBy6tzDr04BbBuyDorMlbFyvMc9kVRAMEMq0E5/9F1pTnvnu
	1F0e/zBTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVzKs-0000iT-K7; Tue, 05 May 2020 15:18:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVzKj-0000i3-V1
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 15:18:11 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1CB9524953;
 Tue,  5 May 2020 15:18:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588691889;
 bh=7uoL7hoCLx4tN+u5lQRu4OEw184CwfcxrIJy+THo1dQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2MOh4GwA2u+c3UpszxAiPf4sSoU6M3Lc3TL1iRAsNOezhDr9+jx8IdHCriepun+tv
 aIktGt1pOWbE4QTcRx0Rg5PA5ePpcQYeCAnD6URHEtT90yzgtzau400EhkKatfNLUO
 6TY5OJT8PSHlJIsLbhMLJSk+tLQsJkhiDni9upyM=
Date: Tue, 5 May 2020 16:18:06 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2 02/10] arm64: asm: Override SYM_FUNC_START when
 building the kernel with BTI
Message-ID: <20200505151806.GG5377@sirena.org.uk>
References: <20200429211641.9279-1-broonie@kernel.org>
 <20200429211641.9279-3-broonie@kernel.org>
 <20200505145642.GA24239@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200505145642.GA24239@willie-the-truck>
X-Cookie: Poverty begins at home.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_081810_016050_2CF0DDEA 
X-CRM114-Status: GOOD (  13.75  )
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
Content-Type: multipart/mixed; boundary="===============8988854158685491801=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8988854158685491801==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="TdkiTnkLhLQllcMS"
Content-Disposition: inline


--TdkiTnkLhLQllcMS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 05, 2020 at 03:56:42PM +0100, Will Deacon wrote:
> On Wed, Apr 29, 2020 at 10:16:33PM +0100, Mark Brown wrote:

> > +#define SYM_INNER_LABEL(name, linkage)			\
> > +	.type name SYM_T_NONE ASM_NL			\
> > +	SYM_ENTRY(name, linkage, SYM_A_NONE)		\
> > +	BTI_J

> This break building the compat vDSO:

Right, fixed locally.

> I also see a scary linker warning about the native VDSO:

> aarch64-none-linux-gnu-ld: arch/arm64/kernel/vdso/vgettimeofday.o: warning: BTI turned on by -z force-bti when all inputs do not have BTI in NOTE section.

I can't reproduce this, I am using clang-10 as well...  can you share
your exact command line and config?  I'm using

    make -j56 ARCH=arm64 CROSS_COMPILE=aarch64-none-linux-gnu- CC=clang-10

which is the same clang version as you, not that I'd expect that to make
a difference.  This looks like the C code isn't being built with BTI
enabled but I can't see how you're managing to do that and I'm not -
this is the warning that "arm64: vdso: Force the VDSO to be linked as
BTI when built for BTI" is intended to trigger if something goes wrong
so I guess it's a good job I enabled that :/

--TdkiTnkLhLQllcMS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6xg64ACgkQJNaLcl1U
h9AUbQf8Cr7/2I5jpv4ks/zoKLu6vKqilnIzLn6S3aK9vL0CKCJZBjoOkcZ956mG
TiSfTzwBztRdwCQwVItc4pyDExfcs3Rt2i+WzVPsWOWnYeMR8nDRVwheZEqVDORz
mE9Oy2WvC8a95WpHlacX/mg/Ul7mJCyKejhxMvBrcADwciBmPOL2Mn4Qf5IMeCgN
kTuJ3U/PljrqmOY/Mpo8ms3EGKk/vg7W46GXlmexlMEo7cfg2r2by3WDbMDrYO6B
RaxgHWfkQvNLSIJZ6Z2BryYTeaewKe6DI3AwJJmiZDmEVNml0s6FgaVwhUEuUDgW
nmYeY80euM1AVvZdsHkpNZtLdxUNHQ==
=PUnJ
-----END PGP SIGNATURE-----

--TdkiTnkLhLQllcMS--


--===============8988854158685491801==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8988854158685491801==--

