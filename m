Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1311333111
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 15:30:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sypxeqyGOpVqV1QmmXwmWTVayg1GGlkYDYpVq/KR9ws=; b=WxAhqPzlnAyDCy
	yObUdKHqZDjwMCIm7mDnzgA+01hoikwQO7q35qG21jjah7pPaCx+hPnX86dms0NphUXn5rtNJ7svb
	xdE/UhlWxk++7gpTerRbYqBYCUO4AsPGYJXTsShyTvboVHF6pdtDd5JHJlbdIUaXb+zw95N5tfj7o
	45mDY7hCY6FIeNshoPa9I49ui5IDrzYBvDcV8Ws6zf5K72kBMYn2kPlbVTrMqCSYPYB8KEm9CwoeB
	gD+tqrrCeFblHDYp//5xsLGgd0TSD0eyFn7dmpF6T9qLu1JAFd11Ddn3vQjCvzY8Kkww4H24fhsIj
	3y31bSeaTIIFtXX3/tPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXn31-0008Gf-Qq; Mon, 03 Jun 2019 13:30:47 +0000
Received: from ozlabs.org ([203.11.71.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXn2u-0008Fp-DA
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 13:30:42 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 45HbXV0k6Kz9s1c;
 Mon,  3 Jun 2019 23:30:33 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Will Deacon <will.deacon@arm.com>,
 Ravi Bangoria <ravi.bangoria@linux.ibm.com>
Subject: Re: [PATCH] perf: Fix oops when kthread execs user process
In-Reply-To: <20190531153703.GA21288@fuggles.cambridge.arm.com>
References: <1559046689-24091-1-git-send-email-92siuyang@gmail.com>
 <20190528140103.GT2623@hirez.programming.kicks-ass.net>
 <20190528153224.GE20758@fuggles.cambridge.arm.com>
 <20190528173228.GW2623@hirez.programming.kicks-ass.net>
 <20190529091733.GA4485@fuggles.cambridge.arm.com>
 <20190529101042.GN2623@hirez.programming.kicks-ass.net>
 <20190529102022.GC4485@fuggles.cambridge.arm.com>
 <20190529125557.GU2623@hirez.programming.kicks-ass.net>
 <efcd5cf4-3501-f3b6-bf47-145a9ef19a53@linux.ibm.com>
 <8b55f79a-c324-0701-e85f-c7797a60a708@linux.ibm.com>
 <20190531153703.GA21288@fuggles.cambridge.arm.com>
Date: Mon, 03 Jun 2019 23:30:33 +1000
Message-ID: <875zpmokxy.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_063040_814991_2D199B4B 
X-CRM114-Status: GOOD (  19.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.11.71.1 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, Young Xiao <92siuyang@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>, fweisbec@gmail.com, x86@kernel.org,
 linux@armlinux.org.uk, eranian@google.com, linux-kernel@vger.kernel.org,
 acme@redhat.com, mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 ravi.bangoria@linux.vnet.ibm.com, jolsa@redhat.com,
 linux-arm-kernel@lists.infradead.org, kan.liang@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Will Deacon <will.deacon@arm.com> writes:
> On Thu, May 30, 2019 at 03:57:36PM +0530, Ravi Bangoria wrote:
>> On 5/30/19 2:08 PM, Ravi Bangoria wrote:
>> >> ---
>> >> Subject: perf: Fix perf_sample_regs_user()
>> >> From: Peter Zijlstra <peterz@infradead.org>
>> >> Date: Wed May 29 14:37:24 CEST 2019
>> >>
>> >> perf_sample_regs_user() uses 'current->mm' to test for the presence of
>> >> userspace, but this is insufficient, consider use_mm().
>> >>
>> >> A better test is: '!(current->flags & PF_KTHREAD)', exec() clears
>> >> PF_KTHREAD after it sets the new ->mm but before it drops to userspace
>> >> for the first time.
>> > 
>> > This looks correct. I'll give it a try.
>> > 
>> >>
>> >> Possibly obsoletes: bf05fc25f268 ("powerpc/perf: Fix oops when kthread execs user process")
>> >>
>> >> Reported-by: Ravi Bangoria <ravi.bangoria@linux.vnet.ibm.com>
>> >> Reported-by: Young Xiao <92siuyang@gmail.com>
>> >> Cc: Ravi Bangoria <ravi.bangoria@linux.vnet.ibm.com>
>> >> Cc: Naveen N. Rao <naveen.n.rao@linux.vnet.ibm.com>
>> >> Cc: Michael Ellerman <mpe@ellerman.id.au>
>> >> Cc: Jiri Olsa <jolsa@redhat.com>
>> >> Cc: Frederic Weisbecker <fweisbec@gmail.com>
>> >> Cc: Stephane Eranian <eranian@google.com>
>> >> Cc: Arnaldo Carvalho de Melo <acme@redhat.com>
>> >> Acked-by: Will Deacon <will.deacon@arm.com>
>> >> Fixes: 4018994f3d87 ("perf: Add ability to attach user level registers dump to sample")
>> >> Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
>> >> ---
>> >>  kernel/events/core.c |    2 +-
>> >>  1 file changed, 1 insertion(+), 1 deletion(-)
>> >>
>> >> --- a/kernel/events/core.c
>> >> +++ b/kernel/events/core.c
>> >> @@ -5923,7 +5923,7 @@ static void perf_sample_regs_user(struct
>> >>  	if (user_mode(regs)) {
>> >>  		regs_user->abi = perf_reg_abi(current);
>> >>  		regs_user->regs = regs;
>> >> -	} else if (current->mm) {
>> >> +	} else if (!(current->flags & PF_KTHREAD)) {
>> 
>> With this patch applied and my patch reverted, I still see it crashing
>> because current->flags does not have PF_KTHREAD set. Sample trace with
>> v5.0 kernel:
>> 
>> 
>>    BUG: Kernel NULL pointer dereference at 0x00000000
>>    Faulting instruction address: 0xc0000000000f1a6c
>>    Oops: Kernel access of bad area, sig: 11 [#1]
>>    LE SMP NR_CPUS=2048 NUMA pSeries
>>    CPU: 17 PID: 3241 Comm: systemd-cgroups Kdump: loaded Not tainted 5.0.0+ #7
>>    NIP:  c0000000000f1a6c LR: c0000000002acc7c CTR: c0000000002a8f90
>>    REGS: c0000001e80469a0 TRAP: 0300   Not tainted  (5.0.0+)
>>    MSR:  8000000000001033 <SF,ME,IR,DR,RI,LE>  CR: 48022448  XER: 20000000
>>    CFAR: c00000000000deb4 DAR: 0000000000000000 DSISR: 40000000 IRQMASK: 1 
>>    GPR00: c0000000002acc7c c0000001e8046c30 c000000001607500 0000000000000000 
>>    GPR04: 0000000000000000 0000000000000000 0000000000000000 c000000000128618 
>>    GPR08: 000007ffffffffff 0000000000000000 ffffffffffffffff c00000000001cd40 
>>    GPR12: c000000000446fd8 c00000003ffdf080 00000000ffff0000 0000000000000007 
>>    GPR16: c0000001edd74988 c0000001edd60400 00007fff89801130 000000000005e1b0 
>>    GPR20: c0000001edb77a08 c0000001e8047208 c0000001f03d9800 c0000001e8046e00 
>>    GPR24: 000000000000b1af c000000001126938 c0000001f03d9b28 0000000000010000 
>>    GPR28: c0000001e8046d30 0000000000000000 0000000000000000 0000000000000000 
>>    NIP [c0000000000f1a6c] perf_reg_value+0x5c/0xc0
>>    LR [c0000000002acc7c] perf_output_sample_regs+0x6c/0xd0
>>    Call Trace:
>>    [c0000001e8046c30] [c0000000002acc7c] perf_output_sample_regs+0x6c/0xd0 (unreliable)
>>    [c0000001e8046c80] [c0000000002b9cd0] perf_output_sample+0x620/0x8c0
>>    [c0000001e8046d10] [c0000000002ba6b4] perf_event_output_forward+0x64/0x90
>>    [c0000001e8046d80] [c0000000002b2908] __perf_event_overflow+0x88/0x1e0
>>    [c0000001e8046dd0] [c0000000000f3d18] record_and_restart+0x288/0x670
>>    [c0000001e8047180] [c0000000000f4c18] perf_event_interrupt+0x2b8/0x4b0
>>    [c0000001e8047280] [c00000000002b380] performance_monitor_exception+0x50/0x70
>>    [c0000001e80472a0] [c000000000009ca0] performance_monitor_common+0x110/0x120
>>    --- interrupt: f01 at slice_scan_available+0x20/0xc0
>>        LR = slice_find_area+0x174/0x210
>>    [c0000001e8047630] [c000000000083ea0] slice_get_unmapped_area+0x3d0/0x7f0
>>    [c0000001e8047ae0] [c00000000032d5b0] get_unmapped_area+0xa0/0x170
>>    [c0000001e8047b10] [c00000000001cd40] arch_setup_additional_pages+0xc0/0x1c0
>>    [c0000001e8047b60] [c000000000446fd8] load_elf_binary+0xb48/0x1580
>>    [c0000001e8047c80] [c0000000003c3938] search_binary_handler+0xe8/0x2a0
>>    [c0000001e8047d10] [c0000000003c42f4] __do_execve_file.isra.13+0x694/0x980
>>    [c0000001e8047de0] [c000000000128618] call_usermodehelper_exec_async+0x248/0x290
>>    [c0000001e8047e20] [c00000000000b65c] ret_from_kernel_thread+0x5c/0x80
>>    Instruction dump:
>>    7c9e2378 7c7f1b78 f8010010 f821ffd1 419e0044 3d22ff6b 7bc41764 3929ae10 
>>    7d29202e 2b890150 419d003c 38210030 <7c7f482a> e8010010 ebc1fff0 ebe1fff8 
>>    ---[ end trace 54f3492ad1d403d8 ]---
>
> Oh, nice! I think this happens because Power doesn't actually initialise
> the regs after a kthread execs() until late in start_thread().

Hmm, it's more or less at the top of start_thread(), but that's late vs
flush_old_exec(), so there's definitely a window there.

> But the plot thickens somewhat, since current_pt_regs() is different to
> task_pt_regs(current) on Power (the former cannot return NULL).

Ugh.

Mark had convinced me in the other part of the thread that returning
NULL for kthreads made sense, but having different results depending on
which similarly named accessor you use is gross.

We used to implement current_pt_regs() without actually looking at
current via:

	((struct pt_regs *)((unsigned long)current_thread_info() + THREAD_SIZE) - 1)

Where current_thread_info() just masked the stack pointer, so that was a
nice optimisation.

But now that we have THREAD_INFO_IN_TASK we're going via current anyway,
so we may as well just get rid of current_pt_regs() and make it a
synonym for task_pt_regs(current).

Though that will probably cause something else to break :D


> So a really hideous hack on top of Peter's patch might be:
>
> diff --git a/arch/arm64/kernel/perf_regs.c b/arch/arm64/kernel/perf_regs.c
> index 0bbac612146e..5bde866024b6 100644
> --- a/arch/arm64/kernel/perf_regs.c
> +++ b/arch/arm64/kernel/perf_regs.c
> @@ -57,6 +57,6 @@ void perf_get_regs_user(struct perf_regs *regs_user,
>  			struct pt_regs *regs,
>  			struct pt_regs *regs_user_copy)
>  {
> -	regs_user->regs = task_pt_regs(current);
> +	regs_user->regs = current_pt_regs();
>  	regs_user->abi = perf_reg_abi(current);


I'd be inclined to stick with what we've got, at least so long as we're
the only arch that lets task_pt_regs() return NULL.

void perf_get_regs_user(struct perf_regs *regs_user,
			struct pt_regs *regs,
			struct pt_regs *regs_user_copy)
{
	regs_user->regs = task_pt_regs(current);
	regs_user->abi = (regs_user->regs) ? perf_reg_abi(current) :
			 PERF_SAMPLE_REGS_ABI_NONE;
}


cheers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
