Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8524812A9E8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 03:57:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x5UfJ0g3fCQQ7msuIuuimLqyJuKgqwRBBrJOnLCuhco=; b=WTZw9BIAfgb1lx
	EA2fHkT7iTRn0UCeF2UENO4CnAQBZXN/sX+6FP03E9ky53LZ4+QzUCTdlTtrYe74xSGbyALDnFxJE
	PbfZhHiQ09WllVGRZTI0jPvXcJSqM9hHfXppPXnxAatolhvn3gU48eQiVU4ccUSkK89ujO3nAS1cx
	oj9w/kCLHeBZf+x+ajUZRNjWBifXvA76RYKGCccPVNPPiDEbj/GmUJorJIdVhz1+1/8W5Glp3uF4u
	icgrwIheDeOEc0uuiY4hCUPLXP3ln6EfkhLtSu1kese15ql9Mnr0wiYsoy4V+gHVCc7ggLRONgOI0
	O2DSTAev2mNoFC+V2WZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikJL2-0000eL-3c; Thu, 26 Dec 2019 02:57:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikJKq-0000dg-AR
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Dec 2019 02:57:13 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6B667207FF;
 Thu, 26 Dec 2019 02:57:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577329031;
 bh=rbkElJWAXkNtRfh891s+ZThXz0VfuU0P2LJA4L64enU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=kKgMG+jnL7SaYdWm7+P1acCEiRvKB+Xlg11reRfkuRWid8dPLiItX6YxmNwHTlyE+
 JK/ObqfLtSonTmDp5/u2lAezNrOYEMJkIMVdREES6Hm5ymm67TYMsjFBMZqrjIOG2q
 FTWgUkD3KlGOo5Jo4KnkGs4Ox7BMmhRvhtmfLpB0=
Date: Thu, 26 Dec 2019 11:57:07 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
Subject: Re: [PATCH v7 3/3] arm64: implement KPROBES_ON_FTRACE
Message-Id: <20191226115707.902545688aa90b34e2e550b3@kernel.org>
In-Reply-To: <20191225173001.6c0e3fb2@xhacker.debian>
References: <20191225172625.69811b3e@xhacker.debian>
 <20191225173001.6c0e3fb2@xhacker.debian>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_185712_401665_F1C775C0 
X-CRM114-Status: GOOD (  23.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Anil S Keshavamurthy <anil.s.keshavamurthy@intel.com>,
 Ingo Molnar <mingo@redhat.com>, Steven Rostedt <rostedt@goodmis.org>,
 "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>, Will Deacon <will@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jisheng,

On Wed, 25 Dec 2019 09:44:21 +0000
Jisheng Zhang <Jisheng.Zhang@synaptics.com> wrote:

> KPROBES_ON_FTRACE avoids much of the overhead with regular kprobes as it
> eliminates the need for a trap, as well as the need to emulate or
> single-step instructions.
> 
> Tested on berlin arm64 platform.
> 
> ~ # mount -t debugfs debugfs /sys/kernel/debug/
> ~ # cd /sys/kernel/debug/
> /sys/kernel/debug # echo 'p _do_fork' > tracing/kprobe_events
> 
> before the patch:
> 
> /sys/kernel/debug # cat kprobes/list
> ffffff801009fe28  k  _do_fork+0x0    [DISABLED]
> 
> after the patch:
> 
> /sys/kernel/debug # cat kprobes/list
> ffffff801009ff54  k  _do_fork+0x0    [DISABLED][FTRACE]

What happens if user puts a probe on _do_fork+4?
Is that return -EILSEQ correctly?

> 
> Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
> ---
>  .../debug/kprobes-on-ftrace/arch-support.txt  |  2 +-
>  arch/arm64/Kconfig                            |  1 +
>  arch/arm64/include/asm/ftrace.h               |  1 +
>  arch/arm64/kernel/probes/Makefile             |  1 +
>  arch/arm64/kernel/probes/ftrace.c             | 78 +++++++++++++++++++
>  5 files changed, 82 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm64/kernel/probes/ftrace.c
> 
> diff --git a/Documentation/features/debug/kprobes-on-ftrace/arch-support.txt b/Documentation/features/debug/kprobes-on-ftrace/arch-support.txt
> index 4fae0464ddff..f9dd9dd91e0c 100644
> --- a/Documentation/features/debug/kprobes-on-ftrace/arch-support.txt
> +++ b/Documentation/features/debug/kprobes-on-ftrace/arch-support.txt
> @@ -9,7 +9,7 @@
>      |       alpha: | TODO |
>      |         arc: | TODO |
>      |         arm: | TODO |
> -    |       arm64: | TODO |
> +    |       arm64: |  ok  |
>      |         c6x: | TODO |
>      |        csky: | TODO |
>      |       h8300: | TODO |
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index b1b4476ddb83..92b9882889ac 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -166,6 +166,7 @@ config ARM64
>  	select HAVE_STACKPROTECTOR
>  	select HAVE_SYSCALL_TRACEPOINTS
>  	select HAVE_KPROBES
> +	select HAVE_KPROBES_ON_FTRACE
>  	select HAVE_KRETPROBES
>  	select HAVE_GENERIC_VDSO
>  	select IOMMU_DMA if IOMMU_SUPPORT
> diff --git a/arch/arm64/include/asm/ftrace.h b/arch/arm64/include/asm/ftrace.h
> index 91fa4baa1a93..875aeb839654 100644
> --- a/arch/arm64/include/asm/ftrace.h
> +++ b/arch/arm64/include/asm/ftrace.h
> @@ -20,6 +20,7 @@
>  
>  /* The BL at the callsite's adjusted rec->ip */
>  #define MCOUNT_INSN_SIZE	AARCH64_INSN_SIZE
> +#define FTRACE_IP_EXTENSION	MCOUNT_INSN_SIZE
>  
>  #define FTRACE_PLT_IDX		0
>  #define FTRACE_REGS_PLT_IDX	1
> diff --git a/arch/arm64/kernel/probes/Makefile b/arch/arm64/kernel/probes/Makefile
> index 8e4be92e25b1..4020cfc66564 100644
> --- a/arch/arm64/kernel/probes/Makefile
> +++ b/arch/arm64/kernel/probes/Makefile
> @@ -4,3 +4,4 @@ obj-$(CONFIG_KPROBES)		+= kprobes.o decode-insn.o	\
>  				   simulate-insn.o
>  obj-$(CONFIG_UPROBES)		+= uprobes.o decode-insn.o	\
>  				   simulate-insn.o
> +obj-$(CONFIG_KPROBES_ON_FTRACE)	+= ftrace.o
> diff --git a/arch/arm64/kernel/probes/ftrace.c b/arch/arm64/kernel/probes/ftrace.c
> new file mode 100644
> index 000000000000..0643aa2dacdb
> --- /dev/null
> +++ b/arch/arm64/kernel/probes/ftrace.c
> @@ -0,0 +1,78 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Dynamic Ftrace based Kprobes Optimization
> + *
> + * Copyright (C) Hitachi Ltd., 2012
> + * Copyright (C) 2019 Jisheng Zhang <jszhang@kernel.org>
> + *		      Synaptics Incorporated
> + */
> +
> +#include <linux/kprobes.h>
> +
> +/*
> + * In arm64 FTRACE_WITH_REGS implementation, we patch two nop instructions:
> + * the lr saver and bl ftrace-entry. Both these instructions are claimed
> + * by ftrace and we should allow probing on either instruction.

No, the 2nd bl ftrace-entry must not be probed.
The pair of lr-saver and bl ftrace-entry is tightly coupled. You can not
decouple it.

> + */
> +int arch_check_ftrace_location(struct kprobe *p)
> +{
> +	if (ftrace_location((unsigned long)p->addr))
> +		p->flags |= KPROBE_FLAG_FTRACE;
> +	return 0;
> +}

Thus, this must return -EILSEQ if user puts a probe on the bl.

> +
> +/* Ftrace callback handler for kprobes -- called under preepmt disabed */
> +void kprobe_ftrace_handler(unsigned long ip, unsigned long parent_ip,
> +			   struct ftrace_ops *ops, struct pt_regs *regs)
> +{
> +	bool lr_saver = false;
> +	struct kprobe *p;
> +	struct kprobe_ctlblk *kcb;
> +
> +	/* Preempt is disabled by ftrace */
> +	p = get_kprobe((kprobe_opcode_t *)ip);
> +	if (!p) {
> +		p = get_kprobe((kprobe_opcode_t *)(ip - MCOUNT_INSN_SIZE));
> +		if (unlikely(!p) || kprobe_disabled(p))
> +			return;
> +		lr_saver = true;

Then, this can be removed.

> +	}
> +
> +	kcb = get_kprobe_ctlblk();
> +	if (kprobe_running()) {
> +		kprobes_inc_nmissed_count(p);
> +	} else {
> +		unsigned long orig_ip = instruction_pointer(regs);
> +
> +		if (lr_saver)
> +			ip -= MCOUNT_INSN_SIZE;

Ditto.

Thank you,

> +		instruction_pointer_set(regs, ip);
> +		__this_cpu_write(current_kprobe, p);
> +		kcb->kprobe_status = KPROBE_HIT_ACTIVE;
> +		if (!p->pre_handler || !p->pre_handler(p, regs)) {
> +			/*
> +			 * Emulate singlestep (and also recover regs->pc)
> +			 * as if there is a nop
> +			 */
> +			instruction_pointer_set(regs,
> +				(unsigned long)p->addr + MCOUNT_INSN_SIZE);
> +			if (unlikely(p->post_handler)) {
> +				kcb->kprobe_status = KPROBE_HIT_SSDONE;
> +				p->post_handler(p, regs, 0);
> +			}
> +			instruction_pointer_set(regs, orig_ip);
> +		}
> +		/*
> +		 * If pre_handler returns !0, it changes regs->pc. We have to
> +		 * skip emulating post_handler.
> +		 */
> +		__this_cpu_write(current_kprobe, NULL);
> +	}
> +}
> +NOKPROBE_SYMBOL(kprobe_ftrace_handler);
> +
> +int arch_prepare_kprobe_ftrace(struct kprobe *p)
> +{
> +	p->ainsn.api.insn = NULL;
> +	return 0;
> +}
> -- 
> 2.24.1
> 


-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
