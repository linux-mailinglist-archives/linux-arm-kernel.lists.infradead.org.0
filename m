Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27BC71B8730
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Apr 2020 16:53:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zVDnkqpHBlTrd9d43A1bPNwQZ0tooT6f9wM8Pl2oIhE=; b=mqlNjyLTqZvjBS
	krgNPRjutXl+7wjOCxX8wIAoshgiGxGgW2m45kqWHaXJfwbmdOW+YDbisaHB3Aoe0P4R4wAiwbkwD
	xuyVVxd3n8zSDr98MDPa0OVDWYAJsNWgBZKro4H8q7Le8X+Bdo4VrkbgQy3mrO+bnnDo70xECzEH+
	P7zhD4ZOATsFtWoOLQgc3tMQxBPJaRhv2FqG4+MwcHcBnaBl+fM7uVDau3wqpf3BW1SKhCbhUH6kd
	xqTye7GuZUO9unMt9kyDQQ+FL/rS6AXIJCns0qHJGJ0/bz0+GlS0DzPsDAc1PtWV7xwlcRNYTpn7u
	mpLXCeEupdsb6BhQB1jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSMAw-0006hi-4J; Sat, 25 Apr 2020 14:53:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSMAo-0006hA-9Z
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Apr 2020 14:52:55 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5F3D720714;
 Sat, 25 Apr 2020 14:52:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587826373;
 bh=+13CHPNmfmCKf+0SVFYF37GqQiMCAaZRQBxv+QtM87o=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=OulI3xUdPjn50jbNzvZ8tMsNtjmM9jrKFZ+7nIv5avHBRDKjJg553M1LtNyHlYByI
 ITdynEsnKVHySeySGiFrmI0Wf0B105B8OhH1eQjh9LABM8joxhNK6yaYpiti3Sd2Pe
 TQ7Km1tat6aYfVrW2QxsyXgqmD2kTu/3+FgVeXkc=
Date: Sat, 25 Apr 2020 15:52:49 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: <Eugen.Hristev@microchip.com>
Subject: Re: [PATCH v3 2/3] iio: adc: at91-sama5d2_adc: handle unfinished
 conversions
Message-ID: <20200425155249.15fb855f@archlinux>
In-Reply-To: <1580216189-27418-3-git-send-email-eugen.hristev@microchip.com>
References: <1580216189-27418-1-git-send-email-eugen.hristev@microchip.com>
 <1580216189-27418-3-git-send-email-eugen.hristev@microchip.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_075254_375638_CB4DAF2C 
X-CRM114-Status: GOOD (  28.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-iio@vger.kernel.org, Ludovic.Desroches@microchip.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 alexandru.ardelean@analog.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 28 Jan 2020 12:57:40 +0000
<Eugen.Hristev@microchip.com> wrote:

> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> It can happen that on IRQ trigger, not all conversions are done if
> we are enabling multiple channels.
> The IRQ is triggered on first EOC (end of channel), but it can happen
> that not all channels are done. This leads into erroneous reports to
> userspace (zero values or previous values).
> To solve this, in trigger handler, check if the mask of done channels
> is the same as the mask of active scan channels.
> If it's the same, proceed and push to buffers. Otherwise, use usleep
> to sleep until the conversion is done or we timeout.
> Normally, it should happen that in a short time fashion, all channels are
> ready, since the first IRQ triggered.
> If a hardware fault happens (for example the clock suddently dissappears),
> the handler will not be completed, in which case we do not report anything to
> userspace anymore.
> Also, change from using the EOC interrupts to DRDY interrupt.
> This helps with the fact that not 'n' interrupt statuses are enabled,
> each being able to trigger an interrupt, and instead only data ready
> interrupt can wake up the CPU. Like this, when data is ready, check in
> handler which and how many channels are done. While the DRDY is raised,
> other IRQs cannot occur. Once the channel data is being read, we ack the
> IRQ and finish the conversion.
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>

Applied this and patch 3 to the togreg branch of iio.git and pushed out as testing.

Thanks for reminding me about these.  Were still in the queue but I might
have forgotten to check this far back!

Jonathan

> ---
> Changes in v3:
> - rewrite some code as suggested by Jonathan (w.r.t. state and dma enabled in
> configure_trigger
> - move back enable_irq in reenable_trigger : looks like it was a leftover,
> thanks Jonathan
> 
> Changes in v2:
> - move start of conversion to threaded irq, removed specific at91 pollfunc
> - add timeout to channel mask readiness check in trigger handler
> - use DRDY irq instead of EOC irqs.
> - move enable irq after DRDY has been acked in reenable_trigger
> 
>  drivers/iio/adc/at91-sama5d2_adc.c | 62 +++++++++++++++++++++++++++++---------
>  1 file changed, 48 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/iio/adc/at91-sama5d2_adc.c b/drivers/iio/adc/at91-sama5d2_adc.c
> index 2a6950a..49c2b9d 100644
> --- a/drivers/iio/adc/at91-sama5d2_adc.c
> +++ b/drivers/iio/adc/at91-sama5d2_adc.c
> @@ -8,6 +8,7 @@
>  
>  #include <linux/bitops.h>
>  #include <linux/clk.h>
> +#include <linux/delay.h>
>  #include <linux/dma-mapping.h>
>  #include <linux/dmaengine.h>
>  #include <linux/interrupt.h>
> @@ -100,6 +101,8 @@
>  #define AT91_SAMA5D2_IER_YRDY   BIT(21)
>  /* Interrupt Enable Register - TS pressure measurement ready */
>  #define AT91_SAMA5D2_IER_PRDY   BIT(22)
> +/* Interrupt Enable Register - Data ready */
> +#define AT91_SAMA5D2_IER_DRDY   BIT(24)
>  /* Interrupt Enable Register - general overrun error */
>  #define AT91_SAMA5D2_IER_GOVRE BIT(25)
>  /* Interrupt Enable Register - Pen detect */
> @@ -486,6 +489,21 @@ static inline int at91_adc_of_xlate(struct iio_dev *indio_dev,
>  	return at91_adc_chan_xlate(indio_dev, iiospec->args[0]);
>  }
>  
> +static unsigned int at91_adc_active_scan_mask_to_reg(struct iio_dev *indio_dev)
> +{
> +	u32 mask = 0;
> +	u8 bit;
> +
> +	for_each_set_bit(bit, indio_dev->active_scan_mask,
> +			 indio_dev->num_channels) {
> +		struct iio_chan_spec const *chan =
> +			 at91_adc_chan_get(indio_dev, bit);
> +		mask |= BIT(chan->channel);
> +	}
> +
> +	return mask & GENMASK(11, 0);
> +}
> +
>  static void at91_adc_config_emr(struct at91_adc_state *st)
>  {
>  	/* configure the extended mode register */
> @@ -746,25 +764,23 @@ static int at91_adc_configure_trigger(struct iio_trigger *trig, bool state)
>  			at91_adc_writel(st, AT91_SAMA5D2_COR, cor);
>  		}
>  
> -		if (state) {
> +		if (state)
>  			at91_adc_writel(st, AT91_SAMA5D2_CHER,
>  					BIT(chan->channel));
> -			/* enable irq only if not using DMA */
> -			if (!st->dma_st.dma_chan) {
> -				at91_adc_writel(st, AT91_SAMA5D2_IER,
> -						BIT(chan->channel));
> -			}
> -		} else {
> -			/* disable irq only if not using DMA */
> -			if (!st->dma_st.dma_chan) {
> -				at91_adc_writel(st, AT91_SAMA5D2_IDR,
> -						BIT(chan->channel));
> -			}
> +		else
>  			at91_adc_writel(st, AT91_SAMA5D2_CHDR,
>  					BIT(chan->channel));
> -		}
>  	}
>  
> +	/* Nothing to do if using DMA */
> +	if (st->dma_st.dma_chan)
> +		return 0;
> +
> +	if (state)
> +		at91_adc_writel(st, AT91_SAMA5D2_IER, AT91_SAMA5D2_IER_DRDY);
> +	else
> +		at91_adc_writel(st, AT91_SAMA5D2_IDR, AT91_SAMA5D2_IER_DRDY);
> +
>  	return 0;
>  }
>  
> @@ -781,6 +797,7 @@ static int at91_adc_reenable_trigger(struct iio_trigger *trig)
>  
>  	/* Needed to ACK the DRDY interruption */
>  	at91_adc_readl(st, AT91_SAMA5D2_LCDR);
> +
>  	return 0;
>  }
>  
> @@ -1015,6 +1032,22 @@ static void at91_adc_trigger_handler_nodma(struct iio_dev *indio_dev,
>  	int i = 0;
>  	int val;
>  	u8 bit;
> +	u32 mask = at91_adc_active_scan_mask_to_reg(indio_dev);
> +	unsigned int timeout = 50;
> +
> +	/*
> +	 * Check if the conversion is ready. If not, wait a little bit, and
> +	 * in case of timeout exit with an error.
> +	 */
> +	while ((at91_adc_readl(st, AT91_SAMA5D2_ISR) & mask) != mask &&
> +	       timeout) {
> +		usleep_range(50, 100);
> +		timeout--;
> +	}
> +
> +	/* Cannot read data, not ready. Continue without reporting data */
> +	if (!timeout)
> +		return;
>  
>  	for_each_set_bit(bit, indio_dev->active_scan_mask,
>  			 indio_dev->num_channels) {
> @@ -1281,7 +1314,8 @@ static irqreturn_t at91_adc_interrupt(int irq, void *private)
>  		status = at91_adc_readl(st, AT91_SAMA5D2_XPOSR);
>  		status = at91_adc_readl(st, AT91_SAMA5D2_YPOSR);
>  		status = at91_adc_readl(st, AT91_SAMA5D2_PRESSR);
> -	} else if (iio_buffer_enabled(indio) && !st->dma_st.dma_chan) {
> +	} else if (iio_buffer_enabled(indio) &&
> +		   (status & AT91_SAMA5D2_IER_DRDY)) {
>  		/* triggered buffer without DMA */
>  		disable_irq_nosync(irq);
>  		iio_trigger_poll(indio->trig);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
