Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6DB3155750
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 13:05:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QXY2L9/U3asbWbQPgLl4/ZpKh3Fe/jEElRNXCNwjDD0=; b=oGqBj66J3Gy5ft
	k0oKHc0Nwr5KQ+IvX+xjC49gon4leaWAlxVHrpDnb4cUHtA4Cw9aEA/jF13WlkMl1auQRqdfM+TNt
	YdzfxsH4pT1l9eaBOcAE+VLg4CFj4YTUYqqCv21OnIk2jxu0XIrD48hx3LlfHPoBqcRXyf73wbGN7
	JyvHTvObKTToLbRCmlmTVbh8AW1BDbrxQaZ6Ay8Onq6E2UcngXeuf3n9zayycg2TtMwwvDKI90U2d
	I8pctJsl6E3dRbre6zD0t8NRiVTX29/3oGkh0FDTexTXX68HJG5fot1fjt0f11ODU8PmDWhktJb6k
	sLvC9VwRFOqXkLWQrH9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j02NR-0002GG-KO; Fri, 07 Feb 2020 12:04:53 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j02NG-0002EV-9P
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 12:04:43 +0000
Received: by mail-wm1-x343.google.com with SMTP id g1so2293331wmh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Feb 2020 04:04:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=R5h5Hhfr0C30ek8CnrJ517u633l7rUglq+J5+Ky2pSU=;
 b=TSdbH1Lsaj15vZh5emaVkjGWlxSCoTfeQeU3gLRTOwpLcnalRwRfArvK9g5tD84AOV
 WzchK0g1R/Nf9Yh7XJ7gZdrKTnE5132QPOMWe1IMFEW1YVOlkqSD6Xq/h4ebN0X5R1uF
 xgcBnxLit2Kbh011VO7HArzZ+pDTDnOJQNDegC5p9Ccon1asad7i++4EikadZCvIR67P
 F4kWIKeFyJtka5J2x1HDSTUR1ygNZKGeEVglBen++7LlgN7+Uo89775vErlaxUjeRIlh
 BbFXlo3pol7vA/SyXDgkEsk6a8HQehBiLNeUS7zEhsloDDmBcf0aVwezLGxLuJJLzy5L
 0U7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=R5h5Hhfr0C30ek8CnrJ517u633l7rUglq+J5+Ky2pSU=;
 b=GW+Rh92ESYfFV3PtKFSWVvaLQDbWdISQDJbxc6F4Shco0aINLtDWgNRN4XvOIiTksX
 gjQg3ErPquMiILWUwdL36obBeQeFuWY/RIFaI2yanscBRCMGJuPWhX/UAcv/2W7JAYQn
 9AYGqWLJOLn/11Ehb9hNtBHE90k7/6rR6tenfS9L3Ggvig7FYV2lE9kQ5RF+4RwEdw3P
 yQX+8CO9svasPkDrIZwYSRhKAK4HYJAGhaompj/wIW190IeQFdjbsDxW8vUeTyupsMik
 6FmlFe7t/BzzCnqbIMjVjrz/BPOcgsAZoyQM8Auw5DRF/q3p3npATxcNcofD37slAZAU
 GOJA==
X-Gm-Message-State: APjAAAWIvwSQ4GBQliC2yY6/XExMyTI2C29SXbmBLYkFdPZGw8pKp6AA
 9+xMRYzI5k4389aPr57WxSZ6Zg==
X-Google-Smtp-Source: APXvYqwtC2bAQXniWiUc5oiGG0sJlgv9qLGg10xcRaZ8yTuXclNOUd0zGaxgEu16v3Q2wEfpyVEgZw==
X-Received: by 2002:a7b:cf01:: with SMTP id l1mr4060275wmg.86.1581077074857;
 Fri, 07 Feb 2020 04:04:34 -0800 (PST)
Received: from google.com ([2a00:79e0:d:110:d6cc:2030:37c1:9964])
 by smtp.gmail.com with ESMTPSA id e18sm3052153wrw.70.2020.02.07.04.04.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Feb 2020 04:04:33 -0800 (PST)
Date: Fri, 7 Feb 2020 12:04:30 +0000
From: Quentin Perret <qperret@google.com>
To: lukasz.luba@arm.com
Subject: Re: [PATCH v2 1/4] PM / EM: add devices to Energy Model
Message-ID: <20200207120430.GA242912@google.com>
References: <20200206134640.11367-1-lukasz.luba@arm.com>
 <20200206134640.11367-2-lukasz.luba@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200206134640.11367-2-lukasz.luba@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_040442_328372_D379DAB4 
X-CRM114-Status: GOOD (  27.55  )
X-Spam-Score: -13.9 (-------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-13.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 1.8 FSL_HELO_FAKE          No description available.
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: nm@ti.com, juri.lelli@redhat.com, daniel.lezcano@linaro.org,
 peterz@infradead.org, viresh.kumar@linaro.org, liviu.dudau@arm.com,
 dri-devel@lists.freedesktop.org, bjorn.andersson@linaro.org,
 bsegall@google.com, alyssa.rosenzweig@collabora.com, festevam@gmail.com,
 Morten.Rasmussen@arm.com, robh@kernel.org, amit.kucheria@verdurent.com,
 lorenzo.pieralisi@arm.com, khilman@kernel.org, agross@kernel.org,
 b.zolnierkie@samsung.com, steven.price@arm.com, cw00.choi@samsung.com,
 mingo@redhat.com, linux-imx@nxp.com, rui.zhang@intel.com, mgorman@suse.de,
 daniel@ffwll.ch, linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 s.hauer@pengutronix.de, rostedt@goodmis.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 Chris.Redpath@arm.com, linux-omap@vger.kernel.org, Dietmar.Eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org, airlied@linux.ie, javi.merino@arm.com,
 tomeu.vizoso@collabora.com, sboyd@kernel.org, shawnguo@kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, kernel@pengutronix.de,
 sudeep.holla@arm.com, patrick.bellasi@matbug.net, ionela.voinescu@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thursday 06 Feb 2020 at 13:46:37 (+0000), lukasz.luba@arm.com wrote:
>  2. Core APIs
> @@ -70,14 +72,16 @@ CONFIG_ENERGY_MODEL must be enabled to use the EM framework.
>  Drivers are expected to register performance domains into the EM framework by
>  calling the following API::
>  
> -  int em_register_perf_domain(cpumask_t *span, unsigned int nr_states,
> -			      struct em_data_callback *cb);
> +  int em_register_perf_domain(struct device *dev, unsigned int nr_states,
> +		struct em_data_callback *cb, cpumask_t *cpus);
>  
> -Drivers must specify the CPUs of the performance domains using the cpumask
> +Drivers must specify the device pointer of the performance domains as first

I find this sentence a little odd no?

>  argument, and provide a callback function returning <frequency, power> tuples
> -for each capacity state. The callback function provided by the driver is free
> +for each performance state. The callback function provided by the driver is free
>  to fetch data from any relevant location (DT, firmware, ...), and by any mean
> -deemed necessary. See Section 3. for an example of driver implementing this
> +deemed necessary. For other devices than CPUs the last argumant must be set to

s/argumant/argument

> +NULL. Only for CPUfreq drivers it is obligatory to specify the cpumask.

Please note that as of today nothing mandates the caller to be a CPUFreq
driver -- it could be anything in theory. I'd say 'only for CPU devices'
instead.

<snip>
> @@ -24,51 +27,65 @@ struct em_cap_state {
>  
>  /**
>   * em_perf_domain - Performance domain
> - * @table:		List of capacity states, in ascending order
> - * @nr_cap_states:	Number of capacity states
> - * @cpus:		Cpumask covering the CPUs of the domain
> + * @table:		List of performance states, in ascending order
> + * @nr_perf_states:	Number of performance states
> + * @priv:		In case of EM for CPU device it is a Cpumask
> + *			covering the CPUs of the domain

Could you turn @priv back into 'unsigned long priv[0];' and keep the
allocation as it is today ? That is, append the cpumask to the struct.

This empty pointer for non-CPU devices is just wasted space, and pointer
chasing isn't good for your caches. Given that you pre-allocate the pd
in em_create_pd() you could just have a special case for CPUs there I
suppose. And _is_cpu_em() will have to check the bus like you did in v1.

>   *
> - * A "performance domain" represents a group of CPUs whose performance is
> - * scaled together. All CPUs of a performance domain must have the same
> - * micro-architecture. Performance domains often have a 1-to-1 mapping with
> - * CPUFreq policies.
> + * In case of CPU device, a "performance domain" represents a group of CPUs
> + * whose performance is scaled together. All CPUs of a performance domain
> + * must have the same micro-architecture. Performance domains often have
> + * a 1-to-1 mapping with CPUFreq policies.
> + * In case of other devices the 'priv' field is unused.
>   */
>  struct em_perf_domain {
> -	struct em_cap_state *table;
> -	int nr_cap_states;
> -	unsigned long cpus[0];
> +	struct em_perf_state *table;
> +	int nr_perf_states;
> +	void *priv;
>  };

<snip>
>  struct em_data_callback {
>  	/**
> -	 * active_power() - Provide power at the next capacity state of a CPU
> -	 * @power	: Active power at the capacity state in mW (modified)
> -	 * @freq	: Frequency at the capacity state in kHz (modified)
> -	 * @cpu		: CPU for which we do this operation
> +	 * active_power() - Provide power at the next performance state of a
> +	 *		    device
> +	 * @power	: Active power at the performance state in mW (modified)
> +	 * @freq	: Frequency at the performance state in kHz (modified)
> +	 * @dev		: Device for which we do this operation (can be a CPU)
>  	 *
> -	 * active_power() must find the lowest capacity state of 'cpu' above
> +	 * active_power() must find the lowest performance state of 'dev' above
>  	 * 'freq' and update 'power' and 'freq' to the matching active power
>  	 * and frequency.
>  	 *
> -	 * The power is the one of a single CPU in the domain, expressed in
> -	 * milli-watts. It is expected to fit in the [0, EM_CPU_MAX_POWER]
> -	 * range.
> +	 * In case of CPUs, the power is the one of a single CPU in the domain,
> +	 * expressed in milli-watts. It is expected to fit in the
> +	 * [0, EM_MAX_POWER] range.
>  	 *
>  	 * Return 0 on success.
>  	 */
> -	int (*active_power)(unsigned long *power, unsigned long *freq, int cpu);
> +	int (*active_power)(unsigned long *power, unsigned long *freq,
> +			    struct device *dev);

Given that you've made explicit in the doc of struct em_perf_state that
'power' can be a 'total' value (static + dynamic), this could be renamed
I suppose.

<snip>
>  /**
>   * em_cpu_get() - Return the performance domain for a CPU
>   * @cpu : CPU to find the performance domain for
>   *
> - * Return: the performance domain to which 'cpu' belongs, or NULL if it doesn't
> + * Returns the performance domain to which 'cpu' belongs, or NULL if it doesn't
>   * exist.
>   */
>  struct em_perf_domain *em_cpu_get(int cpu)
>  {
> -	return READ_ONCE(per_cpu(em_data, cpu));

Since CPU perf domains are guaranteed to never go away, it'd be safe to
keep that per-CPU variable and avoid the locking and list manipulation
below. No strong opinion, though.

> +	struct em_device *em_dev;
> +
> +	mutex_lock(&em_pd_mutex);
> +
> +	if (list_empty(&em_pd_dev_list))
> +		goto unlock;
> +
> +	list_for_each_entry(em_dev, &em_pd_dev_list, em_dev_list) {
> +		if (!_is_cpu_em(em_dev->em_pd))
> +			continue;
> +
> +		if (cpumask_test_cpu(cpu, em_span_cpus(em_dev->em_pd))) {
> +			mutex_unlock(&em_pd_mutex);
> +			return em_dev->em_pd;
> +		}
> +	}
> +
> +unlock:
> +	mutex_unlock(&em_pd_mutex);
> +	return NULL;
>  }
>  EXPORT_SYMBOL_GPL(em_cpu_get);

<snip>
>  /**
> - * em_register_perf_domain() - Register the Energy Model of a performance domain
> - * @span	: Mask of CPUs in the performance domain
> - * @nr_states	: Number of capacity states to register
> + * em_register_perf_domain() - Register the Energy Model (EM) of a performance
> + *		domain for the device
> + * @dev		: Device for which the EM is to register
> + * @nr_states	: Number of performance states to register
>   * @cb		: Callback functions providing the data of the Energy Model
> + * @cpus	: Pointer to cpumask_t, which in case of a CPU device is
> + *		obligatory. It can be taken from i.e. 'policy->cpus'. For other

It should be policy->related_cpus actually (or 'real_cpus' even) -- PM_EM
ignores hotplug ATM. Perhaps we should document that somewhere ...

> + *		type of devices this should be set to NULL.
>   *
>   * Create Energy Model tables for a performance domain using the callbacks
>   * defined in cb.
> @@ -196,63 +361,129 @@ EXPORT_SYMBOL_GPL(em_cpu_get);

Thanks,
Quentin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
