Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB09562426
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 17:41:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZD8MLWnE8jrS9rEU8IC/atBBz1bZes/Z0EqD3lpjp84=; b=ho3cBsDgpxBvnv
	YFwCF2h7GjehRm4OYK522l/DfX9/Z6olCZPLu5pj8HOnO9l0Xjfb2/weLJBRtujXi/fa/Lxy+OnY0
	1xip775Eh3C32TXSfsB576lbvvZu8XtWCmCpq+yQa7TA2Bf/yJctYumZDwjHt9wbZde+col0qtsV4
	f4p0zTIBgUM5JvbvSIB4aSTLeO/f0P3916hOMElGreip/yB4iZ2CBzbd5CybG+in5Tx6d6fSJND9w
	iNXjxVI9WvvOyLYlp8rrvMYgUcuChQLEPYz9c2gf5A/Xb0jHeG2t7k/3yFw8QSaeiO/wzImuA0WCJ
	whUp8OkMEmDTESJz5O4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkVlJ-0000Jl-Hi; Mon, 08 Jul 2019 15:41:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkVl7-0000Ix-PP
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 15:40:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 31E53360;
 Mon,  8 Jul 2019 08:40:52 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C98FA3F59C;
 Mon,  8 Jul 2019 08:40:50 -0700 (PDT)
Subject: Re: [PATCH v3 3/9] arm: perf: save/resore pmsel
To: Mark Rutland <mark.rutland@arm.com>
References: <1562596377-33196-1-git-send-email-julien.thierry@arm.com>
 <1562596377-33196-4-git-send-email-julien.thierry@arm.com>
 <20190708150639.GE33099@lakrids.cambridge.arm.com>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <b2e95aab-bd01-faad-a548-ef6677cab991@arm.com>
Date: Mon, 8 Jul 2019 16:40:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190708150639.GE33099@lakrids.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_084053_917204_2AA7A196 
X-CRM114-Status: GOOD (  18.62  )
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
Cc: peterz@infradead.org, liwei391@huawei.com, will.deacon@arm.com,
 Russell King <linux@armlinux.org.uk>, acme@kernel.org,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, namhyung@kernel.org,
 jolsa@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 08/07/2019 16:06, Mark Rutland wrote:
> On Mon, Jul 08, 2019 at 03:32:51PM +0100, Julien Thierry wrote:
>> The callback pmu->read() can be called with interrupts enabled.
>> Currently, on ARM, this can cause the following callchain:
>>
>> armpmu_read() -> armpmu_event_update() -> armv7pmu_read_counter()
>>
>> The last function might modify the counter selector register and then
>> read the target counter, without taking any lock. With interrupts
>> enabled, a PMU interrupt could occur and modify the selector register
>> as well, between the selection and read of the interrupted context.
>>
>> Save and restore the value of the selector register in the PMU interrupt
>> handler, ensuring the interrupted context is left with the correct PMU
>> registers selected.
> 
> IIUC, this is a latent bug, so I guess it should be Cc'd stable?
> 

It's my understanding as well. I'll put stable in copy for next iteration.

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
>> Cc: Russell King <linux@armlinux.org.uk>
>> ---
>>  arch/arm/kernel/perf_event_v7.c | 21 +++++++++++++++++++--
>>  1 file changed, 19 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm/kernel/perf_event_v7.c b/arch/arm/kernel/perf_event_v7.c
>> index a4fb0f8..c3da7a5 100644
>> --- a/arch/arm/kernel/perf_event_v7.c
>> +++ b/arch/arm/kernel/perf_event_v7.c
>> @@ -736,10 +736,22 @@ static inline int armv7_pmnc_counter_has_overflowed(u32 pmnc, int idx)
>>  	return pmnc & BIT(ARMV7_IDX_TO_COUNTER(idx));
>>  }
>>
>> -static inline void armv7_pmnc_select_counter(int idx)
>> +static inline u32 armv7_pmsel_read(void)
>> +{
>> +	u32 pmsel;
>> +
>> +	asm volatile("mrc p15, 0, %0, c9, c12, 5" : "=&r" (pmsel));
>> +	return pmsel;
>> +}
>> +
>> +static inline void armv7_pmsel_write(u32 counter)
>>  {
>> -	u32 counter = ARMV7_IDX_TO_COUNTER(idx);
>>  	asm volatile("mcr p15, 0, %0, c9, c12, 5" : : "r" (counter));
>> +}
>> +
>> +static inline void armv7_pmnc_select_counter(int idx)
>> +{
>> +	armv7_pmsel_write(ARMV7_IDX_TO_COUNTER(idx));
>>  	isb();
>>  }
>>
>> @@ -952,8 +964,11 @@ static irqreturn_t armv7pmu_handle_irq(struct arm_pmu *cpu_pmu)
>>  	struct perf_sample_data data;
>>  	struct pmu_hw_events *cpuc = this_cpu_ptr(cpu_pmu->hw_events);
>>  	struct pt_regs *regs;
>> +	u32 pmsel;
>>  	int idx;
>>
>> +	pmsel = armv7_pmsel_read();
> 
> Could we add a comment explaining why we need to save/restore this?
> 

Sure, will do.

> Otherwise, this looks good to me.

Thanks,

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
