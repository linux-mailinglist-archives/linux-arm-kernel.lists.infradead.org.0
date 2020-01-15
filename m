Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0AE313BF32
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 13:07:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bMDwn5uH8UVfQhqHzXwpXxEgbj4u1vpfYqAD5a5qPIM=; b=ExdKaXEBOhM6n1qygUzVp0afX
	090GPWc9Va6HHUeJReHCyrHqsXPrZWmJmVFq1TDr5c90B2zViaCVDYTDJXD3ldidjsljKvyJHcn3H
	X9kwEGnd/AKGtPxy1DWj6lO0pp7/0R9H1xr0hVDqIY3wbSe4HrtGYJ4oUTLyPW1cm6Ob7W8MxsymY
	W7F1YE/68Pksvz835qN1gzlwQL5JfG7Aj3iRn5/qSmmMCx844VJkxE4PUg5pew0ZtXQN1sOVgxId4
	I0GangyOwlxkrd9typHdk2jgtVKDI372LGSAaL4JpItQMuvhkPIZQnxNJRAdtlFCrHl3z+zNn7x5q
	o7yF4c4iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irhSD-0001vx-Az; Wed, 15 Jan 2020 12:07:21 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irhRz-0001vV-Fr
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 12:07:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JXnYL5jOqBf6mcNK+6hKIsS3sJN7thz4m5SyZQw3fZ4=; b=lMPjzuT5jGG77Mjz5+wAaLGYC
 rqQU2FSqMQC7SUX64v9Bz/FGgbo8nlNVhv/F/05NeMBI7x1WO35QAd953q7kmFmUNixuRkNaMS7vD
 HnJi69DBQziLi62QB5Q0+g6hLZq6pUcyFmzlNzoyY+fK5U2uyq+M9L6CxACC5hVhUxAIQ=;
Received: from fw-tnat-cam3.arm.com ([217.140.106.51]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1irhRw-0005YN-DM; Wed, 15 Jan 2020 12:07:04 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id DF29DD01965; Wed, 15 Jan 2020 12:07:03 +0000 (GMT)
Date: Wed, 15 Jan 2020 12:07:03 +0000
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v10 2/3] arm64: random: Add data to pool from setup_arch()
Message-ID: <20200115120703.GH3897@sirena.org.uk>
References: <20200110122341.8445-1-broonie@kernel.org>
 <20200110122341.8445-3-broonie@kernel.org>
 <CAKv+Gu8He-SmqH3cTOCReOntFaOWvdKmEAfxxAy7QW6GzHd=Pg@mail.gmail.com>
 <20200115091615.GA21692@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200115091615.GA21692@willie-the-truck>
X-Cookie: Programming is an unnatural act.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_040707_533954_4800FAB3 
X-CRM114-Status: GOOD (  21.65  )
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
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: multipart/mixed; boundary="===============0161858331482499441=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0161858331482499441==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="9gXqgVhKaPB5h51M"
Content-Disposition: inline


--9gXqgVhKaPB5h51M
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jan 15, 2020 at 09:16:16AM +0000, Will Deacon wrote:
> On Wed, Jan 15, 2020 at 08:48:46AM +0100, Ard Biesheuvel wrote:

> > > Note that we are only adding data here, it will be mixed into the pool
> > > but won't be credited as entropy. There are currently no suitable
> > > interfaces for that at present - extending the random code to provide

> > This is slightly unfortunate, as this way, we lose the ability to use
> > random.trust_cpu=1 to get the entropy credited and initialize CRNG
> > early.

Right.  OTOH that's a bit of a mess to do, I do have some
thoughts but it's a bit of a mess trying to do it tastefully,
especially when considering that you probably don't want an
interface that it's easy for something to misuse.  The effort
involved certainly seems large enough to handle separately.

> Agreed. Do you think we should wait for that support before merging the
> series? Given that I don't know of any CPUs implementing this extension,
> we can probably afford not to rush this in.

It's implemented in at least the fast models already, not checked
any of the other emulators, so there's some possibility of people
using it while developing other things and hopefully at least
some of the various CI systems will be including emulated
platforms with newer extensions in their coverage so might gain
some benefit from it.  Frankly the only reason I'm looking at
this at all is that I'd written patch 3 because I was getting fed
up with KASLR initialization being easily disabled when I was
trying to test E0PD on the models (especially before I added the
status print at boot to KASLR so this happened silently), having
this in mainline would've helped considerably when working on
that.

I don't see any downside to having the code in mainline as is,
even though it's not ideal it does make things better since if
for some reason anyone does end up running this code on a system
that has the feature they'll get at least some benefit from it
even if nothing else happens.  The bulk of the code isn't going
to change when the early init stuff gets improved and includes
tables like cpufeature.h that make it annoying to hold out of
tree, the bits that are going to change can just as well be
worked on incrementally as held out of tree entirely and having
the rest in means there's less friction doing that.

--9gXqgVhKaPB5h51M
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4fAGcACgkQJNaLcl1U
h9Bnugf+Iy2yK/tSisVAnyiegZNwXKfVW5UuvVHT5kQwz4NOWvwcd0mb6EH7tR7O
FpIo3n4xMOtRbvwiSFnH36JA9Wc/C9RqI06jRfgbEvE9wwlQ5m/KXXYPkXi8UUJh
uy108XxwFN41ywJWpJmSg/4nqEuQo8pA6OhbeHxsDy1ggC10dQcXnOSXZHfRlr64
7aR/TCoHCDpH2Dl8wYKaPiTMLC86HsiRUwzAotGinDdRMAsbkD2gcjTQKNSMSrXD
pK8b463sOWfM1eh1pG7utHsGKIJkNm1RvMtJv595U5sEtgfsuUBCc58fmiLuYLM4
WMY0xfM9lQd033DFuDy4u0KK9+6UmQ==
=8QKQ
-----END PGP SIGNATURE-----

--9gXqgVhKaPB5h51M--


--===============0161858331482499441==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0161858331482499441==--

