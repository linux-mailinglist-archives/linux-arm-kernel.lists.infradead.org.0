Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA07573C7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 23:38:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/pDL6mtsN1wUMxjsPyarYUx04lr7RmU7dwghI3YOPV4=; b=HuhFQ86fejhZnI
	D9P0jKDKcn/bpWXtWv/nGj3gVpvIQyfT5kdUPl6+LOcddB/cVr6sqjif02Dc0DwHeDRddjUHD0wkc
	+vNsQ6OSmMxGwV59rpw1TMVhAANFesErG+ZpSWruAdfBiC5WcSb/LoY9U0Ymx6S4GivzYmRvo0ZW2
	VATpG76re/+1vPugGL82SUAdq+ZHkRUa/461cadodM1y6SOtrFlqOrsUqmc+11BALeCkw7p71T95k
	/GSh9O1tJ7ssDiB4oBzkeWC77TsI34Se86CO3pIngexglRAYdglzkN1mB9fUNeCzP5tZ7dvBNp434
	aSBhjskBMZrsz5Wpw31Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgFci-0006w3-08; Wed, 26 Jun 2019 21:38:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgFbj-0006Rq-I4
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 21:37:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AAE4A139F;
 Wed, 26 Jun 2019 14:37:34 -0700 (PDT)
Received: from mammon-tx2.austin.arm.com (mammon-tx2.austin.arm.com
 [10.118.30.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A1F4F3F246;
 Wed, 26 Jun 2019 14:37:34 -0700 (PDT)
From: Jeremy Linton <jeremy.linton@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 3/4] arm_pmu: acpi: spe: Add initial MADT/SPE probing
Date: Wed, 26 Jun 2019 16:37:17 -0500
Message-Id: <20190626213718.39423-4-jeremy.linton@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190626213718.39423-1-jeremy.linton@arm.com>
References: <20190626213718.39423-1-jeremy.linton@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_143735_684992_6A898DB6 
X-CRM114-Status: GOOD (  15.49  )
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, will.deacon@arm.com,
 sudeep.holla@arm.com, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 Jeremy Linton <jeremy.linton@arm.com>, linux-acpi@vger.kernel.org,
 catalin.marinas@arm.com, Hanjun Gou <gouhanjun@huawei.com>, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ACPI 6.3 adds additional fields to the MADT GICC
structure to describe SPE PPI's. We pick these out
of the cached reference to the madt_gicc structure
similarly to the core PMU code. We then create a platform
device referring to the IRQ and let the user/module loader
decide whether to load the SPE driver.

Tested-by: Hanjun Gou <gouhanjun@huawei.com>
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
Reviewed-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
---
 arch/arm64/include/asm/acpi.h |  3 ++
 drivers/perf/arm_pmu_acpi.c   | 72 +++++++++++++++++++++++++++++++++++
 include/linux/perf/arm_pmu.h  |  2 +
 3 files changed, 77 insertions(+)

diff --git a/arch/arm64/include/asm/acpi.h b/arch/arm64/include/asm/acpi.h
index ada0bc480a1b..b263e239cb59 100644
--- a/arch/arm64/include/asm/acpi.h
+++ b/arch/arm64/include/asm/acpi.h
@@ -38,6 +38,9 @@
 	(!(entry) || (entry)->header.length < ACPI_MADT_GICC_MIN_LENGTH || \
 	(unsigned long)(entry) + (entry)->header.length > (end))
 
+#define ACPI_MADT_GICC_SPE  (ACPI_OFFSET(struct acpi_madt_generic_interrupt, \
+	spe_interrupt) + sizeof(u16))
+
 /* Basic configuration for ACPI */
 #ifdef	CONFIG_ACPI
 pgprot_t __acpi_get_mem_attribute(phys_addr_t addr);
diff --git a/drivers/perf/arm_pmu_acpi.c b/drivers/perf/arm_pmu_acpi.c
index d2c2978409d2..acce8781c456 100644
--- a/drivers/perf/arm_pmu_acpi.c
+++ b/drivers/perf/arm_pmu_acpi.c
@@ -71,6 +71,76 @@ static void arm_pmu_acpi_unregister_irq(int cpu)
 	acpi_unregister_gsi(gsi);
 }
 
+#if IS_ENABLED(CONFIG_ARM_SPE_PMU)
+static struct resource spe_resources[] = {
+	{
+		/* irq */
+		.flags          = IORESOURCE_IRQ,
+	}
+};
+
+static struct platform_device spe_dev = {
+	.name = ARMV8_SPE_PDEV_NAME,
+	.id = -1,
+	.resource = spe_resources,
+	.num_resources = ARRAY_SIZE(spe_resources)
+};
+
+/*
+ * For lack of a better place, hook the normal PMU MADT walk
+ * and create a SPE device if we detect a recent MADT with
+ * a homogeneous PPI mapping.
+ */
+static void arm_spe_acpi_register_device(void)
+{
+	int cpu, hetid, irq, ret;
+	bool first = true;
+	u16 gsi = 0;
+
+	/*
+	 * Sanity check all the GICC tables for the same interrupt number.
+	 * For now, we only support homogeneous ACPI/SPE machines.
+	 */
+	for_each_possible_cpu(cpu) {
+		struct acpi_madt_generic_interrupt *gicc;
+
+		gicc = acpi_cpu_get_madt_gicc(cpu);
+		if (gicc->header.length < ACPI_MADT_GICC_SPE)
+			return;
+
+		if (first) {
+			gsi = gicc->spe_interrupt;
+			if (!gsi)
+				return;
+			hetid = find_acpi_cpu_topology_hetero_id(cpu);
+			first = false;
+		} else if ((gsi != gicc->spe_interrupt) ||
+			   (hetid != find_acpi_cpu_topology_hetero_id(cpu))) {
+			pr_warn("ACPI: SPE must be homogeneous\n");
+			return;
+		}
+	}
+
+	irq = acpi_register_gsi(NULL, gsi, ACPI_LEVEL_SENSITIVE,
+				ACPI_ACTIVE_HIGH);
+	if (irq < 0) {
+		pr_warn("ACPI: SPE Unable to register interrupt: %d\n", gsi);
+		return;
+	}
+
+	spe_resources[0].start = irq;
+	ret = platform_device_register(&spe_dev);
+	if (ret < 0) {
+		pr_warn("ACPI: SPE: Unable to register device\n");
+		acpi_unregister_gsi(gsi);
+	}
+}
+#else
+static inline void arm_spe_acpi_register_device(void)
+{
+}
+#endif /* CONFIG_ARM_SPE_PMU */
+
 static int arm_pmu_acpi_parse_irqs(void)
 {
 	int irq, cpu, irq_cpu, err;
@@ -276,6 +346,8 @@ static int arm_pmu_acpi_init(void)
 	if (acpi_disabled)
 		return 0;
 
+	arm_spe_acpi_register_device();
+
 	ret = arm_pmu_acpi_parse_irqs();
 	if (ret)
 		return ret;
diff --git a/include/linux/perf/arm_pmu.h b/include/linux/perf/arm_pmu.h
index a9b0ee408fbd..71f525a35ac2 100644
--- a/include/linux/perf/arm_pmu.h
+++ b/include/linux/perf/arm_pmu.h
@@ -171,4 +171,6 @@ void armpmu_free_irq(int irq, int cpu);
 
 #endif /* CONFIG_ARM_PMU */
 
+#define ARMV8_SPE_PDEV_NAME "arm,spe-v1"
+
 #endif /* __ARM_PMU_H__ */
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
