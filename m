Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 807F61C8042
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 05:03:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sCob6I6rOqhQxk1h/Qbn1F/h109HsaajxRUlTuPXa2E=; b=hQSasj6FNZ1S3u
	ZdvNx3fCk1R7DX1TGoy8O7t3bXH99mBHKIv4ZqMJr0mDILibSsRVSGWXlceOMzGtTZG49UC+uI1tv
	ITPSftOI3F7835yTr88SPrkggprlRr5F9kN1ERfpxm5OaGfcDlzFm2K+hswWzbgl8ukjlFCYKg10J
	5e/jbdStnfHcX6VqpMaYNJ1Cu5Twm9jAbkQKuzgaOlJ/iis31N8P55CAcgiE3vQgDEvA5lLMZuMA6
	ZmvbiAVxbSMVLlsGd5CLOZe4kTy9AP0/2jVS4V5eHGmqWTO0qLbiV56bGfpXfhvCD/RlX6Cyu6pli
	FbGhYFT6+JpA9FQ89Uxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWWog-0000JU-Ds; Thu, 07 May 2020 03:03:18 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWWoY-0000HU-3L
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 03:03:13 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 1B8654316D678904E6A0;
 Thu,  7 May 2020 11:02:51 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.487.0; Thu, 7 May 2020 11:02:42 +0800
From: Zhou Wang <wangzhou1@hisilicon.com>
To: Shaokun Zhang <zhangshaokun@hisilicon.com>, Mark Rutland
 <mark.rutland@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH] drivers/perf: hisi: Permit modular builds of HiSilicon uncore
 drivers
Date: Thu, 7 May 2020 10:58:25 +0800
Message-ID: <1588820305-174479-1-git-send-email-wangzhou1@hisilicon.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_200310_479250_4368AEA7 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Zhou Wang <wangzhou1@hisilicon.com>, linuxarm@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch lets HiSilicon uncore PMU driver can be built as modules.
A common module and three specific uncore PMU driver modules will be built.

Export necessary functions in hisi_uncore_pmu module, and change
irq_set_affinity to irq_set_affinity_hint to pass compile.

Signed-off-by: Zhou Wang <wangzhou1@hisilicon.com>
Tested-by: Qi Liu <liuqi115@huawei.com>
---
 drivers/perf/Kconfig                          |  9 ++-------
 drivers/perf/hisilicon/Kconfig                |  7 +++++++
 drivers/perf/hisilicon/Makefile               |  3 ++-
 drivers/perf/hisilicon/hisi_uncore_ddrc_pmu.c | 10 ++++++----
 drivers/perf/hisilicon/hisi_uncore_hha_pmu.c  | 10 ++++++----
 drivers/perf/hisilicon/hisi_uncore_l3c_pmu.c  | 10 ++++++----
 drivers/perf/hisilicon/hisi_uncore_pmu.c      | 23 +++++++++++++++++++++--
 7 files changed, 50 insertions(+), 22 deletions(-)
 create mode 100644 drivers/perf/hisilicon/Kconfig

diff --git a/drivers/perf/Kconfig b/drivers/perf/Kconfig
index 09ae8a9..a9261cf 100644
--- a/drivers/perf/Kconfig
+++ b/drivers/perf/Kconfig
@@ -79,13 +79,6 @@ config FSL_IMX8_DDR_PMU
 	  can give information about memory throughput and other related
 	  events.
 
-config HISI_PMU
-       bool "HiSilicon SoC PMU"
-       depends on ARM64 && ACPI
-       help
-         Support for HiSilicon SoC uncore performance monitoring
-         unit (PMU), such as: L3C, HHA and DDRC.
-
 config QCOM_L2_PMU
 	bool "Qualcomm Technologies L2-cache PMU"
 	depends on ARCH_QCOM && ARM64 && ACPI
@@ -129,4 +122,6 @@ config ARM_SPE_PMU
 	  Extension, which provides periodic sampling of operations in
 	  the CPU pipeline and reports this via the perf AUX interface.
 
+source "drivers/perf/hisilicon/Kconfig"
+
 endmenu
diff --git a/drivers/perf/hisilicon/Kconfig b/drivers/perf/hisilicon/Kconfig
new file mode 100644
index 0000000..c5d1b701
--- /dev/null
+++ b/drivers/perf/hisilicon/Kconfig
@@ -0,0 +1,7 @@
+# SPDX-License-Identifier: GPL-2.0-only
+config HISI_PMU
+	tristate "HiSilicon SoC PMU drivers"
+	depends on ARM64 && ACPI
+	  help
+	  Support for HiSilicon SoC L3 Cache performance monitor, Hydra Home
+	  Agent performance monitor and DDR Controller performance monitor.
diff --git a/drivers/perf/hisilicon/Makefile b/drivers/perf/hisilicon/Makefile
index c3a96ec..e837706 100644
--- a/drivers/perf/hisilicon/Makefile
+++ b/drivers/perf/hisilicon/Makefile
@@ -1,2 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
-obj-$(CONFIG_HISI_PMU) += hisi_uncore_pmu.o hisi_uncore_l3c_pmu.o hisi_uncore_hha_pmu.o hisi_uncore_ddrc_pmu.o
+obj-$(CONFIG_HISI_PMU) += hisi_uncore_pmu.o hisi_uncore_l3c_pmu.o \
+			  hisi_uncore_hha_pmu.o hisi_uncore_ddrc_pmu.o
diff --git a/drivers/perf/hisilicon/hisi_uncore_ddrc_pmu.c b/drivers/perf/hisilicon/hisi_uncore_ddrc_pmu.c
index 453f1c6..15713fa 100644
--- a/drivers/perf/hisilicon/hisi_uncore_ddrc_pmu.c
+++ b/drivers/perf/hisilicon/hisi_uncore_ddrc_pmu.c
@@ -394,8 +394,9 @@ static int hisi_ddrc_pmu_probe(struct platform_device *pdev)
 	ret = perf_pmu_register(&ddrc_pmu->pmu, name, -1);
 	if (ret) {
 		dev_err(ddrc_pmu->dev, "DDRC PMU register failed!\n");
-		cpuhp_state_remove_instance(CPUHP_AP_PERF_ARM_HISI_DDRC_ONLINE,
-					    &ddrc_pmu->node);
+		cpuhp_state_remove_instance_nocalls(
+			CPUHP_AP_PERF_ARM_HISI_DDRC_ONLINE, &ddrc_pmu->node);
+		irq_set_affinity_hint(ddrc_pmu->irq, NULL);
 	}
 
 	return ret;
@@ -406,8 +407,9 @@ static int hisi_ddrc_pmu_remove(struct platform_device *pdev)
 	struct hisi_pmu *ddrc_pmu = platform_get_drvdata(pdev);
 
 	perf_pmu_unregister(&ddrc_pmu->pmu);
-	cpuhp_state_remove_instance(CPUHP_AP_PERF_ARM_HISI_DDRC_ONLINE,
-				    &ddrc_pmu->node);
+	cpuhp_state_remove_instance_nocalls(CPUHP_AP_PERF_ARM_HISI_DDRC_ONLINE,
+					    &ddrc_pmu->node);
+	irq_set_affinity_hint(ddrc_pmu->irq, NULL);
 
 	return 0;
 }
diff --git a/drivers/perf/hisilicon/hisi_uncore_hha_pmu.c b/drivers/perf/hisilicon/hisi_uncore_hha_pmu.c
index 6a1dd72..882ffce 100644
--- a/drivers/perf/hisilicon/hisi_uncore_hha_pmu.c
+++ b/drivers/perf/hisilicon/hisi_uncore_hha_pmu.c
@@ -406,8 +406,9 @@ static int hisi_hha_pmu_probe(struct platform_device *pdev)
 	ret = perf_pmu_register(&hha_pmu->pmu, name, -1);
 	if (ret) {
 		dev_err(hha_pmu->dev, "HHA PMU register failed!\n");
-		cpuhp_state_remove_instance(CPUHP_AP_PERF_ARM_HISI_HHA_ONLINE,
-					    &hha_pmu->node);
+		cpuhp_state_remove_instance_nocalls(
+			CPUHP_AP_PERF_ARM_HISI_HHA_ONLINE, &hha_pmu->node);
+		irq_set_affinity_hint(hha_pmu->irq, NULL);
 	}
 
 	return ret;
@@ -418,8 +419,9 @@ static int hisi_hha_pmu_remove(struct platform_device *pdev)
 	struct hisi_pmu *hha_pmu = platform_get_drvdata(pdev);
 
 	perf_pmu_unregister(&hha_pmu->pmu);
-	cpuhp_state_remove_instance(CPUHP_AP_PERF_ARM_HISI_HHA_ONLINE,
-				    &hha_pmu->node);
+	cpuhp_state_remove_instance_nocalls(CPUHP_AP_PERF_ARM_HISI_HHA_ONLINE,
+					    &hha_pmu->node);
+	irq_set_affinity_hint(hha_pmu->irq, NULL);
 
 	return 0;
 }
diff --git a/drivers/perf/hisilicon/hisi_uncore_l3c_pmu.c b/drivers/perf/hisilicon/hisi_uncore_l3c_pmu.c
index 1151e99..8dd1278 100644
--- a/drivers/perf/hisilicon/hisi_uncore_l3c_pmu.c
+++ b/drivers/perf/hisilicon/hisi_uncore_l3c_pmu.c
@@ -396,8 +396,9 @@ static int hisi_l3c_pmu_probe(struct platform_device *pdev)
 	ret = perf_pmu_register(&l3c_pmu->pmu, name, -1);
 	if (ret) {
 		dev_err(l3c_pmu->dev, "L3C PMU register failed!\n");
-		cpuhp_state_remove_instance(CPUHP_AP_PERF_ARM_HISI_L3_ONLINE,
-					    &l3c_pmu->node);
+		cpuhp_state_remove_instance_nocalls(
+			CPUHP_AP_PERF_ARM_HISI_L3_ONLINE, &l3c_pmu->node);
+		irq_set_affinity_hint(l3c_pmu->irq, NULL);
 	}
 
 	return ret;
@@ -408,8 +409,9 @@ static int hisi_l3c_pmu_remove(struct platform_device *pdev)
 	struct hisi_pmu *l3c_pmu = platform_get_drvdata(pdev);
 
 	perf_pmu_unregister(&l3c_pmu->pmu);
-	cpuhp_state_remove_instance(CPUHP_AP_PERF_ARM_HISI_L3_ONLINE,
-				    &l3c_pmu->node);
+	cpuhp_state_remove_instance_nocalls(CPUHP_AP_PERF_ARM_HISI_L3_ONLINE,
+					    &l3c_pmu->node);
+	irq_set_affinity_hint(l3c_pmu->irq, NULL);
 
 	return 0;
 }
diff --git a/drivers/perf/hisilicon/hisi_uncore_pmu.c b/drivers/perf/hisilicon/hisi_uncore_pmu.c
index 584de8f..97aff87 100644
--- a/drivers/perf/hisilicon/hisi_uncore_pmu.c
+++ b/drivers/perf/hisilicon/hisi_uncore_pmu.c
@@ -35,6 +35,7 @@ ssize_t hisi_format_sysfs_show(struct device *dev,
 
 	return sprintf(buf, "%s\n", (char *)eattr->var);
 }
+EXPORT_SYMBOL_GPL(hisi_format_sysfs_show);
 
 /*
  * PMU event attributes
@@ -48,6 +49,7 @@ ssize_t hisi_event_sysfs_show(struct device *dev,
 
 	return sprintf(page, "config=0x%lx\n", (unsigned long)eattr->var);
 }
+EXPORT_SYMBOL_GPL(hisi_event_sysfs_show);
 
 /*
  * sysfs cpumask attributes. For uncore PMU, we only have a single CPU to show
@@ -59,6 +61,7 @@ ssize_t hisi_cpumask_sysfs_show(struct device *dev,
 
 	return sprintf(buf, "%d\n", hisi_pmu->on_cpu);
 }
+EXPORT_SYMBOL_GPL(hisi_cpumask_sysfs_show);
 
 static bool hisi_validate_event_group(struct perf_event *event)
 {
@@ -97,6 +100,7 @@ int hisi_uncore_pmu_counter_valid(struct hisi_pmu *hisi_pmu, int idx)
 {
 	return idx >= 0 && idx < hisi_pmu->num_counters;
 }
+EXPORT_SYMBOL_GPL(hisi_uncore_pmu_counter_valid);
 
 int hisi_uncore_pmu_get_event_idx(struct perf_event *event)
 {
@@ -113,6 +117,7 @@ int hisi_uncore_pmu_get_event_idx(struct perf_event *event)
 
 	return idx;
 }
+EXPORT_SYMBOL_GPL(hisi_uncore_pmu_get_event_idx);
 
 static void hisi_uncore_pmu_clear_event_idx(struct hisi_pmu *hisi_pmu, int idx)
 {
@@ -173,6 +178,7 @@ int hisi_uncore_pmu_event_init(struct perf_event *event)
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(hisi_uncore_pmu_event_init);
 
 /*
  * Set the counter to count the event that we're interested in,
@@ -220,6 +226,7 @@ void hisi_uncore_pmu_set_event_period(struct perf_event *event)
 	/* Write start value to the hardware event counter */
 	hisi_pmu->ops->write_counter(hisi_pmu, hwc, val);
 }
+EXPORT_SYMBOL_GPL(hisi_uncore_pmu_set_event_period);
 
 void hisi_uncore_pmu_event_update(struct perf_event *event)
 {
@@ -240,6 +247,7 @@ void hisi_uncore_pmu_event_update(struct perf_event *event)
 		HISI_MAX_PERIOD(hisi_pmu->counter_bits);
 	local64_add(delta, &event->count);
 }
+EXPORT_SYMBOL_GPL(hisi_uncore_pmu_event_update);
 
 void hisi_uncore_pmu_start(struct perf_event *event, int flags)
 {
@@ -262,6 +270,7 @@ void hisi_uncore_pmu_start(struct perf_event *event, int flags)
 	hisi_uncore_pmu_enable_event(event);
 	perf_event_update_userpage(event);
 }
+EXPORT_SYMBOL_GPL(hisi_uncore_pmu_start);
 
 void hisi_uncore_pmu_stop(struct perf_event *event, int flags)
 {
@@ -278,6 +287,7 @@ void hisi_uncore_pmu_stop(struct perf_event *event, int flags)
 	hisi_uncore_pmu_event_update(event);
 	hwc->state |= PERF_HES_UPTODATE;
 }
+EXPORT_SYMBOL_GPL(hisi_uncore_pmu_stop);
 
 int hisi_uncore_pmu_add(struct perf_event *event, int flags)
 {
@@ -300,6 +310,7 @@ int hisi_uncore_pmu_add(struct perf_event *event, int flags)
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(hisi_uncore_pmu_add);
 
 void hisi_uncore_pmu_del(struct perf_event *event, int flags)
 {
@@ -311,12 +322,14 @@ void hisi_uncore_pmu_del(struct perf_event *event, int flags)
 	perf_event_update_userpage(event);
 	hisi_pmu->pmu_events.hw_events[hwc->idx] = NULL;
 }
+EXPORT_SYMBOL_GPL(hisi_uncore_pmu_del);
 
 void hisi_uncore_pmu_read(struct perf_event *event)
 {
 	/* Read hardware counter and update the perf counter statistics */
 	hisi_uncore_pmu_event_update(event);
 }
+EXPORT_SYMBOL_GPL(hisi_uncore_pmu_read);
 
 void hisi_uncore_pmu_enable(struct pmu *pmu)
 {
@@ -329,6 +342,7 @@ void hisi_uncore_pmu_enable(struct pmu *pmu)
 
 	hisi_pmu->ops->start_counters(hisi_pmu);
 }
+EXPORT_SYMBOL_GPL(hisi_uncore_pmu_enable);
 
 void hisi_uncore_pmu_disable(struct pmu *pmu)
 {
@@ -336,6 +350,7 @@ void hisi_uncore_pmu_disable(struct pmu *pmu)
 
 	hisi_pmu->ops->stop_counters(hisi_pmu);
 }
+EXPORT_SYMBOL_GPL(hisi_uncore_pmu_disable);
 
 
 /*
@@ -414,10 +429,11 @@ int hisi_uncore_pmu_online_cpu(unsigned int cpu, struct hlist_node *node)
 	hisi_pmu->on_cpu = cpu;
 
 	/* Overflow interrupt also should use the same CPU */
-	WARN_ON(irq_set_affinity(hisi_pmu->irq, cpumask_of(cpu)));
+	WARN_ON(irq_set_affinity_hint(hisi_pmu->irq, cpumask_of(cpu)));
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(hisi_uncore_pmu_online_cpu);
 
 int hisi_uncore_pmu_offline_cpu(unsigned int cpu, struct hlist_node *node)
 {
@@ -446,7 +462,10 @@ int hisi_uncore_pmu_offline_cpu(unsigned int cpu, struct hlist_node *node)
 	perf_pmu_migrate_context(&hisi_pmu->pmu, cpu, target);
 	/* Use this CPU for event counting */
 	hisi_pmu->on_cpu = target;
-	WARN_ON(irq_set_affinity(hisi_pmu->irq, cpumask_of(target)));
+	WARN_ON(irq_set_affinity_hint(hisi_pmu->irq, cpumask_of(target)));
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(hisi_uncore_pmu_offline_cpu);
+
+MODULE_LICENSE("GPL v2");
-- 
2.8.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
