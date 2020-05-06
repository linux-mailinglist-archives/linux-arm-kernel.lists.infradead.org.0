Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 812B61C749A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 17:26:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sH0N55KhAOElE5u2SGijbDCahlPGH54dxeb4TH32c3I=; b=WNk6yttEFUZbURPZJIXHl+jYH
	HIMeoB6AAJ60+zSJwn83wgZaC/0fX7jFj2UjXbDIAFyjzxud3ravs3TSBQpjO8Yjojjc73o967v2Z
	tVr6jtI41v8bQknlEEZ8b9DyJEVdRC2JiIAYl5JpwSO2HEkZL4JLYL1Xly+A1xFflXYbiv4+qMQoS
	LwSb388wY+A0Kij9D0pRcIMY3GBtZRrDzylsHSDDHVWR0jUEuVtSC0/y3VhqmQrAizbriVjXkNvz6
	Nc8g5zvYEoXJEHbm/XOc1a3H6Rqqlb8wZVsLdXdjoy+yivQYqfwgBMUEe5PjreU6X/LRS5KZSzBq4
	GsN+IsuCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWLwb-0008Ih-9y; Wed, 06 May 2020 15:26:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWLvn-0007Fg-9y
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 15:25:56 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5C6B520B1F;
 Wed,  6 May 2020 15:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588778754;
 bh=xHwrBerwZqLfySFjt+QPKy5Tk4Ap94aUG2eyqtSVfpQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sXUi0UdMWd6k4sY4Pg2eppAcB7cYqOmqtS9z0rVAngQpfVZF6VDbCZqM+hJW50oiV
 fmfhz5BKXlryitPdXZfc1qU2MhLqyd/FcMXkI5KZBn7JHZlf060dlLha+hMJB3DPQK
 L64NbAknoDJQjgZ/Tw5sCZ9zbOOkuygmInfCdNLI=
Date: Wed, 6 May 2020 16:25:52 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2 02/10] arm64: asm: Override SYM_FUNC_START when
 building the kernel with BTI
Message-ID: <20200506152552.GE5299@sirena.org.uk>
References: <20200429211641.9279-3-broonie@kernel.org>
 <20200505145642.GA24239@willie-the-truck>
 <20200505151806.GG5377@sirena.org.uk>
 <20200505160852.GF24239@willie-the-truck>
 <20200505172100.GI5377@sirena.org.uk>
 <20200506071025.GA7021@willie-the-truck>
 <20200506104152.GA5299@sirena.org.uk>
 <20200506105006.GC8043@willie-the-truck>
 <20200506134021.GU30377@arm.com>
 <20200506144543.GB12919@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200506144543.GB12919@willie-the-truck>
X-Cookie: Not recommended for children.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_082555_386097_3816CA64 
X-CRM114-Status: GOOD (  19.70  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org,
 Kees Cook <keescook@chromium.org>
Content-Type: multipart/mixed; boundary="===============7705409500818422149=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7705409500818422149==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+SfteS7bOf3dGlBC"
Content-Disposition: inline


--+SfteS7bOf3dGlBC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 06, 2020 at 03:45:44PM +0100, Will Deacon wrote:
> On Wed, May 06, 2020 at 02:40:21PM +0100, Dave Martin wrote:

> > I really don't think we should fudge this: if the linker doesn't think
> > the inputs are BTI-enabled then the compiler or linker is broken, or
> > there's a bug in the kernel source tree.

> > The checking done by the toolchain is important -- if we want to
> > suppress it, we should have an override option than depends on BROKEN
> > (because yes, you're explicitly risking a broken kernel if you do this).

> > The fact that all gcc and clang both screwed this up in various ways at
> > some point is not our fault, or our problem, providing that fixes are
> > available...

> > Am I being too paranoid?

That's my position too, we want the warning - I think if we're going to
do any handling it should either be to prevent use of kernel BTI
entirely or to do what Will was originally suggesting and print some
explanatory text somewhere.  My inclination is that the former is safer
and fits more with the general architecture approach to this sort of
thing.

> I don't think so, but I'm just looking for an answer to "What do we do if
> people start running into this warning?". As it stands, it sounds like it's
> unlikely that they will, but if they do then we're going to have to hack
> something to make it go away.

It's possible that this e-mail thread showing up in searches might well
answer people's questions anyway (it is going to be one of the few hits
for the warning ATM).  How about we deal with this when we get to it, or
at least as a followup?

--+SfteS7bOf3dGlBC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6y1v8ACgkQJNaLcl1U
h9Bq7gf/Y2+FqWGD72Eu8XlgSD+Pnr+Mk62mUPfGef4scpOaySaBANUumGXkcKsl
4UHusQQaeof58eH0Glap0vXD9mAYtiSyb9KKOeMiSbFciMuOWkxNAGT+HkzfnI5F
PJXGBFrzGneiErleMd+KIpRVBdJvr2sEwnQFLvljWPCmul+eE1WL0j/37jUwDF+d
47s1KPiLHuNHDQtUJZRgy/Xc+4S4tKY75Z6xuAI3tOthUFcWxOB5p2ud2e0/UR6W
bTQAb4r1TKIrLhB1X5HLN5pZqCyHLAVOfu0oe8xQymmjA5JJRl46npYI9orGC3Yk
UZV/3HBIaIkT2wCVv/k1hyVNp9JkyQ==
=/FWJ
-----END PGP SIGNATURE-----

--+SfteS7bOf3dGlBC--


--===============7705409500818422149==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7705409500818422149==--

