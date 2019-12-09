Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B97F117153
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 17:16:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PVu7fYYctyaPb1ey8yiEo+pizGEg2nHMx+jIkJrd5TU=; b=tovkIJiUfoJb7F1Kdj1OdelRd
	t+f5q7UIdYcDYesp6QzNsX3rWIIQbgzvsIW9OMrhx0AvxZCt29+eWzw1fSbyqILcvub0pmnK1Fjjh
	g7Fmh6ohz0pdQZxtzrGika4MIphoakfovVizfTEbZv3wvEGWZDOok0ck3oyxtMEkcQQvYomM4mIW6
	TpcN/AKO2SuABIbYsKDf4G3D+E2HLXLhsXFEP1rcodCRaMFxyremucWmSEY/jw4t1KMxffDL/IRBD
	ayhKaRPsVV0xv4JmS5+O4TdSooIbpsyz7549+ZC1/bbDRrPauV1CI3QPjZ7Y8J/LAeJMlss/AQZRe
	RWgbTENNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieLi4-0000Jk-LE; Mon, 09 Dec 2019 16:16:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieLgw-0007hS-7p
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 16:15:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ABD781FB;
 Mon,  9 Dec 2019 08:15:19 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 23FCE3F718;
 Mon,  9 Dec 2019 08:15:18 -0800 (PST)
Date: Mon, 9 Dec 2019 16:15:17 +0000
From: Mark Brown <broonie@kernel.org>
To: Richard Henderson <richard.henderson@linaro.org>
Subject: Re: [PATCH v7] arm64: Implement archrandom.h for ARMv8.5-RNG
Message-ID: <20191209161517.GB5483@sirena.org.uk>
References: <20191114113932.26186-1-richard.henderson@linaro.org>
 <20191114142512.GC37865@lakrids.cambridge.arm.com>
 <3b1d5f2a-5a8d-0c33-176a-f1c35b8356de@linaro.org>
MIME-Version: 1.0
In-Reply-To: <3b1d5f2a-5a8d-0c33-176a-f1c35b8356de@linaro.org>
X-Cookie: We read to say that we have read.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_081523_794041_B77CE1A8 
X-CRM114-Status: GOOD (  18.64  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, ard.biesheuvel@linaro.org
Content-Type: multipart/mixed; boundary="===============8988537889145914821=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8988537889145914821==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="K8nIJk4ghYZn606h"
Content-Disposition: inline


--K8nIJk4ghYZn606h
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Nov 14, 2019 at 07:11:29PM +0100, Richard Henderson wrote:
> On 11/14/19 3:25 PM, Mark Rutland wrote:

> > As I asked previously, please separate the common case and the boot-cpu
> > init-time case into separate functions.

> Ok, beyond just making arch_get_random_seed_long be a function pointer, how?

> I honestly don't understand how what you want is different from what's here.

I believe that what Mark is saying when he says you should change the
arch hooks is that you should change the interface between the core code
and the architecture code to separate the runtime and early init
interfaces with the goal of making it clear the separation between the
two.

> > Any boot-time seeding should be in a separate function that external
> > callers cannot invoke at runtime. Either have an arch function that the
> > common random code calls at init time on the boot CPU, or have some
> > arch_add_foo_entropy() function that the arm64 code can call somewhere
> > around setup_arch().

> What "external callers" are you talking about?

Again Mark can correct me if I'm wrong here but anything that isn't
the arch code or the core random code.

> As for arch_add_boot_entropy() or whatnot... you're now you're asking for
> non-trivial changes to the common drivers/char/random.c code.  I'm not keen on
> designing such a thing when I really don't know what the requirements are.  In
> particular, how it would differ from what I have.

The biggest issue here is one of reviewability and maintainability
around early use of the capabilities code.  Without being really up to
speed on those interfaces it can be hard to tell what conditions are
true when and what interfaces are safe to use at any given point in boot
which makes things harder to work with.  This is especially true when we
start to mix in things like preemption disables which also need a lot of
attention.  Avoiding mixing code that needs to run in both init and
normal runtime contexts in the same function makes things easier to
understand.

Looking briefly at the random code you may find that the existing
add_device_randomness() is already close to the arch_add_foo_entropy()
suggested by Mark if not actually good enough, data injected with that
is not going to be credited as entropy but it will feed into the pool.

--K8nIJk4ghYZn606h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEyBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3ucxQACgkQJNaLcl1U
h9Abygf49pMSCQEuwmazZxHMTjuxhxEpfwh8KxNQDPNroTdxIPUxHHL+ifeGMh1y
StafJtieoAWSeUWc/G+A44wB6BITr+nNVu9NlU2/l0wLULpOznjn+X51InqQKKdq
mLNtHpMDE0TsPwNCX+vk78eYCI2FO4Vje5n0MghcQLuYFCsdkgmQ/jQJLsdku3/f
zLbC0Hs3/yhTRW386Ypk9jXOBNkSFAUuL0nKXBFBUn7CTrNRzHM6Zeo4RJHBq2Bq
bG4IjYTJattDDOWf17DiiiTRYP0vPu+DtBYsETZzaTm2VRotPOKn0OP98kDfdHlk
ONtKIWf8ArfiV69l7ix4sd5DTRzW
=Lyx1
-----END PGP SIGNATURE-----

--K8nIJk4ghYZn606h--


--===============8988537889145914821==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8988537889145914821==--

