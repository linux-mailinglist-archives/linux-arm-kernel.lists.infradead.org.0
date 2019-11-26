Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3E51097EE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 04:01:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kp/0PUKGJEvZ6076NuVu2ZbeSRZrZTsR5mhDmZ+EmKo=; b=qtkCBF1YhK2vFO
	nbySH63TgTt+oV8ksGgqU+3PCWfcpQACHvccK+52gI/bji2Xs6+BK1tnIpAy6A54HsNkQ1Dg//D8N
	fR4tIUJDg9u+GNcMdjiZKhbgNlNdyoJUpZTnlo6QK1Vd7s1Mo1fa3JYAXBnE1t+wDo2GhML/DdTVu
	bvOf9zIEO3uQQcSpi6K/GOwtay5b1L5GMveCbZ3hoNl0j8b3z9NH8x3h6ynDPyKs0bKDeAqGNq0ZA
	fQ4puYCtgi7uoNTplYOuijmbUHKg3QBhYvDTSTOnvewy78tishnOTgz5jx+fQisUj6czbia1JzANB
	KcSmpszDyP/E+ma7x8hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZR6G-0001uc-Ua; Tue, 26 Nov 2019 03:01:12 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZR66-0001tO-BR; Tue, 26 Nov 2019 03:01:04 +0000
X-UUID: d3d077e5ea944e5489368d65f7fb03fd-20191125
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=U4VK8y3TGwrQrTTLGoGY/Sz/+8bSigII6WIe7UI7Fsg=; 
 b=SUFHjTwtnhBzGLG9YOyIDp1I1RtMyUDYWZE/RbN2B03qM432PH1Xdb7GDVgvXDDXd7PviVe4A1oEA3P6E8CMnzjwZgwsE0I1itVnLLLMkyHQrdj0YfXJRvupQWWgVi28Rh0DWlZXlrdvOHG6FWMVJKkbrxkjHGS5B9uPbuiot90=;
X-UUID: d3d077e5ea944e5489368d65f7fb03fd-20191125
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <yt.chang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1816778796; Mon, 25 Nov 2019 19:00:51 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 25 Nov 2019 19:01:21 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 26 Nov 2019 11:00:43 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 26 Nov 2019 11:00:33 +0800
Message-ID: <1574737251.12247.11.camel@mtksdccf07>
Subject: Re: [PATCH 1/1] sched: cfs_rq h_load might not update due to irq
 disable
From: Kathleen Chang <yt.chang@mediatek.com>
To: Peter Zijlstra <peterz@infradead.org>
Date: Tue, 26 Nov 2019 11:00:51 +0800
In-Reply-To: <20191121123804.GR4097@hirez.programming.kicks-ass.net>
References: <1574325009-10846-1-git-send-email-yt.chang@mediatek.com>
 <20191121123804.GR4097@hirez.programming.kicks-ass.net>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_190102_403688_E09B00EA 
X-CRM114-Status: GOOD (  23.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-11-21 at 13:38 +0100, Peter Zijlstra wrote:
> On Thu, Nov 21, 2019 at 04:30:09PM +0800, YT Chang wrote:
> > Syndrome:
> > 
> > Two CPUs might do idle balance in the same time.
> > One CPU does idle balance and pulls some tasks.
> > However before pick next task, ALL task are pulled back to other CPU.
> > That results in infinite loop in both CPUs.
> 
> Can you easily reproduce this?

No, I can't easily reproduce this. 
> 
> > =========================================
> > code flow:
> > 
> > in pick_next_task_fair()
> > 
> > again:
> > 
> > if nr_running == 0
> > 	goto idle
> > pick next task
> > 	return
> > 
> > idle:
> > 	idle_balance
> >        /* pull some tasks from other CPU,
> >         * However other CPU are also do idle balance,
> > 	* and pull back these task */
> > 
> > 	go to again
> > 
> > =========================================
> > The result to pull ALL tasks back when the task_h_load
> > is incorrect and too low.
> 
> Clearly you're not running a PREEMPT kernel, otherwise the break in
> detach_tasks() would've saved you, right?
> 
> > static unsigned long task_h_load(struct task_struct *p)
> > {
> >         struct cfs_rq *cfs_rq = task_cfs_rq(p);
> > 
> > 	update_cfs_rq_h_load(cfs_rq);
> > 	return div64_ul(p->se.avg.load_avg_contrib * cfs_rq->h_load,
> > 			cfs_rq->runnable_load_avg + 1);
> > }
> > 
> > The cfs_rq->h_load is incorrect and might too small.
> > The original idea of cfs_rq::last_h_load_update will not
> > update cfs_rq::h_load more than once a jiffies.
> > When the Two CPUs pull each other in the pick_next_task_fair,
> > the irq disabled and result in jiffie not update.
> > (Other CPUs wait for runqueue lock locked by the two CPUs.
> > So, ALL CPUs are irq disabled.)
> 
> This cannot be true; because the loop drops rq->lock, so other CPUs
> should have an opportunity to acquire the lock and make progress.

I recheck other CPUs situation. 
Other CPUs are irq disabled due to wait for lock (Not runqueue lock).

The root cause should be why other CPUs are waiting for the lock 
rather than replacing jiffies with sched_clock().

> 
> > Solution:
> > cfs_rq h_load might not update due to irq disable
> > use sched_clock instead jiffies
> > 
> > Signed-off-by: YT Chang <yt.chang@mediatek.com>
> > ---
> >  kernel/sched/fair.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> > 
> > diff --git a/kernel/sched/fair.c b/kernel/sched/fair.c
> > index 83ab35e..231c53f 100644
> > --- a/kernel/sched/fair.c
> > +++ b/kernel/sched/fair.c
> > @@ -7578,9 +7578,11 @@ static void update_cfs_rq_h_load(struct cfs_rq *cfs_rq)
> >  {
> >  	struct rq *rq = rq_of(cfs_rq);
> >  	struct sched_entity *se = cfs_rq->tg->se[cpu_of(rq)];
> > -	unsigned long now = jiffies;
> > +	u64 now = sched_clock_cpu(cpu_of(rq));
> >  	unsigned long load;
> >  
> > +	now = now * HZ >> 30;
> > +
> >  	if (cfs_rq->last_h_load_update == now)
> >  		return;
> >  
> 
> This is disguisting and wrong. That is not the correct relation between
> sched_clock() and jiffies.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
