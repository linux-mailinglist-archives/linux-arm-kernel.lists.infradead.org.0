Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1669E18A9EA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 01:41:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sOYj7DWpjEzdkb1cf6dvO3y3oD1IwaHaT2iQKv5YOIc=; b=k8WWvFzBg2eabvJkxxB9kxT9V
	GElU6/Qv8uxB4qn0F+WX/EgP65dddGcbkDpq4D1j4mBmrhS/yYvXOL0CfFY9dqb4KWa7+Nt8ylGfa
	5EVUzF5JwBK6V+RZMnHY2a4Ys1fO2nifXvfOv2TQ/I76jYIpG3aCFBZ97qslw3+uEwmerKOjUK9wA
	PEKCVoOwKGk0diOIJoak8BTyItGPlr/UEl/G16YA/uFFidrEMqO+FZCI4D+Y3At1lwH+BU97tsqGO
	8Bugnp8efKa+Aqvi9d5AIbJzekdeJfyDLnkc8KgXT8o01I97k0Nmd7GdGbaDtSHcpzGzUn6BMPLSk
	nYevu9jtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEjFE-0001uA-K9; Thu, 19 Mar 2020 00:41:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEjF6-0001tG-LH
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 00:41:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B104931B;
 Wed, 18 Mar 2020 17:40:56 -0700 (PDT)
Received: from [10.37.12.148] (unknown [10.37.12.148])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 38AAF3F52E;
 Wed, 18 Mar 2020 17:40:55 -0700 (PDT)
Subject: Re: [PATCH 2/2] perf: arm_dsu: Support DSU ACPI devices.
To: tuanphan@os.amperecomputing.com
References: <1584491323-31436-1-git-send-email-tuanphan@os.amperecomputing.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <a571cf7e-c2a5-e8f8-e782-8087249143b0@arm.com>
Date: Thu, 19 Mar 2020 00:45:37 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <1584491323-31436-1-git-send-email-tuanphan@os.amperecomputing.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_174100_789304_15CCAD84 
X-CRM114-Status: GOOD (  24.50  )
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
Cc: mark.rutland@arm.com, linux-kernel@vger.kernel.org, sudeep.holla@arm.com,
 patches@amperecomputing.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,


Please find my comments below.

On 03/18/2020 12:28 AM, Tuan Phan wrote:
> Add support for probing device from ACPI node.
> Each DSU ACPI node defines "cpus" package which
> each element is the MPIDR of associated cpu.
> 
> Signed-off-by: Tuan Phan <tuanphan@os.amperecomputing.com>
> ---
>   drivers/perf/arm_dsu_pmu.c | 53 +++++++++++++++++++++++++++++++++++++++-------
>   1 file changed, 45 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/perf/arm_dsu_pmu.c b/drivers/perf/arm_dsu_pmu.c Tua
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
> +	/* Get the list of CPUs from device tree */

What if we have a kernel with both:

CONFIG_OF=y
CONFIG_ACPI=y

and boot the kernel on a system with DT ? In other words, the decision
to choose the DT vs ACPI must be runtime decision, not buildtime.

See 
drivers/hwtracing/coresight/coresight-platform.c:coresight_get_platform_data() 
for an example.

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

Is the binding documented somewhere ?


nit: Also, why not :
	ret = acpi_dev_get_propert(adev, "cpus", ACPI_TYPE_PACKAGE, &obj);
	if (ret < 0)
		return ret;
  ?


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

Otherwise looks good to me.

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
