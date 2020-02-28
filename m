Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6552B173CEF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 17:32:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sT9grIzlbmZidxWWnOpCg3eRpIlr6KoSjYC5bhyLLyQ=; b=DaABHawGKTRUg6
	YYdp6C4kLGRtx4BqkbhSqRnt/BK3e7d3pDHP3sK2ZyBjohoMIkt7C/uC9UGOCOK30KWt8Kjsvj2K+
	ktKimLOW3Oa7lxdnTzp5dyUt0kqXMpcFxXaWAfbTKtBxcF+lvmJjH7PKLa13ZqwLMN2iQV7mEX7/T
	PjQI5ezsZM8adJPUzSqIl4+hn8qdAFo9smcw6AVSvB9LZTUHJhCMBJ7ZmQHfenJOEJRUUYgkqvell
	+84SjgE7EYb1W2f8KjXWi7lJ048tW6n9le6Zk+fxC7nEcLtrcTcI4RblBRd03Boebz4BpW9XaL4L1
	4+YsIMy5vboCmaJbUzNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7iYb-0002wp-VO; Fri, 28 Feb 2020 16:32:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7iYQ-0002wQ-2w
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 16:31:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DC96C31B;
 Fri, 28 Feb 2020 08:31:56 -0800 (PST)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E1F673F73B;
 Fri, 28 Feb 2020 08:31:53 -0800 (PST)
Subject: Re: [PATCH v9 10/12] arm64: implement Shadow Call Stack
To: Sami Tolvanen <samitolvanen@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200225173933.74818-1-samitolvanen@google.com>
 <20200225173933.74818-11-samitolvanen@google.com>
From: James Morse <james.morse@arm.com>
Message-ID: <56b82a54-044a-75ec-64e5-6ba25b19571f@arm.com>
Date: Fri, 28 Feb 2020 16:31:51 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200225173933.74818-11-samitolvanen@google.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_083158_216868_B0EF4CE0 
X-CRM114-Status: GOOD (  18.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux@googlegroups.com, Masami Hiramatsu <mhiramat@kernel.org>,
 Marc Zyngier <maz@kernel.org>, kernel-hardening@lists.openwall.com,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sami,

On 25/02/2020 17:39, Sami Tolvanen wrote:
> This change implements shadow stack switching, initial SCS set-up,
> and interrupt shadow stacks for arm64.

> diff --git a/arch/arm64/include/asm/scs.h b/arch/arm64/include/asm/scs.h
> new file mode 100644
> index 000000000000..c50d2b0c6c5f
> --- /dev/null
> +++ b/arch/arm64/include/asm/scs.h
> @@ -0,0 +1,37 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef _ASM_SCS_H
> +#define _ASM_SCS_H
> +
> +#ifndef __ASSEMBLY__

As the whole file is guarded by this, why do you need to include it in assembly files at all?


> +
> +#include <linux/scs.h>
> +
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +
> +extern void scs_init_irq(void);
> +
> +static __always_inline void scs_save(struct task_struct *tsk)
> +{
> +	void *s;
> +
> +	asm volatile("mov %0, x18" : "=r" (s));
> +	task_set_scs(tsk, s);
> +}
> +
> +static inline void scs_overflow_check(struct task_struct *tsk)
> +{
> +	if (unlikely(scs_corrupted(tsk)))
> +		panic("corrupted shadow stack detected inside scheduler\n");

Could this ever catch anything with CONFIG_SHADOW_CALL_STACK_VMAP?
Wouldn't we have hit the vmalloc guard page at the point of overflow?


> +}
> +
> +#else /* CONFIG_SHADOW_CALL_STACK */
> +
> +static inline void scs_init_irq(void) {}
> +static inline void scs_save(struct task_struct *tsk) {}
> +static inline void scs_overflow_check(struct task_struct *tsk) {}
> +
> +#endif /* CONFIG_SHADOW_CALL_STACK */
> +
> +#endif /* __ASSEMBLY __ */
> +
> +#endif /* _ASM_SCS_H */



> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> index 9461d812ae27..4b18c3bbdea5 100644
> --- a/arch/arm64/kernel/entry.S
> +++ b/arch/arm64/kernel/entry.S

If I corrupt x18 so that we take an exception (mov x18, xzr), we take that exception
whenever we run C code. The CPU 'vanishes' and I get a very upset scheduler shortly after.

Stack misalignment has the same problem, but the overflow test (eventually) catches that,
then calls panic() using the overflow stack. (See the kernel_ventry macro and __bad_stack
in entry.S)

It would be nice to have a per-cpu stack that we switch to when on the overflow stack.
(this would catch the scs overflow hitting the guard page too, as we should eat through
the regular stack until we overflowed it!)


> diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
> index d4ed9a19d8fe..f2cb344f998c 100644
> --- a/arch/arm64/kernel/smp.c
> +++ b/arch/arm64/kernel/smp.c
> @@ -358,6 +359,9 @@ void cpu_die(void)
>  {
>  	unsigned int cpu = smp_processor_id();
>
> +	/* Save the shadow stack pointer before exiting the idle task */

I can't work out why this needs to be before before idle_task_exit()...
It needs to run before init_idle(), which calls scs_task_reset(), but all that is on the
cpu_up() path. (if it is to pair those up, any reason core code can't do both?)


> +	scs_save(current);
> +
>  	idle_task_exit();
>
>  	local_daif_mask();
>


Reviewed-by: James Morse <james.morse@arm.com>


Thanks!

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
