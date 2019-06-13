Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D825D4341E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 10:28:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qmk42l2J9Zi5uok1A+VCsZsSOfJ+TKq2+D/qTfGUi3w=; b=NrDO8mq0dxujyk
	ZzWXWtM3vP9Sgq0naXxsaVmUswxnr6y7pBcrkQzSmYhScfBCk8GHd3wWNhEqWCxnlFxRYPVC2eIAZ
	u2ydkkQuMi9260jsqCM8LiJU3G5sZNs0m+cMGBa7r6/IB6u8ipSA7w2cWjgbICw1de1sU6W9d8l87
	2vTBY1aOy6P9ApazfB5jEQPuRdPFoe6+duAMCIxBAybkzw9o9Z0ya2mIxL9oiJh1Ywwx39zd+ne/A
	TpE72jqP8kdjChn4S6M3hwEvoInc+mnJmKMpSB9Reu0tuLA4jdLUYcvoAAWnvXNPm/+vtMrfcSsxl
	td1qjQaSTWWLozz3zV9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbL5o-0002Iq-DM; Thu, 13 Jun 2019 08:28:20 +0000
Received: from mail.efficios.com ([2607:5300:60:7898::beef])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbL5Z-0002HO-Oq
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 08:28:07 +0000
Received: from localhost (ip6-localhost [IPv6:::1])
 by mail.efficios.com (Postfix) with ESMTP id CB8B62489B9;
 Thu, 13 Jun 2019 04:27:56 -0400 (EDT)
Received: from mail.efficios.com ([IPv6:::1])
 by localhost (mail02.efficios.com [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id QHJmLqleYeRS; Thu, 13 Jun 2019 04:27:56 -0400 (EDT)
Received: from localhost (ip6-localhost [IPv6:::1])
 by mail.efficios.com (Postfix) with ESMTP id 484792489B3;
 Thu, 13 Jun 2019 04:27:56 -0400 (EDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.efficios.com 484792489B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=efficios.com;
 s=default; t=1560414476;
 bh=DKUdPP8QewPcULFHQ4nNVUH6OyOARFLzUileql0AfD4=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=RN6yQ/nRSeXb+h+A6bJAgudOIpsM4HOtI50An+x6EKgJr+9dVyIV9hEp5vJ0VXiwf
 fZpgMAMgKKHzkVsVy8AcdE61opOS0vnwgZjhh9b344RQnmNE3s2sdvaGJKPpZZlBLk
 2PKI0KwbZIQbmIe9vezfiPODrlV/T8k0KWNk1jL4FhURJAhRWl7rsq7Coiq4m0giSS
 U047pKX1xNgT28cX6gPNFCQvEdtl256QaypkbIfXnhlY5O4hQy19Fqdvvgcx6nqkoQ
 7TMwj8kNxjejvWFczXW0SSyT6cYTCidPH0cdBCRFlxAaLye0x7QbJiaOA7HKeP1bep
 aUeWnNOBSs/Jw==
X-Virus-Scanned: amavisd-new at efficios.com
Received: from mail.efficios.com ([IPv6:::1])
 by localhost (mail02.efficios.com [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id g8HEodOTGNtd; Thu, 13 Jun 2019 04:27:56 -0400 (EDT)
Received: from mail02.efficios.com (mail02.efficios.com [167.114.142.138])
 by mail.efficios.com (Postfix) with ESMTP id 2A60A2489A5;
 Thu, 13 Jun 2019 04:27:56 -0400 (EDT)
Date: Thu, 13 Jun 2019 04:27:56 -0400 (EDT)
From: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
To: Raphael Gault <raphael.gault@arm.com>
Message-ID: <1209580932.46461.1560414476136.JavaMail.zimbra@efficios.com>
In-Reply-To: <a99c41fb-40f6-a0e2-af6b-22d7e6ac9b3d@arm.com>
References: <20190611125315.18736-1-raphael.gault@arm.com>
 <20190611125315.18736-4-raphael.gault@arm.com>
 <20190611143346.GB28689@kernel.org>
 <20190611165755.GG29008@lakrids.cambridge.arm.com>
 <1620360283.42036.1560281622707.JavaMail.zimbra@efficios.com>
 <a99c41fb-40f6-a0e2-af6b-22d7e6ac9b3d@arm.com>
Subject: Re: [PATCH 3/7] perf: arm64: Use rseq to test userspace access to
 pmu counters
MIME-Version: 1.0
X-Originating-IP: [167.114.142.138]
X-Mailer: Zimbra 8.8.12_GA_3803 (ZimbraWebClient - FF67 (Linux)/8.8.12_GA_3794)
Thread-Topic: perf: arm64: Use rseq to test userspace access to pmu counters
Thread-Index: 9ubg2q5ItojJmCg9sl7e6XSnaMmSwg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_012806_010764_F00EF98A 
X-CRM114-Status: GOOD (  18.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Ingo Molnar <mingo@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

----- On Jun 13, 2019, at 9:10 AM, Raphael Gault raphael.gault@arm.com wrote:

> Hi Mathieu,
> 
> On 6/11/19 8:33 PM, Mathieu Desnoyers wrote:
>> ----- On Jun 11, 2019, at 6:57 PM, Mark Rutland mark.rutland@arm.com wrote:
>> 
>>> Hi Arnaldo,
>>>
>>> On Tue, Jun 11, 2019 at 11:33:46AM -0300, Arnaldo Carvalho de Melo wrote:
>>>> Em Tue, Jun 11, 2019 at 01:53:11PM +0100, Raphael Gault escreveu:
>>>>> Add an extra test to check userspace access to pmu hardware counters.
>>>>> This test doesn't rely on the seqlock as a synchronisation mechanism but
>>>>> instead uses the restartable sequences to make sure that the thread is
>>>>> not interrupted when reading the index of the counter and the associated
>>>>> pmu register.
>>>>>
>>>>> In addition to reading the pmu counters, this test is run several time
>>>>> in order to measure the ratio of failures:
>>>>> I ran this test on the Juno development platform, which is big.LITTLE
>>>>> with 4 Cortex A53 and 2 Cortex A57. The results vary quite a lot
>>>>> (running it with 100 tests is not so long and I did it several times).
>>>>> I ran it once with 10000 iterations:
>>>>> `runs: 10000, abort: 62.53%, zero: 34.93%, success: 2.54%`
>>>>>
>>>>> Signed-off-by: Raphael Gault <raphael.gault@arm.com>
>>>>> ---
>>>>>   tools/perf/arch/arm64/include/arch-tests.h    |   5 +-
>>>>>   tools/perf/arch/arm64/include/rseq-arm64.h    | 220 ++++++++++++++++++
>>>>
>>>> So, I applied the first patch in this series, but could you please break
>>>> this patch into at least two, one introducing the facility
>>>> (include/rseq*) and the second adding the test?
>>>>
>>>> We try to enforce this kind of granularity as down the line we may want
>>>> to revert one part while the other already has other uses and thus
>>>> wouldn't allow a straight revert.
>>>>
>>>> Also, can this go to tools/arch/ instead? Is this really perf specific?
>>>> Isn't there any arch/arm64/include files for the kernel that we could
>>>> mirror and have it checked for drift in tools/perf/check-headers.sh?
>>>
>>> The rseq bits aren't strictly perf specific, and I think the existing
>>> bits under tools/testing/selftests/rseq/ could be factored out to common
>>> locations under tools/include/ and tools/arch/*/include/.
>> 
>> Hi Mark,
>> 
>> Thanks for CCing me!
>> 
>> Or into a stand-alone librseq project:
>> 
>> https://github.com/compudj/librseq (currently a development branch in
>> my own github)
>> 
>> I don't see why this user-space code should sit in the kernel tree.
>> It is not tooling-specific.
>> 
>>>
>>>  From a scan, those already duplicate barriers and other helpers which
>>> already have definitions under tools/, which seems unfortunate. :/
>>>
>>> Comments below are for Raphael and Matthieu.
>>>
>>> [...]
>>>
>>>>> +static u64 noinline mmap_read_self(void *addr, int cpu)
>>>>> +{
>>>>> +	struct perf_event_mmap_page *pc = addr;
>>>>> +	u32 idx = 0;
>>>>> +	u64 count = 0;
>>>>> +
>>>>> +	asm volatile goto(
>>>>> +                     RSEQ_ASM_DEFINE_TABLE(0, 1f, 2f, 3f)
>>>>> +		     "nop\n"
>>>>> +                     RSEQ_ASM_STORE_RSEQ_CS(1, 0b, rseq_cs)
>>>>> +		     RSEQ_ASM_CMP_CPU_ID(cpu_id, current_cpu_id, 3f)
>>>>> +                     RSEQ_ASM_OP_R_LOAD(pc_idx)
>>>>> +                     RSEQ_ASM_OP_R_AND(0xFF)
>>>>> +		     RSEQ_ASM_OP_R_STORE(idx)
>>>>> +                     RSEQ_ASM_OP_R_SUB(0x1)
>>>>> +		     RSEQ_ASM_CMP_CPU_ID(cpu_id, current_cpu_id, 3f)
>>>>> +                     "msr pmselr_el0, " RSEQ_ASM_TMP_REG "\n"
>>>>> +                     "isb\n"
>>>>> +		     RSEQ_ASM_CMP_CPU_ID(cpu_id, current_cpu_id, 3f)
>> 
>> I really don't understand why the cpu_id needs to be compared 3 times
>> here (?!?)
>> 
>> Explicit comparison of the cpu_id within the rseq critical section
>> should be done _once_.
>> 
> 
> I understand and that's what I thought as well but I got confused with a
> comment in (src)/include/uapi/linux/rseq.h which states:
> > This CPU number value should always be compared
> > against the value of the cpu_id field before performing a rseq
> > commit or returning a value read from a data structure indexed
> > using the cpu_id_start value.
> 
> I'll remove the unnecessary testing.

It needs to be compared at least once, yes. But once is enough.

Thanks,

Mathieu

> 
> 
>> If the kernel happens to preempt and migrate the thread while in the
>> critical section, it's the kernel's job to move user-space execution
>> to the abort handler.
>> 
> [...]
> 
> Thanks,
> 
> --
> Raphael Gault

-- 
Mathieu Desnoyers
EfficiOS Inc.
http://www.efficios.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
