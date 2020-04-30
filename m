Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F24B71C03D5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 19:23:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cfVIMkO2K7dnqbxHKF8bp4jLP4ZO0AR7QDsgNVWSY7A=; b=s8Vau3WTKv765/Q+41OLW2LGm
	oIeXzxUGisqloeGcuC11VSLJZFnyIhw+iSlzFj4CdN5xbaH8zx7hQ74nl7f+3GunDMEiVi4QU22/G
	WfXmEPYIEuJM31/ZGL9kDy+yoYf7+HIWVr6MsSfCw8MJj16u8XOVmAjUNhTZDDRcDAAOv3NjXLdxD
	gsKNV3aUZBAqqiTnIhP+pZkRzfrHRf+OYm1EFbo1f0ULSmAESBhtvo15g8vbqFJOfz5cs59R6ycs4
	TZbCbeNXE/pUVPRVAjlcUW+Ly4XV6itUR6Mtq8ABLIfIQ40ARQ48HBtFJMXK5fOyN60jk2NezHfo/
	98b7ysokQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUCuB-00072o-FE; Thu, 30 Apr 2020 17:23:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUCu1-00071w-Ie
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 17:23:14 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B20CC20787;
 Thu, 30 Apr 2020 17:23:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588267393;
 bh=cB+rnSreN4Y7+e/GucPEZjqWYPOPdWxjp1+u60xntcE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kmp+lkJ1/HD6PLF7mvfloclXCTRsd2jPdU8AMfwA4d51vTl/rt54Z0muIrTZ5xjUK
 R8m8nuweMcy21wN3MTxNZu32N+vInR/pQE86WannwqZMuv5W/19RYzN8T6N9ORpagI
 yF3xSnIwNm+Ie2xEEtBIcMm2Vitaqq+z4yP2tmis=
Date: Thu, 30 Apr 2020 18:23:10 +0100
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v2 00/10] arm64: BTI kernel and vDSO support
Message-ID: <20200430172310.GH4633@sirena.org.uk>
References: <20200429211641.9279-1-broonie@kernel.org>
 <20200430171842.GL2717@gaia>
MIME-Version: 1.0
In-Reply-To: <20200430171842.GL2717@gaia>
X-Cookie: Sign here without admitting guilt.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_102313_635778_B6AD831B 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Kees Cook <keescook@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0801327707833591194=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0801327707833591194==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bygAmIonOAIqBxQB"
Content-Disposition: inline


--bygAmIonOAIqBxQB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Apr 30, 2020 at 06:18:43PM +0100, Catalin Marinas wrote:
> On Wed, Apr 29, 2020 at 10:16:31PM +0100, Mark Brown wrote:

> > v2:
> >  - Enable support for building with GCC version 10 and later, a fix
> >    for BTI code generation is being backported to GCC 9 but is not yet
> >    available.

> Do you have a link to a GCC commit or bugzilla? (for future reference,
> no need to update the patch).

I found these:

	https://gcc.gnu.org/bugzilla/show_bug.cgi?id=94697
	https://gcc.gnu.org/pipermail/gcc-patches/2020-April/544429.html

> The series looks fine to me.

> Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

Thanks.

--bygAmIonOAIqBxQB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6rCX0ACgkQJNaLcl1U
h9C3Uwf6Ag5yX8HQWx5TIQTGE8bxyBgGJqz/uMECRQHte9lbDCZy+zVmiXk70C1n
XUoW4yRGHhcnu4RSm9W0pxw7edjPvA/5skgspNp7mTAet8XZkJUpSrGmc00ubHqI
tL5+4vixJMARI/KTNEHmvU9ojih9e2rZKAwiA/9rKhVWv9k1Ju9fmbGrP6k/iG5O
2Ysw+S6EKyKu/JzDVfKOyY0fc6+P4R1I15nT85H+ph51utOaH9kkrzKIRJWE2trf
17qz5lg2j+tlfkpfvdFayYm1CQ9NREAg+TYAHGMx0ydXPSfmg0VGSNOEjpHAuTfv
m0/94RUzXOe/5B3Ao0ECCveuFCxJmg==
=Hocm
-----END PGP SIGNATURE-----

--bygAmIonOAIqBxQB--


--===============0801327707833591194==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0801327707833591194==--

