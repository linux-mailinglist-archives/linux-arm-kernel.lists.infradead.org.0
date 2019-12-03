Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F3411038E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 18:33:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aWyVrR1RiQFizmZ9RkRPBQrQw3JN5EAgwFjqfvLh/A8=; b=WKRHi4hFoKoNtH
	hg8CZp4EIp7ZlT34RYP+1ti7mIan8fCjs5N85n3tofe47PucMBKs/mDrF4clfz4r7cE6GtrKl787w
	gV1xhb0KrqZrCJW9YPF09O2f0+xghTP+JJNXratD6rJxWs1wGltr0hYxy+aYQbDYE2pU7V/5BlV4G
	/VAwruoxnJ10iCB6J0OZYfdvF5WZE6L7xh5Gn/ke9OILWNtZ4DCHXb22YQ4OETkYU62U7jy67lVp3
	TlEHRitr5c8eCJMk4q9pwpqivDaKtlNSoefh2IjODe6JPx98H3ZdivB0AdfdxYqwYlXrIA58Ln7BU
	PV/LdLLAyWjN610nSO/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icC2l-0006i5-B2; Tue, 03 Dec 2019 17:32:59 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icC2W-0006dZ-Bg
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 17:32:46 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5de69c3c0000>; Tue, 03 Dec 2019 09:32:44 -0800
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Tue, 03 Dec 2019 09:32:40 -0800
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Tue, 03 Dec 2019 09:32:40 -0800
Received: from HQMAIL105.nvidia.com (172.20.187.12) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 3 Dec
 2019 17:32:40 +0000
Received: from hqnvemgw03.nvidia.com (10.124.88.68) by HQMAIL105.nvidia.com
 (172.20.187.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via Frontend
 Transport; Tue, 3 Dec 2019 17:32:40 +0000
Received: from sumitg-l4t.nvidia.com (Not Verified[10.24.37.103]) by
 hqnvemgw03.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5de69c350000>; Tue, 03 Dec 2019 09:32:40 -0800
From: Sumit Gupta <sumitg@nvidia.com>
To: <rjw@rjwysocki.net>, <viresh.kumar@linaro.org>, <catalin.marinas@arm.com>, 
 <will@kernel.org>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
 <talho@nvidia.com>, <linux-pm@vger.kernel.org>,
 <linux-tegra@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: [TEGRA194_CPUFREQ Patch 2/3] cpufreq: Add Tegra194 cpufreq driver
Date: Tue, 3 Dec 2019 23:02:27 +0530
Message-ID: <1575394348-17649-2-git-send-email-sumitg@nvidia.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1575394348-17649-1-git-send-email-sumitg@nvidia.com>
References: <1575394348-17649-1-git-send-email-sumitg@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1575394364; bh=Jir30L50GT0NRvgAaRJM+PHtAe2yr58iZH7xCNJqr9I=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:X-NVConfidentiality:MIME-Version:
 Content-Type;
 b=cqfY2K64vCAY9Xvs0w1RaWNhSZLksbWIYcfOlSw4OodbNAIkHOSNHKt5iWubI4Npx
 aPJ4Kzh5wxB15ZTQPhBQFZILRhz0nsUd/qsHPyaWXbION8PBRYA0JnYbgFS6CaOTQj
 n1yvNiEtObjhVDISCQBhaXZ2OWS4xXyJDmYMVOa4rxCXqhDea6BnQXmN0whj2wgD0J
 424D8erhBPvf3XUG6XNq8PH5Y4hMQ4UDlTQbjMucT/7ULGLjMRKg3YEADlL9wkq7+N
 3sT+Do9xa/uiIqtdCgojQ2hbz1DESJA2wRsMbz9iNOCY7y7DCu6WofXZNN2PnRyqU1
 qmFuXlj4sbg7g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_093244_445047_576908C6 
X-CRM114-Status: GOOD (  21.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: sumitg@nvidia.com, bbasu@nvidia.com, mperttunen@nvidia.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for CPU frequency scaling on Tegra194. The frequency
of each core can be adjusted by writing a clock divisor value to
an MSR on the core. The range of valid divisors is queried from
the BPMP.

Signed-off-by: Mikko Perttunen <mperttunen@nvidia.com>
Signed-off-by: Sumit Gupta <sumitg@nvidia.com>
---
 drivers/cpufreq/Kconfig.arm        |   6 +
 drivers/cpufreq/Makefile           |   1 +
 drivers/cpufreq/tegra194-cpufreq.c | 423 +++++++++++++++++++++++++++++++++++++
 3 files changed, 430 insertions(+)
 create mode 100644 drivers/cpufreq/tegra194-cpufreq.c

diff --git a/drivers/cpufreq/Kconfig.arm b/drivers/cpufreq/Kconfig.arm
index a905796..4bcd47c 100644
--- a/drivers/cpufreq/Kconfig.arm
+++ b/drivers/cpufreq/Kconfig.arm
@@ -320,6 +320,12 @@ config ARM_TEGRA186_CPUFREQ
 	help
 	  This adds the CPUFreq driver support for Tegra186 SOCs.
 
+config ARM_TEGRA194_CPUFREQ
+	tristate "Tegra194 CPUFreq support"
+	depends on ARCH_TEGRA && TEGRA_BPMP
+	help
+	  This adds CPU frequency driver support for Tegra194 SOCs.
+
 config ARM_TI_CPUFREQ
 	bool "Texas Instruments CPUFreq support"
 	depends on ARCH_OMAP2PLUS
diff --git a/drivers/cpufreq/Makefile b/drivers/cpufreq/Makefile
index 9a9f5cc..433d492 100644
--- a/drivers/cpufreq/Makefile
+++ b/drivers/cpufreq/Makefile
@@ -85,6 +85,7 @@ obj-$(CONFIG_ARM_TANGO_CPUFREQ)		+= tango-cpufreq.o
 obj-$(CONFIG_ARM_TEGRA20_CPUFREQ)	+= tegra20-cpufreq.o
 obj-$(CONFIG_ARM_TEGRA124_CPUFREQ)	+= tegra124-cpufreq.o
 obj-$(CONFIG_ARM_TEGRA186_CPUFREQ)	+= tegra186-cpufreq.o
+obj-$(CONFIG_ARM_TEGRA194_CPUFREQ)	+= tegra194-cpufreq.o
 obj-$(CONFIG_ARM_TI_CPUFREQ)		+= ti-cpufreq.o
 obj-$(CONFIG_ARM_VEXPRESS_SPC_CPUFREQ)	+= vexpress-spc-cpufreq.o
 
diff --git a/drivers/cpufreq/tegra194-cpufreq.c b/drivers/cpufreq/tegra194-cpufreq.c
new file mode 100644
index 0000000..9df12f4
--- /dev/null
+++ b/drivers/cpufreq/tegra194-cpufreq.c
@@ -0,0 +1,423 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019, NVIDIA CORPORATION. All rights reserved
+ */
+
+#include <linux/cpu.h>
+#include <linux/cpufreq.h>
+#include <linux/delay.h>
+#include <linux/dma-mapping.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_platform.h>
+#include <linux/platform_device.h>
+#include <linux/slab.h>
+
+#include <asm/smp_plat.h>
+
+#include <soc/tegra/bpmp.h>
+#include <soc/tegra/bpmp-abi.h>
+
+#define KHZ                     1000
+#define REF_CLK_MHZ             408 /* 408 MHz */
+#define US_DELAY                2000
+#define US_DELAY_MIN            2
+#define CPUFREQ_TBL_STEP_HZ     (50 * KHZ * KHZ)
+#define MAX_CNT                 ~0U
+
+/* cpufreq transisition latency */
+#define TEGRA_CPUFREQ_TRANSITION_LATENCY (300 * 1000) /* unit in nanoseconds */
+
+enum cluster {
+	CLUSTER0,
+	CLUSTER1,
+	CLUSTER2,
+	CLUSTER3,
+	MAX_CLUSTERS,
+};
+
+struct tegra194_cpufreq_data {
+	void __iomem *regs;
+	size_t num_clusters;
+	struct cpufreq_frequency_table **tables;
+};
+
+static DEFINE_MUTEX(cpufreq_lock);
+
+struct tegra_cpu_ctr {
+	u32 cpu;
+	u32 delay;
+	u32 coreclk_cnt, last_coreclk_cnt;
+	u32 refclk_cnt, last_refclk_cnt;
+};
+
+static struct workqueue_struct *read_counters_wq;
+struct read_counters_work {
+	struct work_struct work;
+	struct tegra_cpu_ctr c;
+};
+
+static enum cluster get_cpu_cluster(u8 cpu)
+{
+	return MPIDR_AFFINITY_LEVEL(cpu_logical_map(cpu), 1);
+}
+
+/*
+ * Read per-core Read-only system register NVFREQ_FEEDBACK_EL1.
+ * The register provides frequency feedback information to
+ * determine the average actual frequency a core has run at over
+ * a period of time.
+ *	[31:0] PLLP counter: Counts at fixed frequency (408 MHz)
+ *	[63:32] Core clock counter: counts on every core clock cycle
+ *			where the core is architecturally clocking
+ */
+static u64 read_freq_feedback(void)
+{
+	u64 val = 0;
+
+	asm volatile("mrs %0, s3_0_c15_c0_5" : "=r" (val) : );
+
+	return val;
+}
+
+u16 map_freq_to_ndiv(struct mrq_cpu_ndiv_limits_response *nltbl, u32 freq)
+{
+	return DIV_ROUND_UP(freq * nltbl->pdiv * nltbl->mdiv,
+			    nltbl->ref_clk_hz / KHZ);
+}
+
+static inline u32 map_ndiv_to_freq(struct mrq_cpu_ndiv_limits_response
+				   *nltbl, u16 ndiv)
+{
+	return nltbl->ref_clk_hz / KHZ * ndiv / (nltbl->pdiv * nltbl->mdiv);
+}
+
+static void tegra_read_counters(struct work_struct *work)
+{
+	struct read_counters_work *read_counters_work;
+	struct tegra_cpu_ctr *c;
+	u64 val;
+
+	/*
+	 * ref_clk_counter(32 bit counter) runs on constant clk,
+	 * pll_p(408MHz).
+	 * It will take = 2 ^ 32 / 408 MHz to overflow ref clk counter
+	 *              = 10526880 usec = 10.527 sec to overflow
+	 *
+	 * Like wise core_clk_counter(32 bit counter) runs on core clock.
+	 * It's synchronized to crab_clk (cpu_crab_clk) which runs at
+	 * freq of cluster. Assuming max cluster clock ~2000MHz,
+	 * It will take = 2 ^ 32 / 2000 MHz to overflow core clk counter
+	 *              = ~2.147 sec to overflow
+	 */
+	read_counters_work = container_of(work, struct read_counters_work,
+					  work);
+	c = &read_counters_work->c;
+
+	val = read_freq_feedback();
+	c->last_refclk_cnt = lower_32_bits(val);
+	c->last_coreclk_cnt = upper_32_bits(val);
+	udelay(c->delay);
+	val = read_freq_feedback();
+	c->refclk_cnt = lower_32_bits(val);
+	c->coreclk_cnt = upper_32_bits(val);
+}
+
+/*
+ * Return instantaneous cpu speed
+ * Instantaneous freq is calculated as -
+ * -Takes sample on every query of getting the freq.
+ *	- Read core and ref clock counters;
+ *	- Delay for X us
+ *	- Read above cycle counters again
+ *	- Calculates freq by subtracting current and previous counters
+ *	  divided by the delay time or eqv. of ref_clk_counter in delta time
+ *	- Return Kcycles/second, freq in KHz
+ *
+ *	delta time period = x sec
+ *			  = delta ref_clk_counter / (408 * 10^6) sec
+ *	freq in Hz = cycles/sec
+ *		   = (delta cycles / x sec
+ *		   = (delta cycles * 408 * 10^6) / delta ref_clk_counter
+ *	in KHz	   = (delta cycles * 408 * 10^3) / delta ref_clk_counter
+ *
+ * @cpu - logical cpu whose freq to be updated
+ * Returns freq in KHz on success, 0 if cpu is offline
+ */
+static unsigned int tegra194_get_speed_common(u32 cpu, u32 delay)
+{
+	struct read_counters_work read_counters_work;
+	struct tegra_cpu_ctr c;
+	u32 delta_refcnt;
+	u32 delta_ccnt;
+	u32 rate_mhz;
+
+	read_counters_work.c.cpu = cpu;
+	read_counters_work.c.delay = delay;
+	INIT_WORK_ONSTACK(&read_counters_work.work, tegra_read_counters);
+	queue_work_on(cpu, read_counters_wq, &read_counters_work.work);
+	flush_work(&read_counters_work.work);
+	c = read_counters_work.c;
+
+	if (c.coreclk_cnt < c.last_coreclk_cnt)
+		delta_ccnt = c.coreclk_cnt + (MAX_CNT - c.last_coreclk_cnt);
+	else
+		delta_ccnt = c.coreclk_cnt - c.last_coreclk_cnt;
+	if (!delta_ccnt)
+		return 0;
+
+	/* ref clock is 32 bits */
+	if (c.refclk_cnt < c.last_refclk_cnt)
+		delta_refcnt = c.refclk_cnt + (MAX_CNT - c.last_refclk_cnt);
+	else
+		delta_refcnt = c.refclk_cnt - c.last_refclk_cnt;
+	if (!delta_refcnt) {
+		pr_debug("cpufreq: %d is idle, delta_refcnt: 0\n", cpu);
+		return 0;
+	}
+	rate_mhz = ((unsigned long)(delta_ccnt * REF_CLK_MHZ)) / delta_refcnt;
+
+	return (rate_mhz * KHZ); /* in KHz */
+}
+
+static unsigned int tegra194_get_speed(u32 cpu)
+{
+	return tegra194_get_speed_common(cpu, US_DELAY);
+}
+
+static unsigned int tegra194_fast_get_speed(u32 cpu)
+{
+	return tegra194_get_speed_common(cpu, US_DELAY_MIN);
+}
+
+static int tegra194_cpufreq_init(struct cpufreq_policy *policy)
+{
+	struct tegra194_cpufreq_data *data = cpufreq_get_driver_data();
+	int cluster = get_cpu_cluster(policy->cpu);
+
+	if (cluster >= data->num_clusters)
+		return -EINVAL;
+
+	policy->cur = tegra194_fast_get_speed(policy->cpu); /* boot freq */
+
+	/* set same policy for all cpus */
+	cpumask_copy(policy->cpus, cpu_possible_mask);
+
+	policy->freq_table = data->tables[cluster];
+	policy->cpuinfo.transition_latency = TEGRA_CPUFREQ_TRANSITION_LATENCY;
+
+	return 0;
+}
+
+static void set_cpu_ndiv(void *data)
+{
+	struct cpufreq_frequency_table *tbl = data;
+	u64 ndiv_val = (u64)tbl->driver_data;
+
+	asm volatile("msr s3_0_c15_c0_4, %0" : : "r" (ndiv_val));
+}
+
+static int tegra194_cpufreq_set_target(struct cpufreq_policy *policy,
+				       unsigned int index)
+{
+	struct cpufreq_frequency_table *tbl = policy->freq_table + index;
+	static struct cpufreq_freqs freqs;
+
+	mutex_lock(&cpufreq_lock);
+	freqs.old = policy->cur;
+	freqs.new = tbl->frequency;
+
+	cpufreq_freq_transition_begin(policy, &freqs);
+	on_each_cpu_mask(policy->cpus, set_cpu_ndiv, tbl, true);
+	cpufreq_freq_transition_end(policy, &freqs, 0);
+
+	mutex_unlock(&cpufreq_lock);
+
+	return 0;
+}
+
+static struct cpufreq_driver tegra194_cpufreq_driver = {
+	.name = "tegra194",
+	.flags = CPUFREQ_STICKY | CPUFREQ_CONST_LOOPS |
+		CPUFREQ_NEED_INITIAL_FREQ_CHECK | CPUFREQ_ASYNC_NOTIFICATION,
+	.verify = cpufreq_generic_frequency_table_verify,
+	.target_index = tegra194_cpufreq_set_target,
+	.get = tegra194_get_speed,
+	.init = tegra194_cpufreq_init,
+	.attr = cpufreq_generic_attr,
+};
+
+static void tegra194_cpufreq_free_resources(void)
+{
+	flush_workqueue(read_counters_wq);
+	destroy_workqueue(read_counters_wq);
+}
+
+static struct cpufreq_frequency_table *init_freq_table
+		(struct platform_device *pdev, struct tegra_bpmp *bpmp,
+		 unsigned int cluster_id)
+{
+	struct cpufreq_frequency_table *opp_table;
+	struct mrq_cpu_ndiv_limits_response resp;
+	unsigned int num_freqs, ndiv, delta_ndiv;
+	struct mrq_cpu_ndiv_limits_request req;
+	struct tegra_bpmp_message msg;
+	u16 freq_table_step_size;
+	int err, index;
+
+	memset(&req, 0, sizeof(req));
+	req.cluster_id = cluster_id;
+
+	memset(&msg, 0, sizeof(msg));
+	msg.mrq = MRQ_CPU_NDIV_LIMITS;
+	msg.tx.data = &req;
+	msg.tx.size = sizeof(req);
+	msg.rx.data = &resp;
+	msg.rx.size = sizeof(resp);
+
+	err = tegra_bpmp_transfer(bpmp, &msg);
+	if (err)
+		return ERR_PTR(err);
+
+	/*
+	 * Make sure frequency table step is a multiple of mdiv to match
+	 * vhint table granularity.
+	 */
+	freq_table_step_size = resp.mdiv *
+			DIV_ROUND_UP(CPUFREQ_TBL_STEP_HZ, resp.ref_clk_hz);
+
+	dev_dbg(&pdev->dev, "cluster %d: frequency table step size: %d\n",
+		cluster_id, freq_table_step_size);
+
+	delta_ndiv = resp.ndiv_max - resp.ndiv_min;
+
+	if (unlikely(delta_ndiv == 0))
+		num_freqs = 1;
+	else
+		/* We store both ndiv_min and ndiv_max hence the +1 */
+		num_freqs = delta_ndiv / freq_table_step_size + 1;
+
+	num_freqs += (delta_ndiv % freq_table_step_size) ? 1 : 0;
+
+	opp_table = devm_kcalloc(&pdev->dev, num_freqs + 1, sizeof(*opp_table),
+				 GFP_KERNEL);
+	if (!opp_table)
+		return ERR_PTR(-ENOMEM);
+
+	for (index = 0, ndiv = resp.ndiv_min;
+			ndiv < resp.ndiv_max;
+			index++, ndiv += freq_table_step_size) {
+		opp_table[index].driver_data = ndiv;
+		opp_table[index].frequency = map_ndiv_to_freq(&resp, ndiv);
+	}
+
+	opp_table[index].driver_data = resp.ndiv_max;
+	opp_table[index++].frequency = map_ndiv_to_freq(&resp, resp.ndiv_max);
+	opp_table[index].frequency = CPUFREQ_TABLE_END;
+
+	return opp_table;
+}
+
+static int tegra194_cpufreq_probe(struct platform_device *pdev)
+{
+	struct tegra194_cpufreq_data *data;
+	struct tegra_bpmp *bpmp;
+	int err, i;
+
+	data = devm_kzalloc(&pdev->dev, sizeof(*data), GFP_KERNEL);
+	if (!data)
+		return -ENOMEM;
+
+	data->num_clusters = MAX_CLUSTERS;
+	data->tables = devm_kcalloc(&pdev->dev, data->num_clusters,
+				    sizeof(*data->tables), GFP_KERNEL);
+	if (!data->tables)
+		return -ENOMEM;
+
+	platform_set_drvdata(pdev, data);
+
+	read_counters_wq = alloc_workqueue("read_counters_wq", __WQ_LEGACY, 1);
+	if (!read_counters_wq) {
+		dev_err(&pdev->dev, "fail to create_workqueue\n");
+		return -EINVAL;
+	}
+
+	bpmp = of_tegra_bpmp_get();
+	if (IS_ERR(bpmp)) {
+		err = PTR_ERR(bpmp);
+		goto err_free_res;
+	}
+
+	for (i = 0; i < data->num_clusters; i++) {
+		data->tables[i] = init_freq_table(pdev, bpmp, i);
+		if (IS_ERR(data->tables[i])) {
+			err = PTR_ERR(data->tables[i]);
+			goto put_bpmp;
+		}
+	}
+
+	tegra_bpmp_put(bpmp);
+
+	tegra194_cpufreq_driver.driver_data = data;
+
+	err = cpufreq_register_driver(&tegra194_cpufreq_driver);
+	if (err)
+		goto err_free_res;
+
+	return err;
+
+put_bpmp:
+	tegra_bpmp_put(bpmp);
+err_free_res:
+	tegra194_cpufreq_free_resources();
+	return err;
+}
+
+static int tegra194_cpufreq_remove(struct platform_device *pdev)
+{
+	cpufreq_unregister_driver(&tegra194_cpufreq_driver);
+	tegra194_cpufreq_free_resources();
+
+	return 0;
+}
+
+static struct platform_driver tegra194_cpufreq_platform_driver = {
+	.driver = {
+		.name = "tegra194-cpufreq",
+	},
+	.probe = tegra194_cpufreq_probe,
+	.remove = tegra194_cpufreq_remove,
+};
+
+static int __init tegra_cpufreq_init(void)
+{
+	struct platform_device *pdev;
+	int ret;
+
+	if (!of_machine_is_compatible("nvidia,tegra194"))
+		return -ENODEV;
+
+	ret = platform_driver_register(&tegra194_cpufreq_platform_driver);
+	if (ret)
+		return ret;
+
+	pdev = platform_device_register_simple("tegra194-cpufreq", -1, NULL, 0);
+	if (IS_ERR(pdev)) {
+		platform_driver_unregister(&tegra194_cpufreq_platform_driver);
+		return PTR_ERR(pdev);
+	}
+
+	return 0;
+}
+module_init(tegra_cpufreq_init);
+
+static void __exit tegra_cpufreq_exit(void)
+{
+	platform_driver_unregister(&tegra194_cpufreq_platform_driver);
+}
+module_exit(tegra_cpufreq_exit);
+
+MODULE_AUTHOR("Mikko Perttunen <mperttunen@nvidia.com>");
+MODULE_AUTHOR("Sumit Gupta <sumitg@nvidia.com>");
+MODULE_DESCRIPTION("NVIDIA Tegra194 cpufreq driver");
+MODULE_LICENSE("GPL v2");
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
