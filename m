Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F4011A942
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 11:47:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jIjVLmq1YZsrjv8nYLPYGGYGjfp3ok1DQY6CMQg+/N8=; b=SVZFpNvVQhLGtnXWwCtnXApID
	5BKNfgxlKEBp3ito6R3fuBv+/UcIbR0+tUBW+YKKNEHJUGYcvaSuskd8YInVNXi7A/6pkA3olOYS3
	Wi09il6t/mr76m8jV7pgE9+a0x3uh6CwClGawoqiCn46hkSGNfz1JnGeav38S4n4fbIRd4szl41Y0
	K2K7//ask/ec5AngXvNZ/wXthxV8ghiSNsw+b01RzZyHLTZAX1ntcV12MET/JSIw4j6Ma25A6EClD
	GraA3irhvLe5lJRLjx26DhQ2YE29YwQkdKHWm9gU2BGNwy6rDYKJUZQWnstb8cT8BQIaTtyb+i+Is
	6DL0tWwlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iezX2-0000Ze-Bx; Wed, 11 Dec 2019 10:47:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iezWw-0000Z2-RO
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 10:47:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8A4311FB;
 Wed, 11 Dec 2019 02:47:40 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 04D693F6CF;
 Wed, 11 Dec 2019 02:47:39 -0800 (PST)
Date: Wed, 11 Dec 2019 10:47:38 +0000
From: Mark Brown <broonie@kernel.org>
To: Sasha Levin <sashal@kernel.org>
Subject: Re: [PATCH AUTOSEL 5.4 128/350] spi: pxa2xx: Set
 controller->max_transfer_size in dma mode
Message-ID: <20191211104738.GA3870@sirena.org.uk>
References: <20191210210735.9077-1-sashal@kernel.org>
 <20191210210735.9077-89-sashal@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20191210210735.9077-89-sashal@kernel.org>
X-Cookie: NOBODY EXPECTS THE SPANISH INQUISITION!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_024742_929021_B5B9F4B0 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org,
 Andy Shevchenko <andriy.shevchenko@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Robert Jarzmik <robert.jarzmik@free.fr>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, linux-spi@vger.kernel.org,
 Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 Daniel Mack <daniel@zonque.org>
Content-Type: multipart/mixed; boundary="===============8175874803014281267=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8175874803014281267==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qDbXVdCdHGoSgWSk"
Content-Disposition: inline


--qDbXVdCdHGoSgWSk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 10, 2019 at 04:03:53PM -0500, Sasha Levin wrote:
> From: Daniel Vetter <daniel.vetter@ffwll.ch>
>=20
> [ Upstream commit b2662a164f9dc48da8822e56600686d639056282 ]
>=20
> In DMA mode we have a maximum transfer size, past that the driver
> falls back to PIO (see the check at the top of pxa2xx_spi_transfer_one).
> Falling back to PIO for big transfers defeats the point of a dma engine,
> hence set the max transfer size to inform spi clients that they need
> to do something smarter.

This won't fix anything by itself, this asks other code to change how it
behaves which may or may not work in older kernels.

--qDbXVdCdHGoSgWSk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3wyUcACgkQJNaLcl1U
h9B1owf/c2+Di9MxB58DRS++wONQSVLBDBAzhSYBzUcKxUidr6Yieo8WKOq5RnZa
Xfw5SuLTDnTe7S4iXTo0Gn3ejpU1Eb63YvCGs9+6bM4z3lfcU3wIzXUhW7OsmIxY
HVSTa7iqOjusoR7WpboRgWRyFUdvcK4Y6jBUxh5roUD5IIojLGuVmk2QQVLlLaSq
Mpw15lKs5DGIjq5AHQA0vmNDtjAhVdr/mFw3XSqeviIvfQ3H0CTbz6B8RIgiwGZ8
V9HDm7EeEHvb4H1nbeK9ileA1+Sor/2iGHt1Lwrb1xzKZJ+twuU6dB0NAkWcPv5A
JCBMe73eK3vBVARzxfKmxEApfO37rQ==
=C+Pn
-----END PGP SIGNATURE-----

--qDbXVdCdHGoSgWSk--


--===============8175874803014281267==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8175874803014281267==--

