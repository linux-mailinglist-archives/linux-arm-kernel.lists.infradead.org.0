Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C6CA189D89
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 15:04:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VcI8f+UDoXwREFeZuXaqR9877SsmrXVTiqylsesn4JI=; b=Tnfk45/DHOBEwT+jZ58qoH4XD
	0Lhx+xSdTOMzo61koX1wnLnwHzXeN+cqaNei8OEl3yPylzbHQ7yC+pvhWUCsvrEd5ImZwauTtpoIx
	qoqfTKwwczPX+/16lp+4t5Lbycesm8/uaUx1JeLcr2hbWxKOFjsmyb//qVpuTiTbK0CbUBpE35CgC
	9XYVH7g5B7gvFVC+67LKdS5gKI5QKQHPGgtc5BWyMsDaFeQ+eXDPx02mIHY5OTzIQ41HzdNnoybdx
	inbG2dp2PtENIYCqkZEP5muj+guCfZ5I/InrZSM/1dIOh8wJELDydJiY+zqqLamfEaJ190VvZqw2P
	m+XiYyz+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEZIu-0001w9-IO; Wed, 18 Mar 2020 14:04:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEZIn-0001vn-90
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 14:04:10 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7916D20768;
 Wed, 18 Mar 2020 14:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584540248;
 bh=AP3k9sjl7+ePM5Ru82wMonpDrG1zEqiTg5zhPXkzWsg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=J5pn+/4MyfYEkqel5RKXFVVwjmzm2UTN4puAhPhoSLpXsEqbKSdzUi1qX+Q/5F5/f
 tSU0XpK6VFqx17NkGTO7Xb4Mnly1yzWkiWrrr3rKaypvBu94lsHUNYDpbLj6U/d86/
 VJ/qX8VmXM+V2KZiflx0ptxor/uIdmgwVGGVlk/c=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jEZIk-00Denm-Ml; Wed, 18 Mar 2020 14:04:06 +0000
MIME-Version: 1.0
Date: Wed, 18 Mar 2020 14:04:06 +0000
From: Marc Zyngier <maz@kernel.org>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH v3 2/2] irqchip/gic-v3-its: Balance initial LPI affinity
 across CPUs
In-Reply-To: <d3a6435b-bc1f-e518-6461-2ebff72bbc59@huawei.com>
References: <20200316115433.9017-1-maz@kernel.org>
 <20200316115433.9017-3-maz@kernel.org>
 <d3a6435b-bc1f-e518-6461-2ebff72bbc59@huawei.com>
Message-ID: <d74f9cb3df708335a56aec62963aa281@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: john.garry@huawei.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, chenxiang66@hisilicon.com,
 wangzhou1@hisilicon.com, ming.lei@redhat.com, jason@lakedaemon.net,
 tglx@linutronix.de, luojiaxing@huawei.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_070409_356667_FE0B6543 
X-CRM114-Status: GOOD (  20.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jason Cooper <jason@lakedaemon.net>, chenxiang <chenxiang66@hisilicon.com>,
 luojiaxing@huawei.com, linux-kernel@vger.kernel.org,
 Ming Lei <ming.lei@redhat.com>, Zhou Wang <wangzhou1@hisilicon.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-03-18 12:22, John Garry wrote:
> I may have an idea about this:
> irq 196, cpu list 0-31, effective list 82
> 
> Just going back to comment on the code:
> 
>> +/*
>> + * As suggested by Thomas Gleixner in:
>> + * https://lore.kernel.org/r/87h80q2aoc.fsf@nanos.tec.linutronix.de
>> + */
>> +static int its_select_cpu(struct irq_data *d,
>> +			  const struct cpumask *aff_mask)
>> +{
>> +	struct its_device *its_dev = irq_data_get_irq_chip_data(d);
>> +	cpumask_var_t tmpmask;
>> +	int cpu, node;
>> +
>> +	if (!alloc_cpumask_var(&tmpmask, GFP_KERNEL))
>> +		return -ENOMEM;
>> +
>> +	node = its_dev->its->numa_node;
>> +
>> +	if (!irqd_affinity_is_managed(d)) {
>> +		/* First try the NUMA node */
>> +		if (node != NUMA_NO_NODE) {
>> +			/*
>> +			 * Try the intersection of the affinity mask and the
>> +			 * node mask (and the online mask, just to be safe).
>> +			 */
>> +			cpumask_and(tmpmask, cpumask_of_node(node), aff_mask);
>> +			cpumask_and(tmpmask, tmpmask, cpu_online_mask);
>> +
>> +			/* If that doesn't work, try the nodemask itself */
> 
> So if tmpmsk is empty...

Which means the proposed affinity mask isn't part of the node mask the 
first place.
Why did we get such an affinity the first place?

> 
>> +			if (cpumask_empty(tmpmask))
>> +				cpumask_and(tmpmask, cpumask_of_node(node), cpu_online_mask);
> 
>  now the tmpmask may have no intersection with the aff_mask...

But it has the mask for CPUs that are best suited for this interrupt, 
right?
If I understand the topology of your machine, it has an ITS per 64 CPUs, 
and
this device is connected to the ITS that serves the second socket.

> 
>> +
>> +			cpu = cpumask_pick_least_loaded(d, tmpmask);
>> +			if (cpu < nr_cpu_ids)
>> +				goto out;
>> +
>> +			/* If we can't cross sockets, give up */
>> +			if ((its_dev->its->flags & ITS_FLAGS_WORKAROUND_CAVIUM_23144))
>> +				goto out;
>> +
>> +			/* If the above failed, expand the search */
>> +		}
> 
> SNIP
> 
>> +out:
>> +	free_cpumask_var(tmpmask);
>> +
>> +	pr_debug("IRQ%d -> %*pbl CPU%d\n", d->irq, 
>> cpumask_pr_args(aff_mask), cpu);
>> +	return cpu;
>> +}
>> +
>>   static int its_set_affinity(struct irq_data *d, const struct cpumask 
>> *mask_val,
>>   			    bool force)
>>   {
>> -	unsigned int cpu;
>> -	const struct cpumask *cpu_mask = cpu_online_mask;
>>   	struct its_device *its_dev = irq_data_get_irq_chip_data(d);
>>   	struct its_collection *target_col;
>>   	u32 id = its_get_event_id(d);
>> +	int cpu;
>>     	/* A forwarded interrupt should use irq_set_vcpu_affinity */
>>   	if (irqd_is_forwarded_to_vcpu(d))
>>   		return -EINVAL;
>>   -       /* lpi cannot be routed to a redistributor that is on a 
>> foreign node */
>> -	if (its_dev->its->flags & ITS_FLAGS_WORKAROUND_CAVIUM_23144) {
>> -		if (its_dev->its->numa_node >= 0) {
>> -			cpu_mask = cpumask_of_node(its_dev->its->numa_node);
>> -			if (!cpumask_intersects(mask_val, cpu_mask))
>> -				return -EINVAL;
>> -		}
>> -	}
>> -
>> -	cpu = cpumask_any_and(mask_val, cpu_mask);
>> +	if (!force)
>> +		cpu = its_select_cpu(d, mask_val);
>> +	else
>> +		cpu = cpumask_pick_least_loaded(d, mask_val);
>>   -	if (cpu >= nr_cpu_ids)
>> +	if (cpu < 0 || cpu >= nr_cpu_ids)
>>   		return -EINVAL;
> 
> Annotate missing code:
> 
> 	if (cpu < 0 || cpu >= nr_cpu_ids)
> 		return -EINVAL;
> 
> 	if (cpu != its_dev->event_map.col_map[id]) {
> 		its_inc_lpi_count(d, cpu);
> 		its_dec_lpi_count(d, its_dev->event_map.col_map[id]);
> 		target_col = &its_dev->its->collections[cpu];
> 		its_send_movi(its_dev, target_col, id);
> 		its_dev->event_map.col_map[id] = cpu;
> 		irq_data_update_effective_affinity(d, cpumask_of(cpu));
> 	}
> 
> So cpu may not be a member of mask_val. Hence the inconsistency of the
> affinity list and effective affinity. We could just drop the AND of
> the ITS node mask in its_select_cpu().

That would be a departure from the algorithm Thomas proposed, which made
a lot of sense in my opinion. What its_select_cpu() does in this case is
probably the best that can be achieved from a latency perspective,
as it keeps the interrupt local to the socket that generated it.

What I wonder is how we end-up with this silly aff_mask the first place.

> Anyway, I don't think that this should stop us testing.

Agreed.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
