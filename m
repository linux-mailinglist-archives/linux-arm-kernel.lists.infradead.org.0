Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 045971C12BE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 15:18:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eCHRy2ITS4dLU1gdvJRKOUrh+hKJb6f6C4F4R2U8+SM=; b=VAWwtDPXbd3Bpp
	1cKL2d6g0usMX6yyHXFUBKqQi9TrRbL1v1gB/XSpfED2/YMvC7WZThovH2yQWIN2OJHNM1ar6KHuT
	GreyNdlqNtjlG12a6BBzsPPorkNNkMRXJh+tENuY6rNMHQqiim60G3F6qt2KaVJXQYvBa0YuF4HqG
	OpxMyhQgp2HuuneqT0DRtNqV9CJEs7UpehkytnpUKN0ZT2SjfbI4yojEDD0+zRQjO/3b/zJRs+dAo
	GcLzpxaMwZ0CnIhe6p3bYnDwws6q1zgcJghwYrF+v3lq0aKFFFNg9HPYkCoVIK8OPB8+Ur+B+lyYT
	hD+wn4tkYvwnf5FwSUWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUVZ5-0005dZ-Q0; Fri, 01 May 2020 13:18:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUVYy-0005d9-9M
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 13:18:45 +0000
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com
 [209.85.167.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 92D74208D6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  1 May 2020 13:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588339123;
 bh=J0kG6Z5B+5vJ4yJTDzvDaFXRmJr/dRrJSSeRvMvltRY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=CCC1NvG06y+cp5Ef4bDAo0TGr7/wKVfHCYsbNi6phG34DeG7zHEH8n9cUhx89gV7p
 xs/wTiWcKEkFMpRqHpvur/SWssP111UJiom0RO4dL7Aq92MluXx+OSVYeywH+J7CMy
 jSZtmz6eupHTAUExYeqa9bBVMcPQuvvA9RpFd+do=
Received: by mail-oi1-f172.google.com with SMTP id k133so2595182oih.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 06:18:43 -0700 (PDT)
X-Gm-Message-State: AGi0PuaTrulSptiIU6wJUlZ0PfI7YWOmtaktAkvgkeu3KtOTtI8r+ZDK
 jU2FY5Ii+VeVIu40NIU491NTC4DEdg0+HgFYDg==
X-Google-Smtp-Source: APiQypKJRTSvBINORuAGd9rJ+1Od8gsw+57/nIuNYUtVMWxRmUA03OTpX3lvdJrg6eQMtcKjF7yl4OwXe6mhJ2HgSzY=
X-Received: by 2002:a05:6808:24f:: with SMTP id
 m15mr3083301oie.152.1588339122764; 
 Fri, 01 May 2020 06:18:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200417165519.4979-1-tony@atomide.com>
 <20200417165519.4979-3-tony@atomide.com>
 <62be90e2-7dbe-410d-4171-c0ad0cddc7a3@linaro.org>
 <20200427143144.GQ37466@atomide.com>
 <29f39839-b3ed-cac3-1dea-c137286320b1@linaro.org>
 <20200427152329.GR37466@atomide.com>
 <20200430140040.GA8363@bogus> <20200430153119.GX37466@atomide.com>
In-Reply-To: <20200430153119.GX37466@atomide.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 1 May 2020 08:18:31 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+Xqv0JByAK-tYj8aHDhuB5rYrn0NXQxkm97j0P1zqGPg@mail.gmail.com>
Message-ID: <CAL_Jsq+Xqv0JByAK-tYj8aHDhuB5rYrn0NXQxkm97j0P1zqGPg@mail.gmail.com>
Subject: Re: [PATCH 02/14] clocksource/drivers/timer-ti-dm: Add clockevent and
 clocksource support
To: Tony Lindgren <tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_061844_369954_50F75468 
X-CRM114-Status: GOOD (  30.89  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Thu, Apr 30, 2020 at 10:31 AM Tony Lindgren <tony@atomide.com> wrote:
>
> * Rob Herring <robh@kernel.org> [200430 14:01]:
> > On Mon, Apr 27, 2020 at 08:23:29AM -0700, Tony Lindgren wrote:
> > > * Daniel Lezcano <daniel.lezcano@linaro.org> [200427 15:03]:
> > > > On 27/04/2020 16:31, Tony Lindgren wrote:
> > > > > Hi,
> > > > >
> > > > > * Daniel Lezcano <daniel.lezcano@linaro.org> [200427 09:19]:
> > > > >> On 17/04/2020 18:55, Tony Lindgren wrote:
> > > > >>> --- a/Documentation/devicetree/bindings/timer/ti,timer.txt
> > > > >>> +++ b/Documentation/devicetree/bindings/timer/ti,timer.txt
> > > > >>> @@ -14,6 +14,8 @@ Required properties:
> > > > >>>                       ti,omap5430-timer (applicable to OMAP543x devices)
> > > > >>>                       ti,am335x-timer (applicable to AM335x devices)
> > > > >>>                       ti,am335x-timer-1ms (applicable to AM335x devices)
> > > > >>> +                     ti,dmtimer-clockevent (when used as for clockevent)
> > > > >>> +                     ti,dmtimer-clocksource (when used as for clocksource)
> > > > >>
> > > > >> Please, submit a separate patch for this.
> > > > >>
> > > > >> Before you resend as is, this will be nacked as clocksource / clockevent
> > > > >> is not a hardware description but a Linux thing.
> > > > >>
> > > > >> Finding a way to characterize that from the DT is an endless discussion
> > > > >> since years, so I suggest to use a single property for the timer eg
> > > > >> <ti,dmtimer> and initialize the clocksource and the clockevent in the
> > > > >> driver.
> > > > >
> > > > > Hmm good point. We still need to specify which timer is a clocksource
> > > > > and which one a clockevent somehow.
> > > > >
> > > > > Maybe we could have a generic properties like the clock framework such as:
> > > > >
> > > > > assigned-system-clocksource
> > > > > assigned-system-clockevent
> > > >
> > > > I think that will be the same problem :/
> > >
> > > Seems like other SoCs have the same issue too with multiple timers
> > > to configure.
> > >
> > > > Is it possible to check the interrupt for the clockevent ? A timer node
> > > > with the interrrupt is the clockevent, without it is a clocksource.
> > >
> > > OK let's try that. So the configuration would become then:
> > >
> > > compatible = "ti,dmtimer;   /* reserved for system timers */
> > > /delete-property/interrupts;        /* ok so it's a clocksource */
> > > /delete-property/interrupts-extended;
> >
> > That's not really what was meant.
>
> OK, so let's figure out something better then.
>
> > Let's say you have N timers. Either every timer is exactly the same and
> > the OS can just assign them however it wants or there is some difference
> > in the h/w making certain timer better for certain functions. Describe
> > that difference. It could be clock rate, number of counter bits, always
> > on, secure mode access only, has or doesn't have output compare or input
> > capture, etc.
>
> Hmm. Trying to detect this automatically will get messy. For example,
> we have few omap3 boards with the following options that also need to
> consider if the separate 32KiHz counter is available:
>
> 1. The best case scenario
>
> ti,omap-counter32k clocksource
> ti,sysc-omap2-timer ti,timer-alwon clockevent (timer1)
>
> 2. Boards relying on internal clock with unusable 32k counter
>
> ti,sysc-omap2-timer ti,timer-alwon clocksource (timer12)
> ti,sysc-omap2-timer clockevent (typically gpt2)
>
> In the second case, the 32k counter is unusable, and timer1
> is unusable with the external 32k always on clock. But timer1
> can be used with the system clock just fine for other purposes.
> So ideally we would not tag timer1 as disabled :)

I'm perfectly fine with a 'broken 32k clk' type property.

Though I think the compatibility story is not good changing DT for
stuff needed to boot and needed early in boot. It's one thing to break
something not required to get a system booted.

> For the second case, we could remove ti,timer-alwon property
> for timer1, and tag the 32k counter as disabled as the source
> clock is unreliable. Then somewhere in the code we would need
> to check if ti,omap-counter32k is availabe, then check if
> timer1 is always-on, then use timer12 if not a secure device
> like n900.

IIRC, there's some OMAP timer properties for secure vs. non-secure.
(It's not the first time we've had this discussion on TI timers.)

> If the board wants to use the system clock as the source for
> a higher resolution with assigned-clock-parents, then we'd need
> to ignore the always-on property and not use the 32k counter as
> the clocksource. Basically to somehow figure out that a higher
> resolution configuration is preferred over a
> low-power configuration.

That could be something you want to pick at run-time.

> So what's your take on just adding the generic properties for
> assigned-system-clocksource and clockevent?

I'm tired of discussing this for 10 years...

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
