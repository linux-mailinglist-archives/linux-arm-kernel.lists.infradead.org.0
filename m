Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2F2D0D44
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 12:56:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OS1OHZbEB8Jhbz08+F0sQcog2hLKSnSPJGzedMNBD2c=; b=rDoycDdVmLrjaf
	FHCzn2ssc71RK1GfxxL9631dsk4qlFFotJmf+PGebRUSYcrEVnKxrnMt7pc7yrkM3z2a7QTVF8wQ1
	AZEpTY4Pu8lFIn1ewl0iQFHx1qzmYSyLujZOQKS8+JuHlgSEvtdv/tcJzRKQCSMNil3WIxZaEDKGP
	bEjflXIfyzFDRbfPZgBobw5XEpVoR7PquqDFRvVq21hChNa1KBbu4XkfO1iPkeY8P5qPEeJzOmL9x
	Q3zaunJ/f9awowNKFr2ei/mOFXjOIrBPIkpDBwiruePnMo/o2Q89vLlF6R0vdvJsM7n1aVsXBj7gn
	KqSFI9ETxAIkKFajHLrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI9dz-0006Yc-69; Wed, 09 Oct 2019 10:56:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI9dn-0006Wk-3I; Wed, 09 Oct 2019 10:56:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 854EF28;
 Wed,  9 Oct 2019 03:56:20 -0700 (PDT)
Received: from e107158-lin.cambridge.arm.com (e107158-lin.cambridge.arm.com
 [10.1.195.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4CC323F703;
 Wed,  9 Oct 2019 03:56:19 -0700 (PDT)
Date: Wed, 9 Oct 2019 11:56:17 +0100
From: Qais Yousef <qais.yousef@arm.com>
To: Jing-Ting Wu <jing-ting.wu@mediatek.com>
Subject: Re: [PATCH 1/1] sched/rt: avoid contend with CFS task
Message-ID: <20191009105616.dzhtowlrnqnyqgv4@e107158-lin.cambridge.arm.com>
References: <20190830145501.zadfv2ffuu7j46ft@e107158-lin.cambridge.arm.com>
 <1567689999.2389.5.camel@mtkswgap22>
 <CAKfTPtC3txstND=6YkWBJ16i06cQ7xueUpD5j-j-UfuSf0-z-g@mail.gmail.com>
 <1568892135.4892.10.camel@mtkswgap22>
 <CAKfTPtCuWrpW_o6r5cmGhLf_84PFHJhBk0pJ3fcbU_YgcBnTkQ@mail.gmail.com>
 <20190919142315.vmrrpvljpspqpurp@e107158-lin.cambridge.arm.com>
 <CAKfTPtA9-JLxs+DdLYjBQ6VfVGNxm++QYYi1wy-xS6o==EAPNw@mail.gmail.com>
 <CAKfTPtAy1JSh725GAVXmg_x3fby1UfYn504tq4n2rQs1-JMy6Q@mail.gmail.com>
 <20190919151152.m2zmiaspr6s5mcfh@e107158-lin.cambridge.arm.com>
 <1569979206.4892.23.camel@mtkswgap22>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1569979206.4892.23.camel@mtkswgap22>
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_035623_227632_6A9471C6 
X-CRM114-Status: GOOD (  38.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: wsd_upstream@mediatek.com, Peter Zijlstra <peterz@infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Valentin Schneider <valentin.schneider@arm.com>,
 LAK <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/02/19 09:20, Jing-Ting Wu wrote:
> On Thu, 2019-09-19 at 16:11 +0100, Qais Yousef wrote:
> > On 09/19/19 16:37, Vincent Guittot wrote:
> > > On Thu, 19 Sep 2019 at 16:32, Vincent Guittot
> > > <vincent.guittot@linaro.org> wrote:
> > > >
> > > > On Thu, 19 Sep 2019 at 16:23, Qais Yousef <qais.yousef@arm.com> wrote:
> > > > >
> > > > > On 09/19/19 14:27, Vincent Guittot wrote:
> > > > > > > > > But for requirement of performance, I think it is better to differentiate between idle CPU and CPU has CFS task.
> > > > > > > > >
> > > > > > > > > For example, we use rt-app to evaluate runnable time on non-patched environment.
> > > > > > > > > There are (NR_CPUS-1) heavy CFS tasks and 1 RT Task. When a CFS task is running, the RT task wakes up and choose the same CPU.
> > > > > > > > > The CFS task will be preempted and keep runnable until it is migrated to another cpu by load balance.
> > > > > > > > > But load balance is not triggered immediately, it will be triggered until timer tick hits with some condition satisfied(ex. rq->next_balance).
> > > > > > > >
> > > > > > > > Yes you will have to wait for the next tick that will trigger an idle
> > > > > > > > load balance because you have an idle cpu and 2 runnable tack (1 RT +
> > > > > > > > 1CFS) on the same CPU. But you should not wait for more than  1 tick
> > > > > > > >
> > > > > > > > The current load_balance doesn't handle correctly the situation of 1
> > > > > > > > CFS and 1 RT task on same CPU while 1 CPU is idle. There is a rework
> > > > > > > > of the load_balance that is under review on the mailing list that
> > > > > > > > fixes this problem and your CFS task should migrate to the idle CPU
> > > > > > > > faster than now
> > > > > > > >
> > > > > > >
> > > > > > > Period load balance should be triggered when current jiffies is behind
> > > > > > > rq->next_balance, but rq->next_balance is not often exactly the same
> > > > > > > with next tick.
> > > > > > > If cpu_busy, interval = sd->balance_interval * sd->busy_factor, and
> > > > > >
> > > > > > But if there is an idle CPU on the system, the next idle load balance
> > > > > > should apply shortly because the busy_factor is not used for this CPU
> > > > > > which is  not busy.
> > > > > > In this case, the next_balance interval is sd_weight which is probably
> > > > > > 4ms at cluster level and 8ms at system level in your case. This means
> > > > > > between 1 and 2 ticks
> > > > >
> > > > > But if the CFS task we're preempting was latency sensitive - this 1 or 2 tick
> > > > > is too late of a recovery.
> > > > >
> > > > > So while it's good we recover, but a preventative approach would be useful too.
> > > > > Just saying :-) I'm still not sure if this is the best longer term approach.
> > > >
> > > > like using a rt task ?
> > > 
> > > I mean, RT task should select a sub optimal CPU because of CFS
> > > If you want to favor CFS compared to RT it's probably because your
> > > task should be RT too
> > 
> > Yes possibly. But I don't think this is always doable. Especially when you're
> > running on generic system not a special purposed one.
> > 
> > And we don't need to favor CFS over RT. But I think they can play nicely
> > together.
> > 
> > For example on Android there are few RT tasks and rarely more than 1 runnable
> > RT task at a time. But if it happened to wakeup on the same CPU that is
> > running the UI thread you could lose a frame. And from what I've seen as well
> > we have 1-3 CFS tasks runnable, weighted more towards 1 task. So we do have
> > plenty of idle CPUs on average.
> > 
> > But as I mentioned earlier I couldn't prove yet this being a serious problem.
> > I was hoping the use case presented here is based on a real workload, but it's
> > synthetic. So I agree we need stronger reasons, but I think conceptually we do
> > have a conflict of interest where RT task could unnecessarily hurt the
> > performance of CFS task.
> > 
> > Another way to look at the problem is that the system is not partitioned
> > correctly and the admin could do a better job to prevent this.
> > 
> > --
> > Qais Yousef
> 
> 
> I use some third-party application, such as weibo and others, to test
> the application launch time. I apply this RT patch, and compare it with
> original design. Both RT patch test case and original design test case
> are already apply the
> patch:https://lore.kernel.org/patchwork/patch/1129117/
> 
> After apply the RT patch, launch time of weibo from 1325.72ms to 1214.88
> ms, its launch time decreases 110.84ms(about 8.36%). Other applications
> also decrease 7~13%.
> 
> At original design test case, RT tasks(surfaceflinger) could preempt
> some CFS tasks, if we add all these CFS tasks runnable time, it may have
> some impact on app launch time. So even if we already use the load
> balance patch and reduce a lot of CFS runnable time, I think choose idle
> CPU at RT scheduler could also reduce the some CFS runnable time.

It'd be good if you spin v2 of your patch with these values added to the commit
message. If you include numbers for 2 or 3 apps that'd be even better.

Make sure to add Steven Rostedt on CC and other maintainers/reviewers in
get_maintainer.pl

Cheers

--
Qais Yousef

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
