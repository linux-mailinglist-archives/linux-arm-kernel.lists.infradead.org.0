Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 533D81FA029
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 21:26:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=APcsTXorZjjOZS17FR5ydK28JWKhSoT/pUGvLTAdPAA=; b=dquIP8Sdj4iPHt3zhU6t6w4zo
	80Mp01y6RyaXumwIDMzI3G6MT1XrkOeYAxL9Kw9C+w7vXg1nwxRJIJgdyip12Nig2QpkBsrxd34x+
	oOjuf355TBzVoSQZXQTvrbIsHwHUwcxo6ocFNYBMr/h3Edf4u7FF7SdRO22mXpFrKxiJWBjYmSXBx
	s2YuuC2DAlYHLs91+m7a2EP1+sssbKIsip5u2XvEOLSGDEtVLLA+NFQRB5U4Opr18p2M9Xvn0rCJ4
	nQbDkbkuL7ze+63parbS1wQFNHbFNaQ89c5Un2bPDqbY2Uvvta1U9lZ9aUKckOuk142Ene0PXcCyW
	ElWVqY3hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkukl-00076a-8b; Mon, 15 Jun 2020 19:26:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkukb-000768-SB; Mon, 15 Jun 2020 19:26:35 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B0B9420756;
 Mon, 15 Jun 2020 19:26:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592249193;
 bh=AvkDF1W+evs4ACyDeBmJZSphxtaBgYojELjru6qP34U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AL6Ge9s0gex0hxoxM3nzvCoe5DV/SPRIHO8CUoZbbay9M628GxRDagsRytBs1A9hF
 IsifoHGmtCVGfPlnC3zKNzsG6zYkedW5VzfUXPM9n6gdKYZVYEA+h/q2CB3/L5Qk9H
 XMKdQOOeOQeTwF6cws0Y/DjmJP/RimvZu81zBaXI=
Date: Mon, 15 Jun 2020 20:26:30 +0100
From: Mark Brown <broonie@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2] spi: bcm2835: Enable shared interrupt support
Message-ID: <20200615192630.GC4447@sirena.org.uk>
References: <20200605132037.GF5413@sirena.org.uk>
 <2e371a32-fb52-03a2-82e4-5733d9f139cc@arm.com>
 <06342e88-e130-ad7a-9f97-94f09156f868@arm.com>
 <d3fe8b56-83ef-8ef0-bb05-11c7cb2419f8@gmail.com>
 <a6f158e3-af51-01d9-331c-4bc8b6847abb@arm.com>
 <20200608112840.GC4593@sirena.org.uk>
 <bb9dbf11-9e33-df60-f5ae-f7fdfe8458b4@gmail.com>
 <20200615170031.GA4447@sirena.org.uk>
 <692bc94e-d574-e07a-d834-c0d569e87bba@gmail.com>
 <2f354ed0-9fb7-59ea-ddd1-78703d9c818e@arm.com>
MIME-Version: 1.0
In-Reply-To: <2f354ed0-9fb7-59ea-ddd1-78703d9c818e@arm.com>
X-Cookie: Offer may end without notice.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_122633_934599_E9A9DE8A 
X-CRM114-Status: GOOD (  12.18  )
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
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 "open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, lukas@wunner.de,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Martin Sperl <kernel@martin.sperl.org>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============2304938353922662074=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2304938353922662074==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dOtxUVmLoGkyu1PA"
Content-Disposition: inline


--dOtxUVmLoGkyu1PA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 15, 2020 at 06:31:58PM +0100, Robin Murphy wrote:

> Now that I've been inclined to go and look up the documentation, are we sure
> this so-very-contentious check is even correct? From my reading of things
> we're checking whether the RXR interrupt function is *enabled*, which still
> says nothing about whether either condition for the interrupt being
> *asserted* is true (RXR = 1 or DONE = 1). Thus if more than one SPI instance
> is active at once we could still end up trying to service an IRQ on a
> controller that didn't raise it.

OK, I've pulled the patch from the queue for now :/

--dOtxUVmLoGkyu1PA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7ny2YACgkQJNaLcl1U
h9Dlcwf/TI9wOgBtOFPjlWSb4Y2ZgnY4A2yEniFWHZl5+Z/hDkPg8DQB5gpHbOJB
aq6nJ/zdl7Ls8/2fAZFBLoKdl1x02xn0g50XxakTsSSVgaumCRRjx/bZkpnWDRMi
hOv3B7MZ/8QIJaoW4XW9h4Gr+FUmYL7OGkVcE0ZfPkN+raFcKBhRC6J3CZODGONN
xa7O7JtoQu8TFEnp97ymMxfxpWdiyGRfkz0eCJMiFLjv+1CUcneJEMDJ+RRZzQbZ
/KAoGLuKCfm0fFD5QlI9XwsSEVpPa0BHmSWbGa+cxxRZMqq0EnmYzL4TT9twKHXi
QK/ulZP2pSHvw+ZBQfDln2Mm1nPbhQ==
=3Gjc
-----END PGP SIGNATURE-----

--dOtxUVmLoGkyu1PA--


--===============2304938353922662074==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2304938353922662074==--

