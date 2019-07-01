Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 552D45BA26
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 12:57:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BEwc9tb0gH6JJpRy9ZL8lX+X61aGbBDY3/h2HSHnxBA=; b=sx2zOVu4HQmIKZ
	uJd+BfjANN5DP7aJI1OZaWHEGbKKBQtAJ/O0shtKomQZBr96vc2qyl3qFO8ANmGtexFX9/LSTKzLa
	FpVR2plN5FPTHDwuILRI41QPJhsTIA2VcPWleJteJddG9dRA8DNysjSkPm8lIoX6mW98EkpI/X1tH
	7i8kfiNy8QUvyYCev7LkfbcN0sobTcp69WFjDPKT/BKIt2mTO5qYoL9Hz2SmbWghRzksv+K+DdRU3
	YR/3sE56hBFGWCsBUM9P2gi0ccoHHLZHeD+A3QNE3/vgjZpyuRIiBCRuxPffId3U9WSAQxKN0SArg
	PJSWHzp8ezTlMuLRmWuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhtze-00056O-Mz; Mon, 01 Jul 2019 10:57:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hhtzY-00055p-IK
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 10:57:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C55DA344;
 Mon,  1 Jul 2019 03:56:59 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DB2873F703;
 Mon,  1 Jul 2019 03:56:58 -0700 (PDT)
Date: Mon, 1 Jul 2019 11:56:56 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCHv2 3/3] arm64: stacktrace: better handle corrupted stacks
Message-ID: <20190701105656.GM2790@e103592.cambridge.arm.com>
References: <20190628154639.5308-1-mark.rutland@arm.com>
 <20190628154639.5308-4-mark.rutland@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190628154639.5308-4-mark.rutland@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_035700_696761_174BF538 
X-CRM114-Status: GOOD (  26.43  )
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

On Fri, Jun 28, 2019 at 04:46:39PM +0100, Mark Rutland wrote:
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
>  arch/arm64/include/asm/stacktrace.h | 32 ++++++++++++++++++++++++--------
>  arch/arm64/kernel/stacktrace.c      | 15 ++++++++++++++-
>  2 files changed, 38 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/stacktrace.h b/arch/arm64/include/asm/stacktrace.h
> index 18f90bf1385c..938b96ba1f0f 100644
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
>  };
>  
>  struct stack_info {
> @@ -47,6 +41,17 @@ struct stack_info {
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
> +	unsigned long prev_fp;
> +	enum stack_type prev_type;
> +};
> +
>  extern int unwind_frame(struct task_struct *tsk, struct stackframe *frame);
>  extern void walk_stackframe(struct task_struct *tsk, struct stackframe *frame,
>  			    int (*fn)(struct stackframe *, void *), void *data);
> @@ -128,6 +133,9 @@ static inline bool on_accessible_stack(const struct task_struct *tsk,
>  				       unsigned long sp,
>  				       struct stack_info *info)
>  {
> +	if (info)
> +		info->type = STACK_TYPE_UNKNOWN;
> +
>  	if (on_task_stack(tsk, sp, info))
>  		return true;
>  	if (tsk != current || preemptible())
> @@ -150,6 +158,14 @@ static inline void start_backtrace(struct stackframe *frame,
>  #ifdef CONFIG_FUNCTION_GRAPH_TRACER
>  	frame->graph = 0;
>  #endif
> +
> +	/*
> +	 * Prime the first unwind, which will be treated as a transition from
> +	 * STACK_TYPE_UNKNOWN to some valid stack.
> +	 */
> +	bitmap_zero(frame->stacks_done, __NR_STACK_TYPES);
> +	frame->prev_fp = 0;
> +	frame->prev_type = STACK_TYPE_UNKNOWN;
>  }
>  
>  #endif	/* __ASM_STACKTRACE_H */
> diff --git a/arch/arm64/kernel/stacktrace.c b/arch/arm64/kernel/stacktrace.c
> index e5338216deaa..2e4b59e10e71 100644
> --- a/arch/arm64/kernel/stacktrace.c
> +++ b/arch/arm64/kernel/stacktrace.c
> @@ -43,6 +43,7 @@
>  int notrace unwind_frame(struct task_struct *tsk, struct stackframe *frame)
>  {
>  	unsigned long fp = frame->fp;
> +	struct stack_info info, prev_info;
>  
>  	if (fp & 0xf)
>  		return -EINVAL;
> @@ -50,11 +51,23 @@ int notrace unwind_frame(struct task_struct *tsk, struct stackframe *frame)
>  	if (!tsk)
>  		tsk = current;
>  
> -	if (!on_accessible_stack(tsk, fp, NULL))
> +	if (!on_accessible_stack(tsk, fp, &info))
>  		return -EINVAL;
>  
> +	if (test_bit(info.type, frame->stacks_done))
> +		return -EINVAL;
> +
> +	if (info.type == frame->prev_type) {
> +		if (fp <= frame->prev_fp)
> +			return -EINVAL;
> +	} else {
> +		set_bit(prev_info.type, frame->stacks_done);
> +	}
> +
>  	frame->fp = READ_ONCE_NOCHECK(*(unsigned long *)(fp));
>  	frame->pc = READ_ONCE_NOCHECK(*(unsigned long *)(fp + 8));
> +	frame->prev_fp = fp;
> +	frame->prev_type = info.type;

As in my response on the last series, do we really need to track 2
frames at the same time in struct stackframe?

The transition (i.e., where we came from and where we're going to should
be visible in unwind_frame().  I don't see why we need additional history
in order to detect stack changes or track which stacks have been visited.


So, say (incomplete paste-o-code):

	unsigned long fp = frame->fp;
	enum stack_type fp_stack = frame->fp_stack;

  	frame->fp = READ_ONCE_NOCHECK(*(unsigned long *)(fp));
  	frame->pc = READ_ONCE_NOCHECK(*(unsigned long *)(fp + 8));
	
	if (!on_accessible_stack(tsk, frame->fp, &info))
		return -EINVAL;

	if (test_bit(info.type, frame->stacks_done))
		return -EINVAL;

	if (info.type == frame->fp_stack) {
		/* no stack change */
	} else {
		/* stack change */
	}


This would require stack_backtrace() to be tweaked, so that fp_stack
describes where frame->fp is and the corresponding bit is already set in
stacks_done, rather than starting out as STACK_UNKNOWN.

I haven't fleshed this out, so the idea may fall down somewhere else.


Finally, can we enforce which stack transitions are valid?  (i.e.,
TASK -> SDEI or TASK -> IRQ should never be seen in backtraces).
There may be some gotchas here, so it might not be worth it...  I
vaguely remember some past discussion.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
