Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7DAEB0B0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 14:00:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ydEq/f5NCzw9k/FstmmgzxYc8R3eEy8d2C+/CvlfUgo=; b=PpoHM7G533lqVqjee9kj7uEC+
	IYOjOC1SMnhtSC7rTh0OzXWpViEAI0UZJvgYW88tsRbO2eQV+ZbcvhATdJyZDryrtSHvbERjl13Tu
	BFWuwc0YmJCItcIyOVW/7Fx8wJRAwu2xz1U81mnInlwayHaQWe4hp2u0qBZDbBdzyshmNcfOnywtj
	YS1mpVDIGxtI02M7hrFGQon2wqsjmHLH++p//kpyO2M0yPFTx7J3MfaZs0mXR+kzt9K/qgHKbBtRb
	CYxYW5PGruQSS/USdF+7aDt4uNTWlqh/2TXR0z9EeiZYaWtCMwKiaDDnC1xr2JYG+vp5jzlQ4efgi
	ebuBLdetQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQA44-0002jY-5Z; Thu, 31 Oct 2019 13:00:36 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQA3t-0002jC-Fx
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 13:00:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nho2MZw6nZVRKdp9YKp/Ug+ovwpzLNjt9mYFPMlO2DM=; b=Javj2y/XUJm1/p37jCwIpfZHJ
 WXB2RVz2pzeP0yAgzqTWpbRN/5Z2JFFUKET39U1+fSFPmbV2glziCNnwLGWY5qU7T+WZAfX6VkrO2
 iDxrreUminZwXkXBatcBmd0gsekI/b8BwJgwhjCoBMIplS3NVeobcsyyauEkuLNuABDVU=;
Received: from [91.217.168.176] (helo=fitzroy.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1iQA3m-0007lS-QA; Thu, 31 Oct 2019 13:00:18 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 48C96D020AA; Thu, 31 Oct 2019 13:00:18 +0000 (GMT)
Date: Thu, 31 Oct 2019 14:00:18 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v4 0/4] E0PD support
Message-ID: <20191031130018.GQ4568@sirena.org.uk>
References: <20191024214207.20588-1-broonie@kernel.org>
 <20191031112610.GA26059@willie-the-truck>
 <0152ac71-1295-a302-7810-f9767f7bbd78@huawei.com>
 <20191031124217.GE26059@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20191031124217.GE26059@willie-the-truck>
X-Cookie: Keep out of the sunlight.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_060025_553848_FB185710 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 John Garry <john.garry@huawei.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5784055234195395911=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5784055234195395911==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8G1nIWD3RY794FAy"
Content-Disposition: inline


--8G1nIWD3RY794FAy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Oct 31, 2019 at 12:42:18PM +0000, Will Deacon wrote:
> On Thu, Oct 31, 2019 at 12:13:35PM +0000, John Garry wrote:

> > I booted our D05 and D06 boards with that branch and did not experience the
> > pauses which we reported some time ago.

> Hmm. So I annotated the code locally and I see that we do rewrite swapper
> in this case, so I'm surprised you're not seeing the performance issue
> you ran into with this before. Have you got KASLR enabled and are you
> passing a non-zero seed?

Gah, sorry - I tested change which sets arm64_use_ng_mappings
early, should be sitting on my machine at home, in mm/init.c.
That will mean that there's only a slowdown in cases where we
have a mix of E0PD and non-E0PD CPUs with the boot CPU having
E0PD, hopefully no such systems have very large amounts of
memory.

I'll post it Monday at the latest.

--8G1nIWD3RY794FAy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl262t0ACgkQJNaLcl1U
h9Dqlwf/VL60LvlMth25czvfJxDNgYnqRL1/oRawJFgTK6HH1+ICbQFwsAuX/Cth
reNhmgCB9tzLmdahzFz01AlE7QS0R1hZu+Uf71BeHibk2POLxqlNTXbfFjt2FSN8
tL1/e5iUO2ZAFoaDEOWJGWbwXhvZVaok7xB7LVHXMfbpnyfCB3e13pQFxwKf8S1W
Ld5ytCG+Np+YLTjpgO2H71EvTOYLjzQnzt3pTGC2MwDqrWNTXkfypZbPtX4CBx13
SbAHfx57r1A3Zu7kcc3sSMv1LrOc8nLu/ZSE8AV4MA+c2s4QsIxDcKwX75p2XAkT
m8JeJmC88zQtyiGrZ9FXgvsGfvtv/g==
=YUJF
-----END PGP SIGNATURE-----

--8G1nIWD3RY794FAy--


--===============5784055234195395911==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5784055234195395911==--

