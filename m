Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D811D48CB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 10:50:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=t8KIaSVVfjT2sbvYNo23lRiawcARvSvdJEG5vooTSm8=; b=CWG
	SXXJ0IjMU38E6a86gWX0LBqJY6TTufQhsoS/o+pz9H3ANumXXw0pZLvKSJOXbIGGfkSg30wrBuhay
	Hq0K9vZnI26gnVKy7pWLN6nNzGLpyjlXnqEOt60pm1rRhZ+KDWp76AWanE3OF4/PmRVZHY+s9Fvhz
	CgHPvjzMBuL/pOsQnUh6QNck1g2VLFx1KPnS4pThN2SCls5zFFKARTk+e7pv0sS/UliOHgdCo0WtD
	Jas2rrnDMyNm/uugirkZtXPZ5Ib3pDf0bicd3fp5WdOdrGqX7pk9OBrkweY4LOZs7gaWjdZ1XVG4f
	uX7cbgWkLzzfqDZ3hlkLD5jcfFLy82w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZW37-0004J4-SQ; Fri, 15 May 2020 08:50:33 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZW2t-0004HB-Qy
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 08:50:27 +0000
Received: by mail-pj1-x1044.google.com with SMTP id n15so665193pjt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 01:50:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=35pGnu9GnHmW69MSaocb29vu4F27l0KIarsDVNEAZrs=;
 b=oEMiYGL5xYdSwUbbROPHSSvspFlPc7bqNZ/JbC0U0BjLPi+CMfZWBKMmThyestpXFp
 x3OytjiMX/9wG0pzJH2s+M3Eerx1ccG0LqK0aY4UhOc0NMA/Esppby1tXFNPqb0tfoDc
 g83+G9OLah3vQuHZ5S4BHPEW71Or2e9hkPT7EXsdHBY08tJtyfAKM8IQnyN9XN5vwkrU
 GBh6YbRWJzXzJQBYCeJ/KI+leuQqH7/FWAjSorIRgPRbBkUdnKRjzcGjxGb8ejEJLmzq
 DkTTxH427s/24LMlD+Vd2S/4gY41q0UP954G7eQQ/PJhnF+GM9/VXFEPnBNHEbqh1V+d
 XkEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=35pGnu9GnHmW69MSaocb29vu4F27l0KIarsDVNEAZrs=;
 b=QG3Yu9oYP+b5RnkA1s1NL/vk/dLv+5BFY/b50Yjy3S5AB9dMk9IjhKsiCpcIszk21s
 uL6rg7AzZ6s3UDpWJ2+NgK20AG1puQ4eextjhzjU3FhoEswCzzayB2pMBVGFI3f9OhA3
 /jDSDfmj4DNqGgNOwkiKS9YOnCpc5pDN3j9h4ynvqF30LGTTr6S63UNd1CJL+mKM0aIb
 YPbinrBRYXUDLKUdTcczvoPmu2FCqGzU5VnDLFAUJlFwRevuGV7No04S77NkOLZlHQAz
 FuqXWdwldGaNmizXKtZ9ZUNDjGiKpdgiuYLdH7u9NUHGy4fYSc922fcS0YbtQRFNzb3m
 jK+Q==
X-Gm-Message-State: AOAM53339vS/GuIELJKNU08IpiBkO53JdAo10ot+kBqF4OGQiMuMsQxf
 ao7IjDa/E4I/pV2W0ZcKk6Aj2apFUIM=
X-Google-Smtp-Source: ABdhPJzy3ACv3e268Hy3wb5kEp8Qj/ZA+t0tBYNukPc1d1rylTyF3iRyM7SUV+VraCazUBEIkJmPsQ==
X-Received: by 2002:a17:90a:32a8:: with SMTP id
 l37mr2399059pjb.13.1589532618502; 
 Fri, 15 May 2020 01:50:18 -0700 (PDT)
Received: from localhost.localdomain ([117.252.68.136])
 by smtp.gmail.com with ESMTPSA id j5sm1364333pfa.37.2020.05.15.01.50.10
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 15 May 2020 01:50:17 -0700 (PDT)
From: Sumit Garg <sumit.garg@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC] arm64: Enable perf events based hard lockup detector
Date: Fri, 15 May 2020 14:19:53 +0530
Message-Id: <1589532593-16428-1-git-send-email-sumit.garg@linaro.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_015021_247071_11C5A4AE 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, Sumit Garg <sumit.garg@linaro.org>,
 daniel.thompson@linaro.org, peterz@infradead.org, catalin.marinas@arm.com,
 jolsa@redhat.com, dianders@chromium.org, acme@kernel.org,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, namhyung@kernel.org,
 tglx@linutronix.de, will@kernel.org, julien.thierry.kdev@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With the recent feature added to enable perf events to use pseudo NMIs
as interrupts on platforms which support GICv3 or later, its now been
possible to enable hard lockup detector (or NMI watchdog) on arm64
platforms. So enable corresponding support.

One thing to note here is that normally lockup detector is initialized
just after the early initcalls but PMU on arm64 comes up much later as
device_initcall(). So we need to re-initialize lockup detection once
PMU has been initialized.

Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
---

This patch is dependent on perf NMI patch-set [1].

[1] https://patchwork.kernel.org/cover/11047407/

 arch/arm64/Kconfig             |  2 ++
 arch/arm64/kernel/perf_event.c | 32 ++++++++++++++++++++++++++++++--
 drivers/perf/arm_pmu.c         | 11 +++++++++++
 include/linux/perf/arm_pmu.h   |  2 ++
 4 files changed, 45 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 40fb05d..36f75c2 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -160,6 +160,8 @@ config ARM64
 	select HAVE_NMI
 	select HAVE_PATA_PLATFORM
 	select HAVE_PERF_EVENTS
+	select HAVE_PERF_EVENTS_NMI if ARM64_PSEUDO_NMI
+	select HAVE_HARDLOCKUP_DETECTOR_PERF if PERF_EVENTS && HAVE_PERF_EVENTS_NMI
 	select HAVE_PERF_REGS
 	select HAVE_PERF_USER_STACK_DUMP
 	select HAVE_REGS_AND_STACK_ACCESS_API
diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
index 3ad5c8f..df57360 100644
--- a/arch/arm64/kernel/perf_event.c
+++ b/arch/arm64/kernel/perf_event.c
@@ -20,6 +20,8 @@
 #include <linux/perf/arm_pmu.h>
 #include <linux/platform_device.h>
 #include <linux/smp.h>
+#include <linux/nmi.h>
+#include <linux/cpufreq.h>
 
 /* ARMv8 Cortex-A53 specific event types. */
 #define ARMV8_A53_PERFCTR_PREF_LINEFILL				0xC2
@@ -1190,10 +1192,21 @@ static struct platform_driver armv8_pmu_driver = {
 
 static int __init armv8_pmu_driver_init(void)
 {
+	int ret;
+
 	if (acpi_disabled)
-		return platform_driver_register(&armv8_pmu_driver);
+		ret = platform_driver_register(&armv8_pmu_driver);
 	else
-		return arm_pmu_acpi_probe(armv8_pmuv3_init);
+		ret = arm_pmu_acpi_probe(armv8_pmuv3_init);
+
+	/*
+	 * Try to re-initialize lockup detector after PMU init in
+	 * case PMU events are triggered via NMIs.
+	 */
+	if (arm_pmu_irq_is_nmi())
+		lockup_detector_init();
+
+	return ret;
 }
 device_initcall(armv8_pmu_driver_init)
 
@@ -1225,3 +1238,18 @@ void arch_perf_update_userpage(struct perf_event *event,
 	userpg->time_shift = (u16)shift;
 	userpg->time_offset = -now;
 }
+
+#ifdef CONFIG_HARDLOCKUP_DETECTOR_PERF
+#define SAFE_MAX_CPU_FREQ	4000000000UL // 4 GHz
+u64 hw_nmi_get_sample_period(int watchdog_thresh)
+{
+	unsigned int cpu = smp_processor_id();
+	unsigned int max_cpu_freq;
+
+	max_cpu_freq = cpufreq_get_hw_max_freq(cpu);
+	if (max_cpu_freq)
+		return (u64)max_cpu_freq * 1000 * watchdog_thresh;
+	else
+		return (u64)SAFE_MAX_CPU_FREQ * watchdog_thresh;
+}
+#endif
diff --git a/drivers/perf/arm_pmu.c b/drivers/perf/arm_pmu.c
index f96cfc4..691dfc9 100644
--- a/drivers/perf/arm_pmu.c
+++ b/drivers/perf/arm_pmu.c
@@ -718,6 +718,17 @@ static int armpmu_get_cpu_irq(struct arm_pmu *pmu, int cpu)
 	return per_cpu(hw_events->irq, cpu);
 }
 
+bool arm_pmu_irq_is_nmi(void)
+{
+	const struct pmu_irq_ops *irq_ops;
+
+	irq_ops = per_cpu(cpu_irq_ops, smp_processor_id());
+	if (irq_ops == &pmunmi_ops || irq_ops == &percpu_pmunmi_ops)
+		return true;
+	else
+		return false;
+}
+
 /*
  * PMU hardware loses all context when a CPU goes offline.
  * When a CPU is hotplugged back in, since some hardware registers are
diff --git a/include/linux/perf/arm_pmu.h b/include/linux/perf/arm_pmu.h
index d9b8b76..a71f029 100644
--- a/include/linux/perf/arm_pmu.h
+++ b/include/linux/perf/arm_pmu.h
@@ -155,6 +155,8 @@ int arm_pmu_acpi_probe(armpmu_init_fn init_fn);
 static inline int arm_pmu_acpi_probe(armpmu_init_fn init_fn) { return 0; }
 #endif
 
+bool arm_pmu_irq_is_nmi(void);
+
 /* Internal functions only for core arm_pmu code */
 struct arm_pmu *armpmu_alloc(void);
 struct arm_pmu *armpmu_alloc_atomic(void);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
