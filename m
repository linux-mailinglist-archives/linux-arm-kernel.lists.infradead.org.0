Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7263A55020
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 15:21:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B6SBgOO+2HGNO1hXCr9zK24H0pM9+61brGfoy3jeyCA=; b=p7TxiPk57cgXvoTry6ln9A4qk
	aNiAzc6OA7L4zAcDi+6GiLrBoSoavNASTJ/GHOzM3lNRwQYN0hP51DiCLlf6izEBh1Luz0w+IwvTI
	2kkrZjJ05QBeEucxvTTY+6sBpDSCO5bTK4hWrMhHV+1SR7p5A6LRdSJbUyO9tF7i4/3NERsugF0gW
	INuT+FvtRBH7qTyVSRo9UFXxYloDdug9KTuibgz0s2un1hlqbhpXW1Yq3iC5ElioEhchwdsZEg1y+
	1E/yj8808VxzH1JqU0iLo4X4nOOKqlVrSQDlBs+ty1kWJgY2K9rKHwa6P+fCntUHaHa4kDlCoWYIR
	vE8ScoCIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hflNt-0005l0-8f; Tue, 25 Jun 2019 13:21:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hflNd-0005jH-70
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 13:21:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2472D2B;
 Tue, 25 Jun 2019 06:20:58 -0700 (PDT)
Received: from [10.1.196.120] (e121650-lin.cambridge.arm.com [10.1.196.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CAD143F718;
 Tue, 25 Jun 2019 06:20:56 -0700 (PDT)
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
Message-ID: <7dbac943-890b-af16-d6a0-705b3cd609a1@arm.com>
Date: Tue, 25 Jun 2019 14:20:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1620360283.42036.1560281622707.JavaMail.zimbra@efficios.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_062104_110258_B3577CA6 
X-CRM114-Status: GOOD (  44.53  )
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, szabolcs.nagy@arm.com,
 Ingo Molnar <mingo@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu, Hi Szabolcs,

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
> If the kernel happens to preempt and migrate the thread while in the
> critical section, it's the kernel's job to move user-space execution
> to the abort handler.
> 
>>>> +                     "mrs " RSEQ_ASM_TMP_REG ", pmxevcntr_el0\n"
>>>> +                     RSEQ_ASM_OP_R_FINAL_STORE(cnt, 2)
>>>> +		     "nop\n"
>>>> +                     RSEQ_ASM_DEFINE_ABORT(3, abort)
>>>> +                     :/* No output operands */
>>>> +		     :  [cpu_id] "r" (cpu),
>>>> +			[current_cpu_id] "Qo" (__rseq_abi.cpu_id),
>>>> +			[rseq_cs] "m" (__rseq_abi.rseq_cs),
>>>> +			[cnt] "m" (count),
>>>> +			[pc_idx] "r" (&pc->index),
>>>> +			[idx] "m" (idx)
>>>> +                     :"memory"
>>>> +                     :abort
>>>> +                    );
>>
>> While baroque, this doesn't look as scary as I thought it would!
> 
> That's good to hear :)
> 
>>
>> However, I'm very scared that this is modifying input operands without
>> clobbering them. IIUC this is beacause we're trying to use asm goto,
>> which doesn't permit output operands.
> 
> This is correct. What is wrong with modifying the target of "m" input
> operands in an inline asm that has a "memory" clobber ?
> 
> gcc documentation at https://gcc.gnu.org/onlinedocs/gcc/Extended-Asm.html
> states:
> 
> "An asm goto statement cannot have outputs. This is due to an internal
> restriction of the compiler: control transfer instructions cannot have
> outputs. If the assembler code does modify anything, use the "memory"
> clobber to force the optimizers to flush all register values to memory
> and reload them if necessary after the asm statement."
> 
> If there is a problem with this approach, an alternative would be to
> pass &__rseq_abi.rseq.cs as a "r" input operand, explicitly dereference
> it in the assembly, and use the "memory" clobber to ensure the compiler
> knows that there are read/write references to memory.
> 
>> I'm very dubious to abusing asm goto in this way. Can we instead use a
>> regular asm volatile block, and place the abort handler _within_ the
>> asm? If performance is a concern, we can use .pushsection and
>> .popsection to move that far away...
> 
> Let's dig into what would be needed in order to move the abort into the
> asm block.
> 
> One approach would be to make that asm block return a nonzero value in
> an output register, and put zero in that register in the non-abort case,
> and then have a conditional check in C on that register to check
> whether it needs to branch to the abort. This adds overhead we want
> to avoid.
> 
> Another alternative would be to perform the entire abort handler in
> the same assembly block as the rseq critical section. However, this
> prevents us from going back to C to handle the abort, which is unwanted.
> For instance, in the use-case of perf counters on aarch64, a good
> fallback on abort would be to call the perf system call to read the
> value of the performance counter. However, requiring that the abort be
> implemented within the rseq assembly block would require that we
> re-implement system call invocation in user-space for this, which
> is rather annoying.
> 
>>
>>>> +
>>>> +	if (idx)
>>>> +		count += READ_ONCE(pc->offset);
>>
>> I'm rather scared that from GCC's PoV, idx was initialized to zero, and
>> not modified above (per the asm constraints). I realise that we've used
>> an "m" constraint and clobbered memory, but I could well imagine that
>> GCC can interpret that as needing to place a read-only copy in memory,
>> but still being permitted to use the original value in a register. That
>> would permit the above to be optimized away, since GCC knows no
>> registers were clobbered, and thus idx must still be zero.
> 
> I suspect this is based on a rather conservative interpretation of the
> following statement from https://gcc.gnu.org/onlinedocs/gcc/Extended-Asm.html:
> 
> "The "memory" clobber tells the compiler that the assembly code performs memory
> reads or writes to items other than those listed in the input and output operands"
> 
> Based on the previous sentence, it's tempting to conclude that the "m" input
> operands content is not clobbered by the "memory" clobber.
> 
> however, it is followed by this:
> 
> "Further, the compiler does not assume that any values read from memory before an
> asm remain unchanged after that asm; it reloads them as needed. Using the "memory"
> clobber effectively forms a read/write memory barrier for the compiler."
> 
> Based on this last sentence, my understanding is that a "memory" clobber would
> also clobber the content of any "m" operand.
> 
> If use of "m" (var) input-operand-as-output + "memory" clobber ends up being an
> issue, we can always fall-back to "r" (&var) input operand + "memory" clobber,
> which seems less ambiguous from a documentation standpoint.
> 
> I'd really like to have an authoritative answer from gcc folks before we start
> changing this in all rseq asm for all architectures.
> 

Hi Szabolcs, we would really appreciate to see what your opinion is on 
this matter.

>>
>>>> +
>>>> +	return count;
>>
>> ... and for similar reasons, always return zero here.
>>
>>>> +abort:
>>>> +        pr_debug("Abort handler\n");
>>>> +        exit(-2);
>>>> +}
>>
>> Given the necessary complexity evident above, I'm also fearful that the
>> sort of folk that want userspace counter access aren't going to bother
>> with the above.
> 
> The abort handler should be implemented in C, simply invoking the perf
> system call which lets the kernel perform the perf counter read.


Thanks,

-- 
Raphael Gault

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
