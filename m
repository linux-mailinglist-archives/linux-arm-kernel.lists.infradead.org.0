Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD2B1626C5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 14:06:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zeNGGEDA18nP+PUJrxRFgv33mvJBWUprDjKDteB56aM=; b=h5DCklf9KyPp/BoWnR6ZbBDpb
	3bvjrUCf0emSdIn36avtUU1zNYANDZiEmLrcypda6akOYSFdhHzDKt3+3i9gZV0KFatdndWgJKCxW
	+QgE3z8hM3cnzgzSupk2zDy2u+zmKcZEjeddHPwyWgE084WmoIIEOMkae6qnmTKLUBgxz+1G0l+vd
	/+2Mec/h0TeWM0BU/qxTnFxDaAjpgD4ICl3TP84ZT+4BVOHbeBRteO06Rwr69fuW82vwbZCf27/+s
	iPp709TmMjButcfmByM1yNdA9hk+c2/j4aZ06UjwSE9l79RSZYN4tFdFuZ8Go1Yh/Rc0Y2C0UYq1s
	pFIjMEzCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j42a4-0002Yk-UX; Tue, 18 Feb 2020 13:06:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j42Zx-0002YF-VP
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 13:06:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 42A471FB;
 Tue, 18 Feb 2020 05:06:21 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BA29D3F703;
 Tue, 18 Feb 2020 05:06:20 -0800 (PST)
Date: Tue, 18 Feb 2020 13:06:19 +0000
From: Mark Brown <broonie@kernel.org>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH] arm64: kvm: Modernize annotation for __bp_harden_hyp_vecs
Message-ID: <20200218130619.GE4232@sirena.org.uk>
References: <20200218124456.10615-1-broonie@kernel.org>
 <49f7de5f1d86e7edcc34edb55d5011be@kernel.org>
MIME-Version: 1.0
In-Reply-To: <49f7de5f1d86e7edcc34edb55d5011be@kernel.org>
X-Cookie: No alcohol, dogs or horses.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_050622_055669_ECD09DDC 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7357335815942992631=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7357335815942992631==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uCPdOCrL+PnN2Vxy"
Content-Disposition: inline


--uCPdOCrL+PnN2Vxy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Feb 18, 2020 at 12:56:52PM +0000, Marc Zyngier wrote:

> I'd really appreciate it if you could send these as a series, instead of
> an isolated patch every other day.

OK, I can do that for the KVM stuff - I've been actively trying to keep
the patches separate where there's no dependencies between them as it
avoids things getting caught up in review for more complicated stuff or
cases where someone decides they want extra cleanup while we're at it
which is especially useful when only some of the series is needed for
building on top of as is the case here.

--uCPdOCrL+PnN2Vxy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5L4UoACgkQJNaLcl1U
h9Dy+Qf9GtBbjh9KlVQIqVkbd9XQ9t365dTvsoYYQBMzI3q3zvTgOVzlg+O0vUt+
3Xy+PBFLuw4/ynJeAWfB3GcG2OaAroDsGBEDzkXA5jJ0zOKbq9MuuNmLr07mRVgX
Jim7fz0J2QJ7VjRkb6SgRBd5zAQeMY/fWt53I0UqjA3eQbAEf7UScXoj5/6yFpfw
YlR+2i98aXNlb300X/SRGiAYAZLX/krKjUfgO/6jEvZJ3IQsviY7b0mUttRx4ovI
7m2j3E1eyVGBFlRBhD/0aWV5V/ps6YQjkHzOo3qe2d6UUB0f9zLSYSOQUy3o5ppQ
CBRwusKcBn6OS3v+4HedGMaGa5m0rg==
=O8oy
-----END PGP SIGNATURE-----

--uCPdOCrL+PnN2Vxy--


--===============7357335815942992631==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7357335815942992631==--

