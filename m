Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F13D927E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 15:31:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O1ayVnhYChRPp8Ft+5zlTfIxNBgFBIaBVu1d/SXrx8Y=; b=a0XVkCakLCE8mKlvExvIsJWk5
	RluaiH85EGK6MJhHd6UUiFwhVt7h1POcufWLQQsLGfv5ptuaD3/tSFKy0ehfj47QC1NgA9HoWGp/e
	TBjrYnBOcU9u2WvoT1Q+k+s+I7mlmtx8EHtXr5eUgmkSZDuO7HzaHia43S0xu7glQJBT3HDKaiuNF
	JiRth42ZS1n3L7OwAITPV8MlD5vmMTUCUIpnAdp5TGR3+gaLdYirA4s7voo/EQFyk8SuiXq6YjXOx
	+bhVP4R7m37CjRNiDxxqJGK3Yo03t7VQ1kVwkeZrjeYMGzZ9xJhkalOX4eXgikAGo63MYrM5sn4E9
	BVdFxXaJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKjOJ-00023r-WC; Wed, 16 Oct 2019 13:31:04 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKjO9-00022P-Ty
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 13:30:56 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 1ED8C5D4AE5A087F7F66;
 Wed, 16 Oct 2019 21:30:47 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.179) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0;
 Wed, 16 Oct 2019 21:30:37 +0800
Subject: Re: [PATCH v6 2/2] drivers/perf: Add CCPI2 PMU support in ThunderX2
 UNCORE driver.
To: Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <1571218608-15933-1-git-send-email-gkulkarni@marvell.com>
 <1571218608-15933-3-git-send-email-gkulkarni@marvell.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <b8e1a637-faf4-4567-7d3e-a4f13dfa1cf0@huawei.com>
Date: Wed, 16 Oct 2019 14:30:30 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <1571218608-15933-3-git-send-email-gkulkarni@marvell.com>
X-Originating-IP: [10.202.227.179]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_063054_141017_44DD7D14 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 "corbet@lwn.net" <corbet@lwn.net>, Jan Glauber <jglauber@marvell.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Zhangshaokun <zhangshaokun@hisilicon.com>,
 "gklkml16@gmail.com" <gklkml16@gmail.com>,
 Robert Richter <rrichter@marvell.com>, "will@kernel.org" <will@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> +TX2_EVENT_ATTR(req_pktsent, CCPI2_EVENT_REQ_PKT_SENT);
> +TX2_EVENT_ATTR(snoop_pktsent, CCPI2_EVENT_SNOOP_PKT_SENT);
> +TX2_EVENT_ATTR(data_pktsent, CCPI2_EVENT_DATA_PKT_SENT);
> +TX2_EVENT_ATTR(gic_pktsent, CCPI2_EVENT_GIC_PKT_SENT);
> +
> +static struct attribute *ccpi2_pmu_events_attrs[] = {
> +	&tx2_pmu_event_attr_req_pktsent.attr.attr,
> +	&tx2_pmu_event_attr_snoop_pktsent.attr.attr,
> +	&tx2_pmu_event_attr_data_pktsent.attr.attr,
> +	&tx2_pmu_event_attr_gic_pktsent.attr.attr,
> +	NULL,
> +};

Hi Ganapatrao,

Have you considered adding these as uncore pmu-events in the perf tool?

Some advantages I see:
- perf list is not swamped with all these uncore events per PMU
For the Hisi uncore events, we get 100s of events (>600 on the board I 
just tested, which is crazy)
- can add more description in the JSON files
- less stuff in the kernel

> +
>  static const struct attribute_group l3c_pmu_events_attr_group = {
>  	.name = "events",
>  	.attrs = l3c_pmu_events_attrs,
> @@ -174,6 +240,11 @@ static const struct attribute_group dmc_pmu_events_attr_group = {
>  	.attrs = dmc_pmu_events_attrs,
>  };

[...]

>  		tx2_pmu->attr_groups = l3c_pmu_attr_groups;
>  		tx2_pmu->name = devm_kasprintf(dev, GFP_KERNEL,
>  				"uncore_l3c_%d", tx2_pmu->node);
> @@ -665,10 +846,13 @@ static struct tx2_uncore_pmu *tx2_uncore_pmu_init_dev(struct device *dev,
>  		tx2_pmu->stop_event = uncore_stop_event_l3c;
>  		break;
>  	case PMU_TYPE_DMC:
> -		tx2_pmu->max_counters = TX2_PMU_MAX_COUNTERS;
> +		tx2_pmu->max_counters = TX2_PMU_DMC_L3C_MAX_COUNTERS;
> +		tx2_pmu->counters_mask = 0x3;
>  		tx2_pmu->prorate_factor = TX2_PMU_DMC_CHANNELS;
>  		tx2_pmu->max_events = DMC_EVENT_MAX;
> +		tx2_pmu->events_mask = 0x1f;
>  		tx2_pmu->hrtimer_interval = TX2_PMU_HRTIMER_INTERVAL;
> +		tx2_pmu->hrtimer_callback = tx2_hrtimer_callback;
>  		tx2_pmu->attr_groups = dmc_pmu_attr_groups;
>  		tx2_pmu->name = devm_kasprintf(dev, GFP_KERNEL,
>  				"uncore_dmc_%d", tx2_pmu->node);
> @@ -676,6 +860,21 @@ static struct tx2_uncore_pmu *tx2_uncore_pmu_init_dev(struct device *dev,
>  		tx2_pmu->start_event = uncore_start_event_dmc;
>  		tx2_pmu->stop_event = uncore_stop_event_dmc;
>  		break;
> +	case PMU_TYPE_CCPI2:
> +		/* CCPI2 has 8 counters */
> +		tx2_pmu->max_counters = TX2_PMU_CCPI2_MAX_COUNTERS;
> +		tx2_pmu->counters_mask = 0x7;
> +		tx2_pmu->prorate_factor = 1;
> +		tx2_pmu->max_events = CCPI2_EVENT_MAX;
> +		tx2_pmu->events_mask = 0x1ff;
> +		tx2_pmu->attr_groups = ccpi2_pmu_attr_groups;
> +		tx2_pmu->name = devm_kasprintf(dev, GFP_KERNEL,
> +				"uncore_ccpi2_%d", tx2_pmu->node);

Do you need to check this for name == NULL?

> +		tx2_pmu->init_cntr_base = init_cntr_base_ccpi2;
> +		tx2_pmu->start_event = uncore_start_event_ccpi2;
> +		tx2_pmu->stop_event = uncore_stop_event_ccpi2;
> +		tx2_pmu->hrtimer_callback = NULL;
> +		break;
>  	case PMU_TYPE_INVALID:
>  		devm_kfree(dev, tx2_pmu);
>  		return NULL;
> @@ -744,7 +943,9 @@ static int tx2_uncore_pmu_offline_cpu(unsigned int cpu,
>  	if (cpu != tx2_pmu->cpu)
>  		return 0;
>
> -	hrtimer_cancel(&tx2_pmu->hrtimer);
> +	if (tx2_pmu->hrtimer_callback)
> +		hrtimer_cancel(&tx2_pmu->hrtimer);
> +
>  	cpumask_copy(&cpu_online_mask_temp, cpu_online_mask);
>  	cpumask_clear_cpu(cpu, &cpu_online_mask_temp);
>  	new_cpu = cpumask_any_and(
>

Thanks,
John



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
