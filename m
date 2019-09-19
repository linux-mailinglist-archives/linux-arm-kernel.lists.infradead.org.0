Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2D2B7D01
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 16:37:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t5na3909O+mKEg45g7A+fviCyRr9IK7voyro9sOWDbs=; b=UtMXmnmJXDUeER
	S7Ul0MK83Y2xXuX2E2ky9jkTjr0T7vWp3nrmThtvdmpWdeTzNF9w5vsgOVcCLuy2XV45xWx44Hdm2
	slMAM1SN5V567erYyZP/6AvFDQEJKB9RyQ518DfFIUkCJMP7Xg11AkZkTp8733sqeVpqlSB5g17yf
	/QlHI4fOUpVd2SY3yi8g1csJ9s04sAglm8Lc+qplVzo9TdKDB029EUtD2xBWB4zsquCpLJtW2qwkS
	cqpfXZlJMngvOZ/UPvFtEZwKHb9ECvTuFAAZnlDC+yo/7+Bg7MCDQmGH1hhQC81zosR/cI7giOCG4
	hijfduj2Znu4B1Az02pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAxYz-0007pi-9q; Thu, 19 Sep 2019 14:37:41 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAxYi-0007oe-6m
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 14:37:25 +0000
Received: by mail-lf1-x142.google.com with SMTP id y127so2582088lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 07:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=C/YKIIlDS8lZho9e4vPUeHyogrERU8xcKbZimBkWeCQ=;
 b=W3UQB2RrUJ6vv2M8HVuZVtFpnWXhc3dHhXFwnUsp6CeKd30GsXdyZZw2GFh1mxC8km
 vK8dfFCRgbYvp6PeqcgtD7al/L9UpnvwUFuj5EeKyCb0WOfA7CScYIPAbsF4N2ksXz+0
 X4t+cFR8bz6VRAnE7V77kNi4ZdoCg+MnmI+sUsyRi/1LTugIZgMwa2ClGlOWdvcHoaH8
 +ciin3FlYbQS3Fy5VogrE4bthJuZjKAoBoA6slyjZ0Dw8KKNftfxZzE7oEjyQLr1T74z
 CqgGfFvOg0nHEtuAYtO/wcP+KA/k+Vxl4lkpGrA4E9ZKdgyxFQShtZE6p9OLLMFcHNy7
 09og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=C/YKIIlDS8lZho9e4vPUeHyogrERU8xcKbZimBkWeCQ=;
 b=jLO3KuQflAmeG/t+2r7zfJlXtOGstJ7A7Ac+6Gh7kzi1MORYqBUq9eOaH9W/fv1HT3
 2ll7igv9GE/Ed9l1w9tL2n8vxip/FsdJbLd9Fb4J8zkljO6Xot1Gow7DB4hVktkKVWpw
 lc2Y5lHMysbOPj5di1C53wkdhGHdh0zBY/Hyoyzq+mdZmfX6WFpnpEl0GNeBHaYsJPK9
 KHmaw3qlm8PSZiMc4EQ52fLAOm6UspY8AX7/isZ8rgdxwQgJLMG6lLEGTsTpUej63YsY
 h4KrQZFCnINuRtR/w2n1xrAPjcsKnWL8gQDX94VANgluzg/YhKMcFh9xyiPZjqwRsOUA
 poWA==
X-Gm-Message-State: APjAAAUfM+p5d/qqrT9DIAzCaxHrRFUVMglVCUvj2k7OqMqEXNteAPAf
 vU08DmLDN+ABQ/CIq/JJ3F3aMyDjE93RgzsGRLVlIA==
X-Google-Smtp-Source: APXvYqxsqDiic3hvUIIWYsTzTncSZd01uGcFQSbFPvhTKDCRIprfIO3eszoVG4u+PbsHXQ8Xikg9MTyxZG/mKHhzbIs=
X-Received: by 2002:ac2:568c:: with SMTP id 12mr5126705lfr.133.1568903841835; 
 Thu, 19 Sep 2019 07:37:21 -0700 (PDT)
MIME-Version: 1.0
References: <1567048502-6064-1-git-send-email-jing-ting.wu@mediatek.com>
 <d5100b2d-46c4-5811-8274-8b06710d2594@arm.com>
 <20190830145501.zadfv2ffuu7j46ft@e107158-lin.cambridge.arm.com>
 <1567689999.2389.5.camel@mtkswgap22>
 <CAKfTPtC3txstND=6YkWBJ16i06cQ7xueUpD5j-j-UfuSf0-z-g@mail.gmail.com>
 <1568892135.4892.10.camel@mtkswgap22>
 <CAKfTPtCuWrpW_o6r5cmGhLf_84PFHJhBk0pJ3fcbU_YgcBnTkQ@mail.gmail.com>
 <20190919142315.vmrrpvljpspqpurp@e107158-lin.cambridge.arm.com>
 <CAKfTPtA9-JLxs+DdLYjBQ6VfVGNxm++QYYi1wy-xS6o==EAPNw@mail.gmail.com>
In-Reply-To: <CAKfTPtA9-JLxs+DdLYjBQ6VfVGNxm++QYYi1wy-xS6o==EAPNw@mail.gmail.com>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Thu, 19 Sep 2019 16:37:10 +0200
Message-ID: <CAKfTPtAy1JSh725GAVXmg_x3fby1UfYn504tq4n2rQs1-JMy6Q@mail.gmail.com>
Subject: Re: [PATCH 1/1] sched/rt: avoid contend with CFS task
To: Qais Yousef <qais.yousef@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_073724_258005_264F637D 
X-CRM114-Status: GOOD (  26.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Thu, 19 Sep 2019 at 16:32, Vincent Guittot
<vincent.guittot@linaro.org> wrote:
>
> On Thu, 19 Sep 2019 at 16:23, Qais Yousef <qais.yousef@arm.com> wrote:
> >
> > On 09/19/19 14:27, Vincent Guittot wrote:
> > > > > > But for requirement of performance, I think it is better to differentiate between idle CPU and CPU has CFS task.
> > > > > >
> > > > > > For example, we use rt-app to evaluate runnable time on non-patched environment.
> > > > > > There are (NR_CPUS-1) heavy CFS tasks and 1 RT Task. When a CFS task is running, the RT task wakes up and choose the same CPU.
> > > > > > The CFS task will be preempted and keep runnable until it is migrated to another cpu by load balance.
> > > > > > But load balance is not triggered immediately, it will be triggered until timer tick hits with some condition satisfied(ex. rq->next_balance).
> > > > >
> > > > > Yes you will have to wait for the next tick that will trigger an idle
> > > > > load balance because you have an idle cpu and 2 runnable tack (1 RT +
> > > > > 1CFS) on the same CPU. But you should not wait for more than  1 tick
> > > > >
> > > > > The current load_balance doesn't handle correctly the situation of 1
> > > > > CFS and 1 RT task on same CPU while 1 CPU is idle. There is a rework
> > > > > of the load_balance that is under review on the mailing list that
> > > > > fixes this problem and your CFS task should migrate to the idle CPU
> > > > > faster than now
> > > > >
> > > >
> > > > Period load balance should be triggered when current jiffies is behind
> > > > rq->next_balance, but rq->next_balance is not often exactly the same
> > > > with next tick.
> > > > If cpu_busy, interval = sd->balance_interval * sd->busy_factor, and
> > >
> > > But if there is an idle CPU on the system, the next idle load balance
> > > should apply shortly because the busy_factor is not used for this CPU
> > > which is  not busy.
> > > In this case, the next_balance interval is sd_weight which is probably
> > > 4ms at cluster level and 8ms at system level in your case. This means
> > > between 1 and 2 ticks
> >
> > But if the CFS task we're preempting was latency sensitive - this 1 or 2 tick
> > is too late of a recovery.
> >
> > So while it's good we recover, but a preventative approach would be useful too.
> > Just saying :-) I'm still not sure if this is the best longer term approach.
>
> like using a rt task ?

I mean, RT task should select a sub optimal CPU because of CFS
If you want to favor CFS compared to RT it's probably because your
task should be RT too

>
> >
> > --
> > Qais Yousef

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
