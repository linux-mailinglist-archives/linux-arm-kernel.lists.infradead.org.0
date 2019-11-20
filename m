Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89DFF103B7E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 14:33:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bVAHXvvBZDNx4Yy2l4jQo1NQwziRBBInDBN4xmBKnzA=; b=leLgw2cEAQR2FiEUAbdICKqx8
	3DdmIAYWw2D7b/Zfoivi0vQonCZy/rw1QJrWGURHWP3M5D4FGPkMRt2bropSDLCU6eZfCP4R9vodT
	juhc2SbpiEcFZZfkoWwxM78FLNlhGRn6gAzCHmZsGqJlQ8T4+4hOnqsPnrQuIYNXwlZ+hHgFObzl4
	ZNkQ1ZoJmWMHIfEu2k8n3BHJjztD2bV1dw37VRwHT1DyA4ewi/Ax4OadlVBDBQ0GULr5AQoRcO5vb
	Gl53wC8XBDqbo/OH84ZKBAPTy2Q3FVS3jMqazGPvqzbbIMUtEfNDIpFKH4GB3eqlsgAa3EDSvylnV
	+vfTxMoWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXQ6p-0007QG-SW; Wed, 20 Nov 2019 13:33:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXQ6c-0007Pv-Ry
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 13:33:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 605CC328;
 Wed, 20 Nov 2019 05:33:13 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E1EC43F703;
 Wed, 20 Nov 2019 05:33:12 -0800 (PST)
Subject: Re: [PATCH] irq-gic: select all CPU's selected in interrupt affinity
 settings
To: Leonid Movshovich <event.riga@gmail.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <CAPaFbat4MM0=iVB-VazTK9=2qRebAgEN4euYCTESRo3yfx75Kw@mail.gmail.com>
 <20191119233633.GG25745@shell.armlinux.org.uk>
 <CAPaFbatG+ePwjCnBva1tfmzmvpHZv9xW3nM4gj2DTpFn=D+9Vg@mail.gmail.com>
 <2cd3e872-57d5-5cbb-78d7-98da6447dc59@arm.com>
 <CAPaFbasJGxV=mEGHAOWdt31vapCfV_RyD1Ptz6aa_WTp6htPKg@mail.gmail.com>
 <20191120105017.GN25745@shell.armlinux.org.uk>
 <CAPaFbasKH_BRARMtQYqxWR6koQB=cF_Ln5n=-7uCqdbjqmu9Rg@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <11daeee6-8dca-96fa-b6ee-a25ad3e815a9@arm.com>
Date: Wed, 20 Nov 2019 13:33:11 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAPaFbasKH_BRARMtQYqxWR6koQB=cF_Ln5n=-7uCqdbjqmu9Rg@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_053314_988710_95DFAD20 
X-CRM114-Status: GOOD (  21.25  )
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20/11/2019 11:25 am, Leonid Movshovich wrote:
> On Wed, 20 Nov 2019 at 10:50, Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
>>
>> On Wed, Nov 20, 2019 at 10:44:39AM +0000, Leonid Movshovich wrote:
>>> On Wed, 20 Nov 2019 at 01:15, Robin Murphy <robin.murphy@arm.com> wrote:
>>>>
>>>> On 2019-11-20 12:24 am, Leonid Movshovich wrote:
>>>>> On Tue, 19 Nov 2019 at 23:36, Russell King - ARM Linux admin
>>>>> <linux@armlinux.org.uk> wrote:
>>>>>>
>>>>>> On Tue, Nov 19, 2019 at 11:12:26PM +0000, event wrote:
>>>>>>> So far only a CPU selected with top affinity bit was selected. This
>>>>>>> resulted in all interrupts
>>>>>>> being processed by CPU0 by default despite "FF" default affinity
>>>>>>> setting for all interrupts
>>>>>>
>>>>>> Have you checked whether this causes _ALL_ CPUs in the mask to be
>>>>>> delivered a single interrupt, thereby causing _ALL_ CPUs to be
>>>>>> slowed down and hit the same locks at the same time.
>>>>>>
>>>>>
>>>>> Yes, I've checked this. No, interrupt is delivered to only one CPU.
>>>>> Also ARM GIC architecture specification specifically states in chapter
>>>>> 3.1.1 that hardware interrupts are delivered to a single CPU in
>>>>> multiprocessor system ("1-N model").
>>>>
>>>> But see also section 3.2.3 - just because only one CPU actually runs the
>>>> given ISR doesn't necessarily guarantee that the others *weren't*
>>>> interrupted. I'd also hesitate to make any assumptions that all GIC
>>>> implementations behave exactly the same way.
>>>>
>>>> Robin.
>>>
>>> Yes, that's right, however:
>>> 1. They are only interrupted for a split-second, since interrupt is
>>> immediately ACKed in gic_handle_irq
>>
>> Even that is detrimental - consider cpuidle where a CPU is placed in
>> a low power state waiting for an interrupt, and it keeps getting woken
>> for interrupts that it isn't able to handle.  The effect will be to
>> stop the CPU hitting the lower power states, which would be a regression
>> over how the kernel behaves today.
>>
>>> 2. More important that smp_affinity in procfs is defined to allow user
>>> to configure multiple CPU's to handle interrupts (see
>>> Documentation/IRQ-affinity.txt) which is effectively prohibited in
>>> current implementation. I mean, when user sets it to FF, she expects
>>> all CPUs to process interrupts, not CPU0 only

I have to say, my interaction with the IRQ layer is far more as a "user" 
than as a "developer", yet I've always assumed that the affinity mask 
represents the set of CPUs that *may* handle an interrupt and have never 
felt particularly surprised by the naive implementation of "just pick 
the first one".

Do these users also expect the scheduler to constantly context-switch a 
single active task all over the place just because the default thread 
affinity mask says it can?

>> The reason we've ended up with that on ARM is precisely because it
>> wasted CPU resources, and my attempts at writing code to distribute
>> the interrupt between CPU cores did not have a successful outcome.
>> So, the best thing that could be done was to route interrupts to the
>> first core, and run irqbalance to distribute the interrupts in a
>> sensible, cache friendly way between CPU cores.
>>
>> And no, the current implementation is *NOT* prohibited.  You can't
>> prohibit something that hardware hasn't been able to provide.
>>
> 
> Hardware allows delivering interrupt to random CPU from selected
> bitmask and current implementation doesn't allow to configure this.
> While this may be an issue for power-concerned systems, there are also
> systems with plenty of electricity where using all CPUs for e.g.
> network packet handling is more important.

It's not just about batteries - more and more SoCs these days have 
internally constrained power/thermal budgets too. Think of Intel's turbo 
boost, or those Amlogic TV box chips that can only hit their advertised 
top frequencies with one or two cores active - on systems like that, 
yanking all the cores out of standby every time could be actively 
detrimental to single-thread performance and actually end up 
*increasing* interrupt-handling latency.

If you want to optimise a particular system for a particular use-case, 
you're almost certainly better off manually tuning affinities anyway 
(certain distros already do this). If you mostly just want 
/proc/interrupts to look pretty, there's irqbalance.

> Anyway, I see your point of keeping default behaviour unchanged. I'd
> suggest to set irq_default_affinity for arm/arm64 architectures to
> keep default behaviour as is (i.e. deliver everything to CPU0).

More than anything, though, let me reiterate my second point more 
strongly. Much as we might like to pretend otherwise, GICv1 is a thing, 
plus I have a feeling that there are implementation errata around 1-N 
arbitration that we've so far ignored because Linux doesn't make use of 
it. If there really is a provable benefit to supporting and maintaining 
this feature upstream at all, it at least needs to be limited to cases 
where it's guaranteed to actually work properly and safely, and I'm 
fairly confident that that set is smaller than the set of all GIC 
implementations covered by this driver.

And given the earlier argument, it's probably worth noting that there 
are precious few networking/infrastructure/server SoCs using GICv2 anyway.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
