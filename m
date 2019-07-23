Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B037167B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 12:46:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8xGXfK7cZ/MGQkMth+JkWEYuQaSW6aTM5Ln2FocnbDY=; b=BCvZTI56GhVCd5
	elyJh+YZFlrueqbqdHiNSCAbVU6bSvDaWIC66BvO2vLvb8MmN1eDJjAwZueozJ3ZjrWEjaMcTZPMG
	LAKgNV3gTROh7SH9ZWAY/wDDxV++LDnZUxkbMIGbAobEgASgJufitFFS3+1K4y6O8TSaZvKBcEw+H
	t0Zx7zPNNzlOVK13g9zxv25lyzINMjAy/knoKvI6BEAT9QaQRAlG6/oAmDWYPsGjiiGlduWXNebOp
	TXcAniW1EKuKLC8CtILZ5meUI8YlCeTgc906gYjRTdJ9DrwCaUZlL9Zy4iR0xlgI4/l+c+pwLbqTS
	9XdINZyWwY/4BbPm4t3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpsJf-0000SL-51; Tue, 23 Jul 2019 10:46:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpsHt-0006W5-Bn
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 10:44:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D661415A1;
 Tue, 23 Jul 2019 03:44:52 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EEA783F71A;
 Tue, 23 Jul 2019 03:44:51 -0700 (PDT)
From: Marc Zyngier <maz@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 5/9] irqchip/gic: Prepare for more than 16 PPIs
Date: Tue, 23 Jul 2019 11:44:33 +0100
Message-Id: <20190723104437.154403-6-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190723104437.154403-1-maz@kernel.org>
References: <20190723104437.154403-1-maz@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_034453_540519_84B0A298 
X-CRM114-Status: GOOD (  14.60  )
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

GICv3.1 allows up to 80 PPIs (16 legaci PPIs and 64 Extended PPIs),
meaning we can't just leave the old 16 hardcoded everywhere.

We also need to add the infrastructure to discuver the number of PPIs
on a per redistributor basis, although we still pretend there is only
16 of them for now.

No functional change.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 drivers/irqchip/irq-gic-common.c | 19 ++++++++++++-------
 drivers/irqchip/irq-gic-common.h |  2 +-
 drivers/irqchip/irq-gic-v3.c     | 22 +++++++++++++++-------
 drivers/irqchip/irq-gic.c        |  2 +-
 drivers/irqchip/irq-hip04.c      |  2 +-
 5 files changed, 30 insertions(+), 17 deletions(-)

diff --git a/drivers/irqchip/irq-gic-common.c b/drivers/irqchip/irq-gic-common.c
index 6900b6f0921c..14110db01c05 100644
--- a/drivers/irqchip/irq-gic-common.c
+++ b/drivers/irqchip/irq-gic-common.c
@@ -128,26 +128,31 @@ void gic_dist_config(void __iomem *base, int gic_irqs,
 		sync_access();
 }
 
-void gic_cpu_config(void __iomem *base, void (*sync_access)(void))
+void gic_cpu_config(void __iomem *base, int nr, void (*sync_access)(void))
 {
 	int i;
 
 	/*
 	 * Deal with the banked PPI and SGI interrupts - disable all
-	 * PPI interrupts, ensure all SGI interrupts are enabled.
-	 * Make sure everything is deactivated.
+	 * private interrupts. Make sure everything is deactivated.
 	 */
-	writel_relaxed(GICD_INT_EN_CLR_X32, base + GIC_DIST_ACTIVE_CLEAR);
-	writel_relaxed(GICD_INT_EN_CLR_PPI, base + GIC_DIST_ENABLE_CLEAR);
-	writel_relaxed(GICD_INT_EN_SET_SGI, base + GIC_DIST_ENABLE_SET);
+	for (i = 0; i < nr; i += 32) {
+		writel_relaxed(GICD_INT_EN_CLR_X32,
+			       base + GIC_DIST_ACTIVE_CLEAR + i / 8);
+		writel_relaxed(GICD_INT_EN_CLR_X32,
+			       base + GIC_DIST_ENABLE_CLEAR + i / 8);
+	}
 
 	/*
 	 * Set priority on PPI and SGI interrupts
 	 */
-	for (i = 0; i < 32; i += 4)
+	for (i = 0; i < nr; i += 4)
 		writel_relaxed(GICD_INT_DEF_PRI_X4,
 					base + GIC_DIST_PRI + i * 4 / 4);
 
+	/* Ensure all SGI interrupts are now enabled */
+	writel_relaxed(GICD_INT_EN_SET_SGI, base + GIC_DIST_ENABLE_SET);
+
 	if (sync_access)
 		sync_access();
 }
diff --git a/drivers/irqchip/irq-gic-common.h b/drivers/irqchip/irq-gic-common.h
index 5a46b6b57750..ccba8b0fe0f5 100644
--- a/drivers/irqchip/irq-gic-common.h
+++ b/drivers/irqchip/irq-gic-common.h
@@ -22,7 +22,7 @@ int gic_configure_irq(unsigned int irq, unsigned int type,
                        void __iomem *base, void (*sync_access)(void));
 void gic_dist_config(void __iomem *base, int gic_irqs,
 		     void (*sync_access)(void));
-void gic_cpu_config(void __iomem *base, void (*sync_access)(void));
+void gic_cpu_config(void __iomem *base, int nr, void (*sync_access)(void));
 void gic_enable_quirks(u32 iidr, const struct gic_quirk *quirks,
 		void *data);
 void gic_enable_of_quirks(const struct device_node *np,
diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
index d328a8de533f..2d4ecf36d0fd 100644
--- a/drivers/irqchip/irq-gic-v3.c
+++ b/drivers/irqchip/irq-gic-v3.c
@@ -51,6 +51,7 @@ struct gic_chip_data {
 	u32			nr_redist_regions;
 	u64			flags;
 	bool			has_rss;
+	unsigned int		ppi_nr;
 	struct partition_desc	*ppi_descs[16];
 };
 
@@ -812,19 +813,24 @@ static int gic_populate_rdist(void)
 	return -ENODEV;
 }
 
-static int __gic_update_vlpi_properties(struct redist_region *region,
-					void __iomem *ptr)
+static int __gic_update_rdist_properties(struct redist_region *region,
+					 void __iomem *ptr)
 {
 	u64 typer = gic_read_typer(ptr + GICR_TYPER);
 	gic_data.rdists.has_vlpis &= !!(typer & GICR_TYPER_VLPIS);
 	gic_data.rdists.has_direct_lpi &= !!(typer & GICR_TYPER_DirectLPIS);
+	gic_data.ppi_nr = 16;
 
 	return 1;
 }
 
-static void gic_update_vlpi_properties(void)
+static void gic_update_rdist_properties(void)
 {
-	gic_iterate_rdists(__gic_update_vlpi_properties);
+	gic_data.ppi_nr = UINT_MAX;
+	gic_iterate_rdists(__gic_update_rdist_properties);
+	if (WARN_ON(gic_data.ppi_nr == UINT_MAX))
+		gic_data.ppi_nr = 0;
+	pr_info("%d PPIs implemented\n", gic_data.ppi_nr);
 	pr_info("%sVLPI support, %sdirect LPI support\n",
 		!gic_data.rdists.has_vlpis ? "no " : "",
 		!gic_data.rdists.has_direct_lpi ? "no " : "");
@@ -964,6 +970,7 @@ static int gic_dist_supports_lpis(void)
 static void gic_cpu_init(void)
 {
 	void __iomem *rbase;
+	int i;
 
 	/* Register ourselves with the rest of the world */
 	if (gic_populate_rdist())
@@ -974,9 +981,10 @@ static void gic_cpu_init(void)
 	rbase = gic_data_rdist_sgi_base();
 
 	/* Configure SGIs/PPIs as non-secure Group-1 */
-	writel_relaxed(~0, rbase + GICR_IGROUPR0);
+	for (i = 0; i < gic_data.ppi_nr + 16; i += 32)
+		writel_relaxed(~0, rbase + GICR_IGROUPR0 + i / 8);
 
-	gic_cpu_config(rbase, gic_redist_wait_for_rwp);
+	gic_cpu_config(rbase, gic_data.ppi_nr + 16, gic_redist_wait_for_rwp);
 
 	/* initialise system registers */
 	gic_cpu_sys_reg_init();
@@ -1445,7 +1453,7 @@ static int __init gic_init_bases(void __iomem *dist_base,
 
 	set_handle_irq(gic_handle_irq);
 
-	gic_update_vlpi_properties();
+	gic_update_rdist_properties();
 
 	gic_smp_init();
 	gic_dist_init();
diff --git a/drivers/irqchip/irq-gic.c b/drivers/irqchip/irq-gic.c
index ab48760acabb..25c1ae69db30 100644
--- a/drivers/irqchip/irq-gic.c
+++ b/drivers/irqchip/irq-gic.c
@@ -543,7 +543,7 @@ static int gic_cpu_init(struct gic_chip_data *gic)
 				gic_cpu_map[i] &= ~cpu_mask;
 	}
 
-	gic_cpu_config(dist_base, NULL);
+	gic_cpu_config(dist_base, 32, NULL);
 
 	writel_relaxed(GICC_INT_PRI_THRESHOLD, base + GIC_CPU_PRIMASK);
 	gic_cpu_if_up(gic);
diff --git a/drivers/irqchip/irq-hip04.c b/drivers/irqchip/irq-hip04.c
index 1626131834a6..130caa1c9d93 100644
--- a/drivers/irqchip/irq-hip04.c
+++ b/drivers/irqchip/irq-hip04.c
@@ -273,7 +273,7 @@ static void hip04_irq_cpu_init(struct hip04_irq_data *intc)
 		if (i != cpu)
 			hip04_cpu_map[i] &= ~cpu_mask;
 
-	gic_cpu_config(dist_base, NULL);
+	gic_cpu_config(dist_base, 32, NULL);
 
 	writel_relaxed(0xf0, base + GIC_CPU_PRIMASK);
 	writel_relaxed(1, base + GIC_CPU_CTRL);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
