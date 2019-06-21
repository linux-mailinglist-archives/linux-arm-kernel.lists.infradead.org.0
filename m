Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D1A94ED32
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 18:37:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lAZmXgFqfxsSNf3vSikE4270psX36vi89KGEuVh8BQY=; b=XkrXK8ld+VsRvF
	IJtmZixLQ2smk7S5hFkZnB0W4zFlCeBx82QtREdfakWHata5IiV0lV+fJpRHd2jWW+T+sDJJuzfpp
	3ByfFEoapzzdueyrQ/OqP4aR0V7jWo2Bjddw1YVZCd1c0KY8+EfCrI+xGSlXO1OzrUUPh7Ev/ijYp
	Lin0IltCoukSNi34ArtmC8Wm6+k+MytOSoNT7q5Mk/va8dSD4DG4J5H/Rzpw/4xEHYnuUBQCcaugh
	/DNzWAh40BS1aUUJaoLJzSsKrLKMKsx7NwFWHTb65y00S2GMSCaUxdbck6bAGSHNhPMnugk85LoWr
	vt1ydsF2we5+AlHFxm+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heMXk-0005Es-Cz; Fri, 21 Jun 2019 16:37:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heMXW-0005EE-6A
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 16:37:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A23C7344;
 Fri, 21 Jun 2019 09:37:24 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B7E0F3F575;
 Fri, 21 Jun 2019 09:37:23 -0700 (PDT)
Date: Fri, 21 Jun 2019 17:37:21 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 3/3] arm64: stacktrace: better handle corrupted stacks
Message-ID: <20190621163721.GF2790@e103592.cambridge.arm.com>
References: <20190606125402.10229-1-mark.rutland@arm.com>
 <20190606125402.10229-4-mark.rutland@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606125402.10229-4-mark.rutland@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_093726_318236_740A6F00 
X-CRM114-Status: GOOD (  25.18  )
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
Cc: catalin.marinas@arm.com, tengfeif@codeaurora.org, will.deacon@arm.com,
 james.morse@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 06, 2019 at 01:54:02PM +0100, Mark Rutland wrote:
> The arm64 stacktrace code is careful to only dereference frame records
> in valid stack ranges, ensuring that a corrupted frame record won't
> result in a faulting access.
> 
> However, it's still possible for corrupt frame records to result in
> infinite loops in the stacktrace code, which is also undesirable.
> 
> This patch ensures that we complete a stacktrace in finite time, by
> keeping track of which stacks we have already completed unwinding, and
> verifying that if the next frame record is on the same stack, it is at a
> higher address.
> 
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Dave Martin <dave.martin@arm.com>
> Cc: James Morse <james.morse@arm.com>
> Cc: Tengfei Fan <tengfeif@codeaurora.org>
> Cc: Will Deacon <will.deacon@arm.com>
> ---
>  arch/arm64/include/asm/stacktrace.h | 34 ++++++++++++++++++++++++++--------
>  arch/arm64/kernel/process.c         |  2 +-
>  arch/arm64/kernel/stacktrace.c      | 16 +++++++++++++++-
>  arch/arm64/kernel/time.c            |  2 +-
>  arch/arm64/kernel/traps.c           |  4 ++--
>  5 files changed, 45 insertions(+), 13 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/stacktrace.h b/arch/arm64/include/asm/stacktrace.h
> index 18f90bf1385c..4ebf8a8997b0 100644
> --- a/arch/arm64/include/asm/stacktrace.h
> +++ b/arch/arm64/include/asm/stacktrace.h
> @@ -19,19 +19,12 @@
>  #include <linux/percpu.h>
>  #include <linux/sched.h>
>  #include <linux/sched/task_stack.h>
> +#include <linux/types.h>
>  
>  #include <asm/memory.h>
>  #include <asm/ptrace.h>
>  #include <asm/sdei.h>
>  
> -struct stackframe {
> -	unsigned long fp;
> -	unsigned long pc;
> -#ifdef CONFIG_FUNCTION_GRAPH_TRACER
> -	int graph;
> -#endif
> -};
> -
>  enum stack_type {
>  	STACK_TYPE_UNKNOWN,
>  	STACK_TYPE_TASK,
> @@ -39,6 +32,7 @@ enum stack_type {
>  	STACK_TYPE_OVERFLOW,
>  	STACK_TYPE_SDEI_NORMAL,
>  	STACK_TYPE_SDEI_CRITICAL,
> +	__NR_STACK_TYPES

The number of stack types is actually 1 less than this, and the zeroth
bit in stacks_done doesn't get used if we use this enum as an index.

Would STACK_TYPE_UNKNOWN = 0 fix this, or would that break something
elsewhere?

>  };
>  
>  struct stack_info {
> @@ -47,6 +41,16 @@ struct stack_info {
>  	enum stack_type type;
>  };
>  
> +struct stackframe {
> +	unsigned long fp;
> +	unsigned long pc;
> +#ifdef CONFIG_FUNCTION_GRAPH_TRACER
> +	int graph;
> +#endif
> +	DECLARE_BITMAP(stacks_done, __NR_STACK_TYPES);
> +	enum stack_type stack_current;
> +};
> +
>  extern int unwind_frame(struct task_struct *tsk, struct stackframe *frame);
>  extern void walk_stackframe(struct task_struct *tsk, struct stackframe *frame,
>  			    int (*fn)(struct stackframe *, void *), void *data);
> @@ -128,6 +132,9 @@ static inline bool on_accessible_stack(const struct task_struct *tsk,
>  				       unsigned long sp,
>  				       struct stack_info *info)
>  {
> +	if (info)
> +		info->type = STACK_TYPE_UNKNOWN;
> +
>  	if (on_task_stack(tsk, sp, info))
>  		return true;
>  	if (tsk != current || preemptible())
> @@ -143,13 +150,24 @@ static inline bool on_accessible_stack(const struct task_struct *tsk,
>  }
>  
>  static inline void start_backtrace(struct stackframe *frame,
> +				   struct task_struct *tsk,
>  				   unsigned long fp, unsigned long pc)
>  {
> +	struct stack_info info;
> +
>  	frame->fp = fp;
>  	frame->pc = pc;
>  #ifdef CONFIG_FUNCTION_GRAPH_TRACER
>  	frame->graph = 0;
>  #endif
> +	bitmap_zero(frame->stacks_done, __NR_STACK_TYPES);
> +
> +	/*
> +	 * We need to prime stack_current for the first unwind, but we can
> +	 * ignore the accessibility until the unwind occurs.
> +	 */
> +	on_accessible_stack(tsk, fp, &info);
> +	frame->stack_current = info.type;
>  }
>  
>  #endif	/* __ASM_STACKTRACE_H */
> diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> index 122d88fccd13..ba9441982573 100644
> --- a/arch/arm64/kernel/process.c
> +++ b/arch/arm64/kernel/process.c
> @@ -509,7 +509,7 @@ unsigned long get_wchan(struct task_struct *p)
>  	if (!stack_page)
>  		return 0;
>  
> -	start_backtrace(&frame, thread_saved_fp(p), thread_saved_pc(p));
> +	start_backtrace(&frame, p, thread_saved_fp(p), thread_saved_pc(p));
>  	do {
>  		if (unwind_frame(p, &frame))
>  			goto out;
> diff --git a/arch/arm64/kernel/stacktrace.c b/arch/arm64/kernel/stacktrace.c
> index b00ec7d483d1..1c45b33c7474 100644
> --- a/arch/arm64/kernel/stacktrace.c
> +++ b/arch/arm64/kernel/stacktrace.c
> @@ -43,6 +43,8 @@
>  int notrace unwind_frame(struct task_struct *tsk, struct stackframe *frame)
>  {
>  	unsigned long fp = frame->fp;
> +	bool changed_stack = false;
> +	struct stack_info info;
>  
>  	if (fp & 0xf)
>  		return -EINVAL;
> @@ -50,12 +52,24 @@ int notrace unwind_frame(struct task_struct *tsk, struct stackframe *frame)
>  	if (!tsk)
>  		tsk = current;
>  
> -	if (!on_accessible_stack(tsk, fp, NULL))
> +	if (!on_accessible_stack(tsk, fp, &info))
>  		return -EINVAL;
>  
> +	if (test_bit(info.type, frame->stacks_done))
> +		return -EINVAL;

Doesn't this fire when we unwind a sequence of frames on the same stack
(i.e., the common case)?

I may be missing something obvious here.

> +
> +	if (frame->stack_current != info.type) {
> +		set_bit(frame->stack_current, frame->stacks_done);

Oh, right, stacks_done is the set of stacks we have been on, excluding
the current one?  If so, a comment somewhere explaining that, or some
more explicit name, like "past_stacks" might make sense.

> +		frame->stack_current = info.type;
> +		changed_stack = true;
> +	}
> +
>  	frame->fp = READ_ONCE_NOCHECK(*(unsigned long *)(fp));
>  	frame->pc = READ_ONCE_NOCHECK(*(unsigned long *)(fp + 8));
>  
> +	if (!changed_stack && frame->fp <= fp)
> +		return -EINVAL;
> +

[...]

Otherwise, seems to make sense.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
