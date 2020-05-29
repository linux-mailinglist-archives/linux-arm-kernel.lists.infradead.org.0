Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0B71E7450
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 06:08:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0bhr0OZAFSHisizuSU0EyI05Ec4dA0GRQ9aC3YCNwxM=; b=ErYbMU11CwWsRhkiFexcRjGCt
	rUhRJlyQR3dtFa3d9QLlqGs5xjRIFfykakdvVuJouIBIc2CTeqJmusFshSIyJBREp2BrcLggJm2sy
	PhgP4/EhqmOc7NueCWXs8nHKKejE5+uDWHFYsEzvclTOkxOsaBhfYG7f7YipeucdERP2Y6V2LZH8+
	UvySSBr7yPTmB986KOXWrEFhHhHyAocE2RWB0R7Ol0iMEJmgYehcStRIxxMteZ+JFJoVq3gDRDBQk
	bzbZYPdaHL/EfrKxU8O78Jix9Kx9g8QF7SLmSD60xEBrQ8IZTQxSlNRqf6O+yIyWecj79d3vZFY4Q
	8/IxDdwaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeWK4-0008WM-2V; Fri, 29 May 2020 04:08:44 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeWJS-0008Fd-Nv
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 04:08:08 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id B1A4569FBB21838E7DBA;
 Fri, 29 May 2020 12:07:50 +0800 (CST)
Received: from [10.173.222.27] (10.173.222.27) by
 DGGEMS405-HUB.china.huawei.com (10.3.19.205) with Microsoft SMTP Server id
 14.3.487.0; Fri, 29 May 2020 12:07:42 +0800
Subject: Re: [PATCH] irqchip/gic-v3-its: Don't try to move a disabled irq
To: Ali Saidi <alisaidi@amazon.com>, Thomas Gleixner <tglx@linutronix.de>,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20200529015501.15771-1-alisaidi@amazon.com>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <f463c9cd-6078-4c57-d5c9-72c7018f25ef@huawei.com>
Date: Fri, 29 May 2020 12:07:31 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200529015501.15771-1-alisaidi@amazon.com>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_210806_967705_A6549AC6 
X-CRM114-Status: GOOD (  22.41  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.35 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: benh@amazon.com, zeev@amazon.com, linux-arm-kernel@lists.infradead.org,
 zorik@amazon.com, dwmw@amazon.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 2020/5/29 9:55, Ali Saidi wrote:
> If an interrupt is disabled the ITS driver has sent a discard removing
> the DeviceID and EventID from the ITT. After this occurs it can't be
> moved to another collection with a MOVI and a command error occurs if
> attempted. Before issuing the MOVI command make sure that the IRQ isn't
> disabled and change the activate code to try and use the previous
> affinity.
> 
> Signed-off-by: Ali Saidi <alisaidi@amazon.com>
> ---
>   drivers/irqchip/irq-gic-v3-its.c | 18 +++++++++++++++---
>   1 file changed, 15 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
> index 124251b0ccba..1235dd9a2fb2 100644
> --- a/drivers/irqchip/irq-gic-v3-its.c
> +++ b/drivers/irqchip/irq-gic-v3-its.c
> @@ -1540,7 +1540,11 @@ static int its_set_affinity(struct irq_data *d, const struct cpumask *mask_val,
>   	/* don't set the affinity when the target cpu is same as current one */
>   	if (cpu != its_dev->event_map.col_map[id]) {
>   		target_col = &its_dev->its->collections[cpu];
> -		its_send_movi(its_dev, target_col, id);
> +
> +		/* If the IRQ is disabled a discard was sent so don't move */
> +		if (!irqd_irq_disabled(d))
> +			its_send_movi(its_dev, target_col, id);

It looks to me that if the IRQ is disabled, we mask the enable bit in
the corresponding LPI configuration table entry, but not sending DISCARD
to remove the DevID/EventID mapping. And moving a disabled LPI is
actually allowed by the GIC architecture, right?

> +
>   		its_dev->event_map.col_map[id] = cpu;
>   		irq_data_update_effective_affinity(d, cpumask_of(cpu));
>   	}
> @@ -3439,8 +3443,16 @@ static int its_irq_domain_activate(struct irq_domain *domain,
>   	if (its_dev->its->numa_node >= 0)
>   		cpu_mask = cpumask_of_node(its_dev->its->numa_node);
>   
> -	/* Bind the LPI to the first possible CPU */
> -	cpu = cpumask_first_and(cpu_mask, cpu_online_mask);
> +	/* If the cpu set to a different CPU that is still online use it */
> +	cpu = its_dev->event_map.col_map[event];
> +
> +	cpumask_and(cpu_mask, cpu_mask, cpu_online_mask);
> +
> +	if (!cpumask_test_cpu(cpu, cpu_mask)) {
> +		/* Bind the LPI to the first possible CPU */
> +		cpu = cpumask_first(cpu_mask);
> +	}

I'd like to know what actual problem you had seen and the way to
reproduce it :-)


Thanks,
Zenghui

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
