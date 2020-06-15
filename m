Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 840CF1F9DFC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 19:00:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jaCkuqzBT4lfgpcSfZcBdHVKFzyULbxPopGwvLh8bhY=; b=pLNWJAXOmLBHRirqaLdhu7kuY
	U18XgC8BK6yWSBG4kwepUFBHExIaV3Pk8LpNmKXDiMYHJI7osFp14HkZFu0/k4A9xmwS5s3hthLp9
	NwHh2p3lRq0PS5QDECvA+Ksfrgs+mLp4+VXxiFZ52MDtnsQJ5l/qh4A3i4xJkTW+KIXb97xH8tXVW
	aW96poF0g2OM1DdR9sCQgzcmOBRCqv+wwoyFaz4tBjYe0Px7f4mg7HLvuJPCb7h9a8grOTYyB8uaW
	HPnO8DzCkyM6tu/DBvo0crK8Z4vHtcFHjGH8ztCmiVKe8VjZyV4OTSNxi62MLFylwZ8P6mADhJiEz
	FoEZK1KRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jksTS-0008K7-U6; Mon, 15 Jun 2020 17:00:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jksTK-0008JD-I2; Mon, 15 Jun 2020 17:00:35 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2213620656;
 Mon, 15 Jun 2020 17:00:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592240433;
 bh=pjNF9x2RDPj8kZJYuvgsDx7Y5A6qAlByLppUV8O4V7c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ykZg4D1WVda3DXTdJX5l0ZNtXOQVaoBZMW53mCeTqP5/BvWrjzSYGKXOaE5RjuSHL
 qD0aM9rtiTVOu88XF56dUtwE5BI9uxSavO7+S0OM5eG3bo0KhQhI8Ba1m3tEstjOYc
 CxIW/9zM3i9cSjjTCVvhTek75ILPzbpK0weS5GZU=
Date: Mon, 15 Jun 2020 18:00:31 +0100
From: Mark Brown <broonie@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v2] spi: bcm2835: Enable shared interrupt support
Message-ID: <20200615170031.GA4447@sirena.org.uk>
References: <20200604212819.715-1-f.fainelli@gmail.com>
 <142d48ae-2725-1368-3e11-658449662371@arm.com>
 <20200605132037.GF5413@sirena.org.uk>
 <2e371a32-fb52-03a2-82e4-5733d9f139cc@arm.com>
 <06342e88-e130-ad7a-9f97-94f09156f868@arm.com>
 <d3fe8b56-83ef-8ef0-bb05-11c7cb2419f8@gmail.com>
 <a6f158e3-af51-01d9-331c-4bc8b6847abb@arm.com>
 <20200608112840.GC4593@sirena.org.uk>
 <bb9dbf11-9e33-df60-f5ae-f7fdfe8458b4@gmail.com>
MIME-Version: 1.0
In-Reply-To: <bb9dbf11-9e33-df60-f5ae-f7fdfe8458b4@gmail.com>
X-Cookie: Offer may end without notice.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_100034_616153_963AB0A7 
X-CRM114-Status: GOOD (  10.46  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 "open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, lukas@wunner.de,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Martin Sperl <kernel@martin.sperl.org>,
 Robin Murphy <robin.murphy@arm.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============1511618336235920495=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1511618336235920495==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ofekNuVaYCKmvJ0U"
Content-Disposition: inline


--ofekNuVaYCKmvJ0U
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 15, 2020 at 09:34:58AM -0700, Florian Fainelli wrote:

> OK, so this has been dropped for spi/for-next right? How do we move from
> there?

Well, I actually have it queued up for applying so unless I pull it
before my scripts get that far through the stuff I queued over the merge
window it'll go in (I dropped it due to it not being a bugfix).  If it
were me I'd go with the two instruction hit from checking the flag TBH
but otherwise I guess __always_inline should work for compilers that
misoptimize.  None of this is getting in the way of the framework so if
everyone involved in the driver is happy to spend time optimising it
and dealing with the fragility then it's fine by me.

--ofekNuVaYCKmvJ0U
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7nqS4ACgkQJNaLcl1U
h9C/sQf/Q3a6fPdDE/0SszY8YBwi3lo7IhvhUsM32lAT1geHoCRQZMcFUSMjktHG
nv7SU6QcpZSidvlFYnamRdn5jMZSGEUDvNEASoCZ+aqhJhFG/Gb5ks94ILJMEhF8
b4tk7QCWkn+w6n99PyrNMCh9dExt3yRkHXG2M9a6a5UHxCO2JW12sA0eyEfBW30Q
8QNyzNCpYeclwKH0MW91BpjbUwKCPXDRcDOgmSIRX6ACrVbs6xU5BUGVdZRjMcb9
x8zWxbr6yIZtuGKsPTyVGQDmO/wroEYA84CbYpHOEl0Oe81nhQp9nm6rJzT3IGhn
jcdeWnCufYRam1maBk4xhwDZV6o/pA==
=6wIF
-----END PGP SIGNATURE-----

--ofekNuVaYCKmvJ0U--


--===============1511618336235920495==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1511618336235920495==--

