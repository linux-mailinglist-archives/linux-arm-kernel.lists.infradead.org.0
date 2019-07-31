Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 799BB7B9F9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 08:53:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bCZHZOywjY7foGA2C8UR+UEqxSkc7eYlPKwThwRLw10=; b=PD8mPN77WFdUix
	2A36jYQqkcueM/rRKkUN8dlymZIAFLm7EAjDwzX05fLRJiz+mRbyAa1Pzi/rAY2iqgj0klg/UPb0n
	aRFJCe5ECKtEroJdUmIGcFHAXs+xBsJMTS9bpCt7J6+bXnd86e1NoJT/UHhKZpXlHxdcW6N1StU/u
	SAmx7Dsy5ZrEO4w3sNJDVovec/xvycbKyny+uIEju0x/wCO430hIdIjKEJUcp1a/mH47V4nyqwkCZ
	gqcTIx26m55iSfs57YyYUww6GZruSiLrxdFYp2qerjgvXixRcd4P93b9GB/SeOFWnYn3KAa3Fcs1v
	tkzDF0qoTc0WxCnAxh8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsiTr-0003k6-ES; Wed, 31 Jul 2019 06:52:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsiTa-0003jG-UA
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 06:52:44 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hsiTP-0005UT-U7; Wed, 31 Jul 2019 08:52:31 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hsiTO-0005LC-5S; Wed, 31 Jul 2019 08:52:30 +0200
Date: Wed, 31 Jul 2019 08:52:30 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [linux-sunxi] Re: [PATCH 4/6] pwm: sun4i: Add support for H6 PWM
Message-ID: <20190731065230.mqbtn5sfoxrkevw5@pengutronix.de>
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
 <173825848.1FZsmuHfpq@jernej-laptop>
 <20190729185108.tpilwoooxvi2z72e@pengutronix.de>
 <2452836.v7ux4bnEjb@jernej-laptop>
 <20190730080900.hhxrqun7vk4nsj2h@pengutronix.de>
 <20190730170601.a7ei43wku6jsjanu@flea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730170601.a7ei43wku6jsjanu@flea>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_235242_977852_71122FD1 
X-CRM114-Status: GOOD (  32.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>,
 devicetree <devicetree@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 kernel@pengutronix.de, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 07:06:01PM +0200, Maxime Ripard wrote:
> On Tue, Jul 30, 2019 at 10:09:00AM +0200, Uwe Kleine-K=F6nig wrote:
> > Hello Rob and Frank,
> >
> > Maxime and Jernej on one side and me on the other cannot agree about a
> > detail in the change to the bindings here. I'm trying to objectively
> > summarize the situation for you to help deciding what is the right thing
> > to do here.
> >
> > TLDR: The sun4i pwm driver is extended to support a new variant of that
> > device on the H6 SoC. Compared to the earlier supported variants
> > allwinner,sun50i-h6-pwm on H6 needs to handle a reset controller and an
> > additional clock.
> >
> > The two positions are:
> >
> >  - We need a new compatible because only then the driver and/or the dt
> >    schema checker can check that each "allwinner,sun50i-h6-pwm" device
> >    has a reset property and a "bus" clock; and the earlier variants
> >    don't.
> =

> There is two topics here, really. The binding itself really must have
> those properties as required.
> =

> You had an analogy before that we shouldn't really do that, since it
> would be verification and that it would be similar to checking whether
> the register range was right. This analogy isn't correct, a better one
> would be checking that the register range exists in the first place.

The relevant difference is that *all* devices supported by the driver
have to have a register range. Compared to that only a subset of the
devices have to have a bus clock.

> Indeed, if you don't have a register range, you have no register to
> write to, and that's a showstopper for any driver. I'm pretty sure we
> all agree on that. But on those SoCs, like Chen-Yu said, having no
> resets or clocks properties result in an equally bad result: either
> any write to that device is completely ignored (missing reset), or the
> system completely (and silently) locks up (missing bus clock).
> =

> We *have* to catch that somehow and not let anything like that happen.

IIUC both the clock and the reset stuff is SoC specific, so it's the
same for all machines with the H6, right? So assuming this is correctly
contained in the h6.dtsi, in which cases can this go wrong? I only see
the cases that the dts author includes the wrong dtsi or overrides
stuff. In the first case a non-working PWM is probably one of the
smaller problems and the second is something we're not really able to
catch.

But even if each machine's dts author has to get this right, I don't
think the dts schema is the right place to assert this.

> That being said, we can't really validate that the clock pointed is
> the right one, just like we can't really check that the register range
> is the proper one. Or rather, we could, but it's completely
> impractical and we do agree on that as well.
> =

> Having the bus clock and reset line being required however is only a
> few lines in the binding though, and is very practical.
> =

> >  - The driver can be simpler and the device specific knowledge is only
> >    in a single place (the dt) if the device tree is considered valid and
> >    a reset property and "bus" clock is used iff it's provided in the
> >    device tree without additional comparison for the compatible.
> =

> And now we have the discussion on how it's implemented in a
> driver. Since it's pretty cheap to implement (only a couple of lines:
> two for the if block, one for the additional field in the structure,
> one for each SoC using that) and have huge benefits (not silently
> locking up the system at boot), then I'd say we should go for it.

Right, it's only a few lines. Still it (IMHO needlessly) complicates the
driver. From the driver's POV the device tree defines the
characteristics of the device and if the dts defines an h6-pwm without a
bus clock then maybe this is the PWM on the next generation SoC that
doesn't need it. And maybe you're happy in a few year's time when you
don't have to touch the driver again for this next generation SoC
because the driver is not only simpler but also flexible enough to
handle the new PWM without adaptions.

All in all I don't care much about the dt schema stuff, I want to keep
the driver simple. So if we agree that the schema ensures that the h6
pwms have a reset and a bus clock and we just use reset_get_optional and
clk_get_optional that's a compromise I can agree to.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
