Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6C1129610
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 13:39:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hkwng3W8jdOX/G1O4Ta4rVLH/xTEF3iS1IeNnFzupX8=; b=mpcG8Rjty3FXB19V/uXdUFre8
	DfFCRh6ongEY066UhV/5WNQfmyVx4vpdKxh7/oyXzzX/0507+zhseuoFIeyqMgLDXoWot80cV0JiU
	0PzaJyqH4WWcXV8ig+0LBsESK8mrBzqGRHcEuQPN3+1n5g8B5LisVBz+FiPMnLrxq9oRx5P+tAELB
	H3leVnyv4QPI4+XEL/LOtVvlQ0NNKhhhzttp7ObQoEtZs+FLig38amv6EE100EJgY8Ty7P95lE7i6
	VHRHz7v2NXPGXUE3RPJ46J8x/3USNqna2dzfgn1HtWNPDpuO0uD0yDPU3VNe7doLWmKzF8x2i9X9f
	vTW2gYcvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijMzq-0007SR-Nu; Mon, 23 Dec 2019 12:39:38 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijMzg-0007Ql-WB
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 12:39:31 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id C0920572CCF3A64A2C29;
 Mon, 23 Dec 2019 20:39:20 +0800 (CST)
Received: from [127.0.0.1] (10.133.217.236) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0;
 Mon, 23 Dec 2019 20:39:12 +0800
Subject: Re: [PATCH] arm64/kprobe: add support for KPROBES_ON_FTRACE
To: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <20191223123828.39543-1-cj.chengjian@huawei.com>
From: "chengjian (D)" <cj.chengjian@huawei.com>
Message-ID: <a7c7b8f0-126e-a755-43ee-d384de74e43e@huawei.com>
Date: Mon, 23 Dec 2019 20:39:10 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20191223123828.39543-1-cj.chengjian@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.133.217.236]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_043929_203944_906D9C91 
X-CRM114-Status: GOOD (  19.65  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: bobo.shaobowang@huawei.com, catalin.marinas@arm.com,
 sandeepa.s.prabhu@gmail.com, mhiramat@kernel.org, naveen.n.rao@linux.ibm.com,
 will@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I am SORRY.

I searched on patchwork and found this :

arm64: implement KPROBES_ON_FTRACE

https://lore.kernel.org/patchwork/patch/1169445/

So please ignore my EMAIL.

Thank you.

---- Cheng Jian


On 2019/12/23 20:38, Cheng Jian wrote:
> Allow KPROBES to use the ftrace infrastructure.
> This depends on HAVE_DYNAMIC_FTRACE_WITH_REGS
> which introduce by :
>          commit 3b23e4991fb6 ("arm64: implement ftrace with regs")
>
> Based on the x86 code by Masami.
>
> With:
>          # cd /sys/kernel/debug/tracing
>          # echo 'p _do_fork+0x4' > kprobe_events
>
> before patch:
> 	# cat ../kprobes/list
>          sh: write error: Invalid argument
>
> after patch:
> 	# cat ../kprobes/list
>          ffffa00016aa9d4c  k  _do_fork+0x4    [FTRACE]
>
> Signed-off-by: Cheng Jian <cj.chengjian@huawei.com>
> ---
>   .../debug/kprobes-on-ftrace/arch-support.txt  |  2 +-
>   arch/arm64/Kconfig                            |  1 +
>   arch/arm64/kernel/probes/Makefile             |  2 +
>   arch/arm64/kernel/probes/ftrace.c             | 65 +++++++++++++++++++
>   4 files changed, 69 insertions(+), 1 deletion(-)
>   create mode 100644 arch/arm64/kernel/probes/ftrace.c
>
> diff --git a/Documentation/features/debug/kprobes-on-ftrace/arch-support.txt b/Documentation/features/debug/kprobes-on-ftrace/arch-support.txt
> index 4fae0464ddff..f9dd9dd91e0c 100644
> --- a/Documentation/features/debug/kprobes-on-ftrace/arch-support.txt
> +++ b/Documentation/features/debug/kprobes-on-ftrace/arch-support.txt
> @@ -9,7 +9,7 @@
>       |       alpha: | TODO |
>       |         arc: | TODO |
>       |         arm: | TODO |
> -    |       arm64: | TODO |
> +    |       arm64: |  ok  |
>       |         c6x: | TODO |
>       |        csky: | TODO |
>       |       h8300: | TODO |
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index b1b4476ddb83..d613be9c2346 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -144,6 +144,7 @@ config ARM64
>   	select HAVE_DYNAMIC_FTRACE
>   	select HAVE_DYNAMIC_FTRACE_WITH_REGS \
>   		if $(cc-option,-fpatchable-function-entry=2)
> +	select HAVE_KPROBES_ON_FTRACE if HAVE_DYNAMIC_FTRACE_WITH_REGS
>   	select HAVE_EFFICIENT_UNALIGNED_ACCESS
>   	select HAVE_FAST_GUP
>   	select HAVE_FTRACE_MCOUNT_RECORD
> diff --git a/arch/arm64/kernel/probes/Makefile b/arch/arm64/kernel/probes/Makefile
> index 8e4be92e25b1..45a9d916a47d 100644
> --- a/arch/arm64/kernel/probes/Makefile
> +++ b/arch/arm64/kernel/probes/Makefile
> @@ -4,3 +4,5 @@ obj-$(CONFIG_KPROBES)		+= kprobes.o decode-insn.o	\
>   				   simulate-insn.o
>   obj-$(CONFIG_UPROBES)		+= uprobes.o decode-insn.o	\
>   				   simulate-insn.o
> +
> +obj-$(CONFIG_KPROBES_ON_FTRACE)	+= ftrace.o
> diff --git a/arch/arm64/kernel/probes/ftrace.c b/arch/arm64/kernel/probes/ftrace.c
> new file mode 100644
> index 000000000000..f89bfaa3e5f3
> --- /dev/null
> +++ b/arch/arm64/kernel/probes/ftrace.c
> @@ -0,0 +1,65 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Dynamic Ftrace based Kprobes Optimization
> + *
> + * Copyright (C) Hitachi Ltd., 2012
> + * Copyright (C) 2019 Huawei Inc.
> + * Copyright 2019 Cheng Jian <cj.chengjian@huawei.com>
> + */
> +#include <linux/kprobes.h>
> +#include <linux/ptrace.h>
> +#include <linux/hardirq.h>
> +#include <linux/preempt.h>
> +#include <linux/ftrace.h>
> +
> +
> +/* Ftrace callback handler for kprobes -- called under preepmt disabed */
> +void kprobe_ftrace_handler(unsigned long pc, unsigned long parent_pc,
> +			   struct ftrace_ops *ops, struct pt_regs *regs)
> +{
> +	struct kprobe *p;
> +	struct kprobe_ctlblk *kcb;
> +
> +	/* Preempt is disabled by ftrace */
> +	p = get_kprobe((kprobe_opcode_t *)pc);
> +	if (unlikely(!p) || kprobe_disabled(p))
> +		return;
> +
> +	kcb = get_kprobe_ctlblk();
> +	if (kprobe_running()) {
> +		kprobes_inc_nmissed_count(p);
> +	} else {
> +		/*
> +		 * On ARM64, recg->pc is *before* this instruction for the
> +		 * pre handler.
> +		 */
> +		regs->pc -= MCOUNT_INSN_SIZE;
> +
> +		__this_cpu_write(current_kprobe, p);
> +		kcb->kprobe_status = KPROBE_HIT_ACTIVE;
> +		if (!p->pre_handler || !p->pre_handler(p, regs)) {
> +			/*
> +			 * Emulate singlestep (and also recover regs->ip)
> +			 * as if there is a nop
> +			 */
> +			regs->pc += MCOUNT_INSN_SIZE;
> +			if (unlikely(p->post_handler)) {
> +				kcb->kprobe_status = KPROBE_HIT_SSDONE;
> +				p->post_handler(p, regs, 0);
> +			}
> +		}
> +		/*
> +		 * If pre_handler returns !0, it changes regs->ip. We have to
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
> +
> +	return 0;
> +}


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
