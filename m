Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E13AE153F8E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 09:00:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SW4ARtlxuuxNbf7MKeuOVc3XJD+CeobQzfiDYcLbsdQ=; b=DiAB6V2j9dEk//
	ns6lk8D0tWJ1cC9cwsudIRyABB8bBxl/6zC0KPuWuoczSkOzGyAJE+H6R/LoEso8+jxsayWkNttr1
	vi6IUYsYlIT3tfUHVRqlJ1Sz+5nyZwqkst1dS2TJcAuiA6fjusNltizuoHoYxjgCEWJpjan/0G3Qb
	aIvelAzBKQW9GQeQrlfDjZkooTvblnpiRr1t1Zw7YXf+iOOOov1LNrw0SEd3Dp9d26dKWO8B/ofHN
	nJeC4ueVJpYXxzqtKTvF1NHfD8AcBL22Cdcsfp7hqIkmu5ROe+xMdbpMAqVK1hNwteIC/e0/d6/nI
	RghxuLcUbipjEnUUrv/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izc4q-0000H1-4U; Thu, 06 Feb 2020 07:59:56 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izc3f-0007Jh-5k
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 07:58:46 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id EA65DF750A52A2234C2B;
 Thu,  6 Feb 2020 15:58:37 +0800 (CST)
Received: from DESKTOP-8RFUVS3.china.huawei.com (10.173.222.27) by
 DGGEMS409-HUB.china.huawei.com (10.3.19.209) with Microsoft SMTP Server id
 14.3.439.0; Thu, 6 Feb 2020 15:58:27 +0800
From: Zenghui Yu <yuzenghui@huawei.com>
To: <linux-kernel@vger.kernel.org>, <maz@kernel.org>
Subject: [PATCH v2 6/6] irqchip/gic-v3-its: Rename VPENDBASER/VPROPBASER
 accessors
Date: Thu, 6 Feb 2020 15:57:11 +0800
Message-ID: <20200206075711.1275-7-yuzenghui@huawei.com>
X-Mailer: git-send-email 2.23.0.windows.1
In-Reply-To: <20200206075711.1275-1-yuzenghui@huawei.com>
References: <20200206075711.1275-1-yuzenghui@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_235844_592374_3B41DCDC 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: jason@lakedaemon.net, Zenghui Yu <yuzenghui@huawei.com>,
 wanghaibin.wang@huawei.com, tglx@linutronix.de, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V{PEND,PROP}BASER registers are actually located in VLPI_base frame
of the *redistributor*. Rename their accessors to reflect this fact.

No functional changes.

Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
---
 arch/arm/include/asm/arch_gicv3.h   | 12 ++++++------
 arch/arm64/include/asm/arch_gicv3.h |  8 ++++----
 drivers/irqchip/irq-gic-v3-its.c    | 28 ++++++++++++++--------------
 3 files changed, 24 insertions(+), 24 deletions(-)

diff --git a/arch/arm/include/asm/arch_gicv3.h b/arch/arm/include/asm/arch_gicv3.h
index b5752f0e8936..c815477b4303 100644
--- a/arch/arm/include/asm/arch_gicv3.h
+++ b/arch/arm/include/asm/arch_gicv3.h
@@ -326,16 +326,16 @@ static inline u64 __gic_readq_nonatomic(const volatile void __iomem *addr)
 #define gits_write_cwriter(v, c)	__gic_writeq_nonatomic(v, c)
 
 /*
- * GITS_VPROPBASER - hi and lo bits may be accessed independently.
+ * GICR_VPROPBASER - hi and lo bits may be accessed independently.
  */
-#define gits_read_vpropbaser(c)		__gic_readq_nonatomic(c)
-#define gits_write_vpropbaser(v, c)	__gic_writeq_nonatomic(v, c)
+#define gicr_read_vpropbaser(c)		__gic_readq_nonatomic(c)
+#define gicr_write_vpropbaser(v, c)	__gic_writeq_nonatomic(v, c)
 
 /*
- * GITS_VPENDBASER - the Valid bit must be cleared before changing
+ * GICR_VPENDBASER - the Valid bit must be cleared before changing
  * anything else.
  */
-static inline void gits_write_vpendbaser(u64 val, void __iomem *addr)
+static inline void gicr_write_vpendbaser(u64 val, void __iomem *addr)
 {
 	u32 tmp;
 
@@ -352,7 +352,7 @@ static inline void gits_write_vpendbaser(u64 val, void __iomem *addr)
 	__gic_writeq_nonatomic(val, addr);
 }
 
-#define gits_read_vpendbaser(c)		__gic_readq_nonatomic(c)
+#define gicr_read_vpendbaser(c)		__gic_readq_nonatomic(c)
 
 static inline bool gic_prio_masking_enabled(void)
 {
diff --git a/arch/arm64/include/asm/arch_gicv3.h b/arch/arm64/include/asm/arch_gicv3.h
index 4750fc8030c3..25fec4bde43a 100644
--- a/arch/arm64/include/asm/arch_gicv3.h
+++ b/arch/arm64/include/asm/arch_gicv3.h
@@ -140,11 +140,11 @@ static inline u32 gic_read_rpr(void)
 #define gicr_write_pendbaser(v, c)	writeq_relaxed(v, c)
 #define gicr_read_pendbaser(c)		readq_relaxed(c)
 
-#define gits_write_vpropbaser(v, c)	writeq_relaxed(v, c)
-#define gits_read_vpropbaser(c)		readq_relaxed(c)
+#define gicr_write_vpropbaser(v, c)	writeq_relaxed(v, c)
+#define gicr_read_vpropbaser(c)		readq_relaxed(c)
 
-#define gits_write_vpendbaser(v, c)	writeq_relaxed(v, c)
-#define gits_read_vpendbaser(c)		readq_relaxed(c)
+#define gicr_write_vpendbaser(v, c)	writeq_relaxed(v, c)
+#define gicr_read_vpendbaser(c)		readq_relaxed(c)
 
 static inline bool gic_prio_masking_enabled(void)
 {
diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
index 811875bf3abb..1ee95f546cb0 100644
--- a/drivers/irqchip/irq-gic-v3-its.c
+++ b/drivers/irqchip/irq-gic-v3-its.c
@@ -2429,7 +2429,7 @@ static u64 inherit_vpe_l1_table_from_rd(cpumask_t **mask)
 		 * ours wrt CommonLPIAff. Let's use its own VPROPBASER.
 		 * Make sure we don't write the Z bit in that case.
 		 */
-		val = gits_read_vpropbaser(base + SZ_128K + GICR_VPROPBASER);
+		val = gicr_read_vpropbaser(base + SZ_128K + GICR_VPROPBASER);
 		val &= ~GICR_VPROPBASER_4_1_Z;
 
 		gic_data_rdist()->vpe_l1_base = gic_data_rdist_cpu(cpu)->vpe_l1_base;
@@ -2452,7 +2452,7 @@ static bool allocate_vpe_l2_table(int cpu, u32 id)
 	if (!gic_rdists->has_rvpeid)
 		return true;
 
-	val  = gits_read_vpropbaser(base + SZ_128K + GICR_VPROPBASER);
+	val  = gicr_read_vpropbaser(base + SZ_128K + GICR_VPROPBASER);
 
 	esz  = FIELD_GET(GICR_VPROPBASER_4_1_ENTRY_SIZE, val) + 1;
 	gpsz = FIELD_GET(GICR_VPROPBASER_4_1_PAGE_SIZE, val);
@@ -2524,8 +2524,8 @@ static int allocate_vpe_l1_table(void)
 	 * effect of making sure no doorbell will be generated and we can
 	 * then safely clear VPROPBASER.Valid.
 	 */
-	if (gits_read_vpendbaser(vlpi_base + GICR_VPENDBASER) & GICR_VPENDBASER_Valid)
-		gits_write_vpendbaser(GICR_VPENDBASER_PendingLast,
+	if (gicr_read_vpendbaser(vlpi_base + GICR_VPENDBASER) & GICR_VPENDBASER_Valid)
+		gicr_write_vpendbaser(GICR_VPENDBASER_PendingLast,
 				      vlpi_base + GICR_VPENDBASER);
 
 	/*
@@ -2548,8 +2548,8 @@ static int allocate_vpe_l1_table(void)
 
 	/* First probe the page size */
 	val = FIELD_PREP(GICR_VPROPBASER_4_1_PAGE_SIZE, GIC_PAGE_SIZE_64K);
-	gits_write_vpropbaser(val, vlpi_base + GICR_VPROPBASER);
-	val = gits_read_vpropbaser(vlpi_base + GICR_VPROPBASER);
+	gicr_write_vpropbaser(val, vlpi_base + GICR_VPROPBASER);
+	val = gicr_read_vpropbaser(vlpi_base + GICR_VPROPBASER);
 	gpsz = FIELD_GET(GICR_VPROPBASER_4_1_PAGE_SIZE, val);
 	esz = FIELD_GET(GICR_VPROPBASER_4_1_ENTRY_SIZE, val);
 
@@ -2620,7 +2620,7 @@ static int allocate_vpe_l1_table(void)
 	val |= GICR_VPROPBASER_4_1_VALID;
 
 out:
-	gits_write_vpropbaser(val, vlpi_base + GICR_VPROPBASER);
+	gicr_write_vpropbaser(val, vlpi_base + GICR_VPROPBASER);
 	cpumask_set_cpu(smp_processor_id(), gic_data_rdist()->vpe_table_mask);
 
 	pr_debug("CPU%d: VPROPBASER = %llx %*pbl\n",
@@ -2727,14 +2727,14 @@ static u64 its_clear_vpend_valid(void __iomem *vlpi_base, u64 clr, u64 set)
 	bool clean;
 	u64 val;
 
-	val = gits_read_vpendbaser(vlpi_base + GICR_VPENDBASER);
+	val = gicr_read_vpendbaser(vlpi_base + GICR_VPENDBASER);
 	val &= ~GICR_VPENDBASER_Valid;
 	val &= ~clr;
 	val |= set;
-	gits_write_vpendbaser(val, vlpi_base + GICR_VPENDBASER);
+	gicr_write_vpendbaser(val, vlpi_base + GICR_VPENDBASER);
 
 	do {
-		val = gits_read_vpendbaser(vlpi_base + GICR_VPENDBASER);
+		val = gicr_read_vpendbaser(vlpi_base + GICR_VPENDBASER);
 		clean = !(val & GICR_VPENDBASER_Dirty);
 		if (!clean) {
 			count--;
@@ -2849,7 +2849,7 @@ static void its_cpu_init_lpis(void)
 		val = (LPI_NRBITS - 1) & GICR_VPROPBASER_IDBITS_MASK;
 		pr_debug("GICv4: CPU%d: Init IDbits to 0x%llx for GICR_VPROPBASER\n",
 			smp_processor_id(), val);
-		gits_write_vpropbaser(val, vlpi_base + GICR_VPROPBASER);
+		gicr_write_vpropbaser(val, vlpi_base + GICR_VPROPBASER);
 
 		/*
 		 * Also clear Valid bit of GICR_VPENDBASER, in case some
@@ -3523,7 +3523,7 @@ static void its_vpe_schedule(struct its_vpe *vpe)
 	val |= (LPI_NRBITS - 1) & GICR_VPROPBASER_IDBITS_MASK;
 	val |= GICR_VPROPBASER_RaWb;
 	val |= GICR_VPROPBASER_InnerShareable;
-	gits_write_vpropbaser(val, vlpi_base + GICR_VPROPBASER);
+	gicr_write_vpropbaser(val, vlpi_base + GICR_VPROPBASER);
 
 	val  = virt_to_phys(page_address(vpe->vpt_page)) &
 		GENMASK_ULL(51, 16);
@@ -3541,7 +3541,7 @@ static void its_vpe_schedule(struct its_vpe *vpe)
 	val |= GICR_VPENDBASER_PendingLast;
 	val |= vpe->idai ? GICR_VPENDBASER_IDAI : 0;
 	val |= GICR_VPENDBASER_Valid;
-	gits_write_vpendbaser(val, vlpi_base + GICR_VPENDBASER);
+	gicr_write_vpendbaser(val, vlpi_base + GICR_VPENDBASER);
 }
 
 static void its_vpe_deschedule(struct its_vpe *vpe)
@@ -3741,7 +3741,7 @@ static void its_vpe_4_1_schedule(struct its_vpe *vpe,
 	val |= info->g1en ? GICR_VPENDBASER_4_1_VGRP1EN : 0;
 	val |= FIELD_PREP(GICR_VPENDBASER_4_1_VPEID, vpe->vpe_id);
 
-	gits_write_vpendbaser(val, vlpi_base + GICR_VPENDBASER);
+	gicr_write_vpendbaser(val, vlpi_base + GICR_VPENDBASER);
 }
 
 static void its_vpe_4_1_deschedule(struct its_vpe *vpe,
-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
