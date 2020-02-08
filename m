Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AAEA156550
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 17:03:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dIrLo/hHInJYcSWteSX9RNDwS3iH720bO8/5BLMO46I=; b=VbhlVX1yQv1END
	6/65kuye0XUPSL149EwT+2pN7BblRyyk/SeU5SiFP4I+L6bMTyKYve/cn63goYQpMRgqWH+Xd02sG
	PFYVFTEyFG5sFmTVVE9YQIhLEzExIcFwyl78ffVV9CUBu9KlIuy/vySTenrWzxWa3lUWHnOShfOy6
	OZK0pWUtEVRpEOd3p3p3mMoh2MWeyBgrsyryeA3Nu6kZ0T/DsPIvkln+or0laTXE1uzo3Yu8gWNft
	ySBPMX3ahmyb5f+k2x5LlSzzpeVpfYeEjS0zOhpxrO36d7Oc2+cPujObKj/Omi1Gb3m00qJil/17t
	MTJ/vAn1Y57MbbWpi0VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0Sa4-0002sM-LR; Sat, 08 Feb 2020 16:03:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0SZx-0002s1-2j
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Feb 2020 16:03:34 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1465121775;
 Sat,  8 Feb 2020 16:03:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581177811;
 bh=a0WCdMsCR3bSWd7XKoKfwiTcys3eZZHiMv/g/dq7LVU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=JR8ObQuSzw7x/YcUwXpMfqcH540Ca/D347mJN1OafEsiJiKVvQ/qo7j8vTXutyZvh
 lqNJNmboQmHcPmApGG21qo+lLVFxgkCHnN7l5m1LsFJLV9ojBC2Rl9xxj1KMQ6RhHm
 rNOqvMnowZXQWGAsk+IpePuAlyrtjmG9/SJW9vKw=
Date: Sat, 8 Feb 2020 16:03:27 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Olivier Moysan <olivier.moysan@st.com>
Subject: Re: [PATCH 2/4] iio: adc: sd modulator: add scale support
Message-ID: <20200208160327.334da020@archlinux>
In-Reply-To: <20200204101008.11411-3-olivier.moysan@st.com>
References: <20200204101008.11411-1-olivier.moysan@st.com>
 <20200204101008.11411-3-olivier.moysan@st.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200208_080333_155385_7845770F 
X-CRM114-Status: GOOD (  19.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 pmeerw@pmeerw.net, knaack.h@gmx.de, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 4 Feb 2020 11:10:06 +0100
Olivier Moysan <olivier.moysan@st.com> wrote:

> Add scale support to sigma delta modulator.
> 
> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>

I note below that there are probably some complexities around
whether vref is used as you have it here or not.

A few other bits inline around a race condition introduced in probe / remove.

Thanks,

Jonathan

> ---
>  drivers/iio/adc/sd_adc_modulator.c | 108 ++++++++++++++++++++++++++---
>  1 file changed, 100 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/iio/adc/sd_adc_modulator.c b/drivers/iio/adc/sd_adc_modulator.c
> index 560d8c7d9d86..a83f35832050 100644
> --- a/drivers/iio/adc/sd_adc_modulator.c
> +++ b/drivers/iio/adc/sd_adc_modulator.c
> @@ -10,8 +10,7 @@
>  #include <linux/iio/triggered_buffer.h>
>  #include <linux/module.h>
>  #include <linux/of_device.h>
> -
> -static const struct iio_info iio_sd_mod_iio_info;
> +#include <linux/regulator/consumer.h>
>  
>  static const struct iio_chan_spec iio_sd_mod_ch = {
>  	.type = IIO_VOLTAGE,
> @@ -21,34 +20,126 @@ static const struct iio_chan_spec iio_sd_mod_ch = {
>  		.realbits = 1,
>  		.shift = 0,
>  	},
> +	.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE),

This relies on generic sigma delta modulators using an external vref.
They might have an internal always on regulator...
I would suggest we only support scale for devices with explicitly
defined compatibles where we can know what regulators are used etc.

For many devices, there will be a single powersupply called vdd-supply
or similar in DT.  It may also provide a reference voltage.

> +};
> +
> +static const struct iio_chan_spec iio_sd_mod_ch_ads = {
> +	.type = IIO_VOLTAGE,
> +	.indexed = 1,
> +	.scan_type = {
> +		.sign = 'u',
> +		.realbits = 1,
> +		.shift = 0,
> +	},
> +	.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE),
> +	.differential = 1,
> +};
> +
> +struct iio_sd_mod_priv {
> +	struct regulator *vref;
> +	int vref_mv;
> +};
> +
> +static int iio_sd_mod_read_raw(struct iio_dev *indio_dev,
> +			       struct iio_chan_spec const *chan, int *val,
> +			       int *val2, long mask)
> +{
> +	struct iio_sd_mod_priv *priv = iio_priv(indio_dev);
> +
> +	switch (mask) {
> +	case IIO_CHAN_INFO_SCALE:
> +		*val = priv->vref_mv;
> +		*val2 = chan->scan_type.realbits;
> +		return IIO_VAL_INT;
> +	}
> +
> +	return -EINVAL;
> +}
> +
> +static const struct iio_info iio_sd_mod_iio_info = {
> +	.read_raw = iio_sd_mod_read_raw,
>  };
>  
>  static int iio_sd_mod_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
> +	struct iio_sd_mod_priv *priv;
>  	struct iio_dev *iio;
> +	int ret;
>  
> -	iio = devm_iio_device_alloc(dev, 0);
> +	iio = devm_iio_device_alloc(dev, sizeof(*priv));
>  	if (!iio)
>  		return -ENOMEM;
>  
> +	iio->channels = (const struct iio_chan_spec *)
> +					of_device_get_match_data(&pdev->dev);
> +
> +	priv = iio_priv(iio);
> +
>  	iio->dev.parent = dev;
>  	iio->dev.of_node = dev->of_node;
>  	iio->name = dev_name(dev);
>  	iio->info = &iio_sd_mod_iio_info;
>  	iio->modes = INDIO_BUFFER_HARDWARE;
> -
>  	iio->num_channels = 1;
> -	iio->channels = &iio_sd_mod_ch;
>  
>  	platform_set_drvdata(pdev, iio);
>  
> -	return devm_iio_device_register(&pdev->dev, iio);
> +	priv->vref = devm_regulator_get_optional(dev, "vref");
> +	if (IS_ERR(priv->vref)) {
> +		ret = PTR_ERR(priv->vref);
> +		if (ret != -ENODEV) {
> +			if (ret != -EPROBE_DEFER)
> +				dev_err(dev, "vref get failed, %d\n", ret);
> +			return ret;
> +		}
> +	}
> +
> +	if (!IS_ERR(priv->vref)) {
> +		ret = regulator_enable(priv->vref);
> +		if (ret < 0) {
> +			dev_err(dev, "vref enable failed %d\n", ret);
> +			return ret;
> +		}
> +
> +		ret = regulator_get_voltage(priv->vref);
> +		if (ret < 0) {
> +			dev_err(dev, "vref get failed, %d\n", ret);
> +			goto err_regulator_disable;
> +		}
> +
> +		priv->vref_mv = ret / 1000;
> +		dev_dbg(dev, "vref+=%dmV\n", priv->vref_mv);
> +	}
> +
> +	ret = devm_iio_device_register(&pdev->dev, iio);
This exposes the userspace and in kernel interfaces.  Those
are partly dependent on the regulator enable you have above.

Using devm_ version fo this interface leaves you with a race in remove.
The regulator is disabled before you have remove the interfaces that
will only work if we assume it is still on.

Hence, you should either use devm_add_action_or_reset magic
to ensure we still do everything in the right order, or do it
manually by using iio_device_register and iio_device_unregister.


> +	if (ret < 0) {
> +		dev_err(dev, "Failed to register sd-modulator, %d\n", ret);
> +		goto err_regulator_disable;
> +	}
> +
> +	return 0;
> +
> +err_regulator_disable:
> +	regulator_disable(priv->vref);
> +
> +	return ret;
> +}
> +
> +static int iio_sd_mod_remove(struct platform_device *pdev)
> +{
> +	struct iio_dev *indio_dev = platform_get_drvdata(pdev);
> +	struct iio_sd_mod_priv *priv = iio_priv(indio_dev);
> +
> +	if (priv->vref)
> +		return regulator_disable(priv->vref);
> +
> +	return 0;
>  }
>  
>  static const struct of_device_id sd_adc_of_match[] = {
> -	{ .compatible = "sd-modulator" },
> -	{ .compatible = "ads1201" },
> +	{ .compatible = "sd-modulator", .data = &iio_sd_mod_ch },
> +	{ .compatible = "ads1201", .data = &iio_sd_mod_ch_ads },
>  	{ }
>  };
>  MODULE_DEVICE_TABLE(of, sd_adc_of_match);
> @@ -59,6 +150,7 @@ static struct platform_driver iio_sd_mod_adc = {
>  		.of_match_table = of_match_ptr(sd_adc_of_match),
>  	},
>  	.probe = iio_sd_mod_probe,
> +	.remove = iio_sd_mod_remove,
>  };
>  
>  module_platform_driver(iio_sd_mod_adc);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
