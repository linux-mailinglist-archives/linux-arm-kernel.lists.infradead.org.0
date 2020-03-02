Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 441CE17592E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 12:07:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JBHwFUOXkkQdJ1/f7K9yGvQwj73O+Ddnvzi3cNpFU5E=; b=DRnU7PlHKmYRQ/
	6cbd5a5cc0s5sW2u8K9WJzZ7waaizdH6/0R+7nyvW3nkUMA1ZQAJQPooHzkXXkegzH+63SoaPMzJ/
	B6BQiadiW+V6spRu3EwMzL+KcxeO+VA/Cs4HG7sWAMOp2y+TDRuwfqtVy4Fzmz4HBcWerAGnwmQ7s
	eEwkdnNyRBO2CPdYL0dT8mouuOcXQSa6aRstQYVjyGaA3JpKbR+Z35+rEiXRhqJyUidTdPFYdgB2O
	1pNUq5rHBDzbPY9PzpEjgEHhO7pATpDo15DphEJzxmL/BtZu3ylF7QvcaXai4lEs1hIZKnaUv76n+
	dLVs43Lw2tSqdOpX68Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8iv1-0002Im-5M; Mon, 02 Mar 2020 11:07:27 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8iut-0002IH-SL; Mon, 02 Mar 2020 11:07:21 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Mar 2020 03:07:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,506,1574150400"; d="scan'208";a="318972571"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga001.jf.intel.com with ESMTP; 02 Mar 2020 03:07:15 -0800
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1j8iuq-00675X-Ti; Mon, 02 Mar 2020 13:07:16 +0200
Date: Mon, 2 Mar 2020 13:07:16 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: Re: [V3, 2/2] media: i2c: Add DW9768 VCM driver
Message-ID: <20200302110716.GR1224808@smile.fi.intel.com>
References: <20200228155958.20657-1-dongchun.zhu@mediatek.com>
 <20200228155958.20657-3-dongchun.zhu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228155958.20657-3-dongchun.zhu@mediatek.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_030719_930137_ACDDF548 
X-CRM114-Status: GOOD (  15.76  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, drinkcat@chromium.org,
 srv_heupstream@mediatek.com, shengnan.wang@mediatek.com, tfiga@chromium.org,
 louis.kuo@mediatek.com, sj.huang@mediatek.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, sakari.ailus@linux.intel.com,
 matthias.bgg@gmail.com, bingbu.cao@intel.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 11:59:58PM +0800, Dongchun Zhu wrote:
> This patch adds a V4L2 sub-device driver for DW9768 lens voice coil,
> and provides control to set the desired focus via I2C serial interface.

...

> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -5139,6 +5139,7 @@ M:	Dongchun Zhu <dongchun.zhu@mediatek.com>
>  L:	linux-media@vger.kernel.org
>  T:	git git://linuxtv.org/media_tree.git
>  S:	Maintained
> +F:	drivers/media/i2c/dw9768.c
>  F:	Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml

Had you run parse-maintainers.pl?

I believe the order is wrong here.

...

> +#define DW9768_MAX_FOCUS_POS			1023

Is this value being dictated by amount of bits available in the hardware?
If so, I would rather put it in a form (1024 - 1) or alike to show that it has
10 bit resolution.

...

> +static int dw9768_set_dac(struct dw9768 *dw9768, u16 val)
> +{
> +	struct i2c_client *client = v4l2_get_subdevdata(&dw9768->sd);
> +
> +	/* Write VCM position to registers */
> +	return i2c_smbus_write_word_data(client, DW9768_MSB_ADDR,
> +					 swab16(val));

i2c_smbus_write_word_swapped() ?

> +}

...

> +static int dw9768_release(struct dw9768 *dw9768)
> +{
> +	struct i2c_client *client = v4l2_get_subdevdata(&dw9768->sd);
> +	int ret, val;
> +

> +	for (val = round_down(dw9768->focus->val, DW9768_MOVE_STEPS);
> +	     val >= 0; val -= DW9768_MOVE_STEPS) {

Perhaps

	val = round_down(dw9768->focus->val, DW9768_MOVE_STEPS);
	for ( ; val >= 0; val -= DW9768_MOVE_STEPS) {

> +		ret = dw9768_set_dac(dw9768, val);
> +		if (ret) {

> +			dev_err(&client->dev, "%s I2C failure: %d",
> +				__func__, ret);

Do you need __func__? What for?

> +			return ret;
> +		}

> +		usleep_range(DW9768_MOVE_DELAY_US,
> +			     DW9768_MOVE_DELAY_US + 1000);

It's exactly one line. Perhaps you have to check your editor settings.
And check entire code for a such.

> +	}
> +
> +	/*
> +	 * Wait for the motor to stabilize after the last movement
> +	 * to prevent the motor from shaking.
> +	 */
> +	usleep_range(DW9768_STABLE_TIME_US - DW9768_MOVE_DELAY_US,
> +		     DW9768_STABLE_TIME_US - DW9768_MOVE_DELAY_US + 1000);
> +
> +	ret = i2c_smbus_write_byte_data(client, DW9768_RING_PD_CONTROL_REG,
> +					DW9768_PD_MODE_EN);
> +	if (ret < 0)
> +		return ret;
> +
> +	/*
> +	 * DW9769 requires waiting delay time of t_OPR
> +	 * after PD reset takes place.
> +	 */
> +	usleep_range(DW9768_T_OPR_US, DW9768_T_OPR_US + 100);
> +
> +	return 0;
> +}

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
