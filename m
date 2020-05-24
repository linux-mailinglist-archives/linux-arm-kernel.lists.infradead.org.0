Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2D11DFF27
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 15:38:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O/cXfCrWBcyoKZURgzVAc4m/JS/3gV6REitkWRu5YHI=; b=rBNCrFAKQ0GnuB
	QHorJRkKQnftJZL3qKzTsg7hnVMd6kIjzM4aFafMbin8f+agBEXEQ13xuc2vaPvnRnyU/E3ugpWqp
	zXv8WElI+GrkYy0GS+17oD3C4gO2WAkRxwuA+uEfJ78M4xSzGUIE++wZRlCFsXCG5x76/1yAzMI5H
	yN4uNkcuillVk2yY9Ko7VdPzMj/93Kdt2M/YfXeusyan8txXPjB8zRZ2KDo2sCBRAEOy2L1SdwVEC
	OtenwsAk9v5wfcw9zRKSvfY5Gpkp3i6uQhUeA0zsmsXy7aDPly1gsvn/gtBaq6tOSPEXGC/uBCHrI
	IednXt74XBY1GAqf3B0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcqpy-0006I0-Ox; Sun, 24 May 2020 13:38:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcqpo-0006He-K4
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 13:38:38 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7E9BE20878;
 Sun, 24 May 2020 13:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590327515;
 bh=rgDtiiZkuP0WaMXUBcY+ZQBNE08tb64n4l11jGM/PRM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=JEay15jsDP5myvzwvbjr2GWxsJlw0tTb3ZiauAt5bqJlWFVevOzd14iI49yfq56ri
 pyGnS47DCoaMJBDHRBswz3o4xBrma7QYO1z17JdTbMPjfytlqElJJm7U3QI2aOYSob
 0PB7pWz76gqkUDQcwgCQcAKJhN/5D9J3sHWffC0o=
Date: Sun, 24 May 2020 14:38:30 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Alexandru Ardelean <alexandru.ardelean@analog.com>
Subject: Re: [PATCH 3/3] iio: remove
 iio_triggered_buffer_postenable()/iio_triggered_buffer_predisable()
Message-ID: <20200524143830.11c2d97e@archlinux>
In-Reply-To: <20200522104632.517470-3-alexandru.ardelean@analog.com>
References: <20200522104632.517470-1-alexandru.ardelean@analog.com>
 <20200522104632.517470-3-alexandru.ardelean@analog.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_063836_703774_6C5BD3FE 
X-CRM114-Status: GOOD (  23.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linus.walleij@linaro.org, Lars-Peter Clausen <lars@metafoo.de>,
 alexandre.torgue@st.com, linux-iio@vger.kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, songqiang1304521@gmail.com,
 mcoquelin.stm32@gmail.com, lorenzo.bianconi83@gmail.com, shawnguo@kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 22 May 2020 13:46:32 +0300
Alexandru Ardelean <alexandru.ardelean@analog.com> wrote:

> From: Lars-Peter Clausen <lars@metafoo.de>
> 
> This patch should be squashed into the first one, as the first one is
> breaking the build (intentionally) to make the IIO core files easier to
> review.
> 
> Signed-off-by: Lars-Peter Clausen <lars@metafoo.de>
> Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>

Yeah!  Didn't realise you'd finally gotten to the end of your mammoth rework
leading to this.

A few really minor things inline to tidy up.

Thanks,

Jonathan

 
> diff --git a/drivers/iio/accel/st_accel_buffer.c b/drivers/iio/accel/st_accel_buffer.c
> index b5c814ef1637..c87f9a7d2453 100644
> --- a/drivers/iio/accel/st_accel_buffer.c
> +++ b/drivers/iio/accel/st_accel_buffer.c
> @@ -33,13 +33,9 @@ static int st_accel_buffer_postenable(struct iio_dev *indio_dev)
>  {
>  	int err;
>  
> -	err = iio_triggered_buffer_postenable(indio_dev);
> -	if (err < 0)
> -		return err;
> -
>  	err = st_sensors_set_axis_enable(indio_dev, indio_dev->active_scan_mask[0]);
>  	if (err < 0)
> -		goto st_accel_buffer_predisable;
> +		return err;
>  
>  	err = st_sensors_set_enable(indio_dev, true);
>  	if (err < 0)
> @@ -49,8 +45,6 @@ static int st_accel_buffer_postenable(struct iio_dev *indio_dev)
>  
>  st_accel_buffer_enable_all_axis:
>  	st_sensors_set_axis_enable(indio_dev, ST_SENSORS_ENABLE_ALL_AXIS);
> -st_accel_buffer_predisable:
> -	iio_triggered_buffer_predisable(indio_dev);
>  	return err;
>  }
>  
> @@ -60,12 +54,10 @@ static int st_accel_buffer_predisable(struct iio_dev *indio_dev)
>  
>  	err = st_sensors_set_enable(indio_dev, false);
>  	if (err < 0)
> -		goto st_accel_buffer_predisable;
> -
> -	err = st_sensors_set_axis_enable(indio_dev, ST_SENSORS_ENABLE_ALL_AXIS);
> +		return err;
>  
> -st_accel_buffer_predisable:
> -	err2 = iio_triggered_buffer_predisable(indio_dev);
> +	err2 = st_sensors_set_axis_enable(indio_dev,
> +					  ST_SENSORS_ENABLE_ALL_AXIS);
>  	if (!err)
I don't think you can get here with err set.
>  		err = err2;
>  


...
  
> diff --git a/drivers/iio/gyro/st_gyro_buffer.c b/drivers/iio/gyro/st_gyro_buffer.c
> index 9c92ff7a82be..7b86502d5da3 100644
> --- a/drivers/iio/gyro/st_gyro_buffer.c
> +++ b/drivers/iio/gyro/st_gyro_buffer.c
> @@ -33,13 +33,9 @@ static int st_gyro_buffer_postenable(struct iio_dev *indio_dev)
>  {
>  	int err;
>  
> -	err = iio_triggered_buffer_postenable(indio_dev);
> -	if (err < 0)
> -		return err;
> -
>  	err = st_sensors_set_axis_enable(indio_dev, indio_dev->active_scan_mask[0]);
>  	if (err < 0)
> -		goto st_gyro_buffer_predisable;
> +		return err;
>  
>  	err = st_sensors_set_enable(indio_dev, true);
>  	if (err < 0)
> @@ -49,8 +45,6 @@ static int st_gyro_buffer_postenable(struct iio_dev *indio_dev)
>  
>  st_gyro_buffer_enable_all_axis:
>  	st_sensors_set_axis_enable(indio_dev, ST_SENSORS_ENABLE_ALL_AXIS);
> -st_gyro_buffer_predisable:
> -	iio_triggered_buffer_predisable(indio_dev);
>  	return err;
>  }
>  
> @@ -59,13 +53,8 @@ static int st_gyro_buffer_predisable(struct iio_dev *indio_dev)
>  	int err, err2;
>  
>  	err = st_sensors_set_enable(indio_dev, false);
> -	if (err < 0)
> -		goto st_gyro_buffer_predisable;

Previously we didn't bother trying to carry on if this failed. I don't think we
should start doing so now.

> -
> -	err = st_sensors_set_axis_enable(indio_dev, ST_SENSORS_ENABLE_ALL_AXIS);
>  
> -st_gyro_buffer_predisable:
> -	err2 = iio_triggered_buffer_predisable(indio_dev);
> +	err2 = st_sensors_set_axis_enable(indio_dev, ST_SENSORS_ENABLE_ALL_AXIS);
>  	if (!err)
>  		err = err2;
>  

...

> diff --git a/drivers/iio/light/gp2ap020a00f.c b/drivers/iio/light/gp2ap020a00f.c
> index 070d4cd0cf54..29d7af33efa1 100644
> --- a/drivers/iio/light/gp2ap020a00f.c
> +++ b/drivers/iio/light/gp2ap020a00f.c
> @@ -1390,12 +1390,6 @@ static int gp2ap020a00f_buffer_postenable(struct iio_dev *indio_dev)
>  
>  	mutex_lock(&data->lock);
I guess it doesn't matter, but no idea why this was ever under the local lock!

>  
> -	err = iio_triggered_buffer_postenable(indio_dev);
> -	if (err < 0) {
> -		mutex_unlock(&data->lock);
> -		return err;
> -	}
> -
>  	/*
>  	 * Enable triggers according to the scan_mask. Enabling either
>  	 * LIGHT_CLEAR or LIGHT_IR scan mode results in enabling ALS
> @@ -1430,8 +1424,6 @@ static int gp2ap020a00f_buffer_postenable(struct iio_dev *indio_dev)
>  		err = -ENOMEM;
>  
>  error_unlock:
> -	if (err < 0)
> -		iio_triggered_buffer_predisable(indio_dev);
>  	mutex_unlock(&data->lock);
>  
>  	return err;
> @@ -1465,8 +1457,6 @@ static int gp2ap020a00f_buffer_predisable(struct iio_dev *indio_dev)
>  	if (err == 0)
>  		kfree(data->buffer);
>  
> -	iio_triggered_buffer_predisable(indio_dev);
> -
>  	mutex_unlock(&data->lock);
>  
>  	return err;
  
...

> diff --git a/drivers/iio/light/vcnl4000.c b/drivers/iio/light/vcnl4000.c
> index 2a4b3d331055..0fee767af026 100644
> --- a/drivers/iio/light/vcnl4000.c
> +++ b/drivers/iio/light/vcnl4000.c
> @@ -957,29 +957,20 @@ static int vcnl4010_buffer_postenable(struct iio_dev *indio_dev)
>  	int ret;
>  	int cmd;
>  
> -	ret = iio_triggered_buffer_postenable(indio_dev);
> -	if (ret)
> -		return ret;
> -
>  	/* Do not enable the buffer if we are already capturing events. */
> -	if (vcnl4010_is_in_periodic_mode(data)) {
> -		ret = -EBUSY;
> -		goto end;
> -	}
> +	if (vcnl4010_is_in_periodic_mode(data))
> +		return -EBUSY;
>  
>  	ret = i2c_smbus_write_byte_data(data->client, VCNL4010_INT_CTRL,
>  					VCNL4010_INT_PROX_EN);
>  	if (ret < 0)
> -		goto end;
> +		return ret;
>  
>  	cmd = VCNL4000_SELF_TIMED_EN | VCNL4000_PROX_EN;
> +	
>  	ret = i2c_smbus_write_byte_data(data->client, VCNL4000_COMMAND, cmd);
>  	if (ret < 0)
> -		goto end;
> -
> -	return 0;
> -end:
> -	iio_triggered_buffer_predisable(indio_dev);
> +		i2c_smbus_write_byte_data(data->client, VCNL4010_INT_CTRL, 0);
>  
>  	return ret;
>  }
> @@ -987,18 +978,14 @@ static int vcnl4010_buffer_postenable(struct iio_dev *indio_dev)
>  static int vcnl4010_buffer_predisable(struct iio_dev *indio_dev)
>  {
>  	struct vcnl4000_data *data = iio_priv(indio_dev);
> -	int ret, ret_disable;
> +	int ret, ret2;
>  
>  	ret = i2c_smbus_write_byte_data(data->client, VCNL4010_INT_CTRL, 0);
> -	if (ret < 0)
> -		goto end;
>  
> -	ret = i2c_smbus_write_byte_data(data->client, VCNL4000_COMMAND, 0);
> +	ret2 = i2c_smbus_write_byte_data(data->client, VCNL4000_COMMAND, 0);

hmm. This does change the flow a tiny bit.   I wonder if we really
care about carrying on if we get an error on the first write?
We are device not responding territory at that point.   Maybe just return
immediately and avoid the dance with the two ret variables?

>  
> -end:
> -	ret_disable = iio_triggered_buffer_predisable(indio_dev);
>  	if (ret == 0)
> -		ret = ret_disable;
> +		ret = ret2;
>  
>  	return ret;
>  }

...
  
>  static const struct iio_buffer_setup_ops st_press_buffer_setup_ops = {
> diff --git a/drivers/iio/pressure/zpa2326.c b/drivers/iio/pressure/zpa2326.c
> index 37fe851f89af..e082ad007b22 100644
> --- a/drivers/iio/pressure/zpa2326.c
> +++ b/drivers/iio/pressure/zpa2326.c
> @@ -1240,12 +1240,7 @@ static int zpa2326_preenable_buffer(struct iio_dev *indio_dev)
>  static int zpa2326_postenable_buffer(struct iio_dev *indio_dev)
>  {
>  	const struct zpa2326_private *priv = iio_priv(indio_dev);
> -	int                           err;
> -
> -	/* Plug our own trigger event handler. */
> -	err = iio_triggered_buffer_postenable(indio_dev);
> -	if (err)
> -		goto err;
> +	int                           err = 0;
>  
>  	if (!priv->waken) {
>  		/*
> @@ -1254,7 +1249,7 @@ static int zpa2326_postenable_buffer(struct iio_dev *indio_dev)
>  		 */
>  		err = zpa2326_clear_fifo(indio_dev, 0);
>  		if (err)
> -			goto err_buffer_predisable;
> +			goto out;
>  	}
>  
>  	if (!iio_trigger_using_own(indio_dev) && priv->waken) {
> @@ -1264,14 +1259,10 @@ static int zpa2326_postenable_buffer(struct iio_dev *indio_dev)
>  		 */
>  		err = zpa2326_config_oneshot(indio_dev, priv->irq);
>  		if (err)
> -			goto err_buffer_predisable;
> +			goto out;
>  	}
>  
> -	return 0;
> -
> -err_buffer_predisable:
> -	iio_triggered_buffer_predisable(indio_dev);
> -err:
> +out:
>  	zpa2326_err(indio_dev, "failed to enable buffering (%d)", err);

Doesn't this now print the error in the good path?

Probably still want the return 0.   It's a bit messier but I'd
just move the prints into the error paths and return directly from
each.   Will be cleaner code that this.


>  
>  	return err;
> @@ -1287,7 +1278,6 @@ static int zpa2326_postdisable_buffer(struct iio_dev *indio_dev)
>  static const struct iio_buffer_setup_ops zpa2326_buffer_setup_ops = {
>  	.preenable   = zpa2326_preenable_buffer,
>  	.postenable  = zpa2326_postenable_buffer,
> -	.predisable  = iio_triggered_buffer_predisable,
>  	.postdisable = zpa2326_postdisable_buffer
>  };
>  

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
