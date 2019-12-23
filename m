Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63595129605
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 13:29:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p5TuStn0ZllmBGKe02+kcgW4WKQQiKG/KMAcvQhu1zI=; b=CIU6xO+bC2s1jT
	upQJNTumo/dY9xv3VdDqxFYuguAf57WJEWj6zBLz9Yc+S+JAZI79tAOnFHrnAdTBWHE3LjzEpnqBN
	xIShtc7iy5DyMIQd7zCXrhVvxr/16gIi4o5dzHslUPrswRiIJIU7EKG00TjlG0vPMnd31MrUgYfex
	j9KlRR/zR8k9fWAwRBo1FjxtSn46Gv1sziQZrFvyT5cu6G92ifjVnd1YAz+rBfnclqq1mkm/WXihY
	KVVoSkqnVGf36HU96HLYlfT3PBTRvN0I9ggTqtPBkDRSUriN4hYrbaIE47Iam4h37TXZXdVVBdhHC
	k5AGx515452aBwUtwN8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijMpS-0002tA-Kh; Mon, 23 Dec 2019 12:28:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijMpI-0002rm-B2
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 12:28:45 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D448B206D3;
 Mon, 23 Dec 2019 12:28:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577104123;
 bh=fLR8nvn1z2WhRt/moIrvx0gU3O9dnS60oAA269hDS4k=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=jckcFd8SNjhH/ndzUNmWNe5AvRF6ZB+yYPmnBKooeDt8OssgoOfq+uDaP59UUrh4X
 GK4HTRr0VZCEB4KWhZ43IxL8isqllRzfBoXUR+qDIlBJh+jYsEcQDMPwfSGAKgkn/N
 uLfEKFgAhB4B4r00GWfLVuJtX0XUNNjotptICMjs=
Date: Mon, 23 Dec 2019 12:28:38 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: <Eugen.Hristev@microchip.com>
Subject: Re: [PATCH 08/10] iio: adc: at91-sama5d2_adc: implement RTC triggering
Message-ID: <20191223122838.4732120a@archlinux>
In-Reply-To: <1576686157-11939-9-git-send-email-eugen.hristev@microchip.com>
References: <1576686157-11939-1-git-send-email-eugen.hristev@microchip.com>
 <1576686157-11939-9-git-send-email-eugen.hristev@microchip.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_042844_426318_CA3D264C 
X-CRM114-Status: GOOD (  24.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 alexandre.belloni@bootlin.com, a.zummo@towertech.it, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 18 Dec 2019 16:24:02 +0000
<Eugen.Hristev@microchip.com> wrote:

> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> Implement the property atmel,rtc-trigger which provides a phandle
> to a RTC trigger.
> To make it work, one has to check at buffer_postenable if the trigger
> the device is using is the one we provide using the phandle link.
> The trigger mode must be selected accordingly in the trigger mode selection
> register.
> The RTC trigger will use our IRQ. Dedicated hardware line inside the SoC
> will actually trigger the ADC to make the conversion, and EOC irqs are fired
> when conversion is done.
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
Minor points inline.

Thanks,

Jonathan

> ---
>  drivers/iio/adc/at91-sama5d2_adc.c | 109 +++++++++++++++++++++++++++++++++++--
>  1 file changed, 104 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/iio/adc/at91-sama5d2_adc.c b/drivers/iio/adc/at91-sama5d2_adc.c
> index ccffa48..ac97f4a 100644
> --- a/drivers/iio/adc/at91-sama5d2_adc.c
> +++ b/drivers/iio/adc/at91-sama5d2_adc.c
> @@ -58,6 +58,8 @@
>  #define	AT91_SAMA5D2_MR_TRGSEL_TRIG6	6
>  /* RTCOUT0 */
>  #define	AT91_SAMA5D2_MR_TRGSEL_TRIG7	7
> +/* TRGSEL mask */
> +#define AT91_SAMA5D2_MR_TRGSEL_MASK	GENMASK(3, 1)
>  /* Sleep Mode */
>  #define	AT91_SAMA5D2_MR_SLEEP		BIT(5)
>  /* Fast Wake Up */
> @@ -195,6 +197,8 @@
>  #define AT91_SAMA5D2_TRGR_TRGMOD_EXT_TRIG_FALL 2
>  /* Trigger Mode external trigger any edge */
>  #define AT91_SAMA5D2_TRGR_TRGMOD_EXT_TRIG_ANY 3
> +/* Trigger Mode RTC - must be any of the above 3 values */
> +#define AT91_SAMA5D2_TRGR_TRGMOD_RTC AT91_SAMA5D2_TRGR_TRGMOD_EXT_TRIG_RISE
>  /* Trigger Mode internal periodic */
>  #define AT91_SAMA5D2_TRGR_TRGMOD_PERIODIC 5
>  /* Trigger Mode - trigger period mask */
> @@ -407,6 +411,8 @@ struct at91_adc_state {
>  	struct mutex			lock;
>  	struct work_struct		workq;
>  	s64				timestamp;
> +	struct device			*rtc_trig_dev;
> +	bool				rtc_triggered;
>  };
>  
>  static const struct at91_adc_trigger at91_adc_trigger_list[] = {
> @@ -737,6 +743,42 @@ static int at91_adc_configure_trigger(struct iio_trigger *trig, bool state)
>  	/* set/unset hw trigger */
>  	at91_adc_writel(st, AT91_SAMA5D2_TRGR, status);
>  
> +	status = at91_adc_readl(st, AT91_SAMA5D2_MR);
> +
> +	status &= ~AT91_SAMA5D2_MR_TRGSEL_MASK;
> +
> +	/* set/unset TRGSEL to ADTRG */
> +	if (state)
> +		status |= AT91_SAMA5D2_MR_TRGSEL(AT91_SAMA5D2_MR_TRGSEL_TRIG0);
> +
> +	at91_adc_writel(st, AT91_SAMA5D2_MR, status);
> +
> +	return 0;
> +}
> +
> +static int at91_adc_rtc_configure_trigger(struct at91_adc_state *st, bool state)
> +{
> +	u32 status = at91_adc_readl(st, AT91_SAMA5D2_TRGR);
> +
> +	/* clear TRGMOD */
> +	status &= ~AT91_SAMA5D2_TRGR_TRGMOD_MASK;
> +
> +	if (state)
> +		status |= AT91_SAMA5D2_TRGR_TRGMOD_RTC;
> +
> +	/* set/unset hw trigger */
> +	at91_adc_writel(st, AT91_SAMA5D2_TRGR, status);
> +
> +	status = at91_adc_readl(st, AT91_SAMA5D2_MR);
> +
> +	status &= ~AT91_SAMA5D2_MR_TRGSEL_MASK;
> +
> +	/* set/unset TRGSEL to RTCOUT0 */
> +	if (state)
> +		status |= AT91_SAMA5D2_MR_TRGSEL(AT91_SAMA5D2_MR_TRGSEL_TRIG7);
> +
> +	at91_adc_writel(st, AT91_SAMA5D2_MR, status);
> +
>  	return 0;
>  }
>  
> @@ -866,7 +908,8 @@ static int at91_adc_dma_start(struct iio_dev *indio_dev)
>  	if (st->dma_st.dma_chan) \
>  		use_irq = false; \
>  	/* if the trigger is not ours, then it has its own IRQ */ \
> -	if (iio_trigger_validate_own_device(indio->trig, indio)) \
> +	if (iio_trigger_validate_own_device(indio->trig, indio) && \

This increasingly feels like it should be a function with clearly
passed parameters rather than macro fun.

> +		!st->rtc_triggered) \
>  		use_irq = false; \
>  	}
>  
> @@ -884,6 +927,18 @@ static int at91_adc_buffer_postenable(struct iio_dev *indio)
>  		/* touchscreen enabling */
>  		return at91_adc_configure_touch(st, true);
>  	}
> +
> +	/*
> +	 * If our rtc trigger link is identical to the current trigger,
> +	 * then we are rtc-triggered.
> +	 * Configure accordingly.
> +	 */
> +	if (!IS_ERR_OR_NULL(st->rtc_trig_dev) &&
> +	    st->rtc_trig_dev == indio->trig->dev.parent) {
> +		at91_adc_rtc_configure_trigger(st, true);
> +		st->rtc_triggered = true;
> +	}
> +
>  	/* if we are not in triggered mode, we cannot enable the buffer. */
>  	if (!(indio->currentmode & INDIO_ALL_TRIGGERED_MODES))
>  		return -EINVAL;
> @@ -947,6 +1002,17 @@ static int at91_adc_buffer_predisable(struct iio_dev *indio)
>  	if (!(indio->currentmode & INDIO_ALL_TRIGGERED_MODES))
>  		return -EINVAL;
>  
> +	/*
> +	 * If our rtc trigger link is identical to the current trigger,
> +	 * then we are rtc-triggered.
> +	 * Unconfigure accordingly.
> +	 */
> +	if (!IS_ERR_OR_NULL(st->rtc_trig_dev) &&
> +	    st->rtc_trig_dev == indio->trig->dev.parent) {
> +		at91_adc_rtc_configure_trigger(st, false);
> +		st->rtc_triggered = false;
> +	}
> +
>  	AT91_ADC_BUFFER_CHECK_USE_IRQ(use_irq);
>  	/*
>  	 * For each enable channel we must disable it in hardware.
> @@ -1153,8 +1219,15 @@ static irqreturn_t at91_adc_trigger_handler(int irq, void *p)
>  	else
>  		ret = at91_adc_trigger_handler_nodma(indio_dev, pf);
>  
> -	if (!ret)
> +	if (!ret) {
>  		iio_trigger_notify_done(indio_dev->trig);
> +		/*
> +		 * RTC trigger does not know how to reenable our IRQ.
> +		 * So, we must do it.
> +		 */
> +		if (st->rtc_triggered)
> +			enable_irq(st->irq);

Hmm. This is a bit nasty but I guess we can't avoid it.

> +	}
>  
>  	return IRQ_HANDLED;
>  }
> @@ -1166,10 +1239,13 @@ irqreturn_t at91_adc_pollfunc(int irq, void *p)
>  	struct at91_adc_state *st = iio_priv(indio_dev);
>  
>  	/*
> -	 * If it's not our trigger, start a conversion now, as we are
> -	 * actually polling the trigger now.
> +	 * We need to start a software trigger if we are not using a trigger
> +	 * that uses our own IRQ.
> +	 * External trigger and RTC trigger do not not need software start

External trigger is a bit of a generic name - sounds like one coming from
'somewhere else'.  Perhaps "External trigger in the ADC .." or similar?

> +	 * However the other triggers do.
>  	 */
> -	if (iio_trigger_validate_own_device(indio_dev->trig, indio_dev))
> +	if (iio_trigger_validate_own_device(indio_dev->trig, indio_dev) &&
> +	    !st->rtc_triggered)
>  		at91_adc_writel(st, AT91_SAMA5D2_CR, AT91_SAMA5D2_CR_START);
>  
>  	return iio_pollfunc_store_time(irq, p);
> @@ -1307,6 +1383,12 @@ static void at91_adc_workq_handler(struct work_struct *workq)
>  
>  		at91_adc_read_and_push_channels(indio_dev, st->timestamp);
>  		iio_trigger_notify_done(indio_dev->trig);
> +		/*
> +		 * RTC trigger does not know how to reenable our IRQ.
> +		 * So, we must do it.
> +		 */
> +		if (st->rtc_triggered)
> +			enable_irq(st->irq);
>  	} else {
>  		iio_push_to_buffers(indio_dev, st->buffer);
>  	}
> @@ -1712,6 +1794,7 @@ static int at91_adc_probe(struct platform_device *pdev)
>  	struct iio_dev *indio_dev;
>  	struct at91_adc_state *st;
>  	struct resource	*res;
> +	struct device_node *rtc_trig_np;
>  	int ret, i;
>  	u32 edge_type = IRQ_TYPE_NONE;
>  
> @@ -1737,6 +1820,8 @@ static int at91_adc_probe(struct platform_device *pdev)
>  
>  	st->oversampling_ratio = AT91_OSR_1SAMPLES;
>  
> +	st->rtc_trig_dev = ERR_PTR(-EINVAL);
> +
>  	ret = of_property_read_u32(pdev->dev.of_node,
>  				   "atmel,min-sample-rate-hz",
>  				   &st->soc_info.min_sample_rate);
> @@ -1784,6 +1869,20 @@ static int at91_adc_probe(struct platform_device *pdev)
>  		return -EINVAL;
>  	}
>  
> +	rtc_trig_np = of_parse_phandle(pdev->dev.of_node, "atmel,rtc-trigger",
> +				       0);
> +	if (rtc_trig_np) {
> +		struct platform_device *rtc_trig_plat_dev;
> +
> +		rtc_trig_plat_dev = of_find_device_by_node(rtc_trig_np);
> +		if (rtc_trig_plat_dev) {
> +			st->rtc_trig_dev = &rtc_trig_plat_dev->dev;
> +			dev_info(&pdev->dev,
> +				 "RTC trigger link set-up with %s\n",
> +				 dev_name(st->rtc_trig_dev));
> +		}
> +	}
> +
>  	init_waitqueue_head(&st->wq_data_available);
>  	mutex_init(&st->lock);
>  	INIT_WORK(&st->workq, at91_adc_workq_handler);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
