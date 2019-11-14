Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16272FCDB6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 19:34:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ugnP+SK4/aDco6K4fD4z2/t1Ve41MChqdB69BxKoAwQ=; b=QbQklFglGsgsTm0CFU3jL7vjOb
	exfp8bdqp5lP2RZi2AvZGbaHdn8CjwSfjhWkrn82w2G6ZenuT7lCr1d0VKoUhqXIRf90nEhE4V87p
	1ZidOOa6E8kqPv0+Jilf1r55rz7eaZx1aEO1doauDEMlgAPb3+j+kLuVQ7ZfuIqumzLNMcXERqfgo
	jRDuaudJkUFOU+SVeyIxCiJ2qyxCrayYXxdH1AhF66/BEl7rZp7vItRwbqhHcxmmLssi3FEgCtaIE
	5M1g0QiRywLFrTo/RcWssVSQ7x+Eg35wG0mfGibLyoethhysQ1zSdgvl15JTwi8JjwAQIUufnn5Zx
	18xNvGeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVJxA-0004R3-7d; Thu, 14 Nov 2019 18:34:48 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVJvy-0003TW-R0
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 18:33:38 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 8B8F61A0470;
 Thu, 14 Nov 2019 19:33:33 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 7B4581A006C;
 Thu, 14 Nov 2019 19:33:33 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 30044205D5;
 Thu, 14 Nov 2019 19:33:32 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v6 4/5] PM / devfreq: Add dynamic scaling for imx8m ddr
 controller
Date: Thu, 14 Nov 2019 20:33:21 +0200
Message-Id: <3b1341a9a0c0dcaae1f37aebff25b773db7429cf.1573756360.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1573756360.git.leonard.crestez@nxp.com>
References: <cover.1573756360.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1573756360.git.leonard.crestez@nxp.com>
References: <cover.1573756360.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_103335_190541_1CA8D719 
X-CRM114-Status: GOOD (  25.06  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-clk@vger.kernel.org,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-imx@nxp.com,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>,
 Silvano di Ninno <silvano.dininno@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Dong Aisheng <aisheng.dong@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add driver for dynamic scaling the DDR Controller on imx8m chips. Actual
frequency switching is implemented inside TF-A, this driver wraps the
SMC calls and synchronizes the clk tree.

The DRAM clocks on imx8m have the following structure (abridged):

 +----------+       |\            +------+
 | dram_pll |-------|M| dram_core |      |
 +----------+       |U|---------->| D    |
                 /--|X|           |  D   |
   dram_alt_root |  |/            |   R  |
                 |                |    C |
            +---------+           |      |
            |FIX DIV/4|           |      |
            +---------+           |      |
  composite:     |                |      |
 +----------+    |                |      |
 | dram_alt |----/                |      |
 +----------+                     |      |
 | dram_apb |-------------------->|      |
 +----------+                     +------+

The dram_pll is used for higher rates and dram_alt is used for lower
rates. The dram_alt and dram_apb clocks are "imx composite" and their
parent can also be modified.

This driver will prepare/enable the new parents ahead of switching (so
that the expected roots are enabled) and afterwards it will call
clk_set_parent to ensure the parents in clock framework are up-to-date.

The driver relies on dram_pll dram_alt and dram_apb being marked with
CLK_GET_RATE_NOCACHE for rate updates.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/devfreq/Kconfig      |   9 +
 drivers/devfreq/Makefile     |   1 +
 drivers/devfreq/imx8m-ddrc.c | 465 +++++++++++++++++++++++++++++++++++
 3 files changed, 475 insertions(+)
 create mode 100644 drivers/devfreq/imx8m-ddrc.c

diff --git a/drivers/devfreq/Kconfig b/drivers/devfreq/Kconfig
index 066e6c4efaa2..923a6132e741 100644
--- a/drivers/devfreq/Kconfig
+++ b/drivers/devfreq/Kconfig
@@ -89,10 +89,19 @@ config ARM_EXYNOS_BUS_DEVFREQ
 	  Each memory bus group could contain many memoby bus block. It reads
 	  PPMU counters of memory controllers by using DEVFREQ-event device
 	  and adjusts the operating frequencies and voltages with OPP support.
 	  This does not yet operate with optimal voltages.
 
+config ARM_IMX8M_DDRC_DEVFREQ
+	tristate "i.MX8M DDRC DEVFREQ Driver"
+	depends on ARCH_MXC || COMPILE_TEST
+	select DEVFREQ_GOV_SIMPLE_ONDEMAND
+	select DEVFREQ_GOV_USERSPACE
+	help
+	  This adds the DEVFREQ driver for the i.MX8M DDR Controller. It allows
+	  adjusting DRAM frequency.
+
 config ARM_TEGRA_DEVFREQ
 	tristate "NVIDIA Tegra30/114/124/210 DEVFREQ Driver"
 	depends on ARCH_TEGRA_3x_SOC || ARCH_TEGRA_114_SOC || \
 		ARCH_TEGRA_132_SOC || ARCH_TEGRA_124_SOC || \
 		ARCH_TEGRA_210_SOC || \
diff --git a/drivers/devfreq/Makefile b/drivers/devfreq/Makefile
index 338ae8440db6..3eb4d5e6635c 100644
--- a/drivers/devfreq/Makefile
+++ b/drivers/devfreq/Makefile
@@ -7,10 +7,11 @@ obj-$(CONFIG_DEVFREQ_GOV_POWERSAVE)	+= governor_powersave.o
 obj-$(CONFIG_DEVFREQ_GOV_USERSPACE)	+= governor_userspace.o
 obj-$(CONFIG_DEVFREQ_GOV_PASSIVE)	+= governor_passive.o
 
 # DEVFREQ Drivers
 obj-$(CONFIG_ARM_EXYNOS_BUS_DEVFREQ)	+= exynos-bus.o
+obj-$(CONFIG_ARM_IMX8M_DDRC_DEVFREQ)	+= imx8m-ddrc.o
 obj-$(CONFIG_ARM_RK3399_DMC_DEVFREQ)	+= rk3399_dmc.o
 obj-$(CONFIG_ARM_TEGRA_DEVFREQ)		+= tegra30-devfreq.o
 obj-$(CONFIG_ARM_TEGRA20_DEVFREQ)	+= tegra20-devfreq.o
 
 # DEVFREQ Event Drivers
diff --git a/drivers/devfreq/imx8m-ddrc.c b/drivers/devfreq/imx8m-ddrc.c
new file mode 100644
index 000000000000..fea169619c59
--- /dev/null
+++ b/drivers/devfreq/imx8m-ddrc.c
@@ -0,0 +1,465 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2019 NXP
+ */
+
+#include <linux/module.h>
+#include <linux/device.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include <linux/devfreq.h>
+#include <linux/pm_opp.h>
+#include <linux/clk.h>
+#include <linux/clk-provider.h>
+#include <linux/arm-smccc.h>
+
+#define IMX_SIP_DDR_DVFS			0xc2000004
+
+/* Values starting from 0 switch to specific frequency */
+#define IMX_SIP_DDR_FREQ_SET_HIGH		0x00
+
+/* Deprecated after moving IRQ handling to ATF */
+#define IMX_SIP_DDR_DVFS_WAIT_CHANGE		0x0F
+
+/* Query available frequencies. */
+#define IMX_SIP_DDR_DVFS_GET_FREQ_COUNT		0x10
+#define IMX_SIP_DDR_DVFS_GET_FREQ_INFO		0x11
+
+/*
+ * This should be in a 1:1 mapping with devicetree OPPs but
+ * firmware provides additional info.
+ */
+struct imx8m_ddrc_freq {
+	unsigned long rate;
+	unsigned long smcarg;
+	int dram_core_parent_index;
+	int dram_alt_parent_index;
+	int dram_apb_parent_index;
+};
+
+/* Hardware limitation */
+#define IMX8M_DDRC_MAX_FREQ_COUNT 4
+
+/*
+ * i.MX8M DRAM Controller clocks have the following structure (abridged):
+ *
+ * +----------+       |\            +------+
+ * | dram_pll |-------|M| dram_core |      |
+ * +----------+       |U|---------->| D    |
+ *                 /--|X|           |  D   |
+ *   dram_alt_root |  |/            |   R  |
+ *                 |                |    C |
+ *            +---------+           |      |
+ *            |FIX DIV/4|           |      |
+ *            +---------+           |      |
+ *  composite:     |                |      |
+ * +----------+    |                |      |
+ * | dram_alt |----/                |      |
+ * +----------+                     |      |
+ * | dram_apb |-------------------->|      |
+ * +----------+                     +------+
+ *
+ * The dram_pll is used for higher rates and dram_alt is used for lower rates.
+ *
+ * Frequency switching is implemented in TF-A (via SMC call) and can change the
+ * configuration of the clocks, including mux parents. The dram_alt and
+ * dram_apb clocks are "imx composite" and their parent can change too.
+ *
+ * We need to prepare/enable the new mux parents head of switching and update
+ * their information afterwards.
+ */
+struct imx8m_ddrc {
+	struct devfreq_dev_profile profile;
+	struct devfreq *devfreq;
+
+	/* For frequency switching: */
+	struct clk *dram_core;
+	struct clk *dram_pll;
+	struct clk *dram_alt;
+	struct clk *dram_apb;
+
+	int freq_count;
+	struct imx8m_ddrc_freq freq_table[IMX8M_DDRC_MAX_FREQ_COUNT];
+};
+
+static struct imx8m_ddrc_freq *imx8m_ddrc_find_freq(struct imx8m_ddrc *priv,
+						    unsigned long rate)
+{
+	struct imx8m_ddrc_freq *freq;
+	int i;
+
+	/*
+	 * Firmware reports values in MT/s, so we round-down from Hz
+	 * Rounding is extra generous to ensure a match.
+	 */
+	rate = DIV_ROUND_CLOSEST(rate, 250000);
+	for (i = 0; i < priv->freq_count; ++i) {
+		freq = &priv->freq_table[i];
+		if (freq->rate == rate ||
+				freq->rate + 1 == rate ||
+				freq->rate - 1 == rate)
+			return freq;
+	}
+
+	return NULL;
+}
+
+static void imx8m_ddrc_smc_set_freq(int target_freq)
+{
+	struct arm_smccc_res res;
+	u32 online_cpus = 0;
+	int cpu;
+
+	local_irq_disable();
+
+	for_each_online_cpu(cpu)
+		online_cpus |= (1 << (cpu * 8));
+
+	/* change the ddr freqency */
+	arm_smccc_smc(IMX_SIP_DDR_DVFS, target_freq, online_cpus,
+			0, 0, 0, 0, 0, &res);
+
+	local_irq_enable();
+}
+
+static struct clk *clk_get_parent_by_index(struct clk *clk, int index)
+{
+	struct clk_hw *hw;
+
+	hw = clk_hw_get_parent_by_index(__clk_get_hw(clk), index);
+
+	return hw ? hw->clk : NULL;
+}
+
+static int imx8m_ddrc_set_freq(struct device *dev, struct imx8m_ddrc_freq *freq)
+{
+	struct imx8m_ddrc *priv = dev_get_drvdata(dev);
+	struct clk *new_dram_core_parent;
+	struct clk *new_dram_alt_parent;
+	struct clk *new_dram_apb_parent;
+	int ret;
+
+	/*
+	 * Fetch new parents
+	 *
+	 * new_dram_alt_parent and new_dram_apb_parent are optional but
+	 * new_dram_core_parent is not.
+	 */
+	new_dram_core_parent = clk_get_parent_by_index(
+			priv->dram_core, freq->dram_core_parent_index - 1);
+	if (!new_dram_core_parent) {
+		dev_err(dev, "failed to fetch new dram_core parent\n");
+		return -EINVAL;
+	}
+	if (freq->dram_alt_parent_index) {
+		new_dram_alt_parent = clk_get_parent_by_index(
+				priv->dram_alt,
+				freq->dram_alt_parent_index - 1);
+		if (!new_dram_alt_parent) {
+			dev_err(dev, "failed to fetch new dram_alt parent\n");
+			return -EINVAL;
+		}
+	} else
+		new_dram_alt_parent = NULL;
+
+	if (freq->dram_apb_parent_index) {
+		new_dram_apb_parent = clk_get_parent_by_index(
+				priv->dram_apb,
+				freq->dram_apb_parent_index - 1);
+		if (!new_dram_apb_parent) {
+			dev_err(dev, "failed to fetch new dram_apb parent\n");
+			return -EINVAL;
+		}
+	} else
+		new_dram_apb_parent = NULL;
+
+	/* increase reference counts and ensure clks are ON before switch */
+	ret = clk_prepare_enable(new_dram_core_parent);
+	if (ret) {
+		dev_err(dev, "failed to enable new dram_core parent: %d\n",
+			ret);
+		goto out;
+	}
+	ret = clk_prepare_enable(new_dram_alt_parent);
+	if (ret) {
+		dev_err(dev, "failed to enable new dram_alt parent: %d\n",
+			ret);
+		goto out_disable_core_parent;
+	}
+	ret = clk_prepare_enable(new_dram_apb_parent);
+	if (ret) {
+		dev_err(dev, "failed to enable new dram_apb parent: %d\n",
+			ret);
+		goto out_disable_alt_parent;
+	}
+
+	imx8m_ddrc_smc_set_freq(freq->smcarg);
+
+	/* update parents in clk tree after switch. */
+	ret = clk_set_parent(priv->dram_core, new_dram_core_parent);
+	if (ret)
+		dev_warn(dev, "failed to set dram_core parent: %d\n", ret);
+	if (new_dram_alt_parent) {
+		ret = clk_set_parent(priv->dram_alt, new_dram_alt_parent);
+		if (ret)
+			dev_warn(dev, "failed to set dram_alt parent: %d\n",
+				 ret);
+	}
+	if (new_dram_apb_parent) {
+		ret = clk_set_parent(priv->dram_apb, new_dram_apb_parent);
+		if (ret)
+			dev_warn(dev, "failed to set dram_apb parent: %d\n",
+				 ret);
+	}
+
+	/*
+	 * Explicitly refresh dram PLL rate.
+	 *
+	 * Even if it's marked with CLK_GET_RATE_NOCACHE the rate will not be
+	 * automatically refreshed when clk_get_rate is called on children.
+	 */
+	clk_get_rate(priv->dram_pll);
+
+	/*
+	 * clk_set_parent transfer the reference count from old parent.
+	 * now we drop extra reference counts used during the switch
+	 */
+	clk_disable_unprepare(new_dram_apb_parent);
+out_disable_alt_parent:
+	clk_disable_unprepare(new_dram_alt_parent);
+out_disable_core_parent:
+	clk_disable_unprepare(new_dram_core_parent);
+out:
+	return ret;
+}
+
+static int imx8m_ddrc_target(struct device *dev, unsigned long *freq, u32 flags)
+{
+	struct imx8m_ddrc *priv = dev_get_drvdata(dev);
+	struct imx8m_ddrc_freq *freq_info;
+	struct dev_pm_opp *new_opp;
+	unsigned long old_freq, new_freq;
+	int ret;
+
+	new_opp = devfreq_recommended_opp(dev, freq, flags);
+	if (IS_ERR(new_opp)) {
+		ret = PTR_ERR(new_opp);
+		dev_err(dev, "failed to get recommended opp: %d\n", ret);
+		return ret;
+	}
+	dev_pm_opp_put(new_opp);
+
+	old_freq = clk_get_rate(priv->dram_core);
+	if (*freq == old_freq)
+		return 0;
+
+	freq_info = imx8m_ddrc_find_freq(priv, *freq);
+	if (!freq_info)
+		return -EINVAL;
+
+	/*
+	 * Read back the clk rate to verify switch was correct and so that
+	 * we can report it on all error paths.
+	 */
+	ret = imx8m_ddrc_set_freq(dev, freq_info);
+
+	new_freq = clk_get_rate(priv->dram_core);
+	if (ret)
+		dev_err(dev, "ddrc failed freq switch to %lu from %lu: error %d. now at %lu\n",
+			old_freq, *freq, ret, new_freq);
+	else if (*freq != new_freq)
+		dev_err(dev, "ddrc failed freq update to %lu from %lu, now at %lu\n",
+			old_freq, *freq, new_freq);
+	else
+		dev_dbg(dev, "ddrc freq set to %lu (was %lu)\n",
+			*freq, old_freq);
+
+	return ret;
+}
+
+static int imx8m_ddrc_get_cur_freq(struct device *dev, unsigned long *freq)
+{
+	struct imx8m_ddrc *priv = dev_get_drvdata(dev);
+
+	*freq = clk_get_rate(priv->dram_core);
+
+	return 0;
+}
+
+static int imx8m_ddrc_get_dev_status(struct device *dev,
+				     struct devfreq_dev_status *stat)
+{
+	struct imx8m_ddrc *priv = dev_get_drvdata(dev);
+
+	stat->busy_time = 0;
+	stat->total_time = 0;
+	stat->current_frequency = clk_get_rate(priv->dram_core);
+
+	return 0;
+}
+
+static int imx8m_ddrc_init_freq_info(struct device *dev)
+{
+	struct imx8m_ddrc *priv = dev_get_drvdata(dev);
+	struct arm_smccc_res res;
+	int index;
+
+	/* An error here means DDR DVFS API not supported by firmware */
+	arm_smccc_smc(IMX_SIP_DDR_DVFS, IMX_SIP_DDR_DVFS_GET_FREQ_COUNT,
+			0, 0, 0, 0, 0, 0, &res);
+	priv->freq_count = res.a0;
+	if (priv->freq_count <= 0 ||
+			priv->freq_count > IMX8M_DDRC_MAX_FREQ_COUNT)
+		return -ENODEV;
+
+	for (index = 0; index < priv->freq_count; ++index) {
+		struct imx8m_ddrc_freq *freq = &priv->freq_table[index];
+
+		arm_smccc_smc(IMX_SIP_DDR_DVFS, IMX_SIP_DDR_DVFS_GET_FREQ_INFO,
+			      index, 0, 0, 0, 0, 0, &res);
+		/* Result should be strictly positive */
+		if ((long)res.a0 <= 0)
+			return -ENODEV;
+
+		freq->rate = res.a0;
+		freq->smcarg = index;
+		freq->dram_core_parent_index = res.a1;
+		freq->dram_alt_parent_index = res.a2;
+		freq->dram_apb_parent_index = res.a3;
+
+		/* dram_core has 2 options: dram_pll or dram_alt_root */
+		if (freq->dram_core_parent_index != 1 &&
+				freq->dram_core_parent_index != 2)
+			return -ENODEV;
+		/* dram_apb and dram_alt have exactly 8 possible parents */
+		if (freq->dram_alt_parent_index > 8 ||
+				freq->dram_apb_parent_index > 8)
+			return -ENODEV;
+		/* dram_core from alt requires explicit dram_alt parent */
+		if (freq->dram_core_parent_index == 2 &&
+				freq->dram_alt_parent_index == 0)
+			return -ENODEV;
+	}
+
+	return 0;
+}
+
+static int imx8m_ddrc_check_opps(struct device *dev)
+{
+	struct imx8m_ddrc *priv = dev_get_drvdata(dev);
+	struct imx8m_ddrc_freq *freq_info;
+	struct dev_pm_opp *opp;
+	unsigned long freq;
+	int i, opp_count;
+
+	/* Enumerate DT OPPs and disable those not supported by firmware */
+	opp_count = dev_pm_opp_get_opp_count(dev);
+	if (opp_count < 0)
+		return opp_count;
+	for (i = 0, freq = 0; i < opp_count; ++i, ++freq) {
+		opp = dev_pm_opp_find_freq_ceil(dev, &freq);
+		if (IS_ERR(opp)) {
+			dev_err(dev, "Failed enumerating OPPs: %ld\n",
+				PTR_ERR(opp));
+			return PTR_ERR(opp);
+		}
+		dev_pm_opp_put(opp);
+
+		freq_info = imx8m_ddrc_find_freq(priv, freq);
+		if (!freq_info) {
+			dev_info(dev, "Disable unsupported OPP %luHz %luMT/s\n",
+					freq, DIV_ROUND_CLOSEST(freq, 250000));
+			dev_pm_opp_disable(dev, freq);
+		}
+	}
+
+	return 0;
+}
+
+static void imx8m_ddrc_exit(struct device *dev)
+{
+	dev_pm_opp_of_remove_table(dev);
+}
+
+static int imx8m_ddrc_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct imx8m_ddrc *priv;
+	const char *gov = DEVFREQ_GOV_USERSPACE;
+	int ret;
+
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	platform_set_drvdata(pdev, priv);
+
+	ret = imx8m_ddrc_init_freq_info(dev);
+	if (ret) {
+		dev_err(dev, "failed to init firmware freq info: %d\n", ret);
+		return ret;
+	}
+
+	priv->dram_core = devm_clk_get(dev, "core");
+	priv->dram_pll = devm_clk_get(dev, "pll");
+	priv->dram_alt = devm_clk_get(dev, "alt");
+	priv->dram_apb = devm_clk_get(dev, "apb");
+	if (IS_ERR(priv->dram_core) ||
+		IS_ERR(priv->dram_pll) ||
+		IS_ERR(priv->dram_alt) ||
+		IS_ERR(priv->dram_apb)) {
+		ret = PTR_ERR(priv->devfreq);
+		dev_err(dev, "failed to fetch clocks: %d\n", ret);
+		return ret;
+	}
+
+	ret = dev_pm_opp_of_add_table(dev);
+	if (ret < 0) {
+		dev_err(dev, "failed to get OPP table\n");
+		return ret;
+	}
+
+	ret = imx8m_ddrc_check_opps(dev);
+	if (ret < 0)
+		goto err;
+
+	priv->profile.polling_ms = 1000;
+	priv->profile.target = imx8m_ddrc_target;
+	priv->profile.get_dev_status = imx8m_ddrc_get_dev_status;
+	priv->profile.exit = imx8m_ddrc_exit;
+	priv->profile.get_cur_freq = imx8m_ddrc_get_cur_freq;
+	priv->profile.initial_freq = clk_get_rate(priv->dram_core);
+
+	priv->devfreq = devm_devfreq_add_device(dev, &priv->profile,
+						gov, NULL);
+	if (IS_ERR(priv->devfreq)) {
+		ret = PTR_ERR(priv->devfreq);
+		dev_err(dev, "failed to add devfreq device: %d\n", ret);
+		goto err;
+	}
+
+	return 0;
+
+err:
+	dev_pm_opp_of_remove_table(dev);
+	return ret;
+}
+
+static const struct of_device_id imx8m_ddrc_of_match[] = {
+	{ .compatible = "fsl,imx8m-ddrc", },
+	{ /* sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, imx8m_ddrc_of_match);
+
+static struct platform_driver imx8m_ddrc_platdrv = {
+	.probe		= imx8m_ddrc_probe,
+	.driver = {
+		.name	= "imx8m-ddrc-devfreq",
+		.of_match_table = of_match_ptr(imx8m_ddrc_of_match),
+	},
+};
+module_platform_driver(imx8m_ddrc_platdrv);
+
+MODULE_DESCRIPTION("i.MX8M DDR Controller frequency driver");
+MODULE_AUTHOR("Leonard Crestez <leonard.crestez@nxp.com>");
+MODULE_LICENSE("GPL v2");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
