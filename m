Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD76913C4C4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 15:02:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CPoyqXX+Jo5T0bh9cAhsXZLWK/qAuKPRyNK8v5arnSM=; b=QrRLjaI6FEfiay1O6W2mrxwMz
	lSWhKGQdu1Yw+iGuJhDEcDKZNLFD+7886mezQYzYnuSX5qYSCkJYJIGVm6JGHWzsJ2EO1/vYm1amG
	PzFKCl/kLiOgfjjDyKQHBPpXWVP+ts+H7iYckKblMFvOsYtZgcaBG2LLbNoP0rQaiiP9H0sRwbNKD
	qlLwqmSrnMxCfJ8mvdcE0AEdTg9V0NXOlpRT3gX/V8NBvIzKDnUEwW2/CEJ+PVxwrBRUEXQuWwswq
	DEwdBuQN0JQmq0944B/a59xNozgELSPjNzN3xVWq6zRwvZb34/NBSXnmyujdqfKz8w/ICYoU3Ee6l
	96aSiq9ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irjF1-0004DI-MQ; Wed, 15 Jan 2020 14:01:51 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irjEo-0004BM-NY
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 14:01:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2g0OZmj7279HnAtQuen2D66A7Q04pVZhPkLtfyOVtxs=; b=hrL2uWus1R6i6shgruMu6N2aV
 cGcBW5FzqpFmzT0+E9sMRboY9IpkNgsmEDDIb1zurreautWt5r9KL4iSMa+qxIo/hWK/c7LOEeNFb
 zvA134FjYYzPxNqE19Ez9Gjydy6vdtzW3tWxlx4IL0MKhIzAvhWLS0RywNAEU9DzBcZ2Y=;
Received: from fw-tnat-cam5.arm.com ([217.140.106.53]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1irjEk-0005qh-Lw; Wed, 15 Jan 2020 14:01:34 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id D2F0DD01965; Wed, 15 Jan 2020 14:01:33 +0000 (GMT)
Date: Wed, 15 Jan 2020 14:01:33 +0000
From: Mark Brown <broonie@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v10 2/3] arm64: random: Add data to pool from setup_arch()
Message-ID: <20200115140133.GI3897@sirena.org.uk>
References: <20200110122341.8445-1-broonie@kernel.org>
 <20200110122341.8445-3-broonie@kernel.org>
 <CAKv+Gu8He-SmqH3cTOCReOntFaOWvdKmEAfxxAy7QW6GzHd=Pg@mail.gmail.com>
 <20200115091615.GA21692@willie-the-truck>
 <CAKv+Gu9=L6hPSHbvf1qHa7N9hyJ7m7KSYJHBf1em8E0Db_Lghw@mail.gmail.com>
 <20200115101107.GA32549@lakrids.cambridge.arm.com>
MIME-Version: 1.0
In-Reply-To: <20200115101107.GA32549@lakrids.cambridge.arm.com>
X-Cookie: Programming is an unnatural act.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_060138_767154_905B463D 
X-CRM114-Status: GOOD (  16.50  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: multipart/mixed; boundary="===============1140870131234187625=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1140870131234187625==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1IYcr18XUmgwOrO2"
Content-Disposition: inline


--1IYcr18XUmgwOrO2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jan 15, 2020 at 10:11:08AM +0000, Mark Rutland wrote:
> On Wed, Jan 15, 2020 at 10:22:03AM +0100, Ard Biesheuvel wrote:

> > In a previous iteration, we did have a functional
> > arch_get_random_seed_long() early on, which would solve this issue
> > without even needing a patch like this.

> It meant that the common runtime path had code that was only ever meant
> to run at boot time, and would also run on secondary CPUs until we
> finalized the caps, so they'd behave inconsistently across boot and
> hotplug paths. I was concerned that this was messy and would be painful
> to reason about and debug.

> My suggestion was that we either:

> (a) Had the arch code explicitly inject the entropy in the primary setup
>     path, as these patches do, or;

These patches don't quite do that, they inject data but not
entropy so anything that is waiting for the pool to become fully
initialized will still end up waiting, though we do still get the
data mixed in.  There is currently no interface which allows one
to explicitly inject entropy as though from the architecture and
I'm not convinced that having one would be a good idea.

> (b) Had a new callback (e.g. __early_arch_get_random_seed_long()) that
>     the core random code only called during its initialization, separate
>     to the runtime paths.

This is definitely an option, but it is a bit ugly and as things
stand with random.c it would I think have to cope with possibly
running with multiple processors at which point we start to get
back to the complexity you were originally worried about just in
a code path that's less commonly executed.

--1IYcr18XUmgwOrO2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4fGzkACgkQJNaLcl1U
h9D4+gf7BUxNjlpu9HM3NV2f7maJmLjMBhW1wsOuJcezPg5kluW4rEIgaiaxl0ix
DCjZ9tQ1KhShGWe+G1sLYj40qD4iEfw45cSPQOD4ZDa/Ytu5CP5qWCe4tvLYza8W
v+I5HKfYjBf3zUWP6G/McCv2iXYmUmaZCThAhy+gwKwrb2dLZ+p7tuQCegxUsGpF
s0ReOa4GQgjGINlCq2Zh+nZvyiCawA2uAL36uW8YnkwL+15+qfvYk5t1sDXISyv/
pFEEQ4SjXUxBZ7IcKW7fZLcgNVoeRlV2kxRp5JeXC/di/Zf8OcGMH2n6pFECq6sD
Fg+LHYLWmgqH/dht55S0/AcBNmuSHw==
=NplI
-----END PGP SIGNATURE-----

--1IYcr18XUmgwOrO2--


--===============1140870131234187625==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1140870131234187625==--

