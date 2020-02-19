Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46718163E28
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 08:50:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hhKa7GpNgh6Lujys3MXYmLoNRAmR3SWVNi88+eeRdGw=; b=sYshPzLzUvcO9n
	JbenWnPWkVPejfhQymC9Bntjgf3ZQne69ekjNJgAAxSxaAdvHsfKq54aMw/64JZPsSjBaqlmsBKaY
	bw/WpRvGvGiZyQZYTH2TpPGt3Yd8fV0BXEokOfHtbIgWzj3E7sf8zZeJqhAj/AwKwWtb1U/z3wzjf
	VUR7noIeRHiPPre46fnrMjjftVWKHKVkDumU4f66IAhvQ6lbntJlRg/wUS/y3F0lySROqO5X+It6b
	jvKl3SVVoHUVsF53Vc7JtPJ31BTz4iMmz2JRK3cF5O/hlMi2s/KXapyBJRKuFm0cCkFBUIRsaUq0O
	nfpZdQqPcKSvBqlRMOww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4K83-0003fc-3B; Wed, 19 Feb 2020 07:50:43 +0000
Received: from [2601:1c0:6280:3f0::19c2]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4K7q-0003cQ-2R; Wed, 19 Feb 2020 07:50:30 +0000
Subject: Re: [PATCH v3 2/4] thermal: k3: Add support for bandgap sensors
To: Keerthy <j-keerthy@ti.com>, rui.zhang@intel.com, robh+dt@kernel.org,
 daniel.lezcano@linaro.org
References: <20200219074314.22829-1-j-keerthy@ti.com>
 <20200219074314.22829-3-j-keerthy@ti.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <ab0bc84b-189f-a9be-e838-a38c14fa702a@infradead.org>
Date: Tue, 18 Feb 2020 23:50:29 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200219074314.22829-3-j-keerthy@ti.com>
Content-Language: en-US
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 amit.kucheria@verdurent.com, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, t-kristo@ti.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/18/20 11:43 PM, Keerthy wrote:
> The bandgap provides current and voltage reference for its internal
> circuits and other analog IP blocks. The analog-to-digital
> converter (ADC) produces an output value that is proportional
> to the silicon temperature.
> 
> Currently reading temperatures and trend computing is supported
> as there are no active/passive cooling agent supported.
> 
> Signed-off-by: Keerthy <j-keerthy@ti.com>
> ---
>  drivers/thermal/Kconfig      |  12 ++
>  drivers/thermal/Makefile     |   1 +
>  drivers/thermal/k3_bandgap.c | 342 +++++++++++++++++++++++++++++++++++
>  3 files changed, 355 insertions(+)
>  create mode 100644 drivers/thermal/k3_bandgap.c
> 
> diff --git a/drivers/thermal/Kconfig b/drivers/thermal/Kconfig
> index 5a05db5438d6..fa598eddc7ac 100644
> --- a/drivers/thermal/Kconfig
> +++ b/drivers/thermal/Kconfig
> @@ -251,6 +251,18 @@ config IMX_THERMAL
>  	  cpufreq is used as the cooling device to throttle CPUs when the
>  	  passive trip is crossed.
>  
> +config K3_THERMAL
> +	bool "Texas Instruments K3 thermal support"

Hi,
Why is this bool and not tristate?

> +	depends on THERMAL
> +	depends on ARCH_K3 || COMPILE_TEST
> +	help
> +	  If you say yes here you get thermal support for the Texas Instruments
> +	  K3 SoC family. The current chip supported is:
> +	   - AM654
> +
> +	  This includes temperature reading functionality and also trend
> +	  computation.
> +
>  config MAX77620_THERMAL
>  	tristate "Temperature sensor driver for Maxim MAX77620 PMIC"
>  	depends on MFD_MAX77620

> diff --git a/drivers/thermal/k3_bandgap.c b/drivers/thermal/k3_bandgap.c
> new file mode 100644
> index 000000000000..35d904eb9857
> --- /dev/null
> +++ b/drivers/thermal/k3_bandgap.c
> @@ -0,0 +1,342 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * TI Bandgap temperature sensor driver for K3 SoC Family
> + *
> + * Copyright (C) 2020 Texas Instruments Incorporated - http://www.ti.com/
> + */

> +static int k3_bgp_read_temp(struct k3_thermal_data *devdata,
> +			    int *temp)
> +{
> +	struct k3_bandgap *bgp;
> +	unsigned int dtemp, s0, s1, s2;
> +
> +	bgp = devdata->bgp;
> +	/**

"/**" is used to indicate kernel-doc notation in the Linux kernel source files,
but this comment is not kernel-doc notation, so please just use "/*".

> +	 * Errata is applicable for am654 pg 1.0 silicon. There
> +	 * is a variation of the order for 8-10 degree centigrade.
> +	 * Work around that by getting the average of two closest
> +	 * readings out of three readings everytime we want to
> +	 * report temperatures.
> +	 *
> +	 * Errata workaround.
> +	 */
thanks.
-- 
~Randy


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
