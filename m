Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 180431BAC00
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 20:06:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VMcYlA3z7Toe0FfMTfUo1m4rrXXefTJbDUfqotebNvM=; b=MSAZcDgLaVdnnPjTz7WgOrBpP
	6BoEmqlDOZyVoq0b2uIr8aL+Enov0TBmQV29VNO7Sh/5tDTpXqB77oQIWwLVSJTCbe2kg0yqW3RrD
	PUqydPs5Wf1nsdkwLabMvuvUdZt6ahzfK8clkUgU8beJ6GmiyYYDmEf34GBe06KlJriJOX44xJEF8
	DVcJiHlP0t5qVZgNLuIHgjPAncIk0adEe/WwTI5iDFSPhId7T26f3aj9iYqM4ebNyNCr76GsyyShE
	O7VT8Stfz+louSj7nLHqaTFRbsE9UngJJ19nVr9xVFATo65wTaZGzlriRf5MeJmJzFOGeo3/BYm7c
	2IsGlAj3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT88q-0002nt-0M; Mon, 27 Apr 2020 18:06:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT88U-0002bI-NS
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 18:05:43 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B6E20206D4;
 Mon, 27 Apr 2020 18:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588010742;
 bh=3sQzTpb+6EQHtl/5+DLUwh9oczyqWHopzdygG/nBKq4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QD5I+wu7tUiwLoN/991mjtzmzF6o4uZAAk4sUawxC1Y5pkfnCS7en7gEsecvhWgat
 jaUVnplapxn0VjVZI6srYWtKrplFDpBi+duaXdXr/2i0/6VGfwKTTUTVyM8cdQK0Wt
 irZS8s/ZXa0sba+tRn2fRZHkkZHk4tDTGkliVrhs=
Date: Mon, 27 Apr 2020 19:05:39 +0100
From: Mark Brown <broonie@kernel.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v3 06/16] irqchip: add sl28cpld interrupt controller
 support
Message-ID: <20200427180539.GF4383@sirena.org.uk>
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-7-michael@walle.cc>
 <87pnbtqhr1.fsf@nanos.tec.linutronix.de>
 <87f141bce0a4fda04b550647306be296@walle.cc>
 <20200427174427.GE4383@sirena.org.uk>
 <5d63026fc7c8700c2c7fb15267a9e441@walle.cc>
MIME-Version: 1.0
In-Reply-To: <5d63026fc7c8700c2c7fb15267a9e441@walle.cc>
X-Cookie: If your bread is stale, make toast.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_110542_783404_61E2F608 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-pwm@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, linux-watchdog@vger.kernel.org,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: multipart/mixed; boundary="===============1834729970044074372=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1834729970044074372==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qftxBdZWiueWNAVY"
Content-Disposition: inline


--qftxBdZWiueWNAVY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Apr 27, 2020 at 08:01:14PM +0200, Michael Walle wrote:
> Am 2020-04-27 19:44, schrieb Mark Brown:

> > Looking at the changelog there the "we can't be sure" bit is that
> > coccinelle couldn't follow the flags through from the caller to make
> > sure that IRQF_ONESHOT is set so we're just oring it in unconditionally.

> So it is correct that IRQF_ONESHOT is also set in the driver which is
> using regmap_add_irq_chip(), right?

It shouldn't break anything and my instinct is that it's better form.

--qftxBdZWiueWNAVY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6nHvMACgkQJNaLcl1U
h9ApOQf/S6MhJTO+bFChRr3cqXq9pRPnjvTfkt1e+TT+fIXOh2uMY8mRxXizy7En
nNcSqd3id4MgeW/kEGX7lvy7/oekEZsIqZATQy0THN93fw1n/0t9u22LwLFW00/w
MHfKqmnBMOv+o5aYUrJtsdspfhyS76FcRnaoe5gr6PPYtEbQnWRy4UV3HAPpp5mO
3d+MFa4olzoLwjD7HKkcIbbuWy3QcYgSn7HWfkqRPl+g06FIivX0SqC7kKLvTMzw
++5Oj+jFw8W3sfX0mcnF1U/PieOR5WYuy6PXUKcN4j2zy1XrEbfF3e9k/H6B710c
UOuaJn2BH7J1F4zSNSNQlc4ihuaoPw==
=Y8Z/
-----END PGP SIGNATURE-----

--qftxBdZWiueWNAVY--


--===============1834729970044074372==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1834729970044074372==--

