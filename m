Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D2614097
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 17:22:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t9oAe0cCgqFmTWCHubANTRP9JuptqVuy642VvPEclGE=; b=eQDGRpCTA9c9Yp
	kUXgEnxTgosJsWrb2/L/Fe20ccyV+BfCNBNnjNkULWhNn5lkyqeH8RvfVzlNwq11fvcWLpOcGfIQQ
	sf7nn+iori5Zc5FEI/53CD/vZ32peGC8XKLcUIND8hoeNOBOshsq4X666SpXxo6TuDcmo59llEceX
	+PeRXD1Qw9i33dkS8PllB37WrrnjcXn9ud5eLm1kDyu0vWTvib3owSRI0Z3kCGudiGiftSb2OJ6D6
	3mXFYVUg2WsTN7lIMCmW1UloX4+ExYocoqFNu9XOymRcgTxfiHuEs5+hWNT9058PJeA9hlj3LlwHk
	rUW9hpLVIjYQ6zg29jpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNIyH-0002ac-BY; Sun, 05 May 2019 15:22:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNIy6-0002V2-B6
 for linux-arm-kernel@lists.infradead.org; Sun, 05 May 2019 15:22:25 +0000
Received: from archlinux (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net
 [81.96.234.148])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3020A2082F;
 Sun,  5 May 2019 15:22:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557069741;
 bh=C1NsNng5Eggpxa9sgUldDGvEA3/Jj554hP6Rds1s+f8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=jJq5oUpVcJhAIPe23f3US+DRDcQiA71XcEm3NOEaKy02L4MBqQgc4z0nLy/K5od6e
 jwIfftpIqYe8/bSYuy71rByrBYTsF9vEDMNe7r06tW1yLzuMn5Y8kQMM+LkM53Yjz9
 5G8hYJ+2gY71k353GtblD9wxEvJ7a7JzLKmWeyFg=
Date: Sun, 5 May 2019 16:22:15 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH 1/7] iio: adc: sun4i-gpadc: rework for support multiple
 thermal sensor
Message-ID: <20190505162215.3594f77d@archlinux>
In-Reply-To: <20190503072813.2719-2-tiny.windzz@gmail.com>
References: <20190503072813.2719-1-tiny.windzz@gmail.com>
 <20190503072813.2719-2-tiny.windzz@gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_082222_683472_CADAA35D 
X-CRM114-Status: GOOD (  22.97  )
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

On Fri,  3 May 2019 03:28:07 -0400
Yangtao Li <tiny.windzz@gmail.com> wrote:

> For some SOCs, there are more than one thermal sensor, and there are
> currently four sensors on the A80. So we need to do some work in order
> to support multiple thermal sensors:
> 
>   1) add sensor_count in gpadc_data.
>   2) introduce sun4i_sensor_tzd in sun4i_gpadc_iio, to support multiple
>      thermal_zone_device and distinguish between different sensors.
>   3) modify read temperature and initialization function.
This comment doesn't mention the devm change. If it had it would have
raised immediate alarm bells.

I'm also not keen on the web of pointers that this driver is steadily
evolving.  I can't immediately see how to reduce that complexity however.

Jonathan

> 
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
>  drivers/iio/adc/sun4i-gpadc-iio.c | 61 +++++++++++++++++++++++--------
>  1 file changed, 45 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/iio/adc/sun4i-gpadc-iio.c b/drivers/iio/adc/sun4i-gpadc-iio.c
> index 04d7147e0110..844fd52bd22f 100644
> --- a/drivers/iio/adc/sun4i-gpadc-iio.c
> +++ b/drivers/iio/adc/sun4i-gpadc-iio.c
> @@ -56,6 +56,7 @@ struct gpadc_data {
>  	unsigned int	tp_adc_select;
>  	unsigned int	(*adc_chan_select)(unsigned int chan);
>  	unsigned int	adc_chan_mask;
> +	unsigned int    sensor_count;
>  };
>  
>  static const struct gpadc_data sun4i_gpadc_data = {
> @@ -65,6 +66,7 @@ static const struct gpadc_data sun4i_gpadc_data = {
>  	.tp_adc_select = SUN4I_GPADC_CTRL1_TP_ADC_SELECT,
>  	.adc_chan_select = &sun4i_gpadc_chan_select,
>  	.adc_chan_mask = SUN4I_GPADC_CTRL1_ADC_CHAN_MASK,
> +	.sensor_count = 1,
>  };
>  
>  static const struct gpadc_data sun5i_gpadc_data = {
> @@ -74,6 +76,7 @@ static const struct gpadc_data sun5i_gpadc_data = {
>  	.tp_adc_select = SUN4I_GPADC_CTRL1_TP_ADC_SELECT,
>  	.adc_chan_select = &sun4i_gpadc_chan_select,
>  	.adc_chan_mask = SUN4I_GPADC_CTRL1_ADC_CHAN_MASK,
> +	.sensor_count = 1,
>  };
>  
>  static const struct gpadc_data sun6i_gpadc_data = {
> @@ -83,14 +86,24 @@ static const struct gpadc_data sun6i_gpadc_data = {
>  	.tp_adc_select = SUN6I_GPADC_CTRL1_TP_ADC_SELECT,
>  	.adc_chan_select = &sun6i_gpadc_chan_select,
>  	.adc_chan_mask = SUN6I_GPADC_CTRL1_ADC_CHAN_MASK,
> +	.sensor_count = 1,
>  };
>  
>  static const struct gpadc_data sun8i_a33_gpadc_data = {
>  	.temp_offset = -1662,
>  	.temp_scale = 162,
>  	.tp_mode_en = SUN8I_GPADC_CTRL1_CHOP_TEMP_EN,
> +	.sensor_count = 1,
>  };
>  
> +struct sun4i_sensor_tzd {
> +	struct sun4i_gpadc_iio          *info;
> +	struct thermal_zone_device      *tzd;
> +	unsigned int                    sensor_id;
> +};
> +
> +#define MAX_SENSOR_COUNT	4
> +
>  struct sun4i_gpadc_iio {
>  	struct iio_dev			*indio_dev;
>  	struct completion		completion;
> @@ -105,7 +118,7 @@ struct sun4i_gpadc_iio {
>  	bool				no_irq;
>  	/* prevents concurrent reads of temperature and ADC */
>  	struct mutex			mutex;
> -	struct thermal_zone_device	*tzd;
> +	struct sun4i_sensor_tzd         tzds[MAX_SENSOR_COUNT];
>  	struct device			*sensor_device;
>  };
>  
> @@ -270,7 +283,8 @@ static int sun4i_gpadc_adc_read(struct iio_dev *indio_dev, int channel,
>  	return sun4i_gpadc_read(indio_dev, channel, val, info->fifo_data_irq);
>  }
>  
> -static int sun4i_gpadc_temp_read(struct iio_dev *indio_dev, int *val)
> +static int sun4i_gpadc_temp_read(struct iio_dev *indio_dev, int *val,
> +				 unsigned int sensor)
>  {
>  	struct sun4i_gpadc_iio *info = iio_priv(indio_dev);
>  
> @@ -324,7 +338,7 @@ static int sun4i_gpadc_read_raw(struct iio_dev *indio_dev,
>  			ret = sun4i_gpadc_adc_read(indio_dev, chan->channel,
>  						   val);
>  		else
> -			ret = sun4i_gpadc_temp_read(indio_dev, val);
> +			ret = sun4i_gpadc_temp_read(indio_dev, val, 0);
>  
>  		if (ret)
>  			return ret;
> @@ -417,10 +431,11 @@ static int sun4i_gpadc_runtime_resume(struct device *dev)
>  
>  static int sun4i_gpadc_get_temp(void *data, int *temp)
>  {
> -	struct sun4i_gpadc_iio *info = data;
> +	struct sun4i_sensor_tzd *tzd = data;
> +	struct sun4i_gpadc_iio *info = tzd->info;
>  	int val, scale, offset;
>  
> -	if (sun4i_gpadc_temp_read(info->indio_dev, &val))
> +	if (sun4i_gpadc_temp_read(info->indio_dev, &val, tzd->sensor_id))
>  		return -ETIMEDOUT;
>  
>  	sun4i_gpadc_temp_scale(info->indio_dev, &scale);
> @@ -609,6 +624,28 @@ static int sun4i_gpadc_probe_mfd(struct platform_device *pdev,
>  	return 0;
>  }
>  
> +static int sun4i_sensor_init(struct sun4i_gpadc_iio *info)
> +{
> +	int i = 0;
> +
> +	for (; i < info->data->sensor_count; i++) {
> +		info->tzds[i].info = info;
> +		info->tzds[i].sensor_id = i;
> +		info->tzds[i].tzd = devm_thermal_zone_of_sensor_register(
> +					info->sensor_device, i, &info->tzds[i],
> +					&sun4i_ts_tz_ops);

Using devm here has the result that the thermal_zones are remove 'after'
the end of the remove function for this driver.  That means you have
them still registered after several other commands are run in the remove
function.

Please ensure that the probe and remove orders are mirror images of each
other. Here it doesn't make a huge amount of actual difference but
it does make the code harder to reason about.

You 'could' propose a devm_ version of iio_map_array_register and
then use that to ensure the ordering is correctly maintained.

> +
> +		if (IS_ERR(info->tzds[i].tzd)) {
> +			dev_err(info->sensor_device,
> +				"could not register thermal sensor: %ld\n",
> +				PTR_ERR(info->tzds[i].tzd));
> +			return PTR_ERR(info->tzds[i].tzd);
> +		}
> +	}
> +
> +	return 0;
> +}
> +
>  static int sun4i_gpadc_probe(struct platform_device *pdev)
>  {
>  	struct sun4i_gpadc_iio *info;
> @@ -646,19 +683,13 @@ static int sun4i_gpadc_probe(struct platform_device *pdev)
>  	pm_runtime_enable(&pdev->dev);
>  
>  	if (IS_ENABLED(CONFIG_THERMAL_OF)) {
> -		info->tzd = thermal_zone_of_sensor_register(info->sensor_device,
> -							    0, info,
> -							    &sun4i_ts_tz_ops);
> +		ret = sun4i_sensor_init(info);
>  		/*
>  		 * Do not fail driver probing when failing to register in
>  		 * thermal because no thermal DT node is found.
>  		 */
> -		if (IS_ERR(info->tzd) && PTR_ERR(info->tzd) != -ENODEV) {
> -			dev_err(&pdev->dev,
> -				"could not register thermal sensor: %ld\n",
> -				PTR_ERR(info->tzd));
> -			return PTR_ERR(info->tzd);
> -		}
> +		if (ret && ret != -ENODEV)
> +			return ret;
>  	}
>  
>  	ret = devm_iio_device_register(&pdev->dev, indio_dev);
> @@ -690,8 +721,6 @@ static int sun4i_gpadc_remove(struct platform_device *pdev)
>  	if (!IS_ENABLED(CONFIG_THERMAL_OF))
>  		return 0;
>  
> -	thermal_zone_of_sensor_unregister(info->sensor_device, info->tzd);
> -
>  	if (!info->no_irq)
>  		iio_map_array_unregister(indio_dev);
>  


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
