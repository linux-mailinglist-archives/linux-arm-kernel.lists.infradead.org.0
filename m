Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1EBB1D9C63
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 18:20:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YAz7TVVzIaaTPkgegAsZqEEbAJCd+zObsKbT+BYfCoQ=; b=CXg4Mc8nH22D6B
	D8oB7/bOTCqsbRJG2jCYPg9SNPHLDOnhqHqaGHTr8ygiKrfa0ZHft1RSF/yqNoOVH9ETsYMAWC8yR
	vEVx9ejMYJNsts47Z8+l/wub+9ehyFE41FVHg6SuTp427mGWmLM7nDVGHrZbZGRmB6eintQfb9t+/
	6lz+TEYyTjJ38Q/WrMNxNc8UAFE/xWCCMKkGr8ng90Ss6eve1ph/H+anizd062O694gT/zyWtvDFZ
	r+KgjTu2ihcvSs/eY1i2ICJQhWNsEvxr3zH+cPPiJcpgTDAdwV/BPpJxu03aU0a66A/VmthLeZJ/S
	FtIRwZy3YXmWEqiU2+ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb4z2-0007co-LH; Tue, 19 May 2020 16:20:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb4wk-0003Ix-NX
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 16:18:29 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4A81120873;
 Tue, 19 May 2020 16:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589905106;
 bh=P3AYQdye00VIKh457NC82DZbnF4oXfY4J5rG6D5pq5I=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=UytPSidIUrglmIf0mwsgKoIFKMY+GcXjRa6s7mzQQlr81pyM8f9UM26FhPVvj2+Qf
 C1XcTEXIZiE4gXt+3qfsqs5La9J68d3zhtAFlGrJ3/NA0sgp9k2tzwKyOMbF+XKiC0
 I5cpdH0wVGk5K73SXagCdruatt2uZ9/6MDA8mgv4=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jb4wi-00Decy-Ny; Tue, 19 May 2020 17:18:24 +0100
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 08/11] irqchip/gic: Configure SGIs as standard interrupts
Date: Tue, 19 May 2020 17:17:52 +0100
Message-Id: <20200519161755.209565-9-maz@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200519161755.209565-1-maz@kernel.org>
References: <20200519161755.209565-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, will@kernel.org, catalin.marinas@arm.com,
 linux@arm.linux.org.uk, tglx@linutronix.de, jason@lakedaemon.net,
 sumit.garg@linaro.org, kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_091826_839900_54049EAB 
X-CRM114-Status: GOOD (  23.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sumit Garg <sumit.garg@linaro.org>, kernel-team@android.com,
 Russell King <linux@arm.linux.org.uk>, Jason Cooper <jason@lakedaemon.net>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Change the way we deal with GIC SGIs by turning them into proper
IRQs, and calling into the arch code to register the interrupt range
instead of a callback.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 drivers/irqchip/irq-gic.c | 113 +++++++++++++++++++++++++-------------
 1 file changed, 74 insertions(+), 39 deletions(-)

diff --git a/drivers/irqchip/irq-gic.c b/drivers/irqchip/irq-gic.c
index e289810e794c..8d146ac28c74 100644
--- a/drivers/irqchip/irq-gic.c
+++ b/drivers/irqchip/irq-gic.c
@@ -47,6 +47,8 @@
 
 #include "irq-gic-common.h"
 
+#define GIC_IRQ_TYPE_SGI	0x561
+
 #ifdef CONFIG_ARM64
 #include <asm/cpufeature.h>
 
@@ -335,31 +337,22 @@ static void __exception_irq_entry gic_handle_irq(struct pt_regs *regs)
 		irqstat = readl_relaxed(cpu_base + GIC_CPU_INTACK);
 		irqnr = irqstat & GICC_IAR_INT_ID_MASK;
 
-		if (likely(irqnr > 15 && irqnr < 1020)) {
-			if (static_branch_likely(&supports_deactivate_key))
-				writel_relaxed(irqstat, cpu_base + GIC_CPU_EOI);
-			isb();
-			handle_domain_irq(gic->domain, irqnr, regs);
-			continue;
-		}
-		if (irqnr < 16) {
+		if (unlikely(irqnr >= 1020))
+			break;
+
+		if (static_branch_likely(&supports_deactivate_key))
 			writel_relaxed(irqstat, cpu_base + GIC_CPU_EOI);
-			if (static_branch_likely(&supports_deactivate_key))
-				writel_relaxed(irqstat, cpu_base + GIC_CPU_DEACTIVATE);
-#ifdef CONFIG_SMP
-			/*
-			 * Ensure any shared data written by the CPU sending
-			 * the IPI is read after we've read the ACK register
-			 * on the GIC.
-			 *
-			 * Pairs with the write barrier in gic_raise_softirq
-			 */
+		isb();
+
+		/*
+		 * Ensure any shared data written by the CPU sending the IPI
+		 * is read after we've read the ACK register on the GIC.
+		 *
+		 * Pairs with the write barrier in gic_ipi_send_mask
+		 */
+		if (irqnr <= 15)
 			smp_rmb();
-			handle_IPI(irqnr, regs);
-#endif
-			continue;
-		}
-		break;
+		handle_domain_irq(gic->domain, irqnr, regs);
 	} while (1);
 }
 
@@ -801,14 +794,14 @@ static int gic_set_affinity(struct irq_data *d, const struct cpumask *mask_val,
 	return IRQ_SET_MASK_OK_DONE;
 }
 
-static void gic_raise_softirq(const struct cpumask *mask, unsigned int irq)
+static void gic_ipi_send_mask(struct irq_data *d, const struct cpumask *mask)
 {
 	int cpu;
 	unsigned long flags, map = 0;
 
 	if (unlikely(nr_cpu_ids == 1)) {
 		/* Only one CPU? let's do a self-IPI... */
-		writel_relaxed(2 << 24 | irq,
+		writel_relaxed(2 << 24 | d->hwirq,
 			       gic_data_dist_base(&gic_data[0]) + GIC_DIST_SOFTINT);
 		return;
 	}
@@ -826,7 +819,7 @@ static void gic_raise_softirq(const struct cpumask *mask, unsigned int irq)
 	dmb(ishst);
 
 	/* this always happens on GIC0 */
-	writel_relaxed(map << 16 | irq, gic_data_dist_base(&gic_data[0]) + GIC_DIST_SOFTINT);
+	writel_relaxed(map << 16 | d->hwirq, gic_data_dist_base(&gic_data[0]) + GIC_DIST_SOFTINT);
 
 	gic_unlock_irqrestore(flags);
 }
@@ -839,14 +832,40 @@ static int gic_starting_cpu(unsigned int cpu)
 
 static __init void gic_smp_init(void)
 {
-	set_smp_cross_call(gic_raise_softirq);
+	struct irq_fwspec sgi_fwspec = {
+		.fwnode		= gic_data[0].domain->fwnode,
+	};
+	int base_sgi;
+
 	cpuhp_setup_state_nocalls(CPUHP_AP_IRQ_GIC_STARTING,
 				  "irqchip/arm/gic:starting",
 				  gic_starting_cpu, NULL);
+
+	if (is_of_node(gic_data[0].domain->fwnode)) {
+		/* DT */
+		sgi_fwspec.param_count = 3;
+		sgi_fwspec.param[0] = GIC_IRQ_TYPE_SGI;
+		sgi_fwspec.param[1] = 0;
+		sgi_fwspec.param[2] = IRQ_TYPE_EDGE_RISING;
+	} else {
+		/* ACPI */
+		sgi_fwspec.param_count = 2;
+		sgi_fwspec.param[0] = 0;
+		sgi_fwspec.param[1] = IRQ_TYPE_EDGE_RISING;
+	}
+
+	base_sgi = __irq_domain_alloc_irqs(gic_data[0].domain, -1, 8,
+					   NUMA_NO_NODE, &sgi_fwspec,
+					   false, NULL);
+	if (WARN_ON(base_sgi <= 0))
+		return;
+
+	set_smp_ipi_range(base_sgi, 8);
 }
 #else
 #define gic_smp_init()		do { } while(0)
 #define gic_set_affinity	NULL
+#define gic_ipi_send_mask	NULL
 #endif
 
 #ifdef CONFIG_BL_SWITCHER
@@ -993,16 +1012,26 @@ static int gic_irq_domain_map(struct irq_domain *d, unsigned int irq,
 {
 	struct gic_chip_data *gic = d->host_data;
 
-	if (hw < 32) {
+	switch (hw) {
+	case 0 ... 15:
+		irq_set_percpu_devid(irq);
+		irq_domain_set_info(d, irq, hw, &gic->chip, d->host_data,
+				    handle_percpu_devid_fasteoi_ipi,
+				    NULL, NULL);
+		irq_set_status_flags(irq, IRQ_NOAUTOEN);
+		break;
+	case 16 ... 31:
 		irq_set_percpu_devid(irq);
 		irq_domain_set_info(d, irq, hw, &gic->chip, d->host_data,
 				    handle_percpu_devid_irq, NULL, NULL);
 		irq_set_status_flags(irq, IRQ_NOAUTOEN);
-	} else {
+		break;
+	default:
 		irq_domain_set_info(d, irq, hw, &gic->chip, d->host_data,
 				    handle_fasteoi_irq, NULL, NULL);
 		irq_set_probe(irq);
 		irqd_set_single_target(irq_desc_get_irq_data(irq_to_desc(irq)));
+		break;
 	}
 	return 0;
 }
@@ -1020,15 +1049,19 @@ static int gic_irq_domain_translate(struct irq_domain *d,
 		if (fwspec->param_count < 3)
 			return -EINVAL;
 
-		/* Get the interrupt number and add 16 to skip over SGIs */
-		*hwirq = fwspec->param[1] + 16;
-
-		/*
-		 * For SPIs, we need to add 16 more to get the GIC irq
-		 * ID number
-		 */
-		if (!fwspec->param[0])
-			*hwirq += 16;
+		switch (fwspec->param[0]) {
+		case 0:			/* SPI */
+			*hwirq = fwspec->param[1] + 32;
+			break;
+		case 1:			/* PPI */
+			*hwirq = fwspec->param[1] + 16;
+			break;
+		case GIC_IRQ_TYPE_SGI:	/* SGI, can't be set via DT */
+			*hwirq = fwspec->param[1];
+			break;
+		default:
+			return -EINVAL;
+		}
 
 		*type = fwspec->param[2] & IRQ_TYPE_SENSE_MASK;
 
@@ -1097,8 +1130,10 @@ static void gic_init_chip(struct gic_chip_data *gic, struct device *dev,
 		gic->chip.irq_set_vcpu_affinity = gic_irq_set_vcpu_affinity;
 	}
 
-	if (gic == &gic_data[0])
+	if (gic == &gic_data[0]) {
 		gic->chip.irq_set_affinity = gic_set_affinity;
+		gic->chip.ipi_send_mask = gic_ipi_send_mask;
+	}
 }
 
 static int gic_init_bases(struct gic_chip_data *gic,
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
