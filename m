Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41EEF9854B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 22:13:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:MIME-Version:In-Reply-To:References:To:
	Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xEy3hSrPTJx6emVjeeFb13qCU5dW2p0v9iIFIBYft+k=; b=D0NVtGBWS1P++v3sxSr8clsCA
	SVn4/FjfYx4a+XoT3SYDi8yEyvh5HOm5YZTehiI5c+HBbxxMe4XdERUyVqN+e5WfRi9mobE30Vk9r
	EFNLR99l/IFEzpuNCazQ7jPUD30ELzuXtQc/cnyC3JR/IzyBwSNIIbpTXNGcvH48weHO2uOs81nJR
	S8ZtGwRWUoBwLfs4r9Q16HMeQslrfak3GtgSv4pw63yP38gBExUeKRv/8vL4wafzz4rM4HvmgBGpp
	YijZwUxp8FTjhrwsD2pPvHjm2Dp6yD8umh35y7JQgl9u7LXcX2lAdswcNY92+lA150xodMdNqJ9zv
	W1XgmyPTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Wyn-0006Uz-6V; Wed, 21 Aug 2019 20:13:13 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Wyf-0006U7-Lx
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 20:13:07 +0000
Received: from pps.filterd (m0098414.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7LKCx0E050280
 for <linux-arm-kernel@lists.infradead.org>; Wed, 21 Aug 2019 16:12:59 -0400
Received: from e06smtp01.uk.ibm.com (e06smtp01.uk.ibm.com [195.75.94.97])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2uhchsgkwa-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Wed, 21 Aug 2019 16:12:58 -0400
Received: from localhost
 by e06smtp01.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <naveen.n.rao@linux.ibm.com>; 
 Wed, 21 Aug 2019 21:12:56 +0100
Received: from b06cxnps3075.portsmouth.uk.ibm.com (9.149.109.195)
 by e06smtp01.uk.ibm.com (192.168.101.131) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Wed, 21 Aug 2019 21:12:51 +0100
Received: from d06av26.portsmouth.uk.ibm.com (d06av26.portsmouth.uk.ibm.com
 [9.149.105.62])
 by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x7LKCol060162128
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 21 Aug 2019 20:12:50 GMT
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 7B78EAE04D;
 Wed, 21 Aug 2019 20:12:50 +0000 (GMT)
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 15FCBAE045;
 Wed, 21 Aug 2019 20:12:50 +0000 (GMT)
Received: from localhost (unknown [9.85.72.179])
 by d06av26.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Wed, 21 Aug 2019 20:12:49 +0000 (GMT)
Date: Thu, 22 Aug 2019 01:42:48 +0530
From: "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>
Subject: Re: [PATCH v3] arm64: implement KPROBES_ON_FTRACE
To: Catalin Marinas <catalin.marinas@arm.com>, Jonathan Corbet
 <corbet@lwn.net>, Jisheng Zhang <Jisheng.Zhang@synaptics.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Peter Zijlstra
 <peterz@infradead.org>, Thomas Gleixner <tglx@linutronix.de>, Will Deacon
 <will@kernel.org>
References: <20190821183501.33588dd8@xhacker.debian>
In-Reply-To: <20190821183501.33588dd8@xhacker.debian>
MIME-Version: 1.0
User-Agent: astroid/0.15.0 (https://github.com/astroidmail/astroid)
X-TM-AS-GCONF: 00
x-cbid: 19082120-4275-0000-0000-0000035BA116
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19082120-4276-0000-0000-0000386DC544
Message-Id: <1566418060.32spdm55zk.naveen@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-21_06:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908210196
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_131305_850074_900F1441 
X-CRM114-Status: GOOD (  36.19  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
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
Cc: Ingo Molnar <mingo@redhat.com>, Steven Rostedt <rostedt@goodmis.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Jisheng Zhang wrote:
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
> ffffff801009ff54  k  _do_fork+0x4    [DISABLED][FTRACE]
> 
> Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
> ---
> KPROBES_ON_FTRACE avoids much of the overhead with regular kprobes as it
> eliminates the need for a trap, as well as the need to emulate or
> single-step instructions.
> 
> Applied after arm64 FTRACE_WITH_REGS:
> http://lists.infradead.org/pipermail/linux-arm-kernel/2019-August/674404.html
> 
> Changes since v2:
>   - remove patch1, make it a single cleanup patch
>   - remove "This patch" in the change log
>   - implement arm64's kprobe_lookup_name() and arch_kprobe_on_func_entry instead
>     patching the common kprobes code
> 
> Changes since v1:
>   - make the kprobes/x86: use instruction_pointer and instruction_pointer_set
>     as patch1
>   - add Masami's ACK to patch1
>   - add some description about KPROBES_ON_FTRACE and why we need it on
>     arm64
>   - correct the log before the patch
>   - remove the consolidation patch, make it as TODO
>   - only adjust kprobe's addr when KPROBE_FLAG_FTRACE is set
>   - if KPROBES_ON_FTRACE, ftrace_call_adjust() the kprobe's addr before
>     calling ftrace_location()
>   - update the kprobes-on-ftrace/arch-support.txt in doc
> 
> 
>  .../debug/kprobes-on-ftrace/arch-support.txt  |  2 +-
>  arch/arm64/Kconfig                            |  1 +
>  arch/arm64/kernel/probes/Makefile             |  1 +
>  arch/arm64/kernel/probes/ftrace.c             | 60 +++++++++++++++++++
>  arch/arm64/kernel/probes/kprobes.c            | 23 +++++++
>  5 files changed, 86 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm64/kernel/probes/ftrace.c
> 
> diff --git a/Documentation/features/debug/kprobes-on-ftrace/arch-support.txt b/Documentation/features/debug/kprobes-on-ftrace/arch-support.txt
> index 68f266944d5f..e8358a38981c 100644
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
> index 663392d1eae2..928700f15e23 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -167,6 +167,7 @@ config ARM64
>  	select HAVE_STACKPROTECTOR
>  	select HAVE_SYSCALL_TRACEPOINTS
>  	select HAVE_KPROBES
> +	select HAVE_KPROBES_ON_FTRACE
>  	select HAVE_KRETPROBES
>  	select HAVE_GENERIC_VDSO
>  	select IOMMU_DMA if IOMMU_SUPPORT
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
> index 000000000000..1f0c09d02bb8
> --- /dev/null
> +++ b/arch/arm64/kernel/probes/ftrace.c
> @@ -0,0 +1,60 @@
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
> +/* Ftrace callback handler for kprobes -- called under preepmt disabed */
> +void kprobe_ftrace_handler(unsigned long ip, unsigned long parent_ip,
> +			   struct ftrace_ops *ops, struct pt_regs *regs)
> +{
> +	struct kprobe *p;
> +	struct kprobe_ctlblk *kcb;
> +
> +	/* Preempt is disabled by ftrace */
> +	p = get_kprobe((kprobe_opcode_t *)ip);
> +	if (unlikely(!p) || kprobe_disabled(p))
> +		return;
> +
> +	kcb = get_kprobe_ctlblk();
> +	if (kprobe_running()) {
> +		kprobes_inc_nmissed_count(p);
> +	} else {
> +		unsigned long orig_ip = instruction_pointer(regs);
> +		/* Kprobe handler expects regs->pc = pc + 4 as breakpoint hit */
> +		instruction_pointer_set(regs, ip + sizeof(kprobe_opcode_t));
> +
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
> diff --git a/arch/arm64/kernel/probes/kprobes.c b/arch/arm64/kernel/probes/kprobes.c
> index c4452827419b..f2bf8c70da79 100644
> --- a/arch/arm64/kernel/probes/kprobes.c
> +++ b/arch/arm64/kernel/probes/kprobes.c
> @@ -551,6 +551,29 @@ void __kprobes __used *trampoline_probe_handler(struct pt_regs *regs)
>  	return (void *)orig_ret_address;
>  }
>  
> +#ifdef CONFIG_DYNAMIC_FTRACE_WITH_REGS

This should be CONFIG_KPROBES_ON_FTRACE since you only want to choose 
the ftrace entry in that case.

> +kprobe_opcode_t *kprobe_lookup_name(const char *name, unsigned int offset)
> +{
> +	unsigned long addr = kallsyms_lookup_name(name);
> +	unsigned long faddr;
> +
> +	/*
> +	 * with -fpatchable-function-entry=2, the first 4 bytes is the
> +	 * LR saver, then the actual call insn. So ftrace location is
> +	 * always on the first 4 bytes offset.
> +	 */
> +	faddr = ftrace_location_range(addr, addr + AARCH64_INSN_SIZE);
> +	if (faddr)
> +		return (kprobe_opcode_t *)faddr;

You should only return the ftrace location if offset is 0, since the 
offset is added to the address returned from here (see _kprobe_addr()).


- Naveen


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
