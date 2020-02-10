Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A7F157381
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 12:31:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yEW55xVRsiVQggABhIQyzBx1TjVVySDh9fTbK2Z9K6U=; b=a4wOBqjk2y0dKs
	64IjWNtSTT2RrZCdRvpPZ4pRxYT1C8k1jXQhtnPSRcKHw12WlKXWQvL7nH0KUCxODjrueLUPkI21S
	XLBFttNGf1TTMwGk4GfSPdYAM4YyCA5ziJs2R3eGDUYomF88HmwGNN5WE4nVQjfNe2PSnW/7NaiJR
	yamCxEpbNFeGWtMDcjOBjKDlV4CFlFKM3FCZky5hIaqZvHnyHNcfy9co+yzn4s6InO8LSznWBUgxe
	LF/mUTsRVXu5u2jyp2yrK+h19SQG5wfLU1kZynHi55NI5qimEzOFYN4V8mjv/Lo/GPakKG35toPAr
	tJ3cFhVkxOUmR+op+pkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j17I0-0001fP-JU; Mon, 10 Feb 2020 11:31:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j17Ht-0001eY-3z; Mon, 10 Feb 2020 11:31:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4E3AB1FB;
 Mon, 10 Feb 2020 03:31:33 -0800 (PST)
Received: from [10.1.195.32] (e112269-lin.cambridge.arm.com [10.1.195.32])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3A7BA3F6CF;
 Mon, 10 Feb 2020 03:31:31 -0800 (PST)
Subject: Re: [PATCH v4 4/7] drm/panfrost: Add support for multiple regulators
To: Nicolas Boichat <drinkcat@chromium.org>, Rob Herring <robh+dt@kernel.org>
References: <20200207052627.130118-1-drinkcat@chromium.org>
 <20200207052627.130118-5-drinkcat@chromium.org>
From: Steven Price <steven.price@arm.com>
Message-ID: <df99cedb-4c2c-b8b8-14e6-d7b8d8fe351a@arm.com>
Date: Mon, 10 Feb 2020 11:31:29 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200207052627.130118-5-drinkcat@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_033137_251325_FDDCAB4C 
X-CRM114-Status: GOOD (  30.65  )
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
> Some GPUs, namely, the bifrost/g72 part on MT8183, have a second
> regulator for their SRAM, let's add support for that.
> 
> We extend the framework in a generic manner so that we could
> support more than 2 regulators, if required.
> 
> Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>

Reviewed-by: Steven Price <steven.price@arm.com>

Thanks,

Steve

> 
> ---
> 
> v4:
>  - nits: Run through latest version of checkpatch:
>    - Use WARN instead of BUG_ON.
>    - Drop braces in single expression for loop.
>    - *comp not * comp
> v3:
>  - Make this more generic, by allowing any number of regulators
>    (in practice we fix the maximum number of regulators to 2, but
>    this could be increased easily).
>  - We only probe the second regulator if the device tree matching
>    data asks for it.
>  - I couldn't find a way to detect the number of regulators in the
>    device tree, if we wanted to refuse to probe the device if there
>    are too many regulators, which might be required for safety, see
>    the thread on v2 [1].
>  - The discussion also included the idea of a separate device tree
>    entry for a "soft PDC", or at least a separate driver. I'm not
>    sure to understand the full picture, and how different vendors
>    implement this, so I'm still integrating everything in the main
>    driver. I'd be happy to try to make mt8183 fit into such a
>    framework after it's created, but I don't think I'm best placed
>    to implement (and again, the main purpose of this was to test
>    if the binding is correct).
> 
> [1] https://patchwork.kernel.org/patch/11322839/
> 
>  drivers/gpu/drm/panfrost/panfrost_device.c | 26 +++++++++++++-------
>  drivers/gpu/drm/panfrost/panfrost_device.h | 15 +++++++++++-
>  drivers/gpu/drm/panfrost/panfrost_drv.c    | 28 +++++++++++++++-------
>  3 files changed, 51 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/gpu/drm/panfrost/panfrost_device.c b/drivers/gpu/drm/panfrost/panfrost_device.c
> index 238fb6d54df4732..3720d50f6d9f965 100644
> --- a/drivers/gpu/drm/panfrost/panfrost_device.c
> +++ b/drivers/gpu/drm/panfrost/panfrost_device.c
> @@ -87,18 +87,27 @@ static void panfrost_clk_fini(struct panfrost_device *pfdev)
>  
>  static int panfrost_regulator_init(struct panfrost_device *pfdev)
>  {
> -	int ret;
> +	int ret, i;
>  
> -	pfdev->regulator = devm_regulator_get(pfdev->dev, "mali");
> -	if (IS_ERR(pfdev->regulator)) {
> -		ret = PTR_ERR(pfdev->regulator);
> -		dev_err(pfdev->dev, "failed to get regulator: %d\n", ret);
> +	if (WARN(pfdev->comp->num_supplies > ARRAY_SIZE(pfdev->regulators),
> +			"Too many supplies in compatible structure.\n"))
> +		return -EINVAL;
> +
> +	for (i = 0; i < pfdev->comp->num_supplies; i++)
> +		pfdev->regulators[i].supply = pfdev->comp->supply_names[i];
> +
> +	ret = devm_regulator_bulk_get(pfdev->dev,
> +				      pfdev->comp->num_supplies,
> +				      pfdev->regulators);
> +	if (ret < 0) {
> +		dev_err(pfdev->dev, "failed to get regulators: %d\n", ret);
>  		return ret;
>  	}
>  
> -	ret = regulator_enable(pfdev->regulator);
> +	ret = regulator_bulk_enable(pfdev->comp->num_supplies,
> +				    pfdev->regulators);
>  	if (ret < 0) {
> -		dev_err(pfdev->dev, "failed to enable regulator: %d\n", ret);
> +		dev_err(pfdev->dev, "failed to enable regulators: %d\n", ret);
>  		return ret;
>  	}
>  
> @@ -107,7 +116,8 @@ static int panfrost_regulator_init(struct panfrost_device *pfdev)
>  
>  static void panfrost_regulator_fini(struct panfrost_device *pfdev)
>  {
> -	regulator_disable(pfdev->regulator);
> +	regulator_bulk_disable(pfdev->comp->num_supplies,
> +			pfdev->regulators);
>  }
>  
>  int panfrost_device_init(struct panfrost_device *pfdev)
> diff --git a/drivers/gpu/drm/panfrost/panfrost_device.h b/drivers/gpu/drm/panfrost/panfrost_device.h
> index 06713811b92cdf7..c9468bc5573ac9d 100644
> --- a/drivers/gpu/drm/panfrost/panfrost_device.h
> +++ b/drivers/gpu/drm/panfrost/panfrost_device.h
> @@ -7,6 +7,7 @@
>  
>  #include <linux/atomic.h>
>  #include <linux/io-pgtable.h>
> +#include <linux/regulator/consumer.h>
>  #include <linux/spinlock.h>
>  #include <drm/drm_device.h>
>  #include <drm/drm_mm.h>
> @@ -19,6 +20,7 @@ struct panfrost_job;
>  struct panfrost_perfcnt;
>  
>  #define NUM_JOB_SLOTS 3
> +#define MAX_REGULATORS 2
>  
>  struct panfrost_features {
>  	u16 id;
> @@ -51,6 +53,16 @@ struct panfrost_features {
>  	unsigned long hw_issues[64 / BITS_PER_LONG];
>  };
>  
> +/*
> + * Features that cannot be automatically detected and need matching using the
> + * compatible string, typically SoC-specific.
> + */
> +struct panfrost_compatible {
> +	/* Supplies count and names. */
> +	int num_supplies;
> +	const char * const *supply_names;
> +};
> +
>  struct panfrost_device {
>  	struct device *dev;
>  	struct drm_device *ddev;
> @@ -59,10 +71,11 @@ struct panfrost_device {
>  	void __iomem *iomem;
>  	struct clk *clock;
>  	struct clk *bus_clock;
> -	struct regulator *regulator;
> +	struct regulator_bulk_data regulators[MAX_REGULATORS];
>  	struct reset_control *rstc;
>  
>  	struct panfrost_features features;
> +	const struct panfrost_compatible *comp;
>  
>  	spinlock_t as_lock;
>  	unsigned long as_in_use_mask;
> diff --git a/drivers/gpu/drm/panfrost/panfrost_drv.c b/drivers/gpu/drm/panfrost/panfrost_drv.c
> index b7a618db3ee223e..4d08507526239f2 100644
> --- a/drivers/gpu/drm/panfrost/panfrost_drv.c
> +++ b/drivers/gpu/drm/panfrost/panfrost_drv.c
> @@ -584,6 +584,10 @@ static int panfrost_probe(struct platform_device *pdev)
>  
>  	platform_set_drvdata(pdev, pfdev);
>  
> +	pfdev->comp = of_device_get_match_data(&pdev->dev);
> +	if (!pfdev->comp)
> +		return -ENODEV;
> +
>  	/* Allocate and initialze the DRM device. */
>  	ddev = drm_dev_alloc(&panfrost_drm_driver, &pdev->dev);
>  	if (IS_ERR(ddev))
> @@ -655,16 +659,22 @@ static int panfrost_remove(struct platform_device *pdev)
>  	return 0;
>  }
>  
> +const char * const default_supplies[] = { "mali" };
> +static const struct panfrost_compatible default_data = {
> +	.num_supplies = ARRAY_SIZE(default_supplies),
> +	.supply_names = default_supplies,
> +};
> +
>  static const struct of_device_id dt_match[] = {
> -	{ .compatible = "arm,mali-t604" },
> -	{ .compatible = "arm,mali-t624" },
> -	{ .compatible = "arm,mali-t628" },
> -	{ .compatible = "arm,mali-t720" },
> -	{ .compatible = "arm,mali-t760" },
> -	{ .compatible = "arm,mali-t820" },
> -	{ .compatible = "arm,mali-t830" },
> -	{ .compatible = "arm,mali-t860" },
> -	{ .compatible = "arm,mali-t880" },
> +	{ .compatible = "arm,mali-t604", .data = &default_data, },
> +	{ .compatible = "arm,mali-t624", .data = &default_data, },
> +	{ .compatible = "arm,mali-t628", .data = &default_data, },
> +	{ .compatible = "arm,mali-t720", .data = &default_data, },
> +	{ .compatible = "arm,mali-t760", .data = &default_data, },
> +	{ .compatible = "arm,mali-t820", .data = &default_data, },
> +	{ .compatible = "arm,mali-t830", .data = &default_data, },
> +	{ .compatible = "arm,mali-t860", .data = &default_data, },
> +	{ .compatible = "arm,mali-t880", .data = &default_data, },
>  	{}
>  };
>  MODULE_DEVICE_TABLE(of, dt_match);
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
