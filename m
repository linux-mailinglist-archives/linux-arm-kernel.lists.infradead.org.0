Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15EAE8782F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 13:05:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8OHFzJ/jVwzALHu2nbqYOWVTn5zgphehapKIl5Unfac=; b=Z5gLH39oBn74BZ
	f5EDHCFM7wgzHncC1i2W7t8HmEvPUeuZo6PUvf18cJQhIj/+y4Ho37m/Mrh2aqLJTcrviP+Ox3nw8
	iuh1Ukcsy7rMs9kEEBVK7IPU59yorbrl/RloVy3z9YlKJKSs5L55zguOhjAh4Itp0kl7xzt0uU1yM
	lMnDE5QH1xQ/Kk6nQQDQ/D+GyNSCNp7V1M+8VqcDzMBcz/3VwWmDIn8n6sb/eoTWakqk3j1E1Kixy
	f9TQ/EcKRiPunDfH+8BCAi75mxGznISgGhTF+tSXzld0p1dZGDcivmP7U0uVamOexz9zI4ZG36oOj
	AVUyng6tDjAw6NSUeLTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw2iA-0007pb-Rc; Fri, 09 Aug 2019 11:05:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw2gG-000510-Hm
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 11:03:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A492B1684;
 Fri,  9 Aug 2019 04:03:31 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EF71C3F575;
 Fri,  9 Aug 2019 04:03:29 -0700 (PDT)
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: linux-pm@vger.kernel.org
Subject: [PATCH v2 6/8] PSCI: cpuidle: Refactor CPU suspend power_state
 parameter handling
Date: Fri,  9 Aug 2019 12:03:12 +0100
Message-Id: <33a7587f6f5105a2d8d2a7e893100df341574b03.1565348376.git.lorenzo.pieralisi@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1565348376.git.lorenzo.pieralisi@arm.com>
References: <20190722153745.32446-1-lorenzo.pieralisi@arm.com>
 <cover.1565348376.git.lorenzo.pieralisi@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_040332_948050_2A90F34A 
X-CRM114-Status: GOOD (  22.93  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, LKML <linux-kernel@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Shawn Guo <shawnguo@kernel.org>,
 Will Deacon <will@kernel.org>, LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Current PSCI code handles idle state entry through the
psci_cpu_suspend_enter() API, that takes an idle state index as a
parameter and convert the index into a previously initialized
power_state parameter before calling the PSCI.CPU_SUSPEND() with it.

This is unwieldly, since it forces the PSCI firmware layer to keep track
of power_state parameter for every idle state so that the
index->power_state conversion can be made in the PSCI firmware layer
instead of the CPUidle driver implementations.

Move the power_state handling out of drivers/firmware/psci
into the respective ACPI/DT PSCI CPUidle backends and convert
the psci_cpu_suspend_enter() API to get the power_state
parameter as input, which makes it closer to its firmware
interface PSCI.CPU_SUSPEND() API.

A notable side effect is that the PSCI ACPI/DT CPUidle backends
now can directly handle (and if needed update) power_state
parameters before handing them over to the PSCI firmware
interface to trigger PSCI.CPU_SUSPEND() calls.

Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
---
 arch/arm64/kernel/cpuidle.c    |  49 +++++++++-
 drivers/cpuidle/cpuidle-psci.c |  87 +++++++++++++++++-
 drivers/firmware/psci/psci.c   | 157 ++-------------------------------
 include/linux/cpuidle.h        |  17 +++-
 include/linux/psci.h           |   4 +-
 5 files changed, 154 insertions(+), 160 deletions(-)

diff --git a/arch/arm64/kernel/cpuidle.c b/arch/arm64/kernel/cpuidle.c
index 619e0ebb8399..e4d6af2fdec7 100644
--- a/arch/arm64/kernel/cpuidle.c
+++ b/arch/arm64/kernel/cpuidle.c
@@ -47,17 +47,58 @@ int arm_cpuidle_suspend(int index)
 
 #define ARM64_LPI_IS_RETENTION_STATE(arch_flags) (!(arch_flags))
 
+static int psci_acpi_cpu_init_idle(unsigned int cpu)
+{
+	int i, count;
+	struct acpi_lpi_state *lpi;
+	struct acpi_processor *pr = per_cpu(processors, cpu);
+
+	/*
+	 * If the PSCI cpu_suspend function hook has not been initialized
+	 * idle states must not be enabled, so bail out
+	 */
+	if (!psci_ops.cpu_suspend)
+		return -EOPNOTSUPP;
+
+	if (unlikely(!pr || !pr->flags.has_lpi))
+		return -EINVAL;
+
+	count = pr->power.count - 1;
+	if (count <= 0)
+		return -ENODEV;
+
+	for (i = 0; i < count; i++) {
+		u32 state;
+
+		lpi = &pr->power.lpi_states[i + 1];
+		/*
+		 * Only bits[31:0] represent a PSCI power_state while
+		 * bits[63:32] must be 0x0 as per ARM ACPI FFH Specification
+		 */
+		state = lpi->address;
+		if (!psci_power_state_is_valid(state)) {
+			pr_warn("Invalid PSCI power state %#x\n", state);
+			return -EINVAL;
+		}
+	}
+
+	return 0;
+}
+
 int acpi_processor_ffh_lpi_probe(unsigned int cpu)
 {
-	return psci_cpu_init_idle(cpu);
+	return psci_acpi_cpu_init_idle(cpu);
 }
 
 int acpi_processor_ffh_lpi_enter(struct acpi_lpi_state *lpi)
 {
+	u32 state = lpi->address;
+
 	if (ARM64_LPI_IS_RETENTION_STATE(lpi->arch_flags))
-		return CPU_PM_CPU_IDLE_ENTER_RETENTION(psci_cpu_suspend_enter,
-						lpi->index);
+		return CPU_PM_CPU_IDLE_ENTER_RETENTION_PARAM(psci_cpu_suspend_enter,
+						lpi->index, state);
 	else
-		return CPU_PM_CPU_IDLE_ENTER(psci_cpu_suspend_enter, lpi->index);
+		return CPU_PM_CPU_IDLE_ENTER_PARAM(psci_cpu_suspend_enter,
+					     lpi->index, state);
 }
 #endif
diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
index ab1dea918ea3..f3c1a2396f98 100644
--- a/drivers/cpuidle/cpuidle-psci.c
+++ b/drivers/cpuidle/cpuidle-psci.c
@@ -22,10 +22,15 @@
 
 #include "dt_idle_states.h"
 
+static DEFINE_PER_CPU_READ_MOSTLY(u32 *, psci_power_state);
+
 static int psci_enter_idle_state(struct cpuidle_device *dev,
 				struct cpuidle_driver *drv, int idx)
 {
-	return CPU_PM_CPU_IDLE_ENTER(psci_cpu_suspend_enter, idx);
+	u32 *state = __this_cpu_read(psci_power_state);
+
+	return CPU_PM_CPU_IDLE_ENTER_PARAM(psci_cpu_suspend_enter,
+					   idx, state[idx - 1]);
 }
 
 static struct cpuidle_driver psci_idle_driver __initdata = {
@@ -51,6 +56,86 @@ static const struct of_device_id psci_idle_state_match[] __initconst = {
 	{ },
 };
 
+static int __init psci_dt_parse_state_node(struct device_node *np, u32 *state)
+{
+	int err = of_property_read_u32(np, "arm,psci-suspend-param", state);
+
+	if (err) {
+		pr_warn("%pOF missing arm,psci-suspend-param property\n", np);
+		return err;
+	}
+
+	if (!psci_power_state_is_valid(*state)) {
+		pr_warn("Invalid PSCI power state %#x\n", *state);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node, int cpu)
+{
+	int i, ret = 0, count = 0;
+	u32 *psci_states;
+	struct device_node *state_node;
+
+	/* Count idle states */
+	while ((state_node = of_parse_phandle(cpu_node, "cpu-idle-states",
+					      count))) {
+		count++;
+		of_node_put(state_node);
+	}
+
+	if (!count)
+		return -ENODEV;
+
+	psci_states = kcalloc(count, sizeof(*psci_states), GFP_KERNEL);
+	if (!psci_states)
+		return -ENOMEM;
+
+	for (i = 0; i < count; i++) {
+		state_node = of_parse_phandle(cpu_node, "cpu-idle-states", i);
+		ret = psci_dt_parse_state_node(state_node, &psci_states[i]);
+		of_node_put(state_node);
+
+		if (ret)
+			goto free_mem;
+
+		pr_debug("psci-power-state %#x index %d\n", psci_states[i], i);
+	}
+
+	/* Idle states parsed correctly, initialize per-cpu pointer */
+	per_cpu(psci_power_state, cpu) = psci_states;
+	return 0;
+
+free_mem:
+	kfree(psci_states);
+	return ret;
+}
+
+static __init int psci_cpu_init_idle(unsigned int cpu)
+{
+	struct device_node *cpu_node;
+	int ret;
+
+	/*
+	 * If the PSCI cpu_suspend function hook has not been initialized
+	 * idle states must not be enabled, so bail out
+	 */
+	if (!psci_ops.cpu_suspend)
+		return -EOPNOTSUPP;
+
+	cpu_node = of_cpu_device_node_get(cpu);
+	if (!cpu_node)
+		return -ENODEV;
+
+	ret = psci_dt_cpu_init_idle(cpu_node, cpu);
+
+	of_node_put(cpu_node);
+
+	return ret;
+}
+
 static int __init psci_idle_init_cpu(int cpu)
 {
 	struct cpuidle_driver *drv;
diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
index b343f8a34c6a..84f4ff351c62 100644
--- a/drivers/firmware/psci/psci.c
+++ b/drivers/firmware/psci/psci.c
@@ -103,7 +103,7 @@ static inline bool psci_power_state_loses_context(u32 state)
 	return state & mask;
 }
 
-static inline bool psci_power_state_is_valid(u32 state)
+bool psci_power_state_is_valid(u32 state)
 {
 	const u32 valid_mask = psci_has_ext_power_state() ?
 			       PSCI_1_0_EXT_POWER_STATE_MASK :
@@ -277,162 +277,21 @@ static int __init psci_features(u32 psci_func_id)
 }
 
 #ifdef CONFIG_CPU_IDLE
-static DEFINE_PER_CPU_READ_MOSTLY(u32 *, psci_power_state);
-
-static int psci_dt_parse_state_node(struct device_node *np, u32 *state)
-{
-	int err = of_property_read_u32(np, "arm,psci-suspend-param", state);
-
-	if (err) {
-		pr_warn("%pOF missing arm,psci-suspend-param property\n", np);
-		return err;
-	}
-
-	if (!psci_power_state_is_valid(*state)) {
-		pr_warn("Invalid PSCI power state %#x\n", *state);
-		return -EINVAL;
-	}
-
-	return 0;
-}
-
-static int psci_dt_cpu_init_idle(struct device_node *cpu_node, int cpu)
-{
-	int i, ret = 0, count = 0;
-	u32 *psci_states;
-	struct device_node *state_node;
-
-	/* Count idle states */
-	while ((state_node = of_parse_phandle(cpu_node, "cpu-idle-states",
-					      count))) {
-		count++;
-		of_node_put(state_node);
-	}
-
-	if (!count)
-		return -ENODEV;
-
-	psci_states = kcalloc(count, sizeof(*psci_states), GFP_KERNEL);
-	if (!psci_states)
-		return -ENOMEM;
-
-	for (i = 0; i < count; i++) {
-		state_node = of_parse_phandle(cpu_node, "cpu-idle-states", i);
-		ret = psci_dt_parse_state_node(state_node, &psci_states[i]);
-		of_node_put(state_node);
-
-		if (ret)
-			goto free_mem;
-
-		pr_debug("psci-power-state %#x index %d\n", psci_states[i], i);
-	}
-
-	/* Idle states parsed correctly, initialize per-cpu pointer */
-	per_cpu(psci_power_state, cpu) = psci_states;
-	return 0;
-
-free_mem:
-	kfree(psci_states);
-	return ret;
-}
-
-#ifdef CONFIG_ACPI
-#include <acpi/processor.h>
-
-static int __maybe_unused psci_acpi_cpu_init_idle(unsigned int cpu)
-{
-	int i, count;
-	u32 *psci_states;
-	struct acpi_lpi_state *lpi;
-	struct acpi_processor *pr = per_cpu(processors, cpu);
-
-	if (unlikely(!pr || !pr->flags.has_lpi))
-		return -EINVAL;
-
-	count = pr->power.count - 1;
-	if (count <= 0)
-		return -ENODEV;
-
-	psci_states = kcalloc(count, sizeof(*psci_states), GFP_KERNEL);
-	if (!psci_states)
-		return -ENOMEM;
-
-	for (i = 0; i < count; i++) {
-		u32 state;
-
-		lpi = &pr->power.lpi_states[i + 1];
-		/*
-		 * Only bits[31:0] represent a PSCI power_state while
-		 * bits[63:32] must be 0x0 as per ARM ACPI FFH Specification
-		 */
-		state = lpi->address;
-		if (!psci_power_state_is_valid(state)) {
-			pr_warn("Invalid PSCI power state %#x\n", state);
-			kfree(psci_states);
-			return -EINVAL;
-		}
-		psci_states[i] = state;
-	}
-	/* Idle states parsed correctly, initialize per-cpu pointer */
-	per_cpu(psci_power_state, cpu) = psci_states;
-	return 0;
-}
-#else
-static int __maybe_unused psci_acpi_cpu_init_idle(unsigned int cpu)
-{
-	return -EINVAL;
-}
-#endif
-
-int psci_cpu_init_idle(unsigned int cpu)
-{
-	struct device_node *cpu_node;
-	int ret;
-
-	/*
-	 * If the PSCI cpu_suspend function hook has not been initialized
-	 * idle states must not be enabled, so bail out
-	 */
-	if (!psci_ops.cpu_suspend)
-		return -EOPNOTSUPP;
-
-	if (!acpi_disabled)
-		return psci_acpi_cpu_init_idle(cpu);
-
-	cpu_node = of_get_cpu_node(cpu, NULL);
-	if (!cpu_node)
-		return -ENODEV;
-
-	ret = psci_dt_cpu_init_idle(cpu_node, cpu);
-
-	of_node_put(cpu_node);
-
-	return ret;
-}
-
-static int psci_suspend_finisher(unsigned long index)
+static int psci_suspend_finisher(unsigned long state)
 {
-	u32 *state = __this_cpu_read(psci_power_state);
+	u32 power_state = state;
 
-	return psci_ops.cpu_suspend(state[index - 1],
-				    __pa_symbol(cpu_resume));
+	return psci_ops.cpu_suspend(power_state, __pa_symbol(cpu_resume));
 }
 
-int psci_cpu_suspend_enter(unsigned long index)
+int psci_cpu_suspend_enter(u32 state)
 {
 	int ret;
-	u32 *state = __this_cpu_read(psci_power_state);
-	/*
-	 * idle state index 0 corresponds to wfi, should never be called
-	 * from the cpu_suspend operations
-	 */
-	if (WARN_ON_ONCE(!index))
-		return -EINVAL;
 
-	if (!psci_power_state_loses_context(state[index - 1]))
-		ret = psci_ops.cpu_suspend(state[index - 1], 0);
+	if (!psci_power_state_loses_context(state))
+		ret = psci_ops.cpu_suspend(state, 0);
 	else
-		ret = cpu_suspend(index, psci_suspend_finisher);
+		ret = cpu_suspend(state, psci_suspend_finisher);
 
 	return ret;
 }
diff --git a/include/linux/cpuidle.h b/include/linux/cpuidle.h
index bb9a0db89f1a..12ae4b87494e 100644
--- a/include/linux/cpuidle.h
+++ b/include/linux/cpuidle.h
@@ -256,7 +256,10 @@ static inline int cpuidle_register_governor(struct cpuidle_governor *gov)
 {return 0;}
 #endif
 
-#define __CPU_PM_CPU_IDLE_ENTER(low_level_idle_enter, idx, is_retention) \
+#define __CPU_PM_CPU_IDLE_ENTER(low_level_idle_enter,			\
+				idx,					\
+				state,					\
+				is_retention)				\
 ({									\
 	int __ret = 0;							\
 									\
@@ -268,7 +271,7 @@ static inline int cpuidle_register_governor(struct cpuidle_governor *gov)
 	if (!is_retention)						\
 		__ret =  cpu_pm_enter();				\
 	if (!__ret) {							\
-		__ret = low_level_idle_enter(idx);			\
+		__ret = low_level_idle_enter(state);			\
 		if (!is_retention)					\
 			cpu_pm_exit();					\
 	}								\
@@ -277,9 +280,15 @@ static inline int cpuidle_register_governor(struct cpuidle_governor *gov)
 })
 
 #define CPU_PM_CPU_IDLE_ENTER(low_level_idle_enter, idx)	\
-	__CPU_PM_CPU_IDLE_ENTER(low_level_idle_enter, idx, 0)
+	__CPU_PM_CPU_IDLE_ENTER(low_level_idle_enter, idx, idx, 0)
 
 #define CPU_PM_CPU_IDLE_ENTER_RETENTION(low_level_idle_enter, idx)	\
-	__CPU_PM_CPU_IDLE_ENTER(low_level_idle_enter, idx, 1)
+	__CPU_PM_CPU_IDLE_ENTER(low_level_idle_enter, idx, idx, 1)
+
+#define CPU_PM_CPU_IDLE_ENTER_PARAM(low_level_idle_enter, idx, state)	\
+	__CPU_PM_CPU_IDLE_ENTER(low_level_idle_enter, idx, state, 0)
+
+#define CPU_PM_CPU_IDLE_ENTER_RETENTION_PARAM(low_level_idle_enter, idx, state)	\
+	__CPU_PM_CPU_IDLE_ENTER(low_level_idle_enter, idx, state, 1)
 
 #endif /* _LINUX_CPUIDLE_H */
diff --git a/include/linux/psci.h b/include/linux/psci.h
index a8a15613c157..e2bacc6fd2f2 100644
--- a/include/linux/psci.h
+++ b/include/linux/psci.h
@@ -15,8 +15,8 @@
 
 bool psci_tos_resident_on(int cpu);
 
-int psci_cpu_init_idle(unsigned int cpu);
-int psci_cpu_suspend_enter(unsigned long index);
+int psci_cpu_suspend_enter(u32 state);
+bool psci_power_state_is_valid(u32 state);
 
 enum psci_conduit {
 	PSCI_CONDUIT_NONE,
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
