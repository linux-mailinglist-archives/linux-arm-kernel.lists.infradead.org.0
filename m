Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C5D4333A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 09:17:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kEIyH44/vVjSygZ1pzQUg2row+1M/nzRbCcw7GgEntY=; b=PNc9D/3J6FHc+b8XQJYXlt0vK
	i7A8EC0FHg7Yu3zJ06117ZaueRolIYQDChJwH3aP83VleSMsb8ye6+5Z1DKXNWun0PcNgD18dOjAx
	zr/r1CevZuDYqsjIlPUvRVT2c4X6jEfU6KGYfvV63pmXksEgZhK+IqOlVLO3WL/NFxTmtrH2c5TzB
	q+sv87jSdTKWNSrCkQ0iOiEGqZYKS2w+q9S5CvMSDvzUjBnewjIMVGppuMJFldapnhAY0Wc/VBGoj
	7WpBxPCNmU4K4dgsQemlCBwD+IAuLVlHhy3NmrTfbQTnE8rZvawmkvvqn8nfJKQdcZkhSRuwiJlsb
	rIb8GueKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbJzA-0004LR-0f; Thu, 13 Jun 2019 07:17:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbJsp-0006HE-An
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 07:10:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 467C228;
 Thu, 13 Jun 2019 00:10:48 -0700 (PDT)
Received: from [10.1.196.120] (e121650-lin.cambridge.arm.com [10.1.196.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0F8973F73C;
 Thu, 13 Jun 2019 00:10:46 -0700 (PDT)
Subject: Re: [PATCH 3/7] perf: arm64: Use rseq to test userspace access to pmu
 counters
To: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Mark Rutland <mark.rutland@arm.com>
References: <20190611125315.18736-1-raphael.gault@arm.com>
 <20190611125315.18736-4-raphael.gault@arm.com>
 <20190611143346.GB28689@kernel.org>
 <20190611165755.GG29008@lakrids.cambridge.arm.com>
 <1620360283.42036.1560281622707.JavaMail.zimbra@efficios.com>
From: Raphael Gault <raphael.gault@arm.com>
Message-ID: <a99c41fb-40f6-a0e2-af6b-22d7e6ac9b3d@arm.com>
Date: Thu, 13 Jun 2019 08:10:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1620360283.42036.1560281622707.JavaMail.zimbra@efficios.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_001051_487769_9E3B9A05 
X-CRM114-Status: GOOD (  25.84  )
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Ingo Molnar <mingo@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu,

On 6/11/19 8:33 PM, Mathieu Desnoyers wrote:
> ----- On Jun 11, 2019, at 6:57 PM, Mark Rutland mark.rutland@arm.com wrote:
> 
>> Hi Arnaldo,
>>
>> On Tue, Jun 11, 2019 at 11:33:46AM -0300, Arnaldo Carvalho de Melo wrote:
>>> Em Tue, Jun 11, 2019 at 01:53:11PM +0100, Raphael Gault escreveu:
>>>> Add an extra test to check userspace access to pmu hardware counters.
>>>> This test doesn't rely on the seqlock as a synchronisation mechanism but
>>>> instead uses the restartable sequences to make sure that the thread is
>>>> not interrupted when reading the index of the counter and the associated
>>>> pmu register.
>>>>
>>>> In addition to reading the pmu counters, this test is run several time
>>>> in order to measure the ratio of failures:
>>>> I ran this test on the Juno development platform, which is big.LITTLE
>>>> with 4 Cortex A53 and 2 Cortex A57. The results vary quite a lot
>>>> (running it with 100 tests is not so long and I did it several times).
>>>> I ran it once with 10000 iterations:
>>>> `runs: 10000, abort: 62.53%, zero: 34.93%, success: 2.54%`
>>>>
>>>> Signed-off-by: Raphael Gault <raphael.gault@arm.com>
>>>> ---
>>>>   tools/perf/arch/arm64/include/arch-tests.h    |   5 +-
>>>>   tools/perf/arch/arm64/include/rseq-arm64.h    | 220 ++++++++++++++++++
>>>
>>> So, I applied the first patch in this series, but could you please break
>>> this patch into at least two, one introducing the facility
>>> (include/rseq*) and the second adding the test?
>>>
>>> We try to enforce this kind of granularity as down the line we may want
>>> to revert one part while the other already has other uses and thus
>>> wouldn't allow a straight revert.
>>>
>>> Also, can this go to tools/arch/ instead? Is this really perf specific?
>>> Isn't there any arch/arm64/include files for the kernel that we could
>>> mirror and have it checked for drift in tools/perf/check-headers.sh?
>>
>> The rseq bits aren't strictly perf specific, and I think the existing
>> bits under tools/testing/selftests/rseq/ could be factored out to common
>> locations under tools/include/ and tools/arch/*/include/.
> 
> Hi Mark,
> 
> Thanks for CCing me!
> 
> Or into a stand-alone librseq project:
> 
> https://github.com/compudj/librseq (currently a development branch in
> my own github)
> 
> I don't see why this user-space code should sit in the kernel tree.
> It is not tooling-specific.
> 
>>
>>  From a scan, those already duplicate barriers and other helpers which
>> already have definitions under tools/, which seems unfortunate. :/
>>
>> Comments below are for Raphael and Matthieu.
>>
>> [...]
>>
>>>> +static u64 noinline mmap_read_self(void *addr, int cpu)
>>>> +{
>>>> +	struct perf_event_mmap_page *pc = addr;
>>>> +	u32 idx = 0;
>>>> +	u64 count = 0;
>>>> +
>>>> +	asm volatile goto(
>>>> +                     RSEQ_ASM_DEFINE_TABLE(0, 1f, 2f, 3f)
>>>> +		     "nop\n"
>>>> +                     RSEQ_ASM_STORE_RSEQ_CS(1, 0b, rseq_cs)
>>>> +		     RSEQ_ASM_CMP_CPU_ID(cpu_id, current_cpu_id, 3f)
>>>> +                     RSEQ_ASM_OP_R_LOAD(pc_idx)
>>>> +                     RSEQ_ASM_OP_R_AND(0xFF)
>>>> +		     RSEQ_ASM_OP_R_STORE(idx)
>>>> +                     RSEQ_ASM_OP_R_SUB(0x1)
>>>> +		     RSEQ_ASM_CMP_CPU_ID(cpu_id, current_cpu_id, 3f)
>>>> +                     "msr pmselr_el0, " RSEQ_ASM_TMP_REG "\n"
>>>> +                     "isb\n"
>>>> +		     RSEQ_ASM_CMP_CPU_ID(cpu_id, current_cpu_id, 3f)
> 
> I really don't understand why the cpu_id needs to be compared 3 times
> here (?!?)
> 
> Explicit comparison of the cpu_id within the rseq critical section
> should be done _once_.
> 

I understand and that's what I thought as well but I got confused with a 
comment in (src)/include/uapi/linux/rseq.h which states:
 > This CPU number value should always be compared
 > against the value of the cpu_id field before performing a rseq
 > commit or returning a value read from a data structure indexed
 > using the cpu_id_start value.

I'll remove the unnecessary testing.


> If the kernel happens to preempt and migrate the thread while in the
> critical section, it's the kernel's job to move user-space execution
> to the abort handler.
> 
[...]

Thanks,

-- 
Raphael Gault

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
