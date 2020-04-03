Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F03919D3D8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 11:37:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JxQcDbPtZC9sPyZ5dS8hpPMTWyj6KPOh/W39+qHd5MQ=; b=E6kNq4DSLGgczD
	e6IUSUirQdCBJ1FR+g1jNEl83wwghdnZapHTsIZpUTsvTGFiQr3JULgZNduXhNxHFtKUq/FGCceu9
	hj/3HtZcDOLDbpEp5mPt7LBO/zzqqDwhioTEkcNx6aQnZq9GHu3f1q1utSgbZVTRK5Y+YbMMmhVlk
	Sk+k9dqEcLM8FPgbubeoKU7L7keDkMfH72+tjnH+/gp/GLvKf03ywE7ByzuGtYDZoqnjCNpLWyhMw
	QHr3z5oDrKLg1oOshGSdS6f8awyxig8ao3kQDrgu3UtYL2AFiiwxPboclrRqQqWZnMHpgUSVONAj9
	GEH0327HHEq9T2tKsYcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKIlY-0005OM-83; Fri, 03 Apr 2020 09:37:32 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKIlQ-0005NP-L0; Fri, 03 Apr 2020 09:37:26 +0000
IronPort-SDR: Gsz53hmx6OmP2ZtW/ml8uKuXJK3qBwEAhbDil+tpBZpwim0SUmTB+d1GDph3xtPCjGGVsuKR1p
 6297m1vl8aOw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2020 02:37:22 -0700
IronPort-SDR: 6ctsVTIkuOJW1zsi+6r+x5UJTRL261u9mGQ5257+l2jFXHqbvL/nMwpdqWjssQBbG2Gr5Ta/+y
 EYpqfJALPpNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,339,1580803200"; d="scan'208";a="423470479"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga005.jf.intel.com with ESMTP; 03 Apr 2020 02:37:10 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jKIlD-00FOaL-Li; Fri, 03 Apr 2020 12:37:11 +0300
Date: Fri, 3 Apr 2020 12:37:11 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Subject: Re: [PATCH v8 03/10] lib: add linear ranges helpers
Message-ID: <20200403093711.GJ1922688@smile.fi.intel.com>
References: <cover.1585902279.git.matti.vaittinen@fi.rohmeurope.com>
 <05ef7d49f1e2a895ac6688bfdd444d2cbba53e6e.1585902279.git.matti.vaittinen@fi.rohmeurope.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <05ef7d49f1e2a895ac6688bfdd444d2cbba53e6e.1585902279.git.matti.vaittinen@fi.rohmeurope.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_023724_710813_D1CF286D 
X-CRM114-Status: GOOD (  37.01  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Andrei Stefanescu <andrei.stefanescu@microchip.com>,
 Heiko Stuebner <heiko@sntech.de>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Linus Walleij <linus.walleij@linaro.org>,
 Brendan Higgins <brendanhiggins@google.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Andreas Kemnade <andreas@kemnade.info>,
 "Angelo G. Del Regno" <kholk11@gmail.com>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>,
 linux-samsung-soc@vger.kernel.org, linux-omap@vger.kernel.org,
 Axel Lin <axel.lin@ingics.com>, Gregory CLEMENT <gregory.clement@bootlin.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Markus Reichl <m.reichl@fivetechno.de>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Chen-Yu Tsai <wens@csie.org>,
 Andy Gross <agross@kernel.org>, markus.laine@fi.rohmeurope.com,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>, devicetree@vger.kernel.org,
 Charles Keepax <ckeepax@opensource.cirrus.com>, mazziesaccount@gmail.com,
 linux-arm-msm@vger.kernel.org, Richard Fitzgerald <rf@opensource.cirrus.com>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 Support Opensource <support.opensource@diasemi.com>,
 Baolin Wang <baolin.wang@linaro.org>, Sangbeom Kim <sbkim73@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-pm@vger.kernel.org,
 Randy Dunlap <rdunlap@infradead.org>, Sebastian Reichel <sre@kernel.org>,
 linux-kernel@vger.kernel.org, mikko.mutanen@fi.rohmeurope.com,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 patches@opensource.cirrus.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 03, 2020 at 11:45:47AM +0300, Matti Vaittinen wrote:
> Many devices have control registers which control some measurable
> property. Often a register contains control field so that change in
> this field causes linear change in the controlled property. It is not
> a rare case that user wants to give 'meaningful' control values and
> driver needs to convert them to register field values. Even more
> often user wants to 'see' the currently set value - again in
> meaningful units - and driver needs to convert the values it reads
> from register to these meaningful units. Examples of this include:
> 
> - regulators, voltage/current configurations
> - power, voltage/current configurations
> - clk(?) NCOs
> 
> and maybe others I can't think of right now.
> 
> Provide a linear_range helper which can do conversion from user value
> to register value 'selector'.
> 
> The idea here is stolen from regulator framework and patches refactoring
> the regulator helpers to use this are following.
> 
> Current implementation does not support inversely proportional ranges
> but it might be useful if we could support also inversely proportional
> ranges?
> 

FWIW,
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

> Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
> Reviewed-by: Mark Brown <broonie@kernel.org>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> 
> Changes since v7:
>  - Cleanups suggested by Andy, no functional changes
> 
>  include/linux/linear_range.h |  48 +++++++
>  lib/Kconfig                  |   3 +
>  lib/Makefile                 |   1 +
>  lib/linear_ranges.c          | 241 +++++++++++++++++++++++++++++++++++
>  4 files changed, 293 insertions(+)
>  create mode 100644 include/linux/linear_range.h
>  create mode 100644 lib/linear_ranges.c
> 
> diff --git a/include/linux/linear_range.h b/include/linux/linear_range.h
> new file mode 100644
> index 000000000000..17b5943727d5
> --- /dev/null
> +++ b/include/linux/linear_range.h
> @@ -0,0 +1,48 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/* Copyright (C) 2020 ROHM Semiconductors */
> +
> +#ifndef LINEAR_RANGE_H
> +#define LINEAR_RANGE_H
> +
> +#include <linux/types.h>
> +
> +/**
> + * struct linear_range - table of selector - value pairs
> + *
> + * Define a lookup-table for range of values. Intended to help when looking
> + * for a register value matching certaing physical measure (like voltage).
> + * Usable when increment of one in register always results a constant increment
> + * of the physical measure (like voltage).
> + *
> + * @min:  Lowest value in range
> + * @min_sel: Lowest selector for range
> + * @max_sel: Highest selector for range
> + * @step: Value step size
> + */
> +struct linear_range {
> +	unsigned int min;
> +	unsigned int min_sel;
> +	unsigned int max_sel;
> +	unsigned int step;
> +};
> +
> +unsigned int linear_range_values_in_range(const struct linear_range *r);
> +unsigned int linear_range_values_in_range_array(const struct linear_range *r,
> +						int ranges);
> +unsigned int linear_range_get_max_value(const struct linear_range *r);
> +
> +int linear_range_get_value(const struct linear_range *r, unsigned int selector,
> +			   unsigned int *val);
> +int linear_range_get_value_array(const struct linear_range *r, int ranges,
> +				 unsigned int selector, unsigned int *val);
> +int linear_range_get_selector_low(const struct linear_range *r,
> +				  unsigned int val, unsigned int *selector,
> +				  bool *found);
> +int linear_range_get_selector_high(const struct linear_range *r,
> +				   unsigned int val, unsigned int *selector,
> +				   bool *found);
> +int linear_range_get_selector_low_array(const struct linear_range *r,
> +					int ranges, unsigned int val,
> +					unsigned int *selector, bool *found);
> +
> +#endif
> diff --git a/lib/Kconfig b/lib/Kconfig
> index bc7e56370129..411ab2d2d800 100644
> --- a/lib/Kconfig
> +++ b/lib/Kconfig
> @@ -19,6 +19,9 @@ config RAID6_PQ_BENCHMARK
>  	  Benchmark all available RAID6 PQ functions on init and choose the
>  	  fastest one.
>  
> +config LINEAR_RANGES
> +	tristate
> +
>  config PACKING
>  	bool "Generic bitfield packing and unpacking"
>  	default n
> diff --git a/lib/Makefile b/lib/Makefile
> index 611872c06926..18c3d313872e 100644
> --- a/lib/Makefile
> +++ b/lib/Makefile
> @@ -122,6 +122,7 @@ obj-$(CONFIG_DEBUG_LIST) += list_debug.o
>  obj-$(CONFIG_DEBUG_OBJECTS) += debugobjects.o
>  
>  obj-$(CONFIG_BITREVERSE) += bitrev.o
> +obj-$(CONFIG_LINEAR_RANGES) += linear_ranges.o
>  obj-$(CONFIG_PACKING)	+= packing.o
>  obj-$(CONFIG_CRC_CCITT)	+= crc-ccitt.o
>  obj-$(CONFIG_CRC16)	+= crc16.o
> diff --git a/lib/linear_ranges.c b/lib/linear_ranges.c
> new file mode 100644
> index 000000000000..d1336c75ccd7
> --- /dev/null
> +++ b/lib/linear_ranges.c
> @@ -0,0 +1,241 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * helpers to map values in a linear range to range index
> + *
> + * Original idea borrowed from regulator framework
> + *
> + * It might be useful if we could support also inversely proportional ranges?
> + * Copyright 2020 ROHM Semiconductors
> + */
> +
> +#include <linux/errno.h>
> +#include <linux/export.h>
> +#include <linux/kernel.h>
> +#include <linux/linear_range.h>
> +
> +/**
> + * linear_range_values_in_range - return the amount of values in a range
> + * @r:		pointer to linear range where values are counted
> + *
> + * Compute the amount of values in range pointed by @r. Note, values can
> + * be all equal - range with selectors 0,...,2 with step 0 still contains
> + * 3 values even though they are all equal.
> + *
> + * Return: the amount of values in range pointed by @r
> + */
> +unsigned int linear_range_values_in_range(const struct linear_range *r)
> +{
> +	if (!r)
> +		return 0;
> +	return r->max_sel - r->min_sel + 1;
> +}
> +EXPORT_SYMBOL_GPL(linear_range_values_in_range);
> +
> +/**
> + * linear_range_values_in_range_array - return the amount of values in ranges
> + * @r:		pointer to array of linear ranges where values are counted
> + * @ranges:	amount of ranges we include in computation.
> + *
> + * Compute the amount of values in ranges pointed by @r. Note, values can
> + * be all equal - range with selectors 0,...,2 with step 0 still contains
> + * 3 values even though they are all equal.
> + *
> + * Return: the amount of values in first @ranges ranges pointed by @r
> + */
> +unsigned int linear_range_values_in_range_array(const struct linear_range *r,
> +						int ranges)
> +{
> +	int i, values_in_range = 0;
> +
> +	for (i = 0; i < ranges; i++) {
> +		int values;
> +
> +		values = linear_range_values_in_range(&r[i]);
> +		if (!values)
> +			return values;
> +
> +		values_in_range += values;
> +	}
> +	return values_in_range;
> +}
> +EXPORT_SYMBOL_GPL(linear_range_values_in_range_array);
> +
> +/**
> + * linear_range_get_max_value - return the largest value in a range
> + * @r:		pointer to linear range where value is looked from
> + *
> + * Return: the largest value in the given range
> + */
> +unsigned int linear_range_get_max_value(const struct linear_range *r)
> +{
> +	return r->min + (r->max_sel - r->min_sel) * r->step;
> +}
> +EXPORT_SYMBOL_GPL(linear_range_get_max_value);
> +
> +/**
> + * linear_range_get_value - fetch a value from given range
> + * @r:		pointer to linear range where value is looked from
> + * @selector:	selector for which the value is searched
> + * @val:	address where found value is updated
> + *
> + * Search given ranges for value which matches given selector.
> + *
> + * Return: 0 on success, -EINVAL given selector is not found from any of the
> + * ranges.
> + */
> +int linear_range_get_value(const struct linear_range *r, unsigned int selector,
> +			   unsigned int *val)
> +{
> +	if (r->min_sel > selector || r->max_sel < selector)
> +		return -EINVAL;
> +
> +	*val = r->min + (selector - r->min_sel) * r->step;
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(linear_range_get_value);
> +
> +/**
> + * linear_range_get_value_array - fetch a value from array of ranges
> + * @r:		pointer to array of linear ranges where value is looked from
> + * @ranges:	amount of ranges in an array
> + * @selector:	selector for which the value is searched
> + * @val:	address where found value is updated
> + *
> + * Search through an array of ranges for value which matches given selector.
> + *
> + * Return: 0 on success, -EINVAL given selector is not found from any of the
> + * ranges.
> + */
> +int linear_range_get_value_array(const struct linear_range *r, int ranges,
> +				 unsigned int selector, unsigned int *val)
> +{
> +	int i;
> +
> +	for (i = 0; i < ranges; i++)
> +		if (r[i].min_sel <= selector && r[i].max_sel >= selector)
> +			return linear_range_get_value(&r[i], selector, val);
> +
> +	return -EINVAL;
> +}
> +EXPORT_SYMBOL_GPL(linear_range_get_value_array);
> +
> +/**
> + * linear_range_get_selector_low - return linear range selector for value
> + * @r:		pointer to linear range where selector is looked from
> + * @val:	value for which the selector is searched
> + * @selector:	address where found selector value is updated
> + * @found:	flag to indicate that given value was in the range
> + *
> + * Return selector which which range value is closest match for given
> + * input value. Value is matching if it is equal or smaller than given
> + * value. If given value is in the range, then @found is set true.
> + *
> + * Return: 0 on success, -EINVAL if range is invalid or does not contain
> + * value smaller or equal to given value
> + */
> +int linear_range_get_selector_low(const struct linear_range *r,
> +				  unsigned int val, unsigned int *selector,
> +				  bool *found)
> +{
> +	*found = false;
> +
> +	if (r->min > val)
> +		return -EINVAL;
> +
> +	if (linear_range_get_max_value(r) < val) {
> +		*selector = r->max_sel;
> +		return 0;
> +	}
> +
> +	*found = true;
> +
> +	if (r->step == 0)
> +		*selector = r->min_sel;
> +	else
> +		*selector = (val - r->min) / r->step + r->min_sel;
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(linear_range_get_selector_low);
> +
> +/**
> + * linear_range_get_selector_low_array - return linear range selector for value
> + * @r:		pointer to array of linear ranges where selector is looked from
> + * @ranges:	amount of ranges to scan from array
> + * @val:	value for which the selector is searched
> + * @selector:	address where found selector value is updated
> + * @found:	flag to indicate that given value was in the range
> + *
> + * Scan array of ranges for selector which which range value matches given
> + * input value. Value is matching if it is equal or smaller than given
> + * value. If given value is found to be in a range scanning is stopped and
> + * @found is set true. If a range with values smaller than given value is found
> + * but the range max is being smaller than given value, then the ranges
> + * biggest selector is updated to @selector but scanning ranges is continued
> + * and @found is set to false.
> + *
> + * Return: 0 on success, -EINVAL if range array is invalid or does not contain
> + * range with a value smaller or equal to given value
> + */
> +int linear_range_get_selector_low_array(const struct linear_range *r,
> +					int ranges, unsigned int val,
> +					unsigned int *selector, bool *found)
> +{
> +	int i;
> +	int ret = -EINVAL;
> +
> +	for (i = 0; i < ranges; i++) {
> +		int tmpret;
> +
> +		tmpret = linear_range_get_selector_low(&r[i], val, selector,
> +						       found);
> +		if (!tmpret)
> +			ret = 0;
> +
> +		if (*found)
> +			break;
> +	}
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(linear_range_get_selector_low_array);
> +
> +/**
> + * linear_range_get_selector_high - return linear range selector for value
> + * @r:		pointer to linear range where selector is looked from
> + * @val:	value for which the selector is searched
> + * @selector:	address where found selector value is updated
> + * @found:	flag to indicate that given value was in the range
> + *
> + * Return selector which which range value is closest match for given
> + * input value. Value is matching if it is equal or higher than given
> + * value. If given value is in the range, then @found is set true.
> + *
> + * Return: 0 on success, -EINVAL if range is invalid or does not contain
> + * value greater or equal to given value
> + */
> +int linear_range_get_selector_high(const struct linear_range *r,
> +				   unsigned int val, unsigned int *selector,
> +				   bool *found)
> +{
> +	*found = false;
> +
> +	if (linear_range_get_max_value(r) < val)
> +		return -EINVAL;
> +
> +	if (r->min > val) {
> +		*selector = r->min_sel;
> +		return 0;
> +	}
> +
> +	*found = true;
> +
> +	if (r->step == 0)
> +		*selector = r->max_sel;
> +	else
> +		*selector = DIV_ROUND_UP(val - r->min, r->step) + r->min_sel;
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(linear_range_get_selector_high);
> -- 
> 2.21.0
> 
> 
> -- 
> Matti Vaittinen, Linux device drivers
> ROHM Semiconductors, Finland SWDC
> Kiviharjunlenkki 1E
> 90220 OULU
> FINLAND
> 
> ~~~ "I don't think so," said Rene Descartes. Just then he vanished ~~~
> Simon says - in Latin please.
> ~~~ "non cogito me" dixit Rene Descarte, deinde evanescavit ~~~
> Thanks to Simon Glass for the translation =] 

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
