Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14477AA468
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 15:27:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rLwil8TMn3FzzMzLYK+8AIy1ubKYZ7lphHaTsLjgRv0=; b=qflwOMTk0HngTl
	WTZ2jHOmNjJ7mXI4ps3aGXt2pT4YE1YUU62PhANyfeq1092P2SEwe/wdxqqiw6aLtSn6VgTapphTf
	w9zIGJ54QTfU3R1l215Or6J6wBGBHkJAA9qPIfu2BGGFpPQad+uo3IjgL2v2ZZLYLfXw0t4A0HY/O
	ffFD8raTf/16QKcBe/sltA2zyZi6Z0LGD8l/6kS7cPPfkN0B9g7BlugQYrm3Rnv6/nFMqrk0nTflH
	0tt2n+AUo4Ymp9Hn9Jyj+hARmrFmhCLYBS71RBIk5pwNFjBsM8Jf8rRzjcilxm/oQXcX/EI6lj/VK
	mFjFuT5rq2dJtLyyFeMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5rn2-0000Tj-Uy; Thu, 05 Sep 2019 13:27:09 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5rmk-0000MF-ME; Thu, 05 Sep 2019 13:26:52 +0000
X-UUID: ad3cf4ad084647ab842edc3a7552582c-20190905
X-UUID: ad3cf4ad084647ab842edc3a7552582c-20190905
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <jing-ting.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 855500143; Thu, 05 Sep 2019 05:26:42 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Sep 2019 06:26:38 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Sep 2019 21:26:37 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 5 Sep 2019 21:26:36 +0800
Message-ID: <1567689999.2389.5.camel@mtkswgap22>
Subject: Re: [PATCH 1/1] sched/rt: avoid contend with CFS task
From: Jing-Ting Wu <jing-ting.wu@mediatek.com>
To: Qais Yousef <qais.yousef@arm.com>
Date: Thu, 5 Sep 2019 21:26:39 +0800
In-Reply-To: <20190830145501.zadfv2ffuu7j46ft@e107158-lin.cambridge.arm.com>
References: <1567048502-6064-1-git-send-email-jing-ting.wu@mediatek.com>
 <d5100b2d-46c4-5811-8274-8b06710d2594@arm.com>
 <20190830145501.zadfv2ffuu7j46ft@e107158-lin.cambridge.arm.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_062650_867822_78DC7E05 
X-CRM114-Status: GOOD (  24.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Valentin Schneider <valentin.schneider@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-08-30 at 15:55 +0100, Qais Yousef wrote:
> On 08/29/19 11:38, Valentin Schneider wrote:
> > On 29/08/2019 04:15, Jing-Ting Wu wrote:
> > > At original linux design, RT & CFS scheduler are independent.
> > > Current RT task placement policy will select the first cpu in
> > > lowest_mask, even if the first CPU is running a CFS task.
> > > This may put RT task to a running cpu and let CFS task runnable.
> > > 
> > > So we select idle cpu in lowest_mask first to avoid preempting
> > > CFS task.
> > > 
> > 
> > Regarding the RT & CFS thing, that's working as intended. RT is a whole
> > class above CFS, it shouldn't have to worry about CFS.
> > 
> > On the other side of things, CFS does worry about RT. We have the concept
> > of RT-pressure in the CFS scheduler, where RT tasks will reduce a CPU's
> > capacity (see fair.c::scale_rt_capacity()).
> > 
> > CPU capacity is looked at on CFS wakeup (see wake_cap() and
> > find_idlest_cpu()), and the periodic load balancer tries to spread load
> > over capacity, so it'll tend to put less things on CPUs that are also
> > running RT tasks.
> > 
> > If RT were to start avoiding rqs with CFS tasks, we'd end up with a nasty
> > situation were both are avoiding each other. It's even more striking when
> > you see that RT pressure is done with a rq-wide RT util_avg, which
> > *doesn't* get migrated when a RT task migrates. So if you decide to move
> > a RT task to an idle CPU "B" because CPU "A" had runnable CFS tasks, the
> > CFS scheduler will keep seeing CPU "B" as not significantly RT-pressured
> > while that util_avg signal ramps up, whereas it would correctly see CPU
> > "A" as RT-pressured if the RT task previously ran there.
> > 
> > So overall I think this is the wrong approach.
> 
> I like the idea, but yeah tend to agree the current approach might not be
> enough.
> 
> I think the major problem here is that on generic systems where CFS is a first
> class citizen, RT tasks can be hostile to them - not always necessarily for a
> good reason.
> 
> To further complicate the matter, even among CFS tasks we can't tell which are
> more important than the others - though hopefully latency-nice proposal will
> make the situation better.
> 
> So I agree we have a problem here, but I think this patch is just a temporary
> band aid and we need to do better. Though I have no concrete suggestion yet on
> how to do that.
> 
> Another thing I couldn't quantify yet how common and how severe this problem is
> yet. Jing-Ting, if you can share the details of your use case that'd be great.
> 
> Cheers
> 
> --
> Qais Yousef


I agree that the nasty situation will happen.The current approach and this patch might not be enough.
But for requirement of performance, I think it is better to differentiate between idle CPU and CPU has CFS task.

For example, we use rt-app to evaluate runnable time on non-patched environment.
There are (NR_CPUS-1) heavy CFS tasks and 1 RT Task. When a CFS task is running, the RT task wakes up and choose the same CPU.
The CFS task will be preempted and keep runnable until it is migrated to another cpu by load balance.
But load balance is not triggered immediately, it will be triggered until timer tick hits with some condition satisfied(ex. rq->next_balance).
CFS tasks may be runnable for a long time. In this test case, it increase 332.091 ms runnable time for CFS task.

The detailed log is shown as following, CFS task(thread1-6580) is preempted by RT task(thread0-6674) about 332ms:
thread1-6580  [003] dnh2    94.452898: sched_wakeup: comm=thread0 pid=6674 prio=89 target_cpu=003 
thread1-6580  [003] d..2    94.452916: sched_switch: prev_comm=thread1 prev_pid=6580 prev_prio=120 prev_state=R ==> next_comm=thread0 next_pid=6674 next_prio=89
.... 332.091ms
krtatm-1930  [001] d..2    94.785007: sched_migrate_task: comm=thread1 pid=6580 prio=120 orig_cpu=3 dest_cpu=1
krtatm-1930  [001] d..2    94.785020: sched_switch: prev_comm=krtatm prev_pid=1930 prev_prio=100 prev_state=S ==> next_comm=thread1 next_pid=6580 next_prio=120

So I think choose idle CPU at RT wake up flow could reduce the CFS runnable time. 


Best regards,
Jing-Ting Wu



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
