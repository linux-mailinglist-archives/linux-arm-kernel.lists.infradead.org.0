Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1699314FD75
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Feb 2020 15:08:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xwZntviXXdvOAFYM67XKMaGq0xy01pnUw5E6R0TEh0U=; b=kNeZDv9jcpG8MA
	pqilwhRsLCEadC/Q+F1EHBPQL3E9vp7qNGitr7TQ/z4LsTu3eikgwpTEobIm0GV1kswOivENyHFWN
	ueKYiIU/H93XWzgOUsCklTdvacUphqwQbcb7WX/P4yoks7vHl319Hz5ZUCEBpmiDS2AZT9PKJJdGU
	IAulafBk3rapTXojVMjDn+Wa3aUcr2DPyh1ILOF7esQi21PXeBYVpcqdrN52aVxVNcNTa0Bqgd4Sy
	13kiVKbdhEaVjXs4xnCjumXTPw2AXBg8odKnbROkkKSLf+5U6zUNfvY8RwqRZkfMp8tDrUWLJpx/w
	Dm/Bx+9K+lzsnzEDNIUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyFvQ-0002Hx-Kq; Sun, 02 Feb 2020 14:08:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyFvJ-0002HU-W0
 for linux-arm-kernel@lists.infradead.org; Sun, 02 Feb 2020 14:08:31 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 74D3B20643;
 Sun,  2 Feb 2020 14:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580652509;
 bh=1gYVSw87cV5telUJWyrU4zFFINerB9YY8C8irZlxApA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ess6qBFo/F1BcnkklY0GwQ0BaBxBJsuYomqCrB30q1vmmC6dsjDMoKMpqMIUUZZUK
 znJl3Dr37+R4USh1jUHGRUCdUaetljWY9diwl/hUxmdeR5wFzc/oo3d2k8GxHsPJkz
 IPULSo+/5Rx0OTexcH3P9lIQTNvyGSRSCguT0AxY=
Date: Sun, 2 Feb 2020 14:08:23 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Olivier Moysan <olivier.moysan@st.com>
Subject: Re: [PATCH] iio: adc: stm32-dfsdm: fix sleep in atomic context
Message-ID: <20200202140823.531aad39@archlinux>
In-Reply-To: <20200121110256.12415-1-olivier.moysan@st.com>
References: <20200121110256.12415-1-olivier.moysan@st.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_060830_072324_8BAAB764 
X-CRM114-Status: GOOD (  20.76  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: lars@metafoo.de, alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 pmeerw@pmeerw.net, linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 knaack.h@gmx.de, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 21 Jan 2020 12:02:56 +0100
Olivier Moysan <olivier.moysan@st.com> wrote:

> This commit fixes the error message:
> "BUG: sleeping function called from invalid context at kernel/irq/chip.c"
> Suppress the trigger irq handler. Make the buffer transfers directly
> in DMA callback, instead.
> Push buffers without timestamps, as timestamps are not supported
> in DFSDM driver.
> 
> Fixes: 11646e81d775 ("iio: adc: stm32-dfsdm: add support for buffer modes")
> 
> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
Applied to the fixes-togreg branch of iio.git and marked for stable.

Thanks,

Jonathan

> ---
> There is the same issue on STM32 ADC driver.
> The solution for ADC driver has been already discussed in the thread
> https://lkml.org/lkml/2019/3/30/171
> The current patch for STM32 DFSDM driver, bypasses the IIO IRQ trigger
> handler, as proposed in this thread.
> ---
>  drivers/iio/adc/stm32-dfsdm-adc.c | 43 +++++++------------------------
>  1 file changed, 10 insertions(+), 33 deletions(-)
> 
> diff --git a/drivers/iio/adc/stm32-dfsdm-adc.c b/drivers/iio/adc/stm32-dfsdm-adc.c
> index 2aad2cda6943..76a60d93fe23 100644
> --- a/drivers/iio/adc/stm32-dfsdm-adc.c
> +++ b/drivers/iio/adc/stm32-dfsdm-adc.c
> @@ -842,31 +842,6 @@ static inline void stm32_dfsdm_process_data(struct stm32_dfsdm_adc *adc,
>  	}
>  }
>  
> -static irqreturn_t stm32_dfsdm_adc_trigger_handler(int irq, void *p)
> -{
> -	struct iio_poll_func *pf = p;
> -	struct iio_dev *indio_dev = pf->indio_dev;
> -	struct stm32_dfsdm_adc *adc = iio_priv(indio_dev);
> -	int available = stm32_dfsdm_adc_dma_residue(adc);
> -
> -	while (available >= indio_dev->scan_bytes) {
> -		s32 *buffer = (s32 *)&adc->rx_buf[adc->bufi];
> -
> -		stm32_dfsdm_process_data(adc, buffer);
> -
> -		iio_push_to_buffers_with_timestamp(indio_dev, buffer,
> -						   pf->timestamp);
> -		available -= indio_dev->scan_bytes;
> -		adc->bufi += indio_dev->scan_bytes;
> -		if (adc->bufi >= adc->buf_sz)
> -			adc->bufi = 0;
> -	}
> -
> -	iio_trigger_notify_done(indio_dev->trig);
> -
> -	return IRQ_HANDLED;
> -}
> -
>  static void stm32_dfsdm_dma_buffer_done(void *data)
>  {
>  	struct iio_dev *indio_dev = data;
> @@ -874,11 +849,6 @@ static void stm32_dfsdm_dma_buffer_done(void *data)
>  	int available = stm32_dfsdm_adc_dma_residue(adc);
>  	size_t old_pos;
>  
> -	if (indio_dev->currentmode & INDIO_BUFFER_TRIGGERED) {
> -		iio_trigger_poll_chained(indio_dev->trig);
> -		return;
> -	}
> -
>  	/*
>  	 * FIXME: In Kernel interface does not support cyclic DMA buffer,and
>  	 * offers only an interface to push data samples per samples.
> @@ -906,7 +876,15 @@ static void stm32_dfsdm_dma_buffer_done(void *data)
>  			adc->bufi = 0;
>  			old_pos = 0;
>  		}
> -		/* regular iio buffer without trigger */
> +		/*
> +		 * In DMA mode the trigger services of IIO are not used
> +		 * (e.g. no call to iio_trigger_poll).
> +		 * Calling irq handler associated to the hardware trigger is not
> +		 * relevant as the conversions have already been done. Data
> +		 * transfers are performed directly in DMA callback instead.
> +		 * This implementation avoids to call trigger irq handler that
> +		 * may sleep, in an atomic context (DMA irq handler context).
> +		 */
>  		if (adc->dev_data->type == DFSDM_IIO)
>  			iio_push_to_buffers(indio_dev, buffer);
>  	}
> @@ -1536,8 +1514,7 @@ static int stm32_dfsdm_adc_init(struct iio_dev *indio_dev)
>  	}
>  
>  	ret = iio_triggered_buffer_setup(indio_dev,
> -					 &iio_pollfunc_store_time,
> -					 &stm32_dfsdm_adc_trigger_handler,
> +					 &iio_pollfunc_store_time, NULL,
>  					 &stm32_dfsdm_buffer_setup_ops);
>  	if (ret) {
>  		stm32_dfsdm_dma_release(indio_dev);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
