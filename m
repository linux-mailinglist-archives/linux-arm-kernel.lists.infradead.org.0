Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CBC610E587
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 06:39:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tNtnDLWlmi9DyMGEuiGR74gHRmghsTCm+pfL4DeY5qo=; b=jjqs63xNM/ZfDp
	0nSpvZlEiXY/yphtn5P2pm+kdwVsXIW45Z4ABi9n/uozwfwX+S6v+B+7YbYqSoXx0+oB4l2QSTKee
	8kw867Gv4p6B6FD7d2v8w5ffE5cLXLaNQ2NM8jQnNODI7LgYSCpCjZ4RwqVUFW8EkKZy5yHKRUztC
	eqVO7aRsKcnqE3Q4Y/6hnOHfq8DyTJY1BUMtTYI0rPSAjUJLmbq8YeWAp9JjPwb+7mHBHMltszs/K
	4UbSRMFqVninkeb0o+Z9mv7sNfnRl5X1rW654OIiR7J52tYsVUDXe+4xskpT9hJZnZRF4vywH5W6o
	j79nHtgNexApSNkpZOfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibeQc-00087z-Sa; Mon, 02 Dec 2019 05:39:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibeQT-00087I-PK
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 05:39:15 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B462820675;
 Mon,  2 Dec 2019 05:38:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575265150;
 bh=SDP6eq/Hom7CggoDaioOTn5NWU1DhHjAdZ7VlPBSBS0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=djetOPwdmmF+bqNJtPdVSI84cuZhyeQnR1GYBswkfYoy7Uyq/zdYtQIJXHt9WCBTQ
 mBqJyDeH/DPx8av49/Jh5HwWUI+tdANuE9E0I/Lx22u2k25dTiI3NGo+F92tig6km5
 EFk2T9XFcgD9Tkx5Ry/tBa08AwD8xFiuP3Ki/ycY=
Date: Mon, 2 Dec 2019 13:38:48 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v3 4/6] PM / devfreq: Add dynamic scaling for imx ddr
 controller
Message-ID: <20191202053847.GC9767@dragon>
References: <cover.1572558427.git.leonard.crestez@nxp.com>
 <5fcf829265ecde1af32cb1369528c97361c76992.1572558427.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5fcf829265ecde1af32cb1369528c97361c76992.1572558427.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_213913_868438_2BB2DA4F 
X-CRM114-Status: GOOD (  33.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Artur =?utf-8?B?xZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-clk@vger.kernel.org,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 linux-imx@nxp.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Martin Kepplinger <martink@posteo.de>,
 linux-arm-kernel@lists.infradead.org, Dong Aisheng <aisheng.dong@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 11:50:25PM +0200, Leonard Crestez wrote:
> Add driver for dynamic scaling the DDR Controller on imx8m chips. Actual
> frequency switching is implemented inside TF-A, this driver wraps the
> SMC calls and synchronizes the clk tree.
> 
> The DRAM clocks on imx8m have the following structure (abridged):
> 
>  +----------+       |\            +------+
>  | dram_pll |-------|M| dram_core |      |
>  +----------+       |U|---------->| D    |
>                  /--|X|           |  D   |
>    dram_alt_root |  |/            |   R  |
>                  |                |    C |
>             +---------+           |      |
>             |FIX DIV/4|           |      |
>             +---------+           |      |
>   composite:     |                |      |
>  +----------+    |                |      |
>  | dram_alt |----/                |      |
>  +----------+                     |      |
>  | dram_apb |-------------------->|      |
>  +----------+                     +------+
> 
> The dram_pll is used for higher rates and dram_alt is used for lower
> rates. The dram_alt and dram_apb clocks are "imx composite" and their
> parent can also be modified.
> 
> This driver will prepare/enable the new parents ahead of switching (so
> that the expected roots are enabled) and afterwards it will call
> clk_set_parent to ensure the parents in clock framework are up-to-date.
> 
> The driver relies on dram_pll dram_alt and dram_apb being marked with
> CLK_GET_RATE_NOCACHE for rate updates.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  drivers/devfreq/Makefile   |   1 +
>  drivers/devfreq/imx-ddrc.c | 430 +++++++++++++++++++++++++++++++++++++
>  2 files changed, 431 insertions(+)
>  create mode 100644 drivers/devfreq/imx-ddrc.c
> 
> diff --git a/drivers/devfreq/Makefile b/drivers/devfreq/Makefile
> index 338ae8440db6..1ac92614b6aa 100644
> --- a/drivers/devfreq/Makefile
> +++ b/drivers/devfreq/Makefile
> @@ -7,10 +7,11 @@ obj-$(CONFIG_DEVFREQ_GOV_POWERSAVE)	+= governor_powersave.o
>  obj-$(CONFIG_DEVFREQ_GOV_USERSPACE)	+= governor_userspace.o
>  obj-$(CONFIG_DEVFREQ_GOV_PASSIVE)	+= governor_passive.o
>  
>  # DEVFREQ Drivers
>  obj-$(CONFIG_ARM_EXYNOS_BUS_DEVFREQ)	+= exynos-bus.o
> +obj-$(CONFIG_ARM_IMX_DEVFREQ)		+= imx-ddrc.o
>  obj-$(CONFIG_ARM_RK3399_DMC_DEVFREQ)	+= rk3399_dmc.o
>  obj-$(CONFIG_ARM_TEGRA_DEVFREQ)		+= tegra30-devfreq.o
>  obj-$(CONFIG_ARM_TEGRA20_DEVFREQ)	+= tegra20-devfreq.o
>  
>  # DEVFREQ Event Drivers
> diff --git a/drivers/devfreq/imx-ddrc.c b/drivers/devfreq/imx-ddrc.c
> new file mode 100644
> index 000000000000..3ce51614ecab
> --- /dev/null
> +++ b/drivers/devfreq/imx-ddrc.c
> @@ -0,0 +1,430 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright 2019 NXP
> + */
> +
> +#include <linux/module.h>
> +#include <linux/device.h>
> +#include <linux/of_device.h>
> +#include <linux/platform_device.h>
> +#include <linux/devfreq.h>
> +#include <linux/pm_opp.h>
> +#include <linux/clk.h>
> +#include <linux/clk-provider.h>

This is a header that should ideally be used by clock drivers only.

> +#include <linux/arm-smccc.h>
> +
> +#define IMX_SIP_DDR_DVFS			0xc2000004
> +
> +/* Values starting from 0 switch to specific frequency */
> +#define IMX_SIP_DDR_FREQ_SET_HIGH		0x00
> +
> +/* Deprecated after moving IRQ handling to ATF */
> +#define IMX_SIP_DDR_DVFS_WAIT_CHANGE		0x0F

These two defines are not used.  Will be?

> +
> +/* Query available frequencies. */
> +#define IMX_SIP_DDR_DVFS_GET_FREQ_COUNT		0x10
> +#define IMX_SIP_DDR_DVFS_GET_FREQ_INFO		0x11
> +
> +/*
> + * This should be in a 1:1 mapping with devicetree OPPs but
> + * firmware provides additional info.
> + */
> +struct imx_ddrc_freq {
> +	unsigned long rate;
> +	unsigned long smcarg;
> +	int dram_core_parent_index;
> +	int dram_alt_parent_index;
> +	int dram_apb_parent_index;
> +};
> +
> +/* Hardware limitation */
> +#define IMX_DDRC_MAX_FREQ_COUNT 4
> +
> +/*
> + * imx DRAM controller
> + *
> + * imx DRAM controller clocks have the following structure (abridged):
> + *
> + * +----------+       |\            +------+
> + * | dram_pll |-------|M| dram_core |      |
> + * +----------+       |U|---------->| D    |
> + *                 /--|X|           |  D   |
> + *   dram_alt_root |  |/            |   R  |
> + *                 |                |    C |
> + *            +---------+           |      |
> + *            |FIX DIV/4|           |      |
> + *            +---------+           |      |
> + *  composite:     |                |      |
> + * +----------+    |                |      |
> + * | dram_alt |----/                |      |
> + * +----------+                     |      |
> + * | dram_apb |-------------------->|      |
> + * +----------+                     +------+
> + *
> + * The dram_pll is used for higher rates and dram_alt is used for lower rates.
> + *
> + * Frequency switching is implemented in TF-A (via SMC call) and can change the
> + * configuration of the clocks, including mux parents. The dram_alt and
> + * dram_apb clocks are "imx composite" and their parent can change too.
> + *
> + * We need to prepare/enable the new mux parents head of switching and update
> + * their information afterwards.
> + */
> +struct imx_ddrc {
> +	struct devfreq_dev_profile profile;
> +	struct devfreq *devfreq;
> +
> +	/* For frequency switching: */
> +	struct clk *dram_core;
> +	struct clk *dram_pll;
> +	struct clk *dram_alt;
> +	struct clk *dram_apb;
> +
> +	int freq_count;
> +	struct imx_ddrc_freq freq_table[IMX_DDRC_MAX_FREQ_COUNT];
> +};
> +
> +static struct imx_ddrc_freq *imx_ddrc_find_freq(struct imx_ddrc *priv,
> +						unsigned long rate)
> +{
> +	int i;
> +
> +	/*
> +	 * Firmware reports values in MT/s, so we round-down from Hz
> +	 * Rounding is extra generous to ensure a match.
> +	 */
> +	rate = DIV_ROUND_CLOSEST(rate, 250000);
> +	for (i = 0; i < priv->freq_count; ++i) {
> +		struct imx_ddrc_freq *freq = &priv->freq_table[i];
> +		if (freq->rate == rate ||
> +				freq->rate + 1 == rate ||
> +				freq->rate - 1 == rate)
> +			return freq;
> +	}
> +
> +	return NULL;
> +}
> +
> +static void imx_ddrc_smc_set_freq(int target_freq)
> +{
> +	struct arm_smccc_res res;
> +	u32 online_cpus = 0;
> +	int cpu;
> +
> +	local_irq_disable();
> +
> +	for_each_online_cpu(cpu)
> +		online_cpus |= (1 << (cpu * 8));

Nit: one level of unnecessary parentheses.

> +
> +	/* change the ddr freqency */
> +	arm_smccc_smc(IMX_SIP_DDR_DVFS, target_freq, online_cpus,
> +			0, 0, 0, 0, 0, &res);
> +
> +	local_irq_enable();
> +}
> +
> +struct clk *clk_get_parent_by_index(struct clk *clk, int index)
> +{
> +	struct clk_hw *hw;
> +
> +	hw = clk_hw_get_parent_by_index(__clk_get_hw(clk), index);

Okay, this is why you need clk-provider.h.  But this
clk_get_parent_by_index() function looks completely generic, and should
be proposed to clock core?

Shawn

> +
> +	return hw ? hw->clk : NULL;
> +}
> +
> +static int imx_ddrc_set_freq(struct device *dev, struct imx_ddrc_freq *freq)
> +{
> +	struct imx_ddrc *priv = dev_get_drvdata(dev);
> +	struct clk *new_dram_core_parent;
> +	struct clk *new_dram_alt_parent;
> +	struct clk *new_dram_apb_parent;
> +	int ret;
> +
> +	new_dram_core_parent = clk_get_parent_by_index(
> +			priv->dram_core, freq->dram_core_parent_index - 1);
> +	new_dram_alt_parent = clk_get_parent_by_index(
> +			priv->dram_alt, freq->dram_alt_parent_index - 1);
> +	new_dram_apb_parent = clk_get_parent_by_index(
> +			priv->dram_apb, freq->dram_apb_parent_index - 1);
> +
> +	/* increase reference counts and ensure clks are ON before switch */
> +	ret = clk_prepare_enable(new_dram_core_parent);
> +	if (ret) {
> +		dev_err(dev, "failed enable new dram_core parent: %d\n", ret);
> +		goto out;
> +	}
> +	ret = clk_prepare_enable(new_dram_alt_parent);
> +	if (ret) {
> +		dev_err(dev, "failed enable new dram_alt parent: %d\n", ret);
> +		goto out_dis_core;
> +	}
> +	ret = clk_prepare_enable(new_dram_apb_parent);
> +	if (ret) {
> +		dev_err(dev, "failed enable new dram_apb parent: %d\n", ret);
> +		goto out_dis_alt;
> +	}
> +
> +	imx_ddrc_smc_set_freq(freq->smcarg);
> +
> +	/* update parents in clk tree after switch. */
> +	ret = clk_set_parent(priv->dram_core, new_dram_core_parent);
> +	if (ret)
> +		dev_err(dev, "failed set dram_core parent: %d\n", ret);
> +	if (new_dram_alt_parent) {
> +		ret = clk_set_parent(priv->dram_alt, new_dram_alt_parent);
> +		if (ret)
> +			dev_err(dev, "failed set dram_alt parent: %d\n", ret);
> +	}
> +	if (new_dram_apb_parent) {
> +		ret = clk_set_parent(priv->dram_apb, new_dram_apb_parent);
> +		if (ret)
> +			dev_err(dev, "failed set dram_apb parent: %d\n", ret);
> +	}
> +
> +	/*
> +	 * Explicitly refresh dram PLL rate.
> +	 *
> +	 * Even if it's marked with CLK_GET_RATE_NOCACHE the rate will not be
> +	 * automatically refreshed when clk_get_rate is called on children.
> +	 */
> +	clk_get_rate(priv->dram_pll);
> +
> +	/*
> +	 * clk_set_parent transfer the reference count from old parent.
> +	 * now we drop extra reference counts used during the switch
> +	 */
> +	clk_disable_unprepare(new_dram_apb_parent);
> +out_dis_alt:
> +	clk_disable_unprepare(new_dram_alt_parent);
> +out_dis_core:
> +	clk_disable_unprepare(new_dram_core_parent);
> +out:
> +	return ret;
> +}
> +
> +static int imx_ddrc_target(struct device *dev, unsigned long *freq, u32 flags)
> +{
> +	struct imx_ddrc *priv = dev_get_drvdata(dev);
> +	struct imx_ddrc_freq *freq_info;
> +	struct dev_pm_opp *new_opp;
> +	unsigned long old_freq, new_freq;
> +	int ret;
> +
> +	new_opp = devfreq_recommended_opp(dev, freq, flags);
> +	if (IS_ERR(new_opp)) {
> +		ret = PTR_ERR(new_opp);
> +		dev_err(dev, "failed to get recommended opp: %d\n", ret);
> +		return ret;
> +	}
> +	dev_pm_opp_put(new_opp);
> +
> +	old_freq = clk_get_rate(priv->dram_core);
> +	if (*freq == old_freq)
> +		return 0;
> +
> +	freq_info = imx_ddrc_find_freq(priv, *freq);
> +	if (!freq_info)
> +		return -EINVAL;
> +	ret = imx_ddrc_set_freq(dev, freq_info);
> +
> +	/* Also read back the clk rate to verify switch was correct */
> +	new_freq = clk_get_rate(priv->dram_core);
> +	if (ret || *freq != new_freq)
> +		dev_err(dev, "ddrc failed to change freq %lu to %lu: now at %lu\n",
> +				old_freq, *freq, new_freq);
> +	else
> +		dev_dbg(dev, "ddrc changed freq %lu to %lu\n",
> +				old_freq, *freq);
> +
> +	return ret;
> +}
> +
> +static int imx_ddrc_get_cur_freq(struct device *dev, unsigned long *freq)
> +{
> +	struct imx_ddrc *priv = dev_get_drvdata(dev);
> +
> +	*freq = clk_get_rate(priv->dram_core);
> +
> +	return 0;
> +}
> +
> +static int imx_ddrc_get_dev_status(struct device *dev,
> +		struct devfreq_dev_status *stat)
> +{
> +	struct imx_ddrc *priv = dev_get_drvdata(dev);
> +
> +	stat->busy_time = 0;
> +	stat->total_time = 0;
> +	stat->current_frequency = clk_get_rate(priv->dram_core);
> +
> +	return 0;
> +}
> +
> +static int imx_ddrc_init_freq_info(struct device *dev)
> +{
> +	struct imx_ddrc *priv = dev_get_drvdata(dev);
> +	struct arm_smccc_res res;
> +	int index;
> +
> +	/*
> +	 * An error here means DDR DVFS API not supported by firmware
> +	 */
> +	arm_smccc_smc(IMX_SIP_DDR_DVFS, IMX_SIP_DDR_DVFS_GET_FREQ_COUNT,
> +			0, 0, 0, 0, 0, 0, &res);
> +	priv->freq_count = res.a0;
> +	if (priv->freq_count <= 0 || priv->freq_count > IMX_DDRC_MAX_FREQ_COUNT)
> +		return -ENODEV;
> +
> +	for (index = 0; index < priv->freq_count; ++index) {
> +		struct imx_ddrc_freq *freq = &priv->freq_table[index];
> +
> +		arm_smccc_smc(IMX_SIP_DDR_DVFS, IMX_SIP_DDR_DVFS_GET_FREQ_INFO,
> +				index, 0, 0, 0, 0, 0, &res);
> +		/* Result should be strictly positive */
> +		if ((long)res.a0 <= 0)
> +			return -ENODEV;
> +
> +		freq->rate = res.a0;
> +		freq->smcarg = index;
> +		freq->dram_core_parent_index = res.a1;
> +		freq->dram_alt_parent_index = res.a2;
> +		freq->dram_apb_parent_index = res.a3;
> +
> +		/* dram_core has 2 options: dram_pll or dram_alt_root */
> +		if (freq->dram_core_parent_index != 1 &&
> +				freq->dram_core_parent_index != 2)
> +			return -ENODEV;
> +		/* dram_apb and dram_alt have exactly 8 possible parents */
> +		if (freq->dram_alt_parent_index > 8 ||
> +				freq->dram_apb_parent_index > 8)
> +			return -ENODEV;
> +		/* dram_core from alt requires explicit dram_alt parent */
> +		if (freq->dram_core_parent_index == 2 &&
> +				freq->dram_alt_parent_index == 0)
> +			return -ENODEV;
> +	}
> +
> +	return 0;
> +}
> +
> +/* imx_ddrc_check_opps() - disable OPPs not supported by firmware */
> +static int imx_ddrc_check_opps(struct device *dev)
> +{
> +	struct imx_ddrc *priv = dev_get_drvdata(dev);
> +	struct imx_ddrc_freq *freq_info;
> +	struct dev_pm_opp *opp;
> +	unsigned long freq;
> +
> +	freq = ULONG_MAX;
> +	while (true) {
> +		opp = dev_pm_opp_find_freq_floor(dev, &freq);
> +		if (opp == ERR_PTR(-ERANGE))
> +			break;
> +		if (IS_ERR(opp)) {
> +			dev_err(dev, "Failed enumerating OPPs: %ld\n",
> +				PTR_ERR(opp));
> +			return PTR_ERR(opp);
> +		}
> +		dev_pm_opp_put(opp);
> +
> +		freq_info = imx_ddrc_find_freq(priv, freq);
> +		if (!freq_info) {
> +			dev_info(dev, "Disable unsupported OPP %luHz %luMT/s\n",
> +					freq, DIV_ROUND_CLOSEST(freq, 250000));
> +			dev_pm_opp_disable(dev, freq);
> +		}
> +
> +		freq--;
> +	}
> +
> +	return 0;
> +}
> +
> +static void imx_ddrc_exit(struct device *dev)
> +{
> +	dev_pm_opp_of_remove_table(dev);
> +}
> +
> +static int imx_ddrc_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct imx_ddrc *priv;
> +	struct device_node *events_node;
> +	const char *gov = DEVFREQ_GOV_USERSPACE;
> +	int ret;
> +
> +	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
> +		return -ENOMEM;
> +
> +	platform_set_drvdata(pdev, priv);
> +
> +	ret = imx_ddrc_init_freq_info(dev);
> +	if (ret) {
> +		dev_err(dev, "failed to init firmware freq info: %d\n", ret);
> +		return ret;
> +	}
> +
> +	priv->dram_core = devm_clk_get(dev, "dram_core");
> +	priv->dram_pll = devm_clk_get(dev, "dram_pll");
> +	priv->dram_alt = devm_clk_get(dev, "dram_alt");
> +	priv->dram_apb = devm_clk_get(dev, "dram_apb");
> +	if (IS_ERR(priv->dram_core) ||
> +		IS_ERR(priv->dram_pll) ||
> +		IS_ERR(priv->dram_alt) ||
> +		IS_ERR(priv->dram_apb)) {
> +		ret = PTR_ERR(priv->devfreq);
> +		dev_err(dev, "failed to fetch clocks: %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret = dev_pm_opp_of_add_table(dev);
> +	if (ret < 0) {
> +		dev_err(dev, "failed to get OPP table\n");
> +		return ret;
> +	}
> +
> +	ret = imx_ddrc_check_opps(dev);
> +	if (ret < 0)
> +		goto err;
> +
> +	priv->profile.polling_ms = 1000;
> +	priv->profile.target = imx_ddrc_target;
> +	priv->profile.get_dev_status = imx_ddrc_get_dev_status;
> +	priv->profile.exit = imx_ddrc_exit;
> +	priv->profile.get_cur_freq = imx_ddrc_get_cur_freq;
> +	priv->profile.initial_freq = clk_get_rate(priv->dram_core);
> +
> +	priv->devfreq = devm_devfreq_add_device(dev, &priv->profile,
> +						gov, NULL);
> +	if (IS_ERR(priv->devfreq)) {
> +		ret = PTR_ERR(priv->devfreq);
> +		dev_err(dev, "failed to add devfreq device: %d\n", ret);
> +		goto err;
> +	}
> +
> +	return 0;
> +
> +err:
> +	dev_pm_opp_of_remove_table(dev);
> +	return ret;
> +}
> +
> +static const struct of_device_id imx_ddrc_of_match[] = {
> +	{ .compatible = "fsl,imx8m-ddrc", },
> +	{ /* sentinel */ },
> +};
> +MODULE_DEVICE_TABLE(of, imx_ddrc_of_match);
> +
> +static struct platform_driver imx_ddrc_platdrv = {
> +	.probe		= imx_ddrc_probe,
> +	.driver = {
> +		.name	= "imx-ddrc-devfreq",
> +		.of_match_table = of_match_ptr(imx_ddrc_of_match),
> +	},
> +};
> +module_platform_driver(imx_ddrc_platdrv);
> +
> +MODULE_DESCRIPTION("i.MX DDR controller frequency driver");
> +MODULE_AUTHOR("Leonard Crestez <leonard.crestez@nxp.com>");
> +MODULE_LICENSE("GPL v2");
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
