Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CAB882F78
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 12:06:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/kQeKJAj3RbOGpdiqsXCgDSab2NL1Jvw90ptJrY6HAI=; b=uAWoowr+UopsOw
	132rSgV0BNcXjnhtb/QQJlnhvcLkXPAoFz9Lq+Q8y+ypw3MBSYqW5k7IhIabs4ULeyn3MRf56AT7z
	+o3RdiIDzvbkb+5K6K+8jK/GYjAmc7sPWPzlOUtpRc5ZtMmmF69bFEX7ePU94WewqCYJlZO8b8eAl
	N6dSoKoF/sH4uHGw+8bFXUdNnz659G9/eufcY7ZfYK6YTzURNuXl8rskBlJvWhdMyDzyFJuWNr6nB
	R/S5Juv3Jr0hyWnIOoKVLaxFqHlc3kgkpTAlm/5cGDEt4lYqmIm3xDnS2dKVklHIl82kgayQsBsGM
	1KcHoZkSnJaZVI7DWkeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huwMO-0007My-79; Tue, 06 Aug 2019 10:06:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1huwHl-0002so-I1
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 10:01:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4C6611597;
 Tue,  6 Aug 2019 03:01:41 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 142873F706;
 Tue,  6 Aug 2019 03:01:39 -0700 (PDT)
From: Marc Zyngier <maz@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 09/12] irqchip/gic-v3: Add EPPI range support
Date: Tue,  6 Aug 2019 11:01:18 +0100
Message-Id: <20190806100121.240767-10-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190806100121.240767-1-maz@kernel.org>
References: <20190806100121.240767-1-maz@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_030141_792819_72D0785D 
X-CRM114-Status: GOOD (  16.74  )
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

Expand the pre-existing PPI support to be able to deal with the
Extended PPI range (EPPI). This includes obtaining the number of PPIs
from each individual redistributor, and compute the minimum set
(just in case someone builds something really clever...).

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 drivers/irqchip/irq-gic-v3.c       | 42 +++++++++++++++++++++++++-----
 include/linux/irqchip/arm-gic-v3.h | 12 +++++++++
 2 files changed, 47 insertions(+), 7 deletions(-)

diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
index 34f8a96bd747..f53e58d398ba 100644
--- a/drivers/irqchip/irq-gic-v3.c
+++ b/drivers/irqchip/irq-gic-v3.c
@@ -104,6 +104,7 @@ static DEFINE_PER_CPU(bool, has_rss);
 enum gic_intid_range {
 	PPI_RANGE,
 	SPI_RANGE,
+	EPPI_RANGE,
 	ESPI_RANGE,
 	LPI_RANGE,
 	__INVALID_RANGE__
@@ -116,6 +117,8 @@ static enum gic_intid_range __get_intid_range(irq_hw_number_t hwirq)
 		return PPI_RANGE;
 	case 32 ... 1019:
 		return SPI_RANGE;
+	case EPPI_BASE_INTID ... (EPPI_BASE_INTID + 63):
+		return EPPI_RANGE;
 	case ESPI_BASE_INTID ... (ESPI_BASE_INTID + 1023):
 		return ESPI_RANGE;
 	case 8192 ... GENMASK(23, 0):
@@ -137,13 +140,15 @@ static inline unsigned int gic_irq(struct irq_data *d)
 
 static inline int gic_irq_in_rdist(struct irq_data *d)
 {
-	return get_intid_range(d) == PPI_RANGE;
+	enum gic_intid_range range = get_intid_range(d);
+	return range == PPI_RANGE || range == EPPI_RANGE;
 }
 
 static inline void __iomem *gic_dist_base(struct irq_data *d)
 {
 	switch (get_intid_range(d)) {
 	case PPI_RANGE:
+	case EPPI_RANGE:
 		/* SGI+PPI -> SGI_base for this CPU */
 		return gic_data_rdist_sgi_base();
 
@@ -242,6 +247,14 @@ static u32 convert_offset_index(struct irq_data *d, u32 offset, u32 *index)
 	case SPI_RANGE:
 		*index = d->hwirq;
 		return offset;
+	case EPPI_RANGE:
+		/*
+		 * Contrary to the ESPI range, the EPPI range is contiguous
+		 * to the PPI range in the registers, so let's adjust the
+		 * displacement accordingly. Consistency is overrated.
+		 */
+		*index = d->hwirq - EPPI_BASE_INTID + 32;
+		return offset;
 	case ESPI_RANGE:
 		*index = d->hwirq - ESPI_BASE_INTID;
 		switch (offset) {
@@ -414,6 +427,8 @@ static u32 gic_get_ppi_index(struct irq_data *d)
 	switch (get_intid_range(d)) {
 	case PPI_RANGE:
 		return d->hwirq - 16;
+	case EPPI_RANGE:
+		return d->hwirq - EPPI_BASE_INTID + 16;
 	default:
 		unreachable();
 	}
@@ -507,6 +522,7 @@ static void gic_eoimode1_eoi_irq(struct irq_data *d)
 
 static int gic_set_type(struct irq_data *d, unsigned int type)
 {
+	enum gic_intid_range range;
 	unsigned int irq = gic_irq(d);
 	void (*rwp_wait)(void);
 	void __iomem *base;
@@ -517,9 +533,11 @@ static int gic_set_type(struct irq_data *d, unsigned int type)
 	if (irq < 16)
 		return -EINVAL;
 
+	range = get_intid_range(d);
+
 	/* SPIs have restrictions on the supported types */
-	if (irq >= 32 && type != IRQ_TYPE_LEVEL_HIGH &&
-			 type != IRQ_TYPE_EDGE_RISING)
+	if ((range == SPI_RANGE || range == ESPI_RANGE) &&
+	    type != IRQ_TYPE_LEVEL_HIGH && type != IRQ_TYPE_EDGE_RISING)
 		return -EINVAL;
 
 	if (gic_irq_in_rdist(d)) {
@@ -533,9 +551,9 @@ static int gic_set_type(struct irq_data *d, unsigned int type)
 	offset = convert_offset_index(d, GICD_ICFGR, &index);
 
 	ret = gic_configure_irq(index, type, base + offset, rwp_wait);
-	if (ret && irq < 32) {
+	if (ret && (range == PPI_RANGE || range == EPPI_RANGE)) {
 		/* Misconfigured PPIs are usually not fatal */
-		pr_warn("GIC: PPI%d is secure or misconfigured\n", irq - 16);
+		pr_warn("GIC: PPI INTID%d is secure or misconfigured\n", irq);
 		ret = 0;
 	}
 
@@ -833,7 +851,7 @@ static int __gic_update_rdist_properties(struct redist_region *region,
 	u64 typer = gic_read_typer(ptr + GICR_TYPER);
 	gic_data.rdists.has_vlpis &= !!(typer & GICR_TYPER_VLPIS);
 	gic_data.rdists.has_direct_lpi &= !!(typer & GICR_TYPER_DirectLPIS);
-	gic_data.ppi_nr = 16;
+	gic_data.ppi_nr = min(GICR_TYPER_NR_PPIS(typer), gic_data.ppi_nr);
 
 	return 1;
 }
@@ -1222,6 +1240,7 @@ static int gic_irq_domain_map(struct irq_domain *d, unsigned int irq,
 
 	switch (__get_intid_range(hw)) {
 	case PPI_RANGE:
+	case EPPI_RANGE:
 		irq_set_percpu_devid(irq);
 		irq_domain_set_info(d, irq, hw, chip, d->host_data,
 				    handle_percpu_devid_irq, NULL, NULL);
@@ -1266,15 +1285,24 @@ static int gic_irq_domain_translate(struct irq_domain *d,
 			*hwirq = fwspec->param[1] + 32;
 			break;
 		case 1:			/* PPI */
-		case GIC_IRQ_TYPE_PARTITION:
 			*hwirq = fwspec->param[1] + 16;
 			break;
 		case 2:			/* ESPI */
 			*hwirq = fwspec->param[1] + ESPI_BASE_INTID;
 			break;
+		case 3:			/* EPPI */
+			*hwirq = fwspec->param[1] + EPPI_BASE_INTID;
+			break;
 		case GIC_IRQ_TYPE_LPI:	/* LPI */
 			*hwirq = fwspec->param[1];
 			break;
+		case GIC_IRQ_TYPE_PARTITION:
+			*hwirq = fwspec->param[1];
+			if (fwspec->param[1] >= 16)
+				*hwirq += EPPI_BASE_INTID - 16;
+			else
+				*hwirq += 16;
+			break;
 		default:
 			return -EINVAL;
 		}
diff --git a/include/linux/irqchip/arm-gic-v3.h b/include/linux/irqchip/arm-gic-v3.h
index c523bf1faa55..9ec3349dee04 100644
--- a/include/linux/irqchip/arm-gic-v3.h
+++ b/include/linux/irqchip/arm-gic-v3.h
@@ -124,6 +124,18 @@
 
 #define GICR_TYPER_CPU_NUMBER(r)	(((r) >> 8) & 0xffff)
 
+#define EPPI_BASE_INTID			1056
+
+#define GICR_TYPER_NR_PPIS(r)						\
+	({								\
+		unsigned int __ppinum = ((r) >> 27) & 0x1f;		\
+		unsigned int __nr_ppis = 16;				\
+		if (__ppinum == 1 || __ppinum == 2)			\
+			__nr_ppis +=  __ppinum * 32;			\
+									\
+		__nr_ppis;						\
+	 })
+
 #define GICR_WAKER_ProcessorSleep	(1U << 1)
 #define GICR_WAKER_ChildrenAsleep	(1U << 2)
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
