Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE0813625
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 01:25:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kyQz85uOQ/B7BzUMhGpMb6RTFewJQQ1CKGZCmqAf4BU=; b=Wakj3n2XEyzklM
	742CAelZQkArtSWWSLOpSjdfisQ7cV0zmtNcazbjBKHjGj7xhcHQ7PPY119YPtIcysMT3xq4g2Eb9
	n9WUfVp0j/8MX2XUCRYOQCGyb/PMpMENFcvij9GCf4EMArRvtJ7GaYPBpilmFvMj9p36p476i8oBa
	FegtTZXdvZnNbX9GLjUM+OMORZ5CuRLDMbM5RTyhCZ3BLUnaNE8QyXVveINpDwLMWheWv34kDcmoa
	1p2qBIFRGtYOFCYmT0UyFNxPJKZCtqE4Mc02CxpyqEwDss4inah83nCZ3xSJl6s29w4TVnJ6RhcKe
	YrR3dOm58u59KGAJscfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMhYR-0007CE-W6; Fri, 03 May 2019 23:25:24 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMhXc-0005Dm-1z
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 23:24:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 229771684;
 Fri,  3 May 2019 16:24:29 -0700 (PDT)
Received: from mammon-tx2.austin.arm.com (mammon-tx2.austin.arm.com
 [10.118.29.246])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8D0243F557;
 Fri,  3 May 2019 16:24:28 -0700 (PDT)
From: Jeremy Linton <jeremy.linton@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 4/5] arm_pmu: acpi: spe: Add initial MADT/SPE probing
Date: Fri,  3 May 2019 18:24:06 -0500
Message-Id: <20190503232407.37195-5-jeremy.linton@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190503232407.37195-1-jeremy.linton@arm.com>
References: <20190503232407.37195-1-jeremy.linton@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_162432_143973_3429CC69 
X-CRM114-Status: GOOD (  18.72  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 sudeep.holla@arm.com, rjw@rjwysocki.net, linuxarm@huawei.com,
 Jeremy Linton <jeremy.linton@arm.com>, linux-acpi@vger.kernel.org,
 catalin.marinas@arm.com, john.garry@huawei.com, lenb@kernel.org
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
 drivers/perf/Kconfig          |  5 +++
 drivers/perf/arm_pmu_acpi.c   | 76 +++++++++++++++++++++++++++++++++++
 include/linux/perf/arm_pmu.h  |  2 +
 4 files changed, 86 insertions(+)

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
diff --git a/drivers/perf/Kconfig b/drivers/perf/Kconfig
index af9bc178495d..bc2647c64c9d 100644
--- a/drivers/perf/Kconfig
+++ b/drivers/perf/Kconfig
@@ -52,6 +52,11 @@ config ARM_PMU_ACPI
 	depends on ARM_PMU && ACPI
 	def_bool y
 
+config ARM_SPE_ACPI
+	depends on ARM_PMU_ACPI && ARM_SPE_PMU
+	def_bool y
+
+
 config ARM_DSU_PMU
 	tristate "ARM DynamIQ Shared Unit (DSU) PMU"
 	depends on ARM64
diff --git a/drivers/perf/arm_pmu_acpi.c b/drivers/perf/arm_pmu_acpi.c
index 0f197516d708..b0244e1e8c91 100644
--- a/drivers/perf/arm_pmu_acpi.c
+++ b/drivers/perf/arm_pmu_acpi.c
@@ -74,6 +74,80 @@ static void arm_pmu_acpi_unregister_irq(int cpu)
 	acpi_unregister_gsi(gsi);
 }
 
+#ifdef CONFIG_ARM_SPE_ACPI
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
+	int cpu, ret, irq;
+	int hetid;
+	u16 gsi = 0;
+	bool first = true;
+
+	struct acpi_madt_generic_interrupt *gicc;
+
+	/*
+	 * sanity check all the GICC tables for the same interrupt number
+	 * for now we only support homogeneous ACPI/SPE machines.
+	 */
+	for_each_possible_cpu(cpu) {
+		gicc = acpi_cpu_get_madt_gicc(cpu);
+
+		if (gicc->header.length < ACPI_MADT_GICC_SPE)
+			return -ENODEV;
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
+#endif /* CONFIG_ARM_SPE_ACPI */
+
 static int arm_pmu_acpi_parse_irqs(void)
 {
 	int irq, cpu, irq_cpu, err;
@@ -279,6 +353,8 @@ static int arm_pmu_acpi_init(void)
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
