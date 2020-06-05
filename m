Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDF41EFC7B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 17:27:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xmH5ix4Z00PxdO40topckkD67QoAJpUbgQE7QEBTB4Q=; b=mW5JOe5JT7hvRkivhkPRD1GLc
	bcjfQ40QmN9W8KcfMK+BZiZBUJNP3Yxh1dzz1hub4culuILiuo+7kN3eopbw5c4kN3TNDbYxFa3Nk
	4Rgdwl2eJxMXO2w2rPHNl9UfdH4DIVhuACaxJWQ2SaQNrgZXdbclICI8o5vSsS2xnjkaq7Cs3xnbS
	vXgaSqj2/yRn9pu+tZS6GLTG77GMGS4QpJBLl23oSfzJzC4YQxfK9xjHfcaMvXTTQIomYIw1wDAtL
	TJjMBxL2hRfxiMuK3jiYJc8iQPKICrasahSkgduHIqtF3S9CSEngp13mouAvTkSTg5ByEA6neQvWu
	7IIC3r0lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhEG5-0000FP-0J; Fri, 05 Jun 2020 15:27:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhEFx-0000Ey-Nu; Fri, 05 Jun 2020 15:27:42 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E7F722075B;
 Fri,  5 Jun 2020 15:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591370861;
 bh=cwE6lN0oRc3R/lRo7XRlwrgGSlMb3orxHCcOBwJlZXA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=q5Jmn118NsrWlHCB8CdqciMyPXagQuykia3JVFkCcJCzYTmb1v3C3l6d+WqCBuuxg
 X2D0lPfLpPM/iw1FJuKwWoyG8o5jVxndq+h3q1ezTpdrSa4BM+BkILAyqPPcR3NN9X
 0xR/4sbzqBqkW8UAQT5sfhnTNG3o1kdFnjP9RbwA=
Date: Fri, 5 Jun 2020 16:27:39 +0100
From: Mark Brown <broonie@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2] spi: bcm2835: Enable shared interrupt support
Message-ID: <20200605152739.GH5413@sirena.org.uk>
References: <20200604212819.715-1-f.fainelli@gmail.com>
 <142d48ae-2725-1368-3e11-658449662371@arm.com>
 <20200605132037.GF5413@sirena.org.uk>
 <2e371a32-fb52-03a2-82e4-5733d9f139cc@arm.com>
 <06342e88-e130-ad7a-9f97-94f09156f868@arm.com>
MIME-Version: 1.0
In-Reply-To: <06342e88-e130-ad7a-9f97-94f09156f868@arm.com>
X-Cookie: Air is water with holes in it.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_082741_799278_665EC92A 
X-CRM114-Status: GOOD (  10.60  )
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
Content-Type: multipart/mixed; boundary="===============4898714807497220786=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4898714807497220786==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="AqCDj3hiknadvR6t"
Content-Disposition: inline


--AqCDj3hiknadvR6t
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jun 05, 2020 at 03:41:27PM +0100, Robin Murphy wrote:

> Ha, and in fact having checked a build out of curiosity, this patch as-is
> actually stands to make things considerably worse. At least with GCC 8.3 and
> bcm2835_defconfig, bcm2835_spi_interrupt_common() doesn't get inlined, which
> means bcm2835_spi_interrupt() pushes/pops a stack frame and makes an
> out-of-line call to bcm2835_spi_interrupt_common(), resulting in massively
> *more* work than the extra two instructions of simply inlining the test.

Whichever compiler I was using (clang-11 probably) did manage to inline
the tail call so it really was the two instructions but yeah, in general
this approach is going to be fragile.

> So yes, the overhead of inlining the test vs. the alternative is indeed
> non-zero. It's just also negative :D

And variable!

--AqCDj3hiknadvR6t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7aZGoACgkQJNaLcl1U
h9AX6gf7Bm5ytifNBvydJuvs4NzgM67Urhjfzt+XzOq9aPGD/YyTV42HNCmGAqGy
SK5nGgR0rYbNixHVpe8BR8sR7ouoD+RplUaa6HByo8h538lDdtImQw5mxOM7jSqj
YqJQrm1hwA4Exl+b3ko3Ec3LfHP8Z+IPS0pbuhibX42asNbhDsUc7dKMVGOPsA0m
M06K9koGLwc5XEs7+4ylBVfqhTKIQSiHeg8K1TJ3VQEFBqOCBoURI0TLPUPo3PYV
vg5NvWtlPqYwBj/gWm4+jdTPM2Ru10LTa+jU3KnroOtJSBil2tErrvKb31iWGgS5
ECVrLTGILzwbt5Gq0ojVE1LsJVSmqg==
=/uNB
-----END PGP SIGNATURE-----

--AqCDj3hiknadvR6t--


--===============4898714807497220786==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4898714807497220786==--

