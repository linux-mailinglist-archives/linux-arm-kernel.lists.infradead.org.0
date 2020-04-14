Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 721C31A89D1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 20:39:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YXH5NTP9oATmyymEys234eufbxpBmzWbPTrGxddhJxE=; b=BcKF88cLQraACl96qYI5pjMdi
	dwFnhny2hvLlxrrkLskd2IaAGYj3C5bc4xesiP2RIq8UTHsu+qa/n2Gn28fFEj3XveNf3lsLnnzAq
	ShH1TS/s99+PF+aU3WOV4q/RtyLL81iV2abrvVOwVkZ4JV1v/nY3S6nFsOuFSy8HfgVqzz7tZmUf8
	J42E1QLXJrB2aO5Ivn25XKF8pnwj62u7YGonevQPPHkr+QJbN3g2R1q9zPdpu1vxqyaVYuLelP3pL
	9Dal8aQoOCtCe/oiIQpdVuNFWPlImgicsT5eIraMPDgBez1uyL0MY4kNKCHaFUC+idLUzinUbD9jz
	gy5MbYCmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOQTC-0004JF-PL; Tue, 14 Apr 2020 18:39:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOQSx-0004Gq-Vf
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 18:39:25 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 030CD2076C;
 Tue, 14 Apr 2020 18:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586889563;
 bh=P4rgnvp+ubvr6gQQwx96f5n8r83/w0mRlcAt7NxMf1Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ww0nYJB4QPCYiyCRxxrz3MhjaV8MiazOYKP+JMlOoHG2mbl+ChLoBBcrOipv2bynr
 B20L1Mj7Hi2EyxZG0mfBSrEA+lwtlYNctnTC7UWNAjwpWou1DgNqwMLKtwb2+q7N60
 usjUjbY8yBBBG0upAxAMQXtDr65r+D74Qk8q/NYI=
Date: Tue, 14 Apr 2020 19:39:21 +0100
From: Mark Brown <broonie@kernel.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v2 10/16] gpio: add a reusable generic gpio_chip using
 regmap
Message-ID: <20200414183921.GN5412@sirena.org.uk>
References: <20200402203656.27047-1-michael@walle.cc>
 <20200402203656.27047-11-michael@walle.cc>
 <CAMpxmJVE3PgVCxkQ-ryc5=KSrKcpdmk1cnJUxJBz9QFCx-e_+A@mail.gmail.com>
 <80bd8661ec8a1f5eda3f09a267846eaa@walle.cc>
 <CAMpxmJVC7e9JnHzBo-h8M1+KmcA32=Rvxo7+znH=-kAbcCr_LQ@mail.gmail.com>
 <e0388a2137e23d76b2415a7549c01dd1@walle.cc>
 <20200414172129.GJ5412@sirena.org.uk>
 <fa605af3aee48f0bc62133f398ed7c5d@walle.cc>
MIME-Version: 1.0
In-Reply-To: <fa605af3aee48f0bc62133f398ed7c5d@walle.cc>
X-Cookie: I've only got 12 cards.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_113924_062721_8FF1C3B9 
X-CRM114-Status: GOOD (  15.86  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>,
 linux-devicetree <devicetree@vger.kernel.org>,
 Jean Delvare <jdelvare@suse.com>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 linux-gpio <linux-gpio@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: multipart/mixed; boundary="===============2902069280183737485=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2902069280183737485==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uWbmMdDzzl2TXAgx"
Content-Disposition: inline


--uWbmMdDzzl2TXAgx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Apr 14, 2020 at 08:36:23PM +0200, Michael Walle wrote:
> Am 2020-04-14 19:21, schrieb Mark Brown:

> > You could define REGMAP_INVALID_ADDR to be (unsigned int)(-1) or some
> > other suitably implausible address and use that as a value.  It's
> > possible that there might be a collision with a real address on some
> > device but it should be sufficiently unlikely to be useful, especially
> > if it's not something regmap in general goes and evaluates.  For extra
> > safety we could have an API for allowing users to query the register
> > validity information regmap has (or can be given) and gpiolib could then
> > use that to figure out if the value was actually a dummy value but
> > that's probably overdoing it.

> If possible, I'd like to have the opposite logic. That is, if it is not
> set it should be invalid. If we have a magic macro like
> REGMAP_INVALID_ADDR, we must assign it to all the unused addresses. Thus
> every driver would have to assign all addresses and if in the future
> there will be some added, we'd have to touch all the drivers which use
> gpio_regmap.

Sure, for that you'd need a separate flag since zero is such a commonly
valid address.

--uWbmMdDzzl2TXAgx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6WA1gACgkQJNaLcl1U
h9BAjwf/bIsieXPSNQdoyPsGYQ4OjkmRX200mVnxW9V8WW1aT87hmD5XwdcUz27T
0oXCpdsy7VDE5l4T7iDCXzXW1++aQW/mOE7MW7fgfDLWe212XUBcKluVTQ77+1wo
z8FEPPjTRReUzy4LyvEtOuPv8S/wEeHOaPxuyOhhNacw5Sa/Wrmoj3UJRsUzB/MG
Cm0W3nRmAIw1VeyMwP89BNeTXYdbqUojlBRj5DZRhXziF7L6YyLe8nMH3ZN+JOq7
Od3cD4VROPQ3xfDaeCEG8QsoHSwZXYG+2kF7DjgWvC7zliuISkElPje0uK2KEHHJ
aaGR4e5qeBL5Nha6oy2QwhRMN1Fezw==
=I4w+
-----END PGP SIGNATURE-----

--uWbmMdDzzl2TXAgx--


--===============2902069280183737485==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2902069280183737485==--

