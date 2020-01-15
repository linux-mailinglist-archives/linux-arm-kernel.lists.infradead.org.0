Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E88C013CA47
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 18:05:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0i+YnL86BFmu98kee24sQkVOWEpXr2QG4u1mcvsh2/Q=; b=Dne4KXGo4GGsUnSfAKIrECgYL
	LCtBfPfq6ckRYrq4is9VxcfYjvnOH/hDFrJLK5hYAYZPhtXopM6gHMICDddimXpYyR565bD4ePzzh
	dGebjqJFW7poivXN+kFP6B1xE8qzY2G0lG/Kx1b3wZVQ0sP1q6i3lI2B9z+l+E03V/yrPzLMEgfEg
	N2yyLqBGVjsQhgKdfRX/hwyCB5Y0JYzi8PfZ3sleyhH/1LBgIxgofW64AEMDUdZ9bb3xtslYR6Muo
	CH6d0poMXCdRQA0baLBagbx/7/6Qznw1FLg94k7zBwlge8FlcLMUxYy2ywpptW+vFzMk0afrc7ipJ
	fQnS+p9Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irm6a-00058O-Ie; Wed, 15 Jan 2020 17:05:20 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irm6J-0004Fp-8o
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 17:05:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x+xAJXH45h4BBJG7WofrfM0gVPqK436uCaNJFEbFt0o=; b=Ha/pQLqRNX9k4j0qooSUTZ4HI
 vRyWJt0/frKEMmwMjPT43rgocn4c/uEBSpA0SpLClJn4zDLYIxdTw8ohzmK4DiL+3yxg4dBdVgw8S
 mwby2mJa6xiEZ/rOVrCtWKaPZlVXWIonVDOB+MT+TmNOEnT7rkDKSnehqWdJDZQhURZtU=;
Received: from 188.31.192.185.threembb.co.uk ([188.31.192.185]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1irm6G-0006bP-3j; Wed, 15 Jan 2020 17:05:00 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 6C5C5D02009; Wed, 15 Jan 2020 17:04:59 +0000 (GMT)
Date: Wed, 15 Jan 2020 17:04:59 +0000
From: Mark Brown <broonie@kernel.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH v10 2/3] arm64: random: Add data to pool from setup_arch()
Message-ID: <20200115170459.GM3897@sirena.org.uk>
References: <20200110122341.8445-1-broonie@kernel.org>
 <20200110122341.8445-3-broonie@kernel.org>
 <CAKv+Gu8He-SmqH3cTOCReOntFaOWvdKmEAfxxAy7QW6GzHd=Pg@mail.gmail.com>
 <20200115091615.GA21692@willie-the-truck>
 <20200115120703.GH3897@sirena.org.uk>
 <20200115124238.GF21692@willie-the-truck>
 <CAKv+Gu-eUkAtft9d+=zvnHiqQUBRGSJX9M03zF1i9Ms+oMstAA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAKv+Gu-eUkAtft9d+=zvnHiqQUBRGSJX9M03zF1i9Ms+oMstAA@mail.gmail.com>
X-Cookie: Programming is an unnatural act.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_090507_227552_BFDDAA14 
X-CRM114-Status: GOOD (  18.23  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============4136628149613497372=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4136628149613497372==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="t3tFFy74pA5/PEcJ"
Content-Disposition: inline


--t3tFFy74pA5/PEcJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jan 15, 2020 at 02:36:32PM +0100, Ard Biesheuvel wrote:
> On Wed, 15 Jan 2020 at 13:42, Will Deacon <will@kernel.org> wrote:

> > I'd also really like Ard's ack on anything relating to RNGs.

> Patches #1 and #3 are fine with me, modulo the HWCAP bit which I don't
> deeply care about.

> But the way this patch works around our workaround for mismatched RNG
> caps between cores doesn't make sense to me.

I'd be totally happy to drop patch 2 entirely, it's a *bit*
marginal if it's useful - I mainly wrote it because it's so
trivial to do not because I think it's a wonderful idea.

> arch_get_random_seed_long() should just have some out of line __init
> path that gets invoked only during early boot, exactly how we are
> using it in patch #3 to seed KASLR, where we don't care about whether

Yes, I think that would be a good place to get to if we can - if
the early init thing is a separate call then we have to worry
about the callers always running from the right context which
sounds like trouble.  It's just trying to figure out a way to
write things which is clearly robust when looking at the arch
code by itself, and I don't want to completely discount the
possibility of a new interface from the random code to help with
that yet.

> or not other CPUs have the extension. (Note that rand_initialize() is
> called very early, way before the point where we have to care about
> being scheduled from a CPU with RNG to one without)

Everything is simple during rand_initialize(), though the actual
calls to get entropy that it does happen in crng_initialize()
which is also used to initialize the per-node pools for NUMA
systems but that should happen after the capabilities code has
run I think (pretty sure, but I need to check) so we can rely on
cpus_have_const_cap().  There's also calls in prandom_init()
which runs at core_initcall() so that should be fine too.

--t3tFFy74pA5/PEcJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4fRjcACgkQJNaLcl1U
h9Do6Af/XokI/0IdQrHyYCXT4t/XmX6pHMidjoIFHbuQPFXJMsRupx0vJecBVZnb
LNVIMgzl6cCA5xgIVKQ/N5KouuENBKtAhhotOqYq7wjUM7j7P2idtnsFEpbLgSK2
P5q6/R4jIYMPHIn+l/b31BZKqHQ3lKQZHGdh6+QbEgBaTYCd8iB5ua2qYINiger3
RasZowUy2VNs7Ez7RrYyDC6hPge35pAAeOIst+J+gQ3WM24QXtvVX7qkW/ST6K77
xzKbQLGBjmdofbu5SeLi/XoxO0Db4om5Iwz3kBAYhrUcSu5XKN1xAth5nv9k/sfr
ch4X9ySwxLEk9QztwbDYtT3k6ZFfxw==
=NwpF
-----END PGP SIGNATURE-----

--t3tFFy74pA5/PEcJ--


--===============4136628149613497372==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4136628149613497372==--

