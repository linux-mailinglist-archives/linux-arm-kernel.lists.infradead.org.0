Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE8CA1877EA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 03:49:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WyFUzzZF7IUyKF+1lIbQ4V2dXVGTOS9Zi/luipns0WE=; b=tUigd5dr9O/lCVvm7tW6E2LUz
	i/z5A+P5fWb0mDybS6UlFUps8+4AOsQA3iGnf+rtae8XNBvawRST2ulvI0wnLc463/ukDZpYiHpVD
	0LL/Y+mBoZFSvp/LLSLkYE0xIbm8t7+rqj7GA34j8SbkMBZLEeW2VpVtllyqF1q4U7zo99lmn5TtG
	GcMkTdk9jTXfgM1n+CpFsLsCTbHStQxUqu8un0RZZdeJ8wAoiCcG3XpluWWXyv5pO6oVsdvFXjB4q
	mXTmUrD/JU7V9Ynuilg6VSw9ADC3zKZOIx2KKy2j8nKbogYYXDDR2VWdYfFQ9VG+VUnHo27BMTYKa
	YxVR2fTuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE2Ib-0001Mv-DW; Tue, 17 Mar 2020 02:49:45 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE2IQ-0001MP-J2
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 02:49:36 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id AC9D0E0409BF2661E9C8;
 Tue, 17 Mar 2020 10:49:28 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.487.0; Tue, 17 Mar 2020
 10:49:20 +0800
Subject: Re: [PATCH v5 16/23] irqchip/gic-v4.1: Eagerly vmap vPEs
To: Marc Zyngier <maz@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvmarm@lists.cs.columbia.edu>, <kvm@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-17-maz@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <2817cb89-4cc2-549f-6e40-91d941aa8a5f@huawei.com>
Date: Tue, 17 Mar 2020 10:49:18 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200304203330.4967-17-maz@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_194934_795245_435018A8 
X-CRM114-Status: GOOD (  21.02  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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

On 2020/3/5 4:33, Marc Zyngier wrote:
> Now that we have HW-accelerated SGIs being delivered to VPEs, it
> becomes required to map the VPEs on all ITSs instead of relying
> on the lazy approach that we would use when using the ITS-list
> mechanism.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>

Before GICv4.1, we use vlpi_count to evaluate whether the vPE has been
mapped on the specified ITS, and use this refcount to only issue VMOVP
to those involved ITSes. It's broken after this patch.

We may need to re-evaluate "whether the vPE is mapped" now that we're at
GICv4.1, otherwise *no* VMOVP will be issued on the v4.1 capable machine
(I mean those without single VMOVP support).

What I'm saying is something like below (only an idea, it even can't
compile), any thoughts?


diff --git a/drivers/irqchip/irq-gic-v3-its.c 
b/drivers/irqchip/irq-gic-v3-its.c
index 2e12bc52e3a2..3450b5e847ca 100644
--- a/drivers/irqchip/irq-gic-v3-its.c
+++ b/drivers/irqchip/irq-gic-v3-its.c
@@ -198,7 +198,8 @@ static u16 get_its_list(struct its_vm *vm)
  		if (!is_v4(its))
  			continue;

-		if (vm->vlpi_count[its->list_nr])
+		if (vm->vlpi_count[its->list_nr] ||
+		    gic_requires_eager_mapping())
  			__set_bit(its->list_nr, &its_list);
  	}

@@ -1295,7 +1296,8 @@ static void its_send_vmovp(struct its_vpe *vpe)
  		if (!is_v4(its))
  			continue;

-		if (!vpe->its_vm->vlpi_count[its->list_nr])
+		if (!vpe->its_vm->vlpi_count[its->list_nr] &&
+		    !gic_requires_eager_mapping())
  			continue;

  		desc.its_vmovp_cmd.col = &its->collections[col_id];


Thanks,
Zenghui

> ---
>   drivers/irqchip/irq-gic-v3-its.c | 39 +++++++++++++++++++++++++-------
>   1 file changed, 31 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
> index b65fba67bd85..6277b3e3731f 100644
> --- a/drivers/irqchip/irq-gic-v3-its.c
> +++ b/drivers/irqchip/irq-gic-v3-its.c
> @@ -1586,12 +1586,31 @@ static int its_irq_set_irqchip_state(struct irq_data *d,
>   	return 0;
>   }
>   
> +/*
> + * Two favourable cases:
> + *
> + * (a) Either we have a GICv4.1, and all vPEs have to be mapped at all times
> + *     for vSGI delivery
> + *
> + * (b) Or the ITSs do not use a list map, meaning that VMOVP is cheap enough
> + *     and we're better off mapping all VPEs always
> + *
> + * If neither (a) nor (b) is true, then we map vPEs on demand.
> + *
> + */
> +static bool gic_requires_eager_mapping(void)
> +{
> +	if (!its_list_map || gic_rdists->has_rvpeid)
> +		return true;
> +
> +	return false;
> +}
> +
>   static void its_map_vm(struct its_node *its, struct its_vm *vm)
>   {
>   	unsigned long flags;
>   
> -	/* Not using the ITS list? Everything is always mapped. */
> -	if (!its_list_map)
> +	if (gic_requires_eager_mapping())
>   		return;
>   
>   	raw_spin_lock_irqsave(&vmovp_lock, flags);
> @@ -1625,7 +1644,7 @@ static void its_unmap_vm(struct its_node *its, struct its_vm *vm)
>   	unsigned long flags;
>   
>   	/* Not using the ITS list? Everything is always mapped. */
> -	if (!its_list_map)
> +	if (gic_requires_eager_mapping())
>   		return;
>   
>   	raw_spin_lock_irqsave(&vmovp_lock, flags);
> @@ -4260,8 +4279,12 @@ static int its_vpe_irq_domain_activate(struct irq_domain *domain,
>   	struct its_vpe *vpe = irq_data_get_irq_chip_data(d);
>   	struct its_node *its;
>   
> -	/* If we use the list map, we issue VMAPP on demand... */
> -	if (its_list_map)
> +	/*
> +	 * If we use the list map, we issue VMAPP on demand... Unless
> +	 * we're on a GICv4.1 and we eagerly map the VPE on all ITSs
> +	 * so that VSGIs can work.
> +	 */
> +	if (!gic_requires_eager_mapping())
>   		return 0;
>   
>   	/* Map the VPE to the first possible CPU */
> @@ -4287,10 +4310,10 @@ static void its_vpe_irq_domain_deactivate(struct irq_domain *domain,
>   	struct its_node *its;
>   
>   	/*
> -	 * If we use the list map, we unmap the VPE once no VLPIs are
> -	 * associated with the VM.
> +	 * If we use the list map on GICv4.0, we unmap the VPE once no
> +	 * VLPIs are associated with the VM.
>   	 */
> -	if (its_list_map)
> +	if (!gic_requires_eager_mapping())
>   		return;
>   
>   	list_for_each_entry(its, &its_nodes, entry) {
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
