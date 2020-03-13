Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69509184446
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 11:04:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0+4SVATyPEwzDhLaaSGy3fJ2pfdAg7ae5/UqTdVL5Cs=; b=BS6uqpND/9gBQW
	WFn1bE4MLpdidV+KlQBFDS2wgVvFMCY0fn6JifHOBSvwpKhqrmq0Xfx5zzlSWgabvbT2y8cGqEgXr
	zxub4ZZ1suvreN/ukJvRbz3p0J578nijDivXg/q4DWgu1N5LKbp5SSyNesuIr/JpRIcTTSFuAL38X
	aziRdDb4ZkSu3ZtEsMjfq1LrwDr7TGRaXnAdV08uWQqxbX1ToNsaKxel5J2soIrjzIZSW9V5ryGBW
	9uvpfyULp+lVuKSq4sGadrNWzkB/EZHc+XweLuVZD8Bsn6tEwBDYBv7Ibg9V2SHB/cZ4NYqpcWlk/
	BZ8MkWPmH5CGi7tLfOkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jChB6-0005Yf-Aw; Fri, 13 Mar 2020 10:04:28 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jChAu-0005XJ-My
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 10:04:18 +0000
Received: by mail-wr1-x441.google.com with SMTP id a25so11296574wrd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 03:04:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Q1BEt3UIGfTekolaIpPF/hNSscfxV9hshAR77bRQcfs=;
 b=Iro+3wZDWxCWBF3ZCk4grTtxEu8Ng2iTU/+5rxgpeCPlIMvgELtoh1xmBS6mLfYBJp
 PbKf695K0pbXUAtKLP81n78yrq39uBxyUxhVDEjljT/whkCSZqM6Jg2mOnzW6LaNCha8
 aqI0aswpcT9Wrv5bn1NFxW/5C/KUtz8ABt9I0XpHUu9fQjtK6GV3SJkyZNpqtXtNDcXm
 IPS1f3XXRq5PRyhiZhaQfY+WFVV84msB79je7IBk5pWsWkH/oJLcPrICAH9qW7Dw8tdP
 kwGJQBs+RqMQfqI3N8r8SOixaP1DgMzACMqqflMsgRcl0KTOu6NjLf5utsw9IJzFIM0H
 l7Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Q1BEt3UIGfTekolaIpPF/hNSscfxV9hshAR77bRQcfs=;
 b=r/SPeA6Wp772FfcOp9HT2s4I0NTqMRwE+MvdOD45w+bcz+ckEtVOzfTH1TA+PTzmXt
 SIgGGSTjaJn1CJLkUoS2G7bKk26v4UlexUjme0q1DQst+IaYVpD1B4QWds1TFkD4DlC6
 O+hiiWEqKymAUAQZIOy/aOFd6nkBdAe9fdbYgOsoeH5eR2hQWR9Vz1Ie9LV+APcBBGY6
 Z/uyM7wt4B1ZqWdpZnEqpG48z/mAyxjdgv1xpNmWMenguMYrGz5drjLNdpiw21JY92Af
 qE8VeY4aoRlVHcfW9GeXLjixhDZK7px5Mdmq5cI0G6v7x778EVDTpuhZPTKRqKuCsGvN
 5rnA==
X-Gm-Message-State: ANhLgQ2rXiOucqrTwsiE/bac+zxt2JBedLciobI/oVFKngJdAzPy1a0O
 tTOPUT1MZjGZYsg3TdVhQwiy7A==
X-Google-Smtp-Source: ADFU+vuSOxM7UP5iet+lNWpCxn8Nzw1dxCSR6mmfTI+siSqyYgXG1TXkJqWMlxCnj9dsZhpGWBOitA==
X-Received: by 2002:a5d:5691:: with SMTP id f17mr16399522wrv.74.1584093852416; 
 Fri, 13 Mar 2020 03:04:12 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:110:d6cc:2030:37c1:9964])
 by smtp.gmail.com with ESMTPSA id l83sm16694454wmf.43.2020.03.13.03.04.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 03:04:11 -0700 (PDT)
Date: Fri, 13 Mar 2020 10:04:07 +0000
From: Quentin Perret <qperret@google.com>
To: Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [PATCH v4 1/4] PM / EM: add devices to Energy Model
Message-ID: <20200313100407.GA144499@google.com>
References: <20200309134117.2331-1-lukasz.luba@arm.com>
 <20200309134117.2331-2-lukasz.luba@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200309134117.2331-2-lukasz.luba@arm.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_030416_776286_612FCDC8 
X-CRM114-Status: GOOD (  21.76  )
X-Spam-Score: -14.0 (--------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-14.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 1.7 FSL_HELO_FAKE          No description available.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: nm@ti.com, juri.lelli@redhat.com, peterz@infradead.org,
 viresh.kumar@linaro.org, liviu.dudau@arm.com, dri-devel@lists.freedesktop.org,
 bjorn.andersson@linaro.org, bsegall@google.com,
 alyssa.rosenzweig@collabora.com, festevam@gmail.com, Morten.Rasmussen@arm.com,
 robh@kernel.org, amit.kucheria@verdurent.com, lorenzo.pieralisi@arm.com,
 khilman@kernel.org, agross@kernel.org, daniel.lezcano@linaro.org,
 steven.price@arm.com, cw00.choi@samsung.com, mingo@redhat.com,
 linux-imx@nxp.com, rui.zhang@intel.com, mgorman@suse.de, orjan.eide@arm.com,
 daniel@ffwll.ch, linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 s.hauer@pengutronix.de, rostedt@goodmis.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-omap@vger.kernel.org, Dietmar.Eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org, airlied@linux.ie, javi.merino@arm.com,
 tomeu.vizoso@collabora.com, sboyd@kernel.org, rdunlap@infradead.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, b.zolnierkie@samsung.com,
 kernel@pengutronix.de, sudeep.holla@arm.com, patrick.bellasi@matbug.net,
 shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Lukasz,

On Monday 09 Mar 2020 at 13:41:14 (+0000), Lukasz Luba wrote:
<snip>
> diff --git a/drivers/opp/of.c b/drivers/opp/of.c
> index 9cd8f0adacae..0efd6cf6d023 100644
> --- a/drivers/opp/of.c
> +++ b/drivers/opp/of.c
> @@ -1047,9 +1047,8 @@ EXPORT_SYMBOL_GPL(dev_pm_opp_get_of_node);
>   * calculation failed because of missing parameters, 0 otherwise.
>   */
>  static int __maybe_unused _get_cpu_power(unsigned long *mW, unsigned long *kHz,
> -					 int cpu)
> +					 struct device *cpu_dev)
>  {
> -	struct device *cpu_dev;
>  	struct dev_pm_opp *opp;
>  	struct device_node *np;
>  	unsigned long mV, Hz;
> @@ -1057,10 +1056,6 @@ static int __maybe_unused _get_cpu_power(unsigned long *mW, unsigned long *kHz,
>  	u64 tmp;
>  	int ret;
>  
> -	cpu_dev = get_cpu_device(cpu);
> -	if (!cpu_dev)
> -		return -ENODEV;
> -
>  	np = of_node_get(cpu_dev->of_node);
>  	if (!np)
>  		return -EINVAL;
> @@ -1128,6 +1123,6 @@ void dev_pm_opp_of_register_em(struct cpumask *cpus)
>  	if (ret || !cap)
>  		return;
>  
> -	em_register_perf_domain(cpus, nr_opp, &em_cb);
> +	em_register_perf_domain(cpu_dev, nr_opp, &em_cb, cpus);

Any reason for not checking the return value here ? You added a nice
check in scmi_get_cpu_power(), perhaps do the same thing here ?

>  }
>  EXPORT_SYMBOL_GPL(dev_pm_opp_of_register_em);
> diff --git a/drivers/thermal/cpufreq_cooling.c b/drivers/thermal/cpufreq_cooling.c
> index fe83d7a210d4..fcf2dab1b3b8 100644
> --- a/drivers/thermal/cpufreq_cooling.c
> +++ b/drivers/thermal/cpufreq_cooling.c
> @@ -333,18 +333,18 @@ static inline bool em_is_sane(struct cpufreq_cooling_device *cpufreq_cdev,
>  		return false;
>  
>  	policy = cpufreq_cdev->policy;
> -	if (!cpumask_equal(policy->related_cpus, to_cpumask(em->cpus))) {
> +	if (!cpumask_equal(policy->related_cpus, em_span_cpus(em))) {
>  		pr_err("The span of pd %*pbl is misaligned with cpufreq policy %*pbl\n",
> -			cpumask_pr_args(to_cpumask(em->cpus)),
> +			cpumask_pr_args(em_span_cpus(em)),
>  			cpumask_pr_args(policy->related_cpus));
>  		return false;
>  	}
>  
>  	nr_levels = cpufreq_cdev->max_level + 1;
> -	if (em->nr_cap_states != nr_levels) {
> +	if (em->nr_perf_states != nr_levels) {
>  		pr_err("The number of cap states in pd %*pbl (%u) doesn't match the number of cooling levels (%u)\n",

s/cap states/performance states

> -			cpumask_pr_args(to_cpumask(em->cpus)),
> -			em->nr_cap_states, nr_levels);
> +			cpumask_pr_args(em_span_cpus(em)),
> +			em->nr_perf_states, nr_levels);
>  		return false;
>  	}

<snip>
> +static int em_create_perf_table(struct device *dev, struct em_perf_domain *pd,
> +				int nr_states, struct em_data_callback *cb)
>  {
>  	unsigned long opp_eff, prev_opp_eff = ULONG_MAX;
>  	unsigned long power, freq, prev_freq = 0;
> -	int i, ret, cpu = cpumask_first(span);
> -	struct em_cap_state *table;
> -	struct em_perf_domain *pd;
> +	struct em_perf_state *table;
> +	int i, ret;
>  	u64 fmax;
>  
> -	if (!cb->active_power)
> -		return NULL;
> -
> -	pd = kzalloc(sizeof(*pd) + cpumask_size(), GFP_KERNEL);
> -	if (!pd)
> -		return NULL;
> -
>  	table = kcalloc(nr_states, sizeof(*table), GFP_KERNEL);
>  	if (!table)
> -		goto free_pd;
> +		return -ENOMEM;
>  
> -	/* Build the list of capacity states for this performance domain */
> +	/* Build the list of performance states for this performance domain */
>  	for (i = 0, freq = 0; i < nr_states; i++, freq++) {
>  		/*
>  		 * active_power() is a driver callback which ceils 'freq' to
> -		 * lowest capacity state of 'cpu' above 'freq' and updates
> +		 * lowest performance state of 'dev' above 'freq' and updates
>  		 * 'power' and 'freq' accordingly.
>  		 */
> -		ret = cb->active_power(&power, &freq, cpu);
> +		ret = cb->active_power(&power, &freq, dev);
>  		if (ret) {
> -			pr_err("pd%d: invalid cap. state: %d\n", cpu, ret);
> +			dev_err(dev, "EM: invalid perf. state: %d\n",
> +				ret);

Not easy to figure out which device has a problem with this. I'm
guessing you went that way since this is called before ida_simple_get() ?
Could that be refactored to make the error message more useful ?

>  			goto free_cs_table;
>  		}

<snip>
> +/**
> + * em_unregister_perf_domain() - Unregister Energy Model (EM) for the device
> + * @dev		: Device for which the EM is registered
> + *
> + * Try to unregister the EM for the specified device (it checks current
> + * reference counter). The EM for CPUs will not be freed.
> + */
> +void em_unregister_perf_domain(struct device *dev)
> +{
> +	struct em_device *em_dev, *tmp;
> +
> +	if (IS_ERR_OR_NULL(dev))
> +		return;
> +
> +	/* We don't support freeing CPU structures in hotplug */
> +	if (_is_cpu_device(dev))
> +		return;

Can we WARN() here ?

> +
> +	mutex_lock(&em_pd_mutex);
> +
> +	if (list_empty(&em_pd_dev_list)) {
> +		mutex_unlock(&em_pd_mutex);
> +		return;
> +	}
> +
> +	list_for_each_entry_safe(em_dev, tmp, &em_pd_dev_list, em_dev_list) {
> +		if (em_dev->dev == dev) {
> +			kref_put(&em_dev->kref, _em_release);
> +			break;
> +		}
> +	}
> +
> +	mutex_unlock(&em_pd_mutex);
> +}
> +EXPORT_SYMBOL_GPL(em_unregister_perf_domain);

Otherwise this looks pretty good to me. So, with these small nits
addressed:

  Acked-by: Quentin Perret <qperret@google.com>

Thanks!
Quentin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
