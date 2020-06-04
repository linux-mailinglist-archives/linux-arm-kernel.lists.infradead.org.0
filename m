Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67BEA1EE43A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 14:09:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tpc6l5VRsJb6YTAn52FiKcMJ2NtW4yRiAqqlsShofuA=; b=tMb
	si3x+fFVRl+diT1FzEbBihy11RoOWcWqPIvb1HNjROVuhcKL75NXv0JlUDBRXeV9Ba3MyIJCmQh2p
	ESeLCDQz3j062fLwuLQ8/isQ+Chz6fbeJqCxzSEWlITZE9x9x6Yqbq67pkMLoUIWR5UM+vTISQiz7
	zkxWbYDsWtRzPF928ovoKm/j2NyqP+YAI96AFbnEPrhzMWUvnQNUUJolzbppwL3HeJ6q6ToUEZ/+K
	TugFgePzGbPJPoa6T9fhxwBWyqLTNqj/rt995CaHnLjnYeiEY2s+xJ6OFP1ppCzVcUJhnpOyhkve7
	98rH4hBmhdshUyKDZGLgVHU/jr1BkEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgogy-0005cm-21; Thu, 04 Jun 2020 12:09:52 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgogp-0005cS-Hm
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 12:09:45 +0000
Received: by mail-pf1-x441.google.com with SMTP id b16so3156734pfi.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 05:09:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=zV/bzPJgNZfdATlzcg0hwxaeGbaomj8HKgwEZJ3Zmh0=;
 b=CPgJDarR1h7hMh2lvuyo3B/4rqMh9eISvnJA0MQK229LJot2EvdB3q22PjdJbJ0Z/8
 xtJGWKBVINGdgGGX8sZQ81hQTdRVFlfbZhWi7wsJqPeSeMWwZfc3ngpBm5R8FoNov0v3
 C0+xuLX+IBzXidfDbn4w71OEEnZFRSl5y3F39OJ8ZIVBq/Z37VL6WLVbvGfa9ASM71Up
 JnshN7I6uPrEfM4q0rZfDO8kYWIqUChKxBzPJILw3heNr89Pba7SnNRddv49wQ3G1QV+
 drr3acddptd93+UM8ZxZX4zN1yIi6S1sC4P95arPfRfZgoamvPSJzKNj1uOrniIwB/65
 wl5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=zV/bzPJgNZfdATlzcg0hwxaeGbaomj8HKgwEZJ3Zmh0=;
 b=LdvpbO02jF4b5cSwQMvrdatk1PDj++x/kWNvLXxFzcmcDlCGgtXShxnRsvkAkNMenb
 sOlRcRzn1vzwtrPklJs0DnrQY/u7VQQolsoY719UMaS4pq/Tl4sMjrkbMkN3YbeF44kI
 /HZYSmUrlPIvqqFR+bksCwWvJVP5fxuLgyB/z82jTizJd6lqYLner0fydzV3wAYdFILl
 haKI7OHJ40VoW/a0u6Dsf/CS+lXuLiL67EXcu/KiJRFwrFORcSinc27gOFF/winVVwL6
 m/Zeg1RbYZKcwo1dsbIFpwvmR7FCfDkuDd6Xu/tP+T+aKIJpEN5oySDX6QwIjcLm1P3I
 LrQg==
X-Gm-Message-State: AOAM530lEzyZQYxBOPN/qVramtIfoax1wxI3Ef6fca4qaGgFqrMFRbK/
 Bo/gQlUsuNOmyrYG6VvtjQueibCHmRs=
X-Google-Smtp-Source: ABdhPJy8JqFvuEtub6uBsXQhK9WihltqWo+PXkWW+NqxKyc2g3456roEZYGTgEV4THkWzWW0TWNtqQ==
X-Received: by 2002:a62:7b41:: with SMTP id w62mr3816271pfc.142.1591272581728; 
 Thu, 04 Jun 2020 05:09:41 -0700 (PDT)
Received: from localhost.localdomain ([117.252.66.248])
 by smtp.gmail.com with ESMTPSA id 140sm4469358pfy.95.2020.06.04.05.09.33
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 04 Jun 2020 05:09:40 -0700 (PDT)
From: Sumit Garg <sumit.garg@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] arm64: Enable perf events based hard lockup detector
Date: Thu,  4 Jun 2020 17:39:11 +0530
Message-Id: <1591272551-21326-1-git-send-email-sumit.garg@linaro.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_050943_657768_94B29A30 
X-CRM114-Status: GOOD (  17.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 jolsa@redhat.com, alexandru.elisei@arm.com, dianders@chromium.org,
 acme@kernel.org, alexander.shishkin@linux.intel.com, mingo@redhat.com,
 namhyung@kernel.org, tglx@linutronix.de, will@kernel.org,
 julien.thierry.kdev@gmail.com
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

Changes since RFC:
- Rebased on top of Alex's WIP-pmu-nmi branch.
- Add comment for safe max. CPU frequency.
- Misc. cleanup.

 arch/arm64/Kconfig             |  2 ++
 arch/arm64/kernel/perf_event.c | 41 +++++++++++++++++++++++++++++++++++++++--
 drivers/perf/arm_pmu.c         |  9 +++++++++
 include/linux/perf/arm_pmu.h   |  2 ++
 4 files changed, 52 insertions(+), 2 deletions(-)

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
index e109aa5..a37f018 100644
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
@@ -1191,10 +1193,21 @@ static struct platform_driver armv8_pmu_driver = {
 
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
 
@@ -1226,3 +1239,27 @@ void arch_perf_update_userpage(struct perf_event *event,
 	userpg->time_shift = (u16)shift;
 	userpg->time_offset = -now;
 }
+
+#ifdef CONFIG_HARDLOCKUP_DETECTOR_PERF
+/*
+ * Safe maximum CPU frequency in case a particular platform doesn't implement
+ * cpufreq driver. Although, architecture doesn't put any restrictions on
+ * maximum frequency but 5 GHz seems to be safe maximum given the available
+ * Arm CPUs in the market which are clocked much less than 5 GHz. On the other
+ * hand, we can't make it much higher as it would lead to a large hard-lockup
+ * detection timeout on parts which are running slower (eg. 1GHz on
+ * Developerbox) and doesn't possess a cpufreq driver.
+ */
+#define SAFE_MAX_CPU_FREQ	5000000000UL // 5 GHz
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
index f96cfc4..6c25c0d1 100644
--- a/drivers/perf/arm_pmu.c
+++ b/drivers/perf/arm_pmu.c
@@ -718,6 +718,15 @@ static int armpmu_get_cpu_irq(struct arm_pmu *pmu, int cpu)
 	return per_cpu(hw_events->irq, cpu);
 }
 
+bool arm_pmu_irq_is_nmi(void)
+{
+	const struct pmu_irq_ops *irq_ops;
+
+	irq_ops = per_cpu(cpu_irq_ops, smp_processor_id());
+
+	return irq_ops == &pmunmi_ops || irq_ops == &percpu_pmunmi_ops;
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
