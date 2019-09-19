Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E5A5B7C27
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 16:23:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=99zs82IZMnkXHZwVEszIJFqdWOh8Uy+trIz3YZvFWNo=; b=b3kV1hwkabOTWq
	H5elOqknIjTOIdGq4y92lw8g6aaiD3Sw6orvwg6DRAOqbmhzfyrdKt3Tfpmscp7BIEoK3ogLHy3b0
	1gKnrlZvaWTQhTFtV7wyRVxr9b/L7pBD+0PXBd61b/OwmjHyIPwbLtDwanrDrhV0lfkdaWsaWJ0s8
	s5XXgnytHXtCAQZsbv0xlLqN1oU/c+A3joGhjZQ2g7teDtGi1CnUTjyTsv6ybwvdUoMU/laOprR06
	tQNdxQCykQtQ8bDy2ChhardUfVSMMyo/5/pjceNuUA+RJXyyZatd1BpooP0cu5/jEWTTALoJSZwyA
	Ukl84Tl59uz+u2HRTC1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAxLU-0004W8-95; Thu, 19 Sep 2019 14:23:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAxL8-0004Ua-RA; Thu, 19 Sep 2019 14:23:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7D830337;
 Thu, 19 Sep 2019 07:23:20 -0700 (PDT)
Received: from e107158-lin.cambridge.arm.com (e107158-lin.cambridge.arm.com
 [10.1.194.52])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3F4F93F575;
 Thu, 19 Sep 2019 07:23:19 -0700 (PDT)
Date: Thu, 19 Sep 2019 15:23:16 +0100
From: Qais Yousef <qais.yousef@arm.com>
To: Vincent Guittot <vincent.guittot@linaro.org>
Subject: Re: [PATCH 1/1] sched/rt: avoid contend with CFS task
Message-ID: <20190919142315.vmrrpvljpspqpurp@e107158-lin.cambridge.arm.com>
References: <1567048502-6064-1-git-send-email-jing-ting.wu@mediatek.com>
 <d5100b2d-46c4-5811-8274-8b06710d2594@arm.com>
 <20190830145501.zadfv2ffuu7j46ft@e107158-lin.cambridge.arm.com>
 <1567689999.2389.5.camel@mtkswgap22>
 <CAKfTPtC3txstND=6YkWBJ16i06cQ7xueUpD5j-j-UfuSf0-z-g@mail.gmail.com>
 <1568892135.4892.10.camel@mtkswgap22>
 <CAKfTPtCuWrpW_o6r5cmGhLf_84PFHJhBk0pJ3fcbU_YgcBnTkQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKfTPtCuWrpW_o6r5cmGhLf_84PFHJhBk0pJ3fcbU_YgcBnTkQ@mail.gmail.com>
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_072322_926600_7A1D0C8C 
X-CRM114-Status: GOOD (  21.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Jing-Ting Wu <jing-ting.wu@mediatek.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Valentin Schneider <valentin.schneider@arm.com>,
 LAK <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/19/19 14:27, Vincent Guittot wrote:
> > > > But for requirement of performance, I think it is better to differentiate between idle CPU and CPU has CFS task.
> > > >
> > > > For example, we use rt-app to evaluate runnable time on non-patched environment.
> > > > There are (NR_CPUS-1) heavy CFS tasks and 1 RT Task. When a CFS task is running, the RT task wakes up and choose the same CPU.
> > > > The CFS task will be preempted and keep runnable until it is migrated to another cpu by load balance.
> > > > But load balance is not triggered immediately, it will be triggered until timer tick hits with some condition satisfied(ex. rq->next_balance).
> > >
> > > Yes you will have to wait for the next tick that will trigger an idle
> > > load balance because you have an idle cpu and 2 runnable tack (1 RT +
> > > 1CFS) on the same CPU. But you should not wait for more than  1 tick
> > >
> > > The current load_balance doesn't handle correctly the situation of 1
> > > CFS and 1 RT task on same CPU while 1 CPU is idle. There is a rework
> > > of the load_balance that is under review on the mailing list that
> > > fixes this problem and your CFS task should migrate to the idle CPU
> > > faster than now
> > >
> >
> > Period load balance should be triggered when current jiffies is behind
> > rq->next_balance, but rq->next_balance is not often exactly the same
> > with next tick.
> > If cpu_busy, interval = sd->balance_interval * sd->busy_factor, and
> 
> But if there is an idle CPU on the system, the next idle load balance
> should apply shortly because the busy_factor is not used for this CPU
> which is  not busy.
> In this case, the next_balance interval is sd_weight which is probably
> 4ms at cluster level and 8ms at system level in your case. This means
> between 1 and 2 ticks

But if the CFS task we're preempting was latency sensitive - this 1 or 2 tick
is too late of a recovery.

So while it's good we recover, but a preventative approach would be useful too.
Just saying :-) I'm still not sure if this is the best longer term approach.

--
Qais Yousef

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
