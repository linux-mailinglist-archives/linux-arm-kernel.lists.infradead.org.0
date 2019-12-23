Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D744129865
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 16:42:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i46u/mL1qG0zG1PDkXgJSaQlybrYJQMv/3NN0Ynsc/s=; b=S/sALnMj88xZlQ
	CUkGcndeiWwCWq5eUXTmEmZ5erj6F3xc4hk3JafHNF+vTtet1kVZGus079Sw3IGhhjEtSuTEZzjPO
	lXHAk6Fd2LBFf91LrSXDeQNGl9nuIFQhOfZSk/82eNBLxn+5tKSGvocAEjV/tSkp2jra0sijt1B+E
	kwArEL9HlhSMQqoZACalVcwjRFEWx6500iT7QIlaJYFXI+/8AZEZ62BvjRb90E8NuLy+gDEMQodGX
	eKy7y9d7hH8WW1F7pz1bj7FnEUTswpwjhvuFjHlBcBJp+391fknLKNajWUE0vmcETJUD5CskTGWEJ
	yw+TceZqr3i5zKYa/E2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijPr5-0005bn-Mw; Mon, 23 Dec 2019 15:42:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijPqt-0005bM-L4
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 15:42:36 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3BE0520409;
 Mon, 23 Dec 2019 15:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577115754;
 bh=W7dVTbz3atfdVAhEErfOc/0Hk/lMKKZVb4bYQnWDj2A=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=s//tC+nTdBusmIDHh3w/JHuWKUr8WZVN0KLC+5/wqYR78n9MAxMnp6XKUU4AC657c
 U14znr1zujKNxf6wQUO+8FMnp7RkFlmi3LhRux36l3jmUeE1S5MfamQvscwQPE3N9f
 V1cD1j/T75J6/4t7OPNogFXjcHgnMBW3Nc+c3bpQ=
Date: Mon, 23 Dec 2019 15:42:30 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH] iio: adc: stm32-adc: Use dma_request_chan() instead
 dma_request_slave_channel()
Message-ID: <20191223154230.7fb2a988@archlinux>
In-Reply-To: <20191217075153.23766-1-peter.ujfalusi@ti.com>
References: <20191217075153.23766-1-peter.ujfalusi@ti.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_074235_711374_FF9B95C0 
X-CRM114-Status: GOOD (  16.39  )
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
Cc: alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, vkoul@kernel.org, mcoquelin.stm32@gmail.com,
 Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 17 Dec 2019 09:51:53 +0200
Peter Ujfalusi <peter.ujfalusi@ti.com> wrote:

> dma_request_slave_channel() is a wrapper on top of dma_request_chan()
> eating up the error code.
> 
> By using dma_request_chan() directly the driver can support deferred
> probing against DMA.
> 
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
Hi Peter,

Change looks sensible to me, but I'd like to leave a little longer
for others to look at this.

Give me a poke if I seem to have lost it by the end of the first
week in Jan.

Thanks,

Jonathan

> ---
>  drivers/iio/adc/stm32-adc.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/iio/adc/stm32-adc.c b/drivers/iio/adc/stm32-adc.c
> index 3b291d72701c..5dab23f1fdee 100644
> --- a/drivers/iio/adc/stm32-adc.c
> +++ b/drivers/iio/adc/stm32-adc.c
> @@ -1746,9 +1746,15 @@ static int stm32_adc_dma_request(struct iio_dev *indio_dev)
>  	struct dma_slave_config config;
>  	int ret;
>  
> -	adc->dma_chan = dma_request_slave_channel(&indio_dev->dev, "rx");
> -	if (!adc->dma_chan)
> +	adc->dma_chan = dma_request_chan(&indio_dev->dev, "rx");
> +	if (IS_ERR(adc->dma_chan)) {
> +		if (PTR_ERR(adc->dma_chan) == -EPROBE_DEFER)
> +			return -EPROBE_DEFER;
> +
> +		/* Ignore errors to fall back to IRQ mode */
> +		adc->dma_chan = NULL;
>  		return 0;
> +	}
>  
>  	adc->rx_buf = dma_alloc_coherent(adc->dma_chan->device->dev,
>  					 STM32_DMA_BUFFER_SIZE,


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
