Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 182F2A021C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 14:45:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V0XtSVKtCHwDX/1LJzh8SABKYTKa1KMQ+oJYSP5KyMY=; b=WOGRW8zeLnNGOi
	mVVhzdxTsQkHuXE5UBvSK+4t1SCaoUubQmLwJ091r78FGo0OEz+x0P9vBKjQyeTu/g01OJEAbslWF
	x10IkXzuuJiMVi/fCS81NQN2x9W3sbeMbAztdTkUNCcpu2lDkrwoF05K/cQ8WWD/5vymXEGNhEL6+
	TyWbYRffzA0D0SI4Od9bKhmdjqlCQc35pk2erT/vA81vmx0fhs7dbBcZ3R5VMA2kIM/mMPZhRxbH+
	lr64ZSjqYg/1VLolNENH8spkUtGXuFnstovxK3Tap9gC1KVqLHWZzGtexXSYi8Zsazh107mdcf+km
	LZ/VycFnxV0H8OxzF0hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2xKL-0003Xp-Va; Wed, 28 Aug 2019 12:45:29 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2xKA-0003XO-6Q
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 12:45:19 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Aug 2019 05:45:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,441,1559545200"; d="scan'208";a="197548308"
Received: from deyangko-mobl.ccr.corp.intel.com ([10.249.168.35])
 by fmsmga001.fm.intel.com with ESMTP; 28 Aug 2019 05:45:13 -0700
Message-ID: <6665337688eb070af04d47e6fdd979350783d9f9.camel@intel.com>
Subject: Re: [PATCH v5 09/18] thermal: sun8i: rework for ths calibrate func
From: Zhang Rui <rui.zhang@intel.com>
To: Yangtao Li <tiny.windzz@gmail.com>, edubezval@gmail.com, 
 daniel.lezcano@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com, 
 maxime.ripard@bootlin.com, wens@csie.org, mchehab+samsung@kernel.org, 
 davem@davemloft.net, gregkh@linuxfoundation.org,
 Jonathan.Cameron@huawei.com,  nicolas.ferre@microchip.com
Date: Wed, 28 Aug 2019 20:45:22 +0800
In-Reply-To: <20190810052829.6032-10-tiny.windzz@gmail.com>
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
 <20190810052829.6032-10-tiny.windzz@gmail.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_054518_255756_1AFD6D89 
X-CRM114-Status: GOOD (  26.10  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 2019-08-10 at 05:28 +0000, Yangtao Li wrote:
> Here, we do something to prepare for the subsequent
> support of multiple platforms.
> 
> 1) rename sun50i_ths_calibrate to sun8i_ths_calibrate, because
>    this function should be suitable for all platforms now.
> 
> 2) introduce calibrate callback to mask calibration method
>    differences.
> 
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>

IMO, patch 4/18 to patch 9/18 are all changes to a new file introduced
in patch 1/18, so why not have a prettier patch 1/18 instead of
separate patches?

thanks,
rui

> ---
>  drivers/thermal/sun8i_thermal.c | 86 ++++++++++++++++++-------------
> --
>  1 file changed, 48 insertions(+), 38 deletions(-)
> 
> diff --git a/drivers/thermal/sun8i_thermal.c
> b/drivers/thermal/sun8i_thermal.c
> index 6f4294c2aba7..47c20c4c69e7 100644
> --- a/drivers/thermal/sun8i_thermal.c
> +++ b/drivers/thermal/sun8i_thermal.c
> @@ -60,6 +60,8 @@ struct ths_thermal_chip {
>  	int		scale;
>  	int		ft_deviation;
>  	int		temp_data_base;
> +	int		(*calibrate)(struct ths_device *tmdev,
> +				     u16 *caldata, int callen);
>  	int		(*init)(struct ths_device *tmdev);
>  	int             (*irq_ack)(struct ths_device *tmdev);
>  };
> @@ -152,45 +154,14 @@ static irqreturn_t sun8i_irq_thread(int irq,
> void *data)
>  	return IRQ_HANDLED;
>  }
>  
> -static int sun50i_ths_calibrate(struct ths_device *tmdev)
> +static int sun50i_h6_ths_calibrate(struct ths_device *tmdev,
> +				   u16 *caldata, int callen)
>  {
> -	struct nvmem_cell *calcell;
>  	struct device *dev = tmdev->dev;
> -	u16 *caldata;
> -	size_t callen;
> -	int ft_temp;
> -	int i, ret = 0;
> -
> -	calcell = devm_nvmem_cell_get(dev, "calib");
> -	if (IS_ERR(calcell)) {
> -		if (PTR_ERR(calcell) == -EPROBE_DEFER)
> -			return -EPROBE_DEFER;
> -		/*
> -		 * Even if the external calibration data stored in sid
> is
> -		 * not accessible, the THS hardware can still work,
> although
> -		 * the data won't be so accurate.
> -		 *
> -		 * The default value of calibration register is 0x800
> for
> -		 * every sensor, and the calibration value is usually
> 0x7xx
> -		 * or 0x8xx, so they won't be away from the default
> value
> -		 * for a lot.
> -		 *
> -		 * So here we do not return error if the calibartion
> data is
> -		 * not available, except the probe needs deferring.
> -		 */
> -		goto out;
> -	}
> +	int i, ft_temp;
>  
> -	caldata = nvmem_cell_read(calcell, &callen);
> -	if (IS_ERR(caldata)) {
> -		ret = PTR_ERR(caldata);
> -		goto out;
> -	}
> -
> -	if (!caldata[0] || callen < 2 + 2 * tmdev->chip->sensor_num) {
> -		ret = -EINVAL;
> -		goto out_free;
> -	}
> +	if (!caldata[0] || callen < 2 + 2 * tmdev->chip->sensor_num)
> +		return -EINVAL;
>  
>  	/*
>  	 * efuse layout:
> @@ -245,7 +216,45 @@ static int sun50i_ths_calibrate(struct
> ths_device *tmdev)
>  				   cdata << offset);
>  	}
>  
> -out_free:
> +	return 0;
> +}
> +
> +static int sun8i_ths_calibrate(struct ths_device *tmdev)
> +{
> +	struct nvmem_cell *calcell;
> +	struct device *dev = tmdev->dev;
> +	u16 *caldata;
> +	size_t callen;
> +	int ret = 0;
> +
> +	calcell = devm_nvmem_cell_get(dev, "calib");
> +	if (IS_ERR(calcell)) {
> +		if (PTR_ERR(calcell) == -EPROBE_DEFER)
> +			return -EPROBE_DEFER;
> +		/*
> +		 * Even if the external calibration data stored in sid
> is
> +		 * not accessible, the THS hardware can still work,
> although
> +		 * the data won't be so accurate.
> +		 *
> +		 * The default value of calibration register is 0x800
> for
> +		 * every sensor, and the calibration value is usually
> 0x7xx
> +		 * or 0x8xx, so they won't be away from the default
> value
> +		 * for a lot.
> +		 *
> +		 * So here we do not return error if the calibartion
> data is
> +		 * not available, except the probe needs deferring.
> +		 */
> +		goto out;
> +	}
> +
> +	caldata = nvmem_cell_read(calcell, &callen);
> +	if (IS_ERR(caldata)) {
> +		ret = PTR_ERR(caldata);
> +		goto out;
> +	}
> +
> +	tmdev->chip->calibrate(tmdev, caldata, callen);
> +
>  	kfree(caldata);
>  out:
>  	return ret;
> @@ -294,7 +303,7 @@ static int sun8i_ths_resource_init(struct
> ths_device *tmdev)
>  	if (ret)
>  		goto bus_disable;
>  
> -	ret = sun50i_ths_calibrate(tmdev);
> +	ret = sun8i_ths_calibrate(tmdev);
>  	if (ret)
>  		goto mod_disable;
>  
> @@ -422,6 +431,7 @@ static const struct ths_thermal_chip
> sun50i_h6_ths = {
>  	.scale = -67,
>  	.ft_deviation = SUN50I_H6_FT_DEVIATION,
>  	.temp_data_base = SUN50I_H6_THS_TEMP_DATA,
> +	.calibrate = sun50i_h6_ths_calibrate,
>  	.init = sun50i_h6_thermal_init,
>  	.irq_ack = sun50i_h6_irq_ack,
>  };


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
