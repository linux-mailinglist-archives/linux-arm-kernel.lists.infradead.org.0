Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D4817695
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 13:18:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BKSSsNTAVU9qXtaJsz1dBtSJtMgRVq1g/u5HfbPSTEY=; b=P7qYOMpvM889oH88u1AsBo9Qf
	+t30XUuqZ776YE9ve2Vx5N+5MpbnM4HdSyJx01myTWpOAvrF82aTkujlkYl9sbSUbwUPGHVFLksZI
	zV5qnSU62+1iIbymmYSwgykz8cAVKkfwbvI7t/zAH1fGspzEM/3fkffMfyeK8+aid8cqATXrwJl0S
	LGOBwtwD/5l7DqxlqmW331PJvF/70WBoiA0d3pMZME3V4+rvs54FSH1UannwX2ic8CKSiSjHRTIf4
	CsmjcPzSnTBb709BqsA57amNIYX1mh2R01i7ROUt8FrA5LdjDGbHZy5/oAHj4tw7Ke830+NQt0Fup
	Zmw6Iczjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOKb3-0002Uy-Uq; Wed, 08 May 2019 11:18:49 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOKav-0002UY-O8
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 11:18:43 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id DD8FBDD16F42A45B7508;
 Wed,  8 May 2019 19:18:30 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.238) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.439.0;
 Wed, 8 May 2019 19:18:19 +0800
Subject: Re: [PATCH v3 4/5] arm_pmu: acpi: spe: Add initial MADT/SPE probing
To: Jeremy Linton <jeremy.linton@arm.com>,
 <linux-arm-kernel@lists.infradead.org>
References: <20190503232407.37195-1-jeremy.linton@arm.com>
 <20190503232407.37195-5-jeremy.linton@arm.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <dbb1312e-a2fb-4d75-03dd-bbaabdb647b4@huawei.com>
Date: Wed, 8 May 2019 12:18:13 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <20190503232407.37195-5-jeremy.linton@arm.com>
X-Originating-IP: [10.202.227.238]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_041842_010643_1A56722F 
X-CRM114-Status: GOOD (  25.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, will.deacon@arm.com,
 sudeep.holla@arm.com, rjw@rjwysocki.net, linuxarm@huawei.com,
 linux-acpi@vger.kernel.org, catalin.marinas@arm.com, lenb@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/05/2019 00:24, Jeremy Linton wrote:
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
>  drivers/perf/Kconfig          |  5 +++
>  drivers/perf/arm_pmu_acpi.c   | 76 +++++++++++++++++++++++++++++++++++
>  include/linux/perf/arm_pmu.h  |  2 +
>  4 files changed, 86 insertions(+)
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
>  /* Basic configuration for ACPI */
>  #ifdef	CONFIG_ACPI
>  pgprot_t __acpi_get_mem_attribute(phys_addr_t addr);
> diff --git a/drivers/perf/Kconfig b/drivers/perf/Kconfig
> index af9bc178495d..bc2647c64c9d 100644
> --- a/drivers/perf/Kconfig
> +++ b/drivers/perf/Kconfig
> @@ -52,6 +52,11 @@ config ARM_PMU_ACPI
>  	depends on ARM_PMU && ACPI
>  	def_bool y
>
> +config ARM_SPE_ACPI

Is it possible to just use this check in arm_pmu_acpi.c instead, to 
avoid introducing another config here:

if defined(CONFIG_ARM_SPE_PMU)

> +	depends on ARM_PMU_ACPI && ARM_SPE_PMU
> +	def_bool y
> +
> +

nit: extra line

>  config ARM_DSU_PMU
>  	tristate "ARM DynamIQ Shared Unit (DSU) PMU"
>  	depends on ARM64
> diff --git a/drivers/perf/arm_pmu_acpi.c b/drivers/perf/arm_pmu_acpi.c
> index 0f197516d708..b0244e1e8c91 100644
> --- a/drivers/perf/arm_pmu_acpi.c
> +++ b/drivers/perf/arm_pmu_acpi.c
> @@ -74,6 +74,80 @@ static void arm_pmu_acpi_unregister_irq(int cpu)
>  	acpi_unregister_gsi(gsi);
>  }
>
> +#ifdef CONFIG_ARM_SPE_ACPI
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
> +	int cpu, ret, irq;
> +	int hetid;

nit: not sure why you use multiple lines here

> +	u16 gsi = 0;
> +	bool first = true;
> +

nit: extra line, and gicc could be declared within the loop in which 
it's used to limit scope.

> +	struct acpi_madt_generic_interrupt *gicc;
> +
> +	/*
> +	 * sanity check all the GICC tables for the same interrupt number
> +	 * for now we only support homogeneous ACPI/SPE machines.
> +	 */
> +	for_each_possible_cpu(cpu) {
> +		gicc = acpi_cpu_get_madt_gicc(cpu);
> +
> +		if (gicc->header.length < ACPI_MADT_GICC_SPE)
> +			return -ENODEV;
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

is irq == 0 a valid Linux IRQ number? From checking 
irq_create_fw_spec_mapping(), it does not seem to be.

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
> +#endif /* CONFIG_ARM_SPE_ACPI */
> +
>  static int arm_pmu_acpi_parse_irqs(void)
>  {
>  	int irq, cpu, irq_cpu, err;
> @@ -279,6 +353,8 @@ static int arm_pmu_acpi_init(void)
>  	if (acpi_disabled)
>  		return 0;
>
> +	arm_spe_acpi_register_device(); /* failures are expected */
> +
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
>

Thanks!




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
