Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DAAC1F17D7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 13:28:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IyaZIuPTwDXIbQHt2B2NLOheiTAWnX+8tbnJypJOCVY=; b=V27Xrd5kPBhL4iajR3ts79iwW
	tTmNt/mkQ0i5wDdKJfFbZIB+ByjLDGd9ehJHHECtPZb2QRpmOa39/j6h1Fh6xQy3kFiNY3fXv+EgH
	fyZ60JbZ0Dy1oMAX05xvVvA0S8czDHXZ9G6fJk5QeCXUS0MHToZF6dmHSCDnpQpWYZVswnUpnWD0G
	dE6IJc+hCJ7Rtn0GFVWMEpEZNIb80hsNZUWQGoaRbHhmapUCa0rL9VazQGV0kvqS5fEUb3H7Fe2Hp
	Kn9yN18o6KKM+j7+S92oP4NBeYnpsLKYWtfuEeJzFZFFrgPd/hUBUnuDGQmhey4sQXOziEPerSXr6
	FijUv//iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiFxT-0004N3-2p; Mon, 08 Jun 2020 11:28:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiFxK-0004Md-Sp; Mon, 08 Jun 2020 11:28:44 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 06725206C3;
 Mon,  8 Jun 2020 11:28:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591615722;
 bh=YYeYKTubuK8uMi7Ksz+Evqk5yKQweEpTz0M3eAYB77A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PSssz0ftDvak2V1jNm/rzjE+e3b8E5DOT4ArB6KH14YgxL9PCjBbkPYWE8eSyESxe
 HepGmVKPZIJj9kL9YwUIaPoveXgvhY9UdwnMctjrGkzYwv/Tu1YFc+cPW2+jw9jniL
 oEXhLw2diniklq+QavDjLkejFy7X/SGrDRlF51yI=
Date: Mon, 8 Jun 2020 12:28:40 +0100
From: Mark Brown <broonie@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2] spi: bcm2835: Enable shared interrupt support
Message-ID: <20200608112840.GC4593@sirena.org.uk>
References: <20200604212819.715-1-f.fainelli@gmail.com>
 <142d48ae-2725-1368-3e11-658449662371@arm.com>
 <20200605132037.GF5413@sirena.org.uk>
 <2e371a32-fb52-03a2-82e4-5733d9f139cc@arm.com>
 <06342e88-e130-ad7a-9f97-94f09156f868@arm.com>
 <d3fe8b56-83ef-8ef0-bb05-11c7cb2419f8@gmail.com>
 <a6f158e3-af51-01d9-331c-4bc8b6847abb@arm.com>
MIME-Version: 1.0
In-Reply-To: <a6f158e3-af51-01d9-331c-4bc8b6847abb@arm.com>
X-Cookie: I'm rated PG-34!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_042842_952947_E0CAE95D 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: multipart/mixed; boundary="===============3379190191588297883=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3379190191588297883==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hYooF8G/hrfVAmum"
Content-Disposition: inline


--hYooF8G/hrfVAmum
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 08, 2020 at 12:11:11PM +0100, Robin Murphy wrote:

> Again, 2 cycles. The overhead of a static key alone is at least 50% of that.
> And that's not even considering whether the change in code layout caused by
> doubling up the IRQ handler might affect I-cache or branch predictor
> behaviour, where a single miss stands to more than wipe out any perceived
> saving. And all in code that has at least one obvious inefficiency left on
> the table either way.

> This thread truly epitomises Knuth's "premature optimisation" quote... ;)

In fairness the main reason this driver is so heavily tuned already (and
has lead to some really nice improvements in the core) is that there are
a number of users hitting 100% CPU utilization driving SPI devices on
some of the older RPi hardware, IIRC around IIO type applications
mostly.  I do tend to agree that this particular optimization is a bit
marginal but there has been a lot of effort put into this.

--hYooF8G/hrfVAmum
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7eIOcACgkQJNaLcl1U
h9De6wf9HKTAjmkja1i1t3bz0jmsUYY8xaAjvc0kqwlkowJdSjfUHX/0ahbBtdkn
2/kzIAPvx4B0oTHNyL3hNwMWo8hEGNhRQXwZeJjeR2MJREW6qqOXooWyFCDMJq/z
R1W/rcSbLvGORXBiiFFhpBLEiY5rRRTZXNqw4An12tduk05ZOmpqVdKvCal0i48B
UZ0u1AIdNOmauU8JnlhygidT3ErLH4EIFirK04AhVs8ZFVmKOvfTWzHR/zUXHzdD
MWXKAFJcfcywFnWlqq4yeRpPFbu+c7/Ko4MJZNSpEViAzDUo7wy5SyDP4mXmC+tI
BB0LR91M/J64eJtjSEN8MMW3rGEzwQ==
=CMzm
-----END PGP SIGNATURE-----

--hYooF8G/hrfVAmum--


--===============3379190191588297883==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3379190191588297883==--

