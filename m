Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26AA57DBD4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 14:47:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6N9opBawE1NRuYhsFcm4nb54FZuCR7Eb/ywReUc3yPs=; b=SEo4pEoQO1/v2v
	Cyuv9akylAuTMcWknRumsTu+iCtx9S2OZjEIZwruDkEQPECdhbjBN971+/pgdkpi+29p834weCS/S
	gXcbpTNWOixgcyGwSEsVk8rdJsFVXRkhblyq2b2y1rqmaj+TBbZeX2LgfTpsN9BLD7GI7hDu5cfO1
	OpmfwiK4eGIps9pd4C4M6FvH6wL6vRl8SwSsVY015/Ny0TKtrD75KUCFKrnBjA1NceuCRl8NQ0xF5
	dCKioyNlMzOZ7XAfvQCPkuEz60ZYpQMf/EAy0CU0FdDcbC6g7eq9xF3Wt+CWmq7PXvkyGcFxaluHR
	GLiA9ebQLe9wxFzR2aMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htAUq-0004rT-Ln; Thu, 01 Aug 2019 12:47:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htAU0-00048V-OX
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 12:47:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2F32B1570;
 Thu,  1 Aug 2019 05:47:00 -0700 (PDT)
Received: from queper01-lin.cambridge.arm.com (queper01-lin.cambridge.arm.com
 [10.1.195.48])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 11C183F575;
 Thu,  1 Aug 2019 05:46:57 -0700 (PDT)
From: Quentin Perret <quentin.perret@arm.com>
To: edubezval@gmail.com, rui.zhang@intel.com, javi.merino@kernel.org,
 viresh.kumar@linaro.org, amit.kachhap@gmail.com, rjw@rjwysocki.net,
 catalin.marinas@arm.com, will@kernel.org, daniel.lezcano@linaro.org
Subject: [PATCH v6 3/3] thermal: cpu_cooling: Migrate to using the EM framework
Date: Thu,  1 Aug 2019 13:46:43 +0100
Message-Id: <20190801124643.17112-4-quentin.perret@arm.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190801124643.17112-1-quentin.perret@arm.com>
References: <20190801124643.17112-1-quentin.perret@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_054700_936349_24FCAD9C 
X-CRM114-Status: GOOD (  28.60  )
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
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 quentin.perret@arm.com, mka@chromium.org, ionela.voinescu@arm.com,
 dietmar.eggemann@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The newly introduced Energy Model framework manages power cost tables in
a generic way. Moreover, it supports several types of models since the
tables can come from DT or firmware (through SCMI) for example. On the
other hand, the cpu_cooling subsystem manages its own power cost tables
using only DT data.

In order to avoid the duplication of data in the kernel, and in order to
enable IPA with EMs coming from more than just DT, remove the private
tables from cpu_cooling.c and migrate it to using the centralized EM
framework. Doing so should have no visible functional impact for
existing users of IPA since:

 - recent extenstions to the the PM_OPP infrastructure enable the
   registration of EMs in PM_EM using the DT property used by IPA;

 - the existing upstream cpufreq drivers marked with the
   'CPUFREQ_IS_COOLING_DEV' flag all use the aforementioned PM_OPP
   infrastructure, which means they all support PM_EM. The only two
   exceptions are qoriq-cpufreq which doesn't in fact use an EM and
   scmi-cpufreq which doesn't use DT for power costs.

For existing users of cpu_cooling, PM_EM tables will contain the exact
same power values that IPA used to compute on its own until now. The
only new dependency for them is to compile in CONFIG_ENERGY_MODEL.

The case where the thermal subsystem is used without an Energy Model
(cpufreq_cooling_ops) is handled by looking directly at CPUFreq's
frequency table which is already a dependency for cpu_cooling.c anyway.
Since the thermal framework expects the cooling states in a particular
order, bail out whenever the CPUFreq table is unsorted, since that is
fairly uncommon in general, and there are currently no users of
cpu_cooling for this use-case.

Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Acked-by: Viresh Kumar <viresh.kumar@linaro.org>
Signed-off-by: Quentin Perret <quentin.perret@arm.com>
---
 drivers/thermal/Kconfig       |   1 +
 drivers/thermal/cpu_cooling.c | 250 ++++++++++++----------------------
 2 files changed, 91 insertions(+), 160 deletions(-)

diff --git a/drivers/thermal/Kconfig b/drivers/thermal/Kconfig
index 9966364a6deb..340853a3ca48 100644
--- a/drivers/thermal/Kconfig
+++ b/drivers/thermal/Kconfig
@@ -144,6 +144,7 @@ config THERMAL_GOV_USER_SPACE
 
 config THERMAL_GOV_POWER_ALLOCATOR
 	bool "Power allocator thermal governor"
+	depends on ENERGY_MODEL
 	help
 	  Enable this to manage platform thermals by dynamically
 	  allocating and limiting power to devices.
diff --git a/drivers/thermal/cpu_cooling.c b/drivers/thermal/cpu_cooling.c
index 498f59ab64b2..83486775e593 100644
--- a/drivers/thermal/cpu_cooling.c
+++ b/drivers/thermal/cpu_cooling.c
@@ -19,6 +19,7 @@
 #include <linux/slab.h>
 #include <linux/cpu.h>
 #include <linux/cpu_cooling.h>
+#include <linux/energy_model.h>
 
 #include <trace/events/thermal.h>
 
@@ -36,21 +37,6 @@
  *	...
  */
 
-/**
- * struct freq_table - frequency table along with power entries
- * @frequency:	frequency in KHz
- * @power:	power in mW
- *
- * This structure is built when the cooling device registers and helps
- * in translating frequency to power and vice versa.
- */
-struct freq_table {
-	u32 frequency;
-#ifdef CONFIG_THERMAL_GOV_POWER_ALLOCATOR
-	u32 power;
-#endif
-};
-
 /**
  * struct time_in_idle - Idle time stats
  * @time: previous reading of the absolute time that this cpu was idle
@@ -72,7 +58,7 @@ struct time_in_idle {
  *	frequency.
  * @max_level: maximum cooling level. One less than total number of valid
  *	cpufreq frequencies.
- * @freq_table: Freq table in descending order of frequencies
+ * @em: Reference on the Energy Model of the device
  * @cdev: thermal_cooling_device pointer to keep track of the
  *	registered cooling device.
  * @policy: cpufreq policy.
@@ -88,7 +74,7 @@ struct cpufreq_cooling_device {
 	unsigned int cpufreq_state;
 	unsigned int clipped_freq;
 	unsigned int max_level;
-	struct freq_table *freq_table;	/* In descending order */
+	struct em_perf_domain *em;
 	struct cpufreq_policy *policy;
 	struct list_head node;
 	struct time_in_idle *idle_time;
@@ -162,114 +148,40 @@ static int cpufreq_thermal_notifier(struct notifier_block *nb,
 static unsigned long get_level(struct cpufreq_cooling_device *cpufreq_cdev,
 			       unsigned int freq)
 {
-	struct freq_table *freq_table = cpufreq_cdev->freq_table;
-	unsigned long level;
+	int i;
 
-	for (level = 1; level <= cpufreq_cdev->max_level; level++)
-		if (freq > freq_table[level].frequency)
+	for (i = cpufreq_cdev->max_level - 1; i >= 0; i--) {
+		if (freq > cpufreq_cdev->em->table[i].frequency)
 			break;
-
-	return level - 1;
-}
-
-/**
- * update_freq_table() - Update the freq table with power numbers
- * @cpufreq_cdev:	the cpufreq cooling device in which to update the table
- * @capacitance: dynamic power coefficient for these cpus
- *
- * Update the freq table with power numbers.  This table will be used in
- * cpu_power_to_freq() and cpu_freq_to_power() to convert between power and
- * frequency efficiently.  Power is stored in mW, frequency in KHz.  The
- * resulting table is in descending order.
- *
- * Return: 0 on success, -EINVAL if there are no OPPs for any CPUs,
- * or -ENOMEM if we run out of memory.
- */
-static int update_freq_table(struct cpufreq_cooling_device *cpufreq_cdev,
-			     u32 capacitance)
-{
-	struct freq_table *freq_table = cpufreq_cdev->freq_table;
-	struct dev_pm_opp *opp;
-	struct device *dev = NULL;
-	int num_opps = 0, cpu = cpufreq_cdev->policy->cpu, i;
-
-	dev = get_cpu_device(cpu);
-	if (unlikely(!dev)) {
-		pr_warn("No cpu device for cpu %d\n", cpu);
-		return -ENODEV;
-	}
-
-	num_opps = dev_pm_opp_get_opp_count(dev);
-	if (num_opps < 0)
-		return num_opps;
-
-	/*
-	 * The cpufreq table is also built from the OPP table and so the count
-	 * should match.
-	 */
-	if (num_opps != cpufreq_cdev->max_level + 1) {
-		dev_warn(dev, "Number of OPPs not matching with max_levels\n");
-		return -EINVAL;
-	}
-
-	for (i = 0; i <= cpufreq_cdev->max_level; i++) {
-		unsigned long freq = freq_table[i].frequency * 1000;
-		u32 freq_mhz = freq_table[i].frequency / 1000;
-		u64 power;
-		u32 voltage_mv;
-
-		/*
-		 * Find ceil frequency as 'freq' may be slightly lower than OPP
-		 * freq due to truncation while converting to kHz.
-		 */
-		opp = dev_pm_opp_find_freq_ceil(dev, &freq);
-		if (IS_ERR(opp)) {
-			dev_err(dev, "failed to get opp for %lu frequency\n",
-				freq);
-			return -EINVAL;
-		}
-
-		voltage_mv = dev_pm_opp_get_voltage(opp) / 1000;
-		dev_pm_opp_put(opp);
-
-		/*
-		 * Do the multiplication with MHz and millivolt so as
-		 * to not overflow.
-		 */
-		power = (u64)capacitance * freq_mhz * voltage_mv * voltage_mv;
-		do_div(power, 1000000000);
-
-		/* power is stored in mW */
-		freq_table[i].power = power;
 	}
 
-	return 0;
+	return cpufreq_cdev->max_level - i - 1;
 }
 
 static u32 cpu_freq_to_power(struct cpufreq_cooling_device *cpufreq_cdev,
 			     u32 freq)
 {
 	int i;
-	struct freq_table *freq_table = cpufreq_cdev->freq_table;
 
-	for (i = 1; i <= cpufreq_cdev->max_level; i++)
-		if (freq > freq_table[i].frequency)
+	for (i = cpufreq_cdev->max_level - 1; i >= 0; i--) {
+		if (freq > cpufreq_cdev->em->table[i].frequency)
 			break;
+	}
 
-	return freq_table[i - 1].power;
+	return cpufreq_cdev->em->table[i + 1].power;
 }
 
 static u32 cpu_power_to_freq(struct cpufreq_cooling_device *cpufreq_cdev,
 			     u32 power)
 {
 	int i;
-	struct freq_table *freq_table = cpufreq_cdev->freq_table;
 
-	for (i = 1; i <= cpufreq_cdev->max_level; i++)
-		if (power > freq_table[i].power)
+	for (i = cpufreq_cdev->max_level - 1; i >= 0; i--) {
+		if (power > cpufreq_cdev->em->table[i].power)
 			break;
+	}
 
-	return freq_table[i - 1].frequency;
+	return cpufreq_cdev->em->table[i + 1].frequency;
 }
 
 /**
@@ -410,7 +322,7 @@ static int cpufreq_state2power(struct thermal_cooling_device *cdev,
 			       struct thermal_zone_device *tz,
 			       unsigned long state, u32 *power)
 {
-	unsigned int freq, num_cpus;
+	unsigned int freq, num_cpus, idx;
 	struct cpufreq_cooling_device *cpufreq_cdev = cdev->devdata;
 
 	/* Request state should be less than max_level */
@@ -419,7 +331,8 @@ static int cpufreq_state2power(struct thermal_cooling_device *cdev,
 
 	num_cpus = cpumask_weight(cpufreq_cdev->policy->cpus);
 
-	freq = cpufreq_cdev->freq_table[state].frequency;
+	idx = cpufreq_cdev->max_level - state;
+	freq = cpufreq_cdev->em->table[idx].frequency;
 	*power = cpu_freq_to_power(cpufreq_cdev, freq) * num_cpus;
 
 	return 0;
@@ -463,8 +376,60 @@ static int cpufreq_power2state(struct thermal_cooling_device *cdev,
 				      power);
 	return 0;
 }
+
+static inline bool em_is_sane(struct cpufreq_cooling_device *cpufreq_cdev,
+			      struct em_perf_domain *em) {
+	struct cpufreq_policy *policy;
+	unsigned int nr_levels;
+
+	if (!em)
+		return false;
+
+	policy = cpufreq_cdev->policy;
+	if (!cpumask_equal(policy->related_cpus, to_cpumask(em->cpus))) {
+		pr_err("The span of pd %*pbl is misaligned with cpufreq policy %*pbl\n",
+			cpumask_pr_args(to_cpumask(em->cpus)),
+			cpumask_pr_args(policy->related_cpus));
+		return false;
+	}
+
+	nr_levels = cpufreq_cdev->max_level + 1;
+	if (em->nr_cap_states != nr_levels) {
+		pr_err("The number of cap states in pd %*pbl (%u) doesn't match the number of cooling levels (%u)\n",
+			cpumask_pr_args(to_cpumask(em->cpus)),
+			em->nr_cap_states, nr_levels);
+		return false;
+	}
+
+	return true;
+}
 #endif /* CONFIG_THERMAL_GOV_POWER_ALLOCATOR */
 
+static unsigned int get_state_freq(struct cpufreq_cooling_device *cpufreq_cdev,
+                             unsigned long state)
+{
+       struct cpufreq_policy *policy;
+       unsigned long idx;
+
+#ifdef CONFIG_THERMAL_GOV_POWER_ALLOCATOR
+       /* Use the Energy Model table if available */
+       if (cpufreq_cdev->em) {
+               idx = cpufreq_cdev->max_level - state;
+               return cpufreq_cdev->em->table[idx].frequency;
+       }
+#endif
+
+       /* Otherwise, fallback on the CPUFreq table */
+       policy = cpufreq_cdev->policy;
+       if (policy->freq_table_sorted == CPUFREQ_TABLE_SORTED_ASCENDING)
+               idx = cpufreq_cdev->max_level - state;
+       else
+               idx = state;
+
+       return policy->freq_table[idx].frequency;
+}
+
+
 /* cpufreq cooling device callback functions are defined below */
 
 /**
@@ -530,7 +495,7 @@ static int cpufreq_set_cur_state(struct thermal_cooling_device *cdev,
 	if (cpufreq_cdev->cpufreq_state == state)
 		return 0;
 
-	clip_freq = cpufreq_cdev->freq_table[state].frequency;
+	clip_freq = get_state_freq(cpufreq_cdev, state);
 	cpufreq_cdev->cpufreq_state = state;
 	cpufreq_cdev->clipped_freq = clip_freq;
 
@@ -552,26 +517,12 @@ static struct notifier_block thermal_cpufreq_notifier_block = {
 	.notifier_call = cpufreq_thermal_notifier,
 };
 
-static unsigned int find_next_max(struct cpufreq_frequency_table *table,
-				  unsigned int prev_max)
-{
-	struct cpufreq_frequency_table *pos;
-	unsigned int max = 0;
-
-	cpufreq_for_each_valid_entry(pos, table) {
-		if (pos->frequency > max && pos->frequency < prev_max)
-			max = pos->frequency;
-	}
-
-	return max;
-}
-
 /**
  * __cpufreq_cooling_register - helper function to create cpufreq cooling device
  * @np: a valid struct device_node to the cooling device device tree node
  * @policy: cpufreq policy
  * Normally this should be same as cpufreq policy->related_cpus.
- * @capacitance: dynamic power coefficient for these cpus
+ * @em: Energy Model of the cpufreq policy
  *
  * This interface function registers the cpufreq cooling device with the name
  * "thermal-cpufreq-%x". This api can support multiple instances of cpufreq
@@ -583,12 +534,13 @@ static unsigned int find_next_max(struct cpufreq_frequency_table *table,
  */
 static struct thermal_cooling_device *
 __cpufreq_cooling_register(struct device_node *np,
-			struct cpufreq_policy *policy, u32 capacitance)
+			struct cpufreq_policy *policy,
+			struct em_perf_domain *em)
 {
 	struct thermal_cooling_device *cdev;
 	struct cpufreq_cooling_device *cpufreq_cdev;
 	char dev_name[THERMAL_NAME_LENGTH];
-	unsigned int freq, i, num_cpus;
+	unsigned int i, num_cpus;
 	int ret;
 	struct thermal_cooling_device_ops *cooling_ops;
 	bool first;
@@ -622,55 +574,38 @@ __cpufreq_cooling_register(struct device_node *np,
 	/* max_level is an index, not a counter */
 	cpufreq_cdev->max_level = i - 1;
 
-	cpufreq_cdev->freq_table = kmalloc_array(i,
-					sizeof(*cpufreq_cdev->freq_table),
-					GFP_KERNEL);
-	if (!cpufreq_cdev->freq_table) {
-		cdev = ERR_PTR(-ENOMEM);
-		goto free_idle_time;
-	}
-
 	ret = ida_simple_get(&cpufreq_ida, 0, 0, GFP_KERNEL);
 	if (ret < 0) {
 		cdev = ERR_PTR(ret);
-		goto free_table;
+		goto free_idle_time;
 	}
 	cpufreq_cdev->id = ret;
 
 	snprintf(dev_name, sizeof(dev_name), "thermal-cpufreq-%d",
 		 cpufreq_cdev->id);
 
-	/* Fill freq-table in descending order of frequencies */
-	for (i = 0, freq = -1; i <= cpufreq_cdev->max_level; i++) {
-		freq = find_next_max(policy->freq_table, freq);
-		cpufreq_cdev->freq_table[i].frequency = freq;
-
-		/* Warn for duplicate entries */
-		if (!freq)
-			pr_warn("%s: table has duplicate entries\n", __func__);
-		else
-			pr_debug("%s: freq:%u KHz\n", __func__, freq);
-	}
-
 	cooling_ops = &cpufreq_cooling_ops;
 #ifdef CONFIG_THERMAL_GOV_POWER_ALLOCATOR
-	if (capacitance) {
-		ret = update_freq_table(cpufreq_cdev, capacitance);
-		if (ret) {
-			cdev = ERR_PTR(ret);
-			goto remove_ida;
-		}
+	if (em_is_sane(cpufreq_cdev, em)) {
+		cpufreq_cdev->em = em;
 		cooling_ops->get_requested_power = cpufreq_get_requested_power;
 		cooling_ops->state2power = cpufreq_state2power;
 		cooling_ops->power2state = cpufreq_power2state;
-	}
+	} else
 #endif
+	if (policy->freq_table_sorted == CPUFREQ_TABLE_UNSORTED) {
+		pr_err("%s: unsorted frequency tables are not supported\n",
+				__func__);
+		cdev = ERR_PTR(-EINVAL);
+		goto remove_ida;
+	}
+
 	cdev = thermal_of_cooling_device_register(np, dev_name, cpufreq_cdev,
 						  cooling_ops);
 	if (IS_ERR(cdev))
 		goto remove_ida;
 
-	cpufreq_cdev->clipped_freq = cpufreq_cdev->freq_table[0].frequency;
+	cpufreq_cdev->clipped_freq = get_state_freq(cpufreq_cdev, 0);
 
 	mutex_lock(&cooling_list_lock);
 	/* Register the notifier for first cpufreq cooling device */
@@ -686,8 +621,6 @@ __cpufreq_cooling_register(struct device_node *np,
 
 remove_ida:
 	ida_simple_remove(&cpufreq_ida, cpufreq_cdev->id);
-free_table:
-	kfree(cpufreq_cdev->freq_table);
 free_idle_time:
 	kfree(cpufreq_cdev->idle_time);
 free_cdev:
@@ -709,7 +642,7 @@ __cpufreq_cooling_register(struct device_node *np,
 struct thermal_cooling_device *
 cpufreq_cooling_register(struct cpufreq_policy *policy)
 {
-	return __cpufreq_cooling_register(NULL, policy, 0);
+	return __cpufreq_cooling_register(NULL, policy, NULL);
 }
 EXPORT_SYMBOL_GPL(cpufreq_cooling_register);
 
@@ -737,7 +670,6 @@ of_cpufreq_cooling_register(struct cpufreq_policy *policy)
 {
 	struct device_node *np = of_get_cpu_node(policy->cpu, NULL);
 	struct thermal_cooling_device *cdev = NULL;
-	u32 capacitance = 0;
 
 	if (!np) {
 		pr_err("cpu_cooling: OF node not available for cpu%d\n",
@@ -746,10 +678,9 @@ of_cpufreq_cooling_register(struct cpufreq_policy *policy)
 	}
 
 	if (of_find_property(np, "#cooling-cells", NULL)) {
-		of_property_read_u32(np, "dynamic-power-coefficient",
-				     &capacitance);
+		struct em_perf_domain *em = em_cpu_get(policy->cpu);
 
-		cdev = __cpufreq_cooling_register(np, policy, capacitance);
+		cdev = __cpufreq_cooling_register(np, policy, em);
 		if (IS_ERR(cdev)) {
 			pr_err("cpu_cooling: cpu%d failed to register as cooling device: %ld\n",
 			       policy->cpu, PTR_ERR(cdev));
@@ -791,7 +722,6 @@ void cpufreq_cooling_unregister(struct thermal_cooling_device *cdev)
 	thermal_cooling_device_unregister(cdev);
 	ida_simple_remove(&cpufreq_ida, cpufreq_cdev->id);
 	kfree(cpufreq_cdev->idle_time);
-	kfree(cpufreq_cdev->freq_table);
 	kfree(cpufreq_cdev);
 }
 EXPORT_SYMBOL_GPL(cpufreq_cooling_unregister);
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
