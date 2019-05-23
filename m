Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7718728BF9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 22:55:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n+uUX7NYl1b+7j55BxqVeouWJ1XiKVM+ofEQjpHNqfs=; b=mtQj3hPnZ9G96z
	UU/caJKHafygoVwiflCge03MqCR2ttJnX+A1+Fjl7OIuDtVce4DCj81jtlFJmYRax+1fwPGmWS0Wj
	XDC643wkdV8A6uP7mj6AUMu5fM9Zaj4kr0jm+ZmwTy7fcEaBKyv6yQR5bS3cn2L9KxpgShoFkz2gs
	A3doi+TEpD/p4hVTCnnJ5GfXFrJtAmURR4QyDZBNM4EzeBLTV+a7MS1nSMfVNlQvnnRMmHlj8d4vq
	OlQnrtWdILmoYF+bkUdg45Sp9DISxqOtt7fEwoSPefd39Q+app77CFVPp/UXUkzlRpP+S1jpd7itL
	LcdLgf6DIh4rE0jAGrtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTuk4-0004Bx-Gr; Thu, 23 May 2019 20:55:12 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTuju-0003bt-1y
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 20:55:04 +0000
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 2EBF5FF803;
 Thu, 23 May 2019 20:54:51 +0000 (UTC)
Date: Thu, 23 May 2019 22:54:50 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64-oceanic-5205-5inmfd: Enable CAN
Message-ID: <20190523205450.bwccpvehpiugogbs@flea>
References: <20190418141658.10868-1-jagan@amarulasolutions.com>
 <20190418145641.q23tupopz2czjzc5@flea>
 <CAOf5uwn8CtRs8cx0KC-bxNoRP4TiDrHi8F83QfjsZhueLDYFJg@mail.gmail.com>
 <20190521081001.zjq3gnlvyuyexz6m@flea>
 <CAOf5uwnhXjur=2NezCydaCxP5d33S+AwdD9WTDtp2EUJr4UTgg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOf5uwnhXjur=2NezCydaCxP5d33S+AwdD9WTDtp2EUJr4UTgg@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_135502_408770_ABBCEA6E 
X-CRM114-Status: GOOD (  25.91  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Michael,

On Tue, May 21, 2019 at 01:08:09PM +0200, Michael Nazzareno Trimarchi wrote:
> On Tue, May 21, 2019 at 10:10 AM Maxime Ripard
> <maxime.ripard@bootlin.com> wrote:
> >
> > On Tue, May 21, 2019 at 08:47:02AM +0200, Michael Nazzareno Trimarchi wrote:
> > > > > +     };
> > > > > +
> > > > >  };
> > > > >
> > > > >  &ehci0 {
> > > > > @@ -77,6 +95,31 @@
> > > > >       status = "okay";
> > > > >  };
> > > > >
> > > > > +&pio {
> > > > > +     can_pins: can-pins {
> > > > > +             pins = "PD6",                   /* RX_BUF1_CAN0 */
> > > > > +                    "PD7";                   /* RX_BUF0_CAN0 */
> > > > > +             function = "gpio_in";
> > > > > +     };
> > > > > +};
> > > >
> > > > That isn't needed. What are they used for, you're not tying them to
> > > > anything?
> > >
> > > Mux of their function is correct. They are connected in the schematics
> > > but not used right now.
> >
> > Then describe the whole thing or don't?
> >
>
> Ok
>
> > And that's kind of missing my point. If that pin group isn't related
> > to any device, the pin muxing will not be changed. So that group, in
> > itself, has strictly no effect.
> >
> > Moreover, you don't need a pin group in the first place to mux pins in
> > GPIOs, the GPIO API will make sure that is the case when you request
> > it.
>
> This is correct on sunxi. Is this valid for sunxi or in general in
> all the SoC?

IIRC, it happens on all the SoCs that have a shared GPIO/pinctrl
driver.

> Anyway make sense to have pins configured and place in the right
> state, just suppose if the booting stage is wrong or anything that
> make those pins in the wrong configuration

It would be a bug in the pinctrl / GPIO code that would need to be
fixed.

> >
> > > I can garantee that kernel wlll always configurred in the right way
> > > and if I want I can export in userspace
> > > for debug purpose
>
> Correct if you start to use it but if you want them right configured
> the right place is in the default state e/o initstate if this can be
> a problem of the hardware

What problem do you have exactly?

> Default state: the state the pinctrl handle shall be put
>  *      into as default, usually this means the pins are up and ready to
>  *      be used by the device driver. This state is commonly used by
>  *      hogs to configure muxing and pins at boot, and also as a state
>  *      to go into when returning from sleep and idle in
>  *      .pm_runtime_resume() or ordinary .resume() for example.
>
> Now the pins are connected to the canbus as should be and they are
> configured and usually put in the right state.

As soon as you call gpio_get, the pins will be configured properly.

And, pinctrl shouldn't allow that configuration (gpio_get + a pinctrl
node for GPIOs) in our case. We do on most SoCs (all but the H6) for
historical reasons, but this creates other bugs that we can't really
fix right now. Still, we're slowly removing all of those pinctrl
nodes, so it's not really to add new ones.

> +               compatible = "microchip,mcp2515";
> +               reg = <0>;
> +               spi-max-frequency = <10000000>;
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&can_pins>;
>
> >
> > Yes, because the API does it, not your change
>
> Do you prefer to drop the pinmux? or update the commit message

Drop the pinctrl group

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
