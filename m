Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B731BA674
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 16:32:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3eTSkRkPyRs5py3TzJmDqp66opFMiXNMi20NA71USbI=; b=tqsZOHVekJjW4U
	pp6sfPXHeqxZnnN3V5qSEQKLpO96K/w1oTld8QH+XJJGJdTw9dy1tsFCRvTIOJ34VKtoarR2AXypc
	VXPzR0slBynZUzsy1aRSHEgqKlVqIi1F2hDPReV6s+2YZ9cvM/BnWyU4Xe/hNbB9NeKxYIKz7SwQd
	Xkb6po2McW3xoBwUCE4njQvqkKnUxZRfdlmbrzFoTZaug0MMS3OMcVBxqDZxZGZ/n5N8K8wE2rcCl
	B2df2wUPHy5yJWfpmT1M8blSYotMMZCCDYLOeyTIPUotUWkLgjSa3239pibCHq0nzrqZK6OOiDPE0
	N3gsBDj/t/xtQdIrf7AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT4nn-0000va-3A; Mon, 27 Apr 2020 14:32:07 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT4nZ-0000sp-DY
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 14:31:55 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id E62BE8087;
 Mon, 27 Apr 2020 14:32:34 +0000 (UTC)
Date: Mon, 27 Apr 2020 07:31:44 -0700
From: Tony Lindgren <tony@atomide.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH 02/14] clocksource/drivers/timer-ti-dm: Add clockevent
 and clocksource support
Message-ID: <20200427143144.GQ37466@atomide.com>
References: <20200417165519.4979-1-tony@atomide.com>
 <20200417165519.4979-3-tony@atomide.com>
 <62be90e2-7dbe-410d-4171-c0ad0cddc7a3@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <62be90e2-7dbe-410d-4171-c0ad0cddc7a3@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_073153_496289_94F34695 
X-CRM114-Status: GOOD (  26.01  )
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
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Lokesh Vutla <lokeshvutla@ti.com>,
 Keerthy <j-keerthy@ti.com>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, Tero Kristo <t-kristo@ti.com>,
 Stephen Boyd <sboyd@kernel.org>, Andreas Kemnade <andreas@kemnade.info>,
 "H. Nikolaus Schaller" <hns@goldelico.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-omap@vger.kernel.org,
 Adam Ford <aford173@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

* Daniel Lezcano <daniel.lezcano@linaro.org> [200427 09:19]:
> On 17/04/2020 18:55, Tony Lindgren wrote:
> > --- a/Documentation/devicetree/bindings/timer/ti,timer.txt
> > +++ b/Documentation/devicetree/bindings/timer/ti,timer.txt
> > @@ -14,6 +14,8 @@ Required properties:
> >  			ti,omap5430-timer (applicable to OMAP543x devices)
> >  			ti,am335x-timer	(applicable to AM335x devices)
> >  			ti,am335x-timer-1ms (applicable to AM335x devices)
> > +			ti,dmtimer-clockevent (when used as for clockevent)
> > +			ti,dmtimer-clocksource (when used as for clocksource)
> 
> Please, submit a separate patch for this.
> 
> Before you resend as is, this will be nacked as clocksource / clockevent
> is not a hardware description but a Linux thing.
> 
> Finding a way to characterize that from the DT is an endless discussion
> since years, so I suggest to use a single property for the timer eg
> <ti,dmtimer> and initialize the clocksource and the clockevent in the
> driver.

Hmm good point. We still need to specify which timer is a clocksource
and which one a clockevent somehow.

Maybe we could have a generic properties like the clock framework such as:

assigned-system-clocksource
assigned-system-clockevent

Or do we already have something similar that can be used?

> > diff --git a/drivers/clocksource/timer-ti-dm-systimer.c b/drivers/clocksource/timer-ti-dm-systimer.c
> > new file mode 100644
> > --- /dev/null
> > +++ b/drivers/clocksource/timer-ti-dm-systimer.c
> > +struct dmtimer_clocksource {
> > +	struct clocksource dev;
> > +	struct omap_dm_timer timer;
> 
> The usage of the timer field is to use the __omap_dm_timer_* helpers
> function which does a busy looping on the status before read/write the
> register. AFAICS, for the clocksource, the posted argument is zero, thus
> it is possible to replace the calls to these helpers to a write / read
> and perhaps the struct omap_dm_timer could be removed from the
> clocksource structure.
> 
> The driver gets obfuscated by calls to helpers which does 'posted' things.
> 
> Why not remove those and handle the case in the driver to make it
> self-encapsuled and remove the omap_dm_timer structure usage in this driver.

Hmm that's a good comment indeed. If we can just use readl/writel for
clockevent and clocksource driver without worrying about the posted mode
flags, we can make all the old helpers static for the generic dmtimer
driver. I'll take a look.

> > +static int dmtimer_systimer_type2_reset(struct omap_dm_timer *timer)
> > +{
> > +	void __iomem *sysc = timer->io_base + OMAP_TIMER_OCP_CFG_OFFSET;
> > +	u32 l;
> > +
> 
> Isn't missing a write here ?

Oops thanks for spotting it. Without that the mode can be whatever left
over from the bootloader.

> > +static int __init dmtimer_systimer_tag_disabled(struct device_node *np)
> > +{
> > +	struct property *prop;
> > +
> > +	prop = kzalloc(sizeof(*prop), GFP_KERNEL);
> > +	if (!prop)
> > +		return -ENOMEM;
> > +
> > +	prop->name = "status";
> > +	prop->value = "disabled";
> > +	prop->length = strlen(prop->value);
> > +
> > +	return of_add_property(np, prop);
> 
> Why not add this property in the DT instead ? That sounds hackish

Yes that's a good point too. We need to configure the source clock anyways
for the clocksource and clockevent in devicetree anyways, so setting it
disabled there totally makes sense.

> > +	dmtimer_systimer_enable(timer);
> > +	dmtimer_systimer_reset(timer);
> > +	pr_debug("dmtimer rev %08x sysc %08x\n", readl_relaxed(timer->io_base),
> > +		 readl_relaxed(timer->io_base + OMAP_TIMER_OCP_CFG_OFFSET));
> > +
> > +	if (of_find_property(np, "ti,timer-alwon", NULL))
> > +		timer->capability |= OMAP_TIMER_ALWON;
> 
> Where is used this capability in this driver ?

That is just something we should show in dmesg for info as that helps to
understand the board specific system timer configuration for PM related
issues folks end up reporting.

> > +static struct irqaction dmtimer_clockevent_irq = {
> > +	.name		= "gp_timer",
> > +	.flags		= IRQF_TIMER | IRQF_IRQPOLL,
> 
> Why do you need IRQF_IRQPOLL ?

I'll check if that's needed. Probably just something that has mutated into
the old timer code somehow.

> > +	pa = of_translate_address(np, of_get_address(np, 0, NULL, NULL));
> > +	pr_info("TI gptimer clockevent: %stimer@%08x at %lu Hz\n",
> > +		timer->capability & OMAP_TIMER_ALWON ? "always-on " : "",
> > +		pa, timer->rate);
> 
> %pOF instead of of_translate_address ?

That just 0 from the interconnect target module here. But doing %pOF
on the np->parent should work here and for the clocksource.

> > diff --git a/include/clocksource/timer-ti-dm.h b/include/clocksource/timer-ti-dm.h
> > --- a/include/clocksource/timer-ti-dm.h
> > +++ b/include/clocksource/timer-ti-dm.h
> > @@ -97,6 +97,7 @@ struct omap_dm_timer {
> >  	int id;
> >  	int irq;
> >  	struct clk *fclk;
> > +	struct clk *iclk;
> 
> No need of these clocks in the structure as they are used only to
> initialize.

OK I'll make them local.

Thanks for the review! I'll fix up the other issues you spotted too,
they all seem good comments.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
