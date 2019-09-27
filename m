Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 602CDC021F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 11:19:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0S7yz4XN9Ceql73FY6n0sEKd8pglItPL+ayV9qHVA30=; b=pRC1Ps2kleiXFo
	+lV1N6tJzuZutDTuuFfYvoa41FEIFbaUsGjpk6kw6gXlV6Ejj5y/HeZlRFljpDlFOMJUi8k+JImnm
	i7/KIwqRozNxCbscouzq9SS15usHUlny36ARR50EEGpKrdEXNG5TyFoX/reJzw3zto7i9dlaCva1G
	Ii/mW22XOk0NH6/Ei9h0CeyH6DjqHlx3IslGtquLG9LbDFK6nLnu+F7lewcap9Ik4zB7zoaXtTI9+
	HTgHFLeF6saY04bzYTmpZ0QFeYajNTaUrP5mv4FUpKTzM+9JsQ53w2X/jg7wnaUFL6/7GI67OgA7m
	S1BcMDWPvGhL6BJ7bQrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDmPn-0003g8-GM; Fri, 27 Sep 2019 09:19:51 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDmPQ-0003UY-Qs
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 09:19:30 +0000
Received: by mail-wr1-f68.google.com with SMTP id i18so1835999wru.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 02:19:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9bMVoxdlLvHIjoWHeMwt6kPSoxS+/NO2KX6uIJLjESM=;
 b=tlU487zUXH/UW4VssAYgZbPrk5NDY1PpSgW9jsIL9fQcO231W+3YkEalv6NSxxp2wk
 02hND2tE82MGjb4SUdAsLEAscnODmbOS7wfhm7ccS136ytYvLMhwFLmjKjD4HaaPdRdq
 86jE7GMKDvpb0PzLW96xg3w1Ko/NDWTMHr+fgKD3azO38uAEiqQHgS9bXMppoagj+Zpq
 nHd5nO6vmnyJ6wgz6r4nmG2/MwvjYNJ4XDdO6+CO/IlQR1Q14FPf42cZVeK/Kq0IK01R
 4RyQaR0JzbbPkm8GhwPfO0zYX8S77rYDX6JR4VceAtpAy/jLvyKjtUPRVtu6Io36e0Lw
 xNPw==
X-Gm-Message-State: APjAAAVM7YOAgqa1xID5T9wNbXBZvGYb4E5xMlmJO+kfIToHlabxZmEw
 u62CF1bkUMF2OTZcgwQtaUs=
X-Google-Smtp-Source: APXvYqxnZTC5rG/6DQ4aFQyQ/b8uU8CdFkVsUa7bx4AyaB0DD8Xa61xyMo0cQs7rfWcyLVEnoZk09w==
X-Received: by 2002:a5d:6844:: with SMTP id o4mr2230253wrw.188.1569575965182; 
 Fri, 27 Sep 2019 02:19:25 -0700 (PDT)
Received: from pi3 ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id a3sm7335197wmc.3.2019.09.27.02.19.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Sep 2019 02:19:24 -0700 (PDT)
Date: Fri, 27 Sep 2019 11:19:20 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Lukasz Luba <l.luba@partner.samsung.com>
Subject: Re: [PATCH 3/3] memory: samsung: exynos5422-dmc: Add support for
 interrupt from performance counters
Message-ID: <20190927091920.GB19131@pi3>
References: <20190925161813.21117-1-l.luba@partner.samsung.com>
 <CGME20190925161844eucas1p2dc69a451c2d86fd7f4be2b33940f8d62@eucas1p2.samsung.com>
 <20190925161813.21117-4-l.luba@partner.samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190925161813.21117-4-l.luba@partner.samsung.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_021928_871342_CF9D61CC 
X-CRM114-Status: GOOD (  31.24  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 willy.mh.wolff.ml@gmail.com, linux-samsung-soc@vger.kernel.org,
 b.zolnierkie@samsung.com, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, cw00.choi@samsung.com,
 kyungmin.park@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 s.nawrocki@samsung.com, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 25, 2019 at 06:18:13PM +0200, Lukasz Luba wrote:
> Introduce a new interrupt driven mechanism for managing speed of the
> memory controller. The interrupts are generated due to performance
> counters overflow. The performance counters might track memory reads,
> writes, transfers, page misses, etc. In the basic algorithm tracking
> read transfers and calculating memory pressure should be enough to
> skip polling mode in devfreq.
> 
> Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
> ---
>  drivers/memory/samsung/exynos5422-dmc.c | 297 ++++++++++++++++++++++--
>  1 file changed, 272 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/memory/samsung/exynos5422-dmc.c b/drivers/memory/samsung/exynos5422-dmc.c
> index 0fe5f2186139..86e1844b97ef 100644
> --- a/drivers/memory/samsung/exynos5422-dmc.c
> +++ b/drivers/memory/samsung/exynos5422-dmc.c
> @@ -8,6 +8,7 @@
>  #include <linux/devfreq.h>
>  #include <linux/devfreq-event.h>
>  #include <linux/device.h>
> +#include <linux/interrupt.h>
>  #include <linux/io.h>
>  #include <linux/mfd/syscon.h>
>  #include <linux/module.h>
> @@ -35,6 +36,29 @@
>  #define USE_BPLL_TIMINGS			(0)
>  #define EXYNOS5_AREF_NORMAL			(0x2e)
>  
> +#define DREX_PPCCLKCON		(0x0130)
> +#define DREX_PEREV2CONFIG	(0x013c)
> +#define DREX_PMNC_PPC		(0xE000)
> +#define DREX_CNTENS_PPC		(0xE010)
> +#define DREX_CNTENC_PPC		(0xE020)
> +#define DREX_INTENS_PPC		(0xE030)
> +#define DREX_INTENC_PPC		(0xE040)
> +#define DREX_FLAG_PPC		(0xE050)
> +#define DREX_PMCNT2_PPC		(0xE130)
> +
> +#define CC_RESET		BIT(2)
> +#define PPC_COUNTER_RESET	BIT(1)
> +#define PPC_ENABLE		BIT(0)
> +#define PEREV_CLK_EN		BIT(0)
> +#define PERF_CNT2		BIT(2)
> +#define PERF_CCNT		BIT(31)

Describe to which registers these bitfields are applicable.

> +
> +#define READ_TRANSFER_CH0	(0x6d)
> +#define READ_TRANSFER_CH1	(0x6f)

The same. Otherwise they all look like some generic constants which is
not true.

> +
> +#define PERF_COUNTER_START_VALUE 0xff000000
> +#define PERF_EVENT_UP_DOWN_THRESHOLD 900000000ULL
> +
>  /**
>   * struct dmc_opp_table - Operating level desciption
>   *
> @@ -85,6 +109,9 @@ struct exynos5_dmc {
>  	struct clk *mout_mx_mspll_ccore_phy;
>  	struct devfreq_event_dev **counter;
>  	int num_counters;
> +	u64 last_overflow_ts[2];
> +	unsigned long load, total;

One member per line.  This decreases readability.

> +	bool in_irq_mode;
>  };
>  
>  #define TIMING_FIELD(t_name, t_bit_beg, t_bit_end) \
> @@ -653,6 +680,167 @@ static int exynos5_counters_get(struct exynos5_dmc *dmc,
>  	return 0;
>  }
>  
> +/**
> + * exynos5_dmc_start_perf_events() - Setup and start performance event counters
> + * @dmc:	device for which the counters are going to be checked
> + * @beg_value:	initial value for the counter
> + *
> + * Function which enables needed counters, interrupts and sets initial values
> + * then starts the counters.
> + */
> +static void exynos5_dmc_start_perf_events(struct exynos5_dmc *dmc,
> +					  u32 beg_value)
> +{
> +	/* Enable interrupts for counter 2 */
> +	writel(PERF_CNT2, dmc->base_drexi0 + DREX_INTENS_PPC);
> +	writel(PERF_CNT2, dmc->base_drexi1 + DREX_INTENS_PPC);

Blank line.

> +	/* Enable counter 2 and CCNT  */
> +	writel(PERF_CNT2 | PERF_CCNT, dmc->base_drexi0 + DREX_CNTENS_PPC);
> +	writel(PERF_CNT2 | PERF_CCNT, dmc->base_drexi1 + DREX_CNTENS_PPC);

Blank line.

> +	/* Clear overflow flag for all counters */
> +	writel(PERF_CNT2 | PERF_CCNT, dmc->base_drexi0 + DREX_FLAG_PPC);
> +	writel(PERF_CNT2 | PERF_CCNT, dmc->base_drexi1 + DREX_FLAG_PPC);

Blank line.

> +	/* Reset all counters */
> +	writel(CC_RESET | PPC_COUNTER_RESET, dmc->base_drexi0 + DREX_PMNC_PPC);
> +	writel(CC_RESET | PPC_COUNTER_RESET, dmc->base_drexi1 + DREX_PMNC_PPC);

Blank line.

> +	/*
> +	 * Set start value for the counters, the number of samples that
> +	 * will be gathered is calculated as: 0xffffffff - beg_value
> +	 */
> +	writel(beg_value, dmc->base_drexi0 + DREX_PMCNT2_PPC);
> +	writel(beg_value, dmc->base_drexi1 + DREX_PMCNT2_PPC);

Blank line.

> +	/* Start all counters */
> +	writel(PPC_ENABLE, dmc->base_drexi0 + DREX_PMNC_PPC);
> +	writel(PPC_ENABLE, dmc->base_drexi1 + DREX_PMNC_PPC);
> +}
> +
> +/**
> + * exynos5_dmc_perf_events_calc() - Calculate utilization
> + * @dmc:	device for which the counters are going to be checked
> + * @diff_ts:	time between last interrupt and current one
> + *
> + * Function which calculates needed utilization for the devfreq governor.
> + * It prepares values for 'busy_time' and 'total_time' based on elapsed time
> + * between interrupts, which approximates utilization.
> + */
> +static void exynos5_dmc_perf_events_calc(struct exynos5_dmc *dmc, u64 diff_ts)
> +{
> +	/*
> +	 * This is a simple algorithm for managing traffic on DMC.
> +	 * When there is almost no load the counters overflow every 4s,
> +	 * no mater the DMC frequency.
> +	 * The high load might be approximated using linear function.
> +	 * Knowing that, simple calculation can provide 'busy_time' and
> +	 * 'total_time' to the devfreq governor which picks up target
> +	 * frequency.
> +	 * We want a fast ramp up and slow decay in frequency change function.
> +	 */
> +	if (diff_ts < PERF_EVENT_UP_DOWN_THRESHOLD) {
> +		/*
> +		 * Set higher utilization for the simple_ondemand governor.
> +		 * The governor should increase the frequency of the DMC.
> +		 */
> +		dmc->load = 70;
> +		dmc->total = 100;
> +	} else {
> +		/*
> +		 * Set low utilization for the simple_ondemand governor.
> +		 * The governor should decrease the frequency of the DMC.
> +		 */
> +		dmc->load = 35;
> +		dmc->total = 100;
> +	}
> +
> +	dev_dbg(dmc->dev, "diff_ts=%llu\n", diff_ts);
> +}
> +
> +/**
> + * exynos5_dmc_perf_events_check() - Checks the status of the counters
> + * @dmc:	device for which the counters are going to be checked
> + *
> + * Function which is called from threaded IRQ to check the counters state
> + * and to call approximation for the needed utilization.
> + */
> +static void exynos5_dmc_perf_events_check(struct exynos5_dmc *dmc)
> +{
> +	u32 val;
> +	u64 diff_ts, ts;
> +
> +	ts = ktime_get_ns();
> +
> +	/* Stop all counters */
> +	writel(0, dmc->base_drexi0 + DREX_PMNC_PPC);
> +	writel(0, dmc->base_drexi1 + DREX_PMNC_PPC);
> +
> +	/* Check the source in interrupt flag registers (which channel) */
> +	val = readl(dmc->base_drexi0 + DREX_FLAG_PPC);
> +	if (val) {
> +		diff_ts = ts - dmc->last_overflow_ts[0];
> +		dmc->last_overflow_ts[0] = ts;
> +		dev_dbg(dmc->dev, "drex0 0xE050 val= 0x%08x\n",  val);
> +	} else {
> +		val = readl(dmc->base_drexi1 + DREX_FLAG_PPC);
> +		diff_ts = ts - dmc->last_overflow_ts[1];
> +		dmc->last_overflow_ts[1] = ts;
> +		dev_dbg(dmc->dev, "drex1 0xE050 val= 0x%08x\n",  val);
> +	}
> +
> +	exynos5_dmc_perf_events_calc(dmc, diff_ts);
> +
> +	exynos5_dmc_start_perf_events(dmc, PERF_COUNTER_START_VALUE);
> +}
> +
> +/**
> + * exynos5_dmc_enable_perf_events() - Enable performance events
> + * @dmc:	device for which the counters are going to be checked
> + *
> + * Function which is setup needed environment and enables counters.
> + */
> +static void exynos5_dmc_enable_perf_events(struct exynos5_dmc *dmc)
> +{
> +	u64 ts;
> +
> +	/* Enable Performance Event Clock */
> +	writel(PEREV_CLK_EN, dmc->base_drexi0 + DREX_PPCCLKCON);
> +	writel(PEREV_CLK_EN, dmc->base_drexi1 + DREX_PPCCLKCON);
> +
> +	/* Select read transfers as performance event2 */
> +	writel(READ_TRANSFER_CH0, dmc->base_drexi0 + DREX_PEREV2CONFIG);
> +	writel(READ_TRANSFER_CH1, dmc->base_drexi1 + DREX_PEREV2CONFIG);
> +
> +	dmc->in_irq_mode = 1;

Move this outside, to the probe. Logically it belongs there.

> +
> +	ts = ktime_get_ns();
> +	dmc->last_overflow_ts[0] = ts;
> +	dmc->last_overflow_ts[1] = ts;
> +
> +	/* Devfreq shouldn't be faster than initialization, play safe though. */
> +	dmc->load = 99;
> +	dmc->total = 100;
> +}
> +
> +/**
> + * exynos5_dmc_disable_perf_events() - Disable performance events
> + * @dmc:	device for which the counters are going to be checked
> + *
> + * Function which stops, disables performance event counters and interrupts.
> + */
> +static void exynos5_dmc_disable_perf_events(struct exynos5_dmc *dmc)
> +{
> +	/* Stop all counters */
> +	writel(0, dmc->base_drexi0 + DREX_PMNC_PPC);
> +	writel(0, dmc->base_drexi1 + DREX_PMNC_PPC);

Blank line here and later.

> +	/* Disable interrupts for counter 2 */
> +	writel(PERF_CNT2, dmc->base_drexi0 + DREX_INTENC_PPC);
> +	writel(PERF_CNT2, dmc->base_drexi1 + DREX_INTENC_PPC);
> +	/* Disable counter 2 and CCNT  */
> +	writel(PERF_CNT2 | PERF_CCNT, dmc->base_drexi0 + DREX_CNTENC_PPC);
> +	writel(PERF_CNT2 | PERF_CCNT, dmc->base_drexi1 + DREX_CNTENC_PPC);
> +	/* Clear overflow flag for all counters */
> +	writel(PERF_CNT2 | PERF_CCNT, dmc->base_drexi0 + DREX_FLAG_PPC);
> +	writel(PERF_CNT2 | PERF_CCNT, dmc->base_drexi1 + DREX_FLAG_PPC);
> +}
> +
>  /**
>   * exynos5_dmc_get_status() - Read current DMC performance statistics.
>   * @dev:	device for which the statistics are requested
> @@ -669,18 +857,24 @@ static int exynos5_dmc_get_status(struct device *dev,
>  	unsigned long load, total;
>  	int ret;
>  
> -	ret = exynos5_counters_get(dmc, &load, &total);
> -	if (ret < 0)
> -		return -EINVAL;
> +	if (dmc->in_irq_mode) {
> +		stat->current_frequency = dmc->curr_rate;
> +		stat->busy_time = dmc->load;
> +		stat->total_time = dmc->total;
> +	} else {
> +		ret = exynos5_counters_get(dmc, &load, &total);
> +		if (ret < 0)
> +			return -EINVAL;
>  
> -	/* To protect from overflow in calculation ratios, divide by 1024 */
> -	stat->busy_time = load >> 10;
> -	stat->total_time = total >> 10;
> +		/* To protect from overflow, divide by 1024 */
> +		stat->busy_time = load >> 10;
> +		stat->total_time = total >> 10;
>  
> -	ret = exynos5_counters_set_event(dmc);
> -	if (ret < 0) {
> -		dev_err(dev, "could not set event counter\n");
> -		return ret;
> +		ret = exynos5_counters_set_event(dmc);
> +		if (ret < 0) {
> +			dev_err(dev, "could not set event counter\n");
> +			return ret;
> +		}
>  	}
>  
>  	return 0;
> @@ -712,7 +906,6 @@ static int exynos5_dmc_get_cur_freq(struct device *dev, unsigned long *freq)
>   * It provides to the devfreq framework needed functions and polling period.
>   */
>  static struct devfreq_dev_profile exynos5_dmc_df_profile = {
> -	.polling_ms = 500,
>  	.target = exynos5_dmc_target,
>  	.get_dev_status = exynos5_dmc_get_status,
>  	.get_cur_freq = exynos5_dmc_get_cur_freq,
> @@ -1108,6 +1301,26 @@ static inline int exynos5_dmc_set_pause_on_switching(struct exynos5_dmc *dmc)
>  	return 0;
>  }
>  
> +static irqreturn_t dmc_irq_thread(int irq, void *priv)
> +{
> +	int res;
> +	struct exynos5_dmc *dmc = priv;
> +
> +	dev_dbg(dmc->dev, "irq thread handler\n");

Skip a debug in thread handler for memory. It can pollute your log (I
guess depending on workload).

> +
> +	mutex_lock(&dmc->df->lock);
> +
> +	exynos5_dmc_perf_events_check(dmc);
> +
> +	res = update_devfreq(dmc->df);
> +	if (res)
> +		dev_err(dmc->dev, "devfreq failed with %d\n", res);

dev_warn()

> +
> +	mutex_unlock(&dmc->df->lock);
> +
> +	return IRQ_HANDLED;
> +}
> +
>  /**
>   * exynos5_dmc_probe() - Probe function for the DMC driver
>   * @pdev:	platform device for which the driver is going to be initialized
> @@ -1125,6 +1338,7 @@ static int exynos5_dmc_probe(struct platform_device *pdev)
>  	struct device_node *np = dev->of_node;
>  	struct exynos5_dmc *dmc;
>  	struct resource *res;
> +	int irq;
>  
>  	dmc = devm_kzalloc(dev, sizeof(*dmc), GFP_KERNEL);
>  	if (!dmc)
> @@ -1172,24 +1386,48 @@ static int exynos5_dmc_probe(struct platform_device *pdev)
>  		goto remove_clocks;
>  	}
>  
> -	ret = exynos5_performance_counters_init(dmc);
> -	if (ret) {
> -		dev_warn(dev, "couldn't probe performance counters\n");
> -		goto remove_clocks;
> -	}
> -
>  	ret = exynos5_dmc_set_pause_on_switching(dmc);
>  	if (ret) {
>  		dev_warn(dev, "couldn't get access to PAUSE register\n");
>  		goto err_devfreq_add;

This is wrong now, I think.

>  	}
>  
> -	/*
> -	 * Setup default thresholds for the devfreq governor.
> -	 * The values are chosen based on experiments.
> -	 */
> -	dmc->gov_data.upthreshold = 30;
> -	dmc->gov_data.downdifferential = 5;
> +	/* There is two modes in which the driver works: polling or IRQ */
> +	irq = platform_get_irq(pdev, 0);

You need to document it in bindings.

> +	if (irq < 0) {
> +		ret = exynos5_performance_counters_init(dmc);
> +		if (ret) {
> +			dev_warn(dev, "couldn't probe performance counters\n");
> +			goto remove_clocks;

Weird, previous error jump goes to err_devfreq_add. This goes to error
label which is narrower (less to cleanup).

Best regards,
Krzysztof

> +		}
> +
> +		/*
> +		 * Setup default thresholds for the devfreq governor.
> +		 * The values are chosen based on experiments.
> +		 */
> +		dmc->gov_data.upthreshold = 30;
> +		dmc->gov_data.downdifferential = 5;
> +
> +		exynos5_dmc_df_profile.polling_ms = 500;
> +	} else {
> +		ret = devm_request_threaded_irq(dev, irq, NULL,
> +						dmc_irq_thread, IRQF_ONESHOT,
> +						dev_name(dev), dmc);
> +		if (ret) {
> +			dev_err(dev, "couldn't grab IRQ\n");
> +			goto remove_clocks;
> +		}
> +
> +		/*
> +		 * Setup default thresholds for the devfreq governor.
> +		 * The values are chosen based on experiments.
> +		 */
> +		dmc->gov_data.upthreshold = 55;
> +		dmc->gov_data.downdifferential = 5;
> +
> +		exynos5_dmc_enable_perf_events(dmc);
> +	}
> +
>  
>  	dmc->df = devm_devfreq_add_device(dev, &exynos5_dmc_df_profile,
>  					  DEVFREQ_GOV_SIMPLE_ONDEMAND,
> @@ -1200,12 +1438,18 @@ static int exynos5_dmc_probe(struct platform_device *pdev)
>  		goto err_devfreq_add;
>  	}
>  
> +	if (dmc->in_irq_mode)
> +		exynos5_dmc_start_perf_events(dmc, PERF_COUNTER_START_VALUE);
> +
>  	dev_info(dev, "DMC initialized\n");
>  
>  	return 0;
>  
>  err_devfreq_add:
> -	exynos5_counters_disable_edev(dmc);
> +	if (dmc->in_irq_mode)
> +		exynos5_dmc_disable_perf_events(dmc);
> +	else
> +		exynos5_counters_disable_edev(dmc);
>  remove_clocks:
>  	clk_disable_unprepare(dmc->mout_bpll);
>  	clk_disable_unprepare(dmc->fout_bpll);
> @@ -1225,7 +1469,10 @@ static int exynos5_dmc_remove(struct platform_device *pdev)
>  {
>  	struct exynos5_dmc *dmc = dev_get_drvdata(&pdev->dev);
>  
> -	exynos5_counters_disable_edev(dmc);
> +	if (dmc->in_irq_mode)
> +		exynos5_dmc_disable_perf_events(dmc);
> +	else
> +		exynos5_counters_disable_edev(dmc);
>  
>  	clk_disable_unprepare(dmc->mout_bpll);
>  	clk_disable_unprepare(dmc->fout_bpll);
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
