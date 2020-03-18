Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8886A189AAE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 12:32:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=atNf2o62fyy/D6m0/Ej+jrwvw+49fGDfIhSa6ecj2SI=; b=obyyP4aBYIYGtnwuX7dle6VW4
	m1Vt/wglfUc+Imbl9zLCaDed5m4CMvX+693lg1nCLH2LV0NTwB01w5o0H2jfAOUFgCkLolCCXUCrB
	0lWZL3hvfPq1FUphrXNgPUwIfYV89SkGy8q+m89IHXINNlvKMnrRPgvExi5zJfalvmomX/f2elOlw
	wyTn4c8WCM2cSFl/PpaA8Esh+5zEFeeTebuxJtzEAXEEXQ5jOABwUmgt37ceZjFw+O16wWdqQIpVY
	hjvsQK/n8J8acxmYNaoBqi6/iT02hCdYXKjORarxikfJ0AvuGSS+EMO+huv3Qs341bgsCcPxC2ZFM
	5UK3lVkkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEWw3-0005it-CJ; Wed, 18 Mar 2020 11:32:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEWvw-0005hE-35
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 11:32:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4DC101FB;
 Wed, 18 Mar 2020 04:32:19 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C2D853F534;
 Wed, 18 Mar 2020 04:32:18 -0700 (PDT)
Date: Wed, 18 Mar 2020 11:32:17 +0000
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [RFC PATCH] arm64: fix the missing ktpi= cmdline check in
 arm64_kernel_unmapped_at_el0()
Message-ID: <20200318113217.GA4553@sirena.org.uk>
References: <20200317114708.109283-1-yaohongbo@huawei.com>
 <20200317121050.GH8831@lakrids.cambridge.arm.com>
 <20200317124323.GA16200@willie-the-truck>
 <20200317135719.GH3971@sirena.org.uk>
 <20200317151813.GA16579@willie-the-truck>
 <20200317163638.GI3971@sirena.org.uk>
 <20200317210154.GA19752@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200317210154.GA19752@willie-the-truck>
X-Cookie: Oh no, not again.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_043224_182243_527C19A1 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, catalin.marinas@arm.com,
 Hongbo Yao <yaohongbo@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8683206217384066170=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8683206217384066170==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="a8Wt8u1KmwUX3Y2C"
Content-Disposition: inline


--a8Wt8u1KmwUX3Y2C
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Mar 17, 2020 at 09:01:54PM +0000, Will Deacon wrote:
> On Tue, Mar 17, 2020 at 04:36:38PM +0000, Mark Brown wrote:

> > I'd need to go back and retest to confirm but it looks like always had
> > the issue that we'd install some nG mappings early even with KPTI
> > disabled on the command line so your change is just restoring the
> > previous behaviour and we're no worse than we were before.

> Urgh, this code brings back really bad memories :( :( :(

Tell me about it.

> So I've hacked the following, which appears to work but damn I'd like
> somebody else to look at this. I also have a nagging feeling that you
> implemented it like this at some point, but we tried to consolidate things
> during review.

> Thoughts?

I don't think I did *exactly* this but it's familiar yeah.  It looks
sensible and I can't think of any problems but that doesn't mean there
aren't any.

--a8Wt8u1KmwUX3Y2C
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5yBrwACgkQJNaLcl1U
h9AbqAf/evqpddBA32ry7tRUmR0UzfLjJnQcOzDZJA22veN9vfzgRpCHNAbcKIwd
Fe0Su8ymJM2h26R94qkUOhy0ZZR3hyVx/4N8DPtKYQMGkj9iixI4zxNbk3DMKyng
e+6+4+zC2+O+ee2+R7zU081sM9Fw1oAovKckQZ+MQsfF79MUm9d3SaWvI7yIGPau
VkPkKHpc2Lz355RKv1bxi4hsJ6fIR3ktHCNY3VjZxdVLkjf01OcFmWruzEcoQgRo
bRZloTMy+lFes2YRJTZMoGElW4rPcC8pJm/b7qLWQJz8L5i3w291N/h6eqd5yGfb
+X5Pa0pOsZPnZ+ec+gNO8IQLywTehQ==
=Aee1
-----END PGP SIGNATURE-----

--a8Wt8u1KmwUX3Y2C--


--===============8683206217384066170==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8683206217384066170==--

