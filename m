Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 136CF509D7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 13:35:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uebIGWBdUNuUOQ5WVmOlltPSXohiWmrZG8XQDIleqS4=; b=Djxo7JkPEiSYTG
	kkw9XeLIhPGYPw88lpXhNbGVXG3ejlPh3oamLKDPr3psozJCCJkEPIIhOHYxZIp5g5S8AaeZTwkOm
	V8W2RD0AMafukU4ZPM/yORQg3QYy0SHKVJppqY1PdVdxUvRlI+LybGOxECGlqNVT379Pf0qePNlsW
	NCgWWEFopoHRWmOn3CyLTLd0rrkXtI8lwxrm0OylRtkfzU03EE29yqyjn+455WaZvTBA6R9aRqPMB
	5yON4YSxmH+V9OH/sBlYvTLdAJpSdNHdawpxMTGoU/v9Yr4TJfrkT6TPYhlp4TuHb/H2Fi9P4jl0P
	gtjZoFWYT6w+xpDwYwvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfNFh-0007ZN-FK; Mon, 24 Jun 2019 11:35:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfNFP-0007Yd-2I
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 11:34:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2E9092B;
 Mon, 24 Jun 2019 04:34:52 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5C7E23F718;
 Mon, 24 Jun 2019 04:34:51 -0700 (PDT)
Subject: Re: [PATCH 3/3] arm64: stacktrace: better handle corrupted stacks
To: Mark Rutland <mark.rutland@arm.com>
References: <20190606125402.10229-1-mark.rutland@arm.com>
 <20190606125402.10229-4-mark.rutland@arm.com>
From: James Morse <james.morse@arm.com>
Message-ID: <7c70ab1c-e114-9d21-e37b-3d4e01ac6e43@arm.com>
Date: Mon, 24 Jun 2019 12:34:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190606125402.10229-4-mark.rutland@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_043455_195561_34F6370F 
X-CRM114-Status: GOOD (  22.81  )
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

On 06/06/2019 13:54, Mark Rutland wrote:
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

This looks good, I tried to take it for a spin to test SDEI stack tracing ... but it
wouldn't boot, it panic()s before earlycon.

defconfig doesn't do this, defconfig+CONFIG_PROVE_LOCKING does.
Toggling CONFIG_DEBUG_LOCK_ALLOC is the smallest config change to make this show up.

Its taking a translation fault:
| <__ll_sc_arch_atomic64_or>:
|        f9800031        prfm    pstl1strm, [x1]
|        c85f7c31        ldxr    x17, [x1]		(faulting instruction)
|        aa000231        orr     x17, x17, x0
|        c8107c31        stxr    w16, x17, [x1]
|        35ffffb0        cbnz    w16, ffff000010c7d19c <__ll_sc_a
|        d65f03c0        ret

x0: 0x0000000000000100
x1: 0xffff0000137399e8			(far_el2)

If x1 were part of 'frame' in __save_stack_trace it should be on the stack, but at
fault-time sp is 0xffff0000114a3a50. This happens before the linear map has been set up....

The lr points just after the set_bit() call in unwind_frame().


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
> +
> +	if (frame->stack_current != info.type) {

> +		set_bit(frame->stack_current, frame->stacks_done);


Changing this line:
| -               set_bit(frame->stack_current, frame->stacks_done);
| +               *frame->stacks_done |= (1 << frame->stack_current);
works fine.

But it doesn't cause a stacktrace to be printed, so I can't work out how
CONFIG_DEBUG_LOCK_ALLOC is relevant.


... this makes no sense, can anyone else reproduce it?


Thanks,

James


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
>  #ifdef CONFIG_FUNCTION_GRAPH_TRACER
>  	if (tsk->ret_stack &&
>  			(frame->pc == (unsigned long)return_to_handler)) {

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
