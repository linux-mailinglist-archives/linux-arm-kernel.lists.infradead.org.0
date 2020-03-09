Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3099717E7C4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 20:04:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aB7ibKP9MgOkVvch8Dibpg9U44+2aiz9hkuF2/g+ESA=; b=PduT3iQjt+rY+S
	nkt6SmHAJv5mmcD0OoEFdi0l982azx8KVAaH7ppQ6o1tTGxrLnP+0MIvYQfXYsPlTEyWT94UzAslB
	r67SjagnCBLzr6f2DT+d7/2iZ6rMXrxBLLyWZDENGTShuLSHtfvx09hpBBdJqsPNTTO472z++Ntxo
	q69cVOjcYwSkdQ1pdhKD0a5x1iTETuU1/FDaw9XYQlkcQyoeQ41wv6WetSWjiXN+N29KZT/7gD4cw
	jkHqaMJZhxZTB1kKpdOOWBvBKwq2hBCWEY46sKU8kE0P/5N3zQp4NB75OA5XPgelNAvPR1NiKo0oZ
	dG6ugEmM5aaWskMpV3Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBNh8-0006X3-9o; Mon, 09 Mar 2020 19:04:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBNgz-0006NV-U6
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 19:03:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DA5431FB;
 Mon,  9 Mar 2020 12:03:56 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 120E63F67D;
 Mon,  9 Mar 2020 12:03:54 -0700 (PDT)
Subject: Re: [PATCH v6 13/18] arm64: unwind: strip PAC from kernel addresses
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
 <1583476525-13505-14-git-send-email-amit.kachhap@arm.com>
From: James Morse <james.morse@arm.com>
Message-ID: <ec2c78db-31e7-9e82-525e-921b9bf6b3a3@arm.com>
Date: Mon, 9 Mar 2020 19:03:53 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1583476525-13505-14-git-send-email-amit.kachhap@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_120358_059712_B5D86D47 
X-CRM114-Status: GOOD (  15.26  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Amit,

On 06/03/2020 06:35, Amit Daniel Kachhap wrote:
> From: Mark Rutland <mark.rutland@arm.com>
> 
> When we enable pointer authentication in the kernel, LR values saved to
> the stack will have a PAC which we must strip in order to retrieve the
> real return address.
> 
> Strip PACs when unwinding the stack in order to account for this.

This patch had me looking at the wider pointer-auth + ftrace interaction...


> diff --git a/arch/arm64/kernel/stacktrace.c b/arch/arm64/kernel/stacktrace.c
> index a336cb1..b479df7 100644
> --- a/arch/arm64/kernel/stacktrace.c
> +++ b/arch/arm64/kernel/stacktrace.c
> @@ -14,6 +14,7 @@
>  #include <linux/stacktrace.h>
>  
>  #include <asm/irq.h>
> +#include <asm/pointer_auth.h>
>  #include <asm/stack_pointer.h>
>  #include <asm/stacktrace.h>
>  
> @@ -101,6 +102,8 @@ int notrace unwind_frame(struct task_struct *tsk, struct stackframe *frame)

There is an earlier reader of frame->pc:
| #ifdef CONFIG_FUNCTION_GRAPH_TRACER
| 	if (tsk->ret_stack &&
| 			(frame->pc == (unsigned long)return_to_handler)) {


Which leads down the rat-hole of: does this need ptrauth_strip_insn_pac()?

The version of GCC on my desktop supports patchable-function-entry, the function pre-amble
has two nops for use by ftrace[0]. This means if prepare_ftrace_return() re-writes the
saved LR, it does it before the caller paciasp's it.

I think that means if you stack-trace from a function that had been hooked by the
function_graph_tracer, you will see the LR with a PAC, meaning the above == won't match.


The version of LLVM on my desktop however doesn't support patchable-function-entry, it
uses _mcount() to do the ftrace stuff[1]. Here prepare_ftrace_return() overwrites a
paciasp'd LR with one that isn't, which will fail.


Could the ptrauth_strip_insn_pac() call move above the CONFIG_FUNCTION_GRAPH_TRACER block,
and could we add something like:
|	depends on (!FTRACE || HAVE_DYNAMIC_FTRACE_WITH_REGS)

to the Kconfig to prevent both FTRACE and PTR_AUTH being enabled unless the compiler has
support for patchable-function-entry?


>  	}
>  #endif /* CONFIG_FUNCTION_GRAPH_TRACER */
>  
> +	frame->pc = ptrauth_strip_insn_pac(frame->pc);
> +
>  	/*
>  	 * Frames created upon entry from EL0 have NULL FP and PC values, so
>  	 * don't bother reporting these. Frames created by __noreturn functions


Thanks,

James

[0] gcc (Debian 9.2.1-28) 9.2.1 20200203
0000000000000048 <sync_icache_aliases>:
  48:   d503201f        nop
  4c:   d503201f        nop
  50:   90000002        adrp    x2, 0 <__icache_flags>
  54:   d503233f        paciasp
  58:   a9bf7bfd        stp     x29, x30, [sp, #-16]!
  5c:   910003fd        mov     x29, sp
  60:   f9400044        ldr     x4, [x2]
  64:   36000124        tbz     w4, #0, 88 <sync_icache_al


[1] clang version 9.0.0-1 (tags/RELEASE_900/final)
0000000000000000 <sync_icache_aliases>:
   0:   d503233f        paciasp
   4:   a9be4ff4        stp     x20, x19, [sp, #-32]!
   8:   a9017bfd        stp     x29, x30, [sp, #16]
   c:   910043fd        add     x29, sp, #0x10
  10:   aa0103f4        mov     x20, x1
  14:   aa0003f3        mov     x19, x0
  18:   94000000        bl      0 <_mcount>
  1c:   90000008        adrp    x8, 0 <__icache_flags>
  20:   f9400108        ldr     x8, [x8]
  24:   370000a8        tbnz    w8, #0, 38 <sync_icache_aliases+0x38>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
