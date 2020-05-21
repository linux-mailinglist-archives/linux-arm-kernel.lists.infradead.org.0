Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D07E1DCEE4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 16:05:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rJwXeiHOjVGbSYMopejIaeC40/rX7J19ZBJCucy09xs=; b=Zju74k+XoVFr6DAamqYEMNLpd+
	uuL4PVooiN4AkMTF4OJ0855dLzAIjH7PJpWcDdksrpzVE6ywu2QOUrj8vryq5VYee06l8pycrejrU
	296OVWsCiGf4S/uJ7yV8CTqLSC3YDnYSoSr5nLjQicSK6vVBUbphHotntD3+IPgSO8YiL7k8Dq26r
	7wJfA/+V+h1iApvJuZNJBXb8eta2yuWbdE911jBEjB4R0daHJuj66aM+u8/rRHuf63vZ6z1JGgqyE
	e56XNB+/0XXlzfz2WvexTaIYNT8wVrvOim/eOU9+fbjhJ3cxu8YAr8G/RKwgOdeK3RsIsqOumYLr7
	oi/Qodiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jblp0-000087-Px; Thu, 21 May 2020 14:05:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jblog-00006m-Oy
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 14:05:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 218FAD6E;
 Thu, 21 May 2020 07:04:58 -0700 (PDT)
Received: from e113632-lin (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C67353F305;
 Thu, 21 May 2020 07:04:56 -0700 (PDT)
References: <20200519161755.209565-1-maz@kernel.org>
 <20200519161755.209565-7-maz@kernel.org>
User-agent: mu4e 0.9.17; emacs 26.3
From: Valentin Schneider <valentin.schneider@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 06/11] irqchip/gic-v3: Configure SGIs as standard
 interrupts
In-reply-to: <20200519161755.209565-7-maz@kernel.org>
Date: Thu, 21 May 2020 15:04:54 +0100
Message-ID: <jhjimgpxu2h.mognet@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_070458_853428_F28FA70B 
X-CRM114-Status: GOOD (  18.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sumit Garg <sumit.garg@linaro.org>, kernel-team@android.com,
 Russell King <linux@arm.linux.org.uk>, Jason Cooper <jason@lakedaemon.net>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 19/05/20 17:17, Marc Zyngier wrote:
> Change the way we deal with GICv3 SGIs by turning them into proper
> IRQs, and calling into the arch code to register the interrupt range
> instead of a callback.
>
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  drivers/irqchip/irq-gic-v3.c | 91 +++++++++++++++++++++---------------
>  1 file changed, 53 insertions(+), 38 deletions(-)
>
> diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
> index 23d7c87da407..d57289057b75 100644
> --- a/drivers/irqchip/irq-gic-v3.c
> +++ b/drivers/irqchip/irq-gic-v3.c
> @@ -1163,10 +1142,36 @@ static void gic_raise_softirq(const struct cpumask *mask, unsigned int irq)
>
>  static void gic_smp_init(void)
>  {
> -	set_smp_cross_call(gic_raise_softirq);
> +	struct irq_fwspec sgi_fwspec = {
> +		.fwnode		= gic_data.fwnode,
> +	};
> +	int base_sgi;
> +
>       cpuhp_setup_state_nocalls(CPUHP_AP_IRQ_GIC_STARTING,
>                                 "irqchip/arm/gicv3:starting",
>                                 gic_starting_cpu, NULL);
> +
> +	if (is_of_node(gic_data.fwnode)) {
> +		/* DT */
> +		sgi_fwspec.param_count = 3;
> +		sgi_fwspec.param[0] = GIC_IRQ_TYPE_SGI;
> +		sgi_fwspec.param[1] = 0;
> +		sgi_fwspec.param[2] = IRQ_TYPE_EDGE_RISING;
> +	} else {
> +		/* ACPI */
> +		sgi_fwspec.param_count = 2;
> +		sgi_fwspec.param[0] = 0;
> +		sgi_fwspec.param[1] = IRQ_TYPE_EDGE_RISING;
> +	}
> +
> +	/* Register all 8 non-secure SGIs */
> +	base_sgi = __irq_domain_alloc_irqs(gic_data.domain, -1, 8,
> +					   NUMA_NO_NODE, &sgi_fwspec,
> +					   false, NULL);

So IIUC using irq_reserve_ipi() would require us to have a separate IPI
domain, so instead here we can use a fwspec + the 'regular' GIC domain.

One thing I see is that by not going through irq_reserve_ipi(), we don't set
data->common->ipi_offset. I think this is all kzalloc'd, and we want an
offset of 0 so it all works out, but this feels somewhat fragile.

> +	if (WARN_ON(base_sgi <= 0))
> +		return;
> +
> +	set_smp_ipi_range(base_sgi, 8);
>  }
>
>  static int gic_set_affinity(struct irq_data *d, const struct cpumask *mask_val,
> @@ -1289,6 +1296,13 @@ static int gic_irq_domain_map(struct irq_domain *d, unsigned int irq,
>
>       switch (__get_intid_range(hw)) {
>       case SGI_RANGE:
> +		irq_set_percpu_devid(irq);
> +		irq_domain_set_info(d, irq, hw, chip, d->host_data,
> +				    handle_percpu_devid_fasteoi_ipi,
> +				    NULL, NULL);
> +		irq_set_status_flags(irq, IRQ_NOAUTOEN);

FWIW IRQ_NOAUTOEN is already set by irq_set_percpu_devid_flags(), so that's
not required. I know we do that for (E)PPIs, I think I already have a small
patch stashed somewhere regarding that.

> +		break;
> +
>       case PPI_RANGE:
>       case EPPI_RANGE:
>               irq_set_percpu_devid(irq);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
