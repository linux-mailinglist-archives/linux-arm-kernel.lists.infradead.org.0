Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13DCC193E4A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 12:50:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kjryrElsUAA0g9RywHtAdK/eaxKS5ad9XMx/q8Lyxfs=; b=MbAKxsh3XBkRIj
	yfNfHnJ7K6UZoHABkYX1VGHTyBMHqmgp7ue5SzqcU1w+OzRRKtXxpiSh9ja0Btk86ITy33Zr9ZgO/
	cEybR72sG6jNRMUG7TQ+Hu6DpjodaqSI0kgMICwy/gXiuk4lTZ9ceWU+scF2AipnreGtYlf5zi+g8
	N04pN2f7xyrTdWmr7zEtM/lzZC4N00VnMhkRlwxmJUA12XIGB6840O0eQQyBPn3AQGoMWtSqrcdPQ
	Im+lIHGxLv27+tt782A5MqFZ4q3e2xvItLz4PjZdZG/aKVDUGlnfhx/FImgxryxR+Aos+eRXNPG+3
	LoJWxrRv+5toMP6ZF6TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHR20-0001oy-Ap; Thu, 26 Mar 2020 11:50:40 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHR1o-0001l6-CF
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 11:50:30 +0000
Received: by mail-pg1-x542.google.com with SMTP id d37so2233642pgl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 04:50:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=eahJs5G9Mdp7rh5p/I+k7vqH+FYkCW5jQz7h0JzvSYE=;
 b=ld2nwTE4rMisCwbNHb7yUIP2doQ7eYTtqakpMDUOWRL/3+bVkTn4LgPD3M4NsPc8O2
 U+LO9YmBiZT4owUtv4ids8kH8liDKBfo8YI3c8LHjcZv3+lz0PBtPKmFpb4vc0pdWS4c
 u7x0ozSNUV0Xsp9a8TkKhVhCVAxhTFSwUOULGhEA3bznCA4Ru8IDhFZuFs4NdDGLiipJ
 akXN84GrcHH9gkLN/jJcVtqFl9SbwFJdziIgKTlDq5fdBt/y7ypE64QswcY78DSzndDf
 WbuqnkRuGtuhqXnJ5KkaEcfXb7xIOXvRKQy2Mpog6yGNSdvg/R0PUKwJNaF/LWeg/yHU
 unFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eahJs5G9Mdp7rh5p/I+k7vqH+FYkCW5jQz7h0JzvSYE=;
 b=USZYnLDsZHd2BUK5bJd52gEgn5NJyXNzmbXloQkT5J3VoAOK4LaGc1j+e3BmPOGptG
 wJf4asAjCt3xVm2hOMQ5F5ZHtkiTxm8unh+oBAWH2mkxgEZdTe4r+Vacql3xigVB7PNd
 UQLtnMJNWVH2xqsvluC+m3hWRaFpPkSpEzurhq6mdsDbt3EC8x9/Cnfi43TX9jxtf6+I
 MIgby+HEVAlclmHDJi4AvNUxQw3GmbfxY/E8jN0IdI56uGRAUJwGTrNIBQvWJMb3HtBz
 zexFNyhR4Y96hxgzrmKXTeUAZ9crNDZefTq9jVUg1c3Uf5m5oStcJHgrhw0n7bedRhmd
 tbdg==
X-Gm-Message-State: ANhLgQ2gXR5e3pw/mg7Fr5oQWukgE001UgV3b1TmDZIqer3vFjnjiQ3G
 IwFRTLn5zMcMhJnk/1pCHRhaDw==
X-Google-Smtp-Source: ADFU+vvprQ2//Xmt7vRhZyfPWsz4Wn3K6tH3zXOpvAnyFCnbpAFAq5YL7JRvr/M6BzqtQxC5bbcgxg==
X-Received: by 2002:a63:8048:: with SMTP id j69mr8254402pgd.410.1585223426833; 
 Thu, 26 Mar 2020 04:50:26 -0700 (PDT)
Received: from localhost ([122.171.118.46])
 by smtp.gmail.com with ESMTPSA id 6sm1494245pfx.69.2020.03.26.04.50.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 26 Mar 2020 04:50:25 -0700 (PDT)
Date: Thu, 26 Mar 2020 17:20:23 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Sumit Gupta <sumitg@nvidia.com>
Subject: Re: [TEGRA194_CPUFREQ Patch 2/3] cpufreq: Add Tegra194 cpufreq driver
Message-ID: <20200326115023.xy3n5bl7uetuw7mx@vireshk-i7>
References: <1575394348-17649-1-git-send-email-sumitg@nvidia.com>
 <1575394348-17649-2-git-send-email-sumitg@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1575394348-17649-2-git-send-email-sumitg@nvidia.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_045028_560907_7D157155 
X-CRM114-Status: GOOD (  24.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: bbasu@nvidia.com, linux-pm@vger.kernel.org, catalin.marinas@arm.com,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, jonathanh@nvidia.com,
 talho@nvidia.com, thierry.reding@gmail.com, linux-tegra@vger.kernel.org,
 mperttunen@nvidia.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03-12-19, 23:02, Sumit Gupta wrote:
> diff --git a/drivers/cpufreq/tegra194-cpufreq.c b/drivers/cpufreq/tegra194-cpufreq.c
> new file mode 100644
> index 0000000..9df12f4
> --- /dev/null
> +++ b/drivers/cpufreq/tegra194-cpufreq.c
> @@ -0,0 +1,423 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2019, NVIDIA CORPORATION. All rights reserved
> + */
> +
> +#include <linux/cpu.h>
> +#include <linux/cpufreq.h>
> +#include <linux/delay.h>
> +#include <linux/dma-mapping.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_platform.h>
> +#include <linux/platform_device.h>
> +#include <linux/slab.h>
> +
> +#include <asm/smp_plat.h>
> +
> +#include <soc/tegra/bpmp.h>
> +#include <soc/tegra/bpmp-abi.h>
> +
> +#define KHZ                     1000
> +#define REF_CLK_MHZ             408 /* 408 MHz */
> +#define US_DELAY                2000
> +#define US_DELAY_MIN            2
> +#define CPUFREQ_TBL_STEP_HZ     (50 * KHZ * KHZ)
> +#define MAX_CNT                 ~0U
> +
> +/* cpufreq transisition latency */
> +#define TEGRA_CPUFREQ_TRANSITION_LATENCY (300 * 1000) /* unit in nanoseconds */
> +
> +enum cluster {
> +	CLUSTER0,
> +	CLUSTER1,
> +	CLUSTER2,
> +	CLUSTER3,

All these have same CPUs ? Or big little kind of stuff ? How come they
have different frequency tables ?

> +	MAX_CLUSTERS,
> +};
> +
> +struct tegra194_cpufreq_data {
> +	void __iomem *regs;
> +	size_t num_clusters;
> +	struct cpufreq_frequency_table **tables;
> +};
> +
> +static DEFINE_MUTEX(cpufreq_lock);
> +
> +struct tegra_cpu_ctr {
> +	u32 cpu;
> +	u32 delay;
> +	u32 coreclk_cnt, last_coreclk_cnt;
> +	u32 refclk_cnt, last_refclk_cnt;
> +};
> +
> +static struct workqueue_struct *read_counters_wq;
> +struct read_counters_work {
> +	struct work_struct work;
> +	struct tegra_cpu_ctr c;
> +};
> +
> +static enum cluster get_cpu_cluster(u8 cpu)
> +{
> +	return MPIDR_AFFINITY_LEVEL(cpu_logical_map(cpu), 1);
> +}
> +
> +/*
> + * Read per-core Read-only system register NVFREQ_FEEDBACK_EL1.
> + * The register provides frequency feedback information to
> + * determine the average actual frequency a core has run at over
> + * a period of time.
> + *	[31:0] PLLP counter: Counts at fixed frequency (408 MHz)
> + *	[63:32] Core clock counter: counts on every core clock cycle
> + *			where the core is architecturally clocking
> + */
> +static u64 read_freq_feedback(void)
> +{
> +	u64 val = 0;
> +
> +	asm volatile("mrs %0, s3_0_c15_c0_5" : "=r" (val) : );
> +
> +	return val;
> +}
> +
> +u16 map_freq_to_ndiv(struct mrq_cpu_ndiv_limits_response *nltbl, u32 freq)
> +{
> +	return DIV_ROUND_UP(freq * nltbl->pdiv * nltbl->mdiv,
> +			    nltbl->ref_clk_hz / KHZ);
> +}
> +
> +static inline u32 map_ndiv_to_freq(struct mrq_cpu_ndiv_limits_response
> +				   *nltbl, u16 ndiv)
> +{
> +	return nltbl->ref_clk_hz / KHZ * ndiv / (nltbl->pdiv * nltbl->mdiv);
> +}
> +
> +static void tegra_read_counters(struct work_struct *work)
> +{
> +	struct read_counters_work *read_counters_work;
> +	struct tegra_cpu_ctr *c;
> +	u64 val;
> +
> +	/*
> +	 * ref_clk_counter(32 bit counter) runs on constant clk,
> +	 * pll_p(408MHz).
> +	 * It will take = 2 ^ 32 / 408 MHz to overflow ref clk counter
> +	 *              = 10526880 usec = 10.527 sec to overflow
> +	 *
> +	 * Like wise core_clk_counter(32 bit counter) runs on core clock.
> +	 * It's synchronized to crab_clk (cpu_crab_clk) which runs at
> +	 * freq of cluster. Assuming max cluster clock ~2000MHz,
> +	 * It will take = 2 ^ 32 / 2000 MHz to overflow core clk counter
> +	 *              = ~2.147 sec to overflow
> +	 */
> +	read_counters_work = container_of(work, struct read_counters_work,
> +					  work);
> +	c = &read_counters_work->c;
> +
> +	val = read_freq_feedback();
> +	c->last_refclk_cnt = lower_32_bits(val);
> +	c->last_coreclk_cnt = upper_32_bits(val);
> +	udelay(c->delay);
> +	val = read_freq_feedback();
> +	c->refclk_cnt = lower_32_bits(val);
> +	c->coreclk_cnt = upper_32_bits(val);
> +}
> +
> +/*
> + * Return instantaneous cpu speed
> + * Instantaneous freq is calculated as -
> + * -Takes sample on every query of getting the freq.
> + *	- Read core and ref clock counters;
> + *	- Delay for X us
> + *	- Read above cycle counters again
> + *	- Calculates freq by subtracting current and previous counters
> + *	  divided by the delay time or eqv. of ref_clk_counter in delta time
> + *	- Return Kcycles/second, freq in KHz
> + *
> + *	delta time period = x sec
> + *			  = delta ref_clk_counter / (408 * 10^6) sec
> + *	freq in Hz = cycles/sec
> + *		   = (delta cycles / x sec
> + *		   = (delta cycles * 408 * 10^6) / delta ref_clk_counter
> + *	in KHz	   = (delta cycles * 408 * 10^3) / delta ref_clk_counter
> + *
> + * @cpu - logical cpu whose freq to be updated
> + * Returns freq in KHz on success, 0 if cpu is offline
> + */
> +static unsigned int tegra194_get_speed_common(u32 cpu, u32 delay)
> +{
> +	struct read_counters_work read_counters_work;
> +	struct tegra_cpu_ctr c;
> +	u32 delta_refcnt;
> +	u32 delta_ccnt;
> +	u32 rate_mhz;
> +
> +	read_counters_work.c.cpu = cpu;
> +	read_counters_work.c.delay = delay;
> +	INIT_WORK_ONSTACK(&read_counters_work.work, tegra_read_counters);
> +	queue_work_on(cpu, read_counters_wq, &read_counters_work.work);
> +	flush_work(&read_counters_work.work);

Why can't this be done in current context ?

> +	c = read_counters_work.c;
> +
> +	if (c.coreclk_cnt < c.last_coreclk_cnt)
> +		delta_ccnt = c.coreclk_cnt + (MAX_CNT - c.last_coreclk_cnt);
> +	else
> +		delta_ccnt = c.coreclk_cnt - c.last_coreclk_cnt;
> +	if (!delta_ccnt)
> +		return 0;
> +
> +	/* ref clock is 32 bits */
> +	if (c.refclk_cnt < c.last_refclk_cnt)
> +		delta_refcnt = c.refclk_cnt + (MAX_CNT - c.last_refclk_cnt);
> +	else
> +		delta_refcnt = c.refclk_cnt - c.last_refclk_cnt;
> +	if (!delta_refcnt) {
> +		pr_debug("cpufreq: %d is idle, delta_refcnt: 0\n", cpu);
> +		return 0;
> +	}
> +	rate_mhz = ((unsigned long)(delta_ccnt * REF_CLK_MHZ)) / delta_refcnt;
> +
> +	return (rate_mhz * KHZ); /* in KHz */
> +}
> +
> +static unsigned int tegra194_get_speed(u32 cpu)
> +{
> +	return tegra194_get_speed_common(cpu, US_DELAY);
> +}
> +
> +static unsigned int tegra194_fast_get_speed(u32 cpu)
> +{
> +	return tegra194_get_speed_common(cpu, US_DELAY_MIN);

Why is this required specially here ? Why can't you work with normal
delay ?

> +}
> +
> +static int tegra194_cpufreq_init(struct cpufreq_policy *policy)
> +{
> +	struct tegra194_cpufreq_data *data = cpufreq_get_driver_data();
> +	int cluster = get_cpu_cluster(policy->cpu);
> +
> +	if (cluster >= data->num_clusters)
> +		return -EINVAL;
> +
> +	policy->cur = tegra194_fast_get_speed(policy->cpu); /* boot freq */
> +
> +	/* set same policy for all cpus */
> +	cpumask_copy(policy->cpus, cpu_possible_mask);

You are copying cpu_possible_mask mask here, and so this routine will
get called only once.

I still don't understand the logic behind clusters and frequency
tables.

> +
> +	policy->freq_table = data->tables[cluster];
> +	policy->cpuinfo.transition_latency = TEGRA_CPUFREQ_TRANSITION_LATENCY;
> +
> +	return 0;
> +}
> +
> +static void set_cpu_ndiv(void *data)
> +{
> +	struct cpufreq_frequency_table *tbl = data;
> +	u64 ndiv_val = (u64)tbl->driver_data;
> +
> +	asm volatile("msr s3_0_c15_c0_4, %0" : : "r" (ndiv_val));
> +}
> +
> +static int tegra194_cpufreq_set_target(struct cpufreq_policy *policy,
> +				       unsigned int index)
> +{
> +	struct cpufreq_frequency_table *tbl = policy->freq_table + index;
> +	static struct cpufreq_freqs freqs;
> +
> +	mutex_lock(&cpufreq_lock);

No need of lock here.

> +	freqs.old = policy->cur;
> +	freqs.new = tbl->frequency;
> +
> +	cpufreq_freq_transition_begin(policy, &freqs);
> +	on_each_cpu_mask(policy->cpus, set_cpu_ndiv, tbl, true);

When CPUs share clock line, why is this required for every CPU ?

> +	cpufreq_freq_transition_end(policy, &freqs, 0);
> +
> +	mutex_unlock(&cpufreq_lock);
> +
> +	return 0;
> +}
> +
> +static struct cpufreq_driver tegra194_cpufreq_driver = {
> +	.name = "tegra194",
> +	.flags = CPUFREQ_STICKY | CPUFREQ_CONST_LOOPS |
> +		CPUFREQ_NEED_INITIAL_FREQ_CHECK | CPUFREQ_ASYNC_NOTIFICATION,

Why Async here ? I am really confused if I am not able to understand
the driver or you :)

> +	.verify = cpufreq_generic_frequency_table_verify,
> +	.target_index = tegra194_cpufreq_set_target,
> +	.get = tegra194_get_speed,
> +	.init = tegra194_cpufreq_init,
> +	.attr = cpufreq_generic_attr,
> +};
> +
> +static void tegra194_cpufreq_free_resources(void)
> +{
> +	flush_workqueue(read_counters_wq);
> +	destroy_workqueue(read_counters_wq);
> +}
> +
> +static struct cpufreq_frequency_table *init_freq_table

Don't break line here, rather break after above *.

> +		(struct platform_device *pdev, struct tegra_bpmp *bpmp,
> +		 unsigned int cluster_id)
> +{
> +	struct cpufreq_frequency_table *opp_table;

Please name it freq_table :)

> +	struct mrq_cpu_ndiv_limits_response resp;
> +	unsigned int num_freqs, ndiv, delta_ndiv;
> +	struct mrq_cpu_ndiv_limits_request req;
> +	struct tegra_bpmp_message msg;
> +	u16 freq_table_step_size;
> +	int err, index;
> +
> +	memset(&req, 0, sizeof(req));
> +	req.cluster_id = cluster_id;
> +
> +	memset(&msg, 0, sizeof(msg));
> +	msg.mrq = MRQ_CPU_NDIV_LIMITS;
> +	msg.tx.data = &req;
> +	msg.tx.size = sizeof(req);
> +	msg.rx.data = &resp;
> +	msg.rx.size = sizeof(resp);
> +
> +	err = tegra_bpmp_transfer(bpmp, &msg);
> +	if (err)
> +		return ERR_PTR(err);
> +
> +	/*
> +	 * Make sure frequency table step is a multiple of mdiv to match
> +	 * vhint table granularity.
> +	 */
> +	freq_table_step_size = resp.mdiv *
> +			DIV_ROUND_UP(CPUFREQ_TBL_STEP_HZ, resp.ref_clk_hz);
> +
> +	dev_dbg(&pdev->dev, "cluster %d: frequency table step size: %d\n",
> +		cluster_id, freq_table_step_size);
> +
> +	delta_ndiv = resp.ndiv_max - resp.ndiv_min;
> +
> +	if (unlikely(delta_ndiv == 0))
> +		num_freqs = 1;
> +	else
> +		/* We store both ndiv_min and ndiv_max hence the +1 */
> +		num_freqs = delta_ndiv / freq_table_step_size + 1;
> +
> +	num_freqs += (delta_ndiv % freq_table_step_size) ? 1 : 0;
> +
> +	opp_table = devm_kcalloc(&pdev->dev, num_freqs + 1, sizeof(*opp_table),
> +				 GFP_KERNEL);
> +	if (!opp_table)
> +		return ERR_PTR(-ENOMEM);
> +
> +	for (index = 0, ndiv = resp.ndiv_min;
> +			ndiv < resp.ndiv_max;
> +			index++, ndiv += freq_table_step_size) {
> +		opp_table[index].driver_data = ndiv;
> +		opp_table[index].frequency = map_ndiv_to_freq(&resp, ndiv);
> +	}
> +
> +	opp_table[index].driver_data = resp.ndiv_max;
> +	opp_table[index++].frequency = map_ndiv_to_freq(&resp, resp.ndiv_max);
> +	opp_table[index].frequency = CPUFREQ_TABLE_END;
> +
> +	return opp_table;
> +}
> +
> +static int tegra194_cpufreq_probe(struct platform_device *pdev)
> +{
> +	struct tegra194_cpufreq_data *data;
> +	struct tegra_bpmp *bpmp;
> +	int err, i;
> +
> +	data = devm_kzalloc(&pdev->dev, sizeof(*data), GFP_KERNEL);
> +	if (!data)
> +		return -ENOMEM;
> +
> +	data->num_clusters = MAX_CLUSTERS;
> +	data->tables = devm_kcalloc(&pdev->dev, data->num_clusters,
> +				    sizeof(*data->tables), GFP_KERNEL);
> +	if (!data->tables)
> +		return -ENOMEM;
> +
> +	platform_set_drvdata(pdev, data);
> +
> +	read_counters_wq = alloc_workqueue("read_counters_wq", __WQ_LEGACY, 1);
> +	if (!read_counters_wq) {
> +		dev_err(&pdev->dev, "fail to create_workqueue\n");
> +		return -EINVAL;
> +	}
> +
> +	bpmp = of_tegra_bpmp_get();
> +	if (IS_ERR(bpmp)) {
> +		err = PTR_ERR(bpmp);
> +		goto err_free_res;
> +	}
> +
> +	for (i = 0; i < data->num_clusters; i++) {
> +		data->tables[i] = init_freq_table(pdev, bpmp, i);
> +		if (IS_ERR(data->tables[i])) {
> +			err = PTR_ERR(data->tables[i]);
> +			goto put_bpmp;
> +		}
> +	}
> +
> +	tegra_bpmp_put(bpmp);
> +
> +	tegra194_cpufreq_driver.driver_data = data;
> +
> +	err = cpufreq_register_driver(&tegra194_cpufreq_driver);
> +	if (err)
> +		goto err_free_res;
> +
> +	return err;
> +
> +put_bpmp:
> +	tegra_bpmp_put(bpmp);
> +err_free_res:
> +	tegra194_cpufreq_free_resources();
> +	return err;
> +}
> +
> +static int tegra194_cpufreq_remove(struct platform_device *pdev)
> +{
> +	cpufreq_unregister_driver(&tegra194_cpufreq_driver);
> +	tegra194_cpufreq_free_resources();
> +
> +	return 0;
> +}
> +
> +static struct platform_driver tegra194_cpufreq_platform_driver = {
> +	.driver = {
> +		.name = "tegra194-cpufreq",
> +	},
> +	.probe = tegra194_cpufreq_probe,
> +	.remove = tegra194_cpufreq_remove,
> +};
> +
> +static int __init tegra_cpufreq_init(void)

I seem to be forgetting this, but should we use __init with modules or
not ?

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
