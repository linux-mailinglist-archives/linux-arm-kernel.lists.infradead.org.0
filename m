Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7138918994B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 11:28:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yprHiO13cVaHrFSEeIGmwsn1RN0u6HprlcuKt0yHtw0=; b=c3rnAMlvCVzwJkacyvRfbS2Ds
	PxptlkrdFwvrKF3zM7jKEVMwsXRR0MGQSN+eoZl84NIq//Lq3aGsx27FTCrociWNAogPlgFzi0cg0
	f29gz2+Vdvjdn00QlxfXkpgqKvSXsfVoov0g3uCQ735mL8WVPKTVnWsioJFbi+UGjVdVuHdArolYD
	l8h2o/YL+5DfeaUwj/yofCBQHhIsvzh1UHi3VHbuC3CCwUkB1aKBxVwD/l/o3OgBKELxpefIm58Np
	MdpDAdWN/qqSfM2K/1e7gS+jTYXjORPHmh0z3UIjfcPc6X5mCrqBCGPH0UXFmflEWQhcYrOxqgHva
	3Uoix+Org==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEVvb-0001b5-TE; Wed, 18 Mar 2020 10:27:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEVvU-0001aZ-NE
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 10:27:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CA8811FB;
 Wed, 18 Mar 2020 03:27:51 -0700 (PDT)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D95E43F534;
 Wed, 18 Mar 2020 03:27:50 -0700 (PDT)
Subject: Re: [PATCH 2/2] perf: arm_dsu: Support DSU ACPI devices.
To: Tuan Phan <tuanphan@os.amperecomputing.com>
References: <1584491323-31436-1-git-send-email-tuanphan@os.amperecomputing.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <b6d923cd-26a5-fadb-48d2-1b407c678fde@arm.com>
Date: Wed, 18 Mar 2020 10:27:50 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <1584491323-31436-1-git-send-email-tuanphan@os.amperecomputing.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_032752_844738_88BA1693 
X-CRM114-Status: GOOD (  23.06  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, patches@amperecomputing.com,
 Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-03-18 12:28 am, Tuan Phan wrote:
> Add support for probing device from ACPI node.
> Each DSU ACPI node defines "cpus" package which
> each element is the MPIDR of associated cpu.
> 
> Signed-off-by: Tuan Phan <tuanphan@os.amperecomputing.com>
> ---
>   drivers/perf/arm_dsu_pmu.c | 53 +++++++++++++++++++++++++++++++++++++++-------
>   1 file changed, 45 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/perf/arm_dsu_pmu.c b/drivers/perf/arm_dsu_pmu.c
> index 2622900..6ef762c 100644
> --- a/drivers/perf/arm_dsu_pmu.c
> +++ b/drivers/perf/arm_dsu_pmu.c
> @@ -11,6 +11,7 @@
>   #define DRVNAME		PMUNAME "_pmu"
>   #define pr_fmt(fmt)	DRVNAME ": " fmt
>   
> +#include <linux/acpi.h>
>   #include <linux/bitmap.h>
>   #include <linux/bitops.h>
>   #include <linux/bug.h>
> @@ -603,18 +604,22 @@ static struct dsu_pmu *dsu_pmu_alloc(struct platform_device *pdev)
>   }
>   
>   /**
> - * dsu_pmu_dt_get_cpus: Get the list of CPUs in the cluster.
> + * dsu_pmu_get_cpus: Get the list of CPUs in the cluster.
>    */
> -static int dsu_pmu_dt_get_cpus(struct device_node *dev, cpumask_t *mask)
> +static int dsu_pmu_get_cpus(struct platform_device *pdev)
>   {
> +#ifndef CONFIG_ACPI

So this basically disables DT support entirely for distro kernels... no 
thanks.

If generic device properties aren't enough to abstract the differences, 
then create separate DT and ACPI init functions, and dispatch to them 
from probe depending on whether the device has an OF node or an ACPI 
companion. It can't be a build-time decision.

Robin.

> +	/* Get the list of CPUs from device tree */
>   	int i = 0, n, cpu;
>   	struct device_node *cpu_node;
> +	struct dsu_pmu *dsu_pmu =
> +		(struct dsu_pmu *) platform_get_drvdata(pdev);
>   
> -	n = of_count_phandle_with_args(dev, "cpus", NULL);
> +	n = of_count_phandle_with_args(pdev->dev.of_node, "cpus", NULL);
>   	if (n <= 0)
>   		return -ENODEV;
>   	for (; i < n; i++) {
> -		cpu_node = of_parse_phandle(dev, "cpus", i);
> +		cpu_node = of_parse_phandle(pdev->dev.of_node, "cpus", i);
>   		if (!cpu_node)
>   			break;
>   		cpu = of_cpu_node_to_id(cpu_node);
> @@ -626,9 +631,33 @@ static int dsu_pmu_dt_get_cpus(struct device_node *dev, cpumask_t *mask)
>   		 */
>   		if (cpu < 0)
>   			continue;
> -		cpumask_set_cpu(cpu, mask);
> +		cpumask_set_cpu(cpu, &dsu_pmu->associated_cpus);
>   	}
>   	return 0;
> +#else /* CONFIG_ACPI */
> +	int i, cpu, ret;
> +	const union acpi_object *obj;
> +	struct acpi_device *adev = ACPI_COMPANION(&pdev->dev);
> +	struct dsu_pmu *dsu_pmu =
> +		(struct dsu_pmu *) platform_get_drvdata(pdev);
> +
> +	ret = acpi_dev_get_property(adev, "cpus", ACPI_TYPE_ANY, &obj);
> +	if (ret < 0)
> +		return -EINVAL;
> +
> +	if (obj->type != ACPI_TYPE_PACKAGE)
> +		return -EINVAL;
> +
> +	for (i = 0; i < obj->package.count; i++) {
> +		/* Each element is the MPIDR of associated cpu */
> +		for_each_possible_cpu(cpu) {
> +			if (cpu_physical_id(cpu) ==
> +				obj->package.elements[i].integer.value)
> +				cpumask_set_cpu(cpu, &dsu_pmu->associated_cpus);
> +		}
> +	}
> +	return 0;
> +#endif
>   }
>   
>   /*
> @@ -683,7 +712,9 @@ static int dsu_pmu_device_probe(struct platform_device *pdev)
>   	if (IS_ERR(dsu_pmu))
>   		return PTR_ERR(dsu_pmu);
>   
> -	rc = dsu_pmu_dt_get_cpus(pdev->dev.of_node, &dsu_pmu->associated_cpus);
> +	platform_set_drvdata(pdev, dsu_pmu);
> +
> +	rc = dsu_pmu_get_cpus(pdev);
>   	if (rc) {
>   		dev_warn(&pdev->dev, "Failed to parse the CPUs\n");
>   		return rc;
> @@ -707,7 +738,6 @@ static int dsu_pmu_device_probe(struct platform_device *pdev)
>   	}
>   
>   	dsu_pmu->irq = irq;
> -	platform_set_drvdata(pdev, dsu_pmu);
>   	rc = cpuhp_state_add_instance(dsu_pmu_cpuhp_state,
>   						&dsu_pmu->cpuhp_node);
>   	if (rc)
> @@ -754,11 +784,19 @@ static const struct of_device_id dsu_pmu_of_match[] = {
>   	{ .compatible = "arm,dsu-pmu", },
>   	{},
>   };
> +MODULE_DEVICE_TABLE(of, dsu_pmu_of_match);
> +
> +static const struct acpi_device_id dsu_pmu_acpi_match[] = {
> +	{ "ARMHD500", 0},
> +	{},
> +};
> +MODULE_DEVICE_TABLE(acpi, dsu_pmu_acpi_match);
>   
>   static struct platform_driver dsu_pmu_driver = {
>   	.driver = {
>   		.name	= DRVNAME,
>   		.of_match_table = of_match_ptr(dsu_pmu_of_match),
> +		.acpi_match_table = ACPI_PTR(dsu_pmu_acpi_match),
>   	},
>   	.probe = dsu_pmu_device_probe,
>   	.remove = dsu_pmu_device_remove,
> @@ -827,7 +865,6 @@ static void __exit dsu_pmu_exit(void)
>   module_init(dsu_pmu_init);
>   module_exit(dsu_pmu_exit);
>   
> -MODULE_DEVICE_TABLE(of, dsu_pmu_of_match);
>   MODULE_DESCRIPTION("Perf driver for ARM DynamIQ Shared Unit");
>   MODULE_AUTHOR("Suzuki K Poulose <suzuki.poulose@arm.com>");
>   MODULE_LICENSE("GPL v2");
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
