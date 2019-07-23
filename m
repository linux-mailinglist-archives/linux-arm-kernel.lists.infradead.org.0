Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B71C571675
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 12:45:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qocvljRlhDb1Ex+dkC4qnG9bjnFf6dMJzPnNMIARBHU=; b=B+zXhMj7VrO6TD
	TooEnr6zZpsZSJQ5wtvaZGqMOHNHorgUf11SgaKPytuYYl3sDmgnbDquNJWcnSDJGAONZikQrqDbc
	qiJ4+c7xa9cZbl7p6syESGpthjHYFeAmajmyG/gMy1XNfEz3K5gGEspCT/BwHEGAUOU8VFk6Fej+C
	qy1Tw2pCMM91hfEWlXSTblCNcqRz0crvvTBnwoPPUAyawFnUu/SE/beH2IstM6z1Y9i6kxX2+BWvJ
	xHXa4gh/uSBBu2QHLdllx/SL/fZLOuDPVLVK2HK9esLOD/4d0Mf2BjQ/GDuIbrVa1KxLJl43ccSmK
	HBQ/v/HcKWHDyL+DpqUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpsIo-0008Ck-RL; Tue, 23 Jul 2019 10:45:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpsHq-0006VS-A9
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 10:44:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 664FB153B;
 Tue, 23 Jul 2019 03:44:49 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7E0BA3F71A;
 Tue, 23 Jul 2019 03:44:48 -0700 (PDT)
From: Marc Zyngier <maz@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 2/9] irqchip/gic-v3: Add INTID range and convertion primitives
Date: Tue, 23 Jul 2019 11:44:30 +0100
Message-Id: <20190723104437.154403-3-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190723104437.154403-1-maz@kernel.org>
References: <20190723104437.154403-1-maz@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_034450_488003_A1D21806 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the beginning, life was simple. The GIC driver mostly cared about
PPIs, SPIs and LPIs, all with nicely layed out ranges.

We're about to change all that, with new ranges such as EPPI and ESPI
interleaved in the middle of the no-irq-land between the "special IDs"
and the LPI range. Boo.

In order to make our life less hellish, let's introduce a set of primitives
that will allow ranges to be identified easily and offsets to be remapped.

So far, there is no functionnal change.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 drivers/irqchip/irq-gic-v3.c | 112 ++++++++++++++++++++++++++---------
 1 file changed, 83 insertions(+), 29 deletions(-)

diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
index 915b4ae8667f..2371e0a70215 100644
--- a/drivers/irqchip/irq-gic-v3.c
+++ b/drivers/irqchip/irq-gic-v3.c
@@ -97,6 +97,32 @@ static DEFINE_PER_CPU(bool, has_rss);
 /* Our default, arbitrary priority value. Linux only uses one anyway. */
 #define DEFAULT_PMR_VALUE	0xf0
 
+enum gic_intid_range {
+	PPI_RANGE,
+	SPI_RANGE,
+	LPI_RANGE,
+	__INVALID_RANGE__
+};
+
+static enum gic_intid_range __get_intid_range(irq_hw_number_t hwirq)
+{
+	switch (hwirq) {
+	case 16 ... 31:
+		return PPI_RANGE;
+	case 32 ... 1019:
+		return SPI_RANGE;
+	case 8192 ... GENMASK(23, 0):
+		return LPI_RANGE;
+	default:
+		return __INVALID_RANGE__;
+	}
+}
+
+static enum gic_intid_range get_intid_range(struct irq_data *d)
+{
+	return __get_intid_range(d->hwirq);
+}
+
 static inline unsigned int gic_irq(struct irq_data *d)
 {
 	return d->hwirq;
@@ -104,18 +130,23 @@ static inline unsigned int gic_irq(struct irq_data *d)
 
 static inline int gic_irq_in_rdist(struct irq_data *d)
 {
-	return gic_irq(d) < 32;
+	return get_intid_range(d) == PPI_RANGE;
 }
 
 static inline void __iomem *gic_dist_base(struct irq_data *d)
 {
-	if (gic_irq_in_rdist(d))	/* SGI+PPI -> SGI_base for this CPU */
+	switch (get_intid_range(d)) {
+	case PPI_RANGE:
+		/* SGI+PPI -> SGI_base for this CPU */
 		return gic_data_rdist_sgi_base();
 
-	if (d->hwirq <= 1023)		/* SPI -> dist_base */
+	case SPI_RANGE:
+		/* SPI -> dist_base */
 		return gic_data.dist_base;
 
-	return NULL;
+	default:
+		return NULL;
+	}
 }
 
 static void gic_do_wait_for_rwp(void __iomem *base)
@@ -196,24 +227,46 @@ static void gic_enable_redist(bool enable)
 /*
  * Routines to disable, enable, EOI and route interrupts
  */
+static u32 convert_offset_index(struct irq_data *d, u32 offset, u32 *index)
+{
+	switch (get_intid_range(d)) {
+	case PPI_RANGE:
+	case SPI_RANGE:
+		*index = d->hwirq;
+		return offset;
+	default:
+		break;
+	}
+
+	WARN_ON(1);
+	*index = d->hwirq;
+	return offset;
+}
+
 static int gic_peek_irq(struct irq_data *d, u32 offset)
 {
-	u32 mask = 1 << (gic_irq(d) % 32);
 	void __iomem *base;
+	u32 index, mask;
+
+	offset = convert_offset_index(d, offset, &index);
+	mask = 1 << (index % 32);
 
 	if (gic_irq_in_rdist(d))
 		base = gic_data_rdist_sgi_base();
 	else
 		base = gic_data.dist_base;
 
-	return !!(readl_relaxed(base + offset + (gic_irq(d) / 32) * 4) & mask);
+	return !!(readl_relaxed(base + offset + (index / 32) * 4) & mask);
 }
 
 static void gic_poke_irq(struct irq_data *d, u32 offset)
 {
-	u32 mask = 1 << (gic_irq(d) % 32);
 	void (*rwp_wait)(void);
 	void __iomem *base;
+	u32 index, mask;
+
+	offset = convert_offset_index(d, offset, &index);
+	mask = 1 << (index % 32);
 
 	if (gic_irq_in_rdist(d)) {
 		base = gic_data_rdist_sgi_base();
@@ -223,7 +276,7 @@ static void gic_poke_irq(struct irq_data *d, u32 offset)
 		rwp_wait = gic_dist_wait_for_rwp;
 	}
 
-	writel_relaxed(mask, base + offset + (gic_irq(d) / 32) * 4);
+	writel_relaxed(mask, base + offset + (index / 32) * 4);
 	rwp_wait();
 }
 
@@ -316,8 +369,11 @@ static int gic_irq_get_irqchip_state(struct irq_data *d,
 static void gic_irq_set_prio(struct irq_data *d, u8 prio)
 {
 	void __iomem *base = gic_dist_base(d);
+	u32 offset, index;
 
-	writeb_relaxed(prio, base + GICD_IPRIORITYR + gic_irq(d));
+	offset = convert_offset_index(d, GICD_IPRIORITYR, &index);
+
+	writeb_relaxed(prio, base + offset + index);
 }
 
 static int gic_irq_nmi_setup(struct irq_data *d)
@@ -407,6 +463,7 @@ static int gic_set_type(struct irq_data *d, unsigned int type)
 	unsigned int irq = gic_irq(d);
 	void (*rwp_wait)(void);
 	void __iomem *base;
+	u32 offset, index;
 	int ret;
 
 	/* Interrupt configuration for SGIs can't be changed */
@@ -426,8 +483,9 @@ static int gic_set_type(struct irq_data *d, unsigned int type)
 		rwp_wait = gic_dist_wait_for_rwp;
 	}
 
+	offset = convert_offset_index(d, GICD_ICFGR, &index);
 
-	ret = gic_configure_irq(irq, type, base + GICD_ICFGR, rwp_wait);
+	ret = gic_configure_irq(index, type, base + offset, rwp_wait);
 	if (ret && irq < 32) {
 		/* Misconfigured PPIs are usually not fatal */
 		pr_warn("GIC: PPI%d is secure or misconfigured\n", irq - 16);
@@ -966,6 +1024,7 @@ static int gic_set_affinity(struct irq_data *d, const struct cpumask *mask_val,
 			    bool force)
 {
 	unsigned int cpu;
+	u32 offset, index;
 	void __iomem *reg;
 	int enabled;
 	u64 val;
@@ -986,7 +1045,8 @@ static int gic_set_affinity(struct irq_data *d, const struct cpumask *mask_val,
 	if (enabled)
 		gic_mask_irq(d);
 
-	reg = gic_dist_base(d) + GICD_IROUTER + (gic_irq(d) * 8);
+	offset = convert_offset_index(d, GICD_IROUTER, &index);
+	reg = gic_dist_base(d) + offset + (index * 8);
 	val = gic_mpidr_to_affinity(cpu_logical_map(cpu));
 
 	gic_write_irouter(val, reg);
@@ -1080,36 +1140,30 @@ static int gic_irq_domain_map(struct irq_domain *d, unsigned int irq,
 	if (static_branch_likely(&supports_deactivate_key))
 		chip = &gic_eoimode1_chip;
 
-	/* SGIs are private to the core kernel */
-	if (hw < 16)
-		return -EPERM;
-	/* Nothing here */
-	if (hw >= gic_data.irq_nr && hw < 8192)
-		return -EPERM;
-	/* Off limits */
-	if (hw >= GIC_ID_NR)
-		return -EPERM;
-
-	/* PPIs */
-	if (hw < 32) {
+	switch (__get_intid_range(hw)) {
+	case PPI_RANGE:
 		irq_set_percpu_devid(irq);
 		irq_domain_set_info(d, irq, hw, chip, d->host_data,
 				    handle_percpu_devid_irq, NULL, NULL);
 		irq_set_status_flags(irq, IRQ_NOAUTOEN);
-	}
-	/* SPIs */
-	if (hw >= 32 && hw < gic_data.irq_nr) {
+		break;
+
+	case SPI_RANGE:
 		irq_domain_set_info(d, irq, hw, chip, d->host_data,
 				    handle_fasteoi_irq, NULL, NULL);
 		irq_set_probe(irq);
 		irqd_set_single_target(irq_desc_get_irq_data(irq_to_desc(irq)));
-	}
-	/* LPIs */
-	if (hw >= 8192 && hw < GIC_ID_NR) {
+		break;
+
+	case LPI_RANGE:
 		if (!gic_dist_supports_lpis())
 			return -EPERM;
 		irq_domain_set_info(d, irq, hw, chip, d->host_data,
 				    handle_fasteoi_irq, NULL, NULL);
+		break;
+
+	default:
+		return -EPERM;
 	}
 
 	return 0;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
