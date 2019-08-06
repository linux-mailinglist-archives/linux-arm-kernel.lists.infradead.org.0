Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F4382F72
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 12:05:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cvupws1k9gUidryXpqUgkZ1KyRbKnCzQIW0Ap9AGXY0=; b=XUmy6OCNyelGeE
	u5L+JegYcBVpic9yJ4nQPVD2m4s27SjOqhkcWAhnbKJw4CxoQZs9MtCNwvj7P1Yk1amN37ZGvS9N7
	ZSb6XR7nHgmETjzIyuwTLrhVsLFoW2zvYQBIpgyb/X5pDpI2wvpVa+P8ejb9Z92eP66fYya4ASrd3
	4awKfM0+WivGRwzS6QXb78lfB8M2d7Ak+2qqhYKVKkrSxJjzXGfnaBxZKJOPCFj0i9NMLCl3a7vYg
	OKt7iCn7JA/U1oZDOHYgecGDD5pUBRa7BtwW4citxHlwPHYXGMwaU/04pWJYUPBN9cDSUHZT74o2v
	dbWcgBCbKyno1b9q9+xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huwKp-0004yW-UB; Tue, 06 Aug 2019 10:04:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1huwHe-0002rk-SP
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 10:01:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0DA651684;
 Tue,  6 Aug 2019 03:01:34 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AEA653F706;
 Tue,  6 Aug 2019 03:01:32 -0700 (PDT)
From: Marc Zyngier <maz@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 04/12] irqchip/gic-v3: Add ESPI range support
Date: Tue,  6 Aug 2019 11:01:13 +0100
Message-Id: <20190806100121.240767-5-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190806100121.240767-1-maz@kernel.org>
References: <20190806100121.240767-1-maz@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_030135_120631_6BACF89D 
X-CRM114-Status: GOOD (  18.59  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Lokesh Vutla <lokeshvutla@ti.com>, John Garry <john.garry@huawei.com>,
 linux-kernel@vger.kernel.org,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the required support for the ESPI range, which behave exactly like
the SPIs of old, only with new funky INTIDs.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 drivers/irqchip/irq-gic-v3.c       | 85 ++++++++++++++++++++++++------
 include/linux/irqchip/arm-gic-v3.h | 17 +++++-
 2 files changed, 85 insertions(+), 17 deletions(-)

diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
index db3bdedd7241..1ca4dde32034 100644
--- a/drivers/irqchip/irq-gic-v3.c
+++ b/drivers/irqchip/irq-gic-v3.c
@@ -51,13 +51,16 @@ struct gic_chip_data {
 	u32			nr_redist_regions;
 	u64			flags;
 	bool			has_rss;
-	unsigned int		irq_nr;
 	struct partition_desc	*ppi_descs[16];
 };
 
 static struct gic_chip_data gic_data __read_mostly;
 static DEFINE_STATIC_KEY_TRUE(supports_deactivate_key);
 
+#define GIC_ID_NR	(1U << GICD_TYPER_ID_BITS(gic_data.rdists.gicd_typer))
+#define GIC_LINE_NR	GICD_TYPER_SPIS(gic_data.rdists.gicd_typer)
+#define GIC_ESPI_NR	GICD_TYPER_ESPIS(gic_data.rdists.gicd_typer)
+
 /*
  * The behaviours of RPR and PMR registers differ depending on the value of
  * SCR_EL3.FIQ, and the behaviour of non-secure priority registers of the
@@ -100,6 +103,7 @@ static DEFINE_PER_CPU(bool, has_rss);
 enum gic_intid_range {
 	PPI_RANGE,
 	SPI_RANGE,
+	ESPI_RANGE,
 	LPI_RANGE,
 	__INVALID_RANGE__
 };
@@ -111,6 +115,8 @@ static enum gic_intid_range __get_intid_range(irq_hw_number_t hwirq)
 		return PPI_RANGE;
 	case 32 ... 1019:
 		return SPI_RANGE;
+	case ESPI_BASE_INTID ... (ESPI_BASE_INTID + 1023):
+		return ESPI_RANGE;
 	case 8192 ... GENMASK(23, 0):
 		return LPI_RANGE;
 	default:
@@ -141,6 +147,7 @@ static inline void __iomem *gic_dist_base(struct irq_data *d)
 		return gic_data_rdist_sgi_base();
 
 	case SPI_RANGE:
+	case ESPI_RANGE:
 		/* SPI -> dist_base */
 		return gic_data.dist_base;
 
@@ -234,6 +241,31 @@ static u32 convert_offset_index(struct irq_data *d, u32 offset, u32 *index)
 	case SPI_RANGE:
 		*index = d->hwirq;
 		return offset;
+	case ESPI_RANGE:
+		*index = d->hwirq - ESPI_BASE_INTID;
+		switch (offset) {
+		case GICD_ISENABLER:
+			return GICD_ISENABLERnE;
+		case GICD_ICENABLER:
+			return GICD_ICENABLERnE;
+		case GICD_ISPENDR:
+			return GICD_ISPENDRnE;
+		case GICD_ICPENDR:
+			return GICD_ICPENDRnE;
+		case GICD_ISACTIVER:
+			return GICD_ISACTIVERnE;
+		case GICD_ICACTIVER:
+			return GICD_ICACTIVERnE;
+		case GICD_IPRIORITYR:
+			return GICD_IPRIORITYRnE;
+		case GICD_ICFGR:
+			return GICD_ICFGRnE;
+		case GICD_IROUTER:
+			return GICD_IROUTERnE;
+		default:
+			break;
+		}
+		break;
 	default:
 		break;
 	}
@@ -316,7 +348,7 @@ static int gic_irq_set_irqchip_state(struct irq_data *d,
 {
 	u32 reg;
 
-	if (d->hwirq >= gic_data.irq_nr) /* PPI/SPI only */
+	if (d->hwirq >= 8192) /* PPI/SPI only */
 		return -EINVAL;
 
 	switch (which) {
@@ -343,7 +375,7 @@ static int gic_irq_set_irqchip_state(struct irq_data *d,
 static int gic_irq_get_irqchip_state(struct irq_data *d,
 				     enum irqchip_irq_state which, bool *val)
 {
-	if (d->hwirq >= gic_data.irq_nr) /* PPI/SPI only */
+	if (d->hwirq >= 8192) /* PPI/SPI only */
 		return -EINVAL;
 
 	switch (which) {
@@ -567,7 +599,12 @@ static asmlinkage void __exception_irq_entry gic_handle_irq(struct pt_regs *regs
 		gic_arch_enable_irqs();
 	}
 
-	if (likely(irqnr > 15 && irqnr < 1020) || irqnr >= 8192) {
+	/* Check for special IDs first */
+	if ((irqnr >= 1020 && irqnr <= 1023))
+		return;
+
+	/* Treat anything but SGIs in a uniform way */
+	if (likely(irqnr > 15)) {
 		int err;
 
 		if (static_branch_likely(&supports_deactivate_key))
@@ -655,10 +692,26 @@ static void __init gic_dist_init(void)
 	 * do the right thing if the kernel is running in secure mode,
 	 * but that's not the intended use case anyway.
 	 */
-	for (i = 32; i < gic_data.irq_nr; i += 32)
+	for (i = 32; i < GIC_LINE_NR; i += 32)
 		writel_relaxed(~0, base + GICD_IGROUPR + i / 8);
 
-	gic_dist_config(base, gic_data.irq_nr, gic_dist_wait_for_rwp);
+	/* Extended SPI range, not handled by the GICv2/GICv3 common code */
+	for (i = 0; i < GIC_ESPI_NR; i += 32) {
+		writel_relaxed(~0U, base + GICD_ICENABLERnE + i / 8);
+		writel_relaxed(~0U, base + GICD_ICACTIVERnE + i / 8);
+	}
+
+	for (i = 0; i < GIC_ESPI_NR; i += 32)
+		writel_relaxed(~0U, base + GICD_IGROUPRnE + i / 8);
+
+	for (i = 0; i < GIC_ESPI_NR; i += 16)
+		writel_relaxed(0, base + GICD_ICFGRnE + i / 4);
+
+	for (i = 0; i < GIC_ESPI_NR; i += 4)
+		writel_relaxed(GICD_INT_DEF_PRI_X4, base + GICD_IPRIORITYRnE + i);
+
+	/* Now do the common stuff, and wait for the distributor to drain */
+	gic_dist_config(base, GIC_LINE_NR, gic_dist_wait_for_rwp);
 
 	/* Enable distributor with ARE, Group1 */
 	writel_relaxed(GICD_CTLR_ARE_NS | GICD_CTLR_ENABLE_G1A | GICD_CTLR_ENABLE_G1,
@@ -669,8 +722,11 @@ static void __init gic_dist_init(void)
 	 * enabled.
 	 */
 	affinity = gic_mpidr_to_affinity(cpu_logical_map(smp_processor_id()));
-	for (i = 32; i < gic_data.irq_nr; i++)
+	for (i = 32; i < GIC_LINE_NR; i++)
 		gic_write_irouter(affinity, base + GICD_IROUTER + i * 8);
+
+	for (i = 0; i < GIC_ESPI_NR; i++)
+		gic_write_irouter(affinity, base + GICD_IROUTERnE + i * 8);
 }
 
 static int gic_iterate_rdists(int (*fn)(struct redist_region *, void __iomem *))
@@ -1134,8 +1190,6 @@ static struct irq_chip gic_eoimode1_chip = {
 				  IRQCHIP_MASK_ON_SUSPEND,
 };
 
-#define GIC_ID_NR	(1U << GICD_TYPER_ID_BITS(gic_data.rdists.gicd_typer))
-
 static int gic_irq_domain_map(struct irq_domain *d, unsigned int irq,
 			      irq_hw_number_t hw)
 {
@@ -1153,6 +1207,7 @@ static int gic_irq_domain_map(struct irq_domain *d, unsigned int irq,
 		break;
 
 	case SPI_RANGE:
+	case ESPI_RANGE:
 		irq_domain_set_info(d, irq, hw, chip, d->host_data,
 				    handle_fasteoi_irq, NULL, NULL);
 		irq_set_probe(irq);
@@ -1192,6 +1247,9 @@ static int gic_irq_domain_translate(struct irq_domain *d,
 		case GIC_IRQ_TYPE_PARTITION:
 			*hwirq = fwspec->param[1] + 16;
 			break;
+		case 2:			/* ESPI */
+			*hwirq = fwspec->param[1] + ESPI_BASE_INTID;
+			break;
 		case GIC_IRQ_TYPE_LPI:	/* LPI */
 			*hwirq = fwspec->param[1];
 			break;
@@ -1346,7 +1404,6 @@ static int __init gic_init_bases(void __iomem *dist_base,
 				 struct fwnode_handle *handle)
 {
 	u32 typer;
-	int gic_irqs;
 	int err;
 
 	if (!is_hyp_mode_available())
@@ -1363,15 +1420,11 @@ static int __init gic_init_bases(void __iomem *dist_base,
 
 	/*
 	 * Find out how many interrupts are supported.
-	 * The GIC only supports up to 1020 interrupt sources (SGI+PPI+SPI)
 	 */
 	typer = readl_relaxed(gic_data.dist_base + GICD_TYPER);
 	gic_data.rdists.gicd_typer = typer;
-	gic_irqs = GICD_TYPER_IRQS(typer);
-	if (gic_irqs > 1020)
-		gic_irqs = 1020;
-	gic_data.irq_nr = gic_irqs;
-
+	pr_info("%d SPIs implemented\n", GIC_LINE_NR - 32);
+	pr_info("%d Extended SPIs implemented\n", GIC_ESPI_NR);
 	gic_data.domain = irq_domain_create_tree(handle, &gic_irq_domain_ops,
 						 &gic_data);
 	irq_domain_update_bus_token(gic_data.domain, DOMAIN_BUS_WIRED);
diff --git a/include/linux/irqchip/arm-gic-v3.h b/include/linux/irqchip/arm-gic-v3.h
index 67c4b9806d43..c523bf1faa55 100644
--- a/include/linux/irqchip/arm-gic-v3.h
+++ b/include/linux/irqchip/arm-gic-v3.h
@@ -30,10 +30,22 @@
 #define GICD_ICFGR			0x0C00
 #define GICD_IGRPMODR			0x0D00
 #define GICD_NSACR			0x0E00
+#define GICD_IGROUPRnE			0x1000
+#define GICD_ISENABLERnE		0x1200
+#define GICD_ICENABLERnE		0x1400
+#define GICD_ISPENDRnE			0x1600
+#define GICD_ICPENDRnE			0x1800
+#define GICD_ISACTIVERnE		0x1A00
+#define GICD_ICACTIVERnE		0x1C00
+#define GICD_IPRIORITYRnE		0x2000
+#define GICD_ICFGRnE			0x3000
 #define GICD_IROUTER			0x6000
+#define GICD_IROUTERnE			0x8000
 #define GICD_IDREGS			0xFFD0
 #define GICD_PIDR2			0xFFE8
 
+#define ESPI_BASE_INTID			4096
+
 /*
  * Those registers are actually from GICv2, but the spec demands that they
  * are implemented as RES0 if ARE is 1 (which we do in KVM's emulated GICv3).
@@ -69,10 +81,13 @@
 #define GICD_TYPER_RSS			(1U << 26)
 #define GICD_TYPER_LPIS			(1U << 17)
 #define GICD_TYPER_MBIS			(1U << 16)
+#define GICD_TYPER_ESPI			(1U << 8)
 
 #define GICD_TYPER_ID_BITS(typer)	((((typer) >> 19) & 0x1f) + 1)
 #define GICD_TYPER_NUM_LPIS(typer)	((((typer) >> 11) & 0x1f) + 1)
-#define GICD_TYPER_IRQS(typer)		((((typer) & 0x1f) + 1) * 32)
+#define GICD_TYPER_SPIS(typer)		((((typer) & 0x1f) + 1) * 32)
+#define GICD_TYPER_ESPIS(typer)						\
+	(((typer) & GICD_TYPER_ESPI) ? GICD_TYPER_SPIS((typer) >> 27) : 0)
 
 #define GICD_IROUTER_SPI_MODE_ONE	(0U << 31)
 #define GICD_IROUTER_SPI_MODE_ANY	(1U << 31)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
