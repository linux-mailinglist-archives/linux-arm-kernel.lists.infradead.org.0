Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E3197FC29
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 16:26:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tEebtskqu3WqwD3vXinZMepwkbL33ySolxGWC+Wd1B4=; b=Hi2q3rKu/vx+Lq
	l5l2k9biYXuH5SMOxsMnRMUpFZkPk1VD9xxOP/BtTgbNVMjSO7JAyaRhjW1zYOMlVqxnwFGW6gL9H
	ubiRSeQCu6HluxwvSkpmDCKfWDsTCl91Vz0RUoRBWL//b3bGFrotcwx5G+nQTZR4tDzaxctfXZxSB
	IsqQ2bh6GvmXKeXs4clc82NsFHx716rAbQRUV4GPYg2esKa5+FZnl+SiWQAH2u4bMxI8vPMLMfKhG
	0/emCTgFvEDCniGGRkmlQ4Ks3KjHWoMN6l6dMWP/cuiBL/ft7fAqjgy8k7e6haUQauRvDRtDlfeO7
	VYuKClqwKsyY7qKil5/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htYVi-0000UX-LH; Fri, 02 Aug 2019 14:26:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htYVb-0000Tw-Og
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 14:26:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 720651570;
 Fri,  2 Aug 2019 07:26:13 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D9B173F575;
 Fri,  2 Aug 2019 07:26:11 -0700 (PDT)
Subject: Re: [PATCH v4 2/9] arm64: perf: Remove PMU locking
To: Will Deacon <will@kernel.org>
References: <1563351432-55652-1-git-send-email-julien.thierry@arm.com>
 <1563351432-55652-3-git-send-email-julien.thierry@arm.com>
 <20190801125821.23wt657bfs2k536f@willie-the-truck>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <ca80c278-bf57-332f-5668-f32139f866dd@arm.com>
Date: Fri, 2 Aug 2019 15:26:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190801125821.23wt657bfs2k536f@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_072615_888151_83965197 
X-CRM114-Status: GOOD (  20.15  )
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
Cc: mark.rutland@arm.com, peterz@infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, will.deacon@arm.com,
 acme@kernel.org, alexander.shishkin@linux.intel.com, mingo@redhat.com,
 namhyung@kernel.org, sthotton@marvell.com, jolsa@redhat.com,
 linux-arm-kernel@lists.infradead.org, liwei391@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On 01/08/2019 13:58, Will Deacon wrote:
> On Wed, Jul 17, 2019 at 09:17:05AM +0100, Julien Thierry wrote:
>> Since the PMU driver uses direct registers for counter
>> setup/manipulation, locking around these operations is no longer needed.
>>
>> For operations that can be called with interrupts enabled, preemption
>> still needs to be disabled to ensure the programming of the PMU is
>> done on the expected CPU and not migrated mid-programming.
>>
>> Signed-off-by: Julien Thierry <julien.thierry@arm.com>
>> Cc: Will Deacon <will.deacon@arm.com>
>> Cc: Mark Rutland <mark.rutland@arm.com>
>> Cc: Peter Zijlstra <peterz@infradead.org>
>> Cc: Ingo Molnar <mingo@redhat.com>
>> Cc: Arnaldo Carvalho de Melo <acme@kernel.org>
>> Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
>> Cc: Jiri Olsa <jolsa@redhat.com>
>> Cc: Namhyung Kim <namhyung@kernel.org>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> ---
>>  arch/arm64/kernel/perf_event.c | 30 ++----------------------------
>>  1 file changed, 2 insertions(+), 28 deletions(-)
>>
>> diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
>> index 838758f..0e2cf5d 100644
>> --- a/arch/arm64/kernel/perf_event.c
>> +++ b/arch/arm64/kernel/perf_event.c
>> @@ -673,15 +673,10 @@ static inline u32 armv8pmu_getreset_flags(void)
>>
>>  static void armv8pmu_enable_event(struct perf_event *event)
>>  {
>> -	unsigned long flags;
>> -	struct arm_pmu *cpu_pmu = to_arm_pmu(event->pmu);
>> -	struct pmu_hw_events *events = this_cpu_ptr(cpu_pmu->hw_events);
>> -
>>  	/*
>>  	 * Enable counter and interrupt, and set the counter to count
>>  	 * the event that we're interested in.
>>  	 */
>> -	raw_spin_lock_irqsave(&events->pmu_lock, flags);
>>
>>  	/*
>>  	 * Disable counter
>> @@ -702,21 +697,10 @@ static void armv8pmu_enable_event(struct perf_event *event)
>>  	 * Enable counter
>>  	 */
>>  	armv8pmu_enable_event_counter(event);
>> -
>> -	raw_spin_unlock_irqrestore(&events->pmu_lock, flags);
>>  }
> 
> With the implicit ISBs now removed by virtue of addressing the counter
> register directly, what prevents the programming of the evtype being
> reordered with respect to disabling/enabling the counter?

I agree, it seems an ISB is missing here. It should probably be fixed in
the previous patch.

However, I notice that even before that patch, there is no ISB between
the enabling of the IRQ for the counter and the enabling of the counter
itself.
Meaning we might start counting events before the IRQ is enabled.

Should we have something like the following?

        armv8pmu_disable_event_counter(event);
        isb();
        armv8pmu_write_event_type(event);
        armv8pmu_enable_event_irq(event);
        isb();
        armv8pmu_enable_event_counter(event);

> 
>>  static void armv8pmu_disable_event(struct perf_event *event)
>>  {
>> -	unsigned long flags;
>> -	struct arm_pmu *cpu_pmu = to_arm_pmu(event->pmu);
>> -	struct pmu_hw_events *events = this_cpu_ptr(cpu_pmu->hw_events);
>> -
>> -	/*
>> -	 * Disable counter and interrupt
>> -	 */
>> -	raw_spin_lock_irqsave(&events->pmu_lock, flags);
>> -
>>  	/*
>>  	 * Disable counter
>>  	 */
>> @@ -726,30 +710,20 @@ static void armv8pmu_disable_event(struct perf_event *event)
>>  	 * Disable interrupt for this counter
>>  	 */
>>  	armv8pmu_disable_event_irq(event);
>> -
>> -	raw_spin_unlock_irqrestore(&events->pmu_lock, flags);
>>  }
>>
>>  static void armv8pmu_start(struct arm_pmu *cpu_pmu)
>>  {
>> -	unsigned long flags;
>> -	struct pmu_hw_events *events = this_cpu_ptr(cpu_pmu->hw_events);
>> -
>> -	raw_spin_lock_irqsave(&events->pmu_lock, flags);
>> +	WARN_ON_ONCE(preemptible());
>>  	/* Enable all counters */
>>  	armv8pmu_pmcr_write(armv8pmu_pmcr_read() | ARMV8_PMU_PMCR_E);
>> -	raw_spin_unlock_irqrestore(&events->pmu_lock, flags);
>>  }
>>
>>  static void armv8pmu_stop(struct arm_pmu *cpu_pmu)
>>  {
>> -	unsigned long flags;
>> -	struct pmu_hw_events *events = this_cpu_ptr(cpu_pmu->hw_events);
>> -
>> -	raw_spin_lock_irqsave(&events->pmu_lock, flags);
>> +	WARN_ON_ONCE(preemptible());
> 
> I don't think we need these WARN_ONs -- these are very much per-CPU
> operations from the context of the perf core, so we'll be ok.
> 

If they are not necessary we can get rid of them.

Thanks,

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
