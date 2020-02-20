Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E6F1655C1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 04:37:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=adGi2byvuvZBUoFDeOj4HJgvZUNWEVeeQWGJeQjY5Ic=; b=uksDM/50nIa1lfTQIcAEM1zUB
	Mslezip18zesPy4jQfhw6XxvBRWgdwEhHnFZHGyF+7VZJpirvJscqjM/efckNClMWg866EfvnX+SO
	DoJnRml8qssI7uNn7TCAtweqNlusmx3Z5PQ9+4zp1O2kd4TnKQjwKCfnf1E9paWxH0HnfE+1L70TP
	qq5DSE7oODKsiP/LFVTY4oaKIKrScH3/W2rd1PrPnmAvM1JOEmATWCoOuxtKdV4VIkeK2dsWnpkKf
	t8CsIpXBpuPkUjelJHAKSg4nYYjsiaIGlRlkKWBFyyXWhlACYIDmik603S9PE241zaTCOSKyhLvXi
	9ptC43QDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4ceO-0006jt-3F; Thu, 20 Feb 2020 03:37:20 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ceE-0006jO-4z
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 03:37:11 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 2580BC2684EA7326FDBC;
 Thu, 20 Feb 2020 11:37:08 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.439.0; Thu, 20 Feb 2020
 11:37:01 +0800
Subject: Re: [PATCH v4 09/20] irqchip/gic-v4.1: Plumb set_vcpu_affinity SGI
 callbacks
To: Marc Zyngier <maz@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvmarm@lists.cs.columbia.edu>, <kvm@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20200214145736.18550-1-maz@kernel.org>
 <20200214145736.18550-10-maz@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <38b42ac1-5a5d-2f10-2cba-b50f37c7a965@huawei.com>
Date: Thu, 20 Feb 2020 11:37:00 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200214145736.18550-10-maz@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_193710_363257_F04A18F1 
X-CRM114-Status: GOOD (  16.27  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Eric Auger <eric.auger@redhat.com>, Robert Richter <rrichter@marvell.com>,
 James Morse <james.morse@arm.com>, Thomas
 Gleixner <tglx@linutronix.de>, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 2020/2/14 22:57, Marc Zyngier wrote:
> As for VLPIs, there is a number of configuration bits that cannot

As for vSGIs,

> be directly communicated through the normal irqchip API, and we
> have to use our good old friend set_vcpu_affinity.
> 
> This is used to configure group and priority for a given vSGI.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>

Reviewed-by: Zenghui Yu <yuzenghui@huawei.com>

> ---
>   drivers/irqchip/irq-gic-v3-its.c   | 18 ++++++++++++++++++
>   include/linux/irqchip/arm-gic-v4.h |  5 +++++
>   2 files changed, 23 insertions(+)
> 
> diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
> index a9753435c4ff..a2e824eae43f 100644
> --- a/drivers/irqchip/irq-gic-v3-its.c
> +++ b/drivers/irqchip/irq-gic-v3-its.c
> @@ -3969,6 +3969,23 @@ static int its_sgi_get_irqchip_state(struct irq_data *d,
>   	return 0;
>   }
>   
> +static int its_sgi_set_vcpu_affinity(struct irq_data *d, void *vcpu_info)
> +{
> +	struct its_vpe *vpe = irq_data_get_irq_chip_data(d);
> +	struct its_cmd_info *info = vcpu_info;
> +
> +	switch (info->cmd_type) {
> +	case PROP_UPDATE_SGI:
> +		vpe->sgi_config[d->hwirq].priority = info->priority;
> +		vpe->sgi_config[d->hwirq].group = info->group;
> +		its_configure_sgi(d, false);
> +		return 0;
> +
> +	default:
> +		return -EINVAL;
> +	}
> +}
> +
>   static struct irq_chip its_sgi_irq_chip = {
>   	.name			= "GICv4.1-sgi",
>   	.irq_mask		= its_sgi_mask_irq,
> @@ -3976,6 +3993,7 @@ static struct irq_chip its_sgi_irq_chip = {
>   	.irq_set_affinity	= its_sgi_set_affinity,
>   	.irq_set_irqchip_state	= its_sgi_set_irqchip_state,
>   	.irq_get_irqchip_state	= its_sgi_get_irqchip_state,
> +	.irq_set_vcpu_affinity	= its_sgi_set_vcpu_affinity,
>   };
>   
>   static int its_sgi_irq_domain_alloc(struct irq_domain *domain,
> diff --git a/include/linux/irqchip/arm-gic-v4.h b/include/linux/irqchip/arm-gic-v4.h
> index 30b4855bf766..a1a9d40266f5 100644
> --- a/include/linux/irqchip/arm-gic-v4.h
> +++ b/include/linux/irqchip/arm-gic-v4.h
> @@ -98,6 +98,7 @@ enum its_vcpu_info_cmd_type {
>   	SCHEDULE_VPE,
>   	DESCHEDULE_VPE,
>   	INVALL_VPE,
> +	PROP_UPDATE_SGI,

Maybe better to use 'PROP_UPDATE_VSGI'?


Thanks,
Zenghui

>   };
>   
>   struct its_cmd_info {
> @@ -110,6 +111,10 @@ struct its_cmd_info {
>   			bool		g0en;
>   			bool		g1en;
>   		};
> +		struct {
> +			u8		priority;
> +			bool		group;
> +		};
>   	};
>   };
>   
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
