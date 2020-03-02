Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A02175B66
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 14:17:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/HeJSfYOHS7S98cGrNDd2zSGiEbyU8ryeV2jqHp0eh0=; b=Pedn1G3yGMj54hdx3EHRR2FCq
	P/wlEfDdIDbt3oXW3n2QyWWz27Keq2kqfO4do8NGGO6kJxmN2Lx+E8QUx95hDtsfeD7f26+PhnLLA
	ZB/G6apdWmVd3oXH7t3d/qdvNOrakj6ZWltE3S7nhEZFL1Gbk3vLcj1UH29FL+PbDLVpP6YKL5GIs
	1ye1f/J/Y6Kk3t7y6ioo6cGDlU3FIj75+rF0rjYAazejxVPiLnS9STPrBmOcSLIAtfJKJhb+v9NU/
	jIWyJAKN4nYAZ3nKKHr9eO09uR3D1v/gDtny5NRcS35bWsZtNcphjPwBCBixSd6YRiJzew8r58pGR
	QnSIV8smw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8kwL-0002WD-RG; Mon, 02 Mar 2020 13:16:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8kwF-0002Vi-Dl
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 13:16:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AA9F62F;
 Mon,  2 Mar 2020 05:16:50 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2E1EC3F534;
 Mon,  2 Mar 2020 05:16:50 -0800 (PST)
Date: Mon, 2 Mar 2020 13:16:48 +0000
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v5 16/17] arm64: compile the kernel with ptrauth return
 address signing
Message-ID: <20200302131648.GE4166@sirena.org.uk>
References: <1581931668-11559-1-git-send-email-amit.kachhap@arm.com>
 <1581931668-11559-17-git-send-email-amit.kachhap@arm.com>
 <20200228182337.GK4019108@arrakis.emea.arm.com>
MIME-Version: 1.0
In-Reply-To: <20200228182337.GK4019108@arrakis.emea.arm.com>
X-Cookie: Whistler's mother is off her rocker.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_051651_508621_845B3FBD 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6442202103567026463=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6442202103567026463==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="o0ZfoUVt4BxPQnbU"
Content-Disposition: inline


--o0ZfoUVt4BxPQnbU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Feb 28, 2020 at 06:23:37PM +0000, Catalin Marinas wrote:
> On Mon, Feb 17, 2020 at 02:57:47PM +0530, Amit Daniel Kachhap wrote:

> > +# only to the assembler when clang is selected as a compiler. For the GNU toolchain
> > +# this option is not used.
> > +branch-prot-flags-$(CONFIG_AS_HAS_PAC) += -Wa,-march=armv8.3-a
> > +KBUILD_CFLAGS += $(branch-prot-flags-y)
> > +endif

> Does this work with the clang integrated assembler? AFAIK it ignores the
> -Wa, though it may be fine with the instructions generated by the
> compiler. (while we don't officially support it, we merged patches to
> facilitate it).

If the assembler integrated into the compiler doesn't cope with
instructions emitted by the compiler that seems like something we should
push to get fixed on the compiler side.

--o0ZfoUVt4BxPQnbU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5dBz8ACgkQJNaLcl1U
h9Dxdwf+LdJqTdUT87xU39KaQgDpRPcD0PsjqA/P+Xbw5Kx9axMbvWJrF7aOD8cX
lDYc/KIJijBUbF5g71KBx4l0drmbh8kegKbzIYGNHyefhWI2CD3I4ZwHdNDmVL6t
F6jWCRgV614HDZJ6OIpXkpz/LLHh68MpWeFd0xktGx0Ol+oxIK0v8A4C4tbzx9Bg
yVRP/AahKHhG4cof0WRQ9DX98Eg3oippsHmfBxSsrfcnXKLyREAbFynx5OVX4NNm
navAkjrfbBWzZ4AgpYc9XHCOBT1NDIMY2sTM2bnmQsvGMmp3SF668L3S+RFGFsOu
/kPaG2QdrF6SWW0aF2lrd56MUWaeBw==
=TdO+
-----END PGP SIGNATURE-----

--o0ZfoUVt4BxPQnbU--


--===============6442202103567026463==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6442202103567026463==--

