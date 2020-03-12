Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5893F182989
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 08:12:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WBPyAT3PhKZ3UP0R06sY+hnqQiQGPSkg8xpN5r5xcTA=; b=PUzILNvWQRs9l+OPGnD22q2N5
	Uv0A7RFw6XpecTkn0v+yx83pF33Lj0Ocw5rlzjck3KVb+QTZLW8ECA7pZoyqdv+LEpnMVK52D0y5p
	z1hE9EEEmS+wAo/SledEipqK8PO2v1fnaeSv930uCQgJAj84Wert2Fv+BRZRdux+jUP3xAirtX6SY
	MRx9PVI7yVgALpnZuTFHg/eTBCH5LR4g07F7mLU5jASpYI3fyObOuGY1Epzc98nfB0p41rLuY7N37
	DmkCxM8FpPuCxTG+Evq+tmgl0CsWfOja9tET3Gw1uKZOJCE2Vu9nePUNTVz2tGUPBu3MfshIjz+pl
	ex28prS2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCI0f-0003Gn-3J; Thu, 12 Mar 2020 07:12:01 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCI0S-0003GE-HP
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 07:11:52 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 8B7B1AEEF5DC05480B47;
 Thu, 12 Mar 2020 15:11:45 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.487.0; Thu, 12 Mar 2020
 15:11:38 +0800
Subject: Re: [PATCH v5 05/23] irqchip/gic-v4.1: Ensure mutual exclusion betwen
 invalidations on the same RD
To: Marc Zyngier <maz@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvmarm@lists.cs.columbia.edu>, <kvm@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-6-maz@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <477e0d45-3ad2-1aee-dd8e-0a771d9cc313@huawei.com>
Date: Thu, 12 Mar 2020 15:11:36 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200304203330.4967-6-maz@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_001150_244639_777D549A 
X-CRM114-Status: GOOD (  16.72  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Eric Auger <eric.auger@redhat.com>, Robert Richter <rrichter@marvell.com>,
 James Morse <james.morse@arm.com>, Thomas
 Gleixner <tglx@linutronix.de>, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/3/5 4:33, Marc Zyngier wrote:
> The GICv4.1 spec says that it is CONTRAINED UNPREDICTABLE to write to

s/CONTRAINED/CONSTRAINED/

> any of the GICR_INV{LPI,ALL}R registers if GICR_SYNCR.Busy == 1.
> 
> To deal with it, we must ensure that only a single invalidation can
> happen at a time for a given redistributor. Add a per-RD lock to that
> effect and take it around the invalidation/syncr-read to deal with this.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>

Reviewed-by: Zenghui Yu <yuzenghui@huawei.com>


Thanks

> ---
>   drivers/irqchip/irq-gic-v3-its.c   | 6 ++++++
>   drivers/irqchip/irq-gic-v3.c       | 1 +
>   include/linux/irqchip/arm-gic-v3.h | 1 +
>   3 files changed, 8 insertions(+)
> 
> diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
> index c84370245bea..fc5788584df7 100644
> --- a/drivers/irqchip/irq-gic-v3-its.c
> +++ b/drivers/irqchip/irq-gic-v3-its.c
> @@ -1373,10 +1373,12 @@ static void direct_lpi_inv(struct irq_data *d)
>   
>   	/* Target the redistributor this LPI is currently routed to */
>   	cpu = irq_to_cpuid_lock(d, &flags);
> +	raw_spin_lock(&gic_data_rdist_cpu(cpu)->rd_lock);
>   	rdbase = per_cpu_ptr(gic_rdists->rdist, cpu)->rd_base;
>   	gic_write_lpir(val, rdbase + GICR_INVLPIR);
>   
>   	wait_for_syncr(rdbase);
> +	raw_spin_unlock(&gic_data_rdist_cpu(cpu)->rd_lock);
>   	irq_to_cpuid_unlock(d, flags);
>   }
>   
> @@ -3662,9 +3664,11 @@ static void its_vpe_send_inv(struct irq_data *d)
>   		void __iomem *rdbase;
>   
>   		/* Target the redistributor this VPE is currently known on */
> +		raw_spin_lock(&gic_data_rdist_cpu(vpe->col_idx)->rd_lock);
>   		rdbase = per_cpu_ptr(gic_rdists->rdist, vpe->col_idx)->rd_base;
>   		gic_write_lpir(d->parent_data->hwirq, rdbase + GICR_INVLPIR);
>   		wait_for_syncr(rdbase);
> +		raw_spin_unlock(&gic_data_rdist_cpu(vpe->col_idx)->rd_lock);
>   	} else {
>   		its_vpe_send_cmd(vpe, its_send_inv);
>   	}
> @@ -3825,10 +3829,12 @@ static void its_vpe_4_1_invall(struct its_vpe *vpe)
>   	val |= FIELD_PREP(GICR_INVALLR_VPEID, vpe->vpe_id);
>   
>   	/* Target the redistributor this vPE is currently known on */
> +	raw_spin_lock(&gic_data_rdist_cpu(vpe->col_idx)->rd_lock);
>   	rdbase = per_cpu_ptr(gic_rdists->rdist, vpe->col_idx)->rd_base;
>   	gic_write_lpir(val, rdbase + GICR_INVALLR);
>   
>   	wait_for_syncr(rdbase);
> +	raw_spin_unlock(&gic_data_rdist_cpu(vpe->col_idx)->rd_lock);
>   }
>   
>   static int its_vpe_4_1_set_vcpu_affinity(struct irq_data *d, void *vcpu_info)
> diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
> index 73e87e176d76..ba405becab53 100644
> --- a/drivers/irqchip/irq-gic-v3.c
> +++ b/drivers/irqchip/irq-gic-v3.c
> @@ -835,6 +835,7 @@ static int __gic_populate_rdist(struct redist_region *region, void __iomem *ptr)
>   	typer = gic_read_typer(ptr + GICR_TYPER);
>   	if ((typer >> 32) == aff) {
>   		u64 offset = ptr - region->redist_base;
> +		raw_spin_lock_init(&gic_data_rdist()->rd_lock);
>   		gic_data_rdist_rd_base() = ptr;
>   		gic_data_rdist()->phys_base = region->phys_base + offset;
>   
> diff --git a/include/linux/irqchip/arm-gic-v3.h b/include/linux/irqchip/arm-gic-v3.h
> index c29a02678a6f..b28acfa71f82 100644
> --- a/include/linux/irqchip/arm-gic-v3.h
> +++ b/include/linux/irqchip/arm-gic-v3.h
> @@ -652,6 +652,7 @@
>   
>   struct rdists {
>   	struct {
> +		raw_spinlock_t	rd_lock;
>   		void __iomem	*rd_base;
>   		struct page	*pend_page;
>   		phys_addr_t	phys_base;
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
