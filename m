Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D50F4F4EA5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 15:47:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=H3AKnRghVJML9m4L/dMMKevJDyMQZo8sw97HJntsEq4=; b=A1d1cGDKM3/iaWSH2M2we2R7uQ
	UydH1tzW/nn2DP7JhvZb5W3hw0up7k+c5eFgqK4zCiNKCi2A01uLuBnnvISCuNSFpTCp+Puujj8wJ
	V0LLwmcRRV3HktQaijOXuICRA1GoAs/tP7IoKl1G+Bbr3J7uh7bc9OxzjhCnB6lz3/Rs+Rfez2G6Q
	RahCOR4EX2FIimf6Xn+1mvq2sITZGeFTMnMB5LP7oPRnTuXXMnktbp9uOEVhgpyF7yRmA8u1kooU5
	PtM7V5TS6nDM3wpy54w3htL2thLbQTLCb7fUoQGKr2wWSaGN6K35e6EXQl89oGTwKt4CJOjPIghRr
	yq7aWndA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT5XM-0003o4-C4; Fri, 08 Nov 2019 14:46:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT5Th-0007dG-Hq
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 14:43:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 38E0046A;
 Fri,  8 Nov 2019 06:43:09 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.44])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1AB153F719;
 Fri,  8 Nov 2019 06:43:07 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Andrew Jones <drjones@redhat.com>,
	Paolo Bonzini <pbonzini@redhat.com>
Subject: [kvm-unit-tests PATCH 14/17] arm: gic: Prepare for receiving GIC
 group 0 interrupts via FIQs
Date: Fri,  8 Nov 2019 14:42:37 +0000
Message-Id: <20191108144240.204202-15-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191108144240.204202-1-andre.przywara@arm.com>
References: <20191108144240.204202-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_064309_731106_424F169A 
X-CRM114-Status: GOOD (  10.42  )
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

To differentiate between the two interrupt groups, we will configure
group 0 to be delivered as FIQs, while group 1 interrupts still use the
IRQ "pin".
For this we need to teach kvm-unit-tests to deal with FIQs, also need to
tell the VGIC to deliver FIQs. This requires some bits here and there to
be set, which are annoyingly different between GICv2 and GICv3.

Add the required code in the GIC library to easily enable FIQ delivery
later on, in gic.c.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 lib/arm/asm/arch_gicv3.h   |  7 +++++++
 lib/arm/asm/gic-v2.h       |  7 ++++++-
 lib/arm/asm/processor.h    | 10 ++++++++++
 lib/arm/gic-v2.c           | 34 +++++++++++++++++++++++++++++++++-
 lib/arm64/asm/arch_gicv3.h |  9 +++++++++
 lib/arm64/asm/processor.h  | 10 ++++++++++
 lib/arm64/processor.c      |  2 ++
 7 files changed, 77 insertions(+), 2 deletions(-)

diff --git a/lib/arm/asm/arch_gicv3.h b/lib/arm/asm/arch_gicv3.h
index 163008d..33fd75c 100644
--- a/lib/arm/asm/arch_gicv3.h
+++ b/lib/arm/asm/arch_gicv3.h
@@ -20,6 +20,7 @@
 #define ICC_EOIR0			__ACCESS_CP15(c12, 0,  c8, 1)
 #define ICC_IAR1			__ACCESS_CP15(c12, 0, c12, 0)
 #define ICC_EOIR1			__ACCESS_CP15(c12, 0, c12, 1)
+#define ICC_IGRPEN0			__ACCESS_CP15(c12, 0, c12, 6)
 #define ICC_IGRPEN1			__ACCESS_CP15(c12, 0, c12, 7)
 
 static inline void gicv3_write_pmr(u32 val)
@@ -54,6 +55,12 @@ static inline void gicv3_write_eoir(u32 irq, int group)
 	isb();
 }
 
+static inline void gicv3_write_grpen0(u32 val)
+{
+	write_sysreg(val, ICC_IGRPEN0);
+	isb();
+}
+
 static inline void gicv3_write_grpen1(u32 val)
 {
 	write_sysreg(val, ICC_IGRPEN1);
diff --git a/lib/arm/asm/gic-v2.h b/lib/arm/asm/gic-v2.h
index b57ee35..ed083ea 100644
--- a/lib/arm/asm/gic-v2.h
+++ b/lib/arm/asm/gic-v2.h
@@ -14,7 +14,10 @@
 
 #define GICD_ENABLE			0x1
 
-#define GICC_ENABLE			0x1
+#define GICC_GRP0_ENABLE		0x1
+#define GICC_GRP1_ENABLE		0x2
+#define GICC_ACKCTL			0x4
+#define GICC_FIQEN			0x8
 #define GICC_IAR_INT_ID_MASK		0x3ff
 
 #ifndef __ASSEMBLY__
@@ -32,6 +35,8 @@ extern struct gicv2_data gicv2_data;
 
 extern int gicv2_init(void);
 extern void gicv2_enable_defaults(void);
+extern void gicv2_enable_group1(bool enable);
+extern void gicv2_enable_fiq(bool enable);
 extern u32 gicv2_read_iar(int group);
 extern u32 gicv2_iar_irqnr(u32 iar);
 extern void gicv2_write_eoir(u32 irqstat, int group);
diff --git a/lib/arm/asm/processor.h b/lib/arm/asm/processor.h
index a8c4628..6b5dd1e 100644
--- a/lib/arm/asm/processor.h
+++ b/lib/arm/asm/processor.h
@@ -35,6 +35,16 @@ static inline unsigned long current_cpsr(void)
 
 #define current_mode() (current_cpsr() & MODE_MASK)
 
+static inline void local_fiq_enable(void)
+{
+	asm volatile("cpsie f" : : : "memory", "cc");
+}
+
+static inline void local_fiq_disable(void)
+{
+	asm volatile("cpsid f" : : : "memory", "cc");
+}
+
 static inline void local_irq_enable(void)
 {
 	asm volatile("cpsie i" : : : "memory", "cc");
diff --git a/lib/arm/gic-v2.c b/lib/arm/gic-v2.c
index d2af01e..360aaa3 100644
--- a/lib/arm/gic-v2.c
+++ b/lib/arm/gic-v2.c
@@ -23,7 +23,39 @@ void gicv2_enable_defaults(void)
 	writel(GICD_ENABLE, dist + GICD_CTLR);
 
 	writel(GICC_INT_PRI_THRESHOLD, cpu_base + GICC_PMR);
-	writel(GICC_ENABLE, cpu_base + GICC_CTLR);
+	writel(GICC_GRP0_ENABLE, cpu_base + GICC_CTLR);
+}
+
+void gicv2_enable_fiq(bool enable)
+{
+	void *cpu_base = gicv2_cpu_base();
+	u32 reg = readl(cpu_base + GICC_CTLR);
+
+	if (enable) {
+		reg |= GICC_GRP0_ENABLE;
+		reg |= GICC_FIQEN;
+	} else {
+		reg &= ~GICC_GRP0_ENABLE;
+		reg &= ~GICC_FIQEN;
+	}
+
+	writel(reg, cpu_base + GICC_CTLR);
+}
+
+void gicv2_enable_group1(bool enable)
+{
+	void *cpu_base = gicv2_cpu_base();
+	u32 reg = readl(cpu_base + GICC_CTLR);
+
+	if (enable) {
+		reg |= GICC_GRP1_ENABLE;
+		reg |= GICC_ACKCTL;
+	} else {
+		reg &= ~GICC_GRP1_ENABLE;
+		reg &= ~GICC_ACKCTL;
+	}
+
+	writel(reg, cpu_base + GICC_CTLR);
 }
 
 u32 gicv2_read_iar(int group)
diff --git a/lib/arm64/asm/arch_gicv3.h b/lib/arm64/asm/arch_gicv3.h
index 972b97e..6938bc5 100644
--- a/lib/arm64/asm/arch_gicv3.h
+++ b/lib/arm64/asm/arch_gicv3.h
@@ -14,8 +14,11 @@
 #define ICC_IAR0_EL1			sys_reg(3, 0, 12, 8, 0)
 #define ICC_EOIR0_EL1			sys_reg(3, 0, 12, 8, 1)
 #define ICC_SGI1R_EL1			sys_reg(3, 0, 12, 11, 5)
+#define ICC_IAR0_EL1			sys_reg(3, 0, 12, 8, 0)
 #define ICC_IAR1_EL1			sys_reg(3, 0, 12, 12, 0)
+#define ICC_EOIR0_EL1			sys_reg(3, 0, 12, 8, 1)
 #define ICC_EOIR1_EL1			sys_reg(3, 0, 12, 12, 1)
+#define ICC_GRPEN0_EL1			sys_reg(3, 0, 12, 12, 6)
 #define ICC_GRPEN1_EL1			sys_reg(3, 0, 12, 12, 7)
 
 #ifndef __ASSEMBLY__
@@ -64,6 +67,12 @@ static inline void gicv3_write_eoir(u32 irq, int group)
 	isb();
 }
 
+static inline void gicv3_write_grpen0(u32 val)
+{
+	asm volatile("msr_s " xstr(ICC_GRPEN0_EL1) ", %0" : : "r" ((u64)val));
+	isb();
+}
+
 static inline void gicv3_write_grpen1(u32 val)
 {
 	asm volatile("msr_s " xstr(ICC_GRPEN1_EL1) ", %0" : : "r" ((u64)val));
diff --git a/lib/arm64/asm/processor.h b/lib/arm64/asm/processor.h
index 1d9223f..69086e9 100644
--- a/lib/arm64/asm/processor.h
+++ b/lib/arm64/asm/processor.h
@@ -68,6 +68,16 @@ static inline unsigned long current_level(void)
 	return el & 0xc;
 }
 
+static inline void local_fiq_enable(void)
+{
+	asm volatile("msr daifclr, #1" : : : "memory");
+}
+
+static inline void local_fiq_disable(void)
+{
+	asm volatile("msr daifset, #1" : : : "memory");
+}
+
 static inline void local_irq_enable(void)
 {
 	asm volatile("msr daifclr, #2" : : : "memory");
diff --git a/lib/arm64/processor.c b/lib/arm64/processor.c
index 2a024e3..8d7b921 100644
--- a/lib/arm64/processor.c
+++ b/lib/arm64/processor.c
@@ -190,8 +190,10 @@ void vector_handlers_default_init(vector_fn *handlers)
 {
 	handlers[EL1H_SYNC]	= default_vector_sync_handler;
 	handlers[EL1H_IRQ]	= default_vector_irq_handler;
+	handlers[EL1H_FIQ]	= default_vector_irq_handler;
 	handlers[EL0_SYNC_64]	= default_vector_sync_handler;
 	handlers[EL0_IRQ_64]	= default_vector_irq_handler;
+	handlers[EL0_FIQ_64]	= default_vector_irq_handler;
 }
 
 /* Needed to compile with -Wmissing-prototypes */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
