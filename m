Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 686A9157397
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 12:39:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rTHEUhCY7tj3aCC3033MlqzgXINoBsjHntWtSMMJDz0=; b=Y0d3YyLVrd5JaM
	/oypmmwGmk8OCh1CnuyL3Xhid7IdJneHnm+SKvtLFqcwIK6tVS2uRn4s4T3HFvdwDepONu3ALcyZo
	npDvAZw+EkxhXqNrSOGZLRbEUY/3rW6oQM0KH2cJhjmxyRznK8dvD+6PLmImGkMctnoC7SHAk4p34
	jzlvX7PRrdFxxyr0Z7oFQI113PsJ58dHSlVXyIk3AyuNM8Uc5uvJXBPqUc6wgzmTA2nX08ZCGCSqx
	d6dnw8Ae0xmEz7yHS73OA+2a88CE44bQZUKqeON+453KubRodbUSF46T3tn5Pi0T5HdBHPllQF1uT
	5U673bbjNe/GTXA8OWGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j17PE-0004AT-O1; Mon, 10 Feb 2020 11:39:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j17P7-0004A7-T9; Mon, 10 Feb 2020 11:39:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F24D71FB;
 Mon, 10 Feb 2020 03:39:04 -0800 (PST)
Received: from [10.1.195.32] (e112269-lin.cambridge.arm.com [10.1.195.32])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3EA253F6CF;
 Mon, 10 Feb 2020 03:39:02 -0800 (PST)
Subject: Re: [PATCH v4 5/7] drm/panfrost: Add support for multiple power
 domains
To: Nicolas Boichat <drinkcat@chromium.org>, Rob Herring <robh+dt@kernel.org>
References: <20200207052627.130118-1-drinkcat@chromium.org>
 <20200207052627.130118-6-drinkcat@chromium.org>
From: Steven Price <steven.price@arm.com>
Message-ID: <aa88b20d-009d-135f-629a-d656b6a60baa@arm.com>
Date: Mon, 10 Feb 2020 11:39:01 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200207052627.130118-6-drinkcat@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_033906_030656_4B523BD0 
X-CRM114-Status: GOOD (  30.62  )
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 Liam Girdwood <lgirdwood@gmail.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, "hsinyi@chromium.org" <hsinyi@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07/02/2020 05:26, Nicolas Boichat wrote:
> When there is a single power domain per device, the core will
> ensure the power domain is switched on (so it is technically
> equivalent to having not power domain specified at all).
> 
> However, when there are multiple domains, as in MT8183 Bifrost
> GPU, we need to handle them in driver code.
> 
> Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>

LGTM!

Reviewed-by: Steven Price <steven.price@arm.com>

Thanks,

Steve

> 
> ---
> 
> The downstream driver we use on chromeos-4.19 currently uses 2
> additional devices in device tree to accomodate for this [1], but
> I believe this solution is cleaner.
> 
> [1] https://chromium.googlesource.com/chromiumos/third_party/kernel/+/refs/heads/chromeos-4.19/drivers/gpu/arm/midgard/platform/mediatek/mali_kbase_runtime_pm.c#31
> 
> v4:
>  - Match the exact power domain names as specified in the compatible
>    struct, instead of just matching the number of power domains.
>    [Review: Ulf Hansson]
>  - Dropped print and reordered function [Review: Steven Price]
>  - nits: Run through latest version of checkpatch:
>    - Use WARN instead of BUG_ON.
>    - Drop braces for single expression if block.
> v3:
>  - Use the compatible matching data to specify the number of power
>    domains. Note that setting 0 or 1 in num_pm_domains is equivalent
>    as the core will handle these 2 cases in the exact same way
>    (automatically, without driver intervention), and there should
>    be no adverse consequence in this case (the concern is about
>    switching on only some power domains and not others).
> 
>  drivers/gpu/drm/panfrost/panfrost_device.c | 97 ++++++++++++++++++++--
>  drivers/gpu/drm/panfrost/panfrost_device.h | 11 +++
>  drivers/gpu/drm/panfrost/panfrost_drv.c    |  2 +
>  3 files changed, 102 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/panfrost/panfrost_device.c b/drivers/gpu/drm/panfrost/panfrost_device.c
> index 3720d50f6d9f965..8136babd3ba9935 100644
> --- a/drivers/gpu/drm/panfrost/panfrost_device.c
> +++ b/drivers/gpu/drm/panfrost/panfrost_device.c
> @@ -5,6 +5,7 @@
>  #include <linux/clk.h>
>  #include <linux/reset.h>
>  #include <linux/platform_device.h>
> +#include <linux/pm_domain.h>
>  #include <linux/regulator/consumer.h>
>  
>  #include "panfrost_device.h"
> @@ -120,6 +121,79 @@ static void panfrost_regulator_fini(struct panfrost_device *pfdev)
>  			pfdev->regulators);
>  }
>  
> +static void panfrost_pm_domain_fini(struct panfrost_device *pfdev)
> +{
> +	int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(pfdev->pm_domain_devs); i++) {
> +		if (!pfdev->pm_domain_devs[i])
> +			break;
> +
> +		if (pfdev->pm_domain_links[i])
> +			device_link_del(pfdev->pm_domain_links[i]);
> +
> +		dev_pm_domain_detach(pfdev->pm_domain_devs[i], true);
> +	}
> +}
> +
> +static int panfrost_pm_domain_init(struct panfrost_device *pfdev)
> +{
> +	int err;
> +	int i, num_domains;
> +
> +	num_domains = of_count_phandle_with_args(pfdev->dev->of_node,
> +						 "power-domains",
> +						 "#power-domain-cells");
> +
> +	/*
> +	 * Single domain is handled by the core, and, if only a single power
> +	 * the power domain is requested, the property is optional.
> +	 */
> +	if (num_domains < 2 && pfdev->comp->num_pm_domains < 2)
> +		return 0;
> +
> +	if (num_domains != pfdev->comp->num_pm_domains) {
> +		dev_err(pfdev->dev,
> +			"Incorrect number of power domains: %d provided, %d needed\n",
> +			num_domains, pfdev->comp->num_pm_domains);
> +		return -EINVAL;
> +	}
> +
> +	if (WARN(num_domains > ARRAY_SIZE(pfdev->pm_domain_devs),
> +			"Too many supplies in compatible structure.\n"))
> +		return -EINVAL;
> +
> +	for (i = 0; i < num_domains; i++) {
> +		pfdev->pm_domain_devs[i] =
> +			dev_pm_domain_attach_by_name(pfdev->dev,
> +					pfdev->comp->pm_domain_names[i]);
> +		if (IS_ERR_OR_NULL(pfdev->pm_domain_devs[i])) {
> +			err = PTR_ERR(pfdev->pm_domain_devs[i]) ? : -ENODATA;
> +			pfdev->pm_domain_devs[i] = NULL;
> +			dev_err(pfdev->dev,
> +				"failed to get pm-domain %s(%d): %d\n",
> +				pfdev->comp->pm_domain_names[i], i, err);
> +			goto err;
> +		}
> +
> +		pfdev->pm_domain_links[i] = device_link_add(pfdev->dev,
> +				pfdev->pm_domain_devs[i], DL_FLAG_PM_RUNTIME |
> +				DL_FLAG_STATELESS | DL_FLAG_RPM_ACTIVE);
> +		if (!pfdev->pm_domain_links[i]) {
> +			dev_err(pfdev->pm_domain_devs[i],
> +				"adding device link failed!\n");
> +			err = -ENODEV;
> +			goto err;
> +		}
> +	}
> +
> +	return 0;
> +
> +err:
> +	panfrost_pm_domain_fini(pfdev);
> +	return err;
> +}
> +
>  int panfrost_device_init(struct panfrost_device *pfdev)
>  {
>  	int err;
> @@ -150,37 +224,43 @@ int panfrost_device_init(struct panfrost_device *pfdev)
>  		goto err_out1;
>  	}
>  
> +	err = panfrost_pm_domain_init(pfdev);
> +	if (err)
> +		goto err_out2;
> +
>  	res = platform_get_resource(pfdev->pdev, IORESOURCE_MEM, 0);
>  	pfdev->iomem = devm_ioremap_resource(pfdev->dev, res);
>  	if (IS_ERR(pfdev->iomem)) {
>  		dev_err(pfdev->dev, "failed to ioremap iomem\n");
>  		err = PTR_ERR(pfdev->iomem);
> -		goto err_out2;
> +		goto err_out3;
>  	}
>  
>  	err = panfrost_gpu_init(pfdev);
>  	if (err)
> -		goto err_out2;
> +		goto err_out3;
>  
>  	err = panfrost_mmu_init(pfdev);
>  	if (err)
> -		goto err_out3;
> +		goto err_out4;
>  
>  	err = panfrost_job_init(pfdev);
>  	if (err)
> -		goto err_out4;
> +		goto err_out5;
>  
>  	err = panfrost_perfcnt_init(pfdev);
>  	if (err)
> -		goto err_out5;
> +		goto err_out6;
>  
>  	return 0;
> -err_out5:
> +err_out6:
>  	panfrost_job_fini(pfdev);
> -err_out4:
> +err_out5:
>  	panfrost_mmu_fini(pfdev);
> -err_out3:
> +err_out4:
>  	panfrost_gpu_fini(pfdev);
> +err_out3:
> +	panfrost_pm_domain_fini(pfdev);
>  err_out2:
>  	panfrost_reset_fini(pfdev);
>  err_out1:
> @@ -196,6 +276,7 @@ void panfrost_device_fini(struct panfrost_device *pfdev)
>  	panfrost_job_fini(pfdev);
>  	panfrost_mmu_fini(pfdev);
>  	panfrost_gpu_fini(pfdev);
> +	panfrost_pm_domain_fini(pfdev);
>  	panfrost_reset_fini(pfdev);
>  	panfrost_regulator_fini(pfdev);
>  	panfrost_clk_fini(pfdev);
> diff --git a/drivers/gpu/drm/panfrost/panfrost_device.h b/drivers/gpu/drm/panfrost/panfrost_device.h
> index c9468bc5573ac9d..c30c719a805940a 100644
> --- a/drivers/gpu/drm/panfrost/panfrost_device.h
> +++ b/drivers/gpu/drm/panfrost/panfrost_device.h
> @@ -21,6 +21,7 @@ struct panfrost_perfcnt;
>  
>  #define NUM_JOB_SLOTS 3
>  #define MAX_REGULATORS 2
> +#define MAX_PM_DOMAINS 3
>  
>  struct panfrost_features {
>  	u16 id;
> @@ -61,6 +62,13 @@ struct panfrost_compatible {
>  	/* Supplies count and names. */
>  	int num_supplies;
>  	const char * const *supply_names;
> +	/*
> +	 * Number of power domains required, note that values 0 and 1 are
> +	 * handled identically, as only values > 1 need special handling.
> +	 */
> +	int num_pm_domains;
> +	/* Only required if num_pm_domains > 1. */
> +	const char * const *pm_domain_names;
>  };
>  
>  struct panfrost_device {
> @@ -73,6 +81,9 @@ struct panfrost_device {
>  	struct clk *bus_clock;
>  	struct regulator_bulk_data regulators[MAX_REGULATORS];
>  	struct reset_control *rstc;
> +	/* pm_domains for devices with more than one. */
> +	struct device *pm_domain_devs[MAX_PM_DOMAINS];
> +	struct device_link *pm_domain_links[MAX_PM_DOMAINS];
>  
>  	struct panfrost_features features;
>  	const struct panfrost_compatible *comp;
> diff --git a/drivers/gpu/drm/panfrost/panfrost_drv.c b/drivers/gpu/drm/panfrost/panfrost_drv.c
> index 4d08507526239f2..a6e162236d67fdf 100644
> --- a/drivers/gpu/drm/panfrost/panfrost_drv.c
> +++ b/drivers/gpu/drm/panfrost/panfrost_drv.c
> @@ -663,6 +663,8 @@ const char * const default_supplies[] = { "mali" };
>  static const struct panfrost_compatible default_data = {
>  	.num_supplies = ARRAY_SIZE(default_supplies),
>  	.supply_names = default_supplies,
> +	.num_pm_domains = 1, /* optional */
> +	.pm_domain_names = NULL,
>  };
>  
>  static const struct of_device_id dt_match[] = {
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
