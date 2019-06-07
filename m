Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5B4338BA2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 15:28:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+FMOjRIXJESuTjV9WpcQbTL2OaeYJxapFSlNpOn25Ec=; b=Nw18CggAPOJeXB0yEpU8Xijaa
	5+Zjr/kIbgLRWHQGeRHzru8jbKIM7a0kf1/ZZJ+W8TeeQouqFBqR106++UT/Bq2PfTutdHTnsiAwT
	qojDBmK2qhrBQX8YIJi7svvEIuUPVxbKDbtYciobcM4RoejZmhl4mJgqxJEYGRsCb1gofvChTZ030
	KXv+OPMym5+jWzTckfGLT6wHuX2NNYGJSoY+EG9SOh/oDv2RCnAoC7X9bzBH7ecL+thP97P8NYBAO
	6euL2inH4nOXMGtSCfCGdkZps4t0AGJdvuFN7zFQLMLu4zZ0EJ2PYAHLiD1M2MHwP2jAt3YXPgvO7
	hiTniLYiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZEuk-0001SA-ME; Fri, 07 Jun 2019 13:28:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZEuc-0001RJ-3l
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 13:28:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5C74A499;
 Fri,  7 Jun 2019 06:28:05 -0700 (PDT)
Received: from [192.168.100.221] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B2C4D3F96A;
 Fri,  7 Jun 2019 06:28:04 -0700 (PDT)
Subject: Re: [PATCH v3 4/5] arm_pmu: acpi: spe: Add initial MADT/SPE probing
To: Sudeep Holla <sudeep.holla@arm.com>
References: <20190503232407.37195-1-jeremy.linton@arm.com>
 <20190503232407.37195-5-jeremy.linton@arm.com>
 <20190607095729.GD2429@e107155-lin>
From: Jeremy Linton <jeremy.linton@arm.com>
Message-ID: <b4d7d954-5667-c32d-80ae-c45678d3f0e3@arm.com>
Date: Fri, 7 Jun 2019 08:28:04 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190607095729.GD2429@e107155-lin>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_062806_247100_7D486D08 
X-CRM114-Status: GOOD (  24.58  )
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
 john.garry@huawei.com, rjw@rjwysocki.net, linuxarm@huawei.com,
 linux-acpi@vger.kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 6/7/19 4:57 AM, Sudeep Holla wrote:
> On Fri, May 03, 2019 at 06:24:06PM -0500, Jeremy Linton wrote:
>> ACPI 6.3 adds additional fields to the MADT GICC
>> structure to describe SPE PPI's. We pick these out
>> of the cached reference to the madt_gicc structure
>> similarly to the core PMU code. We then create a platform
>> device referring to the IRQ and let the user/module loader
>> decide whether to load the SPE driver.
>>
>> Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
>> ---
>>   arch/arm64/include/asm/acpi.h |  3 ++
>>   drivers/perf/Kconfig          |  5 +++
>>   drivers/perf/arm_pmu_acpi.c   | 76 +++++++++++++++++++++++++++++++++++
>>   include/linux/perf/arm_pmu.h  |  2 +
>>   4 files changed, 86 insertions(+)
>>
>> diff --git a/arch/arm64/include/asm/acpi.h b/arch/arm64/include/asm/acpi.h
>> index 7628efbe6c12..d10399b9f998 100644
>> --- a/arch/arm64/include/asm/acpi.h
>> +++ b/arch/arm64/include/asm/acpi.h
>> @@ -41,6 +41,9 @@
>>   	(!(entry) || (entry)->header.length < ACPI_MADT_GICC_MIN_LENGTH || \
>>   	(unsigned long)(entry) + (entry)->header.length > (end))
>>   
>> +#define ACPI_MADT_GICC_SPE  (ACPI_OFFSET(struct acpi_madt_generic_interrupt, \
>> +	spe_interrupt) + sizeof(u16))
>> +
>>   /* Basic configuration for ACPI */
>>   #ifdef	CONFIG_ACPI
>>   pgprot_t __acpi_get_mem_attribute(phys_addr_t addr);
>> diff --git a/drivers/perf/Kconfig b/drivers/perf/Kconfig
>> index af9bc178495d..bc2647c64c9d 100644
>> --- a/drivers/perf/Kconfig
>> +++ b/drivers/perf/Kconfig
>> @@ -52,6 +52,11 @@ config ARM_PMU_ACPI
>>   	depends on ARM_PMU && ACPI
>>   	def_bool y
>>   
>> +config ARM_SPE_ACPI
>> +	depends on ARM_PMU_ACPI && ARM_SPE_PMU
>> +	def_bool y
>> +
>> +
>>   config ARM_DSU_PMU
>>   	tristate "ARM DynamIQ Shared Unit (DSU) PMU"
>>   	depends on ARM64
>> diff --git a/drivers/perf/arm_pmu_acpi.c b/drivers/perf/arm_pmu_acpi.c
>> index 0f197516d708..b0244e1e8c91 100644
>> --- a/drivers/perf/arm_pmu_acpi.c
>> +++ b/drivers/perf/arm_pmu_acpi.c
>> @@ -74,6 +74,80 @@ static void arm_pmu_acpi_unregister_irq(int cpu)
>>   	acpi_unregister_gsi(gsi);
>>   }
>>   
>> +#ifdef CONFIG_ARM_SPE_ACPI
>> +static struct resource spe_resources[] = {
>> +	{
>> +		/* irq */
>> +		.flags          = IORESOURCE_IRQ,
>> +	}
>> +};
>> +
>> +static struct platform_device spe_dev = {
>> +	.name = ARMV8_SPE_PDEV_NAME,
>> +	.id = -1,
>> +	.resource = spe_resources,
>> +	.num_resources = ARRAY_SIZE(spe_resources)
>> +};
>> +
>> +/*
>> + * For lack of a better place, hook the normal PMU MADT walk
>> + * and create a SPE device if we detect a recent MADT with
>> + * a homogeneous PPI mapping.
>> + */
>> +static int arm_spe_acpi_register_device(void)
>> +{
>> +	int cpu, ret, irq;
>> +	int hetid;
>> +	u16 gsi = 0;
>> +	bool first = true;
>> +
>> +	struct acpi_madt_generic_interrupt *gicc;
>> +
>> +	/*
>> +	 * sanity check all the GICC tables for the same interrupt number
>> +	 * for now we only support homogeneous ACPI/SPE machines.
>> +	 */
>> +	for_each_possible_cpu(cpu) {
>> +		gicc = acpi_cpu_get_madt_gicc(cpu);
>> +
>> +		if (gicc->header.length < ACPI_MADT_GICC_SPE)
>> +			return -ENODEV;
>> +		if (first) {
>> +			gsi = gicc->spe_interrupt;
>> +			if (!gsi)
>> +				return -ENODEV;
>> +			hetid = find_acpi_cpu_topology_hetero_id(cpu);
>> +			first = false;
>> +		} else if ((gsi != gicc->spe_interrupt) ||
>> +			   (hetid != find_acpi_cpu_topology_hetero_id(cpu))) {
> 
> Sorry, I should have noticed this in patch 2 itself. Won't this break for
> multi-socket system ? The hetid in that case will be package id, no ?

Your assuming a PPTT with multiple trees, one for each socket? Yes it 
breaks in that case, and is what I was complaining about in the cover 
letter because there won't be a common node with the IDENTICAL flag set. 
OTOH, I think it works fine for multi-socket given a single tree where 
the root has IDENTICAL set (I did some very light testing on such a 
machine).

I don't think there is a solution to this problem that won't break in 
the case of a heterogeneous machine with multiple sockets populated with 
differing cores.

> 
> Otherwise the patch looks good. 
> 
> --
> Regards,
> Sudeep
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
