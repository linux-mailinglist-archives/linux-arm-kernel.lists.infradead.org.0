Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C08531B1DC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 10:26:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pJPRtXt3OAVWiZo5htEfHpfLMby2S7tDSTq7Phgnm0o=; b=ADI3avo80V6q6K
	eGBNYabojJqA1GPMMZ1q7mGe0FyqWTzMSeYMpA8M4++UERf9wW9wFyOkjafCP+UvvnxpUji9Wuk+Q
	GwT51FRmlotrPWg7PtyI8k4NRMPO27r9kFerluR3B6KY38icj19mZzFW9JzmXRcBhdrKAE/0S9VV1
	f25kqEPE97ZUL74O6EW8SWVHWOejcoQA/B2rYdvXrl62vYw/GQN7v/m5H6jqTzviKA7LoaK/7hlAT
	IW12Ncqt3c5+tbkS0qQZWAe6b/jF4Gg+MVldB0Efr7OyKv/hMl1iDKqjeKihCMP8ZZDfmARFr7czs
	s1NHckR4bEtwkF8YxaAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ6IA-0000SC-H6; Mon, 13 May 2019 08:26:38 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ6I0-0000RG-Aw
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 08:26:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A027D341;
 Mon, 13 May 2019 01:26:24 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D72493F720;
 Mon, 13 May 2019 01:26:19 -0700 (PDT)
Subject: Re: [PATCH 1/3] arm64: Add pseudo NMI support of GICv3 SGIs
To: Wei Li <liwei391@huawei.com>, catalin.marinas@arm.com,
 will.deacon@arm.com, marc.zyngier@arm.com, tglx@linutronix.de,
 jason@lakedaemon.net
References: <20190506082542.11357-1-liwei391@huawei.com>
 <20190506082542.11357-2-liwei391@huawei.com>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <8e14c373-baed-a2f8-872d-2bf30d1cfe31@arm.com>
Date: Mon, 13 May 2019 09:26:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20190506082542.11357-2-liwei391@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_012628_385559_C600E13A 
X-CRM114-Status: GOOD (  29.03  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: daniel.thompson@linaro.org, lorenzo.pieralisi@arm.com, steve.capper@arm.com,
 Suzuki.Poulose@arm.com, linux-kernel@vger.kernel.org, james.morse@arm.com,
 sudeep.holla@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Wei,

On 06/05/2019 09:25, Wei Li wrote:
> Currently, only PPIs and SPIs can be set as NMIs. IPIs being currently
> hardcoded IRQ numbers, there isn't a generic interface to set SGIs as NMI
> for now.
> 
> In this patch, we do:
> 1. Add an interface for setting priority of SGIs.
> 2. Export GICD_INT_NMI_PRI for setting priority of SGIs as NMI.
> 3. Move the gic_enable_nmi_support() earlier to make the gic_supports_nmi()
> check works in gic_cpu_init().
> 
> Signed-off-by: Wei Li <liwei391@huawei.com>
> Cc: Julien Thierry <julien.thierry@arm.com>
> ---
>  arch/arm64/include/asm/smp.h           |  2 ++
>  arch/arm64/kernel/smp.c                |  4 +++
>  drivers/irqchip/irq-gic-v3.c           | 46 +++++++++++++++++++++-----
>  include/linux/irqchip/arm-gic-common.h |  1 +
>  include/linux/irqchip/arm-gic-v3.h     |  1 +
>  5 files changed, 45 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/smp.h b/arch/arm64/include/asm/smp.h
> index 18553f399e08..84d7ea073d84 100644
> --- a/arch/arm64/include/asm/smp.h
> +++ b/arch/arm64/include/asm/smp.h
> @@ -158,6 +158,8 @@ bool cpus_are_stuck_in_kernel(void);
>  extern void crash_smp_send_stop(void);
>  extern bool smp_crash_stop_failed(void);
>  
> +extern void ipi_gic_nmi_setup(void __iomem *base);
> +
>  #endif /* ifndef __ASSEMBLY__ */
>  
>  #endif /* ifndef __ASM_SMP_H */
> diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
> index 824de7038967..bd8fdf6fcd8e 100644
> --- a/arch/arm64/kernel/smp.c
> +++ b/arch/arm64/kernel/smp.c
> @@ -1067,3 +1067,7 @@ bool cpus_are_stuck_in_kernel(void)
>  
>  	return !!cpus_stuck_in_kernel || smp_spin_tables;
>  }
> +
> +void ipi_gic_nmi_setup(void __iomem *base)
> +{
> +}
> diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
> index 15e55d327505..394aa5668dd6 100644
> --- a/drivers/irqchip/irq-gic-v3.c
> +++ b/drivers/irqchip/irq-gic-v3.c
> @@ -42,8 +42,6 @@
>  
>  #include "irq-gic-common.h"
>  
> -#define GICD_INT_NMI_PRI	(GICD_INT_DEF_PRI & ~0x80)
> -
>  #define FLAGS_WORKAROUND_GICR_WAKER_MSM8996	(1ULL << 0)
>  
>  struct redist_region {
> @@ -324,6 +322,23 @@ static int gic_irq_get_irqchip_state(struct irq_data *d,
>  	return 0;
>  }
>  
> +void gic_sgi_set_prio(void __iomem *base, u32 irqnr, u8 prio)
> +{
> +	u32 val, offset;
> +
> +	offset = GICR_IPRIORITYR0 + ((irqnr / 4) * 4);
> +
> +	/*
> +	 * Using writeb here may cause hardware error on some CPUs,
> +	 * aovid this quirk by using writel.
> +	 */
> +	val = readl_relaxed(base + offset);
> +	val &= ~(0xff << ((irqnr % 4) * 8));
> +	val |= prio << ((irqnr % 4) * 8);
> +
> +	writel_relaxed(val, base + offset);
> +}
> +
>  static void gic_irq_set_prio(struct irq_data *d, u8 prio)
>  {
>  	void __iomem *base = gic_dist_base(d);
> @@ -474,6 +489,16 @@ static inline void gic_handle_nmi(u32 irqnr, struct pt_regs *regs)
>  {
>  	int err;
>  
> +	if (unlikely(irqnr < 16)) {
> +		gic_write_eoir(irqnr);
> +		if (static_branch_likely(&supports_deactivate_key))
> +			gic_write_dir(irqnr);
> +#ifdef CONFIG_SMP
> +		handle_IPI(irqnr, regs);
> +#endif
> +		return;
> +	}
> +
>  	if (static_branch_likely(&supports_deactivate_key))
>  		gic_write_eoir(irqnr);
>  	/*
> @@ -859,6 +884,9 @@ static void gic_cpu_init(void)
>  
>  	gic_cpu_config(rbase, gic_redist_wait_for_rwp);
>  
> +	if (gic_supports_nmi())
> +		ipi_gic_nmi_setup(rbase);
> +
>  	/* initialise system registers */
>  	gic_cpu_sys_reg_init();
>  }
> @@ -1335,6 +1363,13 @@ static int __init gic_init_bases(void __iomem *dist_base,
>  
>  	gic_update_vlpi_properties();
>  
> +	if (gic_prio_masking_enabled()) {
> +		if (!gic_has_group0() || gic_dist_security_disabled())
> +			gic_enable_nmi_support();
> +		else
> +			pr_warn("SCR_EL3.FIQ is cleared, cannot enable use of pseudo-NMIs\n");
> +	}
> +
>  	gic_smp_init();
>  	gic_dist_init();
>  	gic_cpu_init();
> @@ -1345,13 +1380,6 @@ static int __init gic_init_bases(void __iomem *dist_base,
>  		its_cpu_init();
>  	}
>  
> -	if (gic_prio_masking_enabled()) {
> -		if (!gic_has_group0() || gic_dist_security_disabled())
> -			gic_enable_nmi_support();
> -		else
> -			pr_warn("SCR_EL3.FIQ is cleared, cannot enable use of pseudo-NMIs\n");
> -	}
> -
>  	return 0;
>  
>  out_free:
> diff --git a/include/linux/irqchip/arm-gic-common.h b/include/linux/irqchip/arm-gic-common.h
> index 9a1a479a2bf4..d8c973295179 100644
> --- a/include/linux/irqchip/arm-gic-common.h
> +++ b/include/linux/irqchip/arm-gic-common.h
> @@ -18,6 +18,7 @@
>  					(GICD_INT_DEF_PRI << 16) |\
>  					(GICD_INT_DEF_PRI << 8) |\
>  					GICD_INT_DEF_PRI)
> +#define GICD_INT_NMI_PRI	(GICD_INT_DEF_PRI & ~0x80)
>  
>  enum gic_type {
>  	GIC_V2,
> diff --git a/include/linux/irqchip/arm-gic-v3.h b/include/linux/irqchip/arm-gic-v3.h
> index c848a7cc502e..dc1c418229e7 100644
> --- a/include/linux/irqchip/arm-gic-v3.h
> +++ b/include/linux/irqchip/arm-gic-v3.h
> @@ -606,6 +606,7 @@ int its_cpu_init(void);
>  int its_init(struct fwnode_handle *handle, struct rdists *rdists,
>  	     struct irq_domain *domain);
>  int mbi_init(struct fwnode_handle *fwnode, struct irq_domain *parent);
> +void gic_sgi_set_prio(void __iomem *base, u32 irqnr, u8 prio);

This is a bit too generic to expose (even if it is not visible to modules):

- Callers of this function should have at least a way to check whether
the interrupt is enabled and, if it is, a way to disable it before
modifying its priority

- Even if the name contains "sgi", nothing is preventing from using this
to modify priority of PPIs and SPIs if irqnr >= 16.

- The caller can give any priority it wants when there are only two
priorities the GICv3 driver correctly handles correctly. Whatever gets
exposed outside of the driver should only allow to switch between those
two priorities.


A cleaner way to do what your series tries to achieve might be to have
arm64 IPI use the kernel IRQ allocation API so it can reuse what was
done for NMIs.

Thanks,

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
