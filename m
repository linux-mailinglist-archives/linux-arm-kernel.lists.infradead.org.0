Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC0D31DCEAF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 15:56:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fbImpM1KV6N7PvhI+QVrGyCxPvx9NON5ubx3JqnVUFE=; b=JQDu3nl1PCY8Zx
	F70U/5AqVbSmyJkkgMQFXsMfYjKKb9TF+PX/kKScZnTum2kCkT3A8FYhBTaL2A4SodR7BbgSjvMYh
	vndmhsRW8iiJ5krfVpcQ2FnAHyEpmyy1ZLKhE8PM782xPUpa2u8QP0P5s5mkZVoZ0s4lwWdkquS/O
	77z7nQSDwDldnw+YkYO41GPxFRfxKphld9MjsGL6rjmaiyG1kc1bHsNYKChCwqd9nTTw/vAXkvFNC
	anBQaD9891b601r5+jS0Xi3tD8/ju22He0yGdu/Spx5igczPAzXSRxkBxoVQ75m/Txe9MogP4RWMB
	8p0cWIQrqw/e+ZLDz0XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jblgK-0004LB-Ny; Thu, 21 May 2020 13:56:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jblg3-0004KC-9y
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 13:56:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B5CBCD6E;
 Thu, 21 May 2020 06:56:02 -0700 (PDT)
Received: from bogus (unknown [10.37.12.114])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A43143F305;
 Thu, 21 May 2020 06:56:00 -0700 (PDT)
Date: Thu, 21 May 2020 14:55:57 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Tuan Phan <tuanphan@os.amperecomputing.com>
Subject: Re: [PATCH v2] perf: arm_dsu: Support DSU ACPI devices.
Message-ID: <20200521135557.GB12282@bogus>
References: <1589229160-18558-1-git-send-email-tuanphan@os.amperecomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589229160-18558-1-git-send-email-tuanphan@os.amperecomputing.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_065603_397166_30D49ED7 
X-CRM114-Status: GOOD (  18.12  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-kernel@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, patches@amperecomputing.com,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
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
> 
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

I don't see any property "cpus" in the document:
DEN 0093 A (Generic ACPI for Arm Components 1.0) [1]

Is there any newer updates that I need to look at ?

-- 
Regards,
Sudeep

[1] https://static.docs.arm.com/den0093/a/DEN0093_ACPI_Arm_Components_1.0.pdf

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
