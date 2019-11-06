Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E344F229D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 00:29:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B/F8nHyMok5NQr+dnCUMah0c+70Ei9KXnKZoEm00etc=; b=D0a/PaA+IvWRPV
	3DWy05ONjC/xhJO6XC3kMJeLQjjtKoeHyQFGZkpJVqoDoUa3njvImj1Eu/hK1bd64yQ7auurc/kLE
	XD+tPd17o+grrmDsms36NXhbS7tgrcWjQHMfn3zSc5XtIpjTjLVMs0sjgmrmyDC888frNrftlQxV/
	bli4PcTY148Gt3IshCGR+eyhN0oNTKLYAVDITx0w/cly6OyeMqrlSnUjr4A50m54XQ8Y6S3ncceYG
	VpExHaskPMhzJIVprQ4yZyMebrM6KiTAdZlwOT9Y7MnUfkw4yUHVzLLqXbiZwbIQsjtfVu2hLfax5
	E25EVzL6L5pIj3tFElTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSUjf-0002zN-SG; Wed, 06 Nov 2019 23:29:11 +0000
Received: from mail-yb1-xb41.google.com ([2607:f8b0:4864:20::b41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSUjT-0002yN-Jw
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 23:29:01 +0000
Received: by mail-yb1-xb41.google.com with SMTP id w6so225442ybj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 15:28:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wsGkky6yfeJ+ut8glQWS3HkTq744rNXXFxtFxOcqi6E=;
 b=JUXKo99uMkVxowlJ3qm1o6kw842BvWhmlNS5Z9hyRW0pcJphoXOcCtnUNtfx8IdPpR
 oySoQsb3lPIh+NM2b8zCSRhLOFT75guRcYd72Ts72gYIuaxUBsRjPqNCrElolRdmbi3E
 cTkFII1BHLz7OoDVHGOip9fuVLPcoQjm/Gi019NG/gIAXNd7Jy/L2kFziZmD22JV2Woe
 igAfYSWRe5lE2vascU6L0OmI4tkSH8zacRn77dFgUbztKeXyLUT/HwoKtl7OFODUxaEv
 MruH3USO7MVQaKrCNOxZNubsnMJhoYa+UfquEtgRfwjKRBuo3hJLYEnqthAnmXfvpdp0
 YEKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wsGkky6yfeJ+ut8glQWS3HkTq744rNXXFxtFxOcqi6E=;
 b=ImXkyVw8lwtY4F4XfpdsOe11yLPqZYO4q2+rnSRhHm23+LSvVnIN/syioPfIJMVAsW
 KV30GprwqYYF2Ldg0uG6QXtAufCDYX/gcPu504VMXs0cfPlx/LLWkcTWjzX/io4t9PDM
 pL/cOIsiuJzrA6yZO3RBC68qShwDwOMNXVu5aZchQ66TX20gx0R6kfm1Nj9jFKlXcc+E
 OZRfUGk4fnnixjWv/XEa7bnYdowSj+sJyN0JOc8/T68+tOzD/wfkeIyDuaB8nVWfMgoW
 HELGuBkdprXjt2ls6v8qYdVh+113X97KUomtJfvXv+zVhK809RNCY0j1J1bhRXjm1oQI
 JSOw==
X-Gm-Message-State: APjAAAXOtbSmt6BspJi29o6uCKDBMW3Z8bPeyqfhFCgWEiK6kW/1lWjz
 MNQpMvIn3Naom1Maj8UndvUVBYWevl0t1FpyBTc=
X-Google-Smtp-Source: APXvYqxwSsU7QfnftZPBDmOxKeNz94oi9xpUFIFhUMbydvHrpAxIVz+AeNKsE7P/ockLy/g7TTo/2lk/DxpneCbwUcM=
X-Received: by 2002:a25:774b:: with SMTP id s72mr613338ybc.287.1573082937865; 
 Wed, 06 Nov 2019 15:28:57 -0800 (PST)
MIME-Version: 1.0
References: <1573002091-9744-1-git-send-email-gkulkarni@marvell.com>
 <1573002091-9744-2-git-send-email-gkulkarni@marvell.com>
 <20191106112810.GA50610@lakrids.cambridge.arm.com>
In-Reply-To: <20191106112810.GA50610@lakrids.cambridge.arm.com>
From: Ganapatrao Kulkarni <gklkml16@gmail.com>
Date: Wed, 6 Nov 2019 15:28:46 -0800
Message-ID: <CAKTKpr6U8gUp4C9muN2cL4wn33o2LAa5QnTO2MSmfnBz8oUc=Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] perf/core: Adding capability to disable PMUs event
 multiplexing
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_152859_679265_C058685C 
X-CRM114-Status: GOOD (  22.42  )
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b41 listed in]
 [list.dnswl.org]
 1.0 HK_RANDOM_FROM         From username looks random
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gklkml16[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gklkml16[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Hi Peter, Mark,

On Wed, Nov 6, 2019 at 3:28 AM Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Wed, Nov 06, 2019 at 01:01:40AM +0000, Ganapatrao Prabhakerrao Kulkarni wrote:
> > When PMUs are registered, perf core enables event multiplexing
> > support by default. There is no provision for PMUs to disable
> > event multiplexing, if PMUs want to disable due to unavoidable
> > circumstances like hardware errata etc.
> >
> > Adding PMU capability flag PERF_PMU_CAP_NO_MUX_EVENTS and support
> > to allow PMUs to explicitly disable event multiplexing.
>
> Even without multiplexing, this PMU activity can happen when switching
> tasks, or when creating/destroying events, so as-is I don't think this
> makes much sense.
>
> If there's an erratum whereby heavy access to the PMU can lockup the
> core, and it's possible to workaround that by minimzing accesses, that
> should be done in the back-end PMU driver.

As said in errata,  If there are heavy access to memory like stream
application running and along with that if PMU control registers are
also accessed frequently, then CPU lockup is seen.

I ran perf stat with 4 events of thuderx2 PMU as well as with 6 events
for stream application.
For 4 events run, there is no event multiplexing, where as for 6
events run the events are multiplexed.

For 4 event run:
No of times pmu->add is called: 10
No of times pmu->del is called: 10
No of times pmu->read is called: 310

For 6 events run:
No of times pmu->add is called: 5216
No of times pmu->del is called: 5216
No of times pmu->read is called: 5216

Issue happens when the add and del are called too many times as seen
with 6 event case.
The PMU hardware control registers are programmed when add and del
functions are called.
For pmu->read no issues since no h/w issue with the data path.

This is UNCORE driver, not sure context switch has any influence on this?
Please suggest me, how can we fix this in back-end PMU driver without
any perf core help?

>
> Either way, this minimzes the utility of the PMU.
>
> Thanks,
> Mark.
>
> >
> > Signed-off-by: Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>
> > ---
> >  include/linux/perf_event.h | 1 +
> >  kernel/events/core.c       | 8 ++++++++
> >  2 files changed, 9 insertions(+)
> >
> > diff --git a/include/linux/perf_event.h b/include/linux/perf_event.h
> > index 61448c19a132..9e18d841daf7 100644
> > --- a/include/linux/perf_event.h
> > +++ b/include/linux/perf_event.h
> > @@ -247,6 +247,7 @@ struct perf_event;
> >  #define PERF_PMU_CAP_HETEROGENEOUS_CPUS              0x40
> >  #define PERF_PMU_CAP_NO_EXCLUDE                      0x80
> >  #define PERF_PMU_CAP_AUX_OUTPUT                      0x100
> > +#define PERF_PMU_CAP_NO_MUX_EVENTS           0x200
> >
> >  /**
> >   * struct pmu - generic performance monitoring unit
> > diff --git a/kernel/events/core.c b/kernel/events/core.c
> > index 4655adbbae10..65452784f81c 100644
> > --- a/kernel/events/core.c
> > +++ b/kernel/events/core.c
> > @@ -1092,6 +1092,10 @@ static void __perf_mux_hrtimer_init(struct perf_cpu_context *cpuctx, int cpu)
> >       if (pmu->task_ctx_nr == perf_sw_context)
> >               return;
> >
> > +     /* No PMU support */
> > +     if (pmu->capabilities & PERF_PMU_CAP_NO_MUX_EVENTS)
> > +             return 0;
> > +
> >       /*
> >        * check default is sane, if not set then force to
> >        * default interval (1/tick)
> > @@ -1117,6 +1121,10 @@ static int perf_mux_hrtimer_restart(struct perf_cpu_context *cpuctx)
> >       if (pmu->task_ctx_nr == perf_sw_context)
> >               return 0;
> >
> > +     /* No PMU support */
> > +     if (pmu->capabilities & PERF_PMU_CAP_NO_MUX_EVENTS)
> > +             return 0;
> > +
> >       raw_spin_lock_irqsave(&cpuctx->hrtimer_lock, flags);
> >       if (!cpuctx->hrtimer_active) {
> >               cpuctx->hrtimer_active = 1;
> > --
> > 2.17.1
> >

Thanks,
Ganapat

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
