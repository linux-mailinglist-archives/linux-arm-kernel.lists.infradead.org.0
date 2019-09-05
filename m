Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 479CAAA559
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 16:02:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8a8PMCStlBj+xCTXENdaTrDOy1F9WblTRaSjozK2sAM=; b=PbQQ6qNqy3iuNg
	vpmMuLP8lqHcpkZABIkmlnWyNInXKrG1JC4sgDZZCftr9KrtqDUkDc1ktN7sinnsBo+LqFKDdLPWb
	79A5FOM5bx5gvBKIe5+gZ14XvvhXh8znLHmFv36HnOysSfIa1uKUCsQj5gLYeBgYWQjg70hyvwkkH
	jfLeyRcxBqjyUNkujtIKteO+41JGuKGnstlG2/4pEMLoLuagOJAIpuSmBZyIoNEOxI/XOg96ZYDaq
	j9AgjYowJy4GDX9ateQ+WCGTtdoSui7bGC8+ZrsvFSR1tdE0pgbWAdMWSapeZbO3YVBBEMIMbnydk
	4HLb0JAUIyRZM2WPcJyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5sL4-0006JD-8K; Thu, 05 Sep 2019 14:02:18 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5sKs-0006HC-Gt
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 14:02:08 +0000
Received: by mail-lf1-x141.google.com with SMTP id t8so2096401lfc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 07:02:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Y6GdqPH0KVO/+ZJvIYhCRArnuMGnAumqu+juuMVJhOc=;
 b=R64ee0WfRJ2+6EYXTlrJf8c+TzHsEXj8JNgQSfgg30DK/M/mocVRoL4Q8ct3r/rODE
 CTRGZoGFXbA6P0iP1NsvBQTO4qh8oDNUb/TkGdBQLeWy95eNCiUM9T65Kuv19NuE9Vwy
 c4/der6ho0mulKsweuGoF/FcAW9FE6KwEK4Xse3CNeuKX8jlVFpjHuUft+QvfjrFipC0
 HPgScpSAwIJ/x0pAoljakY1Oe5IHQyZojwuQdcrd9xVwtNBm+HcUVD8p0J6GQ+xwG322
 prgREciNMHLpiydbIVKnabDHqAT77GMryWpDkhbrGv12K0UPFh044XtZ0N7Hd+lnjtxu
 DJrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Y6GdqPH0KVO/+ZJvIYhCRArnuMGnAumqu+juuMVJhOc=;
 b=phsnO3vLd7l0TAofJAtIurJkhegF2ko40h/ZA5pHbSdnb1pIa3KF4N4g+abwmfjev5
 och2b44FYwGvMYZP05bfc5RSXvolaQZ3QZZKV6AMNzW+7aviUJzge/FgnCScnHlg8OJt
 cbpCY6thr7H0ITUARiPB3+CaJiFXav4s3t6jnlAdqnxz7kebIPoB1zCT6RAIe4CNqW/9
 coexvCd32Zn978JDw19m1mAtx3s8/3+VLLcGgPxYIZUED8tdqrc7v4EkqRBqdMKk40Tf
 M4Qif81u0Ef/6ZN8NI4E1LQrRzvSwVbKWu3NzTPNh6N2KNZFO97Eog/S2slZxb5kYeXI
 IVXA==
X-Gm-Message-State: APjAAAV8715FmvxSJnLRz0++qF4TFqoEgYOkX5GFW4J4Y3gFMzIsrN9S
 OG7skaqz0y8g8Uz6HkbEVF6I111ThTPZKNcyK8RMMA==
X-Google-Smtp-Source: APXvYqyl4zI+t8OtieR9s2IQqoz5ExKv3CVcq9ddTFSGd/uFyuy0jWlSRm7mgp7YK7eaM/5kiWkFzcXJ/qrhw9/p4qE=
X-Received: by 2002:a05:6512:304:: with SMTP id
 t4mr2590877lfp.15.1567692122600; 
 Thu, 05 Sep 2019 07:02:02 -0700 (PDT)
MIME-Version: 1.0
References: <1567048502-6064-1-git-send-email-jing-ting.wu@mediatek.com>
 <d5100b2d-46c4-5811-8274-8b06710d2594@arm.com>
 <20190830145501.zadfv2ffuu7j46ft@e107158-lin.cambridge.arm.com>
 <1567689999.2389.5.camel@mtkswgap22>
In-Reply-To: <1567689999.2389.5.camel@mtkswgap22>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Thu, 5 Sep 2019 16:01:51 +0200
Message-ID: <CAKfTPtC3txstND=6YkWBJ16i06cQ7xueUpD5j-j-UfuSf0-z-g@mail.gmail.com>
Subject: Re: [PATCH 1/1] sched/rt: avoid contend with CFS task
To: Jing-Ting Wu <jing-ting.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_070206_693035_B0B71DC0 
X-CRM114-Status: GOOD (  32.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: wsd_upstream@mediatek.com, Peter Zijlstra <peterz@infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Qais Yousef <qais.yousef@arm.com>, LAK <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jing-Ting,

On Thu, 5 Sep 2019 at 15:26, Jing-Ting Wu <jing-ting.wu@mediatek.com> wrote:
>
> On Fri, 2019-08-30 at 15:55 +0100, Qais Yousef wrote:
> > On 08/29/19 11:38, Valentin Schneider wrote:
> > > On 29/08/2019 04:15, Jing-Ting Wu wrote:
> > > > At original linux design, RT & CFS scheduler are independent.
> > > > Current RT task placement policy will select the first cpu in
> > > > lowest_mask, even if the first CPU is running a CFS task.
> > > > This may put RT task to a running cpu and let CFS task runnable.
> > > >
> > > > So we select idle cpu in lowest_mask first to avoid preempting
> > > > CFS task.
> > > >
> > >
> > > Regarding the RT & CFS thing, that's working as intended. RT is a whole
> > > class above CFS, it shouldn't have to worry about CFS.
> > >
> > > On the other side of things, CFS does worry about RT. We have the concept
> > > of RT-pressure in the CFS scheduler, where RT tasks will reduce a CPU's
> > > capacity (see fair.c::scale_rt_capacity()).
> > >
> > > CPU capacity is looked at on CFS wakeup (see wake_cap() and
> > > find_idlest_cpu()), and the periodic load balancer tries to spread load
> > > over capacity, so it'll tend to put less things on CPUs that are also
> > > running RT tasks.
> > >
> > > If RT were to start avoiding rqs with CFS tasks, we'd end up with a nasty
> > > situation were both are avoiding each other. It's even more striking when
> > > you see that RT pressure is done with a rq-wide RT util_avg, which
> > > *doesn't* get migrated when a RT task migrates. So if you decide to move
> > > a RT task to an idle CPU "B" because CPU "A" had runnable CFS tasks, the
> > > CFS scheduler will keep seeing CPU "B" as not significantly RT-pressured
> > > while that util_avg signal ramps up, whereas it would correctly see CPU
> > > "A" as RT-pressured if the RT task previously ran there.
> > >
> > > So overall I think this is the wrong approach.
> >
> > I like the idea, but yeah tend to agree the current approach might not be
> > enough.
> >
> > I think the major problem here is that on generic systems where CFS is a first
> > class citizen, RT tasks can be hostile to them - not always necessarily for a
> > good reason.
> >
> > To further complicate the matter, even among CFS tasks we can't tell which are
> > more important than the others - though hopefully latency-nice proposal will
> > make the situation better.
> >
> > So I agree we have a problem here, but I think this patch is just a temporary
> > band aid and we need to do better. Though I have no concrete suggestion yet on
> > how to do that.
> >
> > Another thing I couldn't quantify yet how common and how severe this problem is
> > yet. Jing-Ting, if you can share the details of your use case that'd be great.
> >
> > Cheers
> >
> > --
> > Qais Yousef
>
>
> I agree that the nasty situation will happen.The current approach and this patch might not be enough.

RT task should not harm its cache hotness and responsiveness for the
benefit of a CFS task

> But for requirement of performance, I think it is better to differentiate between idle CPU and CPU has CFS task.
>
> For example, we use rt-app to evaluate runnable time on non-patched environment.
> There are (NR_CPUS-1) heavy CFS tasks and 1 RT Task. When a CFS task is running, the RT task wakes up and choose the same CPU.
> The CFS task will be preempted and keep runnable until it is migrated to another cpu by load balance.
> But load balance is not triggered immediately, it will be triggered until timer tick hits with some condition satisfied(ex. rq->next_balance).

Yes you will have to wait for the next tick that will trigger an idle
load balance because you have an idle cpu and 2 runnable tack (1 RT +
1CFS) on the same CPU. But you should not wait for more than  1 tick

The current load_balance doesn't handle correctly the situation of 1
CFS and 1 RT task on same CPU while 1 CPU is idle. There is a rework
of the load_balance that is under review on the mailing list that
fixes this problem and your CFS task should migrate to the idle CPU
faster than now

> CFS tasks may be runnable for a long time. In this test case, it increase 332.091 ms runnable time for CFS task.
>
> The detailed log is shown as following, CFS task(thread1-6580) is preempted by RT task(thread0-6674) about 332ms:

332ms is quite long and is probably not an idle load blanace but a
busy load balance

> thread1-6580  [003] dnh2    94.452898: sched_wakeup: comm=thread0 pid=6674 prio=89 target_cpu=003
> thread1-6580  [003] d..2    94.452916: sched_switch: prev_comm=thread1 prev_pid=6580 prev_prio=120 prev_state=R ==> next_comm=thread0 next_pid=6674 next_prio=89
> .... 332.091ms
> krtatm-1930  [001] d..2    94.785007: sched_migrate_task: comm=thread1 pid=6580 prio=120 orig_cpu=3 dest_cpu=1
> krtatm-1930  [001] d..2    94.785020: sched_switch: prev_comm=krtatm prev_pid=1930 prev_prio=100 prev_state=S ==> next_comm=thread1 next_pid=6580 next_prio=120

your CFS task has not moved on the idle CPU but has replaced another task

Regards,
Vincent
>
> So I think choose idle CPU at RT wake up flow could reduce the CFS runnable time.
>
>
> Best regards,
> Jing-Ting Wu
>
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
