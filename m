Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4748C1EF5B8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 12:50:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tzJG9spfnqNahEWcx7SvCjPV2et9vzrndqPJ+HhG2Kk=; b=Nm25NYEQsf2eYBlCyHmAHYdCl
	0OJJ5G4lxaIutoFc4lzfP8LcuctoY/v+xkYXUR4xKO4uMOYAAXWDXsKLGNQkJVLKGDwo7Ho5vsMNu
	ODm0SwffAWHodqW+PEmp/ovJE4nkuJ7pPAoNSGvH/hD4fVY4jkyMP0XXKNQgUqlotN7sQG5gTU4f+
	RlgUkXYeHwnlGF1+TnyWTWUA2sNeARE0bSpql37KIOy4jsmmCG0vqCPrNE6elxQgFMfrRzdjg9woW
	Ena78XxjxbzG4Igo7wDgtJretGflvcR5Fy56X5q/aMOiFKq6sJy617ebjZRdeY1aQ2YgUc+Q/MeGf
	vm9yQcACg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh9vn-0005ks-EX; Fri, 05 Jun 2020 10:50:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh9vg-0005kE-Fs
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 10:50:29 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A76F020772;
 Fri,  5 Jun 2020 10:50:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591354228;
 bh=ZkmdIlShUAFHW0pi3QVcOWNFuQmL8jmheacHFvaENQw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GLcE760t5aG1mrGcTjrY4oXPhQP87W9f9FHSm2jzdENswX23N78yJytXBV9GNzkbR
 HeuVUKObU3X3hnvgtT8mG7IFX03o5feVM1EquN4xEo/fghn9zFIRczyA+hbjD+dXba
 9nY+/TtMcuy1enmXJQ+j+FTTmmFZ/Qpp2ep9hZCM=
Date: Fri, 5 Jun 2020 11:50:26 +0100
From: Mark Brown <broonie@kernel.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v4 02/11] mfd: Add support for Kontron sl28cpld
 management controller
Message-ID: <20200605105026.GC5413@sirena.org.uk>
References: <20200604211039.12689-1-michael@walle.cc>
 <20200604211039.12689-3-michael@walle.cc>
 <20200605065709.GD3714@dell>
MIME-Version: 1.0
In-Reply-To: <20200605065709.GD3714@dell>
X-Cookie: Air is water with holes in it.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_035028_546489_C46FCA67 
X-CRM114-Status: GOOD (  15.59  )
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Jason Cooper <jason@lakedaemon.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, linux-watchdog@vger.kernel.org,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Michael Walle <michael@walle.cc>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: multipart/mixed; boundary="===============8351393405076470264=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8351393405076470264==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="s9fJI615cBHmzTOP"
Content-Disposition: inline


--s9fJI615cBHmzTOP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jun 05, 2020 at 07:57:09AM +0100, Lee Jones wrote:
> On Thu, 04 Jun 2020, Michael Walle wrote:

> > +	sl28cpld->regmap = devm_regmap_init_i2c(i2c, &sl28cpld_regmap_config);
> > +	if (IS_ERR(sl28cpld->regmap))
> > +		return PTR_ERR(sl28cpld->regmap);

> This is now a shared memory allocator and not an MFD at all.

> I'm clamping down on these type of drivers!

> Please find a better way to accomplish this.

What is the concern with this?  Looking at the patch I'm guessing the
concern would be that the driver isn't instantiating any MFD children
and instead requiring them to be put in the DT?

> Potentially using "simple-mfd" and "simple-regmap".

> The former already exists and does what you want.  The latter doesn't
> yet exist, but could solve your and lots of other contributor's
> issues.

I have no idea what you are thinking of when you say "simple-regmap" so
it is difficult to comment.

--s9fJI615cBHmzTOP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7aI3EACgkQJNaLcl1U
h9A7hQf8CDFQ5iLpXTLY4zeynMxyWKwNzkV4jtp9HDi0METL6K488ki/EvosVeJx
URGVB1pt6HfuZ+wo9eI4viS324oVbqB+OLEP2C2JT9IueDFeFAVv/ZID0FjrKlB8
3L1IaFXplUYVhcSJGxL+9p6BB2RpY2jKupLmYwudJ2RKDIT/sf011ENofTZR2i/7
mHJQsYGSN/zKTcrZm9cmx10BOmpL5aSq0hwcOM1qYqPn/tlSs09ErRh1+Tisxg+U
3ZTBCjG5cDlPj0KIBfoZkJapLQ3YklicCzY2LTKFvP1bxloxYa4iyyy0O5oHdBaK
vL9TOwYXvPCnUOSIH1toNvcVphaLDg==
=gwiS
-----END PGP SIGNATURE-----

--s9fJI615cBHmzTOP--


--===============8351393405076470264==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8351393405076470264==--

