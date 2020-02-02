Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F4414FCC7
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Feb 2020 12:05:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B2EF9hrwEX8qTo0m3RHlTVdRuvYpHSrE3Otgb+g1YNQ=; b=dkG/0IGfkiop2E
	9R6v3sfT/nL6mRHDrkqiLmWyMptZN3T6SI7WK47sjnrJxrHstx1k8mc4uQdRPK/LTp5C4MZ696hJh
	NvKf9yUsf6XoYvHWedqNL8iueIFr2MIcbvVLrKwhmc7fqohwJdae0AeH1fEam8HoBHTWlbuJ9Srkt
	etgsnk/E3S1W1bw1o2MAsTLJQGz6WGwcPgbwhmCS5FY9h1ptqEwDT5Xy0lstSK9SGOGZslpPGPbfW
	tEYUTnW22CQlOu17vHgR3LShbPqsU/ytg7HGnn8WqSZWj3VcNNLwOOfgEsqdSShlpt57hKlEzuZaq
	04S6oQgXonDriqsWDnMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyD4Q-0006Zm-In; Sun, 02 Feb 2020 11:05:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyD4J-0006ZD-V8
 for linux-arm-kernel@lists.infradead.org; Sun, 02 Feb 2020 11:05:37 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6D42E2067C;
 Sun,  2 Feb 2020 11:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580641535;
 bh=O/qbN+kI/A+LiV5NTSam/8lkdxc+s7t+OOe7GVBEvgs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=tX0xUMgmChyUNLWCjgfwV7WjKdL8UiaCz9sv/rnFKGKV6mzrZvTU24d0uZXXEAkd6
 x7JGswHrr0yCFu9FvVex2zwQpFelQRRGF/KXD89GyCumldpbVeQAcBQN8b/hZPjN+T
 v/uUwmVspBTxKb1FV9r9vJhBJ83n/Y5y8xm+4Rnw=
Date: Sun, 2 Feb 2020 11:05:31 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: <Eugen.Hristev@microchip.com>
Subject: Re: [PATCH v3 3/3] iio: adc: at91-sama5d2_adc: update for other
 trigger usage
Message-ID: <20200202110531.35c55cac@archlinux>
In-Reply-To: <1580216189-27418-4-git-send-email-eugen.hristev@microchip.com>
References: <1580216189-27418-1-git-send-email-eugen.hristev@microchip.com>
 <1580216189-27418-4-git-send-email-eugen.hristev@microchip.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_030536_044702_F02F395F 
X-CRM114-Status: GOOD (  29.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-iio@vger.kernel.org, Ludovic.Desroches@microchip.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 alexandru.ardelean@analog.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 28 Jan 2020 12:57:41 +0000
<Eugen.Hristev@microchip.com> wrote:

> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> This change will allow the at91-sama5d2_adc driver to use other triggers
> than it's own.
> In particular, tested with the sysfs trigger.
> To be able to achieve this functionality, some changes were required:
> 1) Do not enable/disable channels when enabling/disabling the trigger.
> This is because the trigger is enabled/disabled only for our trigger
> (obviously). We need channels enabled/disabled regardless of what trigger is
> being used.
> 2) Cope with DMA : DMA cannot be used when using another type of trigger.
> Other triggers work through pollfunc, so we get polled anyway on every trigger.
> Thus we have to obtain data at every trigger.
> 3) When to start conversion? The usual pollfunc (store time from subsystem)
> would be in hard irq and this would be a good way, but current iio subsystem
> recommends to have it in the threaded irq. Thus adding software start
> code in this handler.
> 4) Buffer config: we need to setup buffer regardless of our own device's
> trigger. We may get one attached later.
> 5) IRQ handling: we use our own device IRQ only if it's our own trigger
> and we do not use DMA . If we use DMA, we use the DMA controller's IRQ.
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
If no one else comments by the time patch 1 is upstream of the togreg branch
then I'll apply 2 and 3.

Thanks,

Jonathan

> ---
> Changes in v3:
> - remove useless call to iio_triggered_buffer_predisable
> 
> Changes in v2:
> - adapt to the situation of having the previous two patches ahead in the series
> 
>  drivers/iio/adc/at91-sama5d2_adc.c | 142 +++++++++++++++++++------------------
>  1 file changed, 72 insertions(+), 70 deletions(-)
> 
> diff --git a/drivers/iio/adc/at91-sama5d2_adc.c b/drivers/iio/adc/at91-sama5d2_adc.c
> index 49c2b9d..03ceab4 100644
> --- a/drivers/iio/adc/at91-sama5d2_adc.c
> +++ b/drivers/iio/adc/at91-sama5d2_adc.c
> @@ -728,7 +728,6 @@ static int at91_adc_configure_trigger(struct iio_trigger *trig, bool state)
>  	struct iio_dev *indio = iio_trigger_get_drvdata(trig);
>  	struct at91_adc_state *st = iio_priv(indio);
>  	u32 status = at91_adc_readl(st, AT91_SAMA5D2_TRGR);
> -	u8 bit;
>  
>  	/* clear TRGMOD */
>  	status &= ~AT91_SAMA5D2_TRGR_TRGMOD_MASK;
> @@ -739,48 +738,6 @@ static int at91_adc_configure_trigger(struct iio_trigger *trig, bool state)
>  	/* set/unset hw trigger */
>  	at91_adc_writel(st, AT91_SAMA5D2_TRGR, status);
>  
> -	for_each_set_bit(bit, indio->active_scan_mask, indio->num_channels) {
> -		struct iio_chan_spec const *chan = at91_adc_chan_get(indio, bit);
> -		u32 cor;
> -
> -		if (!chan)
> -			continue;
> -		/* these channel types cannot be handled by this trigger */
> -		if (chan->type == IIO_POSITIONRELATIVE ||
> -		    chan->type == IIO_PRESSURE)
> -			continue;
> -
> -		if (state) {
> -			cor = at91_adc_readl(st, AT91_SAMA5D2_COR);
> -
> -			if (chan->differential)
> -				cor |= (BIT(chan->channel) |
> -					BIT(chan->channel2)) <<
> -					AT91_SAMA5D2_COR_DIFF_OFFSET;
> -			else
> -				cor &= ~(BIT(chan->channel) <<
> -				       AT91_SAMA5D2_COR_DIFF_OFFSET);
> -
> -			at91_adc_writel(st, AT91_SAMA5D2_COR, cor);
> -		}
> -
> -		if (state)
> -			at91_adc_writel(st, AT91_SAMA5D2_CHER,
> -					BIT(chan->channel));
> -		else
> -			at91_adc_writel(st, AT91_SAMA5D2_CHDR,
> -					BIT(chan->channel));
> -	}
> -
> -	/* Nothing to do if using DMA */
> -	if (st->dma_st.dma_chan)
> -		return 0;
> -
> -	if (state)
> -		at91_adc_writel(st, AT91_SAMA5D2_IER, AT91_SAMA5D2_IER_DRDY);
> -	else
> -		at91_adc_writel(st, AT91_SAMA5D2_IDR, AT91_SAMA5D2_IER_DRDY);
> -
>  	return 0;
>  }
>  
> @@ -905,9 +862,22 @@ static int at91_adc_dma_start(struct iio_dev *indio_dev)
>  	return 0;
>  }
>  
> +static bool at91_adc_buffer_check_use_irq(struct iio_dev *indio,
> +					  struct at91_adc_state *st)
> +{
> +	/* if using DMA, we do not use our own IRQ (we use DMA-controller) */
> +	if (st->dma_st.dma_chan)
> +		return false;
> +	/* if the trigger is not ours, then it has its own IRQ */
> +	if (iio_trigger_validate_own_device(indio->trig, indio))
> +		return false;
> +	return true;
> +}
> +
>  static int at91_adc_buffer_postenable(struct iio_dev *indio_dev)
>  {
>  	int ret;
> +	u8 bit;
>  	struct at91_adc_state *st = iio_priv(indio_dev);
>  
>  	/* check if we are enabling triggered buffer or the touchscreen */
> @@ -928,6 +898,36 @@ static int at91_adc_buffer_postenable(struct iio_dev *indio_dev)
>  		return ret;
>  	}
>  
> +	for_each_set_bit(bit, indio_dev->active_scan_mask,
> +			 indio_dev->num_channels) {
> +		struct iio_chan_spec const *chan =
> +					at91_adc_chan_get(indio_dev, bit);
> +		u32 cor;
> +
> +		if (!chan)
> +			continue;
> +		/* these channel types cannot be handled by this trigger */
> +		if (chan->type == IIO_POSITIONRELATIVE ||
> +		    chan->type == IIO_PRESSURE)
> +			continue;
> +
> +		cor = at91_adc_readl(st, AT91_SAMA5D2_COR);
> +
> +		if (chan->differential)
> +			cor |= (BIT(chan->channel) | BIT(chan->channel2)) <<
> +				AT91_SAMA5D2_COR_DIFF_OFFSET;
> +		else
> +			cor &= ~(BIT(chan->channel) <<
> +			       AT91_SAMA5D2_COR_DIFF_OFFSET);
> +
> +		at91_adc_writel(st, AT91_SAMA5D2_COR, cor);
> +
> +		at91_adc_writel(st, AT91_SAMA5D2_CHER, BIT(chan->channel));
> +	}
> +
> +	if (at91_adc_buffer_check_use_irq(indio_dev, st))
> +		at91_adc_writel(st, AT91_SAMA5D2_IER, AT91_SAMA5D2_IER_DRDY);
> +
>  	return iio_triggered_buffer_postenable(indio_dev);
>  }
>  
> @@ -948,21 +948,11 @@ static int at91_adc_buffer_predisable(struct iio_dev *indio_dev)
>  	if (!(indio_dev->currentmode & INDIO_ALL_TRIGGERED_MODES))
>  		return -EINVAL;
>  
> -	/* continue with the triggered buffer */
> -	ret = iio_triggered_buffer_predisable(indio_dev);
> -	if (ret < 0)
> -		dev_err(&indio_dev->dev, "buffer predisable failed\n");
> -
> -	if (!st->dma_st.dma_chan)
> -		return ret;
> -
> -	/* if we are using DMA we must clear registers and end DMA */
> -	dmaengine_terminate_sync(st->dma_st.dma_chan);
> -
>  	/*
> -	 * For each enabled channel we must read the last converted value
> +	 * For each enable channel we must disable it in hardware.
> +	 * In the case of DMA, we must read the last converted value
>  	 * to clear EOC status and not get a possible interrupt later.
> -	 * This value is being read by DMA from LCDR anyway
> +	 * This value is being read by DMA from LCDR anyway, so it's not lost.
>  	 */
>  	for_each_set_bit(bit, indio_dev->active_scan_mask,
>  			 indio_dev->num_channels) {
> @@ -975,12 +965,28 @@ static int at91_adc_buffer_predisable(struct iio_dev *indio_dev)
>  		if (chan->type == IIO_POSITIONRELATIVE ||
>  		    chan->type == IIO_PRESSURE)
>  			continue;
> +
> +		at91_adc_writel(st, AT91_SAMA5D2_CHDR, BIT(chan->channel));
> +
>  		if (st->dma_st.dma_chan)
>  			at91_adc_readl(st, chan->address);
>  	}
>  
> +	if (at91_adc_buffer_check_use_irq(indio_dev, st))
> +		at91_adc_writel(st, AT91_SAMA5D2_IDR, AT91_SAMA5D2_IER_DRDY);
> +
>  	/* read overflow register to clear possible overflow status */
>  	at91_adc_readl(st, AT91_SAMA5D2_OVER);
> +
> +	/* continue with the triggered buffer */
> +	ret = iio_triggered_buffer_predisable(indio_dev);
> +	if (ret < 0)
> +		dev_err(&indio_dev->dev, "buffer predisable failed\n");
> +
> +	/* if we are using DMA we must clear registers and end DMA */
> +	if (st->dma_st.dma_chan)
> +		dmaengine_terminate_sync(st->dma_st.dma_chan);
> +
>  	return ret;
>  }
>  
> @@ -1135,6 +1141,13 @@ static irqreturn_t at91_adc_trigger_handler(int irq, void *p)
>  	struct iio_dev *indio_dev = pf->indio_dev;
>  	struct at91_adc_state *st = iio_priv(indio_dev);
>  
> +	/*
> +	 * If it's not our trigger, start a conversion now, as we are
> +	 * actually polling the trigger now.
> +	 */
> +	if (iio_trigger_validate_own_device(indio_dev->trig, indio_dev))
> +		at91_adc_writel(st, AT91_SAMA5D2_CR, AT91_SAMA5D2_CR_START);
> +
>  	if (st->dma_st.dma_chan)
>  		at91_adc_trigger_handler_dma(indio_dev);
>  	else
> @@ -1147,20 +1160,9 @@ static irqreturn_t at91_adc_trigger_handler(int irq, void *p)
>  
>  static int at91_adc_buffer_init(struct iio_dev *indio)
>  {
> -	struct at91_adc_state *st = iio_priv(indio);
> -
> -	if (st->selected_trig->hw_trig) {
> -		return devm_iio_triggered_buffer_setup(&indio->dev, indio,
> -			&iio_pollfunc_store_time,
> -			&at91_adc_trigger_handler, &at91_buffer_setup_ops);
> -	}
> -	/*
> -	 * we need to prepare the buffer ops in case we will get
> -	 * another buffer attached (like a callback buffer for the touchscreen)
> -	 */
> -	indio->setup_ops = &at91_buffer_setup_ops;
> -
> -	return 0;
> +	return devm_iio_triggered_buffer_setup(&indio->dev, indio,
> +		&iio_pollfunc_store_time,
> +		&at91_adc_trigger_handler, &at91_buffer_setup_ops);
>  }
>  
>  static unsigned at91_adc_startup_time(unsigned startup_time_min,


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
