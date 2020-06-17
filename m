Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2A51FD46D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 20:25:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=phrKKWUhuYjnP6x0A4y3Z/Q+vkAVX5gg3Q3ZQXKVPkA=; b=MjLujOTIkbEP0iB290WKESwgZ
	gOudpUViOO+FHHF4WTatw5yfTL7rVa3CXXv7A4fGrOTMgx0dBZfxc/iJekW7abk/d+CA+Plc2D89c
	P2iFNJPzwL58H63E5iPLYjnF3gMe3tGofhuZUYtIn+xg6/ebfuQRInsUlqIyv9AzShWZjiMwb7ViA
	ACLoXmfN3tlj6MofHq/yVOV5qHEmxkgvQbm1jOZFbYCC18lNIpyuLjSNJpZkpdDKyQt0P3V8Spujp
	SpYbUKx9fHNrQkqcLziH38nW90GbsKm8LQHMbYUK+lEKx7RLR0+PZAY8wB+PicLyXRl/BA/LOBFAb
	3xGqcS+gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlckj-0001QP-I4; Wed, 17 Jun 2020 18:25:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlckY-0001Pg-CI
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 18:25:27 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 462BE212CC;
 Wed, 17 Jun 2020 18:25:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592418325;
 bh=WZda4kYr0529kjaqNaQlgiJAedbh8LAdEUJtqCtoj94=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=V5BIrb0pMGZyKunRGhfWZE7MYIsxeffOG7QJG+vnSUO4W4PlR2PScXfaxMoCuWzRg
 ovMQYV2fSguJDpytj3UVLdf4J7XVBIGRI9gb1jxqvwj+kXOpNBXxgeEje48yDzN9la
 6NECF2PUm8JZLvw2podgKOr/qg85OJptkz77j8GM=
Date: Wed, 17 Jun 2020 19:25:23 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH 0/5] arm64: vdso: getcpu() support
Message-ID: <20200617182523.GH4613@sirena.org.uk>
References: <20200605131131.16491-1-broonie@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200605131131.16491-1-broonie@kernel.org>
X-Cookie: This fortune is false.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_112526_432563_727411F1 
X-CRM114-Status: GOOD (  18.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrei Vagin <avagin@gmail.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1022421444478966536=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1022421444478966536==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ISKrrfpKsPiF35CV"
Content-Disposition: inline


--ISKrrfpKsPiF35CV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jun 05, 2020 at 02:11:26PM +0100, Mark Brown wrote:

> It is questionable if something TPIDRRO_EL0 based is worthwhile at all
> on current kernels, since v4.18 we have had support for restartable
> sequences which can be used to provide a sched_getcpu() implementation
> with generally better performance than the vDSO approach on
> architectures which have that[1].  Work is ongoing to implement this for
> glibc:

...

> This is currently not compatible with KPTI due to what Will suggests is
> a misunderstanding on my part about the use of TPIDRRO_EL0 by the KPTI
> trampoline, since this posting is mainly for discussion of the approach
> as a whole and Will only just mentioned this that's not been addressed
> here.

So, I've been looking into this.  While it is true that we can do the
reinitialization I'm not sure that it's sensible to add this to what's
already a hot path where we're taking a substantial overhead for KPTI.
Given that once RSEQ sched_getcpu() support is merged into glibc (and
hopefully also other libcs) the majority of users will use that rather
than a vDSO implementation and the overwhelming impact will be overhead
until systems with E0PD start to be widely deployed which doesn't seem
great.

If we could find another scratch register for the trampoline that'd be
fine but otherwise I'm really questioning the value.  I've looked and
didn't see anything but it's entirely possible I'm missing something.
Otherwise do people think this is an idea worth pursuing, or should we
just suggest that people use RSEQ instead?

--ISKrrfpKsPiF35CV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7qYBIACgkQJNaLcl1U
h9De0Af+NwmNahgOGd1BA78Hj0RzEdjzjdPyVnrTg2fhB4Y3mWUZm4yGnkWRpRZp
AYr5taQhbqkvcOIWWTlzRlAR+7BDRFr+5pr0k5cywIUwNRlnakqZB5kXlKkjnNvc
N8LecX2nLCcWRB9rTwRUrFFdmEbhPzT9p7M+gDWF1j07w2HFHuwRhQ1CkvnVE++3
VqFT/7tfT5CyMdBUVMvtv4w5aO1K674qBWFElTRi8pVMyeYt1UFqdCjFvZRqmpJA
SeGptTPAHh0dxRJwieFW0Dk6juJjCQTXldaEJnT+dT2NcQKI3UtqVdzK6CUe7YVe
5R51YsLWqoyxGmm9xkF6C8WF7pzaCw==
=QCxZ
-----END PGP SIGNATURE-----

--ISKrrfpKsPiF35CV--


--===============1022421444478966536==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1022421444478966536==--

