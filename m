Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 257701C5E5B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 19:07:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=q+wpdYFvcOz5jvjO2RrT34whQy1VOpuSEX46xvnAur4=; b=A6Jrr86KEzCsQ5cMaGrg/Fppg
	mH/A87PivKAgXqxnHid1yJtnNRhi+ENvyb95gt/8cd7rq5wqKiwReFEd2pmxZMtjnTD2VKKPMl8dD
	KzNAboX4mId4EhFKwxPtXS4708sKAQf2IVQWDZr7Ft8LlD187cwqs6GjHUaV0V3kbUdgwEQBReFv/
	F+6oEKrSPdoiB827tllDKVwr4dGzgOs0CLxGgyC18FpzhQeDEtCskR9MOTRrPECkuHozOYAqUGK8V
	na+oiojCzonKDlTrZPpVzx3aX8YGzGUptbWBB8+RfwqTrJvmmUYkrtx2rmacbY/zMkI8xvirN1NfC
	OarY/HoRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW11y-0007QE-5o; Tue, 05 May 2020 17:06:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW11c-0007ID-Gs
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 17:06:33 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5B776206CC;
 Tue,  5 May 2020 17:06:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588698391;
 bh=kfjKcuHKi230Zi2QK5YEzeWg4yyPWrPiZGqbtVrm3Uo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gBbazDRzxTBnm6IKZjfAjGt5pL7PjTPh7IW4Xk9gn/bZ4XRwRUy+hE2d6KWqWBnh1
 bY9EasYu4PmOpo1M4X82/VMWrg1ymhKl2vqVD9dJVakjCAd/sfDiP6O0YafydCYRyy
 Yj/UYaJWxaibIxqdOIRcsdaQp3byYDz8so4vxGjw=
Date: Tue, 5 May 2020 18:06:29 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2 07/10] arm64: asm: Provide a mechanism for generating
 ELF note for BTI
Message-ID: <20200505170629.GH5377@sirena.org.uk>
References: <20200429211641.9279-1-broonie@kernel.org>
 <20200429211641.9279-8-broonie@kernel.org>
 <20200505145858.GB24239@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200505145858.GB24239@willie-the-truck>
X-Cookie: Poverty begins at home.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_100632_603365_4A722399 
X-CRM114-Status: GOOD (  15.71  )
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
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, dave.martin@arm.com,
 linux-arm-kernel@lists.infradead.org, Kees Cook <keescook@chromium.org>
Content-Type: multipart/mixed; boundary="===============9139372326219239417=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9139372326219239417==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VbfcI4OLZ4XW0yH2"
Content-Disposition: inline


--VbfcI4OLZ4XW0yH2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 05, 2020 at 03:58:59PM +0100, Will Deacon wrote:
> On Wed, Apr 29, 2020 at 10:16:38PM +0100, Mark Brown wrote:

> > +#define GNU_PROPERTY_AARCH64_FEATURE_1_BTI      (1U << 0)
> > +#define GNU_PROPERTY_AARCH64_FEATURE_1_PAC      (1U << 1)

> > +.macro emit_aarch64_feature_1_and

> Might be useful to take the features as a macro argument, so we can
> re-use this when extra features get added in the future.

I was unsure about that - it'd be a bit annoying to have to have all the
callers of the macro list things like BTI where=20

> > +3:      .long   GNU_PROPERTY_AARCH64_FEATURE_1_AND
> > +	.long   5f - 4f
> > +4:
> > +	.long   GNU_PROPERTY_AARCH64_FEATURE_1_PAC | \
> > +		GNU_PROPERTY_AARCH64_FEATURE_1_BTI

> Hmm. The Linux ABI doc [1] says this field is:

> 	unsigned char pr_data[PR_DATASZ];

> but the AArch64 PCS [2] says:

> 	"It has a single 32-bit value for the pr_data field."

> What does this mean for endianness?

It's not entirely clear is it?  What we're doing here means that we're
emitting as a long rather than a character array so the endianness
matters.  The ABI doc does have language about the elements being "an
array of X-byte integers in the format of the target processor" which
seems to align with that as well, my impression is that the intention of
the ABI doc is that there should be a Processor_Word type corresponding
to the Elf_Word type but there isn't so the char arrays are used to
handle the word size difference between AArch32 and AArch64.

Unless I'm missing something this at least appears to agree with what
the compilers (both GCC and clang) are emitting for both big and little
endian and what a readelf that understands these is decoding so I think
at this point it's de facto the way things are interpreted.

--VbfcI4OLZ4XW0yH2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6xnRQACgkQJNaLcl1U
h9DkhAf+OFrGWXzHePkWXjJbXHQ+xQsYzZMwEc7oai0jFUocznO08W5L+F24lB18
2SsLxQiZ9MC6d9HbaBQuCZiNva8w5oQptRvw7c/4G2wfSayE7nLvxIU05zAW21dz
C+7Cr3KvQfDg8oU+CAMYpjbgeJ4lgjaiTUul1NewMRwBRcOWsT1C6dQE91WwiWfe
hEYDFTmGL7Qs17tggn+FOjuoz3XPQh950kDJ5CRshKkAQtRkFicf12WmHNjaL+hG
xggTfu4dP6ADv96OzFPvDTfgIl1yjq1/vRDbjjWGydNhs1JCc89j7BKBvku1ltQw
NQAAj87vm6L+UPh7wnxg0WeE+SgP0Q==
=JHaz
-----END PGP SIGNATURE-----

--VbfcI4OLZ4XW0yH2--


--===============9139372326219239417==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9139372326219239417==--

