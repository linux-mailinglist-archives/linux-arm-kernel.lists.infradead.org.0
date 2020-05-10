Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F5C1CCA31
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 May 2020 12:24:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lLnbcztCMY4I+MToEU6AxoYfnGl2IY995PJKTbmQxA8=; b=a9IbrVm1msbK/T
	HHCczDiTfdV6yMQBwRDM1S8+OkAVmBtg3vgfxodcluskgwwJ3h5aNyYVaTGTkSoODtzafnDk2vlEt
	EqoYjQ1wvyJcVj03akx4QCF/PPjL7VF8TJsWSuV6hFuQzuZ/zcpLg6dZ1QWUmvLMhxYYSiH1BqWUE
	wX0t4gcsx3G+37f9YYBtWPmKw/RSy53uTU2tnferDZv50hO3davj3fmRXtdMoY0CoD3rQf5NyTGoo
	xw9O3vjCLRiSmCn/0j3xH/lruz2P9QUIWfwQRrZBQxJX9KeE6B0g7DdLmyVaKl7PaJ7YhTTuAjsYT
	Y91ulZsKV2XrbZhzI2Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXj8H-0006yQ-Ls; Sun, 10 May 2020 10:24:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXj8B-0006xv-3Q
 for linux-arm-kernel@lists.infradead.org; Sun, 10 May 2020 10:24:24 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BE3AC207DD;
 Sun, 10 May 2020 10:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589106262;
 bh=nyOHSQ2FNu3ylsodACsA1C8WkrdfFaSaWV5/EwOdWdQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=u2svKgegrkGdy/DBfzCb4ftBgLueIc34lm0CABqR+jdB5hlYIySgw+kFP7S0Oi8OV
 kQTG2r+jsWUV6OSmbNtdrq2ZsjNwUSmKizar78OCPGGbcZYGnK5/EmXhRyYGSNMijW
 zBBsLo7rzXkkNA42IKXVSUxqSweYh4rl9sKxW/qI=
Date: Sun, 10 May 2020 11:24:17 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Jonathan Bakker <xc-racer2@live.ca>
Subject: Re: [PATCH] iio: adc: Add scaling support to exynos adc driver
Message-ID: <20200510112417.1e54d66e@archlinux>
In-Reply-To: <BN6PR04MB066058A68D6471E7F6AFCFF7A3A20@BN6PR04MB0660.namprd04.prod.outlook.com>
References: <BN6PR04MB066058A68D6471E7F6AFCFF7A3A20@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_032423_162731_78BD3E02 
X-CRM114-Status: GOOD (  19.07  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: kstewart@linuxfoundation.org, linux-samsung-soc@vger.kernel.org,
 lars@metafoo.de, linux-iio@vger.kernel.org, mpe@ellerman.id.au,
 linux-kernel@vger.kernel.org, krzk@kernel.org, swboyd@chromium.org,
 cw00.choi@samsung.com, kgene@kernel.org, pmeerw@pmeerw.net, knaack.h@gmx.de,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri,  8 May 2020 14:14:00 -0700
Jonathan Bakker <xc-racer2@live.ca> wrote:

> Currently the driver only exposes the raw counts.  As we
> have the regulator voltage and the maximum value (stored in
> the data mask), we can trivially produce a scaling fraction
> of voltage / max value.
> 
> This assumes that the regulator voltage is in fact the max
> voltage, which appears to be the case for all mainline dts
> and cross referenced with the public Exynos4412 and S5PV210
> datasheets.
> 
> Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>

Seems reasonable to me. I'd like an exynos Ack though before applying.

thanks,

Jonathan


> ---
>  drivers/iio/adc/exynos_adc.c | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iio/adc/exynos_adc.c b/drivers/iio/adc/exynos_adc.c
> index 22131a677445..9d29b56805cd 100644
> --- a/drivers/iio/adc/exynos_adc.c
> +++ b/drivers/iio/adc/exynos_adc.c
> @@ -531,8 +531,19 @@ static int exynos_read_raw(struct iio_dev *indio_dev,
>  	unsigned long timeout;
>  	int ret;
>  
> -	if (mask != IIO_CHAN_INFO_RAW)
> +	if (mask == IIO_CHAN_INFO_SCALE) {
> +		ret = regulator_get_voltage(info->vdd);
> +		if (ret < 0)
> +			return ret;
> +
> +		/* Regulator voltage is in uV, but need mV */
> +		*val = ret / 1000;
> +		*val2 = info->data->mask;
> +
> +		return IIO_VAL_FRACTIONAL;
> +	} else if (mask != IIO_CHAN_INFO_RAW) {
>  		return -EINVAL;
> +	}
>  
>  	mutex_lock(&indio_dev->mlock);
>  	reinit_completion(&info->completion);
> @@ -683,6 +694,7 @@ static const struct iio_info exynos_adc_iio_info = {
>  	.channel = _index,				\
>  	.address = _index,				\
>  	.info_mask_separate = BIT(IIO_CHAN_INFO_RAW),	\
> +	.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SCALE),	\
>  	.datasheet_name = _id,				\
>  }
>  


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
