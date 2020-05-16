Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B321D6304
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 May 2020 19:21:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zgffTWpV7FEu++h3bLHOBO6E2cpvs4Se9+LoM5iKy1I=; b=jGYSvWKRbpShQU
	vLUlrkcQTrfqiciBEBA3g8ufuLXDx5nraXyJhSWdC+WZ6fBeV8fB0FUTqZziSdz+kr7JzVvrxvlWp
	McdwclwbcnJncvJSZpBZ6kpb9zxVFe2k6lOcOHbPaXRo27IqfRLbshp4GQkvBT/yxDdroY6UhyBiA
	opJyhyzgVZ8cz24ccwaWVOhcnzeF5nNHSmRFuDL1YpoCPLYA25wLrL94O5qsyj5A4nP/WXPmn1JuF
	a4cFUYzl/opuRE7hpRqzmsSo4teYr9hIcTLnE5EoK5L6NwXTVS2l4fzcgwb1r74iMwpIIdZkiTnKa
	8Dhr4G2T+Sn2Ts1Kq6HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja0Un-0007GK-91; Sat, 16 May 2020 17:21:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja0UT-00078K-Tp
 for linux-arm-kernel@lists.infradead.org; Sat, 16 May 2020 17:20:51 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7DD06207D4;
 Sat, 16 May 2020 17:20:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589649649;
 bh=aTUSYRNg1AIN3df6ElQSFIwBjTcgJ60HMWA94BnEMIk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=slPnHaD4n6jUrADNzVFJyfZeQgAXJHcT2NZQmV9SyUP+6SJmZdWy3lUIKwsuFlXMe
 8pE+MnMxuBhUgxWjnjnrD7qgo+z4fZQwlvvADD69hmeHPEPue69NFQB1gap3n0EHEY
 0yfZgAhdfekHmT8/Mx+PIIF4bfxLa3eCmxO9TVlk=
Date: Sat, 16 May 2020 18:20:44 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Alexandru Ardelean <alexandru.ardelean@analog.com>
Subject: Re: [PATCH v2 4/8] iio: stm32-dfsdm-adc: pass iio device as arg for
 the interrupt handler
Message-ID: <20200516182044.373adf4b@archlinux>
In-Reply-To: <20200514131710.84201-5-alexandru.ardelean@analog.com>
References: <20200514131710.84201-1-alexandru.ardelean@analog.com>
 <20200514131710.84201-5-alexandru.ardelean@analog.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_102050_041709_71EA85DF 
X-CRM114-Status: GOOD (  18.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alexandre.belloni@bootlin.com, alexandre.torgue@st.com,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 ludovic.desroches@microchip.com, ak@it-klinger.de, mcoquelin.stm32@gmail.com,
 eugen.hristev@microchip.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 14 May 2020 16:17:06 +0300
Alexandru Ardelean <alexandru.ardelean@analog.com> wrote:

> This changes the argument for the interrupt handler to be the IIO device
> instead of the state-struct.
> Since there will be some changes to how iio_priv_to_dev() is implemented,
> it could be that the helper becomes a bit slower, as it will be hidden away
> in the IIO core.
> 
> The iio_priv() call will still be fast enough, as it will return a void
> pointer from the public IIO device structure. So it's better to switch the
> order.
> 
> Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
Whilst this one looks fine to me. I'd definitely like an Ack from
one of the stm people in case I'm missing something.

> ---
>  drivers/iio/adc/stm32-dfsdm-adc.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/iio/adc/stm32-dfsdm-adc.c b/drivers/iio/adc/stm32-dfsdm-adc.c
> index 76a60d93fe23..28ef02887bd3 100644
> --- a/drivers/iio/adc/stm32-dfsdm-adc.c
> +++ b/drivers/iio/adc/stm32-dfsdm-adc.c
> @@ -1313,8 +1313,8 @@ static const struct iio_info stm32_dfsdm_info_adc = {
>  
>  static irqreturn_t stm32_dfsdm_irq(int irq, void *arg)
>  {
> -	struct stm32_dfsdm_adc *adc = arg;
> -	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
> +	struct iio_dev *indio_dev = arg;
> +	struct stm32_dfsdm_adc *adc = iio_priv(indio_dev);
>  	struct regmap *regmap = adc->dfsdm->regmap;
>  	unsigned int status, int_en;
>  
> @@ -1603,7 +1603,7 @@ static int stm32_dfsdm_adc_probe(struct platform_device *pdev)
>  		return irq;
>  
>  	ret = devm_request_irq(dev, irq, stm32_dfsdm_irq,
> -			       0, pdev->name, adc);
> +			       0, pdev->name, iio);
>  	if (ret < 0) {
>  		dev_err(dev, "Failed to request IRQ\n");
>  		return ret;


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
