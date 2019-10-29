Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ECEDE8AD9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 15:35:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RYUNqRENAyJItJs0iJQ6KD24e+lfN9ayJ43hZ5czdYQ=; b=DVsPnB8nYZtwdq
	3bRnoO5PYYzGC2ftNZEXIHVjFv6lcYs3dEDm9a8eQe77FkF++PwPNZBc9k2S5wOghuGKfCdLj62xl
	RyPmg7em47wDyY3qgfW5dsw1rgoSGj5Fj/8kMVpTDssvfl1MtEuX4YUeBUeg6DqKZouHLKRHJ9aux
	71fSg6Oy+jDjmOcrGYMBDHN5g2rZseKUS27xVbN+OO7EunjE6M+agHSeY3MjqX+U1m2LCfeo4Eqdw
	mxucYIc8Wr3HwHlcGIeGMhCC2D4JJU2EYjnVZOGQJv6VliLe+Ee7A3rM056gXDNWKEkloGMaApJhW
	MNv+NV1DQVuQ6pLhTK5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPSb0-0004nS-RI; Tue, 29 Oct 2019 14:35:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPSaw-0004kw-2E
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 14:35:40 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 226E02087E;
 Tue, 29 Oct 2019 14:35:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572359737;
 bh=4fvyoG3+/eyZyG5ZjoB7PGI60+pl8dG113vh4I0o++A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qYHUKivHcYhmnuMwtzruzNoyKrJoMo1Hlst3sRTcX0khcy1art8cRAwO6Y/1bCUCq
 JZcOg4boInXO8O91zLj5u6hzFzHIMbKEvZOXM/JyXdOpT95yJTtU4Yfny9ypIdAI1d
 kfltxmjPW8RjTzecqTIz+tCIdXwcmnFxUJ4W0qdE=
Date: Tue, 29 Oct 2019 14:35:31 +0000
From: Will Deacon <will@kernel.org>
To: Gerald BAEZA <gerald.baeza@st.com>
Subject: Re: [PATCH v3 3/5] perf: stm32: ddrperfm driver creation
Message-ID: <20191029143528.GB12800@willie-the-truck>
References: <1566918464-23927-1-git-send-email-gerald.baeza@st.com>
 <1566918464-23927-4-git-send-email-gerald.baeza@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566918464-23927-4-git-send-email-gerald.baeza@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_073538_155339_2D20FDDF 
X-CRM114-Status: GOOD (  33.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "olof@lixom.net" <olof@lixom.net>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 03:08:20PM +0000, Gerald BAEZA wrote:
> The DDRPERFM is the DDR Performance Monitor embedded in STM32MP1 SOC.
> 
> This perf drivers supports the read, write, activate, idle and total
> time counters, described in the reference manual RM0436 that is
> accessible from Documentation/arm/stm32/stm32mp157-overview.rst
> 
> Signed-off-by: Gerald Baeza <gerald.baeza@st.com>
> ---
>  drivers/perf/Kconfig         |   6 +
>  drivers/perf/Makefile        |   1 +
>  drivers/perf/stm32_ddr_pmu.c | 426 +++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 433 insertions(+)
>  create mode 100644 drivers/perf/stm32_ddr_pmu.c
> 
> diff --git a/drivers/perf/Kconfig b/drivers/perf/Kconfig
> index 09ae8a9..a3d917e 100644
> --- a/drivers/perf/Kconfig
> +++ b/drivers/perf/Kconfig
> @@ -114,6 +114,12 @@ config THUNDERX2_PMU
>  	   The SoC has PMU support in its L3 cache controller (L3C) and
>  	   in the DDR4 Memory Controller (DMC).
>  
> +config STM32_DDR_PMU
> +       tristate "STM32 DDR PMU"
> +       depends on MACH_STM32MP157
> +       help
> +         Support for STM32 DDR performance monitor (DDRPERFM).

Weird indentation here (spaces not tabes?).

>  config XGENE_PMU
>          depends on ARCH_XGENE
>          bool "APM X-Gene SoC PMU"
> diff --git a/drivers/perf/Makefile b/drivers/perf/Makefile
> index 2ebb4de..fd3368c 100644
> --- a/drivers/perf/Makefile
> +++ b/drivers/perf/Makefile
> @@ -9,6 +9,7 @@ obj-$(CONFIG_FSL_IMX8_DDR_PMU) += fsl_imx8_ddr_perf.o
>  obj-$(CONFIG_HISI_PMU) += hisilicon/
>  obj-$(CONFIG_QCOM_L2_PMU)	+= qcom_l2_pmu.o
>  obj-$(CONFIG_QCOM_L3_PMU) += qcom_l3_pmu.o
> +obj-$(CONFIG_STM32_DDR_PMU) += stm32_ddr_pmu.o
>  obj-$(CONFIG_THUNDERX2_PMU) += thunderx2_pmu.o
>  obj-$(CONFIG_XGENE_PMU) += xgene_pmu.o
>  obj-$(CONFIG_ARM_SPE_PMU) += arm_spe_pmu.o
> diff --git a/drivers/perf/stm32_ddr_pmu.c b/drivers/perf/stm32_ddr_pmu.c
> new file mode 100644
> index 0000000..d0480e0
> --- /dev/null
> +++ b/drivers/perf/stm32_ddr_pmu.c
> @@ -0,0 +1,426 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * This file is the STM32 DDR performance monitor (DDRPERFM) driver
> + *
> + * Copyright (C) 2019, STMicroelectronics - All Rights Reserved
> + * Author: Gerald Baeza <gerald.baeza@st.com>
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/delay.h>
> +#include <linux/hrtimer.h>
> +#include <linux/io.h>
> +#include <linux/module.h>
> +#include <linux/of_platform.h>
> +#include <linux/perf_event.h>
> +#include <linux/reset.h>
> +#include <linux/slab.h>
> +#include <linux/types.h>
> +
> +/*
> + * The PMU is able to freeze all counters and generate an interrupt when there
> + * is a counter overflow. But, relying on this means that we lose all the
> + * events that occur between the freeze and the interrupt handler execution.
> + * So we use a polling mechanism to avoid this lose of information.
> + * The fastest counter can overflow in ~8s @533MHz (that is the maximum DDR
> + * frequency supported on STM32MP157), so we poll in 4s intervals to ensure
> + * we don't reach this limit.
> + */
> +#define POLL_MS		4000
> +
> +#define DDRPERFM_CTL	0x000
> +#define DDRPERFM_CFG	0x004
> +#define DDRPERFM_STATUS 0x008
> +#define DDRPERFM_CCR	0x00C
> +#define DDRPERFM_IER	0x010
> +#define DDRPERFM_ISR	0x014
> +#define DDRPERFM_ICR	0x018
> +#define DDRPERFM_TCNT	0x020
> +#define DDRPERFM_CNT(X)	(0x030 + 8 * (X))
> +#define DDRPERFM_HWCFG	0x3F0
> +#define DDRPERFM_VER	0x3F4
> +#define DDRPERFM_ID	0x3F8
> +#define DDRPERFM_SID	0x3FC
> +
> +#define CTL_START	0x00000001
> +#define CTL_STOP	0x00000002
> +#define CCR_CLEAR_ALL	0x8000000F
> +#define SID_MAGIC_ID	0xA3C5DD01

What's this for? The check during probe looks weird.

> +
> +enum {
> +	READ_CNT,
> +	WRITE_CNT,
> +	ACTIVATE_CNT,
> +	IDLE_CNT,
> +	TIME_CNT,
> +	PMU_NR_COUNTERS
> +};

I think these correspond directly to the values set by userspace in
attr.config, so you probably want to clamp attr.config to be <
PMU_NR_COUNTERS in stm32_ddr_pmu_event_init().

> +struct stm32_ddr_pmu {
> +	struct pmu pmu;
> +	void __iomem *membase;
> +	struct clk *clk;
> +	struct hrtimer hrtimer;
> +	cpumask_t pmu_cpu;
> +	ktime_t poll_period;
> +	struct perf_event *events[PMU_NR_COUNTERS];
> +	u64 events_cnt[PMU_NR_COUNTERS];
> +};
> +
> +static inline struct stm32_ddr_pmu *pmu_to_stm32_ddr_pmu(struct pmu *p)
> +{
> +	return container_of(p, struct stm32_ddr_pmu, pmu);
> +}
> +
> +static inline struct stm32_ddr_pmu *hrtimer_to_stm32_ddr_pmu(struct hrtimer *h)
> +{
> +	return container_of(h, struct stm32_ddr_pmu, hrtimer);
> +}
> +
> +static void stm32_ddr_pmu_event_configure(struct perf_event *event)
> +{
> +	struct stm32_ddr_pmu *stm32_ddr_pmu = pmu_to_stm32_ddr_pmu(event->pmu);
> +	unsigned long config_base = event->hw.config_base;
> +	u32 val;
> +
> +	writel_relaxed(CTL_STOP, stm32_ddr_pmu->membase + DDRPERFM_CTL);
> +
> +	if (config_base < TIME_CNT) {
> +		val = readl_relaxed(stm32_ddr_pmu->membase + DDRPERFM_CFG);
> +		val |= (1 << config_base);
> +		writel_relaxed(val, stm32_ddr_pmu->membase + DDRPERFM_CFG);
> +	}
> +}
> +
> +static void stm32_ddr_pmu_event_read(struct perf_event *event)
> +{
> +	struct stm32_ddr_pmu *stm32_ddr_pmu = pmu_to_stm32_ddr_pmu(event->pmu);
> +	unsigned long config_base = event->hw.config_base;
> +	struct hw_perf_event *hw = &event->hw;
> +	u64 prev_count, new_count, mask;
> +	u32 val, offset, bit;
> +
> +	writel_relaxed(CTL_STOP, stm32_ddr_pmu->membase + DDRPERFM_CTL);
> +
> +	if (config_base == TIME_CNT) {
> +		offset = DDRPERFM_TCNT;
> +		bit = 1 << 31;
> +	} else {
> +		offset = DDRPERFM_CNT(config_base);
> +		bit = 1 << config_base;
> +	}
> +	val = readl_relaxed(stm32_ddr_pmu->membase + DDRPERFM_STATUS);
> +	if (val & bit)
> +		pr_warn("STM32 DDR PMU hardware counter overflow\n");

I don't think this print is useful. Surely overflow is fatal and you should
do something like put the event into an error state?

> +	val = readl_relaxed(stm32_ddr_pmu->membase + offset);
> +	writel_relaxed(bit, stm32_ddr_pmu->membase + DDRPERFM_CCR);
> +	writel_relaxed(CTL_START, stm32_ddr_pmu->membase + DDRPERFM_CTL);
> +
> +	do {
> +		prev_count = local64_read(&hw->prev_count);
> +		new_count = prev_count + val;
> +	} while (local64_xchg(&hw->prev_count, new_count) != prev_count);
> +
> +	mask = GENMASK_ULL(31, 0);
> +	local64_add(val & mask, &event->count);
> +
> +	if (new_count < prev_count)
> +		pr_warn("STM32 DDR PMU software counter rollover\n");

These are 64-bit. How fast do you expect the counters to tick?

> +static void stm32_ddr_pmu_event_start(struct perf_event *event, int flags)
> +{
> +	struct stm32_ddr_pmu *stm32_ddr_pmu = pmu_to_stm32_ddr_pmu(event->pmu);
> +	struct hw_perf_event *hw = &event->hw;
> +
> +	if (WARN_ON_ONCE(!(hw->state & PERF_HES_STOPPED)))
> +		return;
> +
> +	if (flags & PERF_EF_RELOAD)
> +		WARN_ON_ONCE(!(hw->state & PERF_HES_UPTODATE));
> +
> +	stm32_ddr_pmu_event_configure(event);
> +
> +	/* Clear all counters to synchronize them, then start */
> +	writel_relaxed(CCR_CLEAR_ALL, stm32_ddr_pmu->membase + DDRPERFM_CCR);
> +	writel_relaxed(CTL_START, stm32_ddr_pmu->membase + DDRPERFM_CTL);
> +	local64_set(&hw->prev_count, 0);
> +	hw->state = 0;
> +}
> +
> +static void stm32_ddr_pmu_event_stop(struct perf_event *event, int flags)
> +{
> +	struct stm32_ddr_pmu *stm32_ddr_pmu = pmu_to_stm32_ddr_pmu(event->pmu);
> +	unsigned long config_base = event->hw.config_base;
> +	struct hw_perf_event *hw = &event->hw;
> +	u32 val, bit;
> +
> +	if (WARN_ON_ONCE(hw->state & PERF_HES_STOPPED))
> +		return;
> +
> +	writel_relaxed(CTL_STOP, stm32_ddr_pmu->membase + DDRPERFM_CTL);
> +	if (config_base == TIME_CNT)
> +		bit = 1 << 31;
> +	else
> +		bit = 1 << config_base;
> +	writel_relaxed(bit, stm32_ddr_pmu->membase + DDRPERFM_CCR);
> +	if (config_base < TIME_CNT) {
> +		val = readl_relaxed(stm32_ddr_pmu->membase + DDRPERFM_CFG);
> +		val &= ~bit;
> +		writel_relaxed(val, stm32_ddr_pmu->membase + DDRPERFM_CFG);
> +	}
> +
> +	hw->state |= PERF_HES_STOPPED;
> +
> +	if (flags & PERF_EF_UPDATE) {
> +		stm32_ddr_pmu_event_read(event);
> +		hw->state |= PERF_HES_UPTODATE;
> +	}
> +}
> +
> +static int stm32_ddr_pmu_event_add(struct perf_event *event, int flags)
> +{
> +	struct stm32_ddr_pmu *stm32_ddr_pmu = pmu_to_stm32_ddr_pmu(event->pmu);
> +	unsigned long config_base = event->hw.config_base;
> +	struct hw_perf_event *hw = &event->hw;
> +
> +	stm32_ddr_pmu->events_cnt[config_base] = 0;
> +	stm32_ddr_pmu->events[config_base] = event;
> +
> +	clk_enable(stm32_ddr_pmu->clk);
> +	/*
> +	 * Pin the timer, so that the overflows are handled by the chosen
> +	 * event->cpu (this is the same one as presented in "cpumask"
> +	 * attribute).
> +	 */
> +	hrtimer_start(&stm32_ddr_pmu->hrtimer, stm32_ddr_pmu->poll_period,
> +		      HRTIMER_MODE_REL_PINNED);
> +
> +	stm32_ddr_pmu_event_configure(event);
> +
> +	hw->state = PERF_HES_STOPPED | PERF_HES_UPTODATE;
> +
> +	if (flags & PERF_EF_START)
> +		stm32_ddr_pmu_event_start(event, 0);
> +
> +	return 0;
> +}
> +
> +static void stm32_ddr_pmu_event_del(struct perf_event *event, int flags)
> +{
> +	struct stm32_ddr_pmu *stm32_ddr_pmu = pmu_to_stm32_ddr_pmu(event->pmu);
> +	unsigned long config_base = event->hw.config_base;
> +	bool stop = true;
> +	int i;
> +
> +	stm32_ddr_pmu_event_stop(event, PERF_EF_UPDATE);
> +
> +	stm32_ddr_pmu->events_cnt[config_base] += local64_read(&event->count);
> +	stm32_ddr_pmu->events[config_base] = NULL;
> +
> +	for (i = 0; i < PMU_NR_COUNTERS; i++)
> +		if (stm32_ddr_pmu->events[i])
> +			stop = false;
> +	if (stop)

This is just i == PMU_NR_COUNTERS if you add a break in the if clause.

> +		hrtimer_cancel(&stm32_ddr_pmu->hrtimer);
> +
> +	clk_disable(stm32_ddr_pmu->clk);
> +}
> +
> +static int stm32_ddr_pmu_event_init(struct perf_event *event)
> +{
> +	struct stm32_ddr_pmu *stm32_ddr_pmu = pmu_to_stm32_ddr_pmu(event->pmu);
> +	struct hw_perf_event *hw = &event->hw;
> +
> +	if (event->attr.type != event->pmu->type)
> +		return -ENOENT;
> +
> +	if (is_sampling_event(event))
> +		return -EINVAL;
> +
> +	if (event->attach_state & PERF_ATTACH_TASK)
> +		return -EINVAL;
> +
> +	if (event->attr.exclude_user   ||
> +	    event->attr.exclude_kernel ||
> +	    event->attr.exclude_hv     ||
> +	    event->attr.exclude_idle   ||
> +	    event->attr.exclude_host   ||
> +	    event->attr.exclude_guest)
> +		return -EINVAL;
> +
> +	if (event->cpu < 0)
> +		return -EINVAL;
> +
> +	hw->config_base = event->attr.config;
> +	event->cpu = cpumask_first(&stm32_ddr_pmu->pmu_cpu);
> +
> +	return 0;
> +}
> +
> +static enum hrtimer_restart stm32_ddr_pmu_poll(struct hrtimer *hrtimer)
> +{
> +	struct stm32_ddr_pmu *stm32_ddr_pmu = hrtimer_to_stm32_ddr_pmu(hrtimer);
> +	int i;
> +
> +	for (i = 0; i < PMU_NR_COUNTERS; i++)
> +		if (stm32_ddr_pmu->events[i])
> +			stm32_ddr_pmu_event_read(stm32_ddr_pmu->events[i]);
> +
> +	hrtimer_forward_now(hrtimer, stm32_ddr_pmu->poll_period);
> +
> +	return HRTIMER_RESTART;
> +}
> +
> +static ssize_t stm32_ddr_pmu_sysfs_show(struct device *dev,
> +					struct device_attribute *attr,
> +					char *buf)
> +{
> +	struct dev_ext_attribute *eattr;
> +
> +	eattr = container_of(attr, struct dev_ext_attribute, attr);
> +
> +	return sprintf(buf, "config=0x%lx\n", (unsigned long)eattr->var);
> +}

Will you ever want to use other bits in the config to configure the PMU?
If so, perhaps its worth carving out a smaller event field, a bit like
fsl_imx8_ddr_perf.c does.

> +
> +#define STM32_DDR_PMU_ATTR(_name, _func, _config)			\
> +	(&((struct dev_ext_attribute[]) {				\
> +		{ __ATTR(_name, 0444, _func, NULL), (void *)_config }   \
> +	})[0].attr.attr)
> +
> +#define STM32_DDR_PMU_EVENT_ATTR(_name, _config)		\
> +	STM32_DDR_PMU_ATTR(_name, stm32_ddr_pmu_sysfs_show,	\
> +			   (unsigned long)_config)
> +
> +static struct attribute *stm32_ddr_pmu_event_attrs[] = {
> +	STM32_DDR_PMU_EVENT_ATTR(read_cnt, READ_CNT),
> +	STM32_DDR_PMU_EVENT_ATTR(write_cnt, WRITE_CNT),
> +	STM32_DDR_PMU_EVENT_ATTR(activate_cnt, ACTIVATE_CNT),
> +	STM32_DDR_PMU_EVENT_ATTR(idle_cnt, IDLE_CNT),
> +	STM32_DDR_PMU_EVENT_ATTR(time_cnt, TIME_CNT),
> +	NULL
> +};
> +
> +static struct attribute_group stm32_ddr_pmu_event_attrs_group = {
> +	.name = "events",
> +	.attrs = stm32_ddr_pmu_event_attrs,
> +};
> +
> +static const struct attribute_group *stm32_ddr_pmu_attr_groups[] = {
> +	&stm32_ddr_pmu_event_attrs_group,
> +	NULL,
> +};
> +
> +static int stm32_ddr_pmu_device_probe(struct platform_device *pdev)
> +{
> +	struct stm32_ddr_pmu *stm32_ddr_pmu;
> +	struct reset_control *rst;
> +	struct resource *res;
> +	int i, ret;
> +	u32 val;
> +
> +	stm32_ddr_pmu = devm_kzalloc(&pdev->dev, sizeof(struct stm32_ddr_pmu),
> +				     GFP_KERNEL);
> +	if (!stm32_ddr_pmu)
> +		return -ENOMEM;
> +	platform_set_drvdata(pdev, stm32_ddr_pmu);
> +
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	stm32_ddr_pmu->membase = devm_ioremap_resource(&pdev->dev, res);
> +	if (IS_ERR(stm32_ddr_pmu->membase)) {
> +		pr_warn("Unable to get STM32 DDR PMU membase\n");
> +		return PTR_ERR(stm32_ddr_pmu->membase);
> +	}
> +
> +	stm32_ddr_pmu->clk = devm_clk_get(&pdev->dev, NULL);
> +	if (IS_ERR(stm32_ddr_pmu->clk)) {
> +		pr_warn("Unable to get STM32 DDR PMU clock\n");
> +		return PTR_ERR(stm32_ddr_pmu->clk);
> +	}
> +
> +	ret = clk_prepare_enable(stm32_ddr_pmu->clk);
> +	if (ret) {
> +		pr_warn("Unable to prepare STM32 DDR PMU clock\n");
> +		return ret;
> +	}
> +
> +	stm32_ddr_pmu->poll_period = ms_to_ktime(POLL_MS);
> +	hrtimer_init(&stm32_ddr_pmu->hrtimer, CLOCK_MONOTONIC,
> +		     HRTIMER_MODE_REL);

I would /much/ prefer for the timer to be handled by the perf core
automatically when a PMU is registered with PERF_PMU_CAP_NO_INTERRUPT. That
way, other drivers can benefit from this without tonnes of code duplication.

> +	stm32_ddr_pmu->hrtimer.function = stm32_ddr_pmu_poll;
> +
> +	/*
> +	 * The PMU is assigned to the cpu0 and there is no need to manage cpu
> +	 * hot plug migration because cpu0 is always the first/last active cpu
> +	 * during low power transitions.
> +	 */
> +	cpumask_set_cpu(0, &stm32_ddr_pmu->pmu_cpu);
> +
> +	for (i = 0; i < PMU_NR_COUNTERS; i++) {
> +		stm32_ddr_pmu->events[i] = NULL;
> +		stm32_ddr_pmu->events_cnt[i] = 0;
> +	}
> +
> +	val = readl_relaxed(stm32_ddr_pmu->membase + DDRPERFM_SID);
> +	if (val != SID_MAGIC_ID)
> +		return -EINVAL;
> +
> +	stm32_ddr_pmu->pmu = (struct pmu) {
> +		.task_ctx_nr = perf_invalid_context,
> +		.start = stm32_ddr_pmu_event_start,
> +		.stop = stm32_ddr_pmu_event_stop,
> +		.add = stm32_ddr_pmu_event_add,
> +		.del = stm32_ddr_pmu_event_del,
> +		.event_init = stm32_ddr_pmu_event_init,
> +		.attr_groups = stm32_ddr_pmu_attr_groups,
> +	};
> +	ret = perf_pmu_register(&stm32_ddr_pmu->pmu, "stm32_ddr_pmu", -1);

You might want an index on the end of this name in case you ever want to
support more than one in a given SoC.

> +	if (ret) {
> +		pr_warn("Unable to register STM32 DDR PMU\n");
> +		return ret;
> +	}
> +
> +	rst = devm_reset_control_get_exclusive(&pdev->dev, NULL);
> +	if (!IS_ERR(rst)) {
> +		reset_control_assert(rst);
> +		udelay(2);
> +		reset_control_deassert(rst);
> +	}
> +
> +	pr_info("stm32-ddr-pmu: probed (DDRPERFM ID=0x%08x VER=0x%08x)\n",
> +		readl_relaxed(stm32_ddr_pmu->membase + DDRPERFM_ID),
> +		readl_relaxed(stm32_ddr_pmu->membase + DDRPERFM_VER));

dev_info(). Similarly for many of your other pr_*() calls.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
