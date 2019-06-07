Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9518B390B7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 17:54:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AAkbW+D6vzL4XW0LhshlXE0emLBUpzF9xZJ0eJb8YLI=; b=fRHMZLT3Kbd7L7
	aa2GKMB6TZU2H/L1oHp0522gbPRjEZ23/0Xksg+yWkvhdwApeYvzUYQV+gQTwpl7O/3jO7taGpCB/
	0SxwPmoHqf8KO7YelDlOxm0k1Z5Hxwy58+2zR8Mu/axuVpQUuk2iHgaTCyY9kx46HUcydopkAkCVt
	P69KFI9EMRS0gGmLZrzxRLvhUR0kWJ2X47a8Pj6uUx4Q8x8QNS2Y2yoNuah3uykj4IOC581ujpxuN
	J0++0Dg2iLVvCTQhabe4IP+3JYqeg4cNXnmTfU30bMMED6JBotPn71Jc8VXJiIwHto7oevQjUdvmm
	A2s1CxeoryfFWVrVe8mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZHCD-0002Xo-6m; Fri, 07 Jun 2019 15:54:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZHC2-0002Ww-8J
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 15:54:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 41E62337;
 Fri,  7 Jun 2019 08:54:11 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7739B3F718;
 Fri,  7 Jun 2019 08:54:09 -0700 (PDT)
Subject: Re: [PATCH v3 4/8] arm64: Fix interrupt tracing in the presence of
 NMIs
To: Marc Zyngier <marc.zyngier@arm.com>, linux-arm-kernel@lists.infradead.org
References: <1559813517-41540-1-git-send-email-julien.thierry@arm.com>
 <1559813517-41540-5-git-send-email-julien.thierry@arm.com>
 <72cc234e-1c70-9356-bf53-0e3aa4ba43c5@arm.com>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <2e8805e1-7b47-e578-0fae-58d2fdcab885@arm.com>
Date: Fri, 7 Jun 2019 16:54:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <72cc234e-1c70-9356-bf53-0e3aa4ba43c5@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_085414_389356_D013E4F4 
X-CRM114-Status: GOOD (  21.50  )
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
Cc: mark.rutland@arm.com, Jason Cooper <jason@lakedaemon.net>,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 rostedt@goodmis.org, james.morse@arm.com, yuzenghui@huawei.com,
 wanghaibin.wang@huawei.com, Thomas Gleixner <tglx@linutronix.de>,
 liwei391@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 07/06/2019 16:42, Marc Zyngier wrote:
> On 06/06/2019 10:31, Julien Thierry wrote:
>> In the presence of any form of instrumentation, nmi_enter() should be
>> done before calling any traceable code and any instrumentation code.
>>
>> Currently, nmi_enter() is done in handle_domain_nmi(), which is much
>> too late as instrumentation code might get called before. Move the
>> nmi_enter/exit() calls to the arch IRQ vector handler.
>>
>> On arm64, it is not possible to know if the IRQ vector handler was
>> called because of an NMI before acknowledging the interrupt. However, It
>> is possible to know whether normal interrupts could be taken in the
>> interrupted context (i.e. if taking an NMI in that context could
>> introduce a potential race condition).
>>
>> When interrupting a context with IRQs disabled, call nmi_enter() as soon
>> as possible. In contexts with IRQs enabled, defer this to the interrupt
>> controller, which is in a better position to know if an interrupt taken
>> is an NMI.
>>
>> Fixes: bc3c03ccb ("arm64: Enable the support of pseudo-NMIs")
>> Signed-off-by: Julien Thierry <julien.thierry@arm.com>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Cc: Will Deacon <will.deacon@arm.com>
>> Cc: Thomas Gleixner <tglx@linutronix.de>
>> Cc: Jason Cooper <jason@lakedaemon.net>
>> Cc: Marc Zyngier <marc.zyngier@arm.com>
>> Cc: Mark Rutland <mark.rutland@arm.com>
>> ---
>>  arch/arm64/kernel/entry.S    | 44 +++++++++++++++++++++++++++++++++-----------
>>  arch/arm64/kernel/irq.c      | 17 +++++++++++++++++
>>  drivers/irqchip/irq-gic-v3.c |  6 ++++++
>>  kernel/irq/irqdesc.c         |  8 ++++++--
>>  4 files changed, 62 insertions(+), 13 deletions(-)
>>
>> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
>> index 89ab6bd..46358a3 100644
>> --- a/arch/arm64/kernel/entry.S
>> +++ b/arch/arm64/kernel/entry.S
>> @@ -435,6 +435,20 @@ tsk	.req	x28		// current thread_info
>>  	irq_stack_exit
>>  	.endm
>>
>> +#ifdef CONFIG_ARM64_PSEUDO_NMI
>> +	/*
>> +	 * Set res to 0 if irqs were masked in interrupted context.
> 
> Is that comment right? This macro seems to return 0 if PMR is equal to
> GIC_PRIO_IRQON, meaning that irqs are unmasked...

You're right, the comment is wrong. At least the references to the macro
seem to be doing the right thing and interpreting 0 as "irqs were
unmasked" :) .

> 
>> +	 * Otherwise set res to non-0 value.
>> +	 */
>> +	.macro	test_irqs_unmasked res:req, pmr:req
>> +alternative_if ARM64_HAS_IRQ_PRIO_MASKING
>> +	sub	\res, \pmr, #GIC_PRIO_IRQON
>> +alternative_else
>> +	mov	\res, xzr
>> +alternative_endif
>> +	.endm
>> +#endif
>> +
>>  	.text
>>
>>  /*
>> @@ -631,19 +645,19 @@ ENDPROC(el1_sync)
>>  el1_irq:
>>  	kernel_entry 1
>>  	enable_da_f
>> -#ifdef CONFIG_TRACE_IRQFLAGS
>> +
>>  #ifdef CONFIG_ARM64_PSEUDO_NMI
>>  alternative_if ARM64_HAS_IRQ_PRIO_MASKING
>>  	ldr	x20, [sp, #S_PMR_SAVE]
>> -alternative_else
>> -	mov	x20, #GIC_PRIO_IRQON
>> -alternative_endif
>> -	cmp	x20, #GIC_PRIO_IRQOFF
>> -	/* Irqs were disabled, don't trace */
>> -	b.ls	1f
>> +alternative_else_nop_endif
>> +	test_irqs_unmasked	res=x0, pmr=x20
>> +	cbz	x0, 1f
>> +	bl	asm_nmi_enter
>> +1:
>>  #endif
>> +
>> +#ifdef CONFIG_TRACE_IRQFLAGS
>>  	bl	trace_hardirqs_off
>> -1:
>>  #endif
>>
>>  	irq_handler
>> @@ -662,14 +676,22 @@ alternative_else_nop_endif
>>  	bl	preempt_schedule_irq		// irq en/disable is done inside
>>  1:
>>  #endif
>> -#ifdef CONFIG_TRACE_IRQFLAGS
>> +
>>  #ifdef CONFIG_ARM64_PSEUDO_NMI
>>  	/*
>>  	 * if IRQs were disabled when we received the interrupt, we have an NMI
>>  	 * and we are not re-enabling interrupt upon eret. Skip tracing.
>>  	 */
>> -	cmp	x20, #GIC_PRIO_IRQOFF
>> -	b.ls	1f
>> +	test_irqs_unmasked	res=x0, pmr=x20
>> +	cbz	x0, 1f
>> +	bl	asm_nmi_exit
>> +1:
>> +#endif
>> +
>> +#ifdef CONFIG_TRACE_IRQFLAGS
>> +#ifdef CONFIG_ARM64_PSEUDO_NMI
>> +	test_irqs_unmasked	res=x0, pmr=x20
>> +	cbnz	x0, 1f
>>  #endif
>>  	bl	trace_hardirqs_on
>>  1:
>> diff --git a/arch/arm64/kernel/irq.c b/arch/arm64/kernel/irq.c
>> index 92fa817..fdd9cb2 100644
>> --- a/arch/arm64/kernel/irq.c
>> +++ b/arch/arm64/kernel/irq.c
>> @@ -27,8 +27,10 @@
>>  #include <linux/smp.h>
>>  #include <linux/init.h>
>>  #include <linux/irqchip.h>
>> +#include <linux/kprobes.h>
>>  #include <linux/seq_file.h>
>>  #include <linux/vmalloc.h>
>> +#include <asm/daifflags.h>
>>  #include <asm/vmap_stack.h>
>>
>>  unsigned long irq_err_count;
>> @@ -76,3 +78,18 @@ void __init init_IRQ(void)
>>  	if (!handle_arch_irq)
>>  		panic("No interrupt controller found.");
>>  }
>> +
>> +/*
>> + * Stubs to make nmi_enter/exit() code callable from ASM
>> + */
>> +asmlinkage void notrace asm_nmi_enter(void)
>> +{
>> +	nmi_enter();
>> +}
>> +NOKPROBE_SYMBOL(asm_nmi_enter);
>> +
>> +asmlinkage void notrace asm_nmi_exit(void)
>> +{
>> +	nmi_exit();
>> +}
>> +NOKPROBE_SYMBOL(asm_nmi_exit);
>> diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
>> index f44cd89..0bf0fc4 100644
>> --- a/drivers/irqchip/irq-gic-v3.c
>> +++ b/drivers/irqchip/irq-gic-v3.c
>> @@ -495,7 +495,13 @@ static asmlinkage void __exception_irq_entry gic_handle_irq(struct pt_regs *regs
>>
>>  	if (gic_supports_nmi() &&
>>  	    unlikely(gic_read_rpr() == GICD_INT_NMI_PRI)) {
>> +		if (interrupts_enabled(regs))
>> +			nmi_enter();
>> +
>>  		gic_handle_nmi(irqnr, regs);
>> +
>> +		if (interrupts_enabled(regs))
>> +			nmi_exit();
> 
> Just to be on the safe side, I'd rather sample interrupts_enabled(regs)
> and use the same value to decide whether to do nmi_exit or not.
> 

Fair enough.

In case there are no other issues, can this (and the comment) be amended
or shall respin the series? (If there are other isues raised I'll just
respin).

Thanks,

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
