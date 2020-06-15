Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 427E01FA1FA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 22:49:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BQ+JhUQsyLOhotmu5eRpYtMgnZYDk7Jd3NQPbf/u29Y=; b=Wsvp14soQsnBvNcwK4ldCcwC7
	Fz3hHbTeggihv85NprE1b1GSQtE5MMS1SMsFSDaQdj35oZfIs7QzEw5NNQWTQGjH+uu/rqvmMIIGu
	Y2kDm6lYJKYGIds0761Br1+ciu306iRPI5TnXvLICQaZrU/VWYIKoQv0N8qIoh5Iu7lTfLF8qF24L
	5/cLDgkUrv0/ZHX0c3BsTRkwzD7qAAYCitVjUvhAnM4V69u9NcIdgfFDNUU+aREKyUX3U1UHqF0GR
	zlDEtpvl8qh3/maT0UlIazotRKIGuIRKbTEmMskaIPo/+vT12Dil4OdE/wQoxohJ7VJ3uw1RDOGsl
	BsNLehVRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkw2R-0004WK-Ri; Mon, 15 Jun 2020 20:49:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkw25-0004Ge-Mx; Mon, 15 Jun 2020 20:48:42 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DC1F62074D;
 Mon, 15 Jun 2020 20:48:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592254121;
 bh=wo+re6s2YDnW0mUOtFNK3Gv5qenkYP/Ioxp0Ii0ipxk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=L9bF2WuOC/XYQjJ1bZnbdmypv0LffpNr8hVmWkop5+13+AmcUErcAInWJ68Yn0qqg
 xtfvmizZti3ycCopliDMI17OZbSkRMUkSGMBnkVExAHB7yEsFK9F5pxuZkDjfgVgt6
 5GYlONQY7SQWv8T1RjbBgJ+yyfD0DetFOD9sboPY=
Date: Mon, 15 Jun 2020 21:48:39 +0100
From: Mark Brown <broonie@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v2] spi: bcm2835: Enable shared interrupt support
Message-ID: <20200615204838.GD4447@sirena.org.uk>
References: <20200604212819.715-1-f.fainelli@gmail.com>
 <142d48ae-2725-1368-3e11-658449662371@arm.com>
 <20200605132037.GF5413@sirena.org.uk>
 <2e371a32-fb52-03a2-82e4-5733d9f139cc@arm.com>
 <06342e88-e130-ad7a-9f97-94f09156f868@arm.com>
 <d3fe8b56-83ef-8ef0-bb05-11c7cb2419f8@gmail.com>
 <a6f158e3-af51-01d9-331c-4bc8b6847abb@arm.com>
 <20200608114148.4bau4mdcvwgf25ut@wunner.de>
 <3d4fd3f9-9bde-90a8-bef5-9fc97cc9b363@arm.com>
 <2e4a6c4b-857f-1000-e7fd-327b0800fb97@gmail.com>
MIME-Version: 1.0
In-Reply-To: <2e4a6c4b-857f-1000-e7fd-327b0800fb97@gmail.com>
X-Cookie: Offer may end without notice.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_134841_779718_9B7D3D3B 
X-CRM114-Status: GOOD (  11.09  )
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
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Lukas Wunner <lukas@wunner.de>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Martin Sperl <kernel@martin.sperl.org>,
 Robin Murphy <robin.murphy@arm.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============8342314274501051465=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8342314274501051465==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+Xnt6BZa+I2KmHWw"
Content-Disposition: inline


--+Xnt6BZa+I2KmHWw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 15, 2020 at 12:42:50PM -0700, Florian Fainelli wrote:

> Or how about this: we slightly re-structure the interrupt handler such
> that all possible interrupt conditions are explicitly handled and
> terminate with a return IRQ_HANDLED, and those which are not, including
> in the case of a "spurious" (because the interrupt was triggered for
> another SPI controller instance), then we finish the function with
> IRQ_NONE. This would not impact the performance for the BCM2835/36/37
> which would still have a single controller/single interrupt line to handle.

That seems sensible - it's generally a good way to structure interrupt
handlers.  It's almost there already.

--+Xnt6BZa+I2KmHWw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7n3qYACgkQJNaLcl1U
h9DisAf6A5UOQQuqIInhodRjyyOGfjW8rSDr/5WD85MI8WAWlgspNB+6CifvPJk+
+/yjv693s/Qlzec/Yg+M92TBor94AU3VWYiT1re9UoFIu35WAPSCL1A4E6imwUxs
cYJgHI0eE3L2muigphjbBlhUufPTRm2BDAFaHZhGTuJvRfCbbfPZdV555Fxa3r6w
GVdrs5U40M3TsJ4Wy/ht3mcnF5jRc3OvpsLAIMeVadzsNzG80GNbCn8RYaKPnUPD
OjxdMc4lA3HhZRqiYvUjUEmG4U0MXSb1DoC+8/tr/rfj6yOn+su94phT6RXF3plY
CObjpS476p9DJlmYVYA54/uj06NWpg==
=1R8u
-----END PGP SIGNATURE-----

--+Xnt6BZa+I2KmHWw--


--===============8342314274501051465==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8342314274501051465==--

