Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A74681874F2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 22:43:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pj1PNahEy2FegJJgCGl2pQu/uCRaKWGmH91BNEQMWLo=; b=uG0T0Y//IgTH8L
	aOoeEBfkVg3hegOJImfFoxkavzVCZCwfQE55Ph35AJIYN0i5g8pL9zHrhf0EJjZWfv8wQ6uEUpCJS
	sZ+i5PnE/3uwp52Jss16gRxueDisIFEXNj/AJVYvUDuAexH0dyx9s9TgXbx9nSCX11Mo8aIxLQXm7
	WIUouTE/K388GEWR13uyd36VyZqAtqxPPxwlRYbef5lswm27PFLbyM0s9wS4khumjEM7hq/09IviO
	5YX0P/2RAvs4LWSgsS6Kplvf5y9Xr3c/bYsZ2YlANhNlxjoG7o8in2b9SoAp0vV/wiTYbd0CditAW
	6zutpsSo1Gfb++QK0gMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDxWO-0005OT-E6; Mon, 16 Mar 2020 21:43:40 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDxWE-0005O0-Vh
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 21:43:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584395009;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Miipgu0UxsqEQXnuF5qqtIQaGQJVXJmSSN/HUx7b+p4=;
 b=dhn6D3yUF0zS0DaQWmzj2S5JwF3bubSx7YC+b4KVg02nH4iagvyqc+z5AWiNXGwQEPZTWQ
 WVvN5cUg6xoSACm7eVdvpttImK6xT+TAQOSY7X6ZrsPKL+aByfZqRWhoslRY2FpoiUhENV
 kvNKaQhmJjx5miYf1ghTywEBbiAaWwI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-162-fGRj8VcfN0-XHR6WqLS96A-1; Mon, 16 Mar 2020 17:43:25 -0400
X-MC-Unique: fGRj8VcfN0-XHR6WqLS96A-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3843518A6ECD;
 Mon, 16 Mar 2020 21:43:23 +0000 (UTC)
Received: from [10.3.117.77] (ovpn-117-77.phx2.redhat.com [10.3.117.77])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id DDD283AC;
 Mon, 16 Mar 2020 21:43:19 +0000 (UTC)
Subject: Re: [PATCH v5 11/23] irqchip/gic-v4.1: Plumb get/set_irqchip_state
 SGI callbacks
To: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-12-maz@kernel.org>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <d6b95eeb-b1c7-802b-e29e-a6c6ecf9ea33@redhat.com>
Date: Mon, 16 Mar 2020 22:43:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20200304203330.4967-12-maz@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_144331_099247_54F9DB15 
X-CRM114-Status: GOOD (  27.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.128.21.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi Marc,

On 3/4/20 9:33 PM, Marc Zyngier wrote:
> To implement the get/set_irqchip_state callbacks (limited to the
> PENDING state), we have to use a particular set of hacks:
> 
> - Reading the pending state is done by using a pair of new redistributor
>   registers (GICR_VSGIR, GICR_VSGIPENDR), which allow the 16 interrupts
>   state to be retrieved.
> - Setting the pending state is done by generating it as we'd otherwise do
>   for a guest (writing to GITS_SGIR).
> - Clearing the pending state is done by emiting a VSGI command with the
emitting
>   "clear" bit set.
> 
> This requires some interesting locking though:
> - When talking to the redistributor, we must make sure that the VPE
>   affinity doesn't change, hence taking the VPE lock.
> - At the same time, we must ensure that nobody accesses the same
>   redistributor's GICR_VSGI*R registers for a different VPE, which
GICR_VSGIR
>   would corrupt the reading of the pending bits. We thus take the
>   per-RD spinlock. Much fun.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  drivers/irqchip/irq-gic-v3-its.c   | 73 ++++++++++++++++++++++++++++++
>  include/linux/irqchip/arm-gic-v3.h | 14 ++++++
>  2 files changed, 87 insertions(+)
> 
> diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
> index c93f178914ee..fb2b836c31ff 100644
> --- a/drivers/irqchip/irq-gic-v3-its.c
> +++ b/drivers/irqchip/irq-gic-v3-its.c
> @@ -3962,11 +3962,84 @@ static int its_sgi_set_affinity(struct irq_data *d,
>  	return -EINVAL;
>  }
>  
> +static int its_sgi_set_irqchip_state(struct irq_data *d,
> +				     enum irqchip_irq_state which,
> +				     bool state)
> +{
> +	if (which != IRQCHIP_STATE_PENDING)
> +		return -EINVAL;
> +
> +	if (state) {
> +		struct its_vpe *vpe = irq_data_get_irq_chip_data(d);
> +		struct its_node *its = find_4_1_its();
> +		u64 val;
> +
> +		val  = FIELD_PREP(GITS_SGIR_VPEID, vpe->vpe_id);
> +		val |= FIELD_PREP(GITS_SGIR_VINTID, d->hwirq);
> +		writeq_relaxed(val, its->sgir_base + GITS_SGIR - SZ_128K);
> +	} else {
> +		its_configure_sgi(d, true);
> +	}
> +
> +	return 0;
> +}
> +
> +static int its_sgi_get_irqchip_state(struct irq_data *d,
> +				     enum irqchip_irq_state which, bool *val)
> +{
> +	struct its_vpe *vpe = irq_data_get_irq_chip_data(d);
> +	void __iomem *base;
> +	unsigned long flags;
> +	u32 count = 1000000;	/* 1s! */
where does it come from? I did not find any info in the spec about this
delay.
> +	u32 status;
> +	int cpu;
> +
> +	if (which != IRQCHIP_STATE_PENDING)
> +		return -EINVAL;
> +
> +	/*
> +	 * Locking galore! We can race against two different events:
> +	 *
> +	 * - Concurent vPE affinity change: we must make sure it cannot
> +         *   happen, or we'll talk to the wrong redistributor. This is
> +         *   identical to what happens with vLPIs.
> +	 *
> +	 * - Concurrent VSGIPENDR access: As it involves accessing two
> +         *   MMIO registers, this must be made atomic one way or another.
> +	 */
> +	cpu = vpe_to_cpuid_lock(vpe, &flags);
> +	raw_spin_lock(&gic_data_rdist_cpu(cpu)->rd_lock);
> +	base = gic_data_rdist_cpu(cpu)->rd_base + SZ_128K;
> +	writel_relaxed(vpe->vpe_id, base + GICR_VSGIR);
> +	do {
> +		status = readl_relaxed(base + GICR_VSGIPENDR);
> +		if (!(status & GICR_VSGIPENDR_BUSY))
> +			goto out;
> +
> +		count--;
> +		if (!count) {
> +			pr_err_ratelimited("Unable to get SGI status\n");
> +			goto out;
> +		}
> +		cpu_relax();
> +		udelay(1);
> +	} while(count);
> +
> +out:
> +	raw_spin_unlock(&gic_data_rdist_cpu(cpu)->rd_lock);
> +	vpe_to_cpuid_unlock(vpe, flags);
> +	*val = !!(status & (1 << d->hwirq));
> +
> +	return 0;
cascade an error on timeout?
> +}
> +
>  static struct irq_chip its_sgi_irq_chip = {
>  	.name			= "GICv4.1-sgi",
>  	.irq_mask		= its_sgi_mask_irq,
>  	.irq_unmask		= its_sgi_unmask_irq,
>  	.irq_set_affinity	= its_sgi_set_affinity,
> +	.irq_set_irqchip_state	= its_sgi_set_irqchip_state,
> +	.irq_get_irqchip_state	= its_sgi_get_irqchip_state,
>  };
>  
>  static int its_sgi_irq_domain_alloc(struct irq_domain *domain,
> diff --git a/include/linux/irqchip/arm-gic-v3.h b/include/linux/irqchip/arm-gic-v3.h
> index fd3be49ac9a5..830d2abf14b3 100644
> --- a/include/linux/irqchip/arm-gic-v3.h
> +++ b/include/linux/irqchip/arm-gic-v3.h
> @@ -345,6 +345,15 @@
>  #define GICR_VPENDBASER_4_1_VGRP1EN	(1ULL << 58)
>  #define GICR_VPENDBASER_4_1_VPEID	GENMASK_ULL(15, 0)
>  
> +#define GICR_VSGIR			0x0080
> +
> +#define GICR_VSGIR_VPEID		GENMASK(15, 0)
> +
> +#define GICR_VSGIPENDR			0x0088
> +
> +#define GICR_VSGIPENDR_BUSY		(1U << 31)
> +#define GICR_VSGIPENDR_PENDING		GENMASK(15, 0)
> +
>  /*
>   * ITS registers, offsets from ITS_base
>   */
> @@ -368,6 +377,11 @@
>  
>  #define GITS_TRANSLATER			0x10040
>  
> +#define GITS_SGIR			0x20020
> +
> +#define GITS_SGIR_VPEID			GENMASK_ULL(47, 32)
> +#define GITS_SGIR_VINTID		GENMASK_ULL(7, 0)
as spotted by Zenghui 3, 0
> +
>  #define GITS_CTLR_ENABLE		(1U << 0)
>  #define GITS_CTLR_ImDe			(1U << 1)
>  #define	GITS_CTLR_ITS_NUMBER_SHIFT	4
> 

Thanks

Eric


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
