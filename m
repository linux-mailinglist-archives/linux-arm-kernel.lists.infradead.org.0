Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0016180CF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 22:04:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AUdIgA0XPXnI6VoIyzhIQ6Kmn/TxQP6vLHZSPiLtp74=; b=HSfg/ukitw5behnonczQFBBkp
	dQgH9n/yv4qMrW7SEXSk88gzIHUYFNK5kLm5u8wIRoxMYorWDB9wwZwvkQAOOdA1IjGs88dlY9J5h
	UUt0rv2nDkEcZ3dmA+rXK+oaDGexAIhlgB4NoYjwpXYlgeybMbFUKfJn9fdyZDKYykSUlWBG2Zgar
	CJPpuZHdyJneXAESa0g0ZlcT2tncmc4QYHkA5kJrI2jtbRS10F3yAr3WiVA2kAAC0rcpVyrsTpHnD
	cu+cwEyo+KgicZqRLYyEb9JiNAkHeIGMIjuDVtGGI7X0S/17Pff132J/Hjb+MrwsU0j6t7AP6Orct
	viwjDznhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOSne-0001PO-25; Wed, 08 May 2019 20:04:22 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOSnW-0001O3-C6
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 20:04:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 44555374;
 Wed,  8 May 2019 13:04:11 -0700 (PDT)
Received: from [192.168.100.241] (usa-sjc-mx-foss1.foss.arm.com
 [217.140.101.70])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3B3CD3F575;
 Wed,  8 May 2019 13:04:10 -0700 (PDT)
Subject: Re: [PATCH v3 4/5] arm_pmu: acpi: spe: Add initial MADT/SPE probing
To: John Garry <john.garry@huawei.com>, linux-arm-kernel@lists.infradead.org
References: <20190503232407.37195-1-jeremy.linton@arm.com>
 <20190503232407.37195-5-jeremy.linton@arm.com>
 <dbb1312e-a2fb-4d75-03dd-bbaabdb647b4@huawei.com>
From: Jeremy Linton <jeremy.linton@arm.com>
Message-ID: <c42e3d8a-51fa-ea0c-6733-0e133050cdfe@arm.com>
Date: Wed, 8 May 2019 15:04:02 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <dbb1312e-a2fb-4d75-03dd-bbaabdb647b4@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_130414_426821_BA876117 
X-CRM114-Status: GOOD (  28.67  )
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, will.deacon@arm.com,
 sudeep.holla@arm.com, rjw@rjwysocki.net, linuxarm@huawei.com,
 linux-acpi@vger.kernel.org, catalin.marinas@arm.com, lenb@kernel.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Thanks for taking a look at this,

On 5/8/19 6:18 AM, John Garry wrote:
e> On 04/05/2019 00:24, Jeremy Linton wrote:
>> ACPI 6.3 adds additional fields to the MADT GICC
>> structure to describe SPE PPI's. We pick these out
>> of the cached reference to the madt_gicc structure
>> similarly to the core PMU code. We then create a platform
>> device referring to the IRQ and let the user/module loader
>> decide whether to load the SPE driver.
>>
>> Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
>> ---
>> =A0arch/arm64/include/asm/acpi.h |=A0 3 ++
>> =A0drivers/perf/Kconfig=A0=A0=A0=A0=A0=A0=A0=A0=A0 |=A0 5 +++
>> =A0drivers/perf/arm_pmu_acpi.c=A0=A0 | 76 ++++++++++++++++++++++++++++++=
+++++
>> =A0include/linux/perf/arm_pmu.h=A0 |=A0 2 +
>> =A04 files changed, 86 insertions(+)
>>
>> diff --git a/arch/arm64/include/asm/acpi.h =

>> b/arch/arm64/include/asm/acpi.h
>> index 7628efbe6c12..d10399b9f998 100644
>> --- a/arch/arm64/include/asm/acpi.h
>> +++ b/arch/arm64/include/asm/acpi.h
>> @@ -41,6 +41,9 @@
>> =A0=A0=A0=A0 (!(entry) || (entry)->header.length < ACPI_MADT_GICC_MIN_LE=
NGTH || \
>> =A0=A0=A0=A0 (unsigned long)(entry) + (entry)->header.length > (end))
>>
>> +#define ACPI_MADT_GICC_SPE=A0 (ACPI_OFFSET(struct =

>> acpi_madt_generic_interrupt, \
>> +=A0=A0=A0 spe_interrupt) + sizeof(u16))
>> +
>> =A0/* Basic configuration for ACPI */
>> =A0#ifdef=A0=A0=A0 CONFIG_ACPI
>> =A0pgprot_t __acpi_get_mem_attribute(phys_addr_t addr);
>> diff --git a/drivers/perf/Kconfig b/drivers/perf/Kconfig
>> index af9bc178495d..bc2647c64c9d 100644
>> --- a/drivers/perf/Kconfig
>> +++ b/drivers/perf/Kconfig
>> @@ -52,6 +52,11 @@ config ARM_PMU_ACPI
>> =A0=A0=A0=A0 depends on ARM_PMU && ACPI
>> =A0=A0=A0=A0 def_bool y
>>
>> +config ARM_SPE_ACPI
> =

> Is it possible to just use this check in arm_pmu_acpi.c instead, to =

> avoid introducing another config here:
> =

> if defined(CONFIG_ARM_SPE_PMU)

I'm sure it works, if this is preferred, sure..


> =

>> +=A0=A0=A0 depends on ARM_PMU_ACPI && ARM_SPE_PMU
>> +=A0=A0=A0 def_bool y
>> +
>> +
> =

> nit: extra line
> =

>> =A0config ARM_DSU_PMU
>> =A0=A0=A0=A0 tristate "ARM DynamIQ Shared Unit (DSU) PMU"
>> =A0=A0=A0=A0 depends on ARM64
>> diff --git a/drivers/perf/arm_pmu_acpi.c b/drivers/perf/arm_pmu_acpi.c
>> index 0f197516d708..b0244e1e8c91 100644
>> --- a/drivers/perf/arm_pmu_acpi.c
>> +++ b/drivers/perf/arm_pmu_acpi.c
>> @@ -74,6 +74,80 @@ static void arm_pmu_acpi_unregister_irq(int cpu)
>> =A0=A0=A0=A0 acpi_unregister_gsi(gsi);
>> =A0}
>>
>> +#ifdef CONFIG_ARM_SPE_ACPI
>> +static struct resource spe_resources[] =3D {
>> +=A0=A0=A0 {
>> +=A0=A0=A0=A0=A0=A0=A0 /* irq */
>> +=A0=A0=A0=A0=A0=A0=A0 .flags=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D IORESOURCE_=
IRQ,
>> +=A0=A0=A0 }
>> +};
>> +
>> +static struct platform_device spe_dev =3D {
>> +=A0=A0=A0 .name =3D ARMV8_SPE_PDEV_NAME,
>> +=A0=A0=A0 .id =3D -1,
>> +=A0=A0=A0 .resource =3D spe_resources,
>> +=A0=A0=A0 .num_resources =3D ARRAY_SIZE(spe_resources)
>> +};
>> +
>> +/*
>> + * For lack of a better place, hook the normal PMU MADT walk
>> + * and create a SPE device if we detect a recent MADT with
>> + * a homogeneous PPI mapping.
>> + */
>> +static int arm_spe_acpi_register_device(void)
>> +{
>> +=A0=A0=A0 int cpu, ret, irq;
>> +=A0=A0=A0 int hetid;
>  > nit: not sure why you use multiple lines here

Functional grouping, but I should probably re-arrange them...


> =

>> +=A0=A0=A0 u16 gsi =3D 0;
>> +=A0=A0=A0 bool first =3D true;
>> +
> =

> nit: extra line, and gicc could be declared within the loop in which =

> it's used to limit scope.
> =

>> +=A0=A0=A0 struct acpi_madt_generic_interrupt *gicc;
>> +
>> +=A0=A0=A0 /*
>> +=A0=A0=A0=A0 * sanity check all the GICC tables for the same interrupt =
number
>> +=A0=A0=A0=A0 * for now we only support homogeneous ACPI/SPE machines.
>> +=A0=A0=A0=A0 */
>> +=A0=A0=A0 for_each_possible_cpu(cpu) {
>> +=A0=A0=A0=A0=A0=A0=A0 gicc =3D acpi_cpu_get_madt_gicc(cpu);
>> +
>> +=A0=A0=A0=A0=A0=A0=A0 if (gicc->header.length < ACPI_MADT_GICC_SPE)
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return -ENODEV;
>> +=A0=A0=A0=A0=A0=A0=A0 if (first) {
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 gsi =3D gicc->spe_interrupt;
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (!gsi)
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return -ENODEV;
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 hetid =3D find_acpi_cpu_topology_hete=
ro_id(cpu);
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 first =3D false;
>> +=A0=A0=A0=A0=A0=A0=A0 } else if ((gsi !=3D gicc->spe_interrupt) ||
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 (hetid !=3D find_acpi_cpu_to=
pology_hetero_id(cpu))) {
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 pr_warn("ACPI: SPE must be homogeneou=
s\n");
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return -EINVAL;
>> +=A0=A0=A0=A0=A0=A0=A0 }
>> +=A0=A0=A0 }
>> +
>> +=A0=A0=A0 irq =3D acpi_register_gsi(NULL, gsi, ACPI_LEVEL_SENSITIVE,
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ACPI_ACTIVE_HIGH);
>> +=A0=A0=A0 if (irq < 0) {
> =

> is irq =3D=3D 0 a valid Linux IRQ number? From checking =

> irq_create_fw_spec_mapping(), it does not seem to be.

I think this is a bit of a trick question, acpi_register_gsi's =

commented/implementations/etc seem to assume that 0 may be a valid =

interrupt, for example

"
  * Returns: a valid linux IRQ number on success
  *          -EINVAL on failure
"

And various pieces of code have >=3D0  valid IRQ checks. So... I don't =

think its a problem written this way. It leaves the door open for a =

possible 0 despite that likely not being a valid interrupt.. :)


> =

>> +=A0=A0=A0=A0=A0=A0=A0 pr_warn("ACPI: SPE Unable to register interrupt: =
%d\n", gsi);
>> +=A0=A0=A0=A0=A0=A0=A0 return irq;
>> +=A0=A0=A0 }
>> +
>> +=A0=A0=A0 spe_resources[0].start =3D irq;
>> +=A0=A0=A0 ret =3D platform_device_register(&spe_dev);
>> +=A0=A0=A0 if (ret < 0) {
>> +=A0=A0=A0=A0=A0=A0=A0 pr_warn("ACPI: SPE: Unable to register device\n");
>> +=A0=A0=A0=A0=A0=A0=A0 acpi_unregister_gsi(gsi);
>> +=A0=A0=A0 }
>> +
>> +=A0=A0=A0 return ret;
>> +}
>> +#else
>> +static inline int arm_spe_acpi_register_device(void)
>> +{
>> +=A0=A0=A0 return -ENODEV;
>> +}
>> +#endif /* CONFIG_ARM_SPE_ACPI */
>> +
>> =A0static int arm_pmu_acpi_parse_irqs(void)
>> =A0{
>> =A0=A0=A0=A0 int irq, cpu, irq_cpu, err;
>> @@ -279,6 +353,8 @@ static int arm_pmu_acpi_init(void)
>> =A0=A0=A0=A0 if (acpi_disabled)
>> =A0=A0=A0=A0=A0=A0=A0=A0 return 0;
>>
>> +=A0=A0=A0 arm_spe_acpi_register_device(); /* failures are expected */
>> +
>> =A0=A0=A0=A0 ret =3D arm_pmu_acpi_parse_irqs();
>> =A0=A0=A0=A0 if (ret)
>> =A0=A0=A0=A0=A0=A0=A0=A0 return ret;
>> diff --git a/include/linux/perf/arm_pmu.h b/include/linux/perf/arm_pmu.h
>> index 4641e850b204..784bc58f165a 100644
>> --- a/include/linux/perf/arm_pmu.h
>> +++ b/include/linux/perf/arm_pmu.h
>> @@ -175,4 +175,6 @@ void armpmu_free_irq(int irq, int cpu);
>>
>> =A0#endif /* CONFIG_ARM_PMU */
>>
>> +#define ARMV8_SPE_PDEV_NAME "arm,spe-v1"
>> +
>> =A0#endif /* __ARM_PMU_H__ */
>>
> =

> Thanks!
> =

> =

> =



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
