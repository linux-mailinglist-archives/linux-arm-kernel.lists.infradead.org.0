Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1311C1763
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 16:12:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x4/kYQ4ERFLFf/XlmkIeE9E/nicAZwd2k2fO3yxLBpc=; b=rzyxNOeC6UOHaw
	X9Ub1PW1tSFEX29v8ws6cAydwIIiYzEwN5EScQbPXY7j6ywHz1tLEqJCgtXDBD0BlPdVSY9K3a5Ir
	6KxxjFdd78ERLE3niQnsQPbL0oFTY0ZMUgJ7+IGstlkbW4mtx5MmOjpmOYXFcLfVWzbHeJISEhLTs
	VJgbUovZTopy5uHZJ4Jv/Q6WkuosCEZCQ1H3aoQ0DBrXA3L1EhHrUExowDTYNLCU8kfGtABoToXhA
	xogg6YE1FIkKTMh9fpDLS5c0Hia/vpmhg2ItqlgwDQonrNeMn4ZpRpmGbTF3+1nqJ5n9Tei6/WpGP
	zV/FeX8EPW+pHsHTWojw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUWOS-00048y-SU; Fri, 01 May 2020 14:11:56 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUWOM-00046o-IZ
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 14:11:51 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 83262810E;
 Fri,  1 May 2020 14:12:29 +0000 (UTC)
Date: Fri, 1 May 2020 07:11:38 -0700
From: Tony Lindgren <tony@atomide.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 02/14] clocksource/drivers/timer-ti-dm: Add clockevent
 and clocksource support
Message-ID: <20200501141138.GA37466@atomide.com>
References: <20200417165519.4979-1-tony@atomide.com>
 <20200417165519.4979-3-tony@atomide.com>
 <62be90e2-7dbe-410d-4171-c0ad0cddc7a3@linaro.org>
 <20200427143144.GQ37466@atomide.com>
 <29f39839-b3ed-cac3-1dea-c137286320b1@linaro.org>
 <20200427152329.GR37466@atomide.com> <20200430140040.GA8363@bogus>
 <20200430153119.GX37466@atomide.com>
 <CAL_Jsq+Xqv0JByAK-tYj8aHDhuB5rYrn0NXQxkm97j0P1zqGPg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_Jsq+Xqv0JByAK-tYj8aHDhuB5rYrn0NXQxkm97j0P1zqGPg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_071150_651671_B6DF430D 
X-CRM114-Status: GOOD (  21.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Lokesh Vutla <lokeshvutla@ti.com>, Keerthy <j-keerthy@ti.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Stephen Boyd <sboyd@kernel.org>,
 Andreas Kemnade <andreas@kemnade.info>,
 "H. Nikolaus Schaller" <hns@goldelico.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-omap <linux-omap@vger.kernel.org>,
 Adam Ford <aford173@gmail.com>, linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Rob Herring <robh@kernel.org> [200501 13:19]:
> On Thu, Apr 30, 2020 at 10:31 AM Tony Lindgren <tony@atomide.com> wrote:
> > Hmm. Trying to detect this automatically will get messy. For example,
> > we have few omap3 boards with the following options that also need to
> > consider if the separate 32KiHz counter is available:
> >
> > 1. The best case scenario
> >
> > ti,omap-counter32k clocksource
> > ti,sysc-omap2-timer ti,timer-alwon clockevent (timer1)
> >
> > 2. Boards relying on internal clock with unusable 32k counter
> >
> > ti,sysc-omap2-timer ti,timer-alwon clocksource (timer12)
> > ti,sysc-omap2-timer clockevent (typically gpt2)
> >
> > In the second case, the 32k counter is unusable, and timer1
> > is unusable with the external 32k always on clock. But timer1
> > can be used with the system clock just fine for other purposes.
> > So ideally we would not tag timer1 as disabled :)
> 
> I'm perfectly fine with a 'broken 32k clk' type property.

OK. Maybe "unreliable-oscillator" type property or something like
that. Or maybe "shrodingers-cat-oscillator" :)

> Though I think the compatibility story is not good changing DT for
> stuff needed to boot and needed early in boot. It's one thing to break
> something not required to get a system booted.

For the boards with the 32k clock issue the system boots but
is unreliable. I'm not sure how long a 32k clock based timer would
have to be monitored with another system clock based timer to
detect it.. I recall the issues start popping up with PM and
that much later and the system clock may not even be active..

Anyways, the issue is related to how the board is wired, so a
property for it makes sense here.

> > For the second case, we could remove ti,timer-alwon property
> > for timer1, and tag the 32k counter as disabled as the source
> > clock is unreliable. Then somewhere in the code we would need
> > to check if ti,omap-counter32k is availabe, then check if
> > timer1 is always-on, then use timer12 if not a secure device
> > like n900.
> 
> IIRC, there's some OMAP timer properties for secure vs. non-secure.
> (It's not the first time we've had this discussion on TI timers.)

Yes.

> > If the board wants to use the system clock as the source for
> > a higher resolution with assigned-clock-parents, then we'd need
> > to ignore the always-on property and not use the 32k counter as
> > the clocksource. Basically to somehow figure out that a higher
> > resolution configuration is preferred over a
> > low-power configuration.
> 
> That could be something you want to pick at run-time.

OK

> > So what's your take on just adding the generic properties for
> > assigned-system-clocksource and clockevent?
> 
> I'm tired of discussing this for 10 years...

Well luckly most system have basic timers integrated nowadays
rather than each SoC vendor doing their own timers :)

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
