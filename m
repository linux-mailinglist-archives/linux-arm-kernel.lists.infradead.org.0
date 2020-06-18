Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC9C81FF03F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 13:10:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DSF6ceLLfXoOQek/UNu3HceMTahDDxvHSWbn2kVopMM=; b=JC6MVMZ6NSxVnquwY8ZjSi8sN
	hei1LfwZWKKcL2sXseO+mcAQZKv6n1/R1LdwUxcLieAlYxIKRk0ok4NQeJtSU2Mp5tscmXNfBb39r
	2RRNN4UNiSqKbTF5IwOM/rVkBa/458eZ63aO75+FdfAzeRIIvPrhGzGiN2kH/h7yopIXC44qVfdZs
	MJVJkLfAT2YqkXP2P3fSGY7e+F0K0+OpbzZwaDswYL6V7nPq5G5pgH+ENH0zKAdpee1aLVtzHcl78
	C9Yeer4IhaUXWWVhpLGSyMg8aKq2DO2bfznTFMFjRjg9qDmmQa3GxheYaV4G5z5KKV+xJ5utwqIgU
	sXk4BHPMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlsR0-0002SS-OA; Thu, 18 Jun 2020 11:10:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlsQq-0001XY-3P
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 11:10:09 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B9BFA2078D;
 Thu, 18 Jun 2020 11:10:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592478607;
 bh=9s6Wyhe9pYAC3VVIw7629js9Jb5aKrb4IUxiFgGqm3Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OHjUyyZk77g7rFyiuxjkusPCBhr/N/W80fCNPiHfTXD+yTBEM4XeG/A2vaDYps12W
 hNvWB5yakMJTVxQrH12IyG7PYYVTKxeLLD3z7qCH/B8LH8/WBBZ2HtAOHQXMAhsuRW
 i7BIMbX1AU4/Ax/qZs5rS+3q4ulVdkjT0j+ht3Lw=
Date: Thu, 18 Jun 2020 12:10:04 +0100
From: Mark Brown <broonie@kernel.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v3 1/1] mfd: Add I2C based System Configuaration (SYSCON)
 access
Message-ID: <20200618111004.GF5789@sirena.org.uk>
References: <20200618080223.951737-1-lee.jones@linaro.org>
 <CAK8P3a3iRmXC2jDj92QHKqyD+x_UJ7rWU_KcGt=MFOD9UW38RA@mail.gmail.com>
 <20200618100704.GC954398@dell>
MIME-Version: 1.0
In-Reply-To: <20200618100704.GC954398@dell>
X-Cookie: Androphobia:
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_041008_179330_3E0F41FE 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: DTML <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 gregkh <gregkh@linuxfoundation.org>, Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, michael@walle.cc,
 Rob Herring <robh+dt@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============6993333310170314723=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6993333310170314723==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wtjvnLv0o8UUzur2"
Content-Disposition: inline


--wtjvnLv0o8UUzur2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jun 18, 2020 at 11:07:04AM +0100, Lee Jones wrote:

> Does Regmap let you register/initialise an I2C address more than once?

> When I attempt it, I get:

> [    0.522988] i2c i2c-0: Failed to register i2c client tmp105 at 0x32 (-16)

That's not regmap, that's the I2C core.

--wtjvnLv0o8UUzur2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7rS4sACgkQJNaLcl1U
h9Dl1gf/Zr4G4iqC1b7LIlHVA5rpT17+P/nHXKbb2jLXw2yw+gvkK03x4xEbGurw
ZUP2iZyCovu56VFHlIQeDUEJyVDt+8HKl2pcYxZMvTjs1xagjVPOJAeo1rjKgYaN
STH6iacWeUejdQN3HkcwqF4NbapIqoFXoxG9rLQnbNxrLt+QGPzzJNiPkCaWqdkd
FWxzU2l+/4pmVprMkBcG+j3FLqpZqy0G3U6Xxmf81ufaD4yqRtBsY7JEAinijAh/
57ypLQbhP4LSjNE0bAwK1xbD51J7e22Ev+HGPbLALcYRElVKLw96GjCLikXrXoIm
Do1MeaNZ+RuWEjn8xUBhzyEstiFHRA==
=JFIi
-----END PGP SIGNATURE-----

--wtjvnLv0o8UUzur2--


--===============6993333310170314723==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6993333310170314723==--

