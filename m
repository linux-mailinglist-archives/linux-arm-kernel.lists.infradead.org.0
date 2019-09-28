Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B55D0C0FFC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Sep 2019 08:48:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oN4duouu+X1eErsKDYIX+CKdBEbL5O5rdjQlsiQR9fs=; b=I27qlifSwcFUxn
	gybCByAM2W7ppklSqPHI1oWzlRXhbtQfXoFAADVhhvt6atbMom9EtEeMuR1axzIbk09pbvLm0O3CD
	a2I4lrPJANX7FVg6VLrgmpzMfzYTYRZz4anmbC/jHC/g/ntrZR136nB1d3WMA3V2QtLTL0c7Vfr10
	xKVh4vB8chjD1buhq3eHS8/V9uDXuVbixTSEp3NV8JTDC+UHSOgxgG8VsaAIkds6zxhmyHiZXfwI9
	6apgBvjfZH2s0qZm33MYVmLcCp4TpiAR6D2elsKeB8QO3h+VS5fuzPSi1e0EWuBP4rpFGRZn5A2Ui
	Gkr+7g9UG0oTdjvSeZ0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iE6WG-0002UA-NP; Sat, 28 Sep 2019 06:47:52 +0000
Received: from 178.115.242.59.static.drei.at ([178.115.242.59]
 helo=mail.osadl.at)
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iE6W3-0002Rx-06; Sat, 28 Sep 2019 06:47:41 +0000
Received: by mail.osadl.at (Postfix, from userid 1001)
 id 98F565C0864; Sat, 28 Sep 2019 08:47:20 +0200 (CEST)
Date: Sat, 28 Sep 2019 08:47:20 +0200
From: Nicholas Mc Guire <der.herr@hofr.at>
To: Yizhuo <yzhai003@ucr.edu>
Subject: Re: [PATCH] iio: adc: meson-saradc: Variables could be uninitalized
 if regmap_read() fails
Message-ID: <20190928064720.GA24515@osadl.at>
References: <20190928004642.28932-1-yzhai003@ucr.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190928004642.28932-1-yzhai003@ucr.edu>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_234739_403827_9E91FEDA 
X-CRM114-Status: GOOD (  18.73  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: csong@cs.ucr.edu, Lars-Peter Clausen <lars@metafoo.de>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, Nicholas Mc Guire <hofrat@osadl.org>,
 zhiyunq@cs.ucr.edu, linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 linux-amlogic@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 27, 2019 at 05:46:41PM -0700, Yizhuo wrote:
> Several functions in this file are trying to use regmap_read() to
> initialize the specific variable, however, if regmap_read() fails,
> the variable could be uninitialized but used directly, which is
> potentially unsafe. The return value of regmap_read() should be
> checked and handled.
> 
> Signed-off-by: Yizhuo <yzhai003@ucr.edu>

Just a few minor style issues - contentwise it look correct to me.
Reviewed-by: Nicholas Mc Guire <hofrat@osadl.org>

> ---
>  drivers/iio/adc/meson_saradc.c | 28 +++++++++++++++++++++++-----
>  1 file changed, 23 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/iio/adc/meson_saradc.c b/drivers/iio/adc/meson_saradc.c
> index 7b28d045d271..c032a64108b4 100644
> --- a/drivers/iio/adc/meson_saradc.c
> +++ b/drivers/iio/adc/meson_saradc.c
> @@ -323,6 +323,7 @@ static int meson_sar_adc_wait_busy_clear(struct iio_dev *indio_dev)
>  {
>  	struct meson_sar_adc_priv *priv = iio_priv(indio_dev);
>  	int regval, timeout = 10000;
> +	int ret;
>  
>  	/*
>  	 * NOTE: we need a small delay before reading the status, otherwise
> @@ -331,7 +332,9 @@ static int meson_sar_adc_wait_busy_clear(struct iio_dev *indio_dev)
>  	 */
>  	do {
>  		udelay(1);
> -		regmap_read(priv->regmap, MESON_SAR_ADC_REG0, &regval);
> +		ret = regmap_read(priv->regmap, MESON_SAR_ADC_REG0, &regval);
> +		if (ret)
> +			return ret;
>  	} while (FIELD_GET(MESON_SAR_ADC_REG0_BUSY_MASK, regval) && timeout--);
>  
>  	if (timeout < 0)
> @@ -358,7 +361,11 @@ static int meson_sar_adc_read_raw_sample(struct iio_dev *indio_dev,

any reason not to declear ret in the declaration block ?
so just for consistency with coding style within meson_saradc.c
this might be:

	int regval, fifo_chan, fifo_val, count;
+	int ret;

>  		return -EINVAL;
>  	}
>  
> -	regmap_read(priv->regmap, MESON_SAR_ADC_FIFO_RD, &regval);
> +	int ret = regmap_read(priv->regmap, MESON_SAR_ADC_FIFO_RD, &regval);

+	ret = regmap_read(priv->regmap, MESON_SAR_ADC_FIFO_RD, &regval);

> +
> +	if (ret)
> +		return ret;
> +
>  	fifo_chan = FIELD_GET(MESON_SAR_ADC_FIFO_RD_CHAN_ID_MASK, regval);
>  	if (fifo_chan != chan->address) {
>  		dev_err(&indio_dev->dev,
> @@ -491,6 +498,7 @@ static int meson_sar_adc_lock(struct iio_dev *indio_dev)
>  {
>  	struct meson_sar_adc_priv *priv = iio_priv(indio_dev);
>  	int val, timeout = 10000;
> +	int ret;
>  
>  	mutex_lock(&indio_dev->mlock);
>  
> @@ -506,7 +514,10 @@ static int meson_sar_adc_lock(struct iio_dev *indio_dev)
>  		 */
>  		do {
>  			udelay(1);
> -			regmap_read(priv->regmap, MESON_SAR_ADC_DELAY, &val);
> +			ret = regmap_read(priv->regmap,
> +					MESON_SAR_ADC_DELAY, &val);

checkpatch does not fuss here but the continuation should be alligned
witht the ( here

> +			if (ret)
> +				return ret;
>  		} while (val & MESON_SAR_ADC_DELAY_BL30_BUSY && timeout--);
>  
>  		if (timeout < 0) {
> @@ -784,7 +795,10 @@ static int meson_sar_adc_init(struct iio_dev *indio_dev)
>  		 * BL30 to make sure BL30 gets the values it expects when
>  		 * reading the temperature sensor.
>  		 */
> -		regmap_read(priv->regmap, MESON_SAR_ADC_REG3, &regval);
> +		ret = regmap_read(priv->regmap, MESON_SAR_ADC_REG3, &regval);
> +		if (ret)
> +			return ret;
> +
>  		if (regval & MESON_SAR_ADC_REG3_BL30_INITIALIZED)
>  			return 0;
>  	}
> @@ -1014,7 +1028,11 @@ static irqreturn_t meson_sar_adc_irq(int irq, void *data)
>  	unsigned int cnt, threshold;
>  	u32 regval;

same as above

+       int ret;

>  
> -	regmap_read(priv->regmap, MESON_SAR_ADC_REG0, &regval);
> +	int ret = regmap_read(priv->regmap, MESON_SAR_ADC_REG0, &regval);

+	ret = regmap_read(priv->regmap, MESON_SAR_ADC_REG0, &regval);

> +
> +	if (ret)
> +		return ret;
> +
>  	cnt = FIELD_GET(MESON_SAR_ADC_REG0_FIFO_COUNT_MASK, regval);
>  	threshold = FIELD_GET(MESON_SAR_ADC_REG0_FIFO_CNT_IRQ_MASK, regval);
>  
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
