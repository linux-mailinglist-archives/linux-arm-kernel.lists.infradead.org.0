Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB8B13C81D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 16:41:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=21mFH4m+GW0XBrfTWApun2GeDNXOxFfPYR25xUX/So0=; b=VlScEzJRvBLbm2EgFbYP1yHJ0
	MB9qHyjUo3L1L0w30ibaYfGDzPzdHa2iKvsng8wmrYrMS7mRxZMVU4wg3rkepLGlgK69LZ5anixnb
	BoD5rBjICyLh7XpSwNSrKNNQRTacQV3nxIkTq/dDGFoFuv82JdBMNimXqz15Qo5gleyRX8VtnhiEe
	9ljnG+tBO75MWRlpulYQOvu2AhP0pWe6ONQJ4nrvRPA4KPpPhsLL9F80H60tzg7rmq/INoVUybK9u
	P0sLJ8abllqGpgBUNaserPER4DIdEnI8/KQC1t3eKl8SI7Q1PqFwBBzYXK8FXtWvRY/t9sOecmJo8
	rSnqE5o/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irkn6-0007Tu-HY; Wed, 15 Jan 2020 15:41:08 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irkmk-0007B4-Dj
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 15:40:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RQDpFMEJEXl+c72zH5bOrVCosmOsZYYHIGPA7F5rksk=; b=S+/GPZgsCMK+ko7HWP/hTPFaC
 ozNQPuaeCNKDOywPsPBykAf2RXQomphfZfrUz8x4p/XsW1m/dpDFih2fX3WijuE60O6rabH8cJa+s
 tLnDyqFj5kJ/ytq+Z1EgI/Dxdbg+4o1T8gkwASc2VccBb/SMfkSXwu03YeN9JoNkUvZIM=;
Received: from 188.30.186.8.threembb.co.uk ([188.30.186.8]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1irkme-0006KO-HV; Wed, 15 Jan 2020 15:40:40 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 1A0A6D01965; Wed, 15 Jan 2020 15:40:39 +0000 (GMT)
Date: Wed, 15 Jan 2020 15:40:39 +0000
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v10 2/3] arm64: random: Add data to pool from setup_arch()
Message-ID: <20200115154039.GL3897@sirena.org.uk>
References: <20200110122341.8445-1-broonie@kernel.org>
 <20200110122341.8445-3-broonie@kernel.org>
 <CAKv+Gu8He-SmqH3cTOCReOntFaOWvdKmEAfxxAy7QW6GzHd=Pg@mail.gmail.com>
 <20200115091615.GA21692@willie-the-truck>
 <20200115120703.GH3897@sirena.org.uk>
 <20200115124238.GF21692@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200115124238.GF21692@willie-the-truck>
X-Cookie: Programming is an unnatural act.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_074046_631965_A23A5533 
X-CRM114-Status: GOOD (  22.00  )
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
Content-Type: multipart/mixed; boundary="===============5413318071287398142=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5413318071287398142==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="smEuXhZLKnMjT4Ht"
Content-Disposition: inline


--smEuXhZLKnMjT4Ht
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jan 15, 2020 at 12:42:39PM +0000, Will Deacon wrote:
> On Wed, Jan 15, 2020 at 12:07:03PM +0000, Mark Brown wrote:

> > tables like cpufeature.h that make it annoying to hold out of
> > tree, the bits that are going to change can just as well be
> > worked on incrementally as held out of tree entirely and having
> > the rest in means there's less friction doing that.

> The usual downside that comes from merging patches with promises of fixing
> them up later is that the motivating task gets marked as "done" somewhere,
> the developer gets given something else to do and the updates never
> materialise. That's not a dig at you; it's just the way these things tend
> to work (I've certainly been on both sides of that coin).

It's certainly a way things can work, but it does assume that
there is an underlying motivating task that involves getting
things upstream which will cause people to do the additional work
rather than just wandering off and then potentially causing
someone else to redo the bit that was already done if they don't
notice the code in the list archives or spend time trying to
figure out if the original author will continue revising their
series.  We even had an awkward situation when I was at Linaro
where the original author of something we depended on was
continuing to work on their series but it was now a spare time
activity for them so progress was painfully slow, the worst of
both worlds.  The most common way this happens that I run into is
people implementing things for products who are doing the
upstreaming on the side.

It can also have the effect of discouraging people from trying to
do things in the first place, I know the likelyhood of scope
creep is one of the factors that influences how likely I am to
try to improve things I happen to notice while I'm working on
something else and I'm fairly sure other people make similar
assessments.

> If there was an urgency to this, I'd suggest merging a form of Richard's
> code, as it appears to solve the technical issue of credited entropy whilst
> leaving some room for subsequent cleanup. However, I think that makes it
> even less likely that anybody will come back to do the cleanup because the

I agree with your assessment of the likelyhood of cleanup, I
think an incomplete solution that doesn't credit entropy is more
robustly likely to get fixed since it causes an actual problem
that people will be motivated to fix as opposed to just being
ugly code.  I have no objection to merging Richard's
static_branch_likely() approach though.

> code will be perfectly functional, so I'd prefer to wait for a complete
> solution unless you think it's not achievable for 5.7.

It could happen but I wouldn't like to commit to getting
something in for v5.7, that's basically just a single release
given how near we are to the v5.6 merge window opening and I know
changes in the random code can sometimes take a while.

--smEuXhZLKnMjT4Ht
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4fMnQACgkQJNaLcl1U
h9BxWwf+MGtNxt1mwfcmbUhShVRyuxgU7doRInVhoNj6Q2BRaPn2obsc/lXJ7TL3
P43bvdIykUrEohvHUn5WwDSHY8EBsg2z3KdGMEDeTEdJv02gu7k09NEbW8WYUubM
TkrAK0dulLndrtOLwEUjy7JKyizNBKRQelqn68Ao19UrnTLrks6ucQtl09+8W8em
Gv+ePz/0LHUZ6MQgWDj6oMaBb9xiKGQjBC1q6lzyrzBb23ZVYj62U4nDL+6gQcN+
O1mQEVjP6+uvaWEm/O0x1Tr9LMbvUHVj+7ryan63T/TiuddJpSuTk/L3ER1wTCyJ
2m17fkexmI6IW7/+Bmq/3F/5VYRC0A==
=kh3j
-----END PGP SIGNATURE-----

--smEuXhZLKnMjT4Ht--


--===============5413318071287398142==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5413318071287398142==--

