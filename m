Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B260B189BE1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 13:22:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dZclDDe6597JHRN61qSb/I1s3RRRhbJG7XRoq4rj8XE=; b=r+emoYZ5Uc+nzj9JHiNJcTxP5
	iIkJMUj08UeygOtceeQtKDz8DcydVmLBNj+Dcffmn70t8t4pdRpE5RGphcu/ieQWPLKE3sQBYHdX9
	vVVS7yAYRhpkfy+A0sX8cEIi5IPAXAj4yMX0QKAwC56L+FDRKnJAg2U6AjalBo1dOjXEtqP0deKE/
	f31n9F8l9xFiajyvH+FyA5eNMt6+9eVSPpJfzWIOvpIApxfqftC+BUimG6zlZ3fc4bPG+VpJ++h5K
	gjm/Nzbh+Pfxl9LiTHpv5keDHTo/i2YIj7XHLoZtQRsX3AJO6H12eFNu+RJbD2FE2WyC/lmzrIdgi
	LUdB3mg2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEXiX-0004kj-2M; Wed, 18 Mar 2020 12:22:37 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEXiN-0004ji-Dl
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 12:22:29 +0000
Received: from LHREML712-CAH.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id C98881FDEC3ADA6D060B;
 Wed, 18 Mar 2020 12:22:22 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 LHREML712-CAH.china.huawei.com (10.201.108.35) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 18 Mar 2020 12:22:22 +0000
Received: from [127.0.0.1] (10.47.11.44) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Wed, 18 Mar
 2020 12:22:21 +0000
Subject: Re: [PATCH v3 2/2] irqchip/gic-v3-its: Balance initial LPI affinity
 across CPUs
To: Marc Zyngier <maz@kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>
References: <20200316115433.9017-1-maz@kernel.org>
 <20200316115433.9017-3-maz@kernel.org>
From: John Garry <john.garry@huawei.com>
Message-ID: <d3a6435b-bc1f-e518-6461-2ebff72bbc59@huawei.com>
Date: Wed, 18 Mar 2020 12:22:09 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200316115433.9017-3-maz@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.47.11.44]
X-ClientProxiedBy: lhreml721-chm.china.huawei.com (10.201.108.72) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_052227_615435_F4461FB3 
X-CRM114-Status: GOOD (  17.29  )
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

I may have an idea about this:
irq 196, cpu list 0-31, effective list 82

Just going back to comment on the code:

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

So if tmpmsk is empty...

> +			if (cpumask_empty(tmpmask))
> +				cpumask_and(tmpmask, cpumask_of_node(node), cpu_online_mask);

  now the tmpmask may have no intersection with the aff_mask...

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

SNIP

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

Annotate missing code:

	if (cpu < 0 || cpu >= nr_cpu_ids)
		return -EINVAL;

	if (cpu != its_dev->event_map.col_map[id]) {
		its_inc_lpi_count(d, cpu);
		its_dec_lpi_count(d, its_dev->event_map.col_map[id]);
		target_col = &its_dev->its->collections[cpu];
		its_send_movi(its_dev, target_col, id);
		its_dev->event_map.col_map[id] = cpu;
		irq_data_update_effective_affinity(d, cpumask_of(cpu));
	}

So cpu may not be a member of mask_val. Hence the inconsistency of the 
affinity list and effective affinity. We could just drop the AND of the 
ITS node mask in its_select_cpu().

Anyway, I don't think that this should stop us testing.

Cheers,
John

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
