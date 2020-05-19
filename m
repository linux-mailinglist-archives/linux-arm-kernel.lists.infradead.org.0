Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB78C1D9C62
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 18:20:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zL51U/X2UAIwJ1agGEKxVh72pw70il67MnOIRNAo0iY=; b=q6tdJVA6QWtOHD
	PX3acMhW1Ux5QX6mrTN3Q2oO1SBXa5/KHa1qmcsjfVP+7/oWfX19MDpY/M+lzDn3SQMJL0wRngsor
	d/V9gs5pVSqBz4va/oU8Y41As3vyPO0oBGn8kjA1/0Ku4x7Gqz4kZ+CMj2t+tbZbfJEFKKiIAkJXP
	Idz+NEvNYJimasU91/DV+7iju7qLSCp72GZuxIadS08LFqEnwWQcSCzq4EDMnzxJZIdASqebu1JR/
	v2Iew4EYXFiXJZjbY9fbqo2weri8Y6dmv7dl5klQdPGvVWoCGPrCM+RB7t7MQFBI5oLMjm+FcUfCv
	KYoZKUam+fxnRsjyMABQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb4yk-0007Rp-Qe; Tue, 19 May 2020 16:20:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb4wj-0003Hz-KF
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 16:18:27 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3BEB72084C;
 Tue, 19 May 2020 16:18:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589905105;
 bh=RiZT+rrlJ/q8OIyVIuqOkk7CkjdOPkHQdxZCJUnNTQw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=fGliPEYd2TD523/Jzfynl4/TeIDIBOS0bdVShTETuu1XrtMTINZ5pz40EMzvC3pEb
 oM7BlwAe4fplu1DaFHMkyg7ZTZBnZM4xa+jK+2XcbdneaKPGSxZCUBnxgiZ6/SaHcm
 fPGsptpo6x2h87bPKxeUhFmyG/A+JQenuYCOwuxI=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jb4wh-00Decy-MM; Tue, 19 May 2020 17:18:23 +0100
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 06/11] irqchip/gic-v3: Configure SGIs as standard interrupts
Date: Tue, 19 May 2020 17:17:50 +0100
Message-Id: <20200519161755.209565-7-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20200519_091825_705562_8C558702 
X-CRM114-Status: GOOD (  19.79  )
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

Change the way we deal with GICv3 SGIs by turning them into proper
IRQs, and calling into the arch code to register the interrupt range
instead of a callback.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 drivers/irqchip/irq-gic-v3.c | 91 +++++++++++++++++++++---------------
 1 file changed, 53 insertions(+), 38 deletions(-)

diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
index 23d7c87da407..d57289057b75 100644
--- a/drivers/irqchip/irq-gic-v3.c
+++ b/drivers/irqchip/irq-gic-v3.c
@@ -36,6 +36,9 @@
 #define FLAGS_WORKAROUND_GICR_WAKER_MSM8996	(1ULL << 0)
 #define FLAGS_WORKAROUND_CAVIUM_ERRATUM_38539	(1ULL << 1)
 
+#define GIC_IRQ_TYPE_PARTITION	(GIC_IRQ_TYPE_LPI + 1)
+#define GIC_IRQ_TYPE_SGI	(GIC_IRQ_TYPE_LPI + 2)
+
 struct redist_region {
 	void __iomem		*redist_base;
 	phys_addr_t		phys_base;
@@ -657,38 +660,14 @@ static asmlinkage void __exception_irq_entry gic_handle_irq(struct pt_regs *regs
 	if ((irqnr >= 1020 && irqnr <= 1023))
 		return;
 
-	/* Treat anything but SGIs in a uniform way */
-	if (likely(irqnr > 15)) {
-		int err;
-
-		if (static_branch_likely(&supports_deactivate_key))
-			gic_write_eoir(irqnr);
-		else
-			isb();
-
-		err = handle_domain_irq(gic_data.domain, irqnr, regs);
-		if (err) {
-			WARN_ONCE(true, "Unexpected interrupt received!\n");
-			gic_deactivate_unhandled(irqnr);
-		}
-		return;
-	}
-	if (irqnr < 16) {
+	if (static_branch_likely(&supports_deactivate_key))
 		gic_write_eoir(irqnr);
-		if (static_branch_likely(&supports_deactivate_key))
-			gic_write_dir(irqnr);
-#ifdef CONFIG_SMP
-		/*
-		 * Unlike GICv2, we don't need an smp_rmb() here.
-		 * The control dependency from gic_read_iar to
-		 * the ISB in gic_write_eoir is enough to ensure
-		 * that any shared data read by handle_IPI will
-		 * be read after the ACK.
-		 */
-		handle_IPI(irqnr, regs);
-#else
-		WARN_ONCE(true, "Unexpected SGI received!\n");
-#endif
+	else
+		isb();
+
+	if (handle_domain_irq(gic_data.domain, irqnr, regs)) {
+		WARN_ONCE(true, "Unexpected interrupt received!\n");
+		gic_deactivate_unhandled(irqnr);
 	}
 }
 
@@ -1136,11 +1115,11 @@ static void gic_send_sgi(u64 cluster_id, u16 tlist, unsigned int irq)
 	gic_write_sgi1r(val);
 }
 
-static void gic_raise_softirq(const struct cpumask *mask, unsigned int irq)
+static void gic_ipi_send_mask(struct irq_data *d, const struct cpumask *mask)
 {
 	int cpu;
 
-	if (WARN_ON(irq >= 16))
+	if (WARN_ON(d->hwirq >= 16))
 		return;
 
 	/*
@@ -1154,7 +1133,7 @@ static void gic_raise_softirq(const struct cpumask *mask, unsigned int irq)
 		u16 tlist;
 
 		tlist = gic_compute_target_list(&cpu, mask, cluster_id);
-		gic_send_sgi(cluster_id, tlist, irq);
+		gic_send_sgi(cluster_id, tlist, d->hwirq);
 	}
 
 	/* Force the above writes to ICC_SGI1R_EL1 to be executed */
@@ -1163,10 +1142,36 @@ static void gic_raise_softirq(const struct cpumask *mask, unsigned int irq)
 
 static void gic_smp_init(void)
 {
-	set_smp_cross_call(gic_raise_softirq);
+	struct irq_fwspec sgi_fwspec = {
+		.fwnode		= gic_data.fwnode,
+	};
+	int base_sgi;
+
 	cpuhp_setup_state_nocalls(CPUHP_AP_IRQ_GIC_STARTING,
 				  "irqchip/arm/gicv3:starting",
 				  gic_starting_cpu, NULL);
+
+	if (is_of_node(gic_data.fwnode)) {
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
+	/* Register all 8 non-secure SGIs */
+	base_sgi = __irq_domain_alloc_irqs(gic_data.domain, -1, 8,
+					   NUMA_NO_NODE, &sgi_fwspec,
+					   false, NULL);
+	if (WARN_ON(base_sgi <= 0))
+		return;
+
+	set_smp_ipi_range(base_sgi, 8);
 }
 
 static int gic_set_affinity(struct irq_data *d, const struct cpumask *mask_val,
@@ -1215,6 +1220,7 @@ static int gic_set_affinity(struct irq_data *d, const struct cpumask *mask_val,
 }
 #else
 #define gic_set_affinity	NULL
+#define gic_ipi_send_mask	NULL
 #define gic_smp_init()		do { } while(0)
 #endif
 
@@ -1257,6 +1263,7 @@ static struct irq_chip gic_chip = {
 	.irq_set_irqchip_state	= gic_irq_set_irqchip_state,
 	.irq_nmi_setup		= gic_irq_nmi_setup,
 	.irq_nmi_teardown	= gic_irq_nmi_teardown,
+	.ipi_send_mask		= gic_ipi_send_mask,
 	.flags			= IRQCHIP_SET_TYPE_MASKED |
 				  IRQCHIP_SKIP_SET_WAKE |
 				  IRQCHIP_MASK_ON_SUSPEND,
@@ -1289,6 +1296,13 @@ static int gic_irq_domain_map(struct irq_domain *d, unsigned int irq,
 
 	switch (__get_intid_range(hw)) {
 	case SGI_RANGE:
+		irq_set_percpu_devid(irq);
+		irq_domain_set_info(d, irq, hw, chip, d->host_data,
+				    handle_percpu_devid_fasteoi_ipi,
+				    NULL, NULL);
+		irq_set_status_flags(irq, IRQ_NOAUTOEN);
+		break;
+
 	case PPI_RANGE:
 	case EPPI_RANGE:
 		irq_set_percpu_devid(irq);
@@ -1319,8 +1333,6 @@ static int gic_irq_domain_map(struct irq_domain *d, unsigned int irq,
 	return 0;
 }
 
-#define GIC_IRQ_TYPE_PARTITION	(GIC_IRQ_TYPE_LPI + 1)
-
 static int gic_irq_domain_translate(struct irq_domain *d,
 				    struct irq_fwspec *fwspec,
 				    unsigned long *hwirq,
@@ -1353,6 +1365,9 @@ static int gic_irq_domain_translate(struct irq_domain *d,
 			else
 				*hwirq += 16;
 			break;
+		case GIC_IRQ_TYPE_SGI:
+			*hwirq = fwspec->param[1];
+			break;
 		default:
 			return -EINVAL;
 		}
@@ -1657,9 +1672,9 @@ static int __init gic_init_bases(void __iomem *dist_base,
 
 	gic_update_rdist_properties();
 
-	gic_smp_init();
 	gic_dist_init();
 	gic_cpu_init();
+	gic_smp_init();
 	gic_cpu_pm_init();
 
 	if (gic_dist_supports_lpis()) {
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
