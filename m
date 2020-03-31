Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BBD5199B91
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:30:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xpYB8xi4Laq9xf7oWrB1a1aDG0UEU9C4o0Wjjnw2GdE=; b=k2uWwiwkkf6j/c
	I9FK6pwvWC5CcLnUAuQ69g4MjRiBKgoUbvQVWlHsDu1/BfRANhstAoXVRe9JVoMw4PahoiSzimlr2
	ny/UDNnZRqGDrN1O7cvcnBjBN0SMyuP5Edc24t0uVTwQZLP5n97xGkobjtRPwOo4+Rrhsv7K9a7Ls
	gHmht7RX11awWYXmFqyRz0M0gLFHdRglxXKEIFXQyDaQUX6yXI8VZnggWVCtOG8XWuaofsPQreQ6C
	uv0uf4QW6/YWpxrAEIGsVyrWGn31ydCcaxoz3fT1iOfzYx11R4mtZrf8nP+sykNic3+/E1yWd3bE1
	uN76DE8p4QJhq5mBlIUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJmS-0001a6-3N; Tue, 31 Mar 2020 16:30:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJlf-0001A6-46
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 16:29:37 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1jJJlN-0007Xk-7h; Tue, 31 Mar 2020 18:29:17 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1jJJlK-0005tF-Br; Tue, 31 Mar 2020 18:29:14 +0200
Date: Tue, 31 Mar 2020 18:29:14 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH RFC 2/6] gpio: mvebu: honour EPROBE_DEFER for
 devm_clk_get()
Message-ID: <20200331162914.h65jnclbsmlzpzti@pengutronix.de>
References: <20200329104549.GX25745@shell.armlinux.org.uk>
 <E1jIVU9-0005h4-QU@rmk-PC.armlinux.org.uk>
 <20200329131659.4hbshjst4ccvje2n@pengutronix.de>
 <20200329133400.GA25745@shell.armlinux.org.uk>
 <20200329180056.cwju3zqviwnwwjd6@pengutronix.de>
 <20200329182236.GC25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200329182236.GC25745@shell.armlinux.org.uk>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_092935_168548_AD143B34 
X-CRM114-Status: GOOD (  24.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Jason Cooper <jason@lakedaemon.net>, linux-pwm@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 linux-gpio@vger.kernel.org, kernel@pengutronix.de,
 Gregory Clement <gregory.clement@bootlin.com>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Russell,

On Sun, Mar 29, 2020 at 07:22:36PM +0100, Russell King - ARM Linux admin wr=
ote:
> On Sun, Mar 29, 2020 at 08:00:56PM +0200, Uwe Kleine-K=F6nig wrote:
> > On Sun, Mar 29, 2020 at 02:34:00PM +0100, Russell King - ARM Linux admi=
n wrote:
> > > On Sun, Mar 29, 2020 at 03:16:59PM +0200, Uwe Kleine-K=F6nig wrote:
> > > > On Sun, Mar 29, 2020 at 11:48:09AM +0100, Russell King wrote:
> > > > > diff --git a/drivers/gpio/gpio-mvebu.c b/drivers/gpio/gpio-mvebu.c
> > > > > index fa5641615db6..ee13b11c5298 100644
> > > > > --- a/drivers/gpio/gpio-mvebu.c
> > > > > +++ b/drivers/gpio/gpio-mvebu.c
> > > > > @@ -1132,6 +1132,9 @@ static int mvebu_gpio_probe(struct platform=
_device *pdev)
> > > > >  	}
> > > > >  =

> > > > >  	mvchip->clk =3D devm_clk_get(&pdev->dev, NULL);
> > > > > +	if (mvchip->clk =3D=3D ERR_PTR(-EPROBE_DEFER))
> > > > > +		return -EPROBE_DEFER;
> > > > > +
> > > > >  	/* Not all SoCs require a clock.*/
> > > > >  	if (!IS_ERR(mvchip->clk))
> > > > >  		clk_prepare_enable(mvchip->clk);
> > > > =

> > > > I'd say the following is the right thing to do here:
> > > > =

> > > > 	mvchip->clk =3D devm_clk_get_optional(...);
> > > > 	if (IS_ERR(mvchip->clk))
> > > > 		return ...
> > > =

> > > It's not that simple.  The clock is required for Armada 370, and is
> > > optional for Armada 8040.
> > =

> > I'd say it is still the right approach here. On Armada 370 the dtb then
> > has a clk and on Armada 8040 it doesn't. So if with
> > devm_clk_get_optional() something goes wrong that's because the dtb is
> > wrong. And in fact the handling is even better than with your suggested
> > patch as every error (but EPROBE_DEFER) is ignored instead of passed to
> > the caller with your (and the existing) approach.
> =

> Sort of.  Every error is currently treated as "no clock", and only
> later does such an error become fatal in the driver _if_ PWM is
> configured into the kernel and we're running on Armada 370.  If PWM
> is disabled in the kernel, or on some other SoC, then the driver
> doesn't care whether getting the clock reported any kind of error.
> =

> Your proposal is to always treat any error getting the clock,
> irrespective of whether there is PWM or not, as a fatal error for
> the driver.

Is this clock (assuming it's available) needed for GPIO operation? If
not, I'd say the call to devm_clk_get should go into mvebu_pwm_probe().
And if yes, then use devm_clk_get_optional in mvebu_gpio_probe() and
either request it once more in mvebu_pwm_probe() (without _optional) or
test for mvchip->clk =3D=3D NULL. (Or maybe just don't check and let the
driver fail when clk_get_rate(mvchip->clk) returns zero.)

> That is an entirely seperate functional change.

This is still different to what you do, but it is (IMHO) cleaner and
fixes the problem you want to solve en passant.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
