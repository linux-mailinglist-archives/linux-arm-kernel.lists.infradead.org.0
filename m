Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5264F138104
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 12:00:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jsFDqry8iPtnYlrDvBhyNupOKWT0oSFEzNjqCbwQeKI=; b=YrplhIsAMQBOk0
	WEUgke1L3+1PfsvmWXFKVCyYYFd2wCDzfQ3ORXXZ1Lqh2fZ+nog/JmgwCp4HYJvo16/O+SkMkbxll
	ZQdJM1Fy/vr25qqBAqZWhr+rbIM6cN8S0jxwcSVEPZBkdCPgnzndpiHIC3Fluq9kOsnwo/tLhoX1U
	K10ElXlZotB882wjIAdJNhIZda/12Ei0HtIeKG1GJJJtDmCLIzOKwyxvgvL9PEvhv0ed/iyITW1G7
	nQkFrRH7f+EyevQRNZyrZw8M61ODJKe5IobAWQQGfv7aJGCx8GjGpAQWeVGcJ9qdQgyCTRX0JzBjx
	DycngZvvyIPRkAWAvKsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqEVi-0003GT-0u; Sat, 11 Jan 2020 11:00:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqEVa-0003G9-J0
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 11:00:47 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9BA5320842;
 Sat, 11 Jan 2020 11:00:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578740446;
 bh=mLQHghOqDmybltd0XVnN5VdKnRcVz0LjzKPlp43ewtU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=LGIRy8afxTZ44EuAq8HAqfOARlroZZCVwY6bUEIVAssSPbiWpP/2ZctOPGd35WrG7
 QDABfptlkZ67NVhjvN40OD7dHlE5XP02HtY7/w5dR8wkeCWinSzfwYIfQerv5bnI6Q
 O6fv3eN1fQ/Xj5S91D0NNZ2n6DjnMFZZXac1Dt3M=
Date: Sat, 11 Jan 2020 11:00:39 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH v3] iio: adc: stm32-adc: Use dma_request_chan() instead
 dma_request_slave_channel()
Message-ID: <20200111110039.09c6b9dd@archlinux>
In-Reply-To: <20200108080801.14144-1-peter.ujfalusi@ti.com>
References: <20200108080801.14144-1-peter.ujfalusi@ti.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_030046_647612_AC13DCA0 
X-CRM114-Status: GOOD (  17.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 8 Jan 2020 10:08:01 +0200
Peter Ujfalusi <peter.ujfalusi@ti.com> wrote:

> dma_request_slave_channel() is a wrapper on top of dma_request_chan()
> eating up the error code.
> 
> By using dma_request_chan() directly the driver can support deferred
> probing against DMA.
> 
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> Acked-by: Fabrice Gasnier <fabrice.gasnier@st.com>

Applied to the togreg branch of iio.git and pushed out as testing.

thanks,

Jonathan

> ---
> Hi,
> 
> Changes since v2:
> - Replace the comment as suggested by Fabrice
> 
> Changes since v1:
> - Fall back to IRQ mode only in case of ENODEV
> 
> Regards,
> Peter
> 
>  drivers/iio/adc/stm32-adc.c | 16 ++++++++++++++--
>  1 file changed, 14 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/iio/adc/stm32-adc.c b/drivers/iio/adc/stm32-adc.c
> index 3b291d72701c..a8d2414ee2eb 100644
> --- a/drivers/iio/adc/stm32-adc.c
> +++ b/drivers/iio/adc/stm32-adc.c
> @@ -1746,9 +1746,21 @@ static int stm32_adc_dma_request(struct iio_dev *indio_dev)
>  	struct dma_slave_config config;
>  	int ret;
>  
> -	adc->dma_chan = dma_request_slave_channel(&indio_dev->dev, "rx");
> -	if (!adc->dma_chan)
> +	adc->dma_chan = dma_request_chan(&indio_dev->dev, "rx");
> +	if (IS_ERR(adc->dma_chan)) {
> +		ret = PTR_ERR(adc->dma_chan);
> +		if (ret != -ENODEV) {
> +			if (ret != -EPROBE_DEFER)
> +				dev_err(&indio_dev->dev,
> +					"DMA channel request failed with %d\n",
> +					ret);
> +			return ret;
> +		}
> +
> +		/* DMA is optional: fall back to IRQ mode */
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
