Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C4765095
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 05:15:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=td8RlG03fDraTnmXsEZNlDQpOzqyiLz40eoUmK8YMfI=; b=teb2zmrafbKy8E
	bfLZ49cwFmQNtOzhk6YH2py64D1BDLl0aFMgLccKyNtoacJe+6svaYTUuCQ/voxW1TqhM5synaZOd
	dsRj3NoNlPRjkN6g+bfabgq6WC8WlsV94JTFtdehfoI/fdymNkPn8UnjXwnr3+vLw94F9v1yINB0G
	HfzAtyHOxLpQh0EOK71CqZpMlYQ5phZ0iPlTOcB1RoqpAv7C3uHFWKyICXNC35o2c401uXyzwYADW
	rhhzPlBEgDDcTGUxuYPC0AZMqCX+IkeqNFEsUF7m6uliEnkUTKndyO815PHUCcn4WDm9HCHwnET9F
	fm2JXnM/yaB1/2/rVBUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlPYN-0004K0-BY; Thu, 11 Jul 2019 03:15:27 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlPWd-0002AD-Fo
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 03:13:42 +0000
Received: by mail-lj1-x242.google.com with SMTP id m8so4172262lji.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 20:13:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JzoNdzMYOwryEEUI41pVggMZ2x5H7sXVTFoQf3OOJPk=;
 b=ozyT02oleu5Ce+OgtwaKZq7gQ/dmeethjYTXhDHtf6wPkdo/7A643cQgZ0/79423f1
 7C+R3KLZlHhYeR5w35cfXaSkAmr6EpFDAdCjr61TRgnfcwzn/y+07kIIgiUaHXIqklsV
 SCyKb1r87hVec/VRFrtLk3mm1xJu+jZlrWeOuz0ZjpwgPniGtlbTx3Y2hj/DlPr/yUlJ
 mkUCiwXEIgqEZqLI6hlr9MkgA8lxltKhXo5WAlAfXy73tDxsAwoVwO5ZwEGmoj/rWJp+
 n8pyZ/WD9QA0FAy/bTC2mQo4m0kxU3VWtL16chXPwBxgArrXij0wyUyC9KCPqfn6vXEd
 yVdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JzoNdzMYOwryEEUI41pVggMZ2x5H7sXVTFoQf3OOJPk=;
 b=Uc6xlvEzFC/Ii0s4sh94JtWgxe1kT2mDoNfAuplXCi8nvBLTPB7Qa10jWqehg5Uu87
 EwEFiTuk43HdSsKD3i/pBqd6uglVqKemZRxcfYfonGaHePM6sQ8fKCnCg4c5DnGjZV7d
 KFxpjb8km9aHlM4iM3mOZr6dkw+xINm6P31nKrI8bsl9xIJAQA2enFxl+0RzfcJpodjJ
 PJMQ57qDP9oEFocdGON1l9fBn1qyTILi316MWZxhta6YMrcYUNM44ZZkzffXBlsSDfY9
 4fb451B81mfHzGAhbAuoNa9Hd4hoKV4emuERi9jVIA5wrPcsYN/qvChlCISQ8Oat5WeH
 CoSA==
X-Gm-Message-State: APjAAAWMpBEk9odJX0mVjOAYB4V8oeviJFB7iNhW2ea5g44VWthE4RZp
 gftUq0I6xHi6I6E7ibDRhLSK2o/u
X-Google-Smtp-Source: APXvYqxX5990VtA4JgqocvRu4bRNI3UybFhx5mPQ5AP3dRRPoCeVFqWp/Yqbc8RckNzzF+848jGGwQ==
X-Received: by 2002:a2e:8396:: with SMTP id x22mr882590ljg.135.1562814818075; 
 Wed, 10 Jul 2019 20:13:38 -0700 (PDT)
Received: from localhost.localdomain (ppp79-139-233-208.pppoe.spdop.ru.
 [79.139.233.208])
 by smtp.gmail.com with ESMTPSA id h84sm753915ljf.42.2019.07.10.20.13.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 10 Jul 2019 20:13:37 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH v2 3/6] cpuidle: Add unified driver for NVIDIA Tegra SoCs
Date: Thu, 11 Jul 2019 06:13:09 +0300
Message-Id: <20190711031312.10038-4-digetx@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190711031312.10038-1-digetx@gmail.com>
References: <20190711031312.10038-1-digetx@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_201339_783516_E4E6B17F 
X-CRM114-Status: GOOD (  24.84  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The new driver is based on the old CPU Idle drivers that are removed now
from arm/arch/mach-tegra/ directory. Those removed drivers were reworked
and squashed into a single unified driver that covers multiple hardware
generations, starting from Tegra20 and ending with Tegra124.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 arch/arm/mach-tegra/tegra.c     |   4 +
 drivers/cpuidle/Kconfig.arm     |   8 +
 drivers/cpuidle/Makefile        |   1 +
 drivers/cpuidle/cpuidle-tegra.c | 304 ++++++++++++++++++++++++++++++++
 include/soc/tegra/cpuidle.h     |   4 +
 5 files changed, 321 insertions(+)
 create mode 100644 drivers/cpuidle/cpuidle-tegra.c

diff --git a/arch/arm/mach-tegra/tegra.c b/arch/arm/mach-tegra/tegra.c
index d9237769a37c..f1ce2857a251 100644
--- a/arch/arm/mach-tegra/tegra.c
+++ b/arch/arm/mach-tegra/tegra.c
@@ -36,6 +36,7 @@
 #include <asm/mach/arch.h>
 #include <asm/mach/time.h>
 #include <asm/mach-types.h>
+#include <asm/psci.h>
 #include <asm/setup.h>
 
 #include "board.h"
@@ -92,6 +93,9 @@ static void __init tegra_dt_init_late(void)
 	if (IS_ENABLED(CONFIG_ARCH_TEGRA_2x_SOC) &&
 	    of_machine_is_compatible("nvidia,tegra20"))
 		platform_device_register_simple("tegra20-cpufreq", -1, NULL, 0);
+
+	if (IS_ENABLED(CONFIG_ARM_TEGRA_CPUIDLE) && !psci_smp_available())
+		platform_device_register_simple("tegra-cpuidle", -1, NULL, 0);
 }
 
 static const char * const tegra_dt_board_compat[] = {
diff --git a/drivers/cpuidle/Kconfig.arm b/drivers/cpuidle/Kconfig.arm
index 48cb3d4bb7d1..d90861361f1d 100644
--- a/drivers/cpuidle/Kconfig.arm
+++ b/drivers/cpuidle/Kconfig.arm
@@ -76,3 +76,11 @@ config ARM_MVEBU_V7_CPUIDLE
 	depends on ARCH_MVEBU && !ARM64
 	help
 	  Select this to enable cpuidle on Armada 370, 38x and XP processors.
+
+config ARM_TEGRA_CPUIDLE
+	bool "CPU Idle Driver for NVIDIA Tegra SoCs"
+	depends on ARCH_TEGRA && !ARM64
+	select ARCH_NEEDS_CPU_IDLE_COUPLED if SMP
+	select ARM_CPU_SUSPEND
+	help
+	  Select this to enable cpuidle for NVIDIA Tegra20/30/114/124 SoCs.
diff --git a/drivers/cpuidle/Makefile b/drivers/cpuidle/Makefile
index 9d7176cee3d3..470d17fa8746 100644
--- a/drivers/cpuidle/Makefile
+++ b/drivers/cpuidle/Makefile
@@ -20,6 +20,7 @@ obj-$(CONFIG_ARM_U8500_CPUIDLE)         += cpuidle-ux500.o
 obj-$(CONFIG_ARM_AT91_CPUIDLE)          += cpuidle-at91.o
 obj-$(CONFIG_ARM_EXYNOS_CPUIDLE)        += cpuidle-exynos.o
 obj-$(CONFIG_ARM_CPUIDLE)		+= cpuidle-arm.o
+obj-$(CONFIG_ARM_TEGRA_CPUIDLE)		+= cpuidle-tegra.o
 
 ###############################################################################
 # MIPS drivers
diff --git a/drivers/cpuidle/cpuidle-tegra.c b/drivers/cpuidle/cpuidle-tegra.c
new file mode 100644
index 000000000000..54974cd2255f
--- /dev/null
+++ b/drivers/cpuidle/cpuidle-tegra.c
@@ -0,0 +1,304 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * CPU idle driver for Tegra CPUs
+ *
+ * Copyright (c) 2010-2013, NVIDIA Corporation.
+ * Copyright (c) 2011 Google, Inc.
+ * Author: Colin Cross <ccross@android.com>
+ *         Gary King <gking@nvidia.com>
+ *
+ * Rework for 3.3 by Peter De Schrijver <pdeschrijver@nvidia.com>
+ *
+ * Tegra20/124 driver unification by Dmitry Osipenko <digetx@gmail.com>
+ */
+
+#include <linux/cpuidle.h>
+#include <linux/cpumask.h>
+#include <linux/cpu_pm.h>
+#include <linux/errno.h>
+#include <linux/ktime.h>
+#include <linux/platform_device.h>
+#include <linux/types.h>
+
+#include <linux/clk/tegra.h>
+#include <linux/firmware/trusted_foundations.h>
+
+#include <soc/tegra/cpuidle.h>
+#include <soc/tegra/flowctrl.h>
+#include <soc/tegra/fuse.h>
+#include <soc/tegra/pm.h>
+
+#include <asm/cpuidle.h>
+#include <asm/firmware.h>
+#include <asm/smp_plat.h>
+#include <asm/suspend.h>
+
+#define TEGRA_C1		0
+#define TEGRA_C7		1
+#define TEGRA_CC6		2
+
+static atomic_t tegra_idle_barrier;
+
+static inline bool tegra_cpuidle_using_firmware(void)
+{
+	return firmware_ops->prepare_idle && firmware_ops->do_idle;
+}
+
+static int tegra_shutdown_secondary_cpu(unsigned long cpu)
+{
+	tegra_cpu_die(cpu);
+
+	return -EINVAL;
+}
+
+static int tegra_await_secondary_cpus_shutdown(void)
+{
+	ktime_t timeout = ktime_add_ms(ktime_get(), 1);
+
+	/*
+	 * The boot CPU shall await for the secondaries shutdown in order
+	 * to power-off CPU's cluster safely.
+	 */
+	do {
+		if (tegra_cpu_rail_off_ready())
+			return 0;
+
+	} while (ktime_compare(ktime_get(), timeout) < 0);
+
+	return -ETIMEDOUT;
+}
+
+static void tegra_wake_up_secondary_cpus(void)
+{
+	unsigned int cpu, lcpu;
+
+	for_each_cpu(lcpu, cpu_online_mask) {
+		cpu = cpu_logical_map(lcpu);
+
+		if (cpu > 0) {
+			tegra_enable_cpu_clock(cpu);
+			tegra_cpu_out_of_reset(cpu);
+			flowctrl_write_cpu_halt(cpu, 0);
+		}
+	}
+}
+
+static int tegra_cpuidle_cc6_enter(void)
+{
+	int err;
+
+	err = tegra_await_secondary_cpus_shutdown();
+	if (err)
+		return err;
+
+	err = tegra_idle_lp2_last();
+
+	tegra_wake_up_secondary_cpus();
+
+	return err;
+}
+
+static int tegra_cpuidle_c7_enter(void)
+{
+	int err;
+
+	if (tegra_cpuidle_using_firmware()) {
+		err = call_firmware_op(prepare_idle, TF_PM_MODE_LP2_NOFLUSH_L2);
+		if (err)
+			return err;
+
+		return call_firmware_op(do_idle, 0);
+	}
+
+	return cpu_suspend(0, tegra30_sleep_cpu_secondary_finish);
+}
+
+static int tegra_cpuidle_enter(struct cpuidle_device *dev,
+			       int index, unsigned int cpu)
+{
+	int err;
+
+	local_fiq_disable();
+	tegra_set_cpu_in_lp2();
+	cpu_pm_enter();
+
+	switch (index) {
+	case TEGRA_C7:
+		err = tegra_cpuidle_c7_enter();
+		break;
+	case TEGRA_CC6:
+		cpuidle_coupled_parallel_barrier(dev, &tegra_idle_barrier);
+
+		if (cpu > 0)
+			err = cpu_suspend(cpu, tegra_shutdown_secondary_cpu);
+		else
+			err = tegra_cpuidle_cc6_enter();
+		break;
+	default:
+		err = -EINVAL;
+		break;
+	}
+
+	cpu_pm_exit();
+	tegra_clear_cpu_in_lp2();
+	local_fiq_enable();
+
+	smp_rmb();
+
+	return err;
+}
+
+static int tegra_adjust_state_index(struct cpuidle_device *dev,
+				    struct cpuidle_driver *drv,
+				    int index, unsigned int cpu)
+{
+	/*
+	 * On Tegra30 CPU0 can't be power-gated while secondary CPUs
+	 * are active because it gates the whole CPU cluster.
+	 */
+	if (cpu != 0 || index != TEGRA_C7 || tegra_get_chip_id() != TEGRA30)
+		return index;
+
+	if (!IS_ENABLED(CONFIG_PM_SLEEP) || num_online_cpus() > 1)
+		index = TEGRA_C1;
+	else
+		index = TEGRA_CC6;
+
+	if (drv->states[index].disabled || dev->states_usage[index].disable)
+		index = -1;
+
+	return index;
+}
+
+static int tegra_cpu_idle(struct cpuidle_device *dev,
+			  struct cpuidle_driver *drv,
+			  int index)
+{
+	unsigned int cpu = cpu_logical_map(dev->cpu);
+	int err;
+
+	index = tegra_adjust_state_index(dev, drv, index, cpu);
+	if (index < 0)
+		return index;
+
+	if (index == TEGRA_C1)
+		err = arm_cpuidle_simple_enter(dev, drv, index);
+	else
+		err = tegra_cpuidle_enter(dev, index, cpu);
+
+	return WARN_ON_ONCE(err) ? -1 : index;
+}
+
+static void tegra114_enter_s2idle(struct cpuidle_device *dev,
+				  struct cpuidle_driver *drv,
+				  int index)
+{
+	tegra_cpu_idle(dev, drv, index);
+}
+
+static struct cpuidle_driver tegra_idle_driver = {
+	.name = "tegra_idle",
+	.states = {
+		[TEGRA_C1] = ARM_CPUIDLE_WFI_STATE_PWR(600),
+		[TEGRA_C7] = {
+			.enter			= tegra_cpu_idle,
+			.exit_latency		= 2000,
+			.target_residency	= 2200,
+			.power_usage		= 100,
+			.flags			= CPUIDLE_FLAG_TIMER_STOP,
+			.name			= "C7",
+			.desc			= "CPU core powered off",
+		},
+		[TEGRA_CC6] = {
+			.enter			= tegra_cpu_idle,
+			.exit_latency		= 5000,
+			.target_residency	= 10000,
+			.power_usage		= 0,
+			.flags			= CPUIDLE_FLAG_TIMER_STOP |
+						  CPUIDLE_FLAG_COUPLED,
+			.name			= "CC6",
+			.desc			= "CPU cluster powered off",
+		},
+	},
+	.state_count = 3,
+	.safe_state_index = TEGRA_C1,
+};
+
+/*
+ * Tegra20 HW appears to have a bug such that PCIe device interrupts, whether
+ * they are legacy IRQs or MSI, are lost when LP2 is enabled. To work around
+ * this, simply disable LP2 if the PCI driver and DT node are both enabled.
+ */
+void tegra_cpuidle_pcie_irqs_in_use(void)
+{
+	if (tegra_get_chip_id() != TEGRA20 ||
+	    tegra_idle_driver.states[TEGRA_CC6].disabled)
+		return;
+
+	pr_info("Disabling cpuidle LP2 state, since PCIe IRQs are in use\n");
+	tegra_idle_driver.states[TEGRA_CC6].disabled = true;
+}
+
+static void tegra_cpuidle_adjust_tegra114_c7_state(void)
+{
+	struct cpuidle_state *s = &tegra_idle_driver.states[TEGRA_C7];
+
+	s->enter_s2idle = tegra114_enter_s2idle;
+	s->target_residency = 1000;
+	s->exit_latency = 500;
+}
+
+static int tegra_cpuidle_probe(struct platform_device *pdev)
+{
+	/*
+	 * Tegra30+ SoCs are big.LITTLE architectures, but the Little
+	 * core is not supported at the moment.
+	 */
+	const struct cpumask *coupled_cpus = cpu_possible_mask;
+
+	/*
+	 * Required suspend-resume functionality, which is provided by the
+	 * Tegra-arch core and PMC driver, is unavailable if PM-sleep option
+	 * is disabled.
+	 */
+	if (!IS_ENABLED(CONFIG_PM_SLEEP)) {
+		if (!tegra_cpuidle_using_firmware())
+			tegra_idle_driver.states[TEGRA_C7].disabled = true;
+
+		tegra_idle_driver.states[TEGRA_CC6].disabled = true;
+	}
+
+	/*
+	 * Generic WFI state (also known as C1 or LP3) is common for all
+	 * NVIDIA Tegra SoCs.
+	 */
+	switch (tegra_get_chip_id()) {
+	case TEGRA20:
+		/* CPU cores can't be power-gated separately at all */
+		tegra_idle_driver.states[TEGRA_C7].disabled = true;
+		break;
+	case TEGRA30:
+		tegra_idle_driver.states[TEGRA_CC6].disabled = true;
+		break;
+	case TEGRA114:
+	case TEGRA124:
+		tegra_cpuidle_adjust_tegra114_c7_state();
+
+		/* coupled CC6 (LP2) state isn't implemented yet */
+		tegra_idle_driver.states[TEGRA_CC6].disabled = true;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return cpuidle_register(&tegra_idle_driver, coupled_cpus);
+}
+
+static struct platform_driver tegra_cpuidle_driver = {
+	.probe = tegra_cpuidle_probe,
+	.driver = {
+		.name = "tegra-cpuidle",
+		.suppress_bind_attrs = true,
+	},
+};
+builtin_platform_driver(tegra_cpuidle_driver);
diff --git a/include/soc/tegra/cpuidle.h b/include/soc/tegra/cpuidle.h
index f758808342b6..5665975015d8 100644
--- a/include/soc/tegra/cpuidle.h
+++ b/include/soc/tegra/cpuidle.h
@@ -6,8 +6,12 @@
 #ifndef __SOC_TEGRA_CPUIDLE_H__
 #define __SOC_TEGRA_CPUIDLE_H__
 
+#ifdef CONFIG_ARM_TEGRA_CPUIDLE
+void tegra_cpuidle_pcie_irqs_in_use(void);
+#else
 static inline void tegra_cpuidle_pcie_irqs_in_use(void)
 {
 }
+#endif
 
 #endif /* __SOC_TEGRA_CPUIDLE_H__ */
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
