Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6827D7FC78
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 16:44:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5i6Fm1sCrPdl5QHw03QwqqyzNDQ+A09hhJ70zF7J1Iw=; b=bqRWMH/MxPZV0+
	MLz+cIHcEdlyzPiDioUGBuS/x7i6cuBPkwGb40THt/U9oe3Cm/ZbLENEd8VtHfQq2OVYH3xDQx2C6
	RxDZN5u/Qbofv9clBufUegZporALmx7dgvspxhWKBO7l5lYn4x1hKMEcMACxLKB5XhyMkLf95W3P+
	IG924JWEXGteibCaiRK6GcXllf76GW6aTUn+Dg+IoFaQwJ324OShVWIKiemUlkhRnKYJ1MNCy7Rub
	IbpJcFevPF8myw5BZ0pMymDdhGniBUyio+1q34DU3xNSEuAyyl4ULJxOzQfcfyrwoe9miFTDwJhKh
	GKkFpHXXeBC8nCOW4tPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htYmd-0007hM-1E; Fri, 02 Aug 2019 14:43:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htYmW-0007gz-QZ
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 14:43:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 241F01596;
 Fri,  2 Aug 2019 07:43:44 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 852F73F575;
 Fri,  2 Aug 2019 07:43:42 -0700 (PDT)
Subject: Re: [PATCH v4 6/9] arm64: perf: Do not call irq_work_run in NMI
 context
To: Will Deacon <will@kernel.org>
References: <1563351432-55652-1-git-send-email-julien.thierry@arm.com>
 <1563351432-55652-7-git-send-email-julien.thierry@arm.com>
 <20190801130611.n2xij2242ihxa5pr@willie-the-truck>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <429bfb7e-a07a-9c1d-97c1-aea846112c22@arm.com>
Date: Fri, 2 Aug 2019 15:43:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190801130611.n2xij2242ihxa5pr@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_074344_907242_07CAB44E 
X-CRM114-Status: GOOD (  17.96  )
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



On 01/08/2019 14:06, Will Deacon wrote:
> On Wed, Jul 17, 2019 at 09:17:09AM +0100, Julien Thierry wrote:
>> Function irq_work_run is not NMI safe and should not be called from NMI
>> context.
>>
>> When PMU interrupt is an NMI do not call irq_work_run. Instead rely on the
>> IRQ work IPI to run the irq_work queue once NMI/IRQ contexts have been
>> exited.
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
>>  arch/arm64/kernel/perf_event.c | 14 +++++---------
>>  1 file changed, 5 insertions(+), 9 deletions(-)
>>
>> diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
>> index 0e2cf5d..9c959ad 100644
>> --- a/arch/arm64/kernel/perf_event.c
>> +++ b/arch/arm64/kernel/perf_event.c
>> @@ -776,20 +776,16 @@ static irqreturn_t armv8pmu_handle_irq(struct arm_pmu *cpu_pmu)
>>  		if (!armpmu_event_set_period(event))
>>  			continue;
>>  
>> +		/*
>> +		 * Perf event overflow will queue the processing of the event as
>> +		 * an irq_work which will be taken care of in the handling of
>> +		 * IPI_IRQ_WORK.
>> +		 */
>>  		if (perf_event_overflow(event, &data, regs))
>>  			cpu_pmu->disable(event);
>>  	}
>>  	armv8pmu_start(cpu_pmu);
>>  
>> -	/*
>> -	 * Handle the pending perf events.
>> -	 *
>> -	 * Note: this call *must* be run with interrupts disabled. For
>> -	 * platforms that can have the PMU interrupts raised as an NMI, this
>> -	 * will not work.
>> -	 */
>> -	irq_work_run();
> 
> What about the case where NMIs are not being used (e.g. GICv2)?
> 

As the comment above mentions. The overflow handler will trigger the
IPI_IRQ_WORK which will call the irq_work_run() both for NMI and normal IRQ.

Unless we really need to process the irq_work here, it makes things
simpler to get rid of the call.

It was suggested during the previous version:
https://www.spinics.net/lists/arm-kernel/msg740027.html

Cheers,

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
