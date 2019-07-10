Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D4464587
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 13:01:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lxx/mOVanEo3B9sNg4gW7Ah0/kvD2I8EWeHVeI88gAE=; b=dNMHZpXLmN3u/S
	1DIsUrfX3/Ot38+AwBbl2plNH+eJ245R06uHWyN0pVL0MYrgZjC2rBiri5YNkj5w6Ym0pPpIKBuix
	fOrKSm1GsHJo5/Sc0uVyMSQJ4TIqKnXYQVR0AfE6+da5y6FadFlvs+ZLRLnseb6wtPmetYL80q3pd
	iU9DtKH3xkSbeSwSdl6dd5SAzqLmr98M9nl/LNv8/hPBy5C0RP4HGt2Ae1dI3rbmks9Vik2vZjzjb
	L7iAAdhLNiHDg58J2aVMKpjciZ259SMHDebbxLnV3zxBCzo4UzTy9X+d0jgv1rFP3/o72meVqcWby
	J8H4afaHU1m7BkoqnilA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlAM3-00006y-3C; Wed, 10 Jul 2019 11:01:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hlALw-00006e-AL
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 11:01:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E8A2B344;
 Wed, 10 Jul 2019 04:01:35 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2C1A93F738;
 Wed, 10 Jul 2019 04:01:33 -0700 (PDT)
Subject: Re: [PATCH v3 1/9] arm64: perf: avoid PMXEV* indirection
To: Steven Price <steven.price@arm.com>, linux-arm-kernel@lists.infradead.org
References: <1562596377-33196-1-git-send-email-julien.thierry@arm.com>
 <1562596377-33196-2-git-send-email-julien.thierry@arm.com>
 <72820d6b-145c-c7dd-b285-c3d3b8acd103@arm.com>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <0e1169eb-1a2a-eaa3-82b2-74b263db527d@arm.com>
Date: Wed, 10 Jul 2019 12:01:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <72820d6b-145c-c7dd-b285-c3d3b8acd103@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_040136_447800_1E41DAE6 
X-CRM114-Status: GOOD (  17.30  )
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
 Catalin Marinas <catalin.marinas@arm.com>, jolsa@redhat.com,
 will.deacon@arm.com, acme@kernel.org, alexander.shishkin@linux.intel.com,
 mingo@redhat.com, namhyung@kernel.org, liwei391@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10/07/2019 11:57, Steven Price wrote:
> On 08/07/2019 15:32, Julien Thierry wrote:
>> From: Mark Rutland <mark.rutland@arm.com>
>>
>> Currently we access the counter registers and their respective type
>> registers indirectly. This requires us to write to PMSELR, issue an ISB,
>> then access the relevant PMXEV* registers.
>>
>> This is unfortunate, because:
>>
>> * Under virtualization, accessing one registers requires two traps to
>>   the hypervisor, even though we could access the register directly with
>>   a single trap.
>>
>> * We have to issue an ISB which we could otherwise avoid the cost of.
>>
>> * When we use NMIs, the NMI handler will have to save/restore the select
>>   register in case the code it preempted was attempting to access a
>>   counter or its type register.
>>
>> We can avoid these issues by directly accessing the relevant registers.
>> This patch adds helpers to do so.
>>
>> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
>> [Julien T.: Don't inline read/write functions to avoid big code-size
>> 	increase, remove unused read_pmevtypern function,
>> 	fix counter index issue.]
>> Signed-off-by: Julien Thierry <julien.thierry@arm.com>
>> Cc: Will Deacon <will.deacon@arm.com>
>> Cc: Peter Zijlstra <peterz@infradead.org>
>> Cc: Ingo Molnar <mingo@redhat.com>
>> Cc: Arnaldo Carvalho de Melo <acme@kernel.org>
>> Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
>> Cc: Jiri Olsa <jolsa@redhat.com>
>> Cc: Namhyung Kim <namhyung@kernel.org>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> ---
>>  arch/arm64/kernel/perf_event.c | 96 ++++++++++++++++++++++++++++++++++++------
>>  1 file changed, 83 insertions(+), 13 deletions(-)
>>
>> diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
>> index 96e90e2..7759f8a 100644
>> --- a/arch/arm64/kernel/perf_event.c
>> +++ b/arch/arm64/kernel/perf_event.c
>> @@ -369,6 +369,77 @@ static inline bool armv8pmu_event_is_chained(struct perf_event *event)
>>  #define	ARMV8_IDX_TO_COUNTER(x)	\
>>  	(((x) - ARMV8_IDX_COUNTER0) & ARMV8_PMU_COUNTER_MASK)
>>
>> +/*
>> + * This code is really good
>> + */
>> +
>> +#define PMEVN_CASE(n, case_macro) \
>> +	case n: case_macro(n); break
>> +
>> +#define PMEVN_SWITCH(x, case_macro)				\
>> +	do {							\
>> +		switch (x) {					\
>> +		PMEVN_CASE(0,  case_macro);			\
>> +		PMEVN_CASE(1,  case_macro);			\
>> +		PMEVN_CASE(2,  case_macro);			\
>> +		PMEVN_CASE(3,  case_macro);			\
>> +		PMEVN_CASE(4,  case_macro);			\
>> +		PMEVN_CASE(5,  case_macro);			\
>> +		PMEVN_CASE(6,  case_macro);			\
>> +		PMEVN_CASE(7,  case_macro);			\
>> +		PMEVN_CASE(8,  case_macro);			\
>> +		PMEVN_CASE(9,  case_macro);			\
>> +		PMEVN_CASE(10, case_macro);			\
>> +		PMEVN_CASE(11, case_macro);			\
>> +		PMEVN_CASE(12, case_macro);			\
>> +		PMEVN_CASE(13, case_macro);			\
>> +		PMEVN_CASE(14, case_macro);			\
>> +		PMEVN_CASE(15, case_macro);			\
>> +		PMEVN_CASE(16, case_macro);			\
>> +		PMEVN_CASE(17, case_macro);			\
>> +		PMEVN_CASE(18, case_macro);			\
>> +		PMEVN_CASE(19, case_macro);			\
> 
> Is 20 missing on purpose?
> 

That would have been fun to debug. Well spotted!

I'll fix it in the next version.

Thanks,

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
