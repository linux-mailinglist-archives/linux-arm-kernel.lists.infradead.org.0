Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 409DB1409D
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 17:26:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jHBBp2ZhN2H8y7M2oF/cy6iRO6zEwr5WVdzp/MTnSIQ=; b=I5KATQQ2RGXWuj
	dPQCrwZ+HGTpHHXBhUexGYXq/JagRH9vHWOimduYcEIddqWdAM3SGUxN0pd6Ba2lRGr3W3/1vbIBO
	d2bJWm8Ld1jXlXcb/yr4BpUURVZOdPM2C10vmRHexQDQ59QsOi7A0irumiKMJcLwoGirax3H69OFZ
	lvFj8K2G10mFI+tSn5h2fkbAV7X+4SrXCbMLvzXohyYji5DnH84ysnW84ccY+H8lvM0FBr7l2M4vn
	UPFHLSvlb+KxnqBpLgbKkZWn3V+IWTQGAxn2PqJqnDJ+0ivz4AtdHyxLeDhUyE2SFbYoRsyMIklZB
	VIyk2oN60/SywV9qkAhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNJ1c-0004KZ-Bw; Sun, 05 May 2019 15:26:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNJ1U-0004KG-Um
 for linux-arm-kernel@lists.infradead.org; Sun, 05 May 2019 15:25:54 +0000
Received: from archlinux (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net
 [81.96.234.148])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CF8822082F;
 Sun,  5 May 2019 15:25:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557069952;
 bh=fIqjOlxzOgrK3zCqzNMKHZNwuH1rod6mWG8P0cloWxM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=pRmC2HWrd/lZWHHUHXLFkAaXe4zbBbq5NxOp6N+4yOF2QuRYcAKTRETfTnRgp1R+z
 jMDwuTNeDamVvVLr3ghaeETGH4RIkrkd1uyg6l3cAZXicvv+om3W/guQIVKzMHh4Dz
 dq/XpnujkJA/IP0b40jHsXS13rkqkJJ7jSxS53KQ=
Date: Sun, 5 May 2019 16:25:46 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH 6/7] iio: adc: sun4i-gpadc-iio: add support for H6
 thermal sensor
Message-ID: <20190505162546.634bae93@archlinux>
In-Reply-To: <20190503072813.2719-7-tiny.windzz@gmail.com>
References: <20190503072813.2719-1-tiny.windzz@gmail.com>
 <20190503072813.2719-7-tiny.windzz@gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_082553_033088_DDA26B1A 
X-CRM114-Status: GOOD (  20.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 maxime.ripard@bootlin.com, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 pmeerw@pmeerw.net, knaack.h@gmx.de, lee.jones@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri,  3 May 2019 03:28:12 -0400
Yangtao Li <tiny.windzz@gmail.com> wrote:

> This patch adds support for the H6 ths sensor.
> 
> TODO: calibrate thermal sensor by using information from sid.
> 
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
This and the patches before it that I haven't comment on look fine to me.

thanks,

Jonathan
> ---
>  drivers/iio/adc/sun4i-gpadc-iio.c | 65 +++++++++++++++++++++++++++++++
>  include/linux/mfd/sun4i-gpadc.h   |  9 +++++
>  2 files changed, 74 insertions(+)
> 
> diff --git a/drivers/iio/adc/sun4i-gpadc-iio.c b/drivers/iio/adc/sun4i-gpadc-iio.c
> index f24eb76d65c0..9b6fc592f54c 100644
> --- a/drivers/iio/adc/sun4i-gpadc-iio.c
> +++ b/drivers/iio/adc/sun4i-gpadc-iio.c
> @@ -120,6 +120,20 @@ static const struct gpadc_data sun8i_a33_gpadc_data = {
>  	.temp_data_base = SUN4I_GPADC_TEMP_DATA,
>  };
>  
> +static int sun50i_gpadc_disable(struct sun4i_gpadc_iio *info);
> +static int sun50i_gpadc_enable(struct sun4i_gpadc_iio *info);
> +
> +static const struct gpadc_data sun50i_h6_gpadc_data = {
> +	.temp_offset = -2809,
> +	.temp_scale = -67,
> +	.has_bus_clk = true,
> +	.has_bus_rst = true,
> +	.gpadc_enable = sun50i_gpadc_enable,
> +	.gpadc_disable = sun50i_gpadc_disable,
> +	.sensor_count = 2,
> +	.temp_data_base = SUN50I_H6_GPADC_TEMP_DATA,
> +};
> +
>  struct sun4i_sensor_tzd {
>  	struct sun4i_gpadc_iio          *info;
>  	struct thermal_zone_device      *tzd;
> @@ -452,6 +466,53 @@ static int sun4i_gpadc_enable(struct sun4i_gpadc_iio *info)
>  	return 0;
>  }
>  
> +static int sun50i_gpadc_enable(struct sun4i_gpadc_iio *info)
> +{
> +	int ret, val;
> +
> +	ret = reset_control_deassert(info->reset);
> +	if (ret)
> +		return ret;
> +
> +	ret = clk_prepare_enable(info->bus_clk);
> +	if (ret)
> +		goto assert_reset;
> +
> +	/*
> +	 * clkin = 24MHz
> +	 * T acquire = clkin / (SUN50I_GPADC_CTRL0_T_ACQ + 1)
> +	 *           = 20us
> +	 */
> +	regmap_write(info->regmap, SUN4I_GPADC_CTRL0,
> +		     SUN50I_GPADC_CTRL0_T_ACQ(479));
> +	/* average over 4 samples */
> +	regmap_write(info->regmap, SUN50I_H6_GPADC_CTRL3,
> +		     SUN4I_GPADC_CTRL3_FILTER_EN |
> +		     SUN4I_GPADC_CTRL3_FILTER_TYPE(1));
> +	/* period = (SUN50I_GPADC_TPR_TEMP_PERIOD + 1) * 4096 / clkin; ~10ms */
> +	regmap_write(info->regmap, SUN50I_GPADC_TPR,
> +		     SUN50I_GPADC_TPR_TEMP_PERIOD(58));
> +	/* TODO: calibrate ths */
> +	/* enable sensor */
> +	val = GENMASK(info->data->sensor_count - 1, 0);
> +	regmap_write(info->regmap, SUN4I_GPADC_CTRL1, val);
> +
> +	return 0;
> +
> +assert_reset:
> +	reset_control_assert(info->reset);
> +
> +	return ret;
> +}
> +
> +static int sun50i_gpadc_disable(struct sun4i_gpadc_iio *info)
> +{
> +	clk_disable_unprepare(info->bus_clk);
> +	reset_control_assert(info->reset);
> +
> +	return 0;
> +}
> +
>  static int sun4i_gpadc_runtime_suspend(struct device *dev)
>  {
>  	struct sun4i_gpadc_iio *info = iio_priv(dev_get_drvdata(dev));
> @@ -546,6 +607,10 @@ static const struct of_device_id sun4i_gpadc_of_id[] = {
>  		.compatible = "allwinner,sun8i-a33-ths",
>  		.data = &sun8i_a33_gpadc_data,
>  	},
> +	{
> +		.compatible = "allwinner,sun50i-h6-ths",
> +		.data = &sun50i_h6_gpadc_data,
> +	},
>  	{ /* sentinel */ }
>  };
>  
> diff --git a/include/linux/mfd/sun4i-gpadc.h b/include/linux/mfd/sun4i-gpadc.h
> index 139872c2e0fe..f505013e9c0d 100644
> --- a/include/linux/mfd/sun4i-gpadc.h
> +++ b/include/linux/mfd/sun4i-gpadc.h
> @@ -19,6 +19,9 @@
>  #define SUN4I_GPADC_CTRL0_FS_DIV(x)			((GENMASK(3, 0) & (x)) << 16)
>  #define SUN4I_GPADC_CTRL0_T_ACQ(x)			(GENMASK(15, 0) & (x))
>  
> +/* TP_CTRL0 bits for sun50i SOCs */
> +#define SUN50I_GPADC_CTRL0_T_ACQ(x)			((GENMASK(15, 0) & (x)) << 16)
> +
>  #define SUN4I_GPADC_CTRL1				0x04
>  
>  #define SUN4I_GPADC_CTRL1_STYLUS_UP_DEBOUNCE(x)		((GENMASK(7, 0) & (x)) << 12)
> @@ -49,6 +52,9 @@
>  #define SUN4I_GPADC_CTRL2_PRE_MEA_EN			BIT(24)
>  #define SUN4I_GPADC_CTRL2_PRE_MEA_THRE_CNT(x)		(GENMASK(23, 0) & (x))
>  
> +#define SUN50I_GPADC_TPR				0x08
> +#define SUN50I_GPADC_TPR_TEMP_PERIOD(x)			((GENMASK(19, 0) & (x)) << 12)
> +
>  #define SUN4I_GPADC_CTRL3				0x0c
>  
>  #define SUN4I_GPADC_CTRL3_FILTER_EN			BIT(2)
> @@ -84,6 +90,9 @@
>  #define SUN4I_GPADC_TEMP_DATA				0x20
>  #define SUN4I_GPADC_DATA				0x24
>  
> +#define SUN50I_H6_GPADC_CTRL3				0x30
> +#define SUN50I_H6_GPADC_TEMP_DATA			0xc0
> +
>  #define SUN4I_GPADC_IRQ_FIFO_DATA			0
>  #define SUN4I_GPADC_IRQ_TEMP_DATA			1
>  


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
