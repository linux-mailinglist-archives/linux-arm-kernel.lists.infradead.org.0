Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F7362583
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 18:00:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JHRUY+/Cab/QBP/tDWyZnNT5BoGlNXQkhxMIAsZ4SXY=; b=rbyro6JEsEThGW
	7FI9elhiZis6n6/+cGm1Uiqq6xik9XwiXXYihykO7rZCBkTivhykK56v8Yfe6v2NJFhwHfZwhTp0X
	DcEA18pCnUoC961YnpMGE3qq//CXxcUfZh/X5RXrqDJhfYis1NXNufKThd1OZl9VgkzgY+NVANPmJ
	KKNQzHidZ9kCC8KHqEetUM2m7hhpmn46MRFUWrKCy/SMbyu84zbJgsZGuuJueXdJPAMnIZUXOdjFH
	mhi399IcDJ2QrpCQFk9WuhfbcIMl7b8pWchY34aAUwXgHr0qhfjoJOrB+YMFVQ6PqnHIoNAqQfnA2
	6EzaCQSug4rFwKXrvNcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkW4H-0003wZ-Vj; Mon, 08 Jul 2019 16:00:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkW46-0003vz-G7
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 16:00:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DF8DC360;
 Mon,  8 Jul 2019 09:00:29 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 85A3B3F59C;
 Mon,  8 Jul 2019 09:00:28 -0700 (PDT)
Subject: Re: [PATCH v3 6/9] arm64: perf: Do not call irq_work_run in NMI
 context
To: Mark Rutland <mark.rutland@arm.com>
References: <1562596377-33196-1-git-send-email-julien.thierry@arm.com>
 <1562596377-33196-7-git-send-email-julien.thierry@arm.com>
 <20190708152922.GB36116@lakrids.cambridge.arm.com>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <65d86a9b-ee85-1421-fcf0-a485dfce68d4@arm.com>
Date: Mon, 8 Jul 2019 17:00:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190708152922.GB36116@lakrids.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_090030_579899_DFD90FA1 
X-CRM114-Status: GOOD (  21.03  )
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



On 08/07/2019 16:29, Mark Rutland wrote:
> On Mon, Jul 08, 2019 at 03:32:54PM +0100, Julien Thierry wrote:
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
>>  arch/arm64/kernel/perf_event.c | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
>> index 878c142..a622139 100644
>> --- a/arch/arm64/kernel/perf_event.c
>> +++ b/arch/arm64/kernel/perf_event.c
>> @@ -794,7 +794,8 @@ static irqreturn_t armv8pmu_handle_irq(struct arm_pmu *cpu_pmu)
>>  	 * platforms that can have the PMU interrupts raised as an NMI, this
>>  	 * will not work.
>>  	 */
>> -	irq_work_run();
>> +	if (!in_nmi())
>> +		irq_work_run();
> 
> Could we always defer the IRQ work, or would that be problematic for
> non-NMI?
> 

In terms of functionality, we can always defer it. It will just delay
the event processing (and possibly re-enabling) to the moment where the
IRQ work IPI is taken.

If I remember correctly, queuing irq_works will send the IPI request
anyway, the only difference is how much work will be done in the IPI
handler...

Personally I think it makes sense to do it always rely on the IPI.

> We should probably update the comment to explain why this is safe in
> either case.
> 

I'll add a comment where the irq_work is queued.

Thanks,

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
