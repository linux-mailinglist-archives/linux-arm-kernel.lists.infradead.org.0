Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 137E01D7FFA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 19:21:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w02npEIF7AtW/MGSxNSILYCy/78nTasPgODQjV4GVnc=; b=VQeXyR1d622I0f
	8xzAb6ieCLp4ED8HhAbtFQb3nLpsYQ8lIRIREYTYMLWEWsZeFVDNOd1XgvE5k/d5aQCUJmeIdt5RV
	nm3/vzXhiwJ+EH0mYAmuWp8ceHU+n1LZJpZ8lWWw7eiwV1E+zznFZ2P+VFRfADYLm5t2NgY2XFPxq
	k+jW/yxvG9djVuLVo1Xz6IYD0IAWThpvCsefv1ua683x5Itl8SW8p1CGOd5+hCiuDC3arjFYc9/Ea
	MOCWZ4551cjcQwq0/fBA1zkbhecGjZE8y7NFrdwObN5ZuyydlUReVN+rLPxiC0Q7NihrjrdZNo/5k
	cN1N/C2nA9HezpEdFpRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jajSX-0006zt-0R; Mon, 18 May 2020 17:21:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jajSL-0006zC-Id
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 17:21:39 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0F7602070A;
 Mon, 18 May 2020 17:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589822497;
 bh=r5GpIZm99JIcJLaW6N8soEyvPIfJsbLCLSFGc1rY7XI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RdQQF5HSiiTdxmfa2jxGtQZABy79/T5D7pilxBhd9EF/9DEQ/5cNBPaFbSspQkGQZ
 h7LepYdnHzb8rYcXfYdUi/11hv/A9yj/nD1neWb6qD8Iw4SB0Ez4tjnV71pwM6KxGy
 CwOwBf3+6PM+z5C+Q2PgjNqrUB/ZUFWtxUa3sjDQ=
Date: Mon, 18 May 2020 18:21:32 +0100
From: Will Deacon <will@kernel.org>
To: Tuan Phan <tuanphan@os.amperecomputing.com>, suzuki.poulose@arm.com
Subject: Re: [PATCH v2] perf: arm_dsu: Support DSU ACPI devices.
Message-ID: <20200518172132.GA2601@willie-the-truck>
References: <1589229160-18558-1-git-send-email-tuanphan@os.amperecomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589229160-18558-1-git-send-email-tuanphan@os.amperecomputing.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_102137_654330_FAD208DD 
X-CRM114-Status: GOOD (  23.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, patches@amperecomputing.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 01:32:40PM -0700, Tuan Phan wrote:
> Add ACPI node probing device support. Each DSU ACPI node
> defines a "cpus" package with a per cpu MPIDR element.
> 
> Signed-off-by: Tuan Phan <tuanphan@os.amperecomputing.com>
> ---
> Changes in v2:
> - Removed IRQF_SHARED.
> - Fixed ACPI runtime detection.
> 
> The ACPI binding spec for DSU ACPI node is under beta and located
> in ARM server group under project "ACPI on ARM".
> 
>  drivers/perf/arm_dsu_pmu.c | 71 ++++++++++++++++++++++++++++++++++++++++------
>  1 file changed, 63 insertions(+), 8 deletions(-)

I've added Suzuki to cc, because I'd like his ack on this before I merge it.

Thanks,

Will

> diff --git a/drivers/perf/arm_dsu_pmu.c b/drivers/perf/arm_dsu_pmu.c
> index 70968c8..784d177 100644
> --- a/drivers/perf/arm_dsu_pmu.c
> +++ b/drivers/perf/arm_dsu_pmu.c
> @@ -11,6 +11,7 @@
>  #define DRVNAME		PMUNAME "_pmu"
>  #define pr_fmt(fmt)	DRVNAME ": " fmt
>  
> +#include <linux/acpi.h>
>  #include <linux/bitmap.h>
>  #include <linux/bitops.h>
>  #include <linux/bug.h>
> @@ -603,18 +604,21 @@ static struct dsu_pmu *dsu_pmu_alloc(struct platform_device *pdev)
>  }
>  
>  /**
> - * dsu_pmu_dt_get_cpus: Get the list of CPUs in the cluster.
> + * dsu_pmu_dt_get_cpus: Get the list of CPUs in the cluster
> + * from device tree.
>   */
> -static int dsu_pmu_dt_get_cpus(struct device_node *dev, cpumask_t *mask)
> +static int dsu_pmu_dt_get_cpus(struct platform_device *pdev)
>  {
>  	int i = 0, n, cpu;
>  	struct device_node *cpu_node;
> +	struct dsu_pmu *dsu_pmu =
> +		(struct dsu_pmu *) platform_get_drvdata(pdev);
>  
> -	n = of_count_phandle_with_args(dev, "cpus", NULL);
> +	n = of_count_phandle_with_args(pdev->dev.of_node, "cpus", NULL);
>  	if (n <= 0)
>  		return -ENODEV;
>  	for (; i < n; i++) {
> -		cpu_node = of_parse_phandle(dev, "cpus", i);
> +		cpu_node = of_parse_phandle(pdev->dev.of_node, "cpus", i);
>  		if (!cpu_node)
>  			break;
>  		cpu = of_cpu_node_to_id(cpu_node);
> @@ -626,11 +630,54 @@ static int dsu_pmu_dt_get_cpus(struct device_node *dev, cpumask_t *mask)
>  		 */
>  		if (cpu < 0)
>  			continue;
> -		cpumask_set_cpu(cpu, mask);
> +		cpumask_set_cpu(cpu, &dsu_pmu->associated_cpus);
>  	}
>  	return 0;
>  }
>  
> +/**
> + * dsu_pmu_acpi_get_cpus: Get the list of CPUs in the cluster
> + * from ACPI.
> + */
> +static int dsu_pmu_acpi_get_cpus(struct platform_device *pdev)
> +{
> +	int i, cpu, ret;
> +	const union acpi_object *obj;
> +	struct acpi_device *adev = ACPI_COMPANION(&pdev->dev);
> +	struct dsu_pmu *dsu_pmu =
> +		(struct dsu_pmu *) platform_get_drvdata(pdev);
> +
> +	ret = acpi_dev_get_property(adev, "cpus", ACPI_TYPE_PACKAGE, &obj);
> +	if (ret < 0)
> +		return ret;
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
> +}
> +
> +static int dsu_pmu_platform_get_cpus(struct platform_device *pdev)
> +{
> +	int ret = -ENOENT;
> +	struct fwnode_handle *fwnode = dev_fwnode(&pdev->dev);
> +
> +	if (IS_ERR_OR_NULL(fwnode))
> +		return ret;
> +
> +	if (is_of_node(fwnode))
> +		ret = dsu_pmu_dt_get_cpus(pdev);
> +	else if (is_acpi_device_node(fwnode))
> +		ret = dsu_pmu_acpi_get_cpus(pdev);
> +
> +	return ret;
> +}
> +
>  /*
>   * dsu_pmu_probe_pmu: Probe the PMU details on a CPU in the cluster.
>   */
> @@ -683,7 +730,9 @@ static int dsu_pmu_device_probe(struct platform_device *pdev)
>  	if (IS_ERR(dsu_pmu))
>  		return PTR_ERR(dsu_pmu);
>  
> -	rc = dsu_pmu_dt_get_cpus(pdev->dev.of_node, &dsu_pmu->associated_cpus);
> +	platform_set_drvdata(pdev, dsu_pmu);
> +
> +	rc = dsu_pmu_platform_get_cpus(pdev);
>  	if (rc) {
>  		dev_warn(&pdev->dev, "Failed to parse the CPUs\n");
>  		return rc;
> @@ -707,7 +756,6 @@ static int dsu_pmu_device_probe(struct platform_device *pdev)
>  	}
>  
>  	dsu_pmu->irq = irq;
> -	platform_set_drvdata(pdev, dsu_pmu);
>  	rc = cpuhp_state_add_instance(dsu_pmu_cpuhp_state,
>  						&dsu_pmu->cpuhp_node);
>  	if (rc)
> @@ -754,11 +802,19 @@ static const struct of_device_id dsu_pmu_of_match[] = {
>  	{ .compatible = "arm,dsu-pmu", },
>  	{},
>  };
> +MODULE_DEVICE_TABLE(of, dsu_pmu_of_match);
> +
> +static const struct acpi_device_id dsu_pmu_acpi_match[] = {
> +	{ "ARMHD500", 0},
> +	{},
> +};
> +MODULE_DEVICE_TABLE(acpi, dsu_pmu_acpi_match);
>  
>  static struct platform_driver dsu_pmu_driver = {
>  	.driver = {
>  		.name	= DRVNAME,
>  		.of_match_table = of_match_ptr(dsu_pmu_of_match),
> +		.acpi_match_table = ACPI_PTR(dsu_pmu_acpi_match),
>  	},
>  	.probe = dsu_pmu_device_probe,
>  	.remove = dsu_pmu_device_remove,
> @@ -827,7 +883,6 @@ static void __exit dsu_pmu_exit(void)
>  module_init(dsu_pmu_init);
>  module_exit(dsu_pmu_exit);
>  
> -MODULE_DEVICE_TABLE(of, dsu_pmu_of_match);
>  MODULE_DESCRIPTION("Perf driver for ARM DynamIQ Shared Unit");
>  MODULE_AUTHOR("Suzuki K Poulose <suzuki.poulose@arm.com>");
>  MODULE_LICENSE("GPL v2");
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
