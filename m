Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B33B91926BF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 12:07:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Yl2JZZ5SWF+30uN6ZbPKi2PIkbDTrzX/Q9DdQirlSvo=; b=kKMldqkbvHb3qE9s/2qL2tlQX
	hFYQMPupqOauBJSK+EiPlYNCZpw5EtNYSdunIXrvTtiSmOtWcWK9p9gTK25y/LssJ9/62TyGRNp+o
	NnR1/wEbuFJ5QFqdGoEzCrGKfsCRgDiXU/Qd0J1fSL6M/Rgl1+esDk+OznVus1/rR8y+Q3dN28fTq
	5HMsGMrmVh2IOSEfj8XmwCh1+eJpmAbZ/xjQUAx8OABChffwA7GuvKGUdsoNhK3e3S6HwiTc944NJ
	XBZne8NhcPiwh/1V+/Es+OVWvg1tRc3Dip9RdWVgtOSyo3+32v/H3Ar/ZNqHDFGbTl4DtkfmrnTXk
	TJExlmDUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH3sX-0003Tj-5p; Wed, 25 Mar 2020 11:07:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH3sM-0003TH-7X
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 11:07:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 573AC31B;
 Wed, 25 Mar 2020 04:07:09 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D0CEC3F71F;
 Wed, 25 Mar 2020 04:07:08 -0700 (PDT)
Date: Wed, 25 Mar 2020 11:07:07 +0000
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH 1/2] arm64: lib: Use .arch_extension
Message-ID: <20200325110707.GA4346@sirena.org.uk>
References: <20200323191807.3864-1-broonie@kernel.org>
 <CAKv+Gu_UW6KV4My9GSDCHmvqm44Krg+B4efjK_ta2MQ+A2cJNg@mail.gmail.com>
 <20200324185847.GJ7039@sirena.org.uk>
 <CAKv+Gu-wPyPufNah5FJ2VrKA5MUNZTDpJrWu+1oXEmrQwqDDdQ@mail.gmail.com>
 <20200325110504.GK3901@mbp>
MIME-Version: 1.0
In-Reply-To: <20200325110504.GK3901@mbp>
X-Cookie: Many are called, few volunteer.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_040710_313859_C5EE56D5 
X-CRM114-Status: GOOD (  10.01  )
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
Cc: Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Eric Biggers <ebiggers@google.com>
Content-Type: multipart/mixed; boundary="===============5914482804427421230=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5914482804427421230==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="d6Gm4EdcadzBjdND"
Content-Disposition: inline


--d6Gm4EdcadzBjdND
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Mar 25, 2020 at 11:05:04AM +0000, Catalin Marinas wrote:

> I'll drop this patch for now but we should try to find a solution
> because of the overriding effect of .arch. In self-contained .S files
> (like crypto) that's not an issue but once we start adding more
> architecture feature in a single file, things will get more complicated.

It's fine I think, you can open code .arch_extension in the assembler.

--d6Gm4EdcadzBjdND
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl57O1cACgkQJNaLcl1U
h9BIeQf9FsiXE4MKC2pm+LzlOU0YItwxTzpsvSQ7ZWzb/GOb0l+LF2RyjqhxVjg0
d8TGT9z5Lo9XfaoAht3RGLboRktOSnEjFVdd90NNCNXT4yt16wiNh3YVowPcWACa
uwgkJGVSoPUgQ18A7sbXs5lkoIlt0+8VlCYWZ1fR1XBku0QqKLR4Kw1r3ddIYnp/
U3z/mqb7446Vjt1ZmFsprW/JOby0HWPMdsVukKFRHH6KsYPhFZP7eaKqrEy4PMiM
RWwYFn6pPst2aAKhUDyo+YojGqZppwo2hQyq4SLhM0DVDziAe8fh4VtLb6CjfOzx
hwEe/fhJZptDHI4FxR18tlbNvdgSFA==
=L90x
-----END PGP SIGNATURE-----

--d6Gm4EdcadzBjdND--


--===============5914482804427421230==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5914482804427421230==--

