Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D20CCC2FE0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 11:18:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a7F3ThcPsqClQ6fF2KGTNBWu0cM/sR6yjQzy+ohfKKc=; b=ojMhyQ3qhid6cJ
	VUYZ6eYNLY61V5zniSsFIQ3dLQe/a0RePk+fJShMU9l5PJQrBJ1mgUhunfzs/2x5dwji3yDGCa8Wk
	upwOYRBSQzBOvLEvcpaiTuu7WqxnnhN9+yFkSysaYLDOYm295RuRvF/dSB5EMuGeEGO/TTsRIi52R
	3rbu1ocjqY5wdKUqccUIhcV0k6U0NYaoeodHf8KXpa5wKSgkkXghNbzRR+v50sJBXbc0sfe+4kvT+
	tSrefo0RnvDYdfaJgJDzDTY08R6iDI/WmphqNackYLa6deNrUYUWpw+IQmxz+q/VePBEG1x1Rr7dX
	u3yItR9y+JOZZ6DYZZrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFEIm-0002Rh-Ky; Tue, 01 Oct 2019 09:18:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFEId-0002Qe-Jz
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 09:18:29 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7D0DE20700;
 Tue,  1 Oct 2019 09:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569921507;
 bh=NzrmT6/uM8DiLs5qH8+ADYtEzINy849nBpR8ZrecVm8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=L588/tMWNTk7MXtRD9IvA1JHu70dCQjc453S6/+xuKlyC/78qg1NVjRL8BKf28rgT
 jrF9BjFR/+1s9yLeXhnl8KVNKP8F1cHqWJz6HhBmx1gGwWKkbXDvtpT8DkDtiPlkXj
 B3DSkNGXwOX5vBMN8W+yXusvHJ7ZoK+evcspEJr4=
Date: Tue, 1 Oct 2019 10:18:21 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Yizhuo <yzhai003@ucr.edu>
Subject: Re: [PATCH] iio: adc: Variables could be uninitalized if
 regmap_read() fails
Message-ID: <20191001101821.438259c2@archlinux>
In-Reply-To: <20190930052540.19168-1-yzhai003@ucr.edu>
References: <20190930052540.19168-1-yzhai003@ucr.edu>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_021827_698561_44DA15D6 
X-CRM114-Status: GOOD (  21.67  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: csong@cs.ucr.edu, Lars-Peter Clausen <lars@metafoo.de>,
 Scott Branden <sbranden@broadcom.com>, linux-iio@vger.kernel.org,
 Ray Jui <rjui@broadcom.com>, zhiyunq@cs.ucr.edu, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 29 Sep 2019 22:25:39 -0700
Yizhuo <yzhai003@ucr.edu> wrote:

> Several functions in this file are trying to use regmap_read() to
> initialize the specific variable, however, if regmap_read() fails,
> the variable could be uninitialized but used directly, which is
> potentially unsafe. The return value of regmap_read() should be
> checked and handled.
> 
> Signed-off-by: Yizhuo <yzhai003@ucr.edu>
I haven't checked if this one has a clock, but there is a bigger issue.
See inline.

Jonathan

> ---
>  drivers/iio/adc/bcm_iproc_adc.c | 45 ++++++++++++++++++++++++++++-----
>  1 file changed, 39 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/iio/adc/bcm_iproc_adc.c b/drivers/iio/adc/bcm_iproc_adc.c
> index 646ebdc0a8b4..6df19ceb5ff2 100644
> --- a/drivers/iio/adc/bcm_iproc_adc.c
> +++ b/drivers/iio/adc/bcm_iproc_adc.c
> @@ -137,6 +137,7 @@ static irqreturn_t iproc_adc_interrupt_thread(int irq, void *data)
>  	u32 channel_intr_status;
>  	u32 intr_status;
>  	u32 intr_mask;
> +	int ret;
>  	struct iio_dev *indio_dev = data;
>  	struct iproc_adc_priv *adc_priv = iio_priv(indio_dev);
>  
> @@ -145,8 +146,19 @@ static irqreturn_t iproc_adc_interrupt_thread(int irq, void *data)
>  	 * Make sure this interrupt is intended for us.
>  	 * Handle only ADC channel specific interrupts.
>  	 */
> -	regmap_read(adc_priv->regmap, IPROC_INTERRUPT_STATUS, &intr_status);
> -	regmap_read(adc_priv->regmap, IPROC_INTERRUPT_MASK, &intr_mask);
> +	ret = regmap_read(adc_priv->regmap,
> +					IPROC_INTERRUPT_STATUS, &intr_status);
> +	if (ret) {
> +		dev_err(&indio_dev->dev, "Fail to read IPROC_INTERRUPT_STATUS.\n");
> +		return ret;
> +	}
> +
> +	ret = regmap_read(adc_priv->regmap, IPROC_INTERRUPT_MASK, &intr_mask);
> +	if (ret) {
> +		dev_err(&indio_dev->dev, "Fail to read IPROC_INTERRUPT_MASK.\n");
> +		return ret;
> +	}
You need to be extremely careful returning error codes from interrupt routines..

Basically you can't ;)

> +
>  	intr_status = intr_status & intr_mask;
>  	channel_intr_status = (intr_status & IPROC_ADC_INTR_MASK) >>
>  				IPROC_ADC_INTR;
> @@ -162,6 +174,7 @@ static irqreturn_t iproc_adc_interrupt_handler(int irq, void *data)
>  	struct iproc_adc_priv *adc_priv;
>  	struct iio_dev *indio_dev = data;
>  	unsigned int valid_entries;
> +	int ret;
>  	u32 intr_status;
>  	u32 intr_channels;
>  	u32 channel_status;
> @@ -169,23 +182,37 @@ static irqreturn_t iproc_adc_interrupt_handler(int irq, void *data)
>  
>  	adc_priv = iio_priv(indio_dev);
>  
> -	regmap_read(adc_priv->regmap, IPROC_INTERRUPT_STATUS, &intr_status);
> +	ret = regmap_read(adc_priv->regmap,
> +					IPROC_INTERRUPT_STATUS, &intr_status);
> +	if (ret) {
> +		dev_err(&indio_dev->dev, "Fail to read IPROC_INTERRUPT_STATUS.\n");
> +		return ret;
> +	}
> +
>  	dev_dbg(&indio_dev->dev, "iproc_adc_interrupt_handler(),INTRPT_STS:%x\n",
>  			intr_status);
>  
>  	intr_channels = (intr_status & IPROC_ADC_INTR_MASK) >> IPROC_ADC_INTR;
>  	if (intr_channels) {
> -		regmap_read(adc_priv->regmap,
> +		ret = regmap_read(adc_priv->regmap,
>  			    IPROC_ADC_CHANNEL_INTERRUPT_STATUS +
>  			    IPROC_ADC_CHANNEL_OFFSET * adc_priv->chan_id,
>  			    &ch_intr_status);
> +		if (ret) {
> +			dev_err(&indio_dev->dev, "Fail to read the register.\n");
> +			return ret;
> +		}
>  
>  		if (ch_intr_status & IPROC_ADC_CHANNEL_WTRMRK_INTR_MASK) {
> -			regmap_read(adc_priv->regmap,
> +			ret = regmap_read(adc_priv->regmap,
>  					IPROC_ADC_CHANNEL_STATUS +
>  					IPROC_ADC_CHANNEL_OFFSET *
>  					adc_priv->chan_id,
>  					&channel_status);
> +			if (ret) {
> +				dev_err(&indio_dev->dev, "Fail to read the register.\n");
> +				return ret;
> +			}
>  
>  			valid_entries = ((channel_status &
>  				IPROC_ADC_CHANNEL_VALID_ENTERIES_MASK) >>
> @@ -230,6 +257,7 @@ static int iproc_adc_do_read(struct iio_dev *indio_dev,
>  	u32 mask;
>  	u32 val_check;
>  	int failed_cnt = 0;
> +	int ret;
>  	struct iproc_adc_priv *adc_priv = iio_priv(indio_dev);
>  
>  	mutex_lock(&adc_priv->mutex);
> @@ -284,7 +312,12 @@ static int iproc_adc_do_read(struct iio_dev *indio_dev,
>  	 * Testing has shown that this may loop a few time, but we have never
>  	 * hit the full count.
>  	 */
> -	regmap_read(adc_priv->regmap, IPROC_INTERRUPT_MASK, &val_check);
> +	ret = regmap_read(adc_priv->regmap, IPROC_INTERRUPT_MASK, &val_check);
> +	if (ret) {
> +		dev_err(&indio_dev->dev, "Fail to read IPROC_INTERRUPT_MASK.\n");
> +		return ret;
> +	}
> +
>  	while (val_check != val) {
>  		failed_cnt++;
>  


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
