Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A8417CEEE
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 16:08:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o6ZXoa7slSI8k8M+7rrOKweMIBB17eTgiJ8Ak24hz+k=; b=Uh0r2a3fXJIt7B
	7BZ0GfhAAqqQ/oePSwIxFdFY3gWV3G2hXLeWKMXxLFd4qohd0eL3cScxQO1ZT8zALkmK+K/BNg3Zj
	pBgm3LDlzd1poWqVB0OQl3o9mKFNWXoKZJgoCoQz3Uw7YHeDJxqTAFSeU37ZXYOdeSbKrJNYwNvF4
	Sil0RcvATSlAp75eaOWXoMpVNUfBn4VmNV9m8nCfONP30DnoQsvBE0e7HuPZGO2hvuAJLORqZ1nN9
	QGSYVCmPUfZHz1owiL56hhwUZnD1fGk+V1IYlsSSOKICZPzBmzcPNoW9dTF7VZ4ezXIJtvDIeBqpc
	P4oSac8qugUS6AnPIfIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAb3p-0003uT-Tx; Sat, 07 Mar 2020 15:08:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAb3f-0003u2-2x
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Mar 2020 15:08:08 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 91AEB20675;
 Sat,  7 Mar 2020 15:08:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583593686;
 bh=RQpDqkyyxmFg9c3rc/jOhh1yQA+Hq7TSDoK7PRzgQ0I=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=QRgraDd5g2lyhqe/VHYJfWH8Kx0++0nF5g8fRF/GUXbIuEPV9DQEEa1eot9plToWK
 vpMZCqgUDGZG+77uAOPhuyjJUC1uClW+UBh0S8S+YKoo8YF15uRlT08pYMHJjPDCJJ
 PsQvSvEBfJGiP17xk+Yba/GFY1PuY6mHGdbrQqAI=
Date: Sat, 7 Mar 2020 15:08:01 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Olivier Moysan <olivier.moysan@st.com>
Subject: Re: [PATCH] iio: adc: stm32-adc: fix sleep in atomic context
Message-ID: <20200307150801.011f35b2@archlinux>
In-Reply-To: <20200306155335.6019-1-olivier.moysan@st.com>
References: <20200306155335.6019-1-olivier.moysan@st.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_070807_170958_444962C7 
X-CRM114-Status: GOOD (  18.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: lars@metafoo.de, benjamin.gaignard@st.com, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, pmeerw@pmeerw.net, knaack.h@gmx.de,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, alexandre.torgue@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 6 Mar 2020 16:53:35 +0100
Olivier Moysan <olivier.moysan@st.com> wrote:

> This commit fixes the following error:
> "BUG: sleeping function called from invalid context at kernel/irq/chip.c"
> 
> In DMA mode suppress the trigger irq handler, and make the buffer
> transfers directly in DMA callback, instead.
> 
> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
looks good to me, but... fixes tag?

We probably want to backport this so good to know when we introduced
the issue.

Thanks,

Jonathan

> ---
> This solution has been already discussed in the thread
> https://lkml.org/lkml/2019/3/30/171, and applied in STM32 DFSDM driver:
> e19ac9d9a978 ("iio: adc: stm32-dfsdm: fix sleep in atomic context")
> ---
>  drivers/iio/adc/stm32-adc.c | 31 ++++++++++++++++++++++++++++---
>  1 file changed, 28 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/iio/adc/stm32-adc.c b/drivers/iio/adc/stm32-adc.c
> index 80c3f963527b..ae622ee6d08c 100644
> --- a/drivers/iio/adc/stm32-adc.c
> +++ b/drivers/iio/adc/stm32-adc.c
> @@ -1418,8 +1418,30 @@ static unsigned int stm32_adc_dma_residue(struct stm32_adc *adc)
>  static void stm32_adc_dma_buffer_done(void *data)
>  {
>  	struct iio_dev *indio_dev = data;
> +	struct stm32_adc *adc = iio_priv(indio_dev);
> +	int residue = stm32_adc_dma_residue(adc);
> +
> +	/*
> +	 * In DMA mode the trigger services of IIO are not used
> +	 * (e.g. no call to iio_trigger_poll).
> +	 * Calling irq handler associated to the hardware trigger is not
> +	 * relevant as the conversions have already been done. Data
> +	 * transfers are performed directly in DMA callback instead.
> +	 * This implementation avoids to call trigger irq handler that
> +	 * may sleep, in an atomic context (DMA irq handler context).
> +	 */
> +	dev_dbg(&indio_dev->dev, "%s bufi=%d\n", __func__, adc->bufi);
>  
> -	iio_trigger_poll_chained(indio_dev->trig);
> +	while (residue >= indio_dev->scan_bytes) {
> +		u16 *buffer = (u16 *)&adc->rx_buf[adc->bufi];
> +
> +		iio_push_to_buffers(indio_dev, buffer);
> +
> +		residue -= indio_dev->scan_bytes;
> +		adc->bufi += indio_dev->scan_bytes;
> +		if (adc->bufi >= adc->rx_buf_sz)
> +			adc->bufi = 0;
> +	}
>  }
>  
>  static int stm32_adc_dma_start(struct iio_dev *indio_dev)
> @@ -1845,6 +1867,7 @@ static int stm32_adc_probe(struct platform_device *pdev)
>  {
>  	struct iio_dev *indio_dev;
>  	struct device *dev = &pdev->dev;
> +	irqreturn_t (*handler)(int irq, void *p) = NULL;
>  	struct stm32_adc *adc;
>  	int ret;
>  
> @@ -1911,9 +1934,11 @@ static int stm32_adc_probe(struct platform_device *pdev)
>  	if (ret < 0)
>  		return ret;
>  
> +	if (!adc->dma_chan)
> +		handler = &stm32_adc_trigger_handler;
> +
>  	ret = iio_triggered_buffer_setup(indio_dev,
> -					 &iio_pollfunc_store_time,
> -					 &stm32_adc_trigger_handler,
> +					 &iio_pollfunc_store_time, handler,
>  					 &stm32_adc_buffer_setup_ops);
>  	if (ret) {
>  		dev_err(&pdev->dev, "buffer setup failed\n");


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
