Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF1C618D071
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 15:24:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zTv0EI1Clj+xGrZ9EDno31foC3QpdnwbvnmpUo81oHY=; b=DrhWF3OltR6B5T
	+ZYoxekZtDinHvXz0poPoSBVKsiqLx699iaQ8YhFumNWeptRpQOoIHq1B2AvkLfcOXf2+fS72+yXu
	fQCx4u3zxFQydjiBMSC9qZIPUzrog6hAQjkzOBRSoUFqy5RCfoZuB1YJqWmEqTNKizmgRW9ge11yM
	OPnD5JI1dEiVogBmz2uIrj4zV86/YavmXhG+IYCIcGVAyDiXTjbag4QzJN6OOjJUiNTaZSixiaqne
	7ZiLnZYv7ZkR6f3FdOl8JAgWVibYjbAvN0fP+aegMn0MDsBVhcKH9DUIRz5u4AZrhFWUUOc36jzCg
	TDq5ykdqWJ/Lkj2S1FJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFIZJ-0001YQ-3h; Fri, 20 Mar 2020 14:24:13 +0000
Received: from us-smtp-delivery-74.mimecast.com ([216.205.24.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFIZ8-0001Wv-5o
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 14:24:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584714241;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1p3RF/uo8TYxiZRcGBLV1Qt5le5LuOGxE0TdWNhAnKc=;
 b=Gvg+kxSSrZcnIapQ86DASFT+8WBJoKmQQOcYqd939CCtQ7kllNkazWnDitfzYGW4yBEClN
 7V//gO9w0kXOUYrLX3hisWlHFjpd+XYEVGsIi1MBhMN7wh8MUCIIlcTiGgc+tkq2S6ZKXv
 ssr+W38UnEuP/3cg5o1xKsIw+2ZrhS0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-413-bbA7gwh2NHyIupKzLH8_mQ-1; Fri, 20 Mar 2020 10:23:57 -0400
X-MC-Unique: bbA7gwh2NHyIupKzLH8_mQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2FCDCA0CBF;
 Fri, 20 Mar 2020 14:23:55 +0000 (UTC)
Received: from [10.36.113.142] (ovpn-113-142.ams2.redhat.com [10.36.113.142])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 10CA95C1B0;
 Fri, 20 Mar 2020 14:23:49 +0000 (UTC)
Subject: Re: [PATCH v5 05/23] irqchip/gic-v4.1: Ensure mutual exclusion betwen
 invalidations on the same RD
To: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-6-maz@kernel.org>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <1722e947-2af8-7137-7e71-f6647cdf91d7@redhat.com>
Date: Fri, 20 Mar 2020 15:23:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20200304203330.4967-6-maz@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_072402_302302_CF1CCE7F 
X-CRM114-Status: GOOD (  19.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.205.24.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Robert Richter <rrichter@marvell.com>, James Morse <james.morse@arm.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Thomas Gleixner <tglx@linutronix.de>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 3/4/20 9:33 PM, Marc Zyngier wrote:
> The GICv4.1 spec says that it is CONTRAINED UNPREDICTABLE to write to
> any of the GICR_INV{LPI,ALL}R registers if GICR_SYNCR.Busy == 1.
> 
> To deal with it, we must ensure that only a single invalidation can
> happen at a time for a given redistributor. Add a per-RD lock to that
> effect and take it around the invalidation/syncr-read to deal with this.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
Reviewed-by: Eric Auger <eric.auger@redhat.com>

Eric
> ---
>  drivers/irqchip/irq-gic-v3-its.c   | 6 ++++++
>  drivers/irqchip/irq-gic-v3.c       | 1 +
>  include/linux/irqchip/arm-gic-v3.h | 1 +
>  3 files changed, 8 insertions(+)
> 
> diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
> index c84370245bea..fc5788584df7 100644
> --- a/drivers/irqchip/irq-gic-v3-its.c
> +++ b/drivers/irqchip/irq-gic-v3-its.c
> @@ -1373,10 +1373,12 @@ static void direct_lpi_inv(struct irq_data *d)
>  
>  	/* Target the redistributor this LPI is currently routed to */
>  	cpu = irq_to_cpuid_lock(d, &flags);
> +	raw_spin_lock(&gic_data_rdist_cpu(cpu)->rd_lock);
>  	rdbase = per_cpu_ptr(gic_rdists->rdist, cpu)->rd_base;
>  	gic_write_lpir(val, rdbase + GICR_INVLPIR);
>  
>  	wait_for_syncr(rdbase);
> +	raw_spin_unlock(&gic_data_rdist_cpu(cpu)->rd_lock);
>  	irq_to_cpuid_unlock(d, flags);
>  }
>  
> @@ -3662,9 +3664,11 @@ static void its_vpe_send_inv(struct irq_data *d)
>  		void __iomem *rdbase;
>  
>  		/* Target the redistributor this VPE is currently known on */
> +		raw_spin_lock(&gic_data_rdist_cpu(vpe->col_idx)->rd_lock);
>  		rdbase = per_cpu_ptr(gic_rdists->rdist, vpe->col_idx)->rd_base;
>  		gic_write_lpir(d->parent_data->hwirq, rdbase + GICR_INVLPIR);
>  		wait_for_syncr(rdbase);
> +		raw_spin_unlock(&gic_data_rdist_cpu(vpe->col_idx)->rd_lock);
>  	} else {
>  		its_vpe_send_cmd(vpe, its_send_inv);
>  	}
> @@ -3825,10 +3829,12 @@ static void its_vpe_4_1_invall(struct its_vpe *vpe)
>  	val |= FIELD_PREP(GICR_INVALLR_VPEID, vpe->vpe_id);
>  
>  	/* Target the redistributor this vPE is currently known on */
> +	raw_spin_lock(&gic_data_rdist_cpu(vpe->col_idx)->rd_lock);
>  	rdbase = per_cpu_ptr(gic_rdists->rdist, vpe->col_idx)->rd_base;
>  	gic_write_lpir(val, rdbase + GICR_INVALLR);
>  
>  	wait_for_syncr(rdbase);
> +	raw_spin_unlock(&gic_data_rdist_cpu(vpe->col_idx)->rd_lock);
>  }
>  
>  static int its_vpe_4_1_set_vcpu_affinity(struct irq_data *d, void *vcpu_info)
> diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
> index 73e87e176d76..ba405becab53 100644
> --- a/drivers/irqchip/irq-gic-v3.c
> +++ b/drivers/irqchip/irq-gic-v3.c
> @@ -835,6 +835,7 @@ static int __gic_populate_rdist(struct redist_region *region, void __iomem *ptr)
>  	typer = gic_read_typer(ptr + GICR_TYPER);
>  	if ((typer >> 32) == aff) {
>  		u64 offset = ptr - region->redist_base;
> +		raw_spin_lock_init(&gic_data_rdist()->rd_lock);
>  		gic_data_rdist_rd_base() = ptr;
>  		gic_data_rdist()->phys_base = region->phys_base + offset;
>  
> diff --git a/include/linux/irqchip/arm-gic-v3.h b/include/linux/irqchip/arm-gic-v3.h
> index c29a02678a6f..b28acfa71f82 100644
> --- a/include/linux/irqchip/arm-gic-v3.h
> +++ b/include/linux/irqchip/arm-gic-v3.h
> @@ -652,6 +652,7 @@
>  
>  struct rdists {
>  	struct {
> +		raw_spinlock_t	rd_lock;
>  		void __iomem	*rd_base;
>  		struct page	*pend_page;
>  		phys_addr_t	phys_base;
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
