Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6976138F8F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 17:43:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0RAfKy9cmVzyHaiC3BsCusif+QVniE4z/vw9ewZDCCA=; b=f4dA99dO9eeAhu
	xbg9xO8oMVJ0jjAbVSP+/I1plojyakH+M7yPS6dUnqr3vCMqsXvBjRt9yx0SO6ZhqQR22zAqOmMGR
	ckrXE+k5yEv/QMQSibWG9umK95j0Q1gNonq3ptZRf2XbFCaE0PxuAXShcU2Bmpyy5YCS/IDoZoWi5
	702gtTWCUIlfMM9eF/dhXXdiM8OWTuJL6mJ4SnTlzrEjw8Ag8ijBUreMOQ3DvU7lVnM2/3jJsV/Xc
	FIyfSNU5R/eH0qKwtFcWZHMe8/NDR5WsqDxuuSBcATeqVrWjp8VL0lFbJfIKXPafPkNhZOAAWLmd1
	JNx6a/avw/GaU13bvYOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZH1A-0005qQ-47; Fri, 07 Jun 2019 15:43:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZH0z-0005q2-8M
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 15:42:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CAEC3346;
 Fri,  7 Jun 2019 08:42:48 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 35F173F718; Fri,  7 Jun 2019 08:42:47 -0700 (PDT)
Subject: Re: [PATCH v3 4/8] arm64: Fix interrupt tracing in the presence of
 NMIs
To: Julien Thierry <julien.thierry@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <1559813517-41540-1-git-send-email-julien.thierry@arm.com>
 <1559813517-41540-5-git-send-email-julien.thierry@arm.com>
From: Marc Zyngier <marc.zyngier@arm.com>
Openpgp: preference=signencrypt
Autocrypt: addr=marc.zyngier@arm.com; prefer-encrypt=mutual; keydata=
 mQINBE6Jf0UBEADLCxpix34Ch3kQKA9SNlVQroj9aHAEzzl0+V8jrvT9a9GkK+FjBOIQz4KE
 g+3p+lqgJH4NfwPm9H5I5e3wa+Scz9wAqWLTT772Rqb6hf6kx0kKd0P2jGv79qXSmwru28vJ
 t9NNsmIhEYwS5eTfCbsZZDCnR31J6qxozsDHpCGLHlYym/VbC199Uq/pN5gH+5JHZyhyZiNW
 ozUCjMqC4eNW42nYVKZQfbj/k4W9xFfudFaFEhAf/Vb1r6F05eBP1uopuzNkAN7vqS8XcgQH
 qXI357YC4ToCbmqLue4HK9+2mtf7MTdHZYGZ939OfTlOGuxFW+bhtPQzsHiW7eNe0ew0+LaL
 3wdNzT5abPBscqXWVGsZWCAzBmrZato+Pd2bSCDPLInZV0j+rjt7MWiSxEAEowue3IcZA++7
 ifTDIscQdpeKT8hcL+9eHLgoSDH62SlubO/y8bB1hV8JjLW/jQpLnae0oz25h39ij4ijcp8N
 t5slf5DNRi1NLz5+iaaLg4gaM3ywVK2VEKdBTg+JTg3dfrb3DH7ctTQquyKun9IVY8AsxMc6
 lxl4HxrpLX7HgF10685GG5fFla7R1RUnW5svgQhz6YVU33yJjk5lIIrrxKI/wLlhn066mtu1
 DoD9TEAjwOmpa6ofV6rHeBPehUwMZEsLqlKfLsl0PpsJwov8TQARAQABtCNNYXJjIFp5bmdp
 ZXIgPG1hcmMuenluZ2llckBhcm0uY29tPokCTwQTAQIAOQIbAwYLCQgHAwIGFQgCCQoLBBYC
 AwECHgECF4AWIQSf1RxT4LVjGP2VnD0j0NC60T16QwUCXO+WxgAKCRAj0NC60T16QzfuEACd
 oPsSJdUg3nm61VKq86Pp0mfCC5IVyD/vTDw3jDErsmtT7t8mMVgidSJe9cMEudLO5xske/mY
 sC7ZZ4GFNRRsFs3wY5g+kg4yk2UY6q18HXRQJwzWCug2bkJPUxbh71nS3KPsvq4BBOeQiTIX
 Xr0lTyReFAp+JZ0HpanAU/iD2usEZLDNLXYLRjaHlfkwouxt02XcTKbqRWNtKl3Ybj+mz5IA
 qEQnA5Z8Nt9ZQmlZ4ASiXVVCbZKIR3RewBL6BP4OhYrvcPCtkoqlqKWZoHBs3ZicRXvcVUr/
 nqUyZpqhmfht2mIE063L3kTfBqxJ1SQqPc0ZIModTh4ATEjC44x8ObQvtnmgL8EKJBhxJfjY
 EUYLnwSejH1h+qgj94vn7n1RMVqXpCrWHyF7pCDBqq3gBxtDu6TWgi4iwh4CtdOzXBw2V39D
 LlnABnrZl5SdVbRwV+Ek1399s/laceH8e4uNea50ho89WmP9AUCrXlawHohfDE3GMOV4BdQ2
 DbJAtZnENQXaRK9gr86jbGQBga9VDvsBbRd+uegEmQ8nPspryWIz/gDRZLXIG8KE9Jj9OhwE
 oiusVTLsw7KS4xKDK2Ixb/XGtJPLtUXbMM1n9YfLsB5JPZ3B08hhrv+8Vmm734yCXtxI0+7B
 F1V4T2njuJKWTsmJWmx+tIY8y9muUK9rabkCDQROiX9FARAAz/al0tgJaZ/eu0iI/xaPk3DK
 NIvr9SsKFe2hf3CVjxriHcRfoTfriycglUwtvKvhvB2Y8pQuWfLtP9Hx3H+YI5a78PO2tU1C
 JdY5Momd3/aJBuUFP5blbx6n+dLDepQhyQrAp2mVC3NIp4T48n4YxL4Og0MORytWNSeygISv
 Rordw7qDmEsa7wgFsLUIlhKmmV5VVv+wAOdYXdJ9S8n+XgrxSTgHj5f3QqkDtT0yG8NMLLmY
 kZpOwWoMumeqn/KppPY/uTIwbYTD56q1UirDDB5kDRL626qm63nF00ByyPY+6BXH22XD8smj
 f2eHw2szECG/lpD4knYjxROIctdC+gLRhz+Nlf8lEHmvjHgiErfgy/lOIf+AV9lvDF3bztjW
 M5oP2WGeR7VJfkxcXt4JPdyDIH6GBK7jbD7bFiXf6vMiFCrFeFo/bfa39veKUk7TRlnX13go
 gIZxqR6IvpkG0PxOu2RGJ7Aje/SjytQFa2NwNGCDe1bH89wm9mfDW3BuZF1o2+y+eVqkPZj0
 mzfChEsiNIAY6KPDMVdInILYdTUAC5H26jj9CR4itBUcjE/tMll0n2wYRZ14Y/PM+UosfAhf
 YfN9t2096M9JebksnTbqp20keDMEBvc3KBkboEfoQLU08NDo7ncReitdLW2xICCnlkNIUQGS
 WlFVPcTQ2sMAEQEAAYkCHwQYAQIACQUCTol/RQIbDAAKCRAj0NC60T16QwsFD/9T4y30O0Wn
 MwIgcU8T2c2WwKbvmPbaU2LDqZebHdxQDemX65EZCv/NALmKdA22MVSbAaQeqsDD5KYbmCyC
 czilJ1i+tpZoJY5kJALHWWloI6Uyi2s1zAwlMktAZzgGMnI55Ifn0dAOK0p8oy7/KNGHNPwJ
 eHKzpHSRgysQ3S1t7VwU4mTFJtXQaBFMMXg8rItP5GdygrFB7yUbG6TnrXhpGkFBrQs9p+SK
 vCqRS3Gw+dquQ9QR+QGWciEBHwuSad5gu7QC9taN8kJQfup+nJL8VGtAKgGr1AgRx/a/V/QA
 ikDbt/0oIS/kxlIdcYJ01xuMrDXf1jFhmGZdocUoNJkgLb1iFAl5daV8MQOrqciG+6tnLeZK
 HY4xCBoigV7E8KwEE5yUfxBS0yRreNb+pjKtX6pSr1Z/dIo+td/sHfEHffaMUIRNvJlBeqaj
 BX7ZveskVFafmErkH7HC+7ErIaqoM4aOh/Z0qXbMEjFsWA5yVXvCoJWSHFImL9Bo6PbMGpI0
 9eBrkNa1fd6RGcktrX6KNfGZ2POECmKGLTyDC8/kb180YpDJERN48S0QBa3Rvt06ozNgFgZF
 Wvu5Li5PpY/t/M7AAkLiVTtlhZnJWyEJrQi9O2nXTzlG1PeqGH2ahuRxn7txA5j5PHZEZdL1
 Z46HaNmN2hZS/oJ69c1DI5Rcww==
Organization: ARM Ltd
Message-ID: <72cc234e-1c70-9356-bf53-0e3aa4ba43c5@arm.com>
Date: Fri, 7 Jun 2019 16:42:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1559813517-41540-5-git-send-email-julien.thierry@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_084249_386045_2AFA8F2F 
X-CRM114-Status: GOOD (  26.92  )
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

On 06/06/2019 10:31, Julien Thierry wrote:
> In the presence of any form of instrumentation, nmi_enter() should be
> done before calling any traceable code and any instrumentation code.
> 
> Currently, nmi_enter() is done in handle_domain_nmi(), which is much
> too late as instrumentation code might get called before. Move the
> nmi_enter/exit() calls to the arch IRQ vector handler.
> 
> On arm64, it is not possible to know if the IRQ vector handler was
> called because of an NMI before acknowledging the interrupt. However, It
> is possible to know whether normal interrupts could be taken in the
> interrupted context (i.e. if taking an NMI in that context could
> introduce a potential race condition).
> 
> When interrupting a context with IRQs disabled, call nmi_enter() as soon
> as possible. In contexts with IRQs enabled, defer this to the interrupt
> controller, which is in a better position to know if an interrupt taken
> is an NMI.
> 
> Fixes: bc3c03ccb ("arm64: Enable the support of pseudo-NMIs")
> Signed-off-by: Julien Thierry <julien.thierry@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Jason Cooper <jason@lakedaemon.net>
> Cc: Marc Zyngier <marc.zyngier@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> ---
>  arch/arm64/kernel/entry.S    | 44 +++++++++++++++++++++++++++++++++-----------
>  arch/arm64/kernel/irq.c      | 17 +++++++++++++++++
>  drivers/irqchip/irq-gic-v3.c |  6 ++++++
>  kernel/irq/irqdesc.c         |  8 ++++++--
>  4 files changed, 62 insertions(+), 13 deletions(-)
> 
> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> index 89ab6bd..46358a3 100644
> --- a/arch/arm64/kernel/entry.S
> +++ b/arch/arm64/kernel/entry.S
> @@ -435,6 +435,20 @@ tsk	.req	x28		// current thread_info
>  	irq_stack_exit
>  	.endm
> 
> +#ifdef CONFIG_ARM64_PSEUDO_NMI
> +	/*
> +	 * Set res to 0 if irqs were masked in interrupted context.

Is that comment right? This macro seems to return 0 if PMR is equal to
GIC_PRIO_IRQON, meaning that irqs are unmasked...

> +	 * Otherwise set res to non-0 value.
> +	 */
> +	.macro	test_irqs_unmasked res:req, pmr:req
> +alternative_if ARM64_HAS_IRQ_PRIO_MASKING
> +	sub	\res, \pmr, #GIC_PRIO_IRQON
> +alternative_else
> +	mov	\res, xzr
> +alternative_endif
> +	.endm
> +#endif
> +
>  	.text
> 
>  /*
> @@ -631,19 +645,19 @@ ENDPROC(el1_sync)
>  el1_irq:
>  	kernel_entry 1
>  	enable_da_f
> -#ifdef CONFIG_TRACE_IRQFLAGS
> +
>  #ifdef CONFIG_ARM64_PSEUDO_NMI
>  alternative_if ARM64_HAS_IRQ_PRIO_MASKING
>  	ldr	x20, [sp, #S_PMR_SAVE]
> -alternative_else
> -	mov	x20, #GIC_PRIO_IRQON
> -alternative_endif
> -	cmp	x20, #GIC_PRIO_IRQOFF
> -	/* Irqs were disabled, don't trace */
> -	b.ls	1f
> +alternative_else_nop_endif
> +	test_irqs_unmasked	res=x0, pmr=x20
> +	cbz	x0, 1f
> +	bl	asm_nmi_enter
> +1:
>  #endif
> +
> +#ifdef CONFIG_TRACE_IRQFLAGS
>  	bl	trace_hardirqs_off
> -1:
>  #endif
> 
>  	irq_handler
> @@ -662,14 +676,22 @@ alternative_else_nop_endif
>  	bl	preempt_schedule_irq		// irq en/disable is done inside
>  1:
>  #endif
> -#ifdef CONFIG_TRACE_IRQFLAGS
> +
>  #ifdef CONFIG_ARM64_PSEUDO_NMI
>  	/*
>  	 * if IRQs were disabled when we received the interrupt, we have an NMI
>  	 * and we are not re-enabling interrupt upon eret. Skip tracing.
>  	 */
> -	cmp	x20, #GIC_PRIO_IRQOFF
> -	b.ls	1f
> +	test_irqs_unmasked	res=x0, pmr=x20
> +	cbz	x0, 1f
> +	bl	asm_nmi_exit
> +1:
> +#endif
> +
> +#ifdef CONFIG_TRACE_IRQFLAGS
> +#ifdef CONFIG_ARM64_PSEUDO_NMI
> +	test_irqs_unmasked	res=x0, pmr=x20
> +	cbnz	x0, 1f
>  #endif
>  	bl	trace_hardirqs_on
>  1:
> diff --git a/arch/arm64/kernel/irq.c b/arch/arm64/kernel/irq.c
> index 92fa817..fdd9cb2 100644
> --- a/arch/arm64/kernel/irq.c
> +++ b/arch/arm64/kernel/irq.c
> @@ -27,8 +27,10 @@
>  #include <linux/smp.h>
>  #include <linux/init.h>
>  #include <linux/irqchip.h>
> +#include <linux/kprobes.h>
>  #include <linux/seq_file.h>
>  #include <linux/vmalloc.h>
> +#include <asm/daifflags.h>
>  #include <asm/vmap_stack.h>
> 
>  unsigned long irq_err_count;
> @@ -76,3 +78,18 @@ void __init init_IRQ(void)
>  	if (!handle_arch_irq)
>  		panic("No interrupt controller found.");
>  }
> +
> +/*
> + * Stubs to make nmi_enter/exit() code callable from ASM
> + */
> +asmlinkage void notrace asm_nmi_enter(void)
> +{
> +	nmi_enter();
> +}
> +NOKPROBE_SYMBOL(asm_nmi_enter);
> +
> +asmlinkage void notrace asm_nmi_exit(void)
> +{
> +	nmi_exit();
> +}
> +NOKPROBE_SYMBOL(asm_nmi_exit);
> diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
> index f44cd89..0bf0fc4 100644
> --- a/drivers/irqchip/irq-gic-v3.c
> +++ b/drivers/irqchip/irq-gic-v3.c
> @@ -495,7 +495,13 @@ static asmlinkage void __exception_irq_entry gic_handle_irq(struct pt_regs *regs
> 
>  	if (gic_supports_nmi() &&
>  	    unlikely(gic_read_rpr() == GICD_INT_NMI_PRI)) {
> +		if (interrupts_enabled(regs))
> +			nmi_enter();
> +
>  		gic_handle_nmi(irqnr, regs);
> +
> +		if (interrupts_enabled(regs))
> +			nmi_exit();

Just to be on the safe side, I'd rather sample interrupts_enabled(regs)
and use the same value to decide whether to do nmi_exit or not.

>  		return;
>  	}
> 
> diff --git a/kernel/irq/irqdesc.c b/kernel/irq/irqdesc.c
> index c52b737..a92b335 100644
> --- a/kernel/irq/irqdesc.c
> +++ b/kernel/irq/irqdesc.c
> @@ -680,6 +680,8 @@ int __handle_domain_irq(struct irq_domain *domain, unsigned int hwirq,
>   * @hwirq:	The HW irq number to convert to a logical one
>   * @regs:	Register file coming from the low-level handling code
>   *
> + *		This function must be called from an NMI context.
> + *
>   * Returns:	0 on success, or -EINVAL if conversion has failed
>   */
>  int handle_domain_nmi(struct irq_domain *domain, unsigned int hwirq,
> @@ -689,7 +691,10 @@ int handle_domain_nmi(struct irq_domain *domain, unsigned int hwirq,
>  	unsigned int irq;
>  	int ret = 0;
> 
> -	nmi_enter();
> +	/*
> +	 * NMI context needs to be setup earlier in order to deal with tracing.
> +	 */
> +	WARN_ON(!in_nmi());
> 
>  	irq = irq_find_mapping(domain, hwirq);
> 
> @@ -702,7 +707,6 @@ int handle_domain_nmi(struct irq_domain *domain, unsigned int hwirq,
>  	else
>  		ret = -EINVAL;
> 
> -	nmi_exit();
>  	set_irq_regs(old_regs);
>  	return ret;
>  }
> --
> 1.9.1
> 

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
