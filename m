Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64064192787
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 12:50:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+JkgoZCBmv77qfR8JiKYa96XKZFwrI05hb8VduhpgD4=; b=cNlGjgA9udJwhuWalc4i9izUW
	qtsRQne4p4iVdOhi9qo6yXG9RtdqE1ZyDecNJsAue38U3GZqFlaeSCzCipb7c/2Q+jSg0sQ1J6JUf
	6eqX+pqiRipsD46PAXW/L1P0K592u7791feb3iPk8lRuues/XxgXhj+GJW73sevhJ6H4Ilh747nhY
	nR/JFkoS7SV72Kt1XcJ/sZ2NI28qzI8kD1IMy0HOZBJH0LrS5EiKC0o6l/6hkalvGBFTK98AoDHPk
	U5zcMBH+CWh7RJ3hurnCN+01tFxgbJW3qRTz3JaDrzLiZL3QsthTjoQWcufqEjUT79AJW0v17PLxZ
	VD0mr2r7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH4Yc-0006YN-9f; Wed, 25 Mar 2020 11:50:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH4YT-0006Y1-KH
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 11:50:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E24F531B;
 Wed, 25 Mar 2020 04:50:40 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6749E3F71F;
 Wed, 25 Mar 2020 04:50:40 -0700 (PDT)
Date: Wed, 25 Mar 2020 11:50:38 +0000
From: Mark Brown <broonie@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH 0/3] arm64: Open code .arch_extension
Message-ID: <20200325115038.GD4346@sirena.org.uk>
References: <20200325114110.23491-1-broonie@kernel.org>
 <CAMj1kXH=g5N4ZtnZeX5N8hf9cnWVam4Htnov6qAmQwD58Wp73Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMj1kXH=g5N4ZtnZeX5N8hf9cnWVam4Htnov6qAmQwD58Wp73Q@mail.gmail.com>
X-Cookie: Many are called, few volunteer.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_045041_709595_582E5A10 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Eric Biggers <ebiggers@google.com>
Content-Type: multipart/mixed; boundary="===============0521861146905873468=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0521861146905873468==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="q9KOos5vDmpwPx9o"
Content-Disposition: inline


--q9KOos5vDmpwPx9o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Mar 25, 2020 at 12:45:11PM +0100, Ard Biesheuvel wrote:

> I don't think this is the right fix. What is wrong with keeping these
> .cpu and .arch directives in the .S files, and simply make
> SYM_FUNC_START() expand to something that includes .arch_extension pac
> or .arch_extension bti when needed? That way, we only use
> .arch_extension when we know the assembler supports it (given that
> .arch_extension support itself should predate BTI or PAC support in
> GAS or Clang)

Since BTI is a mandatory feature of v8.5 there is no BTI arch_extension,
you can only enable it by moving the base architecture to v8.5.  You'd
need to use .arch and that feels likely to find us sharp edges to run
into.

--q9KOos5vDmpwPx9o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl57RY4ACgkQJNaLcl1U
h9B4nAf/b0wrr0PHBnZoPNzDbKQzFypQ+2NB2THqSpE2/cZCN52CnW3RN6ggAwoA
vNECz/I+gVLH4zOCZpMmjORtGpsmprWMUDiRg3Vx4HrxGq603RDDSBFI798+FXP6
C3CsnSt7pq1V4/zY3o85ySAG9KkrY4/xqKkorJiMs7p8P88lTabA/+VFab3Mte+k
iOYR1QljlMw6Dpq7wvlADO8TZnzYN1JTeWQWSZar2M2rmh+DJ92EYDo0ucOb279I
tBZUOVdwrClveUi3fpAFX050nMHKh7x20S+Guu9u8EnX5bGRS/CoXh2GsJD/dAJk
6ZIgAoRDtg1VMIH3eWV5H3U7/sA4iA==
=paWp
-----END PGP SIGNATURE-----

--q9KOos5vDmpwPx9o--


--===============0521861146905873468==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0521861146905873468==--

