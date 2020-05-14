Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A58401D2CA6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 12:27:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dbS4AjEmywhatYV/fGXa5+NnnoWO7eqwEvonJWWqJEE=; b=pkpMfXxyGN9V6S
	EEz3g0q6NXFBcWYr396Qau6J7sKc5ewEFEZ6OHQ9RvsCyFjOE4wHDni75M4AXKBVnmbN6Qifbgifv
	DbfUzt/VkbgAPKxNzi9q/8jFK/usloY5L4gZTEeGCi6yxl3Z2Z3aKPn/0SQ8+7aaIbfi80dqO120I
	PVlcPmuwKuib8g0HGPe948Dnc8x+ZXbAgrEncpTg/aelAAk2HI+fC1zKLCv2oDTBO830k7deCz7KJ
	YR3kGSNolJQOMLB0yAV7DpQp4N5S6TKcRDaczl2OnulE9lbeWIi1ot1N4lSf+dchAP3J2ZNGs6rpU
	Rk4iitUiu8fYXBdxIMeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZB5B-0007yZ-Kv; Thu, 14 May 2020 10:27:17 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZB4u-0007vv-OX; Thu, 14 May 2020 10:27:03 +0000
IronPort-SDR: ukX49vFrodPKM20FxKBq6h1D+d+BKV9F7BxpAfUZ9uJk34AOAZEbuxxXXkT6lsr7lplTwSje84
 knT1FD0QdHuw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 03:27:00 -0700
IronPort-SDR: ymorzh9D6tyJUiY1NZyMGZdZr21vY0fBLO0VxaoMYUWGlnndU2jiSDZEpDx7s3bQXPKuZgmJaE
 DwNIiA8WrgFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,390,1583222400"; d="scan'208";a="464480735"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga006.fm.intel.com with ESMTP; 14 May 2020 03:26:58 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jZB4v-006bVM-KU; Thu, 14 May 2020 13:27:01 +0300
Date: Thu, 14 May 2020 13:27:01 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Fengping Yu <fengping.yu@mediatek.com>
Subject: Re: [PATCH v7 2/3] drivers: input: keyboard: Add mtk keypad driver
Message-ID: <20200514102701.GZ185537@smile.fi.intel.com>
References: <20200514061747.25466-1-fengping.yu@mediatek.com>
 <20200514061747.25466-3-fengping.yu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200514061747.25466-3-fengping.yu@mediatek.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_032700_838941_4E4F229F 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
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
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Marco Felsch <m.felsch@pengutronix.de>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Yingjoe Chen <yingjoe.chen@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 14, 2020 at 02:17:48PM +0800, Fengping Yu wrote:
> From: "fengping.yu" <fengping.yu@mediatek.com>
> 
> This adds matrix keypad support for Mediatek SoCs.

...

> +config KEYBOARD_MTK_KPD
> +	tristate "MediaTek Keypad Support"

> +	depends on OF && HAVE_CLK

What makes it OF dependent?

> +	help
> +	  Say Y here if you want to use the keypad on MediaTek SoCs.
> +	  If unsure, say N.
> +	  To compile this driver as a module, choose M here: the
> +	  module will be called mtk-kpd.

...

> +#define KPD_DEBOUNCE_MAX_US	256000 /*256ms */

Comment, besides missed space, is redundant. That's how we use unit suffixes in
the definitions.

...

> +static const struct regmap_config keypad_regmap_cfg = {
> +	.reg_bits = 32,
> +	.val_bits = 32,
> +	.reg_stride = sizeof(u32),

> +	.max_register = 0x0024,

Can it be definition?

> +};

...

> +	keypad = devm_kzalloc(&pdev->dev, sizeof(*keypad), GFP_KERNEL);
> +	if (!keypad)
> +		return -ENOMEM;

+ blank line here.

> +	keypad->base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(keypad->base))
> +		return PTR_ERR(keypad->base);

...

> +	if (debounce > KPD_DEBOUNCE_MAX_US) {
> +		dev_err(&pdev->dev, "Debounce time exceeds the maximum allowed time 256ms\n");

	...%dus\n", KPD_DEBOUNCE_MAX_US);
or
	...%dms\n", KPD_DEBOUNCE_MAX_US / USEC_PER_MSEC);

> +		return -EINVAL;
> +	}

...

> +	keypad_pinctrl = devm_pinctrl_get(&pdev->dev);

> +	if (IS_ERR(keypad_pinctrl)) {
> +		return PTR_ERR(keypad_pinctrl);
> +	}

Extra {}.

...

> +	kpd_default = pinctrl_lookup_state(keypad_pinctrl, "default");
> +	if (IS_ERR(kpd_default)) {

> +		dev_err(&pdev->dev, "No default pinctrl state\n");

Isn't it done by pin control core?

> +		return PTR_ERR(kpd_default);
> +	}
> +
> +	pinctrl_select_state(keypad_pinctrl, kpd_default);

And basically entire part is duplicating device core part? (Look at dd.c)

...

> +	irqnr = platform_get_irq(pdev, 0);
> +	if (irqnr < 0) {

> +		dev_err(&pdev->dev, "Failed to get irq\n");

This duplicates what platform core does.

> +		return -irqnr;

- ?!

> +	}

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
