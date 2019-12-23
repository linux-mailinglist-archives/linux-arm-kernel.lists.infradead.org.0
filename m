Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5E412986F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 16:46:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vwc3Kavg1Sy0SPqZ+K7Clpz8CwNm1Syn9EGQxau9Yi8=; b=FC7GyTGFyQRXmP
	aRVgPsA2qNbB1Iw0mGEEuOrepDy6k91jKGL0WDX9rEYDhGUn1EeG/SUAEnJyKyuDhK5PxD7sjToNS
	3fXwZnQLSTKtyUeAMGU/voDSZv5NENQJvNnFLVOMJcOsYznanx5jmzJqy7GDI50aUwtSMM1fy9qar
	h6ES888jWnLW8651jxVn2kfakfV4jumRI1hxTm4z6LnhDCZPQpSR5PL9Fi9fgWb3W/mXMGDa4nYvc
	VpoHqIsyKeVgkETikmOJYJZWyLHs3inqIpR57NJp6zmgDSrzpEWk458t26mG5bS1XAHeaBnYCsWtM
	iTHRYUG4C6zwvHGpUzKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijPu5-0007VI-II; Mon, 23 Dec 2019 15:45:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijPtv-0007Uq-19
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 15:45:44 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2E788205C9;
 Mon, 23 Dec 2019 15:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577115942;
 bh=dMvuhm75mr3sKsjJ7Ywmef0XPGuVcGPnp7cfWIxsSCQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=DaHSqFaCNmeahbQvTb1DfZhJNooZK+BVo6taxtGIlc5mPJD4W3/FyBXlDK2WofP/V
 9EFQtQCR7tggAtHZKUrGnV/EsHhMKe2KKfkzC9cP1pre4W3q2jMtYbPkpIgyG5bGxX
 /kVcHXicrY2042NtyLlZClV0KvhGolQp//VCTKB0=
Date: Mon, 23 Dec 2019 15:45:38 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH] iio: adc: stm32-dfsdm: Use dma_request_chan() instead
 dma_request_slave_channel()
Message-ID: <20191223154538.74a76f94@archlinux>
In-Reply-To: <20191217075221.23895-1-peter.ujfalusi@ti.com>
References: <20191217075221.23895-1-peter.ujfalusi@ti.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_074543_095681_A02DD1EF 
X-CRM114-Status: GOOD (  15.70  )
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
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 17 Dec 2019 09:52:21 +0200
Peter Ujfalusi <peter.ujfalusi@ti.com> wrote:

> dma_request_slave_channel() is a wrapper on top of dma_request_chan()
> eating up the error code.
> 
> By using dma_request_chan() directly the driver can support deferred
> probing against DMA.
> 
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
I don't think this one goes far enough.  

One of the paths does:

	/* Optionally request DMA */
	if (stm32_dfsdm_dma_request(indio_dev)) {
		dev_dbg(&indio_dev->dev, "No DMA support\n");
		return 0;
	}

That needs specific handling for deferred probing.

> ---
>  drivers/iio/adc/stm32-dfsdm-adc.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/iio/adc/stm32-dfsdm-adc.c b/drivers/iio/adc/stm32-dfsdm-adc.c
> index e493242c266e..3aac1a21f9d0 100644
> --- a/drivers/iio/adc/stm32-dfsdm-adc.c
> +++ b/drivers/iio/adc/stm32-dfsdm-adc.c
> @@ -1383,9 +1383,9 @@ static int stm32_dfsdm_dma_request(struct iio_dev *indio_dev)
>  {
>  	struct stm32_dfsdm_adc *adc = iio_priv(indio_dev);
>  
> -	adc->dma_chan = dma_request_slave_channel(&indio_dev->dev, "rx");
> -	if (!adc->dma_chan)
> -		return -EINVAL;
> +	adc->dma_chan = dma_request_chan(&indio_dev->dev, "rx");
> +	if (IS_ERR(adc->dma_chan))
> +		return PTR_ERR(adc->dma_chan);
>  
>  	adc->rx_buf = dma_alloc_coherent(adc->dma_chan->device->dev,
>  					 DFSDM_DMA_BUFFER_SIZE,


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
