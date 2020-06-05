Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D0B1EF83C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 14:47:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WuWE8L8gReojRnIzN1AjCNK64IqBMx4vbJAX8udrye0=; b=cyuLi86HqWN6Qt
	quUP0vZmbw2teUSQNF5cSo1J4483RkynsLfa0bxlswSXt6NvOjE0dP07RZkB5AgWORqPzS321iubU
	z5eVG4uZ3WEhNbuiAwTgDMYn+LPwQdebQByKJHxA70gP5+W9j/nDF6pluRVK6itK3UMKT4WhEfIiM
	GhzIQHGmN4mH9NqWWJH7Fp5LYbemNWQzcv/6sv4Kza/LOVou09lwtwFcZ76r6Ih4qqAuZqAzSVOdB
	VI3BgdUmzys2M/QWmKkEdZu41qIA11CJ6KhindwAYJsnOnX7twWlZoG4cnX3rJjDBW93nvj92N1M6
	T/BHNhjwqvVthKlwu3xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhBkP-0004gj-24; Fri, 05 Jun 2020 12:46:57 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhBkD-0004fa-VY; Fri, 05 Jun 2020 12:46:51 +0000
IronPort-SDR: DM1qkh8sRjeteUBTck8VLTnKl1uuBp8M/ABn/NXCms3oWp4yEII491t1RGuJgk9qpZYBu0sT3y
 8QmKuD22LgyQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2020 05:46:45 -0700
IronPort-SDR: r/oJX8fhNmc8e/bISoUrjyeoU9guHWxK+HVaeG11SzZWS7YbfeGTMiJ95UKT4qtI63FTHd0jO8
 yFEOq6VRqCWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,476,1583222400"; d="scan'208";a="269755373"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga003.jf.intel.com with ESMTP; 05 Jun 2020 05:46:41 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jhBkB-00B1rI-FV; Fri, 05 Jun 2020 15:46:43 +0300
Date: Fri, 5 Jun 2020 15:46:43 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: Re: [V7, 2/2] media: i2c: dw9768: Add DW9768 VCM driver
Message-ID: <20200605124643.GG2428291@smile.fi.intel.com>
References: <20200605105412.18813-1-dongchun.zhu@mediatek.com>
 <20200605105412.18813-3-dongchun.zhu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200605105412.18813-3-dongchun.zhu@mediatek.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_054650_215660_3741FA33 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, drinkcat@chromium.org,
 louis.kuo@mediatek.com, srv_heupstream@mediatek.com, linus.walleij@linaro.org,
 shengnan.wang@mediatek.com, tfiga@chromium.org, bgolaszewski@baylibre.com,
 sj.huang@mediatek.com, robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
 sakari.ailus@linux.intel.com, matthias.bgg@gmail.com, bingbu.cao@intel.com,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 05, 2020 at 06:54:12PM +0800, Dongchun Zhu wrote:
> Add a V4L2 sub-device driver for DW9768 voice coil motor, providing
> control to set the desired focus via IIC serial interface.

...

> +config VIDEO_DW9768
> +	tristate "DW9768 lens voice coil support"
> +	depends on I2C && VIDEO_V4L2

No compile test?

> +	depends on PM

This is very strange dependency for ordinary driver.

> +	select MEDIA_CONTROLLER
> +	select VIDEO_V4L2_SUBDEV_API
> +	select V4L2_FWNODE

...

> +/*
> + * DW9768 requires waiting time (delay time) of t_OPR after power-up,
> + * or in the case of PD reset taking place.
> + */
> +#define DW9768_T_OPR_US				1000
> +#define DW9768_Tvib_MS_BASE10			(64 - 1)
> +#define DW9768_AAC_MODE_DEFAULT			2

> +#define DW9768_AAC_TIME_DEFAULT			0x20

Hex? Why not decimal?

> +#define DW9768_CLOCK_PRE_SCALE_DEFAULT		1

...

> +static int dw9768_mod_reg(struct dw9768 *dw9768, u8 reg, u8 mask, u8 val)
> +{
> +	struct i2c_client *client = v4l2_get_subdevdata(&dw9768->sd);
> +	int ret;
> +
> +	ret = i2c_smbus_read_byte_data(client, reg);
> +	if (ret < 0)
> +		return ret;
> +

> +	val = ((unsigned char)ret & ~mask) | (val & mask);

This cast is weird.

> +
> +	return i2c_smbus_write_byte_data(client, reg, val);
> +}

...

> +			dev_err(&client->dev, "%s I2C failure: %d",
> +				__func__, ret);

One line?

...

> +static int dw9768_release(struct dw9768 *dw9768)
> +{
> +	struct i2c_client *client = v4l2_get_subdevdata(&dw9768->sd);
> +	u32 move_delay_us = dw9768_cal_move_delay(dw9768->aac_mode,
> +						  dw9768->clock_presc,
> +						  dw9768->aac_timing) / 100;
> +	int ret, val;
> +
> +	val = round_down(dw9768->focus->val, DW9768_MOVE_STEPS);
> +	for ( ; val >= 0; val -= DW9768_MOVE_STEPS) {
> +		ret = dw9768_set_dac(dw9768, val);
> +		if (ret) {
> +			dev_err(&client->dev, "I2C write fail: %d", ret);
> +			return ret;
> +		}
> +		usleep_range(move_delay_us, move_delay_us + 1000);
> +	}


It will look more naturally in the multiplier kind of value.

	unsigned int steps = DIV_ROUND_UP(...);

	while (steps--) {
		...(..., steps * ..._MOVE_STEPS);
		...
	}

but double check arithmetics.

> +	return 0;
> +}


Also it seems we need to have writex_poll_timeout() implementation (see
iopoll.h).

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
