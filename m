Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4D74A886
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 19:36:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MJ3JxOsLwdqpTC8cUrqTdU1xsTXZ2cFVw3wkXftwUII=; b=G+mQ+GCSPiAWQ2
	c09bnTPHfx0MOdjT6Udq/ipw77JHNsLCkXmj9iiotIkWTRtRQAT/EbEF7s11imZ4fD3eWCs90t6gL
	tui+PBLOcRMBWeqoKyLNbCrBf4tmf64r5tugmSWpSYhZzjXrxddgCSyrPyFJRYIENBboBlhEsCMFp
	QHPw4yxa4IBZvDD1sCzJLpYvVF2BCHF3lc3TjeAX6g6kV5YByF4aCcoddNXy6CaENZpI4OatIoPGj
	FrMLE63REav/L0iZKNyNMrIQr7UmQvnDoheyiXhkMSJzbB0VYyoIkHgN3rBfhgdXtRuPo1Kzfb+wv
	XlgIKfFex3c0Jd+gerFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdI1x-0006Nv-CF; Tue, 18 Jun 2019 17:36:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdI1m-0006M0-7m
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 17:36:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8A7BE344;
 Tue, 18 Jun 2019 10:36:13 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 356983F738;
 Tue, 18 Jun 2019 10:36:12 -0700 (PDT)
Date: Tue, 18 Jun 2019 18:36:07 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Jeremy Linton <jeremy.linton@arm.com>
Subject: Re: [PATCH 3/4] arm_pmu: acpi: spe: Add initial MADT/SPE probing
Message-ID: <20190618173607.GA22558@e121166-lin.cambridge.arm.com>
References: <20190615010910.33921-1-jeremy.linton@arm.com>
 <20190615010910.33921-4-jeremy.linton@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190615010910.33921-4-jeremy.linton@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_103614_372576_7A9AB8FB 
X-CRM114-Status: GOOD (  24.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, will.deacon@arm.com, sudeep.holla@arm.com,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org,
 catalin.marinas@arm.com, linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 08:09:09PM -0500, Jeremy Linton wrote:
> ACPI 6.3 adds additional fields to the MADT GICC
> structure to describe SPE PPI's. We pick these out
> of the cached reference to the madt_gicc structure
> similarly to the core PMU code. We then create a platform
> device referring to the IRQ and let the user/module loader
> decide whether to load the SPE driver.
> 
> Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
> ---
>  arch/arm64/include/asm/acpi.h |  3 ++
>  drivers/perf/arm_pmu_acpi.c   | 75 +++++++++++++++++++++++++++++++++++
>  include/linux/perf/arm_pmu.h  |  2 +
>  3 files changed, 80 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/acpi.h b/arch/arm64/include/asm/acpi.h
> index 7628efbe6c12..d10399b9f998 100644
> --- a/arch/arm64/include/asm/acpi.h
> +++ b/arch/arm64/include/asm/acpi.h
> @@ -41,6 +41,9 @@
>  	(!(entry) || (entry)->header.length < ACPI_MADT_GICC_MIN_LENGTH || \
>  	(unsigned long)(entry) + (entry)->header.length > (end))
>  
> +#define ACPI_MADT_GICC_SPE  (ACPI_OFFSET(struct acpi_madt_generic_interrupt, \
> +	spe_interrupt) + sizeof(u16))
> +

Nit: Do we really need this to be in a header file ?

>  /* Basic configuration for ACPI */
>  #ifdef	CONFIG_ACPI
>  pgprot_t __acpi_get_mem_attribute(phys_addr_t addr);
> diff --git a/drivers/perf/arm_pmu_acpi.c b/drivers/perf/arm_pmu_acpi.c
> index 0f197516d708..f5df100bc4f4 100644
> --- a/drivers/perf/arm_pmu_acpi.c
> +++ b/drivers/perf/arm_pmu_acpi.c
> @@ -74,6 +74,79 @@ static void arm_pmu_acpi_unregister_irq(int cpu)
>  	acpi_unregister_gsi(gsi);
>  }
>  
> +#if IS_ENABLED(CONFIG_ARM_SPE_PMU)
> +static struct resource spe_resources[] = {
> +	{
> +		/* irq */
> +		.flags          = IORESOURCE_IRQ,
> +	}
> +};
> +
> +static struct platform_device spe_dev = {
> +	.name = ARMV8_SPE_PDEV_NAME,
> +	.id = -1,
> +	.resource = spe_resources,
> +	.num_resources = ARRAY_SIZE(spe_resources)
> +};
> +
> +/*
> + * For lack of a better place, hook the normal PMU MADT walk
> + * and create a SPE device if we detect a recent MADT with
> + * a homogeneous PPI mapping.
> + */
> +static int arm_spe_acpi_register_device(void)
> +{
> +	int cpu, hetid, irq, ret;
> +	bool first = true;
> +	u16 gsi = 0;
> +
> +	/*
> +	 * sanity check all the GICC tables for the same interrupt number
> +	 * for now we only support homogeneous ACPI/SPE machines.
> +	 */
> +	for_each_possible_cpu(cpu) {
> +		struct acpi_madt_generic_interrupt *gicc;
> +
> +		gicc = acpi_cpu_get_madt_gicc(cpu);
> +		if (gicc->header.length < ACPI_MADT_GICC_SPE)
> +			return -ENODEV;
> +
> +		if (first) {
> +			gsi = gicc->spe_interrupt;
> +			if (!gsi)
> +				return -ENODEV;
> +			hetid = find_acpi_cpu_topology_hetero_id(cpu);
> +			first = false;
> +		} else if ((gsi != gicc->spe_interrupt) ||
> +			   (hetid != find_acpi_cpu_topology_hetero_id(cpu))) {
> +			pr_warn("ACPI: SPE must be homogeneous\n");
> +			return -EINVAL;
> +		}
> +	}
> +
> +	irq = acpi_register_gsi(NULL, gsi, ACPI_LEVEL_SENSITIVE,
> +				ACPI_ACTIVE_HIGH);
> +	if (irq < 0) {
> +		pr_warn("ACPI: SPE Unable to register interrupt: %d\n", gsi);
> +		return irq;
> +	}
> +
> +	spe_resources[0].start = irq;
> +	ret = platform_device_register(&spe_dev);
> +	if (ret < 0) {
> +		pr_warn("ACPI: SPE: Unable to register device\n");
> +		acpi_unregister_gsi(gsi);
> +	}
> +
> +	return ret;
> +}
> +#else
> +static inline int arm_spe_acpi_register_device(void)
> +{
> +	return -ENODEV;
> +}
> +#endif /* CONFIG_ARM_SPE_PMU */
> +
>  static int arm_pmu_acpi_parse_irqs(void)
>  {
>  	int irq, cpu, irq_cpu, err;
> @@ -279,6 +352,8 @@ static int arm_pmu_acpi_init(void)
>  	if (acpi_disabled)
>  		return 0;
>  
> +	arm_spe_acpi_register_device(); /* failures are expected */

Sounds ominous and it is false, ACPI never fails :)

Nit: if we don't check the return value what's the point of
returning it.

Nothing problematic, if you manage to update the code before
merging it is a plus.

Reviewed-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>

>  	ret = arm_pmu_acpi_parse_irqs();
>  	if (ret)
>  		return ret;
> diff --git a/include/linux/perf/arm_pmu.h b/include/linux/perf/arm_pmu.h
> index 4641e850b204..784bc58f165a 100644
> --- a/include/linux/perf/arm_pmu.h
> +++ b/include/linux/perf/arm_pmu.h
> @@ -175,4 +175,6 @@ void armpmu_free_irq(int irq, int cpu);
>  
>  #endif /* CONFIG_ARM_PMU */
>  
> +#define ARMV8_SPE_PDEV_NAME "arm,spe-v1"
> +
>  #endif /* __ARM_PMU_H__ */
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
