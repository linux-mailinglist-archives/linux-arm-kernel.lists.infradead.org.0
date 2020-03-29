Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E512E196DAE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Mar 2020 15:34:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VT8MJAez6/3Qxcw+pDduio1Dc2fJb/tbS6AaXNDSCik=; b=VEPQORb2y06ovj
	uAd3Tzf3YiCiFQTrXqZWNE2mlnRycvZDfoI5DxP8JIwz4x+7VwoV0+8ILC1f9eN3ceuMFFmUOrByw
	euIF6vyuU30AnfdZpelSHRLjNoAwfyvLq0ykrIHos8pVxHrj+fJVkd+a9TUfnFQ40O7yHW1cGFU6h
	c+ozpF4/eBV5xRAVB4LlEHRhHohXnsDaevU3xv0XrOBy7O+4IoBHEMfOPMULIWotOpw4IuF+xNg+x
	VTUsrfYJu40HzCVE/3iMYGfcGQv37mIWbS1x+dvIxZfa3Zl/E/QWTyDWC3YWyKX8zu3YBpkYyv4vs
	JKb5EPzrLGORZXr6QSZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIY5A-00073P-Jn; Sun, 29 Mar 2020 13:34:32 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIY4z-00072v-JX
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Mar 2020 13:34:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3C6tfF5Ul0fw3udMKyjvurS5QtWeo4pSfQAUnxBXyAY=; b=03Bz54I1bcN1+oZhNl0RWIA7u
 u3TIb2qtWRgALFddvdLJWDf7InsOpmxtRXdcZ1dwuIOpiPmx0j260PDH/if+o1UzW7tIxAnq13lFd
 fvhpP1mjLMojQk/HeUD9b3FSpxA0yPsfZLfv9b708+JMhVVmdbSzgGK9Tc2nUefUTxLNB5Ivf9rcs
 o1zpN4AvMfErLybwHlRByrvaZji4ZinfC+USvfYA86CCmw6UkYq44reUM/6Ur/OUzZ1fjs8nRtM8A
 5wK3x/1Heaz/S9iArQvPpmrBi2r/viaaElG9n/3aHa8119Z74J/z2wHNtPNm9Cis+F/qsmzIBVZIT
 JhjFr68WQ==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:42932)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jIY4i-0005E4-F2; Sun, 29 Mar 2020 14:34:04 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jIY4e-0006FN-8B; Sun, 29 Mar 2020 14:34:00 +0100
Date: Sun, 29 Mar 2020 14:34:00 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH RFC 2/6] gpio: mvebu: honour EPROBE_DEFER for
 devm_clk_get()
Message-ID: <20200329133400.GA25745@shell.armlinux.org.uk>
References: <20200329104549.GX25745@shell.armlinux.org.uk>
 <E1jIVU9-0005h4-QU@rmk-PC.armlinux.org.uk>
 <20200329131659.4hbshjst4ccvje2n@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200329131659.4hbshjst4ccvje2n@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_063421_790196_C38E9B8A 
X-CRM114-Status: GOOD (  16.07  )
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

On Sun, Mar 29, 2020 at 03:16:59PM +0200, Uwe Kleine-K=F6nig wrote:
> On Sun, Mar 29, 2020 at 11:48:09AM +0100, Russell King wrote:
> > Honour deferred probing for devm_clk_get() so that we can get the clock
> > for PWM.
> > =

> > Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> > ---
> >  drivers/gpio/gpio-mvebu.c | 3 +++
> >  1 file changed, 3 insertions(+)
> > =

> > diff --git a/drivers/gpio/gpio-mvebu.c b/drivers/gpio/gpio-mvebu.c
> > index fa5641615db6..ee13b11c5298 100644
> > --- a/drivers/gpio/gpio-mvebu.c
> > +++ b/drivers/gpio/gpio-mvebu.c
> > @@ -1132,6 +1132,9 @@ static int mvebu_gpio_probe(struct platform_devic=
e *pdev)
> >  	}
> >  =

> >  	mvchip->clk =3D devm_clk_get(&pdev->dev, NULL);
> > +	if (mvchip->clk =3D=3D ERR_PTR(-EPROBE_DEFER))
> > +		return -EPROBE_DEFER;
> > +
> >  	/* Not all SoCs require a clock.*/
> >  	if (!IS_ERR(mvchip->clk))
> >  		clk_prepare_enable(mvchip->clk);
> =

> I'd say the following is the right thing to do here:
> =

> 	mvchip->clk =3D devm_clk_get_optional(...);
> 	if (IS_ERR(mvchip->clk))
> 		return ...

It's not that simple.  The clock is required for Armada 370, and is
optional for Armada 8040.

-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps =
up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
