Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C3A04A7D6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 19:05:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DvYy+Qs1louFnVLuGYvzKsMFElz24RjzN+xgqYylZA4=; b=kyrAsvMKxBsT1c
	B+zGOXAp/GeLZzStY0mp+9+jUbqCs4xn0yaHTV7ONhXsbRzQKqnpRz9/atsO4G4qF2VVIhu3XvTvp
	xyFWaT9UFmom8v1L6YpXGGP563DSalacOs1lnj+i86+tYrdMvvrP1pCmAF2gBqlsRupPRo3UkwklX
	Xg0BliTvkaIK3iWG30zjkl+m468fvtGkHe1sUknki4OUXqO1sCsbqTkBms/UiXw8QUCPbOkYNhdTC
	23UR2s52wMfn5uJC//MbZ6kaQ5HXMbxjPyK+0DCig7ZfNgRZIOjDgsu7i4COmr68qV0uXg6RJv/ve
	G4ab0Epi+OnizYfloagg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdHYA-0007Ac-Vh; Tue, 18 Jun 2019 17:05:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdHXw-00079t-Vo
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 17:05:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F3905344;
 Tue, 18 Jun 2019 10:05:23 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 83A243F246;
 Tue, 18 Jun 2019 10:05:22 -0700 (PDT)
Date: Tue, 18 Jun 2019 18:05:20 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Jeremy Linton <jeremy.linton@arm.com>
Subject: Re: [PATCH 3/4] arm_pmu: acpi: spe: Add initial MADT/SPE probing
Message-ID: <20190618170520.GB1360@e107155-lin>
References: <20190615010910.33921-1-jeremy.linton@arm.com>
 <20190615010910.33921-4-jeremy.linton@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190615010910.33921-4-jeremy.linton@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_100527_682026_CC555BE0 
X-CRM114-Status: GOOD (  20.24  )
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, will.deacon@arm.com,
 Sudeep Holla <sudeep.holla@arm.com>, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org,
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

OK, after checking ACPI specification again and checking with people
involved in dynamic ACPI table generation, I think my earlier concerns
can be addressed by having a root node in any system(including
multi-socket ones) with IDENTICAL flag set in that root node.

With that note for archiving reasons so that we can refer people to
in future,

Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
