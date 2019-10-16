Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 818BED94F1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 17:06:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UKulFfvQeeQo6j4iT0C4Iy9zJ38cRbs8XbXHNqp41UQ=; b=Xjox7iGaTmaz9G
	q07nDDoqyut4eloFTdDjGMKi3BoOauccZnCg87HgM+FqQ2HNlRziENY9H7aCWfpSrkAvl22VPhaMs
	PhpNhr6Yn8zssZZFgoGGYkIAR+D/LujmjDnDQHyYcDgXT2EkNpdx3pg9TS/5mtq/tkjfiXAtih2aX
	9N8ee6VHab+/57e8HqXRFDBvk5FJQsGDOOCgOwM51pJpDAr23AEBICIG8U5+OYr2kFf5cqnGuSMwM
	2yssdUmvA318bghGvzEMVhSG7aH84FMLcRk/ysy72x4RbzlhiREdgl74fMnuXJ3ZnXD2OMLMLUBw9
	KYjTvj7XSB6CKGdoaJpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKksL-0004rL-PY; Wed, 16 Oct 2019 15:06:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKks6-0004o6-FA
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 15:05:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 454971570;
 Wed, 16 Oct 2019 08:05:53 -0700 (PDT)
Received: from bogus (unknown [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 48FB13F68E;
 Wed, 16 Oct 2019 08:05:51 -0700 (PDT)
Date: Wed, 16 Oct 2019 16:05:45 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Yunfeng Ye <yeyunfeng@huawei.com>
Subject: Re: [PATCH V2] arm64: psci: Reduce waiting time of cpu_psci_cpu_kill()
Message-ID: <20191016150545.GA6750@bogus>
References: <18068756-0f39-6388-3290-cf03746e767d@huawei.com>
 <20191015162358.bt5rffidkv2j4xqb@willie-the-truck>
 <ab42357e-f4f9-9019-e8d9-7e9bfe106e9e@huawei.com>
 <20191016102545.GA11386@bogus>
 <13d82e24-90bd-0c17-ef7f-aa7fec272f59@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <13d82e24-90bd-0c17-ef7f-aa7fec272f59@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_080554_650224_F7BAC60D 
X-CRM114-Status: GOOD (  29.81  )
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
Cc: "kstewart@linuxfoundation.org" <kstewart@linuxfoundation.org>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>, hushiyuan@huawei.com,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linfeilong@huawei.com, David Laight <David.Laight@ACULAB.COM>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "wuyun.wu@huawei.com" <wuyun.wu@huawei.com>, Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 07:29:59PM +0800, Yunfeng Ye wrote:
>
>
> On 2019/10/16 18:25, Sudeep Holla wrote:
> > On Wed, Oct 16, 2019 at 11:22:23AM +0800, Yunfeng Ye wrote:
> >>
> >>
> >> On 2019/10/16 0:23, Will Deacon wrote:
> >>> Hi,
> >>>
> >>> On Sat, Sep 21, 2019 at 07:21:17PM +0800, Yunfeng Ye wrote:
> >>>> If psci_ops.affinity_info() fails, it will sleep 10ms, which will not
> >>>> take so long in the right case. Use usleep_range() instead of msleep(),
> >>>> reduce the waiting time, and give a chance to busy wait before sleep.
> >>>
> >>> Can you elaborate on "the right case" please? It's not clear to me
> >>> exactly what problem you're solving here.
> >>>
> >> The situation is that when the power is off, we have a battery to save some
> >> information, but the battery power is limited, so we reduce the power consumption
> >> by turning off the cores, and need fastly to complete the core shutdown. However, the
> >> time of cpu_psci_cpu_kill() will take 10ms. We have tested the time that it does not
> >> need 10ms, and most case is about 50us-500us. if we reduce the time of cpu_psci_cpu_kill(),
> >> we can reduce 10% - 30% of the total time.
> >>
> >
> > Have you checked why PSCI AFFINITY_INFO not returning LEVEL_OFF quickly
> > then ? We wait for upto 5s in cpu_wait_death(worst case) before cpu_kill
> > is called from __cpu_die.
> >
> When cpu_wait_death() is done, it means that the cpu core's hardware prepare to
> die. I think not returning LEVEL_OFF quickly is that hardware need time to handle.
> I don't know how much time it need is reasonable, but I test that it need about
> 50us - 500us.
>

Fair enough.

> In addition I have not meat the worst case that cpu_wait_death() need upto
> 5s, and we only take normal case into account.
>

Good

>
> > Moreover I don't understand the argument here. The cpu being killed
> > will be OFF, as soon as it can and firmware controls that and this
> > change is not related to CPU_OFF. And this CPU calling cpu_kill can
> > sleep and 10ms is good to enter idle states if it's idle saving power,
> > so I fail to map the power saving you mention above.
> >
> We have hundreds of CPU cores that need to be shut down. For example,
> a CPU has 200 cores, and the thread to shut down the core is in CPU 0.
> and the thread need to shut down from core 1 to core 200. However, the
> implementation of the kernel can only shut down cpu cores one by one, so we
> need to wait for cpu_kill() to finish before shutting down the next
> CPU core. If it wait for 10ms each time in cpu_kill, it will takes up
> about 2 seconds in cpu_kill() total.
>

OK, thanks for the illustrative example. This make sense to me now. But
you comparing with battery powered devices confused me and I assumed
it as some hack to optimise mobile workload.

> >> So change msleep (10) to usleep_range() to reduce the waiting time. In addition,
> >> we don't want to be scheduled during the sleeping time, some threads may take a
> >> long time and don't give up the CPU, which affects the time of core shutdown,
> >> Therefore, we add a chance to busy-wait max 1ms.
> >>
> >
> > On the other hand, usleep_range reduces the timer interval and hence
> > increases the chance of the callee CPU not to enter deeper idle states.
> >
> > What am I missing here ? What's the use case or power off situation
> > you are talking about above ?
> >
> As mentioned above, we are not to save power through msleep to idle state,
> but to quickly turn off other CPU core's hardware to reduce power consumption.

You still don't provide your use-case in which this is required. I know
this will be useful for suspend-to-ram. Do you have any other use-case
that you need to power-off large number of CPUs like this ? Also you
mentioned battery powered, and I don't think any battery powered device
has 200 thread like in your example :)

You need to mention few things clearly in the commit log:
1. How the CPU hotplug operation is serialised in some use-case like
   suspend-to-ram
2. How that may impact systems with large number of CPUs
3. How your change helps to improve that

It may it easy for anyone to understand the motivation for this change.
The commit message you have doesn't give any clue on all the above and
hence we have lot of questions.

I will respond to the original patch separately.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
