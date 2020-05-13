Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 164191D18BA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 17:08:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nEyc4mYLKZEgkX5X+zb6r+UpAf709QwKCJLFpzjE2YE=; b=gpk9V2jTPAiUQ8vdtKqhay+uS
	o2M+UU/4VHBdZieKRZf1hxAm16mE9+6771vfhZ0hRQgo4jLeHN3QgnxYHw1xpssEmp509BE5sNZWZ
	LOcUu0dfs5wx0Rehc83A84g3xeSAneCaa2wg7MO3XBAaO36iRB8gMm5c2hlF76g+MPdvxPuPSflmA
	dpOlV2Vh0xR5y4BO36VDwQ6S4vfJhrTHs2c9VdHNBTfQugiv6nwWvy6ncUffdYlBZkF6LUX0n1LtU
	ez1kZyq49KzI/bqFqkqfB7S0s/DM3newX+EhFxOoYvAxvpPZk8RkYUsIXyBJdV6I4eac57P9QXCXX
	iQMZMV1Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYszr-0006L3-50; Wed, 13 May 2020 15:08:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYszi-0006KR-K6
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 15:08:27 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 41F9820659;
 Wed, 13 May 2020 15:08:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589382505;
 bh=qYiDBXXkCe4vI5FEdyOm67jN0dl6hJoRIgo4igWvej8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lLF82QDRLrXLuo9v+UtXZXJyf8MaIWzzQyW4A/Q6iKZ2Ws5UH9aNuo2NqrLGGGcgb
 b7IjbBtVodL+KRJH36NUAWl1agEK/u3VlqH3iRgfc1tDPk3DZzWRrFAQnE0u2NZtfc
 GR2jkBVhuqeQNgu9yliw71YMk+WbK5SKnw7kf6VY=
Date: Wed, 13 May 2020 16:08:22 +0100
From: Mark Brown <broonie@kernel.org>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH] arm64: bti: Fix support for userspace only BTI
Message-ID: <20200513150822.GK4803@sirena.org.uk>
References: <20200512092155.56931-1-broonie@kernel.org>
 <20200512103908.GB3021@willie-the-truck>
 <20200512110502.GC5110@sirena.org.uk>
 <20200513144624.GR21779@arm.com>
MIME-Version: 1.0
In-Reply-To: <20200513144624.GR21779@arm.com>
X-Cookie: Long life is in store for you.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_080826_684145_4A5E39F9 
X-CRM114-Status: GOOD (  19.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2879609671519135085=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2879609671519135085==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kswDJesP0akhmDn8"
Content-Disposition: inline


--kswDJesP0akhmDn8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 13, 2020 at 03:46:25PM +0100, Dave Martin wrote:
> On Tue, May 12, 2020 at 12:05:02PM +0100, Mark Brown wrote:

> > To enable BTI for the vDSO we need the vDSO to be built with BTI
> > annotations.  Currently the CFLAGS are the same for the vDSO and the
> > kernel, we could arrange to allow them to differ but since the most
> > likely reason why the user has userspace but not kernel BTI is that
> > their compiler isn't suitable it seemed like disproportionate effort
> > for a most likely small audience.

> The situation where the user is stuck on a binary vendor kernel built
> using obsolete or wrongly configured tools doesn't sound that unlikely
> to me.

They'd need to be stuck on a binary vendor kernel which is sufficiently
new to have BTI support but using toolchains that are sufficiently old
to be unable to BTI the kernel (if their vendor went out of their way to
disable BTI then that's another issue).  My guess is that people will
tend to update major versions of these at relatively similar times, and
hopefully if people are going to the trouble of backporting BTI they'll
also grab the toolchain bits since it's substantially more useful if you
can compile userspace.

> When the vdso was all asm, we could easily have solved this by manually
> annotating it ... I guess that's the price of progress, unless anyone
> has a bright idea :/

Which is the other bit - if we don't trust the toolchain to build the
kernel then we probably ought to have concerns about the C bits of the
vDSO as well.  Even if they're fine now some future vDSO change could
cause this to explode.

--kswDJesP0akhmDn8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl68DWYACgkQJNaLcl1U
h9DjSAf/QBbzWjy3aoPYOF95Xw88AYwbEioRUbrRw6Z6r5pGsMkG4coCoojhQvvp
sSCebYBZJS8YTslAKLGWSItyJF7mMnz90+eREBsKFfUIArEQrguj8YTlx7xywkD8
RVi15fu8ZkfYPVcdpWgJq4Q0f6j9MHFugcsa6mRHo2djwVNz7i7ZDR8CFxKBmTj/
LQa8mDHYORLqmSH+m59LVKSGKO87EYUI+T//VRHPa5LW7OsaKIceKdlHzfBCpxiM
pENeAxdrPeoInbClamPHh4w5qVDrSfeowMqUgpQ/STp/NTCHxb+5mBRO0tRH6H54
s3+Wj/RhHu8rVKEVHP9Y5iMak+gcJA==
=9wOd
-----END PGP SIGNATURE-----

--kswDJesP0akhmDn8--


--===============2879609671519135085==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2879609671519135085==--

