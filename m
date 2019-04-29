Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 827C0E724
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 18:01:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AgSQTgRYrPN+qSi5YY2hmG7UaDj5+nTc5y6EeMVtJKU=; b=SpBvxqRxZRjJhmChTUPyDZ42W1
	4AqEMU2JsY5M5CxufoyVNYdxj5VMVNov/0SxD9X/vQRiD0+a00jpTaUtIImihn3z0J0EqKMiMkNhY
	fAyUjt/c31R0iqC1UyKjawfRq27/IxEd6xXp+t+gGiHX+kx0FZaAYk+Z7T3UBbws/McJd50p2rxo9
	WUgm3IvvSfFdZ0IlmCDaVbFzBBZPBNLtz+Vc2vzrRk5h8Hm45k0YsXqGcydGVdHLFH5ElRNZLEXBo
	w8Ezbsi1kEL/roYxaAhm1SLZpL5Qqo8e1b9LSR3NCvdyJnwChkbRFhikTezY8k3oJpJlrfwqboISF
	FKvhaHUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL8iA-0003HW-5S; Mon, 29 Apr 2019 16:00:58 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL8hY-0002hJ-9A
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 16:00:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D34D9165C;
 Mon, 29 Apr 2019 09:00:19 -0700 (PDT)
Received: from e112298-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 855803F5C1;
 Mon, 29 Apr 2019 09:00:17 -0700 (PDT)
From: Julien Thierry <julien.thierry@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/5] arm64: Fix interrupt tracing in the presence of NMIs
Date: Mon, 29 Apr 2019 17:00:04 +0100
Message-Id: <1556553607-46531-3-git-send-email-julien.thierry@arm.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1556553607-46531-1-git-send-email-julien.thierry@arm.com>
References: <1556553607-46531-1-git-send-email-julien.thierry@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_090020_656682_99623CED 
X-CRM114-Status: GOOD (  17.98  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Julien Thierry <julien.thierry@arm.com>, marc.zyngier@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 rostedt@goodmis.org, james.morse@arm.com, yuzenghui@huawei.com,
 wanghaibin.wang@huawei.com, Thomas Gleixner <tglx@linutronix.de>,
 liwei391@huawei.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the presence of any form of instrumentation, nmi_enter() should be
done before calling any traceable code and any instrumentation code.

Currently, nmi_enter() is done in handle_domain_nmi(), which is much
too late as instrumentation code might get called before. Move the
nmi_enter/exit() calls to the arch IRQ vector handler.

On arm64, it is not possible to know if the IRQ vector handler was
called because of an NMI before acknowledging the interrupt. However, It
is possible to know whether normal interrupts could be taken in the
interrupted context (i.e. if taking an NMI in that context could
introduce a potential race condition).

When interrupting a context with IRQs disabled, call nmi_enter() as soon
as possible. In contexts with IRQs enabled, defer this to the interrupt
controller, which is in a better position to know if an interrupt taken
is an NMI.

Fixes: bc3c03ccb ("arm64: Enable the support of pseudo-NMIs")
Signed-off-by: Julien Thierry <julien.thierry@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Jason Cooper <jason@lakedaemon.net>
Cc: Marc Zyngier <marc.zyngier@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
---
 arch/arm64/kernel/entry.S    | 44 +++++++++++++++++++++++++++++++++-----------
 arch/arm64/kernel/irq.c      | 17 +++++++++++++++++
 drivers/irqchip/irq-gic-v3.c |  6 ++++++
 kernel/irq/irqdesc.c         |  8 ++++++--
 4 files changed, 62 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 6a38903..00c1f21 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -420,6 +420,20 @@ tsk	.req	x28		// current thread_info
 	irq_stack_exit
 	.endm

+#ifdef CONFIG_ARM64_PSEUDO_NMI
+	/*
+	 * Set res to 0 if irqs were masked in interrupted context.
+	 * Otherwise set res to non-0 value.
+	 */
+	.macro test_irqs_unmasked res:req, pmr:req
+alternative_if ARM64_HAS_IRQ_PRIO_MASKING
+	sub	\res, \pmr, #GIC_PRIO_IRQON
+alternative_else
+	mov	\res, xzr
+alternative_endif
+	.endm
+#endif
+
 	.text

 /*
@@ -616,19 +630,19 @@ ENDPROC(el1_sync)
 el1_irq:
 	kernel_entry 1
 	enable_da_f
-#ifdef CONFIG_TRACE_IRQFLAGS
+
 #ifdef CONFIG_ARM64_PSEUDO_NMI
 alternative_if ARM64_HAS_IRQ_PRIO_MASKING
 	ldr	x20, [sp, #S_PMR_SAVE]
-alternative_else
-	mov	x20, #GIC_PRIO_IRQON
-alternative_endif
-	cmp	x20, #GIC_PRIO_IRQOFF
-	/* Irqs were disabled, don't trace */
-	b.ls	1f
+alternative_else_nop_endif
+	test_irqs_unmasked	res=x0, pmr=x20
+	cbz	x0, 1f
+	bl	asm_nmi_enter
+1:
 #endif
+
+#ifdef CONFIG_TRACE_IRQFLAGS
 	bl	trace_hardirqs_off
-1:
 #endif

 	irq_handler
@@ -647,14 +661,22 @@ alternative_else_nop_endif
 	bl	preempt_schedule_irq		// irq en/disable is done inside
 1:
 #endif
-#ifdef CONFIG_TRACE_IRQFLAGS
+
 #ifdef CONFIG_ARM64_PSEUDO_NMI
 	/*
 	 * if IRQs were disabled when we received the interrupt, we have an NMI
 	 * and we are not re-enabling interrupt upon eret. Skip tracing.
 	 */
-	cmp	x20, #GIC_PRIO_IRQOFF
-	b.ls	1f
+	test_irqs_unmasked	res=x0, pmr=x20
+	cbz	x0, 1f
+	bl	asm_nmi_exit
+1:
+#endif
+
+#ifdef CONFIG_TRACE_IRQFLAGS
+#ifdef CONFIG_ARM64_PSEUDO_NMI
+	test_irqs_unmasked	res=x0, pmr=x20
+	cbnz	x0, 1f
 #endif
 	bl	trace_hardirqs_on
 1:
diff --git a/arch/arm64/kernel/irq.c b/arch/arm64/kernel/irq.c
index 92fa817..fdd9cb2 100644
--- a/arch/arm64/kernel/irq.c
+++ b/arch/arm64/kernel/irq.c
@@ -27,8 +27,10 @@
 #include <linux/smp.h>
 #include <linux/init.h>
 #include <linux/irqchip.h>
+#include <linux/kprobes.h>
 #include <linux/seq_file.h>
 #include <linux/vmalloc.h>
+#include <asm/daifflags.h>
 #include <asm/vmap_stack.h>

 unsigned long irq_err_count;
@@ -76,3 +78,18 @@ void __init init_IRQ(void)
 	if (!handle_arch_irq)
 		panic("No interrupt controller found.");
 }
+
+/*
+ * Stubs to make nmi_enter/exit() code callable from ASM
+ */
+asmlinkage void notrace asm_nmi_enter(void)
+{
+	nmi_enter();
+}
+NOKPROBE_SYMBOL(asm_nmi_enter);
+
+asmlinkage void notrace asm_nmi_exit(void)
+{
+	nmi_exit();
+}
+NOKPROBE_SYMBOL(asm_nmi_exit);
diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
index 15e55d3..4847673 100644
--- a/drivers/irqchip/irq-gic-v3.c
+++ b/drivers/irqchip/irq-gic-v3.c
@@ -495,7 +495,13 @@ static asmlinkage void __exception_irq_entry gic_handle_irq(struct pt_regs *regs

 	if (gic_supports_nmi() &&
 	    unlikely(gic_read_rpr() == GICD_INT_NMI_PRI)) {
+		if (interrupts_enabled(regs))
+			nmi_enter();
+
 		gic_handle_nmi(irqnr, regs);
+
+		if (interrupts_enabled(regs))
+			nmi_exit();
 		return;
 	}

diff --git a/kernel/irq/irqdesc.c b/kernel/irq/irqdesc.c
index 9f8a709..b3fdf48 100644
--- a/kernel/irq/irqdesc.c
+++ b/kernel/irq/irqdesc.c
@@ -679,6 +679,8 @@ int __handle_domain_irq(struct irq_domain *domain, unsigned int hwirq,
  * @hwirq:	The HW irq number to convert to a logical one
  * @regs:	Register file coming from the low-level handling code
  *
+ *		This function must be called from an NMI context.
+ *
  * Returns:	0 on success, or -EINVAL if conversion has failed
  */
 int handle_domain_nmi(struct irq_domain *domain, unsigned int hwirq,
@@ -688,7 +690,10 @@ int handle_domain_nmi(struct irq_domain *domain, unsigned int hwirq,
 	unsigned int irq;
 	int ret = 0;

-	nmi_enter();
+	/*
+	 * NMI context needs to be setup earlier in order to deal with tracing.
+	 */
+	WARN_ON(!in_nmi());

 	irq = irq_find_mapping(domain, hwirq);

@@ -701,7 +706,6 @@ int handle_domain_nmi(struct irq_domain *domain, unsigned int hwirq,
 	else
 		ret = -EINVAL;

-	nmi_exit();
 	set_irq_regs(old_regs);
 	return ret;
 }
--
1.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
