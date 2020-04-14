Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48EB81A8731
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 19:13:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZjRf4d1h10Wa0LFNWvDBb5kw/Zz7ibE+lDwUjj3W76U=; b=Bq49ezbVcz+hWHL9xgpFXnIW5
	XWtgJM6RFXWRSPWPBfwwrLJBMjVkbKr9FYbsUAAFEh7/0UrI8ivkHDY1lPy7lDgTWvP486qw5OA2Z
	thNlBjR1MouXsBUSlJ+2MKb5OzROiM/Ig8tqpr/8gbbV4AYSnJPIPe2cZn7ybacZt5lLZget4kPhb
	qIkaFmgBoFeP5aQojbEXOmo23oJqp7OqgAVm4AO1kAGfqhKz04T5b9H8Hrrh3DYDB+Wi83/SUNLGj
	bcKAlJ3rhlgX/ljFGhhDyXQfsm0Nwe0FzBSOYFVgplDJ8zDFVXG7aysrdTiaCKIggJ4s9L0LAFN60
	HQwPYPMjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOP7m-0006Du-DW; Tue, 14 Apr 2020 17:13:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOP78-0005pr-CR
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 17:12:47 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6937C20767;
 Tue, 14 Apr 2020 17:12:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586884366;
 bh=+qcyIZF6Y3PyicvWS4ejyY0zwsK0szUsXLI7l22j8W0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PbluDEd8klbe4xkNX9xFsE670ESHTTOhjhaQFVoprnCTaU4ZEjH5UTUWLd+mTSI+6
 DSQqhWkIQPD3yBIeAJU1asNH6AEgt5USvO7Kqa+X6ECZCi+OKRLsnOvTCTR+BmFAPw
 EQDmo85zc+VWDvUZDPnadGVNgStkGN6AM/MaH5iQ=
Date: Tue, 14 Apr 2020 18:12:43 +0100
From: Mark Brown <broonie@kernel.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v2 04/16] regmap-irq: make it possible to add irq_chip do
 a specific device node
Message-ID: <20200414171243.GI5412@sirena.org.uk>
References: <20200402203656.27047-1-michael@walle.cc>
 <20200402203656.27047-5-michael@walle.cc>
MIME-Version: 1.0
In-Reply-To: <20200402203656.27047-5-michael@walle.cc>
X-Cookie: I've only got 12 cards.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_101246_444270_F69A7C4A 
X-CRM114-Status: GOOD (  13.77  )
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, linux-watchdog@vger.kernel.org,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: multipart/mixed; boundary="===============0986820805793301348=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0986820805793301348==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Q59ABw34pTSIagmi"
Content-Disposition: inline


--Q59ABw34pTSIagmi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Apr 02, 2020 at 10:36:44PM +0200, Michael Walle wrote:
> Add a new function regmap_add_irq_chip_np() with its corresponding
> devm_regmap_add_irq_chip_np() variant. Sometimes one want to register
> the IRQ domain on a different device node that the one of the regmap

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regmap.git tags/regmap-irq-np

for you to fetch changes up to 12479382877dcf6623af4676caa8d3c647469a1b:

  regmap-irq: make it possible to add irq_chip do a specific device node (2020-04-14 16:21:37 +0100)

----------------------------------------------------------------
regmap: Allow an irqchip to be created for a specific DT node

----------------------------------------------------------------
Michael Walle (1):
      regmap-irq: make it possible to add irq_chip do a specific device node

 drivers/base/regmap/regmap-irq.c | 84 ++++++++++++++++++++++++++++++++--------
 include/linux/regmap.h           | 10 +++++
 2 files changed, 78 insertions(+), 16 deletions(-)

--Q59ABw34pTSIagmi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6V7woACgkQJNaLcl1U
h9BuQQf/an0mQWAm5vrM5ORmT03qy9aVeFZm3VBOD6lyBwl1SqzPsYPgdbPBk75U
DQv+FyWG5Qq1BmPfR4oE8pimSb+pt0UE1LO6zLTHt8WvYmRh+xj6UwLfO0WVEJ06
+xdRzkrGLVScCsrlYGfx1RtjmpgvwRCKZVw39nPYTr57mRndNqlTCAtVtYoL8bX0
I1ryrYEBvOcjJKTpWRKkm5LzVB67bpyYHEdmA5X6Xn1EwxcNrsfbJ5Eou9rlYmPI
c1ehw1CrspXGb28+phVkDRaTYRzv4QhOZ/m7Rj1nTMemSL5++ew7GBtMQYqyh+T4
x9u6Aa5UCcrOyLUoWRLaA3drz6EgbA==
=lV/N
-----END PGP SIGNATURE-----

--Q59ABw34pTSIagmi--


--===============0986820805793301348==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0986820805793301348==--

