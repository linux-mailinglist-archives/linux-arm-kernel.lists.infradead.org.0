Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 241C41DB07F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 12:47:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZYTfPuFaEFduDO84cVlPaaUuq4V0ygovL8FrJN4N8tg=; b=GFTTfRFa9i/N3KaAqvhjx8giG
	ZXc0XlyyO4jekfHuODRc5BUgQHBzv2c9TClFTyFIJMnJRuBIyr92FYf1Y8uVJFJniv+GJe+/gSwSa
	ytCFG4AXh7Yd5g0k6lf1ZRu61mV2vydFLad8uwLUiJMjmYxdBBXUGxRZYaR4iIigGekehSsv4ogvJ
	Vl149Ei5XWwfiFf08ql8DHpr7IyTjgTwgSM6Ksi5kXrOPm+ZdwuRoSYQgl1KM5H3ymRYyfmBhZWNV
	Fhgrk6p61jTa6bMFIQcSzTRlAbEWgtb+XCXs28YWkYh2rcpsqvEeothRHqQsxs/yx6mCAh91qoUO9
	jQWP89qvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbMFf-0000AV-8E; Wed, 20 May 2020 10:47:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMFV-00009u-0H
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 10:46:59 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 11389206BE;
 Wed, 20 May 2020 10:46:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589971616;
 bh=rnggE3MeLinyRuxC3ltBB1XcKwpNlGCv89HcOLSVmUc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hRdlHvpZSAUHBZlr0Pp1tuEtDN0zCFPlIhxd7bbhu4CZXZp+IwotJtOkogTxFPQnS
 xNhV78PmUzkWpVNxp2odXaQ+lDxPW2SSHRBUQ+7BGVX2PVxuuZUYsWRDwDRlNiDAOV
 9EMa6OnZhv7WSj+n0pNTI1OLk4PClTXixMSp0kpg=
Date: Wed, 20 May 2020 11:46:53 +0100
From: Mark Brown <broonie@kernel.org>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH 1/3] arm64: vdso: Don't prefix sigreturn trampoline with
 a BTI C instruction
Message-ID: <20200520104653.GA4823@sirena.org.uk>
References: <20200519121818.14511-1-will@kernel.org>
 <20200519121818.14511-2-will@kernel.org>
 <20200519123843.GJ4611@sirena.org.uk>
 <20200519132538.GE5031@arm.com>
 <20200519143500.GK4611@sirena.org.uk>
 <20200519145514.GH5031@arm.com>
 <20200519154247.GN4611@sirena.org.uk>
 <20200520094844.GL5031@arm.com>
MIME-Version: 1.0
In-Reply-To: <20200520094844.GL5031@arm.com>
X-Cookie: You can't get there from here.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_034658_380768_00CBCF82 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tamas Zsoldos <tamas.zsoldos@arm.com>, kernel-team@android.com,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Daniel Kiss <daniel.kiss@arm.com>
Content-Type: multipart/mixed; boundary="===============6847080975674429033=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6847080975674429033==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="J/dobhs11T7y2rNN"
Content-Disposition: inline


--J/dobhs11T7y2rNN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 20, 2020 at 10:48:45AM +0100, Dave Martin wrote:
> On Tue, May 19, 2020 at 04:42:47PM +0100, Mark Brown wrote:
> > On Tue, May 19, 2020 at 03:55:15PM +0100, Dave Martin wrote:

> > > > > If BTI {nothing} allows this while disallowing all BR/BLR then we could
> > > > > use that (I can't remember what BTI {nothing} is useful for, if anything).

> > > > > Otherwise, it's less clear what we should have here.

> > > > I can't remember anything that distinguishes it from an explicit NOP.

> > > I think it rejects everything other then fallthrough execution
> > > (BTYPE==0, which includes RET).  I might have misunderstood something

> > Right, but since BTI only generates an exception when BTYPE != 0 I'm
> > having trouble differentiating this from a NOP in practical terms.

> The idea would be that if an attacker could fudge some function pointer
> to point at __kernel_rt_sigreturn, attempting to do a call via that
> pointer would still trigger a BTI trap.

We'll get a BTI exception no matter what instruction is here so long as
it's not an appropriate BTI landing pad so unless we want to prevent one
being generated there's no need to change the instruction sequence.  Or
perhaps I'm not quite getting the scenario you're thinking of?

--J/dobhs11T7y2rNN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7FCpoACgkQJNaLcl1U
h9CQoQf+MnqZ5ryzWyVwKQDsyQJS/XCivfF8T7RGh5FWw/L67Q3k82GR8lActyyr
rnuUDNkJijOKMdxuBWVgJbqs/6VP3F5njYosSitCtHBUXqyQgOFQz+J8ATPHOO1R
6lCKGj56AKt05M9SnkMi3xCYtOPWj0Z2UTFcDPsmDNHgjRhqbtTciwr6A2JCGMum
X5zZ7nSVh1MreuD1ZgPoIOX5XiGUlwWq4FmvH0anM4QlF6L8dVcgbl81ppufwCf/
zDC6SJm1lwjHYivs1jj6gFkG+jVn9jaLI7TlZ0LKaDm96suwPTs32D/Z4POZQndP
YfMwGl9302bKXvkvqUj8MKirs8Canw==
=l52c
-----END PGP SIGNATURE-----

--J/dobhs11T7y2rNN--


--===============6847080975674429033==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6847080975674429033==--

