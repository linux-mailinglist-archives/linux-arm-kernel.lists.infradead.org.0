Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC35D5296D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 12:28:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ombO1D8IJyw+iqmNyTmebPsd/N8OD5xkdyN9hyqaHGM=; b=PH73QFPEDN1pw5
	ksNUp9STvVqQTepPNwaYMb2MceVnPFjj8thAcTZfRr4hvV20J4SBUMjV2f3S35tsdOfMQAoNR/EMk
	cIgMLHmmSx7hUHI5N5jEiOnhiH4PpWTEnERIy5FKZLjMoJYljzTYK154K8Q2EE518T4OnBcAKm/CH
	qiySOM7pIfxDewQMtShWS0jn6FlHXAEAanTyz4w4OAJzBPSe3fXuzom0OvHwZGuORf9qlrOVDXLn8
	GATVLF0sxsuTa9RO94Nk7TlQT/kr/DS3235bfaa3NwdlyB/cpN2s6/WT4pDcBIiCFvF2L0+uUzaGq
	QHr8brtHNPudleA6zwXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfigg-00059Y-2T; Tue, 25 Jun 2019 10:28:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfigV-00058y-Q1
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 10:28:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A1B13360;
 Tue, 25 Jun 2019 03:28:18 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C69903F71E;
 Tue, 25 Jun 2019 03:28:17 -0700 (PDT)
Subject: Re: [PATCH 3/3] arm64: stacktrace: better handle corrupted stacks
From: James Morse <james.morse@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
References: <20190606125402.10229-1-mark.rutland@arm.com>
 <20190606125402.10229-4-mark.rutland@arm.com>
 <7c70ab1c-e114-9d21-e37b-3d4e01ac6e43@arm.com>
Message-ID: <57fdba62-b7fc-27dc-cc7a-f911cfb58440@arm.com>
Date: Tue, 25 Jun 2019 11:28:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <7c70ab1c-e114-9d21-e37b-3d4e01ac6e43@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_032819_933330_DB4FDC83 
X-CRM114-Status: GOOD (  24.00  )
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
Cc: catalin.marinas@arm.com, tengfeif@codeaurora.org, will.deacon@arm.com,
 dave.martin@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On 24/06/2019 12:34, James Morse wrote:
> On 06/06/2019 13:54, Mark Rutland wrote:
>> The arm64 stacktrace code is careful to only dereference frame records
>> in valid stack ranges, ensuring that a corrupted frame record won't
>> result in a faulting access.
>>
>> However, it's still possible for corrupt frame records to result in
>> infinite loops in the stacktrace code, which is also undesirable.
>>
>> This patch ensures that we complete a stacktrace in finite time, by
>> keeping track of which stacks we have already completed unwinding, and
>> verifying that if the next frame record is on the same stack, it is at a
>> higher address.
> 
> This looks good, I tried to take it for a spin to test SDEI stack tracing ... but it
> wouldn't boot, it panic()s before earlycon.
> 
> defconfig doesn't do this, defconfig+CONFIG_PROVE_LOCKING does.
> Toggling CONFIG_DEBUG_LOCK_ALLOC is the smallest config change to make this show up.
> 
> Its taking a translation fault:
> | <__ll_sc_arch_atomic64_or>:
> |        f9800031        prfm    pstl1strm, [x1]
> |        c85f7c31        ldxr    x17, [x1]		(faulting instruction)
> |        aa000231        orr     x17, x17, x0
> |        c8107c31        stxr    w16, x17, [x1]
> |        35ffffb0        cbnz    w16, ffff000010c7d19c <__ll_sc_a
> |        d65f03c0        ret
> 
> x0: 0x0000000000000100
> x1: 0xffff0000137399e8			(far_el2)
> 
> If x1 were part of 'frame' in __save_stack_trace it should be on the stack, but at
> fault-time sp is 0xffff0000114a3a50. This happens before the linear map has been set up....
> 
> The lr points just after the set_bit() call in unwind_frame().

frame->stack_current is uninitialized/junk, so the calculated bit to set is outside of
mapped memory.

Lockdep is relevant because it uses save_stack_trace() which doesn't use the
start_backtrace() helper that initialises the new metadata.
DEBUG_LOCK_ALLOC was a red-herring, it was perturbing the stack layout so this code ate a
pointer instead of a much more believable 0.

Patch below, this needs to come before patch 3.
I'll give this a spin with the SDEI firmware.


Thanks,

James

----------------------------------%<----------------------------------
From: James Morse <james.morse@arm.com>
Date:   Tue Jun 25 11:05:33 2019 +0100

arm64: stacktrace: use start_backtrace() consistently

unwind_frame() is about to get smart when it comes to validating
stack frames and stepping between stacks without going round in
circles.

All this relies on new parameters in struct stackframe being
initialised. Before we can do this, we need all users of
struct stackframe to use start_backtrace(), instead of packing
the values manually.

Signed-off-by: James Morse <james.morse@arm.com>
---
 arch/arm64/kernel/perf_callchain.c |  7 +------
 arch/arm64/kernel/return_address.c |  8 +++-----
 arch/arm64/kernel/stacktrace.c     | 20 ++++++--------------
 3 files changed, 10 insertions(+), 25 deletions(-)

---
diff --git a/arch/arm64/kernel/perf_callchain.c b/arch/arm64/kernel/perf_callcha
in.c
index 61d983f5756f..1510ccbd7cb2 100644
--- a/arch/arm64/kernel/perf_callchain.c
+++ b/arch/arm64/kernel/perf_callchain.c
@@ -165,12 +165,7 @@ void perf_callchain_kernel(struct perf_callchain_entry_ctx
*entry,
                return;
        }

-       frame.fp = regs->regs[29];
-       frame.pc = regs->pc;
-#ifdef CONFIG_FUNCTION_GRAPH_TRACER
-       frame.graph = 0;
-#endif
-
+       start_backtrace(&frame, current, regs->regs[29], regs->pc);
        walk_stackframe(current, &frame, callchain_trace, entry);
 }

diff --git a/arch/arm64/kernel/return_address.c b/arch/arm64/kernel/return_address.c
index 53c40196b607..36f8888a5e76 100644
--- a/arch/arm64/kernel/return_address.c
+++ b/arch/arm64/kernel/return_address.c
@@ -41,11 +41,9 @@ void *return_address(unsigned int level)
        data.level = level + 2;
        data.addr = NULL;

-       frame.fp = (unsigned long)__builtin_frame_address(0);
-       frame.pc = (unsigned long)return_address; /* dummy */
-#ifdef CONFIG_FUNCTION_GRAPH_TRACER
-       frame.graph = 0;
-#endif
+       start_backtrace(&frame, current,
+                       (unsigned long)__builtin_frame_address(0),
+                       (unsigned long)return_address);

        walk_stackframe(current, &frame, save_return_addr, &data);

diff --git a/arch/arm64/kernel/stacktrace.c b/arch/arm64/kernel/stacktrace.c
index 1c45b33c7474..8a1fa90c784d 100644
--- a/arch/arm64/kernel/stacktrace.c
+++ b/arch/arm64/kernel/stacktrace.c
@@ -147,12 +147,7 @@ void save_stack_trace_regs(struct pt_regs *regs, struct stack_trace
*trace)
        data.skip = trace->skip;
        data.no_sched_functions = 0;

-       frame.fp = regs->regs[29];
-       frame.pc = regs->pc;
-#ifdef CONFIG_FUNCTION_GRAPH_TRACER
-       frame.graph = 0;
-#endif
-
+       start_backtrace(&frame, current, regs->regs[29], regs->pc);
        walk_stackframe(current, &frame, save_trace, &data);
 }
 EXPORT_SYMBOL_GPL(save_stack_trace_regs);
@@ -171,18 +166,15 @@ static noinline void __save_stack_trace(struct task_struct *tsk,
        data.no_sched_functions = nosched;

        if (tsk != current) {
-               frame.fp = thread_saved_fp(tsk);
-               frame.pc = thread_saved_pc(tsk);
+               start_backtrace(&frame, tsk, thread_saved_fp(tsk),
+                               thread_saved_pc(tsk));
        } else {
                /* We don't want this function nor the caller */
                data.skip += 2;
-               frame.fp = (unsigned long)__builtin_frame_address(0);
-               frame.pc = (unsigned long)__save_stack_trace;
+               start_backtrace(&frame, tsk,
+                               (unsigned long)__builtin_frame_address(0),
+                               (unsigned long)__save_stack_trace);
        }
-#ifdef CONFIG_FUNCTION_GRAPH_TRACER
-       frame.graph = 0;
-#endif
-
        walk_stackframe(tsk, &frame, save_trace, &data);

        put_task_stack(tsk);

----------------------------------%<----------------------------------

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
