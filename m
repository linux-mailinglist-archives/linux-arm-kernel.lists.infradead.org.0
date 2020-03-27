Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C75195D2D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 18:53:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=raS2+9Yo7hqJhsBLP7j4i7yjcjK+/6YwQbfrJgTA9ss=; b=kRA3C5h5K27oQBA/Y2yo5CZXm
	9XgzwvCNfXpHKtZ3v073BtHt2eZAoniA25DEqB85nTEZ9hE8HH7LtDm4mIMNo76eXIpBsukqyRR2C
	rvQ/RdnWi8q6pPrefbmlu3ZTat1V+gbGUTiZY5fxyM7ZJAlI2nhSpEPZlAk8GE/lXW/HIs+Q5NThw
	/HAfur36fm3O4Dk8OD6WN2XdS0nuM2ca6XHQ9rsYuPvQEpjPHnAmGsgmZCwL8QvG1k9io7u+8wetW
	tKgfs1b5vkW73BM58ULklMqEwqWOPb9t7g3Z1WhKhCWlv95AxMS6E96ZZ/3TdUVD2s7B1vpLuHlf4
	lkgqUf0TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHtAF-0002G9-2v; Fri, 27 Mar 2020 17:53:03 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHtA1-0002FG-SZ
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 17:52:51 +0000
Received: from lhreml706-cah.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id F1561EC14A638CABF194;
 Fri, 27 Mar 2020 17:52:44 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 lhreml706-cah.china.huawei.com (10.201.108.47) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 27 Mar 2020 17:52:44 +0000
Received: from [127.0.0.1] (10.47.10.23) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5; Fri, 27 Mar
 2020 17:52:43 +0000
Subject: Re: [PATCH v3 2/2] irqchip/gic-v3-its: Balance initial LPI affinity
 across CPUs
To: Marc Zyngier <maz@kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>
References: <20200316115433.9017-1-maz@kernel.org>
 <20200316115433.9017-3-maz@kernel.org>
From: John Garry <john.garry@huawei.com>
Message-ID: <7ea4e410-72cb-db3f-f141-a2f3c70b801d@huawei.com>
Date: Fri, 27 Mar 2020 17:52:28 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200316115433.9017-3-maz@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.47.10.23]
X-ClientProxiedBy: lhreml703-chm.china.huawei.com (10.201.108.52) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_105250_075301_0B216D7C 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
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
Cc: Jason Cooper <jason@lakedaemon.net>, chenxiang <chenxiang66@hisilicon.com>,
 "luojiaxing@huawei.com" <luojiaxing@huawei.com>,
 Ming Lei <ming.lei@redhat.com>, Zhou Wang <wangzhou1@hisilicon.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

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


Hi Marc,


> +		cpumask_and(tmpmask, irq_data_get_affinity_mask(d), cpu_online_mask);
> +

Please consider this flow:

- in its_irq_domain_activate()->its_select_cpu(), for a managed 
interrupt we select the target cpu from the interrupt affin mask

- then in its_set_affinity() call for the same interrupt, we may 
needlessly reselect the target cpu. This is because in the 
its_set_affinity()->its_select_cpu() call, we account for that interrupt 
in the load for the current target cpu, and may find a lesser loaded cpu 
in the mask and switch.

For example, from mask 0-5 we select cpu0 initially. Then on the 2nd 
call, we find cpu0 has a greater load (1) then cpu1 (0), and switch to cpu1.

Cheers,
John


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

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
