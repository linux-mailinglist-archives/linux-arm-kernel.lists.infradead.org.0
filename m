Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E15A71D9C65
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 18:21:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qv8cXy7xv3AvuO0vvHjTrX2WSsqFfqcEUav6zEPehbY=; b=gESJeB25aWfeKb
	euFQHMaFmRg6ZEtYctqfHwhyT1Qdwel0pg0yi9Y6UzZDGaGTKxokrYSCSSdKYDPJKgziSxpNMgN20
	a+Du0FQrySrPErONMoEVDL3t3Nv4ydgUhN2yw3NgXjXMS/POEiB0uTnb5dbyJph5O9O/5UN/VDfR8
	8mFNTw2Npx8hpHDqd5WGMmaVjDtRaBHCgeMxTZ5/k67rCcWAM5GmOR8bsUadPxEZCLPrEUGY6nPU/
	0zP9/6eY+rSEs9GxoVbLyBDtySdjp39mVrC2lyZsJc41+YQQe5XFg8KQrOXS//YmHHEk9LaP2lSbf
	Z9n04WoShH3kvUidsQqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb4zH-0007sK-K7; Tue, 19 May 2020 16:21:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb4wk-0003IH-7f
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 16:18:28 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C256A20829;
 Tue, 19 May 2020 16:18:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589905105;
 bh=IPC/7tQVD57PFeb8X6j+jJhzgj26niEWfPYqC+ar0N0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=JrFQyvBPy/yZdxoLQdZzqSE3+ajeHkRdXPE4BJ2AS55XXXVpMowurXEkz7FixSaRp
 TXwyXxxCNU8ysISDQrH9Xwl4sVCgzArPH8SiotJRwOcd7ccxWU0KjWr+GlZoLxRWE4
 T7Kq8gkVDon3H8aGb+Oy+f8JfCDDKm+K86qaeyWQ=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jb4wi-00Decy-6h; Tue, 19 May 2020 17:18:24 +0100
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 07/11] irqchip/gic: Refactor SMP configuration
Date: Tue, 19 May 2020 17:17:51 +0100
Message-Id: <20200519161755.209565-8-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20200519_091826_332770_C6873E37 
X-CRM114-Status: GOOD (  16.65  )
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

As we are about to change quite a lot of the SMP support code,
let's start by moving it around so that it minimizes the amount
of #ifdefery.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 drivers/irqchip/irq-gic.c | 92 ++++++++++++++++++++-------------------
 1 file changed, 48 insertions(+), 44 deletions(-)

diff --git a/drivers/irqchip/irq-gic.c b/drivers/irqchip/irq-gic.c
index 30ab623343d3..e289810e794c 100644
--- a/drivers/irqchip/irq-gic.c
+++ b/drivers/irqchip/irq-gic.c
@@ -325,36 +325,6 @@ static int gic_irq_set_vcpu_affinity(struct irq_data *d, void *vcpu)
 	return 0;
 }
 
-#ifdef CONFIG_SMP
-static int gic_set_affinity(struct irq_data *d, const struct cpumask *mask_val,
-			    bool force)
-{
-	void __iomem *reg = gic_dist_base(d) + GIC_DIST_TARGET + (gic_irq(d) & ~3);
-	unsigned int cpu, shift = (gic_irq(d) % 4) * 8;
-	u32 val, mask, bit;
-	unsigned long flags;
-
-	if (!force)
-		cpu = cpumask_any_and(mask_val, cpu_online_mask);
-	else
-		cpu = cpumask_first(mask_val);
-
-	if (cpu >= NR_GIC_CPU_IF || cpu >= nr_cpu_ids)
-		return -EINVAL;
-
-	gic_lock_irqsave(flags);
-	mask = 0xff << shift;
-	bit = gic_cpu_map[cpu] << shift;
-	val = readl_relaxed(reg) & ~mask;
-	writel_relaxed(val | bit, reg);
-	gic_unlock_irqrestore(flags);
-
-	irq_data_update_effective_affinity(d, cpumask_of(cpu));
-
-	return IRQ_SET_MASK_OK_DONE;
-}
-#endif
-
 static void __exception_irq_entry gic_handle_irq(struct pt_regs *regs)
 {
 	u32 irqstat, irqnr;
@@ -803,6 +773,34 @@ static int gic_pm_init(struct gic_chip_data *gic)
 #endif
 
 #ifdef CONFIG_SMP
+static int gic_set_affinity(struct irq_data *d, const struct cpumask *mask_val,
+			    bool force)
+{
+	void __iomem *reg = gic_dist_base(d) + GIC_DIST_TARGET + (gic_irq(d) & ~3);
+	unsigned int cpu, shift = (gic_irq(d) % 4) * 8;
+	u32 val, mask, bit;
+	unsigned long flags;
+
+	if (!force)
+		cpu = cpumask_any_and(mask_val, cpu_online_mask);
+	else
+		cpu = cpumask_first(mask_val);
+
+	if (cpu >= NR_GIC_CPU_IF || cpu >= nr_cpu_ids)
+		return -EINVAL;
+
+	gic_lock_irqsave(flags);
+	mask = 0xff << shift;
+	bit = gic_cpu_map[cpu] << shift;
+	val = readl_relaxed(reg) & ~mask;
+	writel_relaxed(val | bit, reg);
+	gic_unlock_irqrestore(flags);
+
+	irq_data_update_effective_affinity(d, cpumask_of(cpu));
+
+	return IRQ_SET_MASK_OK_DONE;
+}
+
 static void gic_raise_softirq(const struct cpumask *mask, unsigned int irq)
 {
 	int cpu;
@@ -832,6 +830,23 @@ static void gic_raise_softirq(const struct cpumask *mask, unsigned int irq)
 
 	gic_unlock_irqrestore(flags);
 }
+
+static int gic_starting_cpu(unsigned int cpu)
+{
+	gic_cpu_init(&gic_data[0]);
+	return 0;
+}
+
+static __init void gic_smp_init(void)
+{
+	set_smp_cross_call(gic_raise_softirq);
+	cpuhp_setup_state_nocalls(CPUHP_AP_IRQ_GIC_STARTING,
+				  "irqchip/arm/gic:starting",
+				  gic_starting_cpu, NULL);
+}
+#else
+#define gic_smp_init()		do { } while(0)
+#define gic_set_affinity	NULL
 #endif
 
 #ifdef CONFIG_BL_SWITCHER
@@ -1036,12 +1051,6 @@ static int gic_irq_domain_translate(struct irq_domain *d,
 	return -EINVAL;
 }
 
-static int gic_starting_cpu(unsigned int cpu)
-{
-	gic_cpu_init(&gic_data[0]);
-	return 0;
-}
-
 static int gic_irq_domain_alloc(struct irq_domain *domain, unsigned int virq,
 				unsigned int nr_irqs, void *arg)
 {
@@ -1088,10 +1097,8 @@ static void gic_init_chip(struct gic_chip_data *gic, struct device *dev,
 		gic->chip.irq_set_vcpu_affinity = gic_irq_set_vcpu_affinity;
 	}
 
-#ifdef CONFIG_SMP
 	if (gic == &gic_data[0])
 		gic->chip.irq_set_affinity = gic_set_affinity;
-#endif
 }
 
 static int gic_init_bases(struct gic_chip_data *gic,
@@ -1208,12 +1215,7 @@ static int __init __gic_init_bases(struct gic_chip_data *gic,
 		 */
 		for (i = 0; i < NR_GIC_CPU_IF; i++)
 			gic_cpu_map[i] = 0xff;
-#ifdef CONFIG_SMP
-		set_smp_cross_call(gic_raise_softirq);
-#endif
-		cpuhp_setup_state_nocalls(CPUHP_AP_IRQ_GIC_STARTING,
-					  "irqchip/arm/gic:starting",
-					  gic_starting_cpu, NULL);
+
 		set_handle_irq(gic_handle_irq);
 		if (static_branch_likely(&supports_deactivate_key))
 			pr_info("GIC: Using split EOI/Deactivate mode\n");
@@ -1230,6 +1232,8 @@ static int __init __gic_init_bases(struct gic_chip_data *gic,
 	ret = gic_init_bases(gic, handle);
 	if (ret)
 		kfree(name);
+	else if (gic == &gic_data[0])
+		gic_smp_init();
 
 	return ret;
 }
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
