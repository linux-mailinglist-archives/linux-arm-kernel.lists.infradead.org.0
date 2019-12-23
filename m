Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4251295F6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 13:20:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y+Y9wX6jhq9jHdsZumEquczl4MgMup/YNQZXHAEyfyI=; b=bXTaE+pqpcaGtc
	t4hqosvfXnNPILwcLt5/yMPXOLbD56AAc2VkKuD/kvXFBJLmFJb2PdvAv1yHIPFh60EmHvEEZfCuC
	CREgpoyda1Sunc944j5VxCLXsmTOiBJVgJf9fF0rBJE98etTYgoxddrlubfZgEjskgQj1YVoM+A8b
	I4xt71uyGgf4UsFOHcEZyx4y/I/9IC7c0/ijAKjWjDc2FMU0KNAusndrV9cVwgMdLvmcElwbYxzf7
	2vk2GSHjhPpeSr6U+vLNTseyoUGnFRzwSnNro59NCA2Vg1Yvy12s1iXGoNc/CJnAte7ag0Ce6zYVd
	z9uIjOfB6rHiLFEi4rng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijMhX-0007To-19; Mon, 23 Dec 2019 12:20:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijMhM-0007T6-39
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 12:20:33 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F1CCF20715;
 Mon, 23 Dec 2019 12:20:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577103631;
 bh=TpJfXPgSRuwL/c72Cja8P/w1/cM3OuXHaibAaaqw+ew=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=JomMEZzZX6YYsBuIV6KFhA+Ml0w6SRPZKm+UDwaHVOcfrNwQnfS+TqmTl2ewx7dX+
 WjL5ldoyqZ7vC+WdWQVkIky/GioooqdTN28UN6Kir0guVZTC7dw78Sz7tUxXJd5jY6
 BEN6u+u3FBfvyI+Qvh6ZUzJxXVnhMJUgJJ2SLTOQ=
Date: Mon, 23 Dec 2019 12:20:27 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: <Eugen.Hristev@microchip.com>
Subject: Re: [PATCH 06/10] iio: adc: at91-sama5d2_adc: handle unfinished
 conversions
Message-ID: <20191223122027.7b93129f@archlinux>
In-Reply-To: <1576686157-11939-7-git-send-email-eugen.hristev@microchip.com>
References: <1576686157-11939-1-git-send-email-eugen.hristev@microchip.com>
 <1576686157-11939-7-git-send-email-eugen.hristev@microchip.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_042032_176585_ACB14666 
X-CRM114-Status: GOOD (  22.65  )
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

On Wed, 18 Dec 2019 16:24:01 +0000
<Eugen.Hristev@microchip.com> wrote:

> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> It can happen that on IRQ trigger, not all conversions are done if
> we are enabling multiple channels.
> The IRQ is triggered on first EOC (end of channel), but it can happen
> that not all channels are done. This leads into erroneous reports to
> userspace (zero values or previous values).

Ouch. That's an unfortunate hardware design.

> To solve this, in trigger handler, check if the mask of done channels
> is the same as the mask of active scan channels.
> If it's the same, proceed and push to buffers. Otherwise, to avoid sleeping
> in trigger handler, start a workq that will wait until all channels are
> ready.

You are fine sleeping in that handler. It's an interrupt thread ;)

> Normally, it should happen that in a short time fashion, all channels are
> ready, since the first IRQ triggered.
> The workq can stall in a loop if a hardware fault happens (for example
> the clock suddently dissappears), but if it's a hardware fault then
> even exiting the workq won't fix the hardware.
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> ---
>  drivers/iio/adc/at91-sama5d2_adc.c | 23 ++++++++++++++++++++++-
>  1 file changed, 22 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iio/adc/at91-sama5d2_adc.c b/drivers/iio/adc/at91-sama5d2_adc.c
> index c575970..a6b4dff 100644
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
> @@ -487,6 +488,21 @@ static inline int at91_adc_of_xlate(struct iio_dev *indio_dev,
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
> @@ -1044,12 +1060,13 @@ static int at91_adc_trigger_handler_nodma(struct iio_dev *indio_dev,
>  					  struct iio_poll_func *pf)
>  {
>  	struct at91_adc_state *st = iio_priv(indio_dev);
> +	u32 mask = at91_adc_active_scan_mask_to_reg(indio_dev);
>  
>  	/*
>  	 * Check if the conversion is ready. If not, schedule a work to
>  	 * check again later.
>  	 */
> -	if (!(at91_adc_readl(st, AT91_SAMA5D2_ISR) & GENMASK(11, 0))) {
> +	if ((at91_adc_readl(st, AT91_SAMA5D2_ISR) & mask) != mask) {
>  		schedule_work(&st->workq);
>  		return -EINPROGRESS;
>  	}
> @@ -1269,9 +1286,13 @@ static void at91_adc_workq_handler(struct work_struct *workq)
>  	struct at91_adc_state *st = container_of(workq,
>  					struct at91_adc_state, workq);
>  	struct iio_dev *indio_dev = iio_priv_to_dev(st);
> +	u32 mask = at91_adc_active_scan_mask_to_reg(indio_dev);
>  
>  	if ((indio_dev->currentmode & INDIO_ALL_TRIGGERED_MODES) &&
>  	    iio_trigger_validate_own_device(indio_dev->trig, indio_dev)) {
> +		while ((at91_adc_readl(st, AT91_SAMA5D2_ISR) & mask) != mask)
> +			udelay(1);
> +
ok. This fixes the issue raised earlier.  Please reorganize the series
so we never introduce this code in a broken fashion.  + look at doing it
in the interrupt thread anyway.

Jonathan
>  		at91_adc_read_and_push_channels(indio_dev, st->timestamp);
>  		iio_trigger_notify_done(indio_dev->trig);
>  	} else {


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
