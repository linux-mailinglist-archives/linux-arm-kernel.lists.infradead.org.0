Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1A5186BB4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 14:03:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FJHQ691szUdwSpDrPz+CG7Dd+RB4JECvMU1eIichh5A=; b=n/vAppGLgs6OmXw2BDELO4jG+
	lwXshPnquYTkGvH3XASUj1xu5IXdCjNge/YMswtuGSL1W3/K1LyWVDSaVlkF7g3A0SW7S4qpYG3DT
	PSCkGp6qD4B4zh9NcuRNXiTOU1rlziycp83k9g/CZAGDYJCD9TgMcIGpVevfRuSA2Nsggynd3SdnZ
	qE1kP9HMJoTHrrNBvI3IhStJaO3D4f5U3hJpBpxHMX6tCNvYUUm8mMSExXA5vwWy2AlgHAyPWI8nP
	GheDqCD/YkH5dp7GvOECxK54TT1sIOgIC+q5cscYg+fiAw4CTMKP+svxB3IlHUOc/uQwRbR3gQNlq
	ajwAO/OmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDpOr-0001JL-M5; Mon, 16 Mar 2020 13:03:21 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDpOj-0001Hy-Qo
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 13:03:16 +0000
Received: from LHREML713-CAH.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id ADFD9642A8E0D40B1058;
 Mon, 16 Mar 2020 13:02:59 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 LHREML713-CAH.china.huawei.com (10.201.108.36) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 16 Mar 2020 13:02:56 +0000
Received: from [127.0.0.1] (10.210.166.242) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Mon, 16 Mar
 2020 13:02:55 +0000
Subject: Re: [PATCH v3 2/2] irqchip/gic-v3-its: Balance initial LPI affinity
 across CPUs
To: Marc Zyngier <maz@kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>
References: <20200316115433.9017-1-maz@kernel.org>
 <20200316115433.9017-3-maz@kernel.org>
From: John Garry <john.garry@huawei.com>
Message-ID: <2c367508-f81b-342e-eb05-8bbd1b056279@huawei.com>
Date: Mon, 16 Mar 2020 13:02:48 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200316115433.9017-3-maz@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.210.166.242]
X-ClientProxiedBy: lhreml723-chm.china.huawei.com (10.201.108.74) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_060314_165176_F1B27377 
X-CRM114-Status: GOOD (  26.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Jason Cooper <jason@lakedaemon.net>, chenxiang <chenxiang66@hisilicon.com>,
 "luojiaxing@huawei.com" <luojiaxing@huawei.com>,
 Ming Lei <ming.lei@redhat.com>, Zhou Wang <wangzhou1@hisilicon.com>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16/03/2020 11:54, Marc Zyngier wrote:
> When mapping a LPI, the ITS driver picks the first possible
> affinity, which is in most cases CPU0, assuming that if
> that's not suitable, someone will come and set the affinity
> to something more interesting.
> 
> It apparently isn't the case, and people complain of poor
> performance when many interrupts are glued to the same CPU.
> So let's place the interrupts by finding the "least loaded"
> CPU (that is, the one that has the fewer LPIs mapped to it).
> So called 'managed' interrupts are an interesting case where
> the affinity is actually dictated by the kernel itself, and
> we should honor this.
> 
> Reported-by: John Garry <john.garry@huawei.com>
> Link: https://lore.kernel.org/r/1575642904-58295-1-git-send-email-john.garry@huawei.com
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>   drivers/irqchip/irq-gic-v3-its.c | 118 ++++++++++++++++++++++++-------
>   1 file changed, 92 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
> index 941786e1e8f7..7f1b731c04bb 100644
> --- a/drivers/irqchip/irq-gic-v3-its.c
> +++ b/drivers/irqchip/irq-gic-v3-its.c
> @@ -1531,31 +1531,107 @@ static void its_dec_lpi_count(struct irq_data *d, int cpu)
>   		atomic_dec(&per_cpu_ptr(&cpu_lpi_count, cpu)->unmanaged);
>   }
>   
> +static unsigned int cpumask_pick_least_loaded(struct irq_data *d,
> +					      const struct cpumask *cpu_mask)
> +{
> +	unsigned int cpu = nr_cpu_ids, tmp;
> +	int count = S32_MAX;
> +
> +	for_each_cpu(tmp, cpu_mask) {

Hi Marc,

> +		int this_count = its_read_lpi_count(d, tmp);

Not sure if it's intentional, but now there seems to be a subtle 
difference to what Thomas described for non-managed interrupts - for 
non-managed interrupts, x86 selects the CPU based on the total interrupt 
load per CPU (or, more specifically, lowest vector allocation count), 
and not just the non-managed load. Or maybe I misread it.

Anyway, we can test this now for NVMe with its managed interrupts.

Cheers,
John

> +		if (this_count < count) {
> +			cpu = tmp;
> +		        count = this_count;
> +		}
> +	}
> +
> +	return cpu;
> +}
> +
> +/*
> + * As suggested by Thomas Gleixner in:
> + * https://lore.kernel.org/r/87h80q2aoc.fsf@nanos.tec.linutronix.de
> + */
> +static int its_select_cpu(struct irq_data *d,
> +			  const struct cpumask *aff_mask)
> +{
> +	struct its_device *its_dev = irq_data_get_irq_chip_data(d);
> +	cpumask_var_t tmpmask;
> +	int cpu, node;
> +
> +	if (!alloc_cpumask_var(&tmpmask, GFP_KERNEL))
> +		return -ENOMEM;
> +
> +	node = its_dev->its->numa_node;
> +
> +	if (!irqd_affinity_is_managed(d)) {
> +		/* First try the NUMA node */
> +		if (node != NUMA_NO_NODE) {
> +			/*
> +			 * Try the intersection of the affinity mask and the
> +			 * node mask (and the online mask, just to be safe).
> +			 */
> +			cpumask_and(tmpmask, cpumask_of_node(node), aff_mask);
> +			cpumask_and(tmpmask, tmpmask, cpu_online_mask);
> +
> +			/* If that doesn't work, try the nodemask itself */
> +			if (cpumask_empty(tmpmask))
> +				cpumask_and(tmpmask, cpumask_of_node(node), cpu_online_mask);
> +
> +			cpu = cpumask_pick_least_loaded(d, tmpmask);
> +			if (cpu < nr_cpu_ids)
> +				goto out;
> +
> +			/* If we can't cross sockets, give up */
> +			if ((its_dev->its->flags & ITS_FLAGS_WORKAROUND_CAVIUM_23144))
> +				goto out;
> +
> +			/* If the above failed, expand the search */
> +		}
> +
> +		/* Try the intersection of the affinity and online masks */
> +		cpumask_and(tmpmask, aff_mask, cpu_online_mask);
> +
> +		/* If that doesn't fly, the online mask is the last resort */
> +		if (cpumask_empty(tmpmask))
> +			cpumask_copy(tmpmask, cpu_online_mask);
> +
> +		cpu = cpumask_pick_least_loaded(d, tmpmask);
> +	} else {
> +		cpumask_and(tmpmask, irq_data_get_affinity_mask(d), cpu_online_mask);
> +
> +		/* If we cannot cross sockets, limit the search to that node */
> +		if ((its_dev->its->flags & ITS_FLAGS_WORKAROUND_CAVIUM_23144) &&
> +		    node != NUMA_NO_NODE)
> +			cpumask_and(tmpmask, tmpmask, cpumask_of_node(node));
> +
> +		cpu = cpumask_pick_least_loaded(d, tmpmask);
> +	}
> +out:
> +	free_cpumask_var(tmpmask);
> +
> +	pr_debug("IRQ%d -> %*pbl CPU%d\n", d->irq, cpumask_pr_args(aff_mask), cpu);
> +	return cpu;
> +}
> +
>   static int its_set_affinity(struct irq_data *d, const struct cpumask *mask_val,
>   			    bool force)
>   {
> -	unsigned int cpu;
> -	const struct cpumask *cpu_mask = cpu_online_mask;
>   	struct its_device *its_dev = irq_data_get_irq_chip_data(d);
>   	struct its_collection *target_col;
>   	u32 id = its_get_event_id(d);
> +	int cpu;
>   
>   	/* A forwarded interrupt should use irq_set_vcpu_affinity */
>   	if (irqd_is_forwarded_to_vcpu(d))
>   		return -EINVAL;
>   
> -       /* lpi cannot be routed to a redistributor that is on a foreign node */
> -	if (its_dev->its->flags & ITS_FLAGS_WORKAROUND_CAVIUM_23144) {
> -		if (its_dev->its->numa_node >= 0) {
> -			cpu_mask = cpumask_of_node(its_dev->its->numa_node);
> -			if (!cpumask_intersects(mask_val, cpu_mask))
> -				return -EINVAL;
> -		}
> -	}
> -
> -	cpu = cpumask_any_and(mask_val, cpu_mask);
> +	if (!force)
> +		cpu = its_select_cpu(d, mask_val);
> +	else
> +		cpu = cpumask_pick_least_loaded(d, mask_val);
>   
> -	if (cpu >= nr_cpu_ids)
> +	if (cpu < 0 || cpu >= nr_cpu_ids)
>   		return -EINVAL;
>   
>   	/* don't set the affinity when the target cpu is same as current one */
> @@ -3455,21 +3531,11 @@ static int its_irq_domain_activate(struct irq_domain *domain,
>   {
>   	struct its_device *its_dev = irq_data_get_irq_chip_data(d);
>   	u32 event = its_get_event_id(d);
> -	const struct cpumask *cpu_mask = cpu_online_mask;
>   	int cpu;
>   
> -	/* get the cpu_mask of local node */
> -	if (its_dev->its->numa_node >= 0)
> -		cpu_mask = cpumask_of_node(its_dev->its->numa_node);
> -
> -	/* Bind the LPI to the first possible CPU */
> -	cpu = cpumask_first_and(cpu_mask, cpu_online_mask);
> -	if (cpu >= nr_cpu_ids) {
> -		if (its_dev->its->flags & ITS_FLAGS_WORKAROUND_CAVIUM_23144)
> -			return -EINVAL;
> -
> -		cpu = cpumask_first(cpu_online_mask);
> -	}
> +	cpu = its_select_cpu(d, cpu_online_mask);
> +	if (cpu < 0 || cpu >= nr_cpu_ids)
> +		return -EINVAL;
>   
>   	its_inc_lpi_count(d, cpu);
>   	its_dev->event_map.col_map[event] = cpu;
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
