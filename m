Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7ADD1CF30B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 13:05:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/+M2cDTzwRmE7IHVIeHXkyximo898hkLabPNwcmamMc=; b=i/VJ89X0iS8hG1zTG8GBNo1QS
	6kG65PhgGYl4VReckkrHVlKypDHGnoQOrbRFQRmdrgKQajpqAoiojpqNQHnZROpOVFvj2+vmwdo1S
	OUEnozCPJsPOCZp2pou5ofwv/gj5YGD3kd3/kYx9lWKY04DMITjbTEN2agFy4ugMmibqI+BY7CEsx
	F+3boMTNxXi2ugvT0LIr37Xx0Ezbp/hBUnf5MNTzHnFON/gz5h2Z1cS6DkthMlizuBWJosEHLn6X7
	bRvX8A8ZwmDCneaUs9p9Yab0fR+SQOjk0VV3v06h889W8h4w+GJHsvBehxC+TSiIYhbqdo4avpUk8
	48fPX6LHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYSis-0002or-11; Tue, 12 May 2020 11:05:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYSig-0001wB-HD
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 11:05:07 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 62D52206A3;
 Tue, 12 May 2020 11:05:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589281504;
 bh=FxQbeHzH87z7YqHq+pWRfh+Kr83b9qMjmrmptxIb/1c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nqhA5x5cPAN+u/hfaCwJq6umWE9S2at4LRjSqAOzMEi2SU2my3u00mpGc9WzWqa1L
 Ivu1lIwoV7jmetNKkL41BY24YxO1KxW1rNZwwuJFNgWfA8zF4q44cELlJNiGdGal3g
 +jzErhr9ZFChQGlw9QVE/e6lcIwb99vROp+ddlJ4=
Date: Tue, 12 May 2020 12:05:02 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: bti: Fix support for userspace only BTI
Message-ID: <20200512110502.GC5110@sirena.org.uk>
References: <20200512092155.56931-1-broonie@kernel.org>
 <20200512103908.GB3021@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200512103908.GB3021@willie-the-truck>
X-Cookie: The only perfect science is hind-sight.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_040506_601991_0FA196D4 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8801114428626413909=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8801114428626413909==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Y5rl02BVI9TCfPar"
Content-Disposition: inline


--Y5rl02BVI9TCfPar
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 12, 2020 at 11:39:09AM +0100, Will Deacon wrote:

> Might be worth a comment here in case somebody tries to "clean this up"
> later on!

> > +#ifdef CONFIG_ARM64_BTI_KERNEL
> >  #define PTE_MAYBE_GP		(system_supports_bti() ? PTE_GP : 0)
> > +#else
> > +#define PTE_MAYBE_GP		0
> > +#endif

Sure.

> I also notice we have a funny check in the vdso code:

>   if (IS_ENABLED(CONFIG_ARM64_BTI_KERNEL) && system_supports_bti())

> but why do we care about CONFIG_ARM64_BTI_KERNEL for the vdso pages?

To enable BTI for the vDSO we need the vDSO to be built with BTI
annotations.  Currently the CFLAGS are the same for the vDSO and the
kernel, we could arrange to allow them to differ but since the most
likely reason why the user has userspace but not kernel BTI is that
their compiler isn't suitable it seemed like disproportionate effort
for a most likely small audience.

--Y5rl02BVI9TCfPar
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl66gt0ACgkQJNaLcl1U
h9DfRwf+LeNxyFEN4ORntAZEGtm6+2enfFtbsoklIv95dUOkvv6iuck/nJeowCtF
O3L+7rN6VFR8zIQ03u1g0ddSWw8UEDb9PUa6wRHp0gHOPEDQUld104wwXgx86gNS
2sGSUlsa7pJ03L+VUWtn08y8fm1A8LEMqpj3NSFcpAol4D86Gbu2pCQO94pNfGAY
k95pLMuR/DNTmv7QXDuOruJHyjJlCeV15dcIs39FyKJjRFLedr//thGGe5WmDLpC
w2B04hHmQF6pQuM20tiJLc4yTPCRF2YcJ8+bjauhRFVsBzKb696Et02F2vT/zn4U
dKDtPNnCMWvC2qC83CPqC5E/c7MN3Q==
=6OIl
-----END PGP SIGNATURE-----

--Y5rl02BVI9TCfPar--


--===============8801114428626413909==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8801114428626413909==--

