Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0B4F4EAD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 15:47:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=h5DaUGBlfyoM7HVDhhAtfBVbSvEoWZMSzFI4PXKaWgs=; b=n4ou7bLJiurWGLYZzzxsWoPTsv
	r4Y/KN/ngEIYuGuEO6IigGD3FuNVo0r8DFvimVxOOBCbjIJJ411IsobwvdgIURSFB6aGCZAZLUKF8
	PhnMgAc4tZgKLXACrE7SJND5vddYz1M4IKzsiLLDPh3Eilu10q5HIQ7Gqhq1fDHbovkFOMaR68LtP
	blYoyZuO3xC4yezPZV8UZlYZrUfW/0uUYY5sREesneWo2E2JAy1R6mCIcIO0BELoKBquWq9jjz4Gc
	CHP1ibAL36FW2W063PSVa5l15KfHGtfHEQFZwdycBnuc5LsXSC/rvCc7WibUbhu0pJj4nO8+SQwMx
	g1n4ZVKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT5Y2-0004Mm-Vs; Fri, 08 Nov 2019 14:47:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT5Tk-0007dG-0o
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 14:43:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DD57446A;
 Fri,  8 Nov 2019 06:43:11 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.44])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BFE9C3F719;
 Fri,  8 Nov 2019 06:43:10 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Andrew Jones <drjones@redhat.com>,
	Paolo Bonzini <pbonzini@redhat.com>
Subject: [kvm-unit-tests PATCH 16/17] arm: gic: Prepare interrupt statistics
 for both groups
Date: Fri,  8 Nov 2019 14:42:39 +0000
Message-Id: <20191108144240.204202-17-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191108144240.204202-1-andre.przywara@arm.com>
References: <20191108144240.204202-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_064312_228548_E8D215E4 
X-CRM114-Status: GOOD (  15.54  )
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
Cc: Marc Zyngier <maz@kernel.org>, Alexandru Elisei <alexandru.elisei@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 kvm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The arrays storing information about received interrupts need to
differentiate between IRQs and FIQs, to detect interrupts firing in the
wrong group.

Extend the acked, spurious, bad_sender and bad_irq arrays to get another
dimension, so that we can check the kind of interrupt easily.
The fiq_handler marks its result using index 0, the irq_handler uses
index 1.
Also we add a group parameter to check_acked() and friends, to let them
use the right group.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arm/gic.c | 78 ++++++++++++++++++++++++++++++-------------------------
 1 file changed, 42 insertions(+), 36 deletions(-)

diff --git a/arm/gic.c b/arm/gic.c
index 6756850..43a272b 100644
--- a/arm/gic.c
+++ b/arm/gic.c
@@ -33,8 +33,8 @@ struct gic {
 };
 
 static struct gic *gic;
-static int acked[NR_CPUS], spurious[NR_CPUS];
-static int bad_sender[NR_CPUS], bad_irq[NR_CPUS];
+static int acked[2][NR_CPUS], spurious[2][NR_CPUS];
+static int bad_sender[2][NR_CPUS], bad_irq[2][NR_CPUS];
 static cpumask_t ready;
 
 static void nr_cpu_check(int nr)
@@ -55,14 +55,17 @@ static void stats_reset(void)
 	int i;
 
 	for (i = 0; i < nr_cpus; ++i) {
-		acked[i] = 0;
-		bad_sender[i] = -1;
-		bad_irq[i] = -1;
+		acked[0][i] = 0;
+		acked[1][i] = 0;
+		bad_sender[0][i] = -1;
+		bad_sender[1][i] = -1;
+		bad_irq[0][i] = -1;
+		bad_irq[1][i] = -1;
 	}
 	smp_wmb();
 }
 
-static int check_acked(const char *testname, cpumask_t *mask)
+static int check_acked(const char *testname, cpumask_t *mask, int group)
 {
 	int missing = 0, extra = 0, unexpected = 0;
 	int nr_pass, cpu, i;
@@ -76,17 +79,17 @@ static int check_acked(const char *testname, cpumask_t *mask)
 		for_each_present_cpu(cpu) {
 			smp_rmb();
 			nr_pass += cpumask_test_cpu(cpu, mask) ?
-				acked[cpu] == 1 : acked[cpu] == 0;
+				acked[group][cpu] == 1 : acked[group][cpu] == 0;
 
-			if (bad_sender[cpu] != -1) {
+			if (bad_sender[group][cpu] != -1) {
 				printf("cpu%d received IPI from wrong sender %d\n",
-					cpu, bad_sender[cpu]);
+					cpu, bad_sender[group][cpu]);
 				bad = true;
 			}
 
-			if (bad_irq[cpu] != -1) {
+			if (bad_irq[group][cpu] != -1) {
 				printf("cpu%d received wrong irq %d\n",
-					cpu, bad_irq[cpu]);
+					cpu, bad_irq[group][cpu]);
 				bad = true;
 			}
 		}
@@ -109,12 +112,12 @@ static int check_acked(const char *testname, cpumask_t *mask)
 
 	for_each_present_cpu(cpu) {
 		if (cpumask_test_cpu(cpu, mask)) {
-			if (!acked[cpu])
+			if (!acked[group][cpu])
 				++missing;
-			else if (acked[cpu] > 1)
+			else if (acked[group][cpu] > 1)
 				++extra;
 		} else {
-			if (acked[cpu])
+			if (acked[group][cpu])
 				++unexpected;
 		}
 	}
@@ -132,9 +135,12 @@ static void check_spurious(void)
 
 	smp_rmb();
 	for_each_present_cpu(cpu) {
-		if (spurious[cpu])
-			report_info("WARN: cpu%d got %d spurious interrupts",
-				cpu, spurious[cpu]);
+		if (spurious[0][cpu])
+			report_info("WARN: cpu%d got %d spurious FIQs",
+				    cpu, spurious[0][cpu]);
+		if (spurious[1][cpu])
+			report_info("WARN: cpu%d got %d spurious IRQs",
+				    cpu, spurious[1][cpu]);
 	}
 }
 
@@ -144,14 +150,14 @@ static void check_ipi_sender(u32 irqstat)
 		int src = (irqstat >> 10) & 7;
 
 		if (src != IPI_SENDER)
-			bad_sender[smp_processor_id()] = src;
+			bad_sender[1][smp_processor_id()] = src;
 	}
 }
 
-static void check_irqnr(u32 irqnr, int expected)
+static void check_irqnr(u32 irqnr, int expected, int group)
 {
 	if (irqnr != expected)
-		bad_irq[smp_processor_id()] = irqnr;
+		bad_irq[group][smp_processor_id()] = irqnr;
 }
 
 static void irq_handler(struct pt_regs *regs __unused)
@@ -160,7 +166,7 @@ static void irq_handler(struct pt_regs *regs __unused)
 	u32 irqnr = gic_iar_irqnr(irqstat);
 
 	if (irqnr == GICC_INT_SPURIOUS) {
-		++spurious[smp_processor_id()];
+		++spurious[1][smp_processor_id()];
 		smp_wmb();
 		return;
 	}
@@ -168,12 +174,12 @@ static void irq_handler(struct pt_regs *regs __unused)
 	gic_write_eoir(irqstat, 1);
 
 	smp_rmb(); /* pairs with wmb in stats_reset */
-	++acked[smp_processor_id()];
+	++acked[1][smp_processor_id()];
 	if (irqnr < GIC_NR_PRIVATE_IRQS) {
 		check_ipi_sender(irqstat);
-		check_irqnr(irqnr, IPI_IRQ);
+		check_irqnr(irqnr, IPI_IRQ, 1);
 	} else {
-		check_irqnr(irqnr, SPI_IRQ);
+		check_irqnr(irqnr, SPI_IRQ, 1);
 	}
 	smp_wmb(); /* pairs with rmb in check_acked */
 }
@@ -184,7 +190,7 @@ static inline void fiq_handler(struct pt_regs *regs __unused)
 	u32 irqnr = gic_iar_irqnr(irqstat);
 
 	if (irqnr == GICC_INT_SPURIOUS) {
-		++spurious[smp_processor_id()];
+		++spurious[0][smp_processor_id()];
 		smp_wmb();
 		return;
 	}
@@ -192,12 +198,12 @@ static inline void fiq_handler(struct pt_regs *regs __unused)
 	gic_write_eoir(irqstat, 0);
 
 	smp_rmb(); /* pairs with wmb in stats_reset */
-	++acked[smp_processor_id()];
+	++acked[0][smp_processor_id()];
 	if (irqnr < GIC_NR_PRIVATE_IRQS) {
 		check_ipi_sender(irqstat);
-		check_irqnr(irqnr, IPI_IRQ);
+		check_irqnr(irqnr, IPI_IRQ, 0);
 	} else {
-		check_irqnr(irqnr, SPI_IRQ);
+		check_irqnr(irqnr, SPI_IRQ, 0);
 	}
 	smp_wmb(); /* pairs with rmb in check_acked */
 }
@@ -232,7 +238,7 @@ static void ipi_test_self(void)
 	cpumask_clear(&mask);
 	cpumask_set_cpu(smp_processor_id(), &mask);
 	gic->ipi.send_self();
-	check_acked("IPI: self", &mask);
+	check_acked("IPI: self", &mask, 1);
 	report_prefix_pop();
 }
 
@@ -247,7 +253,7 @@ static void ipi_test_smp(void)
 	for (i = smp_processor_id() & 1; i < nr_cpus; i += 2)
 		cpumask_clear_cpu(i, &mask);
 	gic_ipi_send_mask(IPI_IRQ, &mask);
-	check_acked("IPI: directed", &mask);
+	check_acked("IPI: directed", &mask, 1);
 	report_prefix_pop();
 
 	report_prefix_push("broadcast");
@@ -255,7 +261,7 @@ static void ipi_test_smp(void)
 	cpumask_copy(&mask, &cpu_present_mask);
 	cpumask_clear_cpu(smp_processor_id(), &mask);
 	gic->ipi.send_broadcast();
-	check_acked("IPI: broadcast", &mask);
+	check_acked("IPI: broadcast", &mask, 1);
 	report_prefix_pop();
 }
 
@@ -327,11 +333,11 @@ static void ipi_clear_active_handler(struct pt_regs *regs __unused)
 		writel(val, base + GICD_ICACTIVER);
 
 		smp_rmb(); /* pairs with wmb in stats_reset */
-		++acked[smp_processor_id()];
-		check_irqnr(irqnr, IPI_IRQ);
+		++acked[1][smp_processor_id()];
+		check_irqnr(irqnr, IPI_IRQ, 1);
 		smp_wmb(); /* pairs with rmb in check_acked */
 	} else {
-		++spurious[smp_processor_id()];
+		++spurious[1][smp_processor_id()];
 		smp_wmb();
 	}
 }
@@ -617,7 +623,7 @@ static bool trigger_and_check_spi(const char *test_name,
 		break;
 	}
 
-	ret = (check_acked(test_name, &cpumask) >= 0);
+	ret = (check_acked(test_name, &cpumask, 1) >= 0);
 
 	/* Clean up pending bit in case this IRQ wasn't taken. */
 	if (!(irq_stat & IRQ_STAT_NO_CLEAR))
@@ -643,7 +649,7 @@ static void spi_test_single(void)
 	cpumask_clear(&cpumask);
 	cpumask_set_cpu(cpu, &cpumask);
 	gic_enable_irq(SPI_IRQ);
-	check_acked("now enabled SPI fires", &cpumask);
+	check_acked("now enabled SPI fires", &cpumask, 1);
 }
 
 static void spi_test_smp(void)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
