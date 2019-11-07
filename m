Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B511F319D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 15:36:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gLK7V1cQMyQBac5DUz38De84ghFSRrrFZQtyEDC3v+M=; b=k6lRDPBmrRvAOB
	tguCPsn5M9mTKpWxBThLV5mvZYTPxbrRUARca2dnrpCg55mWQVxe4K3zmg5ump1aoqWyq/QEKTNkD
	rZC5Xekas2RNSyKv8zxYBIc44ZBYpTIhru9OHDvkKBOhduDF3aBKFCpEGSWMCVdeCbbzs17wQTHj9
	agLAv/MIYFQh40CD/x30oOBwzvroYXQfntDbQeArdb0rp57uJ6Kp6CHGBa0iFnsqgS0gs/jey2UeS
	Dqdrmk/avnMG1FftvQxXkGqPK94/438xdZDf3par52oz7vyAqzdNx4/Og67qFHGO0L396x+7l85Sg
	8mm32xBfa8ZPmFqXfheA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSitI-0002t9-CL; Thu, 07 Nov 2019 14:36:04 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSitA-0002sD-I7
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 14:35:58 +0000
Received: by mail-yb1-xb43.google.com with SMTP id i15so1014215ybq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 06:35:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cCJqsx/ftlwibAsAJ5Vcy0JA49jWm4p8qE8hfVDsfVk=;
 b=p609bKDpHCoHQfbM/eGZgG96SmANx4wFD92aOiUSmPx5mI7JQb5iusZm7PMGjBE0Ur
 WeK+YljlXYEK2ZWCFagZr7d2o3eoov4TZUw9MXsXfrdJ6v98qDqmFyj1P3tTD931PPBa
 tCwaFuEHWd65r52ozGGDMdSNYgwZQBnCN9YimJFvUAYgJGkw8uWYTRICATCF1hko1yn0
 FmUGCcxP8CYFZeoJ1UvtOIfL0LkrGbRWZt2l9ck4MF/ahw7CWemncTIvCwwQXTi1EgII
 n11omcKJxXVfsYb6mLc4Hu78PO1RIZdLiQDcYi9wQot8m9nr+1rOmh9TW3UppuFlhjbQ
 JZDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cCJqsx/ftlwibAsAJ5Vcy0JA49jWm4p8qE8hfVDsfVk=;
 b=m7Uo0nTZSIL44lyUSyb56N85p/Lb/n03vmJ4G4Hh7Z6CBg+q7eYP2e/nm/xyRZLhSw
 lOSgbd3w9BUGsgo3djeWeeMz1q9NihBmOjTooUO0+1ZQJZB8NIXsUN/rRXS99YFM+dY5
 Zmpt7kIAEhyEC1OCcSbp0Wt1nBe2LQmIE2AXKhAfGdHmBxbQXz9jocRlvF1uB9Yw54UI
 Sl6MWQSH5QSXaR9D5JZGfQxzLP+vBC9sedHimOzvw0RuaW+1rahM+naiVYrxaPXral+D
 LVs935zMLUxuLq7xgk/hKfOEKtT0vaAAwgBQ/LMBzJfgbkrCU/dmjs2FRE5GbPRzuZGr
 f7tw==
X-Gm-Message-State: APjAAAVROEPYpJtI7AwsqdE3tNphBnfslo/PNJuFAvDFBtoHd+IwCHjE
 +8Qu1FO00APSDDGTJwk7yLpRTX54WxA90RmlkPnuBJak
X-Google-Smtp-Source: APXvYqyMWpVj32FzQRayhpTWpWdlFXd3D4KTz3BmEyqk9mEJsRvKERSKWHPspwqvIWQCC2SxnvCjPuu22GSaPnAZcbM=
X-Received: by 2002:a25:c781:: with SMTP id w123mr3644320ybe.509.1573137355279; 
 Thu, 07 Nov 2019 06:35:55 -0800 (PST)
MIME-Version: 1.0
References: <1573002091-9744-1-git-send-email-gkulkarni@marvell.com>
 <1573002091-9744-2-git-send-email-gkulkarni@marvell.com>
 <20191106112810.GA50610@lakrids.cambridge.arm.com>
 <CAKTKpr6U8gUp4C9muN2cL4wn33o2LAa5QnTO2MSmfnBz8oUc=Q@mail.gmail.com>
In-Reply-To: <CAKTKpr6U8gUp4C9muN2cL4wn33o2LAa5QnTO2MSmfnBz8oUc=Q@mail.gmail.com>
From: Ganapatrao Kulkarni <gklkml16@gmail.com>
Date: Thu, 7 Nov 2019 06:35:44 -0800
Message-ID: <CAKTKpr7za2-s0Ayf2AAW5CJ9WQk9smtTAbsjpiFgEg4+wevK7A@mail.gmail.com>
Subject: Re: [PATCH 1/2] perf/core: Adding capability to disable PMUs event
 multiplexing
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_063556_606417_8EF145DA 
X-CRM114-Status: GOOD (  31.93  )
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 1.0 HK_RANDOM_FROM         From username looks random
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gklkml16[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gklkml16[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "peterz@infradead.org" <peterz@infradead.org>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mingo@redhat.com" <mingo@redhat.com>, "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On Wed, Nov 6, 2019 at 3:28 PM Ganapatrao Kulkarni <gklkml16@gmail.com> wrote:
>
> Hi Peter, Mark,
>
> On Wed, Nov 6, 2019 at 3:28 AM Mark Rutland <mark.rutland@arm.com> wrote:
> >
> > On Wed, Nov 06, 2019 at 01:01:40AM +0000, Ganapatrao Prabhakerrao Kulkarni wrote:
> > > When PMUs are registered, perf core enables event multiplexing
> > > support by default. There is no provision for PMUs to disable
> > > event multiplexing, if PMUs want to disable due to unavoidable
> > > circumstances like hardware errata etc.
> > >
> > > Adding PMU capability flag PERF_PMU_CAP_NO_MUX_EVENTS and support
> > > to allow PMUs to explicitly disable event multiplexing.
> >
> > Even without multiplexing, this PMU activity can happen when switching
> > tasks, or when creating/destroying events, so as-is I don't think this
> > makes much sense.
> >
> > If there's an erratum whereby heavy access to the PMU can lockup the
> > core, and it's possible to workaround that by minimzing accesses, that
> > should be done in the back-end PMU driver.
>
> As said in errata,  If there are heavy access to memory like stream
> application running and along with that if PMU control registers are
> also accessed frequently, then CPU lockup is seen.
>
> I ran perf stat with 4 events of thuderx2 PMU as well as with 6 events
> for stream application.
> For 4 events run, there is no event multiplexing, where as for 6
> events run the events are multiplexed.
>
> For 4 event run:
> No of times pmu->add is called: 10
> No of times pmu->del is called: 10
> No of times pmu->read is called: 310
>
> For 6 events run:
> No of times pmu->add is called: 5216
> No of times pmu->del is called: 5216
> No of times pmu->read is called: 5216
>
> Issue happens when the add and del are called too many times as seen
> with 6 event case.
> The PMU hardware control registers are programmed when add and del
> functions are called.
> For pmu->read no issues since no h/w issue with the data path.
>
> This is UNCORE driver, not sure context switch has any influence on this?
> Please suggest me, how can we fix this in back-end PMU driver without
> any perf core help?
>
> >
> > Either way, this minimzes the utility of the PMU.
> >
> > Thanks,
> > Mark.
> >
> > >
> > > Signed-off-by: Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>
> > > ---
> > >  include/linux/perf_event.h | 1 +
> > >  kernel/events/core.c       | 8 ++++++++
> > >  2 files changed, 9 insertions(+)
> > >
> > > diff --git a/include/linux/perf_event.h b/include/linux/perf_event.h
> > > index 61448c19a132..9e18d841daf7 100644
> > > --- a/include/linux/perf_event.h
> > > +++ b/include/linux/perf_event.h
> > > @@ -247,6 +247,7 @@ struct perf_event;
> > >  #define PERF_PMU_CAP_HETEROGENEOUS_CPUS              0x40
> > >  #define PERF_PMU_CAP_NO_EXCLUDE                      0x80
> > >  #define PERF_PMU_CAP_AUX_OUTPUT                      0x100
> > > +#define PERF_PMU_CAP_NO_MUX_EVENTS           0x200
> > >
> > >  /**
> > >   * struct pmu - generic performance monitoring unit
> > > diff --git a/kernel/events/core.c b/kernel/events/core.c
> > > index 4655adbbae10..65452784f81c 100644
> > > --- a/kernel/events/core.c
> > > +++ b/kernel/events/core.c
> > > @@ -1092,6 +1092,10 @@ static void __perf_mux_hrtimer_init(struct perf_cpu_context *cpuctx, int cpu)
> > >       if (pmu->task_ctx_nr == perf_sw_context)
> > >               return;
> > >
> > > +     /* No PMU support */
> > > +     if (pmu->capabilities & PERF_PMU_CAP_NO_MUX_EVENTS)
> > > +             return 0;
> > > +
> > >       /*
> > >        * check default is sane, if not set then force to
> > >        * default interval (1/tick)
> > > @@ -1117,6 +1121,10 @@ static int perf_mux_hrtimer_restart(struct perf_cpu_context *cpuctx)
> > >       if (pmu->task_ctx_nr == perf_sw_context)
> > >               return 0;
> > >
> > > +     /* No PMU support */
> > > +     if (pmu->capabilities & PERF_PMU_CAP_NO_MUX_EVENTS)
> > > +             return 0;
> > > +
> > >       raw_spin_lock_irqsave(&cpuctx->hrtimer_lock, flags);
> > >       if (!cpuctx->hrtimer_active) {
> > >               cpuctx->hrtimer_active = 1;
> > > --
> > > 2.17.1
> > >
>
> Thanks,
> Ganapat

Below diff does workaround without support of perf core.
Please review and let me know your thoughts?

root@SBR-26>perf>> git diff
diff --git a/drivers/perf/thunderx2_pmu.c b/drivers/perf/thunderx2_pmu.c
index 43d76c85da56..d5c90a93e96b 100644
--- a/drivers/perf/thunderx2_pmu.c
+++ b/drivers/perf/thunderx2_pmu.c
@@ -69,6 +69,7 @@ struct tx2_uncore_pmu {
        int node;
        int cpu;
        u32 max_counters;
+       bool events_mux_disable;
        u32 prorate_factor;
        u32 max_events;
        u64 hrtimer_interval;
@@ -442,6 +443,8 @@ static int tx2_uncore_event_init(struct perf_event *event)
        if (!tx2_uncore_validate_event_group(event))
                return -EINVAL;

+       /* reset flag */
+       tx2_pmu->events_mux_disable = false;
        return 0;
 }

@@ -490,10 +493,19 @@ static int tx2_uncore_event_add(struct
perf_event *event, int flags)

        tx2_pmu = pmu_to_tx2_pmu(event->pmu);

+       /* Erratum ThunderX2 erratum 221.
+        * Disable support for events multiplexing.
+        * Limiting the number of events to available hardware counters.
+        */
+       if (tx2_pmu->events_mux_disable)
+               return -EOPNOTSUPP;
+
        /* Allocate a free counter */
        hwc->idx  = alloc_counter(tx2_pmu);
-       if (hwc->idx < 0)
+       if (hwc->idx < 0) {
+               tx2_pmu->events_mux_disable = true;
                return -EAGAIN;
+       }

        tx2_pmu->events[hwc->idx] = event;
        /* set counter control and data registers base address */
@@ -648,6 +660,7 @@ static struct tx2_uncore_pmu
*tx2_uncore_pmu_init_dev(struct device *dev,
        tx2_pmu->dev = dev;
        tx2_pmu->type = type;
        tx2_pmu->base = base;
+       tx2_pmu->events_mux_disable = false;
        tx2_pmu->node = dev_to_node(dev);
        INIT_LIST_HEAD(&tx2_pmu->entry);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
