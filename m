Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D051F3116D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 17:37:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=weLUKfK2Cr5hZOKUmcO+QHNjvtJJHV0G+E6Y/w8vL8g=; b=JVwPnA8PqRfkyt
	yJfxYFd9DTJ7pUe1aIw+rASb9muXXN4aj90BIbAF5gzd22Unaa8cdww+G3R6QUPySVQXu7R6DUHmv
	wI98qknMAWTUFNACDLTkGcetRmZ9a4G2XY5uLO4+rjrpAp868DkOjTapeDz4gbAOT9K7eolDDBgEh
	UfvaUS3R1cid8WhUEc6aK7ZQWZAfNfrX0xjLS/4/eo5T7CWo79FaWf2vcmBJP/cxgtytcAK89J9kf
	6O0ctbIq5jblBZoZIrfEkp4hNJkHf2IDeadqLvKPz1HTN6rAYg4Byc3w8ElZ4IUvQsqYAtRD/mVIB
	iEz8JidEw6MPGKe6sGZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWjaw-00089u-U2; Fri, 31 May 2019 15:37:26 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWjao-00088u-NB
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 15:37:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CCA98341;
 Fri, 31 May 2019 08:37:15 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D76123F59C;
 Fri, 31 May 2019 08:37:12 -0700 (PDT)
Date: Fri, 31 May 2019 16:37:03 +0100
From: Will Deacon <will.deacon@arm.com>
To: Ravi Bangoria <ravi.bangoria@linux.ibm.com>
Subject: Re: [PATCH] perf: Fix oops when kthread execs user process
Message-ID: <20190531153703.GA21288@fuggles.cambridge.arm.com>
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
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8b55f79a-c324-0701-e85f-c7797a60a708@linux.ibm.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_083718_769989_86BB18F2 
X-CRM114-Status: GOOD (  23.29  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Peter Zijlstra <peterz@infradead.org>, mpe@ellerman.id.au, jolsa@redhat.com,
 x86@kernel.org, linux@armlinux.org.uk, eranian@google.com,
 linux-kernel@vger.kernel.org, acme@redhat.com, mingo@redhat.com, bp@alien8.de,
 hpa@zytor.com, ravi.bangoria@linux.vnet.ibm.com, fweisbec@gmail.com,
 linux-arm-kernel@lists.infradead.org, kan.liang@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 03:57:36PM +0530, Ravi Bangoria wrote:
> 
> 
> On 5/30/19 2:08 PM, Ravi Bangoria wrote:
> >> ---
> >> Subject: perf: Fix perf_sample_regs_user()
> >> From: Peter Zijlstra <peterz@infradead.org>
> >> Date: Wed May 29 14:37:24 CEST 2019
> >>
> >> perf_sample_regs_user() uses 'current->mm' to test for the presence of
> >> userspace, but this is insufficient, consider use_mm().
> >>
> >> A better test is: '!(current->flags & PF_KTHREAD)', exec() clears
> >> PF_KTHREAD after it sets the new ->mm but before it drops to userspace
> >> for the first time.
> > 
> > This looks correct. I'll give it a try.
> > 
> >>
> >> Possibly obsoletes: bf05fc25f268 ("powerpc/perf: Fix oops when kthread execs user process")
> >>
> >> Reported-by: Ravi Bangoria <ravi.bangoria@linux.vnet.ibm.com>
> >> Reported-by: Young Xiao <92siuyang@gmail.com>
> >> Cc: Ravi Bangoria <ravi.bangoria@linux.vnet.ibm.com>
> >> Cc: Naveen N. Rao <naveen.n.rao@linux.vnet.ibm.com>
> >> Cc: Michael Ellerman <mpe@ellerman.id.au>
> >> Cc: Jiri Olsa <jolsa@redhat.com>
> >> Cc: Frederic Weisbecker <fweisbec@gmail.com>
> >> Cc: Stephane Eranian <eranian@google.com>
> >> Cc: Arnaldo Carvalho de Melo <acme@redhat.com>
> >> Acked-by: Will Deacon <will.deacon@arm.com>
> >> Fixes: 4018994f3d87 ("perf: Add ability to attach user level registers dump to sample")
> >> Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
> >> ---
> >>  kernel/events/core.c |    2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> --- a/kernel/events/core.c
> >> +++ b/kernel/events/core.c
> >> @@ -5923,7 +5923,7 @@ static void perf_sample_regs_user(struct
> >>  	if (user_mode(regs)) {
> >>  		regs_user->abi = perf_reg_abi(current);
> >>  		regs_user->regs = regs;
> >> -	} else if (current->mm) {
> >> +	} else if (!(current->flags & PF_KTHREAD)) {
> 
> With this patch applied and my patch reverted, I still see it crashing
> because current->flags does not have PF_KTHREAD set. Sample trace with
> v5.0 kernel:
> 
> 
>    BUG: Kernel NULL pointer dereference at 0x00000000
>    Faulting instruction address: 0xc0000000000f1a6c
>    Oops: Kernel access of bad area, sig: 11 [#1]
>    LE SMP NR_CPUS=2048 NUMA pSeries
>    CPU: 17 PID: 3241 Comm: systemd-cgroups Kdump: loaded Not tainted 5.0.0+ #7
>    NIP:  c0000000000f1a6c LR: c0000000002acc7c CTR: c0000000002a8f90
>    REGS: c0000001e80469a0 TRAP: 0300   Not tainted  (5.0.0+)
>    MSR:  8000000000001033 <SF,ME,IR,DR,RI,LE>  CR: 48022448  XER: 20000000
>    CFAR: c00000000000deb4 DAR: 0000000000000000 DSISR: 40000000 IRQMASK: 1 
>    GPR00: c0000000002acc7c c0000001e8046c30 c000000001607500 0000000000000000 
>    GPR04: 0000000000000000 0000000000000000 0000000000000000 c000000000128618 
>    GPR08: 000007ffffffffff 0000000000000000 ffffffffffffffff c00000000001cd40 
>    GPR12: c000000000446fd8 c00000003ffdf080 00000000ffff0000 0000000000000007 
>    GPR16: c0000001edd74988 c0000001edd60400 00007fff89801130 000000000005e1b0 
>    GPR20: c0000001edb77a08 c0000001e8047208 c0000001f03d9800 c0000001e8046e00 
>    GPR24: 000000000000b1af c000000001126938 c0000001f03d9b28 0000000000010000 
>    GPR28: c0000001e8046d30 0000000000000000 0000000000000000 0000000000000000 
>    NIP [c0000000000f1a6c] perf_reg_value+0x5c/0xc0
>    LR [c0000000002acc7c] perf_output_sample_regs+0x6c/0xd0
>    Call Trace:
>    [c0000001e8046c30] [c0000000002acc7c] perf_output_sample_regs+0x6c/0xd0 (unreliable)
>    [c0000001e8046c80] [c0000000002b9cd0] perf_output_sample+0x620/0x8c0
>    [c0000001e8046d10] [c0000000002ba6b4] perf_event_output_forward+0x64/0x90
>    [c0000001e8046d80] [c0000000002b2908] __perf_event_overflow+0x88/0x1e0
>    [c0000001e8046dd0] [c0000000000f3d18] record_and_restart+0x288/0x670
>    [c0000001e8047180] [c0000000000f4c18] perf_event_interrupt+0x2b8/0x4b0
>    [c0000001e8047280] [c00000000002b380] performance_monitor_exception+0x50/0x70
>    [c0000001e80472a0] [c000000000009ca0] performance_monitor_common+0x110/0x120
>    --- interrupt: f01 at slice_scan_available+0x20/0xc0
>        LR = slice_find_area+0x174/0x210
>    [c0000001e8047630] [c000000000083ea0] slice_get_unmapped_area+0x3d0/0x7f0
>    [c0000001e8047ae0] [c00000000032d5b0] get_unmapped_area+0xa0/0x170
>    [c0000001e8047b10] [c00000000001cd40] arch_setup_additional_pages+0xc0/0x1c0
>    [c0000001e8047b60] [c000000000446fd8] load_elf_binary+0xb48/0x1580
>    [c0000001e8047c80] [c0000000003c3938] search_binary_handler+0xe8/0x2a0
>    [c0000001e8047d10] [c0000000003c42f4] __do_execve_file.isra.13+0x694/0x980
>    [c0000001e8047de0] [c000000000128618] call_usermodehelper_exec_async+0x248/0x290
>    [c0000001e8047e20] [c00000000000b65c] ret_from_kernel_thread+0x5c/0x80
>    Instruction dump:
>    7c9e2378 7c7f1b78 f8010010 f821ffd1 419e0044 3d22ff6b 7bc41764 3929ae10 
>    7d29202e 2b890150 419d003c 38210030 <7c7f482a> e8010010 ebc1fff0 ebe1fff8 
>    ---[ end trace 54f3492ad1d403d8 ]---

Oh, nice! I think this happens because Power doesn't actually initialise
the regs after a kthread execs() until late in start_thread(). But the plot
thickens somewhat, since current_pt_regs() is different to
task_pt_regs(current) on Power (the former cannot return NULL).

So a really hideous hack on top of Peter's patch might be:

diff --git a/arch/arm64/kernel/perf_regs.c b/arch/arm64/kernel/perf_regs.c
index 0bbac612146e..5bde866024b6 100644
--- a/arch/arm64/kernel/perf_regs.c
+++ b/arch/arm64/kernel/perf_regs.c
@@ -57,6 +57,6 @@ void perf_get_regs_user(struct perf_regs *regs_user,
 			struct pt_regs *regs,
 			struct pt_regs *regs_user_copy)
 {
-	regs_user->regs = task_pt_regs(current);
+	regs_user->regs = current_pt_regs();
 	regs_user->abi = perf_reg_abi(current);
 }

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
