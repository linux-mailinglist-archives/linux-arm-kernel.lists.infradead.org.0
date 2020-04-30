Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DBD81C005C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 17:31:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Bmt2k5n3qZyIB7NlToYXkFI/fSzTzDHcYmWqu0XENo=; b=P0iI4ibDiytIU9
	UuqOWUhpHI8OUBQmQhvPIZCqLiyVAEqpUMSxebv/gImdRBUb8Oh8B1v6wa1SDOrg1E1zeIn+XjlgC
	vrIhwNyIy2TBOD/ZPOekMMoSGO4FHd9qQkyvHiYtARNykdyWVRYJXLAm+ARj9WXu8iXlI5JLNyEDM
	em2evVuyP5nZKjuYievZkt+msbtsBI7Q+W6H8UViAAJaGaiegFETZUndLKMjLXyGtlcS7kG/3rEWo
	YKoAvxn9epwrq60m9x9OUgS4gzcMZl5Y/cd2T3wQFD1R7X8nKunOg21NtFPPexfMyIiEwYg4r/pgr
	csoOWDUOFFPSLr0pbvog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUB9x-0001Bp-95; Thu, 30 Apr 2020 15:31:33 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUB9o-0001BI-0K
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 15:31:25 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 3B5B18123;
 Thu, 30 Apr 2020 15:32:10 +0000 (UTC)
Date: Thu, 30 Apr 2020 08:31:19 -0700
From: Tony Lindgren <tony@atomide.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 02/14] clocksource/drivers/timer-ti-dm: Add clockevent
 and clocksource support
Message-ID: <20200430153119.GX37466@atomide.com>
References: <20200417165519.4979-1-tony@atomide.com>
 <20200417165519.4979-3-tony@atomide.com>
 <62be90e2-7dbe-410d-4171-c0ad0cddc7a3@linaro.org>
 <20200427143144.GQ37466@atomide.com>
 <29f39839-b3ed-cac3-1dea-c137286320b1@linaro.org>
 <20200427152329.GR37466@atomide.com> <20200430140040.GA8363@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430140040.GA8363@bogus>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_083124_083204_EFE8F7E4 
X-CRM114-Status: GOOD (  24.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Lokesh Vutla <lokeshvutla@ti.com>, Keerthy <j-keerthy@ti.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Tero Kristo <t-kristo@ti.com>, Stephen Boyd <sboyd@kernel.org>,
 Andreas Kemnade <andreas@kemnade.info>,
 "H. Nikolaus Schaller" <hns@goldelico.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-omap@vger.kernel.org,
 Adam Ford <aford173@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Rob Herring <robh@kernel.org> [200430 14:01]:
> On Mon, Apr 27, 2020 at 08:23:29AM -0700, Tony Lindgren wrote:
> > * Daniel Lezcano <daniel.lezcano@linaro.org> [200427 15:03]:
> > > On 27/04/2020 16:31, Tony Lindgren wrote:
> > > > Hi,
> > > > 
> > > > * Daniel Lezcano <daniel.lezcano@linaro.org> [200427 09:19]:
> > > >> On 17/04/2020 18:55, Tony Lindgren wrote:
> > > >>> --- a/Documentation/devicetree/bindings/timer/ti,timer.txt
> > > >>> +++ b/Documentation/devicetree/bindings/timer/ti,timer.txt
> > > >>> @@ -14,6 +14,8 @@ Required properties:
> > > >>>  			ti,omap5430-timer (applicable to OMAP543x devices)
> > > >>>  			ti,am335x-timer	(applicable to AM335x devices)
> > > >>>  			ti,am335x-timer-1ms (applicable to AM335x devices)
> > > >>> +			ti,dmtimer-clockevent (when used as for clockevent)
> > > >>> +			ti,dmtimer-clocksource (when used as for clocksource)
> > > >>
> > > >> Please, submit a separate patch for this.
> > > >>
> > > >> Before you resend as is, this will be nacked as clocksource / clockevent
> > > >> is not a hardware description but a Linux thing.
> > > >>
> > > >> Finding a way to characterize that from the DT is an endless discussion
> > > >> since years, so I suggest to use a single property for the timer eg
> > > >> <ti,dmtimer> and initialize the clocksource and the clockevent in the
> > > >> driver.
> > > > 
> > > > Hmm good point. We still need to specify which timer is a clocksource
> > > > and which one a clockevent somehow.
> > > > 
> > > > Maybe we could have a generic properties like the clock framework such as:
> > > > 
> > > > assigned-system-clocksource
> > > > assigned-system-clockevent
> > > 
> > > I think that will be the same problem :/
> > 
> > Seems like other SoCs have the same issue too with multiple timers
> > to configure.
> > 
> > > Is it possible to check the interrupt for the clockevent ? A timer node
> > > with the interrrupt is the clockevent, without it is a clocksource.
> > 
> > OK let's try that. So the configuration would become then:
> > 
> > compatible = "ti,dmtimer;	/* reserved for system timers */
> > /delete-property/interrupts;	/* ok so it's a clocksource */
> > /delete-property/interrupts-extended;
> 
> That's not really what was meant.

OK, so let's figure out something better then.

> Let's say you have N timers. Either every timer is exactly the same and 
> the OS can just assign them however it wants or there is some difference 
> in the h/w making certain timer better for certain functions. Describe 
> that difference. It could be clock rate, number of counter bits, always 
> on, secure mode access only, has or doesn't have output compare or input 
> capture, etc.

Hmm. Trying to detect this automatically will get messy. For example,
we have few omap3 boards with the following options that also need to
consider if the separate 32KiHz counter is available:

1. The best case scenario

ti,omap-counter32k clocksource
ti,sysc-omap2-timer ti,timer-alwon clockevent (timer1)

2. Boards relying on internal clock with unusable 32k counter

ti,sysc-omap2-timer ti,timer-alwon clocksource (timer12)
ti,sysc-omap2-timer clockevent (typically gpt2)

In the second case, the 32k counter is unusable, and timer1
is unusable with the external 32k always on clock. But timer1
can be used with the system clock just fine for other purposes.
So ideally we would not tag timer1 as disabled :)

For the second case, we could remove ti,timer-alwon property
for timer1, and tag the 32k counter as disabled as the source
clock is unreliable. Then somewhere in the code we would need
to check if ti,omap-counter32k is availabe, then check if
timer1 is always-on, then use timer12 if not a secure device
like n900.

If the board wants to use the system clock as the source for
a higher resolution with assigned-clock-parents, then we'd need
to ignore the always-on property and not use the 32k counter as
the clocksource. Basically to somehow figure out that a higher
resolution configuration is preferred over a
low-power configuration.

So what's your take on just adding the generic properties for
assigned-system-clocksource and clockevent?

Regards,

Tony


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
