Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 013841A8754
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 19:21:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=W6M9Ukpyywh8LuuEvVOeQgZDVKO4ZMElUw/1vdhpMbk=; b=tGeB3F1ownkdpzkplThTcnm27
	LXfIL0dxHa6F60Hk544k0TS8c29Eaz6ztMIiwxQXLZp/hQlyEWupO4X+T0Eo7nWMgoiIF8fcvV6Hc
	pf8LcIEN8UyPzznAgI3fmfuCTGGcbsWZc1vz15OOT3VIVhPij/nUDFQa9lidqULX1dYomSZfKr0Um
	enYHq6ozHiaMv/Lmzx3sLgrX46Sq1S6WIQktIq7QKH3QLvQIysg0xLaZqA6WV8t+/p3uCTG87uMBp
	xlK/FIaJRZYew6Xk2KsTW+yJvCdqZP80ZoqPiG6VgpbMWJevOhfHjP9l2WvIRM35xeSgglj4Vqs+M
	lrw+7j2gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOPFr-0005oZ-J9; Tue, 14 Apr 2020 17:21:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOPFc-0005kX-SA
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 17:21:34 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CE77120678;
 Tue, 14 Apr 2020 17:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586884892;
 bh=hqDprYjabFxBscfVEG0+5dvJzqZCcHd1opdmPnhd2Ak=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=h+nY5DfVYhJx8o/ujjNNyx0kjonVY+DPsN2UhfHMYXXuk8Og3wt4jhCpynBMBQsd2
 p21D/wQE6MCWwIlH0ZmgjFqR0D+M4Je8cOa8cweBdHkm6ikP4EFafxr6YWy1ePAAbi
 0NzuUD49CAh9h2IhLW6bGuhkMptucBaXFvPmYvhk=
Date: Tue, 14 Apr 2020 18:21:29 +0100
From: Mark Brown <broonie@kernel.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v2 10/16] gpio: add a reusable generic gpio_chip using
 regmap
Message-ID: <20200414172129.GJ5412@sirena.org.uk>
References: <20200402203656.27047-1-michael@walle.cc>
 <20200402203656.27047-11-michael@walle.cc>
 <CAMpxmJVE3PgVCxkQ-ryc5=KSrKcpdmk1cnJUxJBz9QFCx-e_+A@mail.gmail.com>
 <80bd8661ec8a1f5eda3f09a267846eaa@walle.cc>
 <CAMpxmJVC7e9JnHzBo-h8M1+KmcA32=Rvxo7+znH=-kAbcCr_LQ@mail.gmail.com>
 <e0388a2137e23d76b2415a7549c01dd1@walle.cc>
MIME-Version: 1.0
In-Reply-To: <e0388a2137e23d76b2415a7549c01dd1@walle.cc>
X-Cookie: I've only got 12 cards.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_102132_971794_CCDB900B 
X-CRM114-Status: GOOD (  12.37  )
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
Content-Type: multipart/mixed; boundary="===============7544783520545116329=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7544783520545116329==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="LQAwcd5tHl0Qlnzi"
Content-Disposition: inline


--LQAwcd5tHl0Qlnzi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Apr 14, 2020 at 12:07:01PM +0200, Michael Walle wrote:
> Am 2020-04-14 11:50, schrieb Bartosz Golaszewski:

> > Maybe setting the pointer to ERR_PTR(-ENOENT) which will result in
> > IS_ERR() returning true?

> Unfortunatly, its not a pointer, but only a regular unsigned int (ie
> the type the regmap API has for its "reg" property). It could be a
> pointer of course but then the user would have to allocate additional
> memory.

You could define REGMAP_INVALID_ADDR to be (unsigned int)(-1) or some
other suitably implausible address and use that as a value.  It's
possible that there might be a collision with a real address on some
device but it should be sufficiently unlikely to be useful, especially
if it's not something regmap in general goes and evaluates.  For extra
safety we could have an API for allowing users to query the register
validity information regmap has (or can be given) and gpiolib could then
use that to figure out if the value was actually a dummy value but
that's probably overdoing it.

--LQAwcd5tHl0Qlnzi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6V8RkACgkQJNaLcl1U
h9AnZwf8CXCh0WrZ2WtwfdTJ1yX5W12AkMOk5xoWSFXC9PzRicdAquQGHN0U0Qan
v2iy9fXKFP9/vjkpNOP0q8hzXFoFbxcDvTTPUcPJV9Xd/bJ/X2OTXn7qKKLxIA0q
8i5t5KXA1+3upDL3nzJvH/dZULUUz7vP7m1SrwkowgS4asnOJVMfa8vGJLbnxhT5
m9MjUO206PwDS/sUpsK36S+4ccbV5Nzdq50Ce9sWr4szpQnKtAFb0Z8Q9eriTl15
hJxwRBCZJLqzXLYIGVC0eJPv9YrbG3YLM+x+Hb6oxzOuHRWU5B/Kv8n01YeHW5A1
Zk21Hdv+mJcVD0qTQ1dNFzb4QzAp5Q==
=mDDb
-----END PGP SIGNATURE-----

--LQAwcd5tHl0Qlnzi--


--===============7544783520545116329==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7544783520545116329==--

