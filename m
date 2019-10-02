Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C86C4597
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 03:35:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qz6ytFpEtmNd22GDzKIBOGPm7LevpeYRqSXjeBdjt58=; b=liV/IZ3uHxbT3y
	IiKwyVTHM025r7UnHISc7VmA3N7lzwcHBE5t/NrMkTZ2dVm5cZw8LFp4fJj/jh9Czq80BsdBoP/Fh
	kdMXjj3oAPNPSpU7k0ivTgpufNFih6v2wsyxlYheunjaiNivzTS/FzWOpum+kCxrjJGfEZ5JPFvm1
	aq6wM3LKL9onIxs9eF6F2Fr+3xigfyJvJnN8Oco+oA6ligW9BlA+DzUZCx4ib+dvgIXEMxy3R0CdO
	Gi+dHBFuHF3EBzmspVRNHDrlSx+GTKjbspCjW8i9lpWdo8EwZUa5fNav1EZOsj6HaVwIaxtJLMcrJ
	Ji8OEWeRtuUO1anfjqbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFTY6-0000wj-BD; Wed, 02 Oct 2019 01:35:26 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFTXy-0000w7-HQ; Wed, 02 Oct 2019 01:35:20 +0000
X-UUID: b265bc907202429697f7caf1734968bb-20191001
X-UUID: b265bc907202429697f7caf1734968bb-20191001
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <jing-ting.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1625228342; Tue, 01 Oct 2019 17:35:10 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 1 Oct 2019 18:35:09 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 2 Oct 2019 09:20:06 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 2 Oct 2019 09:20:06 +0800
Message-ID: <1569979206.4892.23.camel@mtkswgap22>
Subject: Re: [PATCH 1/1] sched/rt: avoid contend with CFS task
From: Jing-Ting Wu <jing-ting.wu@mediatek.com>
To: Qais Yousef <qais.yousef@arm.com>
Date: Wed, 2 Oct 2019 09:20:06 +0800
In-Reply-To: <20190919151152.m2zmiaspr6s5mcfh@e107158-lin.cambridge.arm.com>
References: <1567048502-6064-1-git-send-email-jing-ting.wu@mediatek.com>
 <d5100b2d-46c4-5811-8274-8b06710d2594@arm.com>
 <20190830145501.zadfv2ffuu7j46ft@e107158-lin.cambridge.arm.com>
 <1567689999.2389.5.camel@mtkswgap22>
 <CAKfTPtC3txstND=6YkWBJ16i06cQ7xueUpD5j-j-UfuSf0-z-g@mail.gmail.com>
 <1568892135.4892.10.camel@mtkswgap22>
 <CAKfTPtCuWrpW_o6r5cmGhLf_84PFHJhBk0pJ3fcbU_YgcBnTkQ@mail.gmail.com>
 <20190919142315.vmrrpvljpspqpurp@e107158-lin.cambridge.arm.com>
 <CAKfTPtA9-JLxs+DdLYjBQ6VfVGNxm++QYYi1wy-xS6o==EAPNw@mail.gmail.com>
 <CAKfTPtAy1JSh725GAVXmg_x3fby1UfYn504tq4n2rQs1-JMy6Q@mail.gmail.com>
 <20190919151152.m2zmiaspr6s5mcfh@e107158-lin.cambridge.arm.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_183518_583595_28239536 
X-CRM114-Status: GOOD (  35.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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

On Thu, 2019-09-19 at 16:11 +0100, Qais Yousef wrote:
> On 09/19/19 16:37, Vincent Guittot wrote:
> > On Thu, 19 Sep 2019 at 16:32, Vincent Guittot
> > <vincent.guittot@linaro.org> wrote:
> > >
> > > On Thu, 19 Sep 2019 at 16:23, Qais Yousef <qais.yousef@arm.com> wrote:
> > > >
> > > > On 09/19/19 14:27, Vincent Guittot wrote:
> > > > > > > > But for requirement of performance, I think it is better to differentiate between idle CPU and CPU has CFS task.
> > > > > > > >
> > > > > > > > For example, we use rt-app to evaluate runnable time on non-patched environment.
> > > > > > > > There are (NR_CPUS-1) heavy CFS tasks and 1 RT Task. When a CFS task is running, the RT task wakes up and choose the same CPU.
> > > > > > > > The CFS task will be preempted and keep runnable until it is migrated to another cpu by load balance.
> > > > > > > > But load balance is not triggered immediately, it will be triggered until timer tick hits with some condition satisfied(ex. rq->next_balance).
> > > > > > >
> > > > > > > Yes you will have to wait for the next tick that will trigger an idle
> > > > > > > load balance because you have an idle cpu and 2 runnable tack (1 RT +
> > > > > > > 1CFS) on the same CPU. But you should not wait for more than  1 tick
> > > > > > >
> > > > > > > The current load_balance doesn't handle correctly the situation of 1
> > > > > > > CFS and 1 RT task on same CPU while 1 CPU is idle. There is a rework
> > > > > > > of the load_balance that is under review on the mailing list that
> > > > > > > fixes this problem and your CFS task should migrate to the idle CPU
> > > > > > > faster than now
> > > > > > >
> > > > > >
> > > > > > Period load balance should be triggered when current jiffies is behind
> > > > > > rq->next_balance, but rq->next_balance is not often exactly the same
> > > > > > with next tick.
> > > > > > If cpu_busy, interval = sd->balance_interval * sd->busy_factor, and
> > > > >
> > > > > But if there is an idle CPU on the system, the next idle load balance
> > > > > should apply shortly because the busy_factor is not used for this CPU
> > > > > which is  not busy.
> > > > > In this case, the next_balance interval is sd_weight which is probably
> > > > > 4ms at cluster level and 8ms at system level in your case. This means
> > > > > between 1 and 2 ticks
> > > >
> > > > But if the CFS task we're preempting was latency sensitive - this 1 or 2 tick
> > > > is too late of a recovery.
> > > >
> > > > So while it's good we recover, but a preventative approach would be useful too.
> > > > Just saying :-) I'm still not sure if this is the best longer term approach.
> > >
> > > like using a rt task ?
> > 
> > I mean, RT task should select a sub optimal CPU because of CFS
> > If you want to favor CFS compared to RT it's probably because your
> > task should be RT too
> 
> Yes possibly. But I don't think this is always doable. Especially when you're
> running on generic system not a special purposed one.
> 
> And we don't need to favor CFS over RT. But I think they can play nicely
> together.
> 
> For example on Android there are few RT tasks and rarely more than 1 runnable
> RT task at a time. But if it happened to wakeup on the same CPU that is
> running the UI thread you could lose a frame. And from what I've seen as well
> we have 1-3 CFS tasks runnable, weighted more towards 1 task. So we do have
> plenty of idle CPUs on average.
> 
> But as I mentioned earlier I couldn't prove yet this being a serious problem.
> I was hoping the use case presented here is based on a real workload, but it's
> synthetic. So I agree we need stronger reasons, but I think conceptually we do
> have a conflict of interest where RT task could unnecessarily hurt the
> performance of CFS task.
> 
> Another way to look at the problem is that the system is not partitioned
> correctly and the admin could do a better job to prevent this.
> 
> --
> Qais Yousef


I use some third-party application, such as weibo and others, to test
the application launch time. I apply this RT patch, and compare it with
original design. Both RT patch test case and original design test case
are already apply the
patch:https://lore.kernel.org/patchwork/patch/1129117/

After apply the RT patch, launch time of weibo from 1325.72ms to 1214.88
ms, its launch time decreases 110.84ms(about 8.36%). Other applications
also decrease 7~13%.

At original design test case, RT tasks(surfaceflinger) could preempt
some CFS tasks, if we add all these CFS tasks runnable time, it may have
some impact on app launch time. So even if we already use the load
balance patch and reduce a lot of CFS runnable time, I think choose idle
CPU at RT scheduler could also reduce the some CFS runnable time.



Best regards,
Jing-Ting Wu



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
