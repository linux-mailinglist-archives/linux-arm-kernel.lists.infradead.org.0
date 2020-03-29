Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C574E196F43
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Mar 2020 20:23:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hulYu44uqDURwWvmvXogCQO6lCUDQDt1YXkwI6pVOOc=; b=hcVAj0px7SuRKy
	O8fvvk12TijlgopEy5kPqgj8sbwPfs89Mftciay2lxEvmwkGxnGcFgIU1rwcu0d6WAx6XeJl5NiA/
	6sUxz1LQElwaf2kZu/85esmz1gWuZp+0C9OyIgw4iUIUPpXnULNQ/LTs8UCJdNSTsJxDlNeI5XODe
	aHk3ZASyQydf5NwDkw+KdNoA2KyOvyHNqjiWiJlAwuxvlOeDlWqipfaLrZR01OV6KiCnxpiOnMufo
	6/peMXQVvzkmzW6x2W11hrucvjpQCmhgZJrWJpdc3bOjrJszNQi61KW9B+vbfjBTuHvd7vcWo/y2z
	X66UrmaG+V5lcYjjP5/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIcaT-0006bM-4U; Sun, 29 Mar 2020 18:23:09 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIcaK-0006aZ-KC
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Mar 2020 18:23:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ul5mPuoITZiwsLENljEvGuoEiNdCieYNeoF+CgVtynY=; b=fazfmfEZAjksByCU8DCpoS9F+
 Nr90jbUdAi42KYu8HacKRPIMwtSxS8gPV08oocVVKktH55e304YKnr90bFNgyYt2QdC6Xo/x1JCLe
 MeRgQnh2C3QeyvqYQ8+L1rm2X7XpkYeZf2LSddGAxZZwyi/MC5qfNUH7IICpLRcznIUswY/hP9LbD
 G4Sr5nykVqVuGxItgtmgYImpYs/uMsRUiZ77JSOE+KLbqGB6hWPDdTpsOER/1oj+L3kuk1YV4S2MR
 F37blPxMy0YhqGydl4ZS6VnWEQ9q7PCOx7sAvRpULKz8Nt04SRvjE0A+hPeGf4wkCK6cklh8gZUlC
 etqkiKGaA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:59598)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jIca0-0006Mb-Bc; Sun, 29 Mar 2020 19:22:40 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jIcZw-0006QA-JB; Sun, 29 Mar 2020 19:22:36 +0100
Date: Sun, 29 Mar 2020 19:22:36 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH RFC 2/6] gpio: mvebu: honour EPROBE_DEFER for
 devm_clk_get()
Message-ID: <20200329182236.GC25745@shell.armlinux.org.uk>
References: <20200329104549.GX25745@shell.armlinux.org.uk>
 <E1jIVU9-0005h4-QU@rmk-PC.armlinux.org.uk>
 <20200329131659.4hbshjst4ccvje2n@pengutronix.de>
 <20200329133400.GA25745@shell.armlinux.org.uk>
 <20200329180056.cwju3zqviwnwwjd6@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200329180056.cwju3zqviwnwwjd6@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_112300_831562_88DCC02E 
X-CRM114-Status: GOOD (  19.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-gpio@vger.kernel.org, Gregory Clement <gregory.clement@bootlin.com>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 29, 2020 at 08:00:56PM +0200, Uwe Kleine-K=F6nig wrote:
> Hello Russell,
> =

> On Sun, Mar 29, 2020 at 02:34:00PM +0100, Russell King - ARM Linux admin =
wrote:
> > On Sun, Mar 29, 2020 at 03:16:59PM +0200, Uwe Kleine-K=F6nig wrote:
> > > On Sun, Mar 29, 2020 at 11:48:09AM +0100, Russell King wrote:
> > > > diff --git a/drivers/gpio/gpio-mvebu.c b/drivers/gpio/gpio-mvebu.c
> > > > index fa5641615db6..ee13b11c5298 100644
> > > > --- a/drivers/gpio/gpio-mvebu.c
> > > > +++ b/drivers/gpio/gpio-mvebu.c
> > > > @@ -1132,6 +1132,9 @@ static int mvebu_gpio_probe(struct platform_d=
evice *pdev)
> > > >  	}
> > > >  =

> > > >  	mvchip->clk =3D devm_clk_get(&pdev->dev, NULL);
> > > > +	if (mvchip->clk =3D=3D ERR_PTR(-EPROBE_DEFER))
> > > > +		return -EPROBE_DEFER;
> > > > +
> > > >  	/* Not all SoCs require a clock.*/
> > > >  	if (!IS_ERR(mvchip->clk))
> > > >  		clk_prepare_enable(mvchip->clk);
> > > =

> > > I'd say the following is the right thing to do here:
> > > =

> > > 	mvchip->clk =3D devm_clk_get_optional(...);
> > > 	if (IS_ERR(mvchip->clk))
> > > 		return ...
> > =

> > It's not that simple.  The clock is required for Armada 370, and is
> > optional for Armada 8040.
> =

> I'd say it is still the right approach here. On Armada 370 the dtb then
> has a clk and on Armada 8040 it doesn't. So if with
> devm_clk_get_optional() something goes wrong that's because the dtb is
> wrong. And in fact the handling is even better than with your suggested
> patch as every error (but EPROBE_DEFER) is ignored instead of passed to
> the caller with your (and the existing) approach.

Sort of.  Every error is currently treated as "no clock", and only
later does such an error become fatal in the driver _if_ PWM is
configured into the kernel and we're running on Armada 370.  If PWM
is disabled in the kernel, or on some other SoC, then the driver
doesn't care whether getting the clock reported any kind of error.

Your proposal is to always treat any error getting the clock,
irrespective of whether there is PWM or not, as a fatal error for
the driver.

That is an entirely seperate functional change.

-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps =
up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
