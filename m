Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DC8B1C9564
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 17:49:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pyutyTlv7xJlLGOgR9FqJVThDPFg32Df3DT17RIAkO8=; b=NPM/uVYnyeZ0QeU/7a846felG
	U8DYjzv4iFL/QIdiLpUYA227XxogXAIyZ1gr1i9sVk8AokugYTmqGzIbionzcK6qWhM15+oi2w3X+
	i0bIzmqlPDMM7x66ONAityN0Mk64yfkWLhsNBOXbgOmNJ04HayvVNARqNkPZOZTttey5YSuHg8Mhl
	BDqnDvsprjzC/xIcDg366G/R4gABRv5u+YlmlbO2a+1Pu5Sw1r12KYL0ETYsDbZRr3MF8mzt4J4Uc
	uhPL2VneU4vjwxK+9CTFxSJONmjOSnazHj6jojDOXTclbd115T0Xmq6qMxjhT4CmpVbdA/Yrl76pN
	AgyHb92pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWill-0003p3-ST; Thu, 07 May 2020 15:49:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWild-0003oX-Ph
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 15:48:59 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E056320659;
 Thu,  7 May 2020 15:48:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588866537;
 bh=3onI+WG5EXP2XiJAcWod89vXkAIvYlECrP3YejYM8mM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ozOlbadDmc0RTnA15nAvajIDGdLNzUE3HtWszMfRkpAomuVMCzMSVnOPd86MXT8Ni
 mCObDntaBzjjizWEDZ0OUO21cqMcML1wBSm14B5WS7gpdCgz1TLQLhvqTH9YRyuYxO
 3CiT9K4GgBj+gP1Tox3hSw6Fm92MIVZnei88mDYA=
Date: Thu, 7 May 2020 16:48:54 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v3 00/11] arm64: BTI kernel and vDSO support
Message-ID: <20200507154854.GC6183@sirena.org.uk>
References: <20200506195138.22086-1-broonie@kernel.org>
 <20200507143332.GB1422@willie-the-truck>
 <20200507143547.GC1422@willie-the-truck>
 <20200507145901.GA1938@willie-the-truck>
 <20200507150905.GB6183@sirena.org.uk>
 <20200507151848.GA2294@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200507151848.GA2294@willie-the-truck>
X-Cookie: 1 + 1 = 3, for large values of 1.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_084857_855589_4B88AE88 
X-CRM114-Status: GOOD (  10.56  )
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
Content-Type: multipart/mixed; boundary="===============1005121468436321123=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1005121468436321123==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="s9fJI615cBHmzTOP"
Content-Disposition: inline


--s9fJI615cBHmzTOP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 07, 2020 at 04:18:48PM +0100, Will Deacon wrote:
> On Thu, May 07, 2020 at 04:09:06PM +0100, Mark Brown wrote:

> > Can you share a .config?

> allmodconfig

Right, I'm seeing it here now - it's when CONFIG_GCOV_KERNEL is enabled
and happens for clang-10 as well but not a GCC 10 prerelease build.
Adding

	depends !(CC_IS_CLANG && GCOV_KERNEL)

avoids the warning but obviously we should actually fix the issue.

--s9fJI615cBHmzTOP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl60LeYACgkQJNaLcl1U
h9BU+Af/TXcKSnX8zGIFcb5/0FvYcFwt+LUC+3auGS5XCB9p5JJpb0nNg8O6QVKp
+GNMf5K5grHeyA2+GeqKA4Zwr4eXmhcgwWr/g4RxjQrx8j6T25OLhK3Nq6XmoRfL
jxsJfPdftjelOSSARlzlQ27a3+44bzkpVrBUyZN2zG7OnuHXuDlECqTAk0mDb0pM
k5/kI38kLIhpnCCvpGxTVGTRlKqoo0DxwFzEyVkJGkRt+TFNsJpl6fZy6eJdZ3EK
igco4oLqX59IbH6QJ4pSy1sHwOcdfW0PCXQ9/c76BK2hWl8VMqMXg6Ixc9EEKJAo
cI6pBEYWj0tvp6F4a6GNE10/Q2ehqQ==
=3Vtl
-----END PGP SIGNATURE-----

--s9fJI615cBHmzTOP--


--===============1005121468436321123==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1005121468436321123==--

