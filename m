Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B47BB6234F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 17:34:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rxeywkeA6aH8W/onCF7AxzpqA8OEHcvBKCDfvpRmAHk=; b=VKiVFpp59ZR8pR
	gaIW00mHBejWqNd94B40XfeSpgtWdF1n32zm9cPWmrW1GrjEqZhpGd4G16V+DAUaRtxzVXK7E0QYh
	PyOqZAn4FwlXlHUwI/loGUXjHy2pPdjUjvq0TuEkMj04ZennfmcN2bt2UjAoiQDiogDsLf5MuwfAw
	m+TIrhMySlH07vf5k7BFwJc6jMX84aNWUJ3iFWoDeKbYo5vAfTOUW1KJRISYQnX4bWAXf/hHjKicw
	w4pVlk+wLTnrDRMSMVju+jiB1cdBNtPqf9iwyPE6frnsy+oC3GlGE0NjYbpgYY87SRIqUgSbZM/t8
	Wg9JhKiLwOt/VfMTumKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkVej-0004qr-Ie; Mon, 08 Jul 2019 15:34:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkVeX-0004qJ-7d
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 15:34:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 83032360;
 Mon,  8 Jul 2019 08:34:04 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EFB7B3F59C;
 Mon,  8 Jul 2019 08:34:02 -0700 (PDT)
Subject: Re: [PATCH v3 2/9] arm64: perf: Remove PMU locking
To: Mark Rutland <mark.rutland@arm.com>
References: <1562596377-33196-1-git-send-email-julien.thierry@arm.com>
 <1562596377-33196-3-git-send-email-julien.thierry@arm.com>
 <20190708150320.GC33099@lakrids.cambridge.arm.com>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <fa2258cb-1d8a-1907-2368-83c37f7baf25@arm.com>
Date: Mon, 8 Jul 2019 16:34:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190708150320.GC33099@lakrids.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_083405_320592_184794C7 
X-CRM114-Status: GOOD (  17.52  )
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
Cc: peterz@infradead.org, Catalin Marinas <catalin.marinas@arm.com>,
 jolsa@redhat.com, will.deacon@arm.com, acme@kernel.org,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, namhyung@kernel.org,
 liwei391@huawei.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 08/07/2019 16:03, Mark Rutland wrote:
> On Mon, Jul 08, 2019 at 03:32:50PM +0100, Julien Thierry wrote:
>> Since the PMU driver uses direct registers for counter
>> setup/manipulation, locking around these operations is no longer needed.
>>
>> For operations that can be called with interrupts enabled, preemption
>> still needs to be disabled to ensure the programming of the PMU is
>> done on the expected CPU and not migrated mid-programming.
> 
> [...]
> 
>>  static void armv8pmu_start(struct arm_pmu *cpu_pmu)
>>  {
>> -	unsigned long flags;
>> -	struct pmu_hw_events *events = this_cpu_ptr(cpu_pmu->hw_events);
>> -
>> -	raw_spin_lock_irqsave(&events->pmu_lock, flags);
>> +	preempt_disable();
>>  	/* Enable all counters */
>>  	armv8pmu_pmcr_write(armv8pmu_pmcr_read() | ARMV8_PMU_PMCR_E);
>> -	raw_spin_unlock_irqrestore(&events->pmu_lock, flags);
>> +	preempt_enable();
>>  }
>>
>>  static void armv8pmu_stop(struct arm_pmu *cpu_pmu)
>>  {
>> -	unsigned long flags;
>> -	struct pmu_hw_events *events = this_cpu_ptr(cpu_pmu->hw_events);
>> -
>> -	raw_spin_lock_irqsave(&events->pmu_lock, flags);
>> +	preempt_disable();
>>  	/* Disable all counters */
>>  	armv8pmu_pmcr_write(armv8pmu_pmcr_read() & ~ARMV8_PMU_PMCR_E);
>> -	raw_spin_unlock_irqrestore(&events->pmu_lock, flags);
>> +	preempt_enable();
>>  }
> 
> I think that we'd have bigger problems if these could be called in
> preemptible context, since we couldn't guarantee which HW PMU instance
> they'd operate on.
> 
> I also thought that the interrupt disable/enable was a hold-over from
> the old days of perf core, and these days all of the synchronous
> operations are held with the pmu ctx lock held (and interrupts
> disabled).
> 
> Do you have an example of when these are called with interrupts enabled?
> Or in a preemptible context?
> 

I must admit that not seeing mention of the pmu_enable/disable callbacks
being called with preemption disabled in perf_event.h, I assumed the
worst. But looking at it, it does look like they are always called
either with interrupts or preemption disabled, and the x86
implementation doesn't seem to worry about being preempted in those
callbacks.

I guess I can get rid of the preempt_enable/disable.

Thanks,

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
