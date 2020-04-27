Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 866761BAB93
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 19:44:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7oJjCc++XhZGu67QBmk5jnnzjqaE1xQ/ElZ1To72giQ=; b=Q6mOx089MOeiIm08FZSn9RQHb
	f4OW22zN7Qab4+46NiPmnEU+U8LvbxY19krVCVamTTiZ/dSwzjWw29dkQilu4NFcU6Zeo8Dx/rj/d
	G7vvGUjsq/IYRPjiWKMUcNKHBG+BO8bzI5f8E5GMxvqAyb3bV8MsrmETR3ygbIljgK7JLUPUtNJ8E
	m8R8S78evKelUROYpSl7Sx0+ZWAdwe5VW101Rvo1uwtAtLgrfYbzFEQl0MvmHZ3XHZ8BVItqIN0GJ
	FBcBORiWjIVKWfRKxvFKNzhL9uNjt0NmyCa4dHsLFbeZDVBRROYoJQidl56m/noavMEvKJxWiCJ0x
	KTEVqx6CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT7o9-0001vS-9J; Mon, 27 Apr 2020 17:44:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT7ny-0001uQ-DU
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 17:44:31 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7E43321556;
 Mon, 27 Apr 2020 17:44:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588009470;
 bh=ZaQ6rn/s8Kxlhe/QZALln6lZXSTb4k8n2GRkZCZBmgc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jMFO2+XnqLry1pIniBTURC2gvN/tKbjFoUkcjrP4kTyckpzL63R1QvPw+LlJzAsjM
 w9RmIa3QOhKcAnm8ydbtxKubMmPAJjc6+x8mIKbBK7Ys5H3bbIXR5BhxaixwpfZg0m
 RK1NeLYmU2ZSqu0FlSlslEJG3G0I0IOuMbScRvwg=
Date: Mon, 27 Apr 2020 18:44:27 +0100
From: Mark Brown <broonie@kernel.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v3 06/16] irqchip: add sl28cpld interrupt controller
 support
Message-ID: <20200427174427.GE4383@sirena.org.uk>
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-7-michael@walle.cc>
 <87pnbtqhr1.fsf@nanos.tec.linutronix.de>
 <87f141bce0a4fda04b550647306be296@walle.cc>
MIME-Version: 1.0
In-Reply-To: <87f141bce0a4fda04b550647306be296@walle.cc>
X-Cookie: If your bread is stale, make toast.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_104430_486288_547A75BA 
X-CRM114-Status: GOOD (  12.26  )
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
Content-Type: multipart/mixed; boundary="===============0844617833613048829=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0844617833613048829==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nHwqXXcoX0o6fKCv"
Content-Disposition: inline


--nHwqXXcoX0o6fKCv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Apr 27, 2020 at 07:40:11PM +0200, Michael Walle wrote:

> IRQF_ONESHOT, because its is a threaded interrupt with no primary
> handler. But I just noticed, that regmap-irq will also set the
> IRQF_ONESHOT. But that the commit 09cadf6e088b ("regmap-irq:
> set IRQF_ONESHOT flag to ensure IRQ request") reads like it is
> just there to be sure. So I don't know if it should also be set
> here.

Looking at the changelog there the "we can't be sure" bit is that
coccinelle couldn't follow the flags through from the caller to make
sure that IRQF_ONESHOT is set so we're just oring it in unconditionally.

--nHwqXXcoX0o6fKCv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6nGfoACgkQJNaLcl1U
h9Bhuwf+MMHsfmI2RDYY6qZJmxPEgyN6UpeiPwIpozVnZsA0/TQuDxAvV7Iu9PfO
+h9DTbgF3GzRsw9kiWlFgxriyJsdUwvxpYGjS3Rdr2HEWv275fEurdRRXceeeSHZ
w5PoR+ALv2rs+6UVVekmkK3Ht9/eJlVGJyLEYOfddcXTjTs/eezYWZrFNKaLfETD
fP1XXLYorJDv1ovH/P6R6zK+3aunlvBdBHIoQCSh5GoHkAAyNNhayWdKZX1BsIqA
2bc5gQ2WCk83As3jtjwuDiPJRhETrcQT3y/1F7KDxn+SqRE5V51fQiwvbpLtGHsc
XKfax9UH35Ornk7702asjugdC5kd9g==
=+BYw
-----END PGP SIGNATURE-----

--nHwqXXcoX0o6fKCv--


--===============0844617833613048829==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0844617833613048829==--

