Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB7F199FD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 10:48:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ap+vw9E2wck73vCUaqwNN5IsODvkdraYLjPP9u338sY=; b=hm1sV4PntUNaeN
	EHsX4eKpJ4Mqr1UStSOhRmI+OldEPx1Ltsd2cY225lhpalGMDix7RLzzvlSb4ZhSHah+n0qRIWlIQ
	S2JELvqClAf7e+OymEsCYGKDis0hNQruV1ykZg6DNGlA6AmwV5MdtyDJw1b8EyYEAvf2/N0MmnrPb
	eTi77PdTJA5bJjXRFk9R5iFAVSUSEb3LReUd+3AvbKwoGuACtSDmvvoFvdMcscd+cT+cAjfa6lXeg
	uTcQUzG9GSFg3cEPUmsOXLuelOv7zw68m1E2pd4Rh2/6BdLcNCISFuSAYqhGYe5jOY+Q0GC+/X134
	OCk9ZLTzXvZvnGxzHVWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP1D2-0003ty-Gi; Fri, 10 May 2019 08:48:52 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP1Bp-0002YW-Jq
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 08:47:50 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cd53ab00002>; Fri, 10 May 2019 01:47:45 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Fri, 10 May 2019 01:47:37 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Fri, 10 May 2019 01:47:37 -0700
Received: from HQMAIL105.nvidia.com (172.20.187.12) by HQMAIL105.nvidia.com
 (172.20.187.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 10 May
 2019 08:47:37 +0000
Received: from hqnvemgw02.nvidia.com (172.16.227.111) by HQMAIL105.nvidia.com
 (172.20.187.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via
 Frontend Transport; Fri, 10 May 2019 08:47:37 +0000
Received: from josephl-linux.nvidia.com (Not Verified[10.19.108.132]) by
 hqnvemgw02.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5cd53aa70000>; Fri, 10 May 2019 01:47:36 -0700
From: Joseph Lo <josephl@nvidia.com>
To: Thierry Reding <thierry.reding@gmail.com>, Peter De Schrijver
 <pdeschrijver@nvidia.com>, Jonathan Hunter <jonathanh@nvidia.com>, Rob
 Herring <robh+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH V3 4/8] memory: tegra: Add Tegra210 EMC clock driver
Date: Fri, 10 May 2019 16:47:15 +0800
Message-ID: <20190510084719.18902-5-josephl@nvidia.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190510084719.18902-1-josephl@nvidia.com>
References: <20190510084719.18902-1-josephl@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1557478065; bh=bUY5VZqBwzWSjjBQYcncEdzFAZvk80XeAHMEN/HfdUc=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:MIME-Version:X-NVConfidentiality:
 Content-Transfer-Encoding:Content-Type;
 b=ADcIVOXEiVBClnYLjMTK0nYVCyi8oxkw6ylb3wOlAC9yhJr11Xa93xM6pNuGYuIJ3
 K2uXMnNDFV+Ipjc5PTzsqvzPWJQTkYQoqJs09wEQ6l5KFVkWH9Q/cc7oriElRPpHsX
 saqRFdlRxW35F8bmnWj7mmBttBJS+LSTLyYda5WzKh47oaydgyBLjfKl9Lf209S268
 i/iAhuW033NpVfh2fxzsbTb5pjEfXjvJd830ckU9sZlHwRlX6mxpqop7G2kuxFky0/
 AqX7S1lkGdmU64xnw16zGTuByezhU41H/nwPC3RdDg/fawgL7+L/trd+4Dp4n/xVWm
 OBnu+fkxFsGOA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_014738_171934_063CA074 
X-CRM114-Status: GOOD (  22.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Joseph Lo <josephl@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is the initial patch for Tegra210 EMC clock driver, which doesn't
include the support code and detail sequence for clock scaling yet.

The driver is designed to support LPDDR4 SDRAM. Because of the LPDDR4
devices need to do initial time training before it can be used, the
firmware will help to do that at early boot stage. Then, the trained
table for the rates we support will pass to the kernel via DT. So the
driver can get the trained table for clock scaling support.

For the higher rate support (above 800MHz), the periodic training is
needed for the timing compensation. So basically, two methodologies for
clock scaling are supported, one is following the clock changing
sequence to update the EMC table to EMC registers and another is if the
rate needs periodic training, then we will start a timer to do that
periodically until it scales to the lower rate.

Based on the work of Peter De Schrijver <pdeschrijver@nvidia.com>.

Signed-off-by: Joseph Lo <josephl@nvidia.com>
---
v3:
- address almost all the comments from the previous version
- remove the DT parser of EMC table
- The EMC table is passing as a binary blob now.
---
 drivers/memory/tegra/Kconfig        |  10 +
 drivers/memory/tegra/Makefile       |   1 +
 drivers/memory/tegra/tegra210-emc.c | 749 ++++++++++++++++++++++++++++
 drivers/memory/tegra/tegra210-emc.h | 158 ++++++
 4 files changed, 918 insertions(+)
 create mode 100644 drivers/memory/tegra/tegra210-emc.c
 create mode 100644 drivers/memory/tegra/tegra210-emc.h

diff --git a/drivers/memory/tegra/Kconfig b/drivers/memory/tegra/Kconfig
index 34e0b70f5c5f..614e9b370183 100644
--- a/drivers/memory/tegra/Kconfig
+++ b/drivers/memory/tegra/Kconfig
@@ -25,3 +25,13 @@ config TEGRA124_EMC
 	  Tegra124 chips. The EMC controls the external DRAM on the board.
 	  This driver is required to change memory timings / clock rate for
 	  external memory.
+
+config TEGRA210_EMC
+	bool "NVIDIA Tegra210 External Memory Controller driver"
+	default y
+	depends on TEGRA_MC && ARCH_TEGRA_210_SOC
+	help
+	  This driver is for the External Memory Controller (EMC) found on
+	  Tegra210 chips. The EMC controls the external DRAM on the board.
+	  This driver is required to change memory timings / clock rate for
+	  external memory.
diff --git a/drivers/memory/tegra/Makefile b/drivers/memory/tegra/Makefile
index 3971a6b7c487..f78bbb7cd16f 100644
--- a/drivers/memory/tegra/Makefile
+++ b/drivers/memory/tegra/Makefile
@@ -12,4 +12,5 @@ obj-$(CONFIG_TEGRA_MC) += tegra-mc.o
 
 obj-$(CONFIG_TEGRA20_EMC)  += tegra20-emc.o
 obj-$(CONFIG_TEGRA124_EMC) += tegra124-emc.o
+obj-$(CONFIG_TEGRA210_EMC) += tegra210-emc.o
 obj-$(CONFIG_ARCH_TEGRA_186_SOC) += tegra186.o
diff --git a/drivers/memory/tegra/tegra210-emc.c b/drivers/memory/tegra/tegra210-emc.c
new file mode 100644
index 000000000000..f0471ca7062d
--- /dev/null
+++ b/drivers/memory/tegra/tegra210-emc.c
@@ -0,0 +1,749 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2015-2019, NVIDIA CORPORATION.  All rights reserved.
+ */
+
+#include <linux/clk.h>
+#include <linux/clk/tegra.h>
+#include <linux/clk-provider.h>
+#include <linux/debugfs.h>
+#include <linux/delay.h>
+#include <linux/kernel.h>
+#include <linux/of_address.h>
+#include <linux/of_platform.h>
+#include <soc/tegra/fuse.h>
+#include <soc/tegra/mc.h>
+
+#include "mc.h"
+#include "tegra210-emc.h"
+
+#define CLK_RST_CONTROLLER_CLK_SOURCE_EMC		0x19c
+#define EMC_CLK_EMC_2X_CLK_SRC_SHIFT			29
+#define EMC_CLK_EMC_2X_CLK_SRC_MASK			\
+	(0x7 << EMC_CLK_EMC_2X_CLK_SRC_SHIFT)
+#define EMC_CLK_MC_EMC_SAME_FREQ			BIT(16)
+#define EMC_CLK_EMC_2X_CLK_DIVISOR_SHIFT		0
+#define EMC_CLK_EMC_2X_CLK_DIVISOR_MASK			\
+	(0xff << EMC_CLK_EMC_2X_CLK_DIVISOR_SHIFT)
+
+#define MC_EMEM_ARB_MISC0_EMC_SAME_FREQ			BIT(27)
+
+#define TEGRA_EMC_MAX_FREQS		16
+#define TEGRA210_EMC_SUSPEND_RATE	204000000
+
+#define CLK_CHANGE_DELAY 100
+#define TRAINING_TIME 100
+
+enum {
+	TEGRA_EMC_SRC_PLLM,
+	TEGRA_EMC_SRC_PLLC,
+	TEGRA_EMC_SRC_PLLP,
+	TEGRA_EMC_SRC_CLKM,
+	TEGRA_EMC_SRC_PLLM_UD,
+	TEGRA_EMC_SRC_PLLMB_UD,
+	TEGRA_EMC_SRC_PLLMB,
+	TEGRA_EMC_SRC_PLLP_UD,
+	TEGRA_EMC_SRC_COUNT,
+};
+
+struct emc_sel {
+	struct clk *input;
+	u32 value;
+	unsigned long input_rate;
+
+	struct clk *input_b;		// second source of PLLM: PLLMB
+	u32 value_b;
+	unsigned long input_rate_b;
+};
+
+struct emc_stats {
+	u64 time_at_clock[TEGRA_EMC_MAX_FREQS];
+	int last_sel;
+	u64 last_update;
+	u64 clkchange_count;
+	spinlock_t spinlock;
+};
+static struct emc_stats emc_stats;
+
+static struct emc_sel *emc_clk_sel;
+static struct clk *emc_src[TEGRA_EMC_SRC_COUNT];
+static const char *emc_src_names[TEGRA_EMC_SRC_COUNT] = {
+	[TEGRA_EMC_SRC_PLLM] = "pll_m",
+	[TEGRA_EMC_SRC_PLLC] = "pll_c",
+	[TEGRA_EMC_SRC_PLLP] = "pll_p",
+	[TEGRA_EMC_SRC_CLKM] = "clk_m",
+	[TEGRA_EMC_SRC_PLLM_UD] = "pll_m_ud",
+	[TEGRA_EMC_SRC_PLLMB_UD] = "pll_mb_ud",
+	[TEGRA_EMC_SRC_PLLMB] = "pll_mb",
+	[TEGRA_EMC_SRC_PLLP_UD] = "pll_p_ud",
+};
+
+static const struct supported_sequence supported_seqs[] = {
+	{
+		0,
+		NULL,
+		NULL,
+		NULL
+	}
+};
+static const struct supported_sequence *seq = supported_seqs;
+static DEFINE_SPINLOCK(emc_access_lock);
+
+static inline struct tegra_emc *clk_hw_to_emc(struct clk_hw *hw)
+{
+	return container_of(hw, struct tegra_emc, hw);
+}
+
+u32 emc_readl(struct tegra_emc *emc, unsigned long offset)
+{
+	return readl_relaxed(emc->emc_base[REG_EMC] + offset);
+}
+
+u32 emc_readl_per_ch(struct tegra_emc *emc, int type,
+			    unsigned long offset)
+{
+	u32 val = 0;
+
+	switch (type) {
+	case REG_EMC:
+	case REG_EMC0:
+		val = readl_relaxed(emc->emc_base[REG_EMC] + offset);
+		break;
+	case REG_EMC1:
+		val = readl_relaxed(emc->emc_base[REG_EMC1] + offset);
+		break;
+	}
+
+	return val;
+}
+
+static inline u32 emc_src_val(u32 val)
+{
+	return (val & EMC_CLK_EMC_2X_CLK_SRC_MASK) >>
+		EMC_CLK_EMC_2X_CLK_SRC_SHIFT;
+}
+
+static inline u32 emc_div_val(u32 val)
+{
+	return (val & EMC_CLK_EMC_2X_CLK_DIVISOR_MASK) >>
+		EMC_CLK_EMC_2X_CLK_DIVISOR_SHIFT;
+}
+
+static void emc_train_func(struct timer_list *tmr)
+{
+	unsigned long flags;
+	struct tegra_emc *emc = from_timer(emc, tmr, training_timer);
+
+	if (!emc->current_timing)
+		return;
+
+	spin_lock_irqsave(&emc_access_lock, flags);
+	if (seq->periodic_compensation)
+		seq->periodic_compensation(emc);
+	spin_unlock_irqrestore(&emc_access_lock, flags);
+
+	mod_timer(&emc->training_timer,
+		  jiffies + msecs_to_jiffies(emc->timer_period_training));
+}
+
+static void emc_training_timer_start(struct tegra_emc *emc)
+{
+	mod_timer(&emc->training_timer,
+		  jiffies + msecs_to_jiffies(emc->timer_period_training));
+}
+
+static void emc_training_timer_stop(struct tegra_emc *emc)
+{
+	del_timer(&emc->training_timer);
+}
+
+static void emc_set_clock(struct tegra_emc *emc, u32 clksrc)
+{
+	seq->set_clock(emc, clksrc);
+
+	if (emc->next_timing->periodic_training)
+		emc_training_timer_start(emc);
+	else
+		emc_training_timer_stop(emc);
+}
+
+static inline unsigned long emc_get_src_clk_rate(void)
+{
+	int div;
+	u32 val;
+	unsigned long rate;
+
+	val = tegra210_clk_emc_get_setting();
+	rate = clk_get_rate(emc_src[emc_src_val(val)]);
+	div = emc_div_val(val);
+	div += 2;
+	rate *= 2;
+	rate += div - 1;
+	do_div(rate, div);
+
+	return rate;
+}
+
+static void emc_last_stats_update(int last_sel)
+{
+	unsigned long flags;
+	u64 cur_jiffies = get_jiffies_64();
+
+	spin_lock_irqsave(&emc_stats.spinlock, flags);
+
+	if (emc_stats.last_sel < TEGRA_EMC_MAX_FREQS)
+		emc_stats.time_at_clock[emc_stats.last_sel] =
+			emc_stats.time_at_clock[emc_stats.last_sel]
+			+ (cur_jiffies - emc_stats.last_update);
+
+	emc_stats.last_update = cur_jiffies;
+
+	if (last_sel < TEGRA_EMC_MAX_FREQS) {
+		emc_stats.clkchange_count++;
+		emc_stats.last_sel = last_sel;
+	}
+
+	spin_unlock_irqrestore(&emc_stats.spinlock, flags);
+}
+
+static int emc_table_lookup(struct tegra_emc *emc, unsigned long rate)
+{
+	int i;
+
+	for (i = 0; i < emc->emc_table_size; i++) {
+		if (emc_clk_sel[i].input == NULL)
+			continue;
+
+		if (emc->emc_table[i].rate == rate)
+			return i;
+	}
+
+	return -EINVAL;
+}
+
+static struct clk *emc_predict_parent(struct tegra_emc *emc,
+				      unsigned long rate)
+{
+	struct clk *old_parent, *new_parent;
+	unsigned long parent_rate;
+	int idx;
+
+	idx = emc_table_lookup(emc, rate / 1000);
+	if (idx < 0)
+		return ERR_PTR(-EINVAL);
+
+	parent_rate = emc_clk_sel[idx].input_rate * 1000;
+	new_parent = emc_clk_sel[idx].input;
+	old_parent = clk_get_parent(emc->emc_clk);
+
+	if (parent_rate == clk_get_rate(old_parent))
+		return old_parent;
+
+	if (clk_is_match(new_parent, old_parent))
+		new_parent = emc_clk_sel[idx].input_b;
+
+	if (parent_rate != clk_get_rate(new_parent))
+		clk_set_rate(new_parent, parent_rate);
+
+	return new_parent;
+}
+
+static int emc_set_rate(struct tegra_emc *emc, unsigned long rate)
+{
+	int i;
+	unsigned long flags;
+	s64 last_change_delay;
+	struct clk *parent;
+
+	if (emc->emc_suspend)
+		rate = TEGRA210_EMC_SUSPEND_RATE;
+
+	if (rate == emc->current_timing->rate)
+		return 0;
+
+	i = emc_table_lookup(emc, rate / 1000);
+
+	if (i < 0)
+		return i;
+
+	if (rate > 204000000 && !emc->emc_table[i].trained)
+		return -EINVAL;
+
+	parent = emc_predict_parent(emc, rate);
+	if (clk_is_match(parent, emc_clk_sel[i].input))
+		emc->clk_setting = emc_clk_sel[i].value;
+	else
+		emc->clk_setting = emc_clk_sel[i].value_b;
+
+	emc->next_timing = &emc->emc_table[i];
+	last_change_delay = ktime_us_delta(ktime_get(), emc->clkchange_time);
+	if ((last_change_delay >= 0) &&
+	    (last_change_delay < emc->clkchange_delay))
+		udelay(emc->clkchange_delay - (int)last_change_delay);
+
+	spin_lock_irqsave(&emc_access_lock, flags);
+	emc_set_clock(emc, emc->clk_setting);
+	emc->clkchange_time = ktime_get();
+	emc->current_timing = &emc->emc_table[i];
+	spin_unlock_irqrestore(&emc_access_lock, flags);
+
+	emc_last_stats_update(i);
+
+	return 0;
+}
+
+#ifdef CONFIG_DEBUG_FS
+static int emc_stats_show(struct seq_file *s, void *data)
+{
+	int i;
+	struct tegra_emc *emc = (struct tegra_emc *)s->private;
+
+	if (!emc->emc_table_size || !seq)
+		return 0;
+
+	emc_last_stats_update(TEGRA_EMC_MAX_FREQS);
+
+	seq_printf(s, "%-10s %-10s\n", "rate kHz", "time");
+	for (i = 0; i < emc->emc_table_size; i++) {
+		if (emc_clk_sel[i].input == NULL)
+			continue;
+
+		seq_printf(s, "%-10u %-10llu\n",
+			   emc->emc_table[i].rate,
+			   jiffies_64_to_clock_t(
+			   emc_stats.time_at_clock[i]));
+	}
+	seq_printf(s, "%-15s %llu\n", "transitions:",
+		   emc_stats.clkchange_count);
+	seq_printf(s, "%-15s %llu\n", "time-stamp:",
+		   jiffies_64_to_clock_t(emc_stats.last_update));
+
+	return 0;
+}
+
+static int emc_stats_open(struct inode *inode, struct file *file)
+{
+	return single_open(file, emc_stats_show, inode->i_private);
+}
+
+static const struct file_operations emc_stats_fops = {
+	.open		= emc_stats_open,
+	.read		= seq_read,
+	.llseek		= seq_lseek,
+	.release	= single_release,
+};
+
+static int debug_emc_get_rate(void *data, u64 *val)
+{
+	struct clk *c = data;
+
+	*val = clk_get_rate(c);
+
+	return 0;
+}
+
+static int debug_emc_set_rate(void *data, u64 val)
+{
+	struct clk *c = data;
+
+	return clk_set_rate(c, val);
+}
+DEFINE_SIMPLE_ATTRIBUTE(emc_rate_fops, debug_emc_get_rate,
+			debug_emc_set_rate, "%llu\n");
+
+static int tegra_emc_debug_init(struct tegra_emc *emc)
+{
+	struct dentry *emc_debugfs_root;
+
+	emc_debugfs_root = debugfs_create_dir("tegra_emc", NULL);
+	if (!emc_debugfs_root)
+		return -ENOMEM;
+
+	if (!debugfs_create_file("stats", 0444, emc_debugfs_root, emc,
+				 &emc_stats_fops))
+		goto err_out;
+
+	if (!debugfs_create_file("rate", 0644, emc_debugfs_root, emc->emc_clk,
+				 &emc_rate_fops))
+		goto err_out;
+
+	return 0;
+
+err_out:
+	debugfs_remove_recursive(emc_debugfs_root);
+	return -ENOMEM;
+}
+#endif /* CONFIG_DEBUG_FS */
+
+static u8 clk_emc_get_parent(struct clk_hw *hw)
+{
+	struct tegra_emc *emc = clk_hw_to_emc(hw);
+
+	if (!emc->clk_setting)
+		emc->clk_setting = tegra210_clk_emc_get_setting();
+
+	return emc_src_val(emc->clk_setting);
+}
+
+static unsigned long clk_emc_recalc_rate(struct clk_hw *hw,
+					 unsigned long parent_rate)
+{
+	struct tegra_emc *emc = clk_hw_to_emc(hw);
+
+	if (!emc->emc_table_size || !seq) {
+		u32 emc_setting = tegra210_clk_emc_get_setting();
+
+		return clk_get_rate(emc_src[emc_src_val(emc_setting)]);
+	}
+
+	return emc->current_timing->rate * 1000;
+}
+
+static long clk_emc_round_rate(struct clk_hw *hw, unsigned long rate,
+			       unsigned long *prate)
+{
+	struct tegra_emc *emc = clk_hw_to_emc(hw);
+	int i;
+
+	if (!emc->emc_table_size || !seq) {
+		u32 emc_setting = tegra210_clk_emc_get_setting();
+
+		return clk_get_rate(emc_src[emc_src_val(emc_setting)]);
+	}
+
+	if (emc->emc_suspend)
+		return TEGRA210_EMC_SUSPEND_RATE;
+
+	rate /= 1000;
+
+	for (i = 0; i < emc->emc_table_size; i++) {
+		if (emc->emc_table[i].rate >= rate)
+			return emc->emc_table[i].rate * 1000;
+	}
+
+	return emc->emc_table[i - 1].rate * 1000;
+}
+
+static int clk_emc_set_rate(struct clk_hw *hw, unsigned long rate,
+			    unsigned long parent_rate)
+{
+	struct tegra_emc *emc = clk_hw_to_emc(hw);
+	struct clk *old_parent, *new_parent;
+	int ret = -EINVAL;
+
+	if (!emc->emc_table_size || !seq)
+		return ret;
+
+	if (emc->emc_suspend)
+		rate = TEGRA210_EMC_SUSPEND_RATE;
+
+	old_parent = clk_get_parent(hw->clk);
+	new_parent = emc_predict_parent(emc, rate);
+	if (IS_ERR(new_parent))
+		goto out;
+
+	if (!clk_is_match(new_parent, old_parent))
+		clk_prepare_enable(new_parent);
+
+	ret = emc_set_rate(emc, rate);
+	if (ret) {
+		if (new_parent != old_parent)
+			clk_disable_unprepare(new_parent);
+		goto out;
+	}
+
+	if (!clk_is_match(new_parent, old_parent)) {
+		clk_hw_reparent(hw, __clk_get_hw(new_parent));
+		clk_disable_unprepare(old_parent);
+	}
+
+out:
+	return ret;
+}
+
+static const struct clk_ops tegra_clk_emc_ops = {
+	.get_parent = clk_emc_get_parent,
+	.recalc_rate = clk_emc_recalc_rate,
+	.round_rate = clk_emc_round_rate,
+	.set_rate = clk_emc_set_rate,
+};
+
+static int find_matching_input(struct emc_table *table, struct emc_sel *sel)
+{
+	u32 div_value;
+	u32 src_value;
+	unsigned long input_rate = 0;
+	struct clk *input_clk;
+
+	div_value = emc_div_val(table->clk_src_emc);
+	src_value = emc_src_val(table->clk_src_emc);
+
+	if (div_value & 0x1) {
+		pr_warn("Tegra EMC: invalid odd divider for EMC rate %u\n",
+			table->rate);
+		return -EINVAL;
+	}
+
+	if (!(table->clk_src_emc & EMC_CLK_MC_EMC_SAME_FREQ) !=
+	    !(MC_EMEM_ARB_MISC0_EMC_SAME_FREQ &
+	    table->burst_mc_regs[MC_EMEM_ARB_MISC0_INDEX])) {
+		pr_warn("Tegra EMC: ambiguous EMC to MC ratio for rate %u\n",
+			table->rate);
+		return -EINVAL;
+	}
+
+	input_clk = emc_src[src_value];
+	if (input_clk == emc_src[TEGRA_EMC_SRC_PLLM]
+		|| input_clk == emc_src[TEGRA_EMC_SRC_PLLM_UD]) {
+		input_rate = table->rate * (1 + div_value / 2);
+	} else {
+		input_rate = clk_get_rate(input_clk) / 1000;
+		if (input_rate != (table->rate * (1 + div_value / 2))) {
+			pr_warn("Tegra EMC: rate %u doesn't match input\n",
+				table->rate);
+			return -EINVAL;
+		}
+	}
+
+	sel->input = input_clk;
+	sel->input_rate = input_rate;
+	sel->value = table->clk_src_emc;
+	sel->input_b = input_clk;
+	sel->input_rate_b = input_rate;
+	sel->value_b = table->clk_src_emc;
+
+	if (input_clk == emc_src[TEGRA_EMC_SRC_PLLM]) {
+		sel->input_b = emc_src[TEGRA_EMC_SRC_PLLMB];
+		sel->value_b = table->clk_src_emc &
+			       ~EMC_CLK_EMC_2X_CLK_SRC_MASK;
+		sel->value_b |= TEGRA_EMC_SRC_PLLMB <<
+				EMC_CLK_EMC_2X_CLK_SRC_SHIFT;
+	}
+
+	if (input_clk == emc_src[TEGRA_EMC_SRC_PLLM_UD]) {
+		sel->input_b = emc_src[TEGRA_EMC_SRC_PLLMB_UD];
+		sel->value_b = table->clk_src_emc &
+			       ~EMC_CLK_EMC_2X_CLK_SRC_MASK;
+		sel->value_b |= TEGRA_EMC_SRC_PLLMB_UD <<
+				EMC_CLK_EMC_2X_CLK_SRC_SHIFT;
+	}
+
+	return 0;
+}
+
+static int tegra210_emc_probe(struct platform_device *pdev)
+{
+	int i;
+	unsigned long table_rate;
+	unsigned long current_rate;
+	struct device_node *np;
+	struct platform_device *mc;
+	struct tegra_emc *emc;
+	struct clk_init_data init;
+	struct clk *clk;
+	struct resource *r, res;
+	void *table_addr;
+
+	emc = devm_kzalloc(&pdev->dev, sizeof(*emc), GFP_KERNEL);
+	if (!emc)
+		return -ENOMEM;
+
+	np = of_parse_phandle(pdev->dev.of_node, "nvidia,memory-controller", 0);
+	if (!np) {
+		dev_err(&pdev->dev, "could not get memory controller\n");
+		return -ENOENT;
+	}
+
+	mc = of_find_device_by_node(np);
+	of_node_put(np);
+	if (!mc)
+		return -ENOENT;
+
+	emc->mc = platform_get_drvdata(mc);
+	if (!emc->mc)
+		return -EPROBE_DEFER;
+
+	emc->ram_code = tegra_read_ram_code();
+	r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	emc->emc_base[REG_EMC] = devm_ioremap_resource(&pdev->dev, r);
+	r = platform_get_resource(pdev, IORESOURCE_MEM, 1);
+	emc->emc_base[REG_EMC0] = devm_ioremap_resource(&pdev->dev, r);
+	r = platform_get_resource(pdev, IORESOURCE_MEM, 2);
+	emc->emc_base[REG_EMC1] = devm_ioremap_resource(&pdev->dev, r);
+
+	for (i = 0; i < TEGRA_EMC_SRC_COUNT; i++) {
+		emc_src[i] = devm_clk_get(&pdev->dev,
+						emc_src_names[i]);
+		if (IS_ERR(emc_src[i])) {
+			dev_err(&pdev->dev, "Can not find EMC source clock\n");
+			return -ENODATA;
+		}
+	}
+
+	np = of_parse_phandle(pdev->dev.of_node, "memory-region", 0);
+	if (!np) {
+		dev_err(&pdev->dev, "could not find EMC table\n");
+		goto emc_clk_register;
+	}
+
+	if (!of_device_is_compatible(np, "nvidia,tegra210-emc-table") ||
+	    !of_device_is_available(np)) {
+		dev_err(&pdev->dev, "EMC table is invalid\n");
+		goto emc_clk_register;
+	}
+
+	of_address_to_resource(np, 0, &res);
+	table_addr = memremap(res.start, resource_size(&res), MEMREMAP_WB);
+	of_node_put(np);
+	if (!table_addr) {
+		dev_err(&pdev->dev, "could not map EMC table\n");
+		goto emc_clk_register;
+	}
+	emc->emc_table = (struct emc_table *)table_addr;
+
+	for (i = 0; i < TEGRA_EMC_MAX_FREQS; i++)
+		if (emc->emc_table[i].rev != 0)
+			emc->emc_table_size++;
+		else
+			break;
+
+	/* Init EMC rate statistic data */
+	emc_stats.clkchange_count = 0;
+	spin_lock_init(&emc_stats.spinlock);
+	emc_stats.last_update = get_jiffies_64();
+	emc_stats.last_sel = TEGRA_EMC_MAX_FREQS;
+
+	/* Check the supported sequence */
+	while (seq->table_rev) {
+		if (seq->table_rev == emc->emc_table[0].rev)
+			break;
+		seq++;
+	}
+	if (!seq->set_clock) {
+		seq = NULL;
+		dev_err(&pdev->dev, "Invalid EMC sequence for table Rev. %d\n",
+			emc->emc_table[0].rev);
+		goto emc_clk_register;
+	}
+
+	emc_clk_sel = devm_kcalloc(&pdev->dev,
+				   emc->emc_table_size,
+				   sizeof(struct emc_sel),
+				   GFP_KERNEL);
+
+	/* calculate the rate from source clock */
+	current_rate = emc_get_src_clk_rate() / 1000;
+
+	/* validate the table */
+	for (i = 0; i < emc->emc_table_size; i++) {
+		table_rate = emc->emc_table[i].rate;
+		if (!table_rate)
+			continue;
+
+		if (i && ((table_rate <= emc->emc_table[i-1].rate) ||
+		   (emc->emc_table[i].min_volt <
+		    emc->emc_table[i-1].min_volt)))
+			continue;
+
+		if (emc->emc_table[i].rev != emc->emc_table[0].rev)
+			continue;
+
+		if (find_matching_input(&emc->emc_table[i], &emc_clk_sel[i]))
+			continue;
+
+		if (table_rate == current_rate) {
+			emc->current_timing = &emc->emc_table[i];
+			emc_stats.last_sel = i;
+		}
+	}
+
+	emc->clk_setting = tegra210_clk_emc_get_setting();
+	emc->clkchange_delay = CLK_CHANGE_DELAY;
+	emc->timer_period_training = TRAINING_TIME;
+
+	/* EMC training timer */
+	timer_setup(&emc->training_timer, emc_train_func, 0);
+
+emc_clk_register:
+	init.name = "emc";
+	init.ops = &tegra_clk_emc_ops;
+	init.flags = CLK_IS_CRITICAL | CLK_GET_RATE_NOCACHE;
+	init.parent_names = emc_src_names;
+	init.num_parents = ARRAY_SIZE(emc_src_names);
+	emc->hw.init = &init;
+
+	clk = clk_register(&pdev->dev, &emc->hw);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+	emc->emc_clk = clk;
+	emc->dev = &pdev->dev;
+	dev_set_drvdata(emc->dev, emc);
+
+	if (emc->emc_table_size && seq) {
+		for (i = 0; i < emc->emc_table_size; i++) {
+			table_rate = emc->emc_table[i].rate * 1000;
+			if (!clk_set_rate(clk, table_rate))
+				dev_dbg(&pdev->dev,
+					"rate: %lu validation success\n",
+					table_rate);
+		}
+	}
+
+#ifdef CONFIG_DEBUG_FS
+	tegra_emc_debug_init(emc);
+#endif
+
+	return 0;
+}
+
+#ifdef CONFIG_PM_SLEEP
+static int tegra210_emc_suspend(struct device *dev)
+{
+	struct tegra_emc *emc = dev_get_drvdata(dev);
+
+	emc->emc_suspend = true;
+	emc->emc_resume_rate = clk_get_rate(emc->emc_clk);
+	clk_set_rate(emc->emc_clk, TEGRA210_EMC_SUSPEND_RATE);
+
+	pr_debug("%s at rate %lu\n", __func__, clk_get_rate(emc->emc_clk));
+
+	return 0;
+}
+
+static int tegra210_emc_resume(struct device *dev)
+{
+	struct tegra_emc *emc = dev_get_drvdata(dev);
+
+	emc->emc_suspend = false;
+	clk_set_rate(emc->emc_clk, emc->emc_resume_rate);
+
+	pr_debug("%s at rate %lu\n", __func__, clk_get_rate(emc->emc_clk));
+
+	return 0;
+}
+#endif
+
+static const struct dev_pm_ops tegra210_emc_pm_ops = {
+	SET_SYSTEM_SLEEP_PM_OPS(tegra210_emc_suspend, tegra210_emc_resume)
+};
+
+static const struct of_device_id tegra210_emc_of_match[] = {
+	{ .compatible = "nvidia,tegra210-emc", },
+	{ },
+};
+
+static struct platform_driver tegra210_emc_driver = {
+	.driver	= {
+		.name = "tegra210-emc",
+		.of_match_table = tegra210_emc_of_match,
+		.pm = &tegra210_emc_pm_ops,
+		.suppress_bind_attrs = true,
+	},
+	.probe = tegra210_emc_probe,
+};
+
+static int __init tegra210_emc_init(void)
+{
+	return platform_driver_register(&tegra210_emc_driver);
+}
+subsys_initcall(tegra210_emc_init);
diff --git a/drivers/memory/tegra/tegra210-emc.h b/drivers/memory/tegra/tegra210-emc.h
new file mode 100644
index 000000000000..11390371ccf0
--- /dev/null
+++ b/drivers/memory/tegra/tegra210-emc.h
@@ -0,0 +1,158 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2015-2019, NVIDIA CORPORATION.  All rights reserved.
+ */
+
+#ifndef _TEGRA210_EMC_REG_H
+#define _TEGRA210_EMC_REG_H
+
+#include <linux/clk.h>
+#include <linux/clk-provider.h>
+#include <linux/platform_device.h>
+
+#include "mc.h"
+
+enum burst_mc_regs_list {
+	MC_EMEM_ARB_MISC0_INDEX = 20,
+};
+
+enum {
+	REG_EMC,
+	REG_EMC0,
+	REG_EMC1,
+	REG_TYPE_NUM,
+};
+
+enum {
+	C0D0U0,
+	C0D0U1,
+	C0D1U0,
+	C0D1U1,
+	C1D0U0,
+	C1D0U1,
+	C1D1U0,
+	C1D1U1,
+	DRAM_CLKTREE_NUM,
+};
+
+enum {
+	VREF_REGS_PER_CH_SIZE = 4,
+	DRAM_TIMINGS_NUM = 5,
+	BURST_REGS_PER_CH_SIZE = 8,
+	TRIM_REGS_PER_CH_SIZE = 10,
+	PTFV_ARRAY_SIZE = 12,
+	SAVE_RESTORE_MOD_REGS_SIZE = 12,
+	TRAINING_MOD_REGS_SIZE = 20,
+	BURST_UP_DOWN_REGS_SIZE = 24,
+	BURST_MC_REGS_SIZE = 33,
+	TRIM_REGS_SIZE = 138,
+	BURST_REGS_SIZE = 221,
+};
+
+struct emc_table {
+	u32 rev;
+	const char dvfs_ver[60];
+	u32 rate;
+	u32 min_volt;
+	u32 gpu_min_volt;
+	const char clock_src[32];
+	u32 clk_src_emc;
+	u32 needs_training;
+	u32 training_pattern;
+	u32 trained;
+
+	u32 periodic_training;
+	u32 trained_dram_clktree[DRAM_CLKTREE_NUM];
+	u32 current_dram_clktree[DRAM_CLKTREE_NUM];
+	u32 run_clocks;
+	u32 tree_margin;
+
+	u32 num_burst;
+	u32 num_burst_per_ch;
+	u32 num_trim;
+	u32 num_trim_per_ch;
+	u32 num_mc_regs;
+	u32 num_up_down;
+	u32 vref_num;
+	u32 training_mod_num;
+	u32 dram_timing_num;
+
+	u32 ptfv_list[PTFV_ARRAY_SIZE];
+
+	u32 burst_regs[BURST_REGS_SIZE];
+	u32 burst_reg_per_ch[BURST_REGS_PER_CH_SIZE];
+	u32 shadow_regs_ca_train[BURST_REGS_SIZE];
+	u32 shadow_regs_quse_train[BURST_REGS_SIZE];
+	u32 shadow_regs_rdwr_train[BURST_REGS_SIZE];
+
+	u32 trim_regs[TRIM_REGS_SIZE];
+	u32 trim_perch_regs[TRIM_REGS_PER_CH_SIZE];
+
+	u32 vref_perch_regs[VREF_REGS_PER_CH_SIZE];
+
+	u32 dram_timings[DRAM_TIMINGS_NUM];
+	u32 training_mod_regs[TRAINING_MOD_REGS_SIZE];
+	u32 save_restore_mod_regs[SAVE_RESTORE_MOD_REGS_SIZE];
+	u32 burst_mc_regs[BURST_MC_REGS_SIZE];
+	u32 la_scale_regs[BURST_UP_DOWN_REGS_SIZE];
+
+	u32 min_mrs_wait;
+	u32 emc_mrw;
+	u32 emc_mrw2;
+	u32 emc_mrw3;
+	u32 emc_mrw4;
+	u32 emc_mrw9;
+	u32 emc_mrs;
+	u32 emc_emrs;
+	u32 emc_emrs2;
+	u32 emc_auto_cal_config;
+	u32 emc_auto_cal_config2;
+	u32 emc_auto_cal_config3;
+	u32 emc_auto_cal_config4;
+	u32 emc_auto_cal_config5;
+	u32 emc_auto_cal_config6;
+	u32 emc_auto_cal_config7;
+	u32 emc_auto_cal_config8;
+	u32 emc_cfg_2;
+	u32 emc_sel_dpd_ctrl;
+	u32 emc_fdpd_ctrl_cmd_no_ramp;
+	u32 dll_clk_src;
+	u32 clk_out_enb_x_0_clk_enb_emc_dll;
+	u32 latency;
+};
+
+struct tegra_emc {
+	struct clk_hw hw;
+	struct clk *emc_clk;
+	struct device *dev;
+	struct timer_list training_timer;
+
+	struct tegra_mc *mc;
+
+	void __iomem *emc_base[REG_TYPE_NUM];
+
+	struct emc_table *current_timing;
+	struct emc_table *next_timing;
+
+	struct emc_table *emc_table;
+	unsigned int emc_table_size;
+
+	u32 ram_code;
+	u32 clk_setting;
+
+	ktime_t clkchange_time;
+	int clkchange_delay;
+	u32 timer_period_training;
+
+	bool emc_suspend;
+	unsigned long emc_resume_rate;
+};
+
+struct supported_sequence {
+	u8 table_rev;
+	void (*set_clock)(struct tegra_emc *emc, u32 clksrc);
+	u32 (*periodic_compensation)(struct tegra_emc *emc);
+	char *seq_rev;
+};
+
+#endif
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
