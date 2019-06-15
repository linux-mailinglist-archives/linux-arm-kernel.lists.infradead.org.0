Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6B1F46D69
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 03:11:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CxFzxFyD+nklRaZdbCFQjjixTJKLqaR6dSqQc0kg4Ro=; b=lHRD5bkFXvejFX
	aytbYVIVpX5IbaEG+MJmI2iXsh+IqW0z8W4JJxaZmt1YCEaMMiayzFWkNqDGHLIB2vJb16F/ihw6+
	VcqmKuW8lSOmMYCCuNK/h5j6emI/L8fqeoFVOHqQmsGghWVGlsoy+Ned7F/hRqJZCLzc61NfWoW1c
	rUVH85nLMG/GR/wXI1G8W7ltR7t/OJYsKJusSbEQBn37wr0yyTK1EwB+R0/f5xd8gty1CJABIsrD4
	4Bm6N6YgycOpZEdaugNUnCMWsExMxRSroqcw2NF45brb5jXVr9Co7jDZ/tykBtdxVL9K/pETi4iTZ
	s1btWw5tuGM8VgLIj75A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbxEO-0007O7-CU; Sat, 15 Jun 2019 01:11:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbxDh-0006xV-CG
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 01:11:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DDD6C2B;
 Fri, 14 Jun 2019 18:11:00 -0700 (PDT)
Received: from mammon-tx2.austin.arm.com (mammon-tx2.austin.arm.com
 [10.118.30.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D548B3F718;
 Fri, 14 Jun 2019 18:11:00 -0700 (PDT)
From: Jeremy Linton <jeremy.linton@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/4] arm_pmu: acpi: spe: Add initial MADT/SPE probing
Date: Fri, 14 Jun 2019 20:09:09 -0500
Message-Id: <20190615010910.33921-4-jeremy.linton@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190615010910.33921-1-jeremy.linton@arm.com>
References: <20190615010910.33921-1-jeremy.linton@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_181101_506356_B2458A84 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, will.deacon@arm.com,
 sudeep.holla@arm.com, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 Jeremy Linton <jeremy.linton@arm.com>, linux-acpi@vger.kernel.org,
 catalin.marinas@arm.com, lenb@kernel.org
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

Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
---
 arch/arm64/include/asm/acpi.h |  3 ++
 drivers/perf/arm_pmu_acpi.c   | 75 +++++++++++++++++++++++++++++++++++
 include/linux/perf/arm_pmu.h  |  2 +
 3 files changed, 80 insertions(+)

diff --git a/arch/arm64/include/asm/acpi.h b/arch/arm64/include/asm/acpi.h
index 7628efbe6c12..d10399b9f998 100644
--- a/arch/arm64/include/asm/acpi.h
+++ b/arch/arm64/include/asm/acpi.h
@@ -41,6 +41,9 @@
 	(!(entry) || (entry)->header.length < ACPI_MADT_GICC_MIN_LENGTH || \
 	(unsigned long)(entry) + (entry)->header.length > (end))
 
+#define ACPI_MADT_GICC_SPE  (ACPI_OFFSET(struct acpi_madt_generic_interrupt, \
+	spe_interrupt) + sizeof(u16))
+
 /* Basic configuration for ACPI */
 #ifdef	CONFIG_ACPI
 pgprot_t __acpi_get_mem_attribute(phys_addr_t addr);
diff --git a/drivers/perf/arm_pmu_acpi.c b/drivers/perf/arm_pmu_acpi.c
index 0f197516d708..f5df100bc4f4 100644
--- a/drivers/perf/arm_pmu_acpi.c
+++ b/drivers/perf/arm_pmu_acpi.c
@@ -74,6 +74,79 @@ static void arm_pmu_acpi_unregister_irq(int cpu)
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
+static int arm_spe_acpi_register_device(void)
+{
+	int cpu, hetid, irq, ret;
+	bool first = true;
+	u16 gsi = 0;
+
+	/*
+	 * sanity check all the GICC tables for the same interrupt number
+	 * for now we only support homogeneous ACPI/SPE machines.
+	 */
+	for_each_possible_cpu(cpu) {
+		struct acpi_madt_generic_interrupt *gicc;
+
+		gicc = acpi_cpu_get_madt_gicc(cpu);
+		if (gicc->header.length < ACPI_MADT_GICC_SPE)
+			return -ENODEV;
+
+		if (first) {
+			gsi = gicc->spe_interrupt;
+			if (!gsi)
+				return -ENODEV;
+			hetid = find_acpi_cpu_topology_hetero_id(cpu);
+			first = false;
+		} else if ((gsi != gicc->spe_interrupt) ||
+			   (hetid != find_acpi_cpu_topology_hetero_id(cpu))) {
+			pr_warn("ACPI: SPE must be homogeneous\n");
+			return -EINVAL;
+		}
+	}
+
+	irq = acpi_register_gsi(NULL, gsi, ACPI_LEVEL_SENSITIVE,
+				ACPI_ACTIVE_HIGH);
+	if (irq < 0) {
+		pr_warn("ACPI: SPE Unable to register interrupt: %d\n", gsi);
+		return irq;
+	}
+
+	spe_resources[0].start = irq;
+	ret = platform_device_register(&spe_dev);
+	if (ret < 0) {
+		pr_warn("ACPI: SPE: Unable to register device\n");
+		acpi_unregister_gsi(gsi);
+	}
+
+	return ret;
+}
+#else
+static inline int arm_spe_acpi_register_device(void)
+{
+	return -ENODEV;
+}
+#endif /* CONFIG_ARM_SPE_PMU */
+
 static int arm_pmu_acpi_parse_irqs(void)
 {
 	int irq, cpu, irq_cpu, err;
@@ -279,6 +352,8 @@ static int arm_pmu_acpi_init(void)
 	if (acpi_disabled)
 		return 0;
 
+	arm_spe_acpi_register_device(); /* failures are expected */
+
 	ret = arm_pmu_acpi_parse_irqs();
 	if (ret)
 		return ret;
diff --git a/include/linux/perf/arm_pmu.h b/include/linux/perf/arm_pmu.h
index 4641e850b204..784bc58f165a 100644
--- a/include/linux/perf/arm_pmu.h
+++ b/include/linux/perf/arm_pmu.h
@@ -175,4 +175,6 @@ void armpmu_free_irq(int irq, int cpu);
 
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
