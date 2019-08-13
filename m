Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2407D8B5F5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 12:55:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7hR6dL1kA06MlW+F4MhxZaECCpPfK+kcy0mF0e5RDX0=; b=RrTbqKmE3izqVj
	uIdA6+IrcrvjFP4vT3H4y7ACByN6TIXNHPrD0t/kH9q9jpBc69sWOms/9pFP34UDTAk7zAkxwbRUe
	5t5g+Egf8gJpvDRBm8UBScs8hnorRMUAKy6S4AyDvkXQUOG8EKnGqO6iJf42gDu8GIYyGQVMWPfnD
	S+Lvc6zn7pUZCNSlrebPAD5BTYPdPs1yckrG/T4X0434crGoQefwVWB+RRmY/AmosLkz0XLF9adve
	e1h8piibhRlit9J2p24Dkxl1w8wivV5QTqZkpEWfqy67fM0w+89J8ali+BsCtz1P93RglXLJ+oJZd
	ZI0FHlX8D9r4mQLnpkMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxUSq-0001Fl-Qu; Tue, 13 Aug 2019 10:55:40 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxUSe-0001FO-O5
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 10:55:30 +0000
Received: by mail-ot1-x343.google.com with SMTP id k18so38604014otr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 03:55:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=M7GJCS2+nN7LzL0hVAu7+fXi7vAKyLZ5WbkP+JMkhsQ=;
 b=U5Z+j7P31wD8dPVO64/0OxRcrGzm1Nkuum4danFLl3rR5rwBxQtxqjmrpj67lws/HO
 WJ9Hk317T/VuwSRfhyIoxcGb6RY00LPS4R+KZaiXYRGwjfdta+MWJxRB+RRvHpLwJXkG
 lcvHfORPBd/RJerSrocc3YR8HzfWlOqUgrd6hIZJKWfnhn6kEc2qFoWkvaACdVRFgmjO
 3KnCytP9xLnYKB3PrxFDbNJxe6x18j3VYR0DIvWYYfPDiQV3po/9ciOt+p9YOIUu4YmL
 WenyOMs+d0EtSNkvFXXSzO14tWT5umMTH5QRQoutGEc+61NNwV+2Vy6OmZ64+6RyIpdW
 YCww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=M7GJCS2+nN7LzL0hVAu7+fXi7vAKyLZ5WbkP+JMkhsQ=;
 b=EGxOr9JGHjo+8IDE0PGAfUkQyUNowJWZOCbx9AaaBszX/1c16JR+xb3wxGIPjsfsqA
 BInZVV/+XyprszBx+B0thDnDTUoIxIZnUqkayyo2wBqWYZ70CFU85IicJxZFE0txxm++
 dYaGGEnEbWTlZpYP5G56R/a3F+T1G5ogpXmoYHYJoCJ4A0AYjSMWn+2X0Un3vk8UAFT5
 l9CzKHDg0mGWm85Aa9WPpYiiePohmwoZSsBEJH38pBvGAMqwEmby+PY4xe5EajQxpB+A
 wg9AW5a0J+UYEO5eE1zFH1z3Xkmu1HJkWVRUkcvizseEMIuHU74Yob1RPnvC8ylKpVyF
 Vsaw==
X-Gm-Message-State: APjAAAVQ68tTBpD6iOxIy3F4cnH/gqw4AbI0EHWFQ53npxAliySoHcT4
 Oy3a1RO8KpKWKc1VsvQj0YRlr2LgGNC+JHGDNvQ=
X-Google-Smtp-Source: APXvYqxgbxmd+WfNqrdwdnfKbYW9LnWtCKNG0kC5nUYYQUHlfGbUvepYSqlRr3sYzlWQr+hJELeoLVFAZkOA0tTJ6mw=
X-Received: by 2002:a6b:6f06:: with SMTP id k6mr15215680ioc.232.1565693727255; 
 Tue, 13 Aug 2019 03:55:27 -0700 (PDT)
MIME-Version: 1.0
References: <1563873380-2003-1-git-send-email-gkulkarni@marvell.com>
 <1563873380-2003-3-git-send-email-gkulkarni@marvell.com>
 <20190812120125.GA50712@lakrids.cambridge.arm.com>
In-Reply-To: <20190812120125.GA50712@lakrids.cambridge.arm.com>
From: Ganapatrao Kulkarni <gklkml16@gmail.com>
Date: Tue, 13 Aug 2019 16:25:15 +0530
Message-ID: <CAKTKpr7juHd9Bgam28LESadihFadEAevRAhc-7w3PTMYY7HLNw@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] drivers/perf: Add CCPI2 PMU support in ThunderX2
 UNCORE driver.
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_035528_813596_F6CDA13B 
X-CRM114-Status: GOOD (  33.07  )
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 1.0 HK_RANDOM_FROM         From username looks random
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gklkml16[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gklkml16[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ganapatrao Kulkarni <gkulkarni@marvell.com>,
 "corbet@lwn.net" <corbet@lwn.net>, Jan Glauber <jglauber@marvell.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Robert Richter <rrichter@marvell.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On Mon, Aug 12, 2019 at 5:31 PM Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Tue, Jul 23, 2019 at 09:16:28AM +0000, Ganapatrao Kulkarni wrote:
> > CCPI2 is a low-latency high-bandwidth serial interface for connecting
> > ThunderX2 processors. This patch adds support to capture CCPI2 perf events.
>
> It would be worth pointing out in the commit message how the CCPI2
> counters differ from the others. I realise you have that in the body of
> patch 1, but it's critical information when reviewing this patch...

Ok, I will add in next version.
>
> >
> > Signed-off-by: Ganapatrao Kulkarni <gkulkarni@marvell.com>
> > ---
> >  drivers/perf/thunderx2_pmu.c | 248 ++++++++++++++++++++++++++++++-----
> >  1 file changed, 214 insertions(+), 34 deletions(-)
> >
> > diff --git a/drivers/perf/thunderx2_pmu.c b/drivers/perf/thunderx2_pmu.c
> > index 43d76c85da56..a4e1273eafa3 100644
> > --- a/drivers/perf/thunderx2_pmu.c
> > +++ b/drivers/perf/thunderx2_pmu.c
> > @@ -17,22 +17,31 @@
> >   */
> >
> >  #define TX2_PMU_MAX_COUNTERS         4
>
> Shouldn't this be 8 now?

It is kept unchanged to 4(as suggested by Will), which is same for
both L3 and DMC.
For CCPI2 this macro is not used.

>
> [...]
>
> >  /*
> > - * pmu on each socket has 2 uncore devices(dmc and l3c),
> > - * each device has 4 counters.
> > + * pmu on each socket has 3 uncore devices(dmc, l3ci and ccpi2),
> > + * dmc and l3c has 4 counters and ccpi2 8.
> >   */
>
> How about:
>
> /*
>  * Each socket has 3 uncore device associated with a PMU. The DMC and
>  * L3C have 4 32-bit counters, and the CCPI2 has 8 64-bit counters.
>  */

Thanks.
>
> >  struct tx2_uncore_pmu {
> >       struct hlist_node hpnode;
> > @@ -69,12 +86,14 @@ struct tx2_uncore_pmu {
> >       int node;
> >       int cpu;
> >       u32 max_counters;
> > +     u32 counters_mask;
> >       u32 prorate_factor;
> >       u32 max_events;
> > +     u32 events_mask;
> >       u64 hrtimer_interval;
> >       void __iomem *base;
> >       DECLARE_BITMAP(active_counters, TX2_PMU_MAX_COUNTERS);
>
> This bitmap isn't big enough for the 4 new counters.
>
> > -     struct perf_event *events[TX2_PMU_MAX_COUNTERS];
> > +     struct perf_event **events;
>
> As above, can't we bump TX2_PMU_MAX_COUNTERS to 8 rather than making
> this a dynamic allocation?

events is only relevant for L3 and DMC since they use timer callbacks.
This is done as per previous review comments.

>
> [...]
>
> >  static inline u32 reg_readl(unsigned long addr)
> >  {
> >       return readl((void __iomem *)addr);
> >  }
> >
> > +static inline u32 reg_readq(unsigned long addr)
> > +{
> > +     return readq((void __iomem *)addr);
> > +}
>
> Presumably reg_readq() should return a u64.

Yes,  My bad.

>
> [...]
>
> > +static void uncore_start_event_ccpi2(struct perf_event *event, int flags)
> > +{
> > +     u32 emask;
> > +     struct hw_perf_event *hwc = &event->hw;
> > +     struct tx2_uncore_pmu *tx2_pmu;
> > +
> > +     tx2_pmu = pmu_to_tx2_pmu(event->pmu);
> > +     emask = tx2_pmu->events_mask;
> > +
> > +     /* Bit [09:00] to set event id, set level and type to 1 */
> > +     reg_writel((3 << 10) |
>
> Do you mean that bits [11:10] are level and type?

Yes, i will change the comment.
>
> What exactly are 'level' and 'type'?

They are for other settings which are not relevant for software/kernel.
>
> Can we give those bits mnemonics?
>
> > +                     GET_EVENTID(event, emask), hwc->config_base);
> > +     /* reset[4], enable[0] and start[1] counters */
>
> Rather than using magic numbers everywhere, please give these mnemonics,
> e.g.
>
> #define CCPI2_PERF_CTL_ENABLE   BIT(0)
> #define CCPI2_PERF_CTL_START    BIT(1)
> #define CCPI2_PERF_CTL_RESET    BIT(4)

not used everywhere, only in this function.
I can add these macros.

>
> > +     reg_writel(0x13, hwc->event_base + CCPI2_PERF_CTL);
>
> ... and then you can OR them in here:

OK
>
>         ctl = CCPI2_PERF_CTL_ENABLE |
>               CCPI2_PERF_CTL_START |
>               CCPI2_PERF_CTL_RESET;
>         reg_writel(ctl, hwc->event_base + CCPI2_PERF_CTL);
>
> [...]
>
> > @@ -456,8 +603,9 @@ static void tx2_uncore_event_start(struct perf_event *event, int flags)
> >       tx2_pmu->start_event(event, flags);
> >       perf_event_update_userpage(event);
> >
> > -     /* Start timer for first event */
> > -     if (bitmap_weight(tx2_pmu->active_counters,
> > +     /* Start timer for first non ccpi2 event */
> > +     if (tx2_pmu->type != PMU_TYPE_CCPI2 &&
> > +                     bitmap_weight(tx2_pmu->active_counters,
> >                               tx2_pmu->max_counters) == 1) {
> >               hrtimer_start(&tx2_pmu->hrtimer,
> >                       ns_to_ktime(tx2_pmu->hrtimer_interval),
>
> This would be easier to read as two statements:
>
>         /* No hrtimer needed with 64-bit counters */
>         if (tx2_pmu->type == PMU_TYPE_CCPI2)
>                 return;
>
>         /* Start timer for first event */
>         if (bitmap_weight(tx2_pmu->active_counters,
>             tx2_pmu->max_counters) != 1) {
>                 ...
>         }
>

OK, makes sense.

> > @@ -495,7 +643,8 @@ static int tx2_uncore_event_add(struct perf_event *event, int flags)
> >       if (hwc->idx < 0)
> >               return -EAGAIN;
> >
> > -     tx2_pmu->events[hwc->idx] = event;
> > +     if (tx2_pmu->events)
> > +             tx2_pmu->events[hwc->idx] = event;
>
> So this is NULL for CCPI2?

Yes.
>
> I guess we don't strictly need the if we don't have a hrtimer to update
> event counts, but this makes the code more complicated than it needs to
> be.

Yes I am using tx2_pmu->events to differentiate the type, it is NULL for CCPI2.
I can extend same to tx2_uncore_event_start().
>
> [...]
>
> > @@ -580,8 +732,12 @@ static int tx2_uncore_pmu_add_dev(struct tx2_uncore_pmu *tx2_pmu)
> >                       cpu_online_mask);
> >
> >       tx2_pmu->cpu = cpu;
> > -     hrtimer_init(&tx2_pmu->hrtimer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
> > -     tx2_pmu->hrtimer.function = tx2_hrtimer_callback;
> > +     /* CCPI2 counters are 64 bit counters, no overflow  */
> > +     if (tx2_pmu->type != PMU_TYPE_CCPI2) {
> > +             hrtimer_init(&tx2_pmu->hrtimer,
> > +                             CLOCK_MONOTONIC, HRTIMER_MODE_REL);
> > +             tx2_pmu->hrtimer.function = tx2_hrtimer_callback;
> > +     }
>
> Hmmm... this means that tx2_pmu->hrtimer.function is NULL for the CCPI2
> PMU. I think it would be best to check that when (re)programming the
> counters rather than the PMU type. For example, in
> tx2_uncore_event_start() we could have:
>
>         if (!tx2_pmu->hrtimer.function)
>                 return;
>         if (bitmap_weight(tx2_pmu->active_counters,
>             tx2_pmu->max_counters) != 1) {
>                 ...
>         }
>

Yes it is NULL for CCPI2.
Ok, I can use tx2_pmu->events instead(like other places).

> Thanks,
> Mark.

Thanks,
Ganapat

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
