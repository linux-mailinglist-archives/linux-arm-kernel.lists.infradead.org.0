Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F4B1EF8D6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 15:21:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iIcYMI6+bMq7LcNRPD82m3+f/KJFMYz6Eh9u58afSAs=; b=mBndJT3tQ/xthyvSiA+RkYVHa
	jLbx4etZ1MRStfxukAb6mNpEdDG03hUrIZjeoluhpc5sSH6Fl/A9MqO27NId+St4QWR7t+reXjaMQ
	Fxpx5xZ+dFj8NFGphj2Re23cOay7c7oCvOSw4zme5NXMa5u3K3mMLKR0r7we+rrrrB4SRg9jJhS3T
	b5O2OR2K7DL/I5sWJFlBdk4qqitAbCNdVH3K/OLxbl7GIdU9VwGa2L/dzLLDpEgugNovgAJTFJr/T
	ryYqXTeBlS6kx/+DNhb5WpS53texu7KhL8Px/tg7xquGFwkMTm46ryY5wfQwzSuBRkccJMYVLb0du
	3mVioHihg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhCHG-0005t7-FK; Fri, 05 Jun 2020 13:20:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhCH2-0005sM-Aj; Fri, 05 Jun 2020 13:20:41 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7F5F12065C;
 Fri,  5 Jun 2020 13:20:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591363240;
 bh=8BjtpV0ecJEgsvWK1ul8PsDdqfyLu30JW/S3Yqv/vGM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1v1uwO8oSoExJnTbaNzm0VXW7Zl1MvMc119/QvOAbE7qh1tXndCPo0BkPisP1ReJR
 v7/OIXvCo7vyHQe1J1N/w1iEq8jqKHFD95mSV18DIj+OArLVfblrmtiKQIGCVkIGoL
 BZyOkkIORbn8a1ip7RS/L5YtOlIIkC2KHPcpHXTE=
Date: Fri, 5 Jun 2020 14:20:37 +0100
From: Mark Brown <broonie@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2] spi: bcm2835: Enable shared interrupt support
Message-ID: <20200605132037.GF5413@sirena.org.uk>
References: <20200604212819.715-1-f.fainelli@gmail.com>
 <142d48ae-2725-1368-3e11-658449662371@arm.com>
MIME-Version: 1.0
In-Reply-To: <142d48ae-2725-1368-3e11-658449662371@arm.com>
X-Cookie: Air is water with holes in it.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_062040_392485_77280AB4 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: multipart/mixed; boundary="===============1197448638727453790=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1197448638727453790==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+jhVVhN62yS6hEJ8"
Content-Disposition: inline


--+jhVVhN62yS6hEJ8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jun 05, 2020 at 12:34:36PM +0100, Robin Murphy wrote:
> On 2020-06-04 22:28, Florian Fainelli wrote:

> > For the BCM2835 case which is deemed performance critical, we would like
> > to continue using an interrupt handler which does not have the extra
> > comparison on BCM2835_SPI_CS_INTR.

> FWIW, if I'm reading the patch correctly, then with sensible codegen that
> "overhead" should amount to a bit test on a live register plus a not-taken
> conditional branch - according to the 1176 TRM that should add up to a
> whopping 2 cycles. If that's really significant then I'd have to wonder
> whether you want to be at the mercy of the whole generic IRQ stack at all,
> and should perhaps consider using FIQ instead.

Yes, and indeed the compiler does seem to manage that.  It *is* non-zero
overhead though.

--+jhVVhN62yS6hEJ8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7aRqQACgkQJNaLcl1U
h9DI1Qf/Tz5aGiXqtwU/k3+gw6+ficRLOe7pkUSPRyQIDVciDPUy7ytsm0jw29uw
8SGzHF424tB65sfcrF+DHOEYXQRxMhKGJfZgQlPpENPIzuN/6keGkfQ9F8iNgUHe
e8yOJRLUXEte7TB+5GOmQJnFY3prtrRTIE6nl3NJaOiO7zoX87nVXAJmt/+scwjm
/RPUYi1A76q3Wj8ntaakVEyxYG1G6tKk8Fq9UF8AfTiQ0MC2EZmfzd/refGIJfD8
L2QTTwMIB7erragBJbjTX9alKe3/qkYlSS27+HGIg/HC+P2mODP9hJg67ZqLVPPr
AeJLVJyfEzBWbzeii15aKq82J0fXsw==
=aGmF
-----END PGP SIGNATURE-----

--+jhVVhN62yS6hEJ8--


--===============1197448638727453790==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1197448638727453790==--

