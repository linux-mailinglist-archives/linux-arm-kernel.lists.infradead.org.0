Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42EC8135E2E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:24:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DnNC92lEyiMOcGD1AumzIX8eNMn/sMud8xPC/pnaBjo=; b=A2N8lKDPP9Le+rbwWVVRXhrCt
	8D4KDxdgkLibOOlIBkdNt0YsnlqsLCieom6eivaFL72we0/aiNVzAG4yiI0yPasTstWdLOGSSBVwH
	aTQg3BlDhE7nFWt9ZDwCxVYsZWCqI30qsSiZUk/8bRYAC/QsPCXd8a4id7aXZ9xUv3OSfj2/L/M5a
	/5h2D8SpAJrriAG0KW1Su2jT0OAKwYZNylGwwcagANnC1wX2qC4s1GigCRml7TsavvBthQ9brAe78
	BIW6AIue/Y/lrZqBPFgWio4Z1mihGZMyBNNXYDqu3htPBkC/6RFpz1AEFS6wfRjN4CYHL936HYbv2
	LLjScl5jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipabR-0001wX-Nx; Thu, 09 Jan 2020 16:24:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaWU-0004vY-O2
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:19:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 445841FB;
 Thu,  9 Jan 2020 08:19:00 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C03033F703;
 Thu,  9 Jan 2020 08:18:59 -0800 (PST)
Date: Thu, 9 Jan 2020 16:18:58 +0000
From: Mark Brown <broonie@kernel.org>
To: Richard Henderson <richard.henderson@linaro.org>
Subject: Re: [PATCH v9 2/3] arm64: random: Add data to pool from setup_arch()
Message-ID: <20200109161858.GA3702@sirena.org.uk>
References: <20200108194133.44110-1-broonie@kernel.org>
 <20200108194133.44110-3-broonie@kernel.org>
 <1639b993-d056-5e32-b841-436d42f60df4@linaro.org>
MIME-Version: 1.0
In-Reply-To: <1639b993-d056-5e32-b841-436d42f60df4@linaro.org>
X-Cookie: Killing turkeys causes winter.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_081902_876737_60E45C89 
X-CRM114-Status: GOOD (  20.46  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: multipart/mixed; boundary="===============5047336238347507874=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5047336238347507874==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cNdxnHkX5QqsyA0e"
Content-Disposition: inline


--cNdxnHkX5QqsyA0e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jan 09, 2020 at 08:33:25AM +1100, Richard Henderson wrote:
> On 1/9/20 6:41 AM, Mark Brown wrote:

> > +	for (i = 0; i < 16; i++)
> > +		if (__arm64_rndr(&val))
> > +			add_device_randomness(&val, sizeof(val));
> > +}

> This is not nearly the same thing as what crng_initialize does.  In particular,
> it's not going to advance crng_init at all.

That's right, but I think that's good enough to get us going here.  It
will add data into the pool so we're mitigating against a lack of per
device entropy which seems clearly better than doing nothing at all and
has no issues with integration with the decision about trusting the RNG
to provide entropy so it's safe.  The commit message does say we add
data rather than entropy, though I agree that on reflection the callback
isn't clearly named there and people not familiar with the random
subsystem will likely not notice the difference.

We could definitely improve the commit message a bit here or even drop
the patch but I think we're better off with this than without it, and
exposing the feature to userspace, allowing in kernel usage after init
and using it for KASAN are clear wins regardless of what we do with the
pool.  If we can do something that credits the entropy at boot that'd be
even better of course but I don't think that needs to block everything
else.

> You could use add_hwgenerator_randomness, but you have no way to honor the
> random.trust_cpu command-line parameter that way.

Right, that'd definitely be the wrong thing to do here.

> The only thing I can imagine that would satisfy MarkR's constraints is to have

The main issue he had was as far as I can tell with adding complexity to
the main runtime path which we now avoid, we now don't have anything
that needs to disable preemption or anything like that.

> a new archrandom.h interface, arch_get_random_boot_long().

An equivalent of device_add_randomness() that credits entropy would also
do the trick for adding entropy, it'd definitely be more hassle to
implement and quite possibly more trouble than it's worth compared to a
simple call like you suggest but it does have the advantage that you
know the core can't try to call it once we've got multiple CPUs up.

--cNdxnHkX5QqsyA0e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4XUnEACgkQJNaLcl1U
h9DGAQf/QSD41ePGeyBDzC2rWPZKUle+PpWqW8OGFYboYKFVlEsbJRl1bHx5lU4S
+zHylR0A+cH11hS1KXFEmbmn9YeiHXK4m2Z/r+/FRXTwu5WF23NXb4HzpfGAsbxR
lHpw6roQ+182EZoedzyQvAvKDuBsqXinB4Whmc7QWeTYNXEhfaA0nYq2KIq+DHoB
/6GfZ1nRd6pVPcAyT6KL3ru6xidnWvmfapae/9uRD4PwdVqPrCriThBXy7qWe+8Q
ebIVL0DFHf3ktCWMP7hpjT4WJJi4pn6qCo9yW/j6BvzQUQXt38Yii9oV0xqCI16Z
1VFLu0VjuW8GrV0sjOLzJd27K8kPUg==
=QpK3
-----END PGP SIGNATURE-----

--cNdxnHkX5QqsyA0e--


--===============5047336238347507874==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5047336238347507874==--

