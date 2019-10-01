Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4847C2F17
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 10:44:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EOWhd8LPOY0llXvRy6XmStozftjayeRKG7GIkF5JilM=; b=WO9uahWqfuTqc5
	NXCMkvHIh2HDyFOSwHB0lm45UCRtcGXLYdkRV5Yg+1eULW08UPr+R6GelFVpRr8wVv1s8EryI/X8k
	rTLTBcigA/O+5ntE57k8GbmBuqfhzM+L7DJsF+tyf65hp8ddrfpvNhinLjmXjWrATTDvZgMDoXojh
	xUHjcqCZ5D5nIMpsKpZ13nBtmCOE4m/5QeAUveUs+ZklHDvkPTXvbXd460S2+3GgmB/HrNW7UOigN
	MpakUfUA1GuYUjt8ZWO2RX6neSyqfhmyrbt5xIhCucZp0uURecm9vCyq1Xn6cdTrWsDpNYJmUPPvv
	MK2RDe5XwG/Dd1v+t/sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFDli-00050e-E6; Tue, 01 Oct 2019 08:44:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFDlN-0004tv-Lx
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 08:44:07 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0B5B9215EA;
 Tue,  1 Oct 2019 08:44:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569919444;
 bh=r0+WZu1njzJ4yUatFF10Sz7m/V9UmgsgaTaMt2erY38=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=WejM8JGefkfqN3gtu1vBd3fLTozGlI+60X2pcoEvKMETilAgXKV9atO+lPSotM2Pd
 pWwWU+zDKkqkl1QU2KbPQUBjdkrVBY/uycruOc2eGN4jukazfy7L0gu+B/4l0Mn8/8
 4mVR56b0ntkWAKftbhcRDH/kRD0Q2smXcpLDxe8w=
Date: Tue, 1 Oct 2019 09:43:55 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Yizhuo <yzhai003@ucr.edu>
Subject: Re: [PATCH] iio: trigger: stm32-timer: fix the usage of
 uninitialized variables
Message-ID: <20191001094355.65d873a3@archlinux>
In-Reply-To: <20190930204451.28614-1-yzhai003@ucr.edu>
References: <20190930204451.28614-1-yzhai003@ucr.edu>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_014405_755704_7A1AAFE0 
X-CRM114-Status: GOOD (  26.02  )
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
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org,
 zhiyunq@cs.ucr.edu, linux-kernel@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Hartmut Knaack <knaack.h@gmx.de>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 30 Sep 2019 13:44:49 -0700
Yizhuo <yzhai003@ucr.edu> wrote:

> Several functions in this file are trying to use regmap_read() to
> initialize the specific variable, however, if regmap_read() fails,
> the variable could be uninitialized but used directly, which is
> potentially unsafe. The return value of regmap_read() should be
> checked and handled. This patch fixes most of the uninitialized
> variables, but those in function stm32_tt_read_frequency() are
> hard to handle and need extra effot.
> 
> Signed-off-by: Yizhuo <yzhai003@ucr.edu>

Hi Yizhuo,

This is a slightly interesting case.

From an 'obviously' correct point of view, it makes sense to
always handle the errors and avoid the potentially uninitialised
cases.

From the point of view of a 'fix' we need to show if these can
actually happen.  These calls are regmap-mmio so the error
path is in clock enable / disable if there is a clock provided.
Looking at mfd/stm-timers.c there is a clock called "int" provided.
Now it's possible that clock enable can never fail, but that is
getting too hard to chase down.

As such, I think this fix is worthwhile, but I'm not going to
mark it for stable without a report of it actually being
possible to trigger it.

I'll leave this on the list for a little longer though as I'd definitely
like an ack from Benjamin or someone else more familiar with the driver
than I am.

Thanks,

Jonathan

> ---
>  drivers/iio/trigger/stm32-timer-trigger.c | 98 ++++++++++++++++++++---
>  1 file changed, 85 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/iio/trigger/stm32-timer-trigger.c b/drivers/iio/trigger/stm32-timer-trigger.c
> index a5dfe65cd9b9..f8ea7bcbb739 100644
> --- a/drivers/iio/trigger/stm32-timer-trigger.c
> +++ b/drivers/iio/trigger/stm32-timer-trigger.c
> @@ -107,6 +107,7 @@ static int stm32_timer_start(struct stm32_timer_trigger *priv,
>  	unsigned long long prd, div;
>  	int prescaler = 0;
>  	u32 ccer, cr1;
> +	int ret;
>  
>  	/* Period and prescaler values depends of clock rate */
>  	div = (unsigned long long)clk_get_rate(priv->clk);
> @@ -132,11 +133,21 @@ static int stm32_timer_start(struct stm32_timer_trigger *priv,
>  	}
>  
>  	/* Check if nobody else use the timer */
> -	regmap_read(priv->regmap, TIM_CCER, &ccer);
> +	ret = regmap_read(priv->regmap, TIM_CCER, &ccer);
> +	if (ret) {
> +		dev_err(priv->dev, "fail to read TIM_CCER.\n");
> +		return ret;
> +	}
> +
>  	if (ccer & TIM_CCER_CCXE)
>  		return -EBUSY;
>  
> -	regmap_read(priv->regmap, TIM_CR1, &cr1);
> +	ret = regmap_read(priv->regmap, TIM_CR1, &cr1);
> +	if (ret) {
> +		dev_err(priv->dev, "fail to read TIM_CR1.\n");
> +		return ret;
> +	}
> +
>  	if (!(cr1 & TIM_CR1_CEN))
>  		clk_enable(priv->clk);
>  
> @@ -164,12 +175,23 @@ static int stm32_timer_start(struct stm32_timer_trigger *priv,
>  static void stm32_timer_stop(struct stm32_timer_trigger *priv)
>  {
>  	u32 ccer, cr1;
> +	int ret;
> +
> +	ret = regmap_read(priv->regmap, TIM_CCER, &ccer);
> +	if (ret) {
> +		dev_err(priv->dev, "Fail to read TIM_CCER.\n");
> +		return;
> +	}
>  
> -	regmap_read(priv->regmap, TIM_CCER, &ccer);
>  	if (ccer & TIM_CCER_CCXE)
>  		return;
>  
> -	regmap_read(priv->regmap, TIM_CR1, &cr1);
> +	ret = regmap_read(priv->regmap, TIM_CR1, &cr1);
> +	if (ret) {
> +		dev_err(priv->dev, "Fail to read TIM_CR1.\n");
> +		return;
> +	}
> +
>  	if (cr1 & TIM_CR1_CEN)
>  		clk_disable(priv->clk);
>  
> @@ -403,20 +425,36 @@ static int stm32_counter_read_raw(struct iio_dev *indio_dev,
>  {
>  	struct stm32_timer_trigger *priv = iio_priv(indio_dev);
>  	u32 dat;
> +	int ret;
>  
>  	switch (mask) {
>  	case IIO_CHAN_INFO_RAW:
> -		regmap_read(priv->regmap, TIM_CNT, &dat);
> +		ret = regmap_read(priv->regmap, TIM_CNT, &dat);
> +		if (ret) {
> +			dev_err(priv->dev, "fail to read TIM_CNT.\n");
> +			return ret;
> +		}
> +
>  		*val = dat;
>  		return IIO_VAL_INT;
>  
>  	case IIO_CHAN_INFO_ENABLE:
> -		regmap_read(priv->regmap, TIM_CR1, &dat);
> +		ret = regmap_read(priv->regmap, TIM_CR1, &dat);
> +		if (ret) {
> +			dev_err(priv->dev, "fail to read TIM_CR1.\n");
> +			return ret;
> +		}
> +
>  		*val = (dat & TIM_CR1_CEN) ? 1 : 0;
>  		return IIO_VAL_INT;
>  
>  	case IIO_CHAN_INFO_SCALE:
> -		regmap_read(priv->regmap, TIM_SMCR, &dat);
> +		ret = regmap_read(priv->regmap, TIM_SMCR, &dat);
> +		if (ret) {
> +			dev_err(priv->dev, "fail to read TIM_SMCR.\n");
> +			return ret;
> +		}
> +
>  		dat &= TIM_SMCR_SMS;
>  
>  		*val = 1;
> @@ -438,6 +476,7 @@ static int stm32_counter_write_raw(struct iio_dev *indio_dev,
>  {
>  	struct stm32_timer_trigger *priv = iio_priv(indio_dev);
>  	u32 dat;
> +	int ret;
>  
>  	switch (mask) {
>  	case IIO_CHAN_INFO_RAW:
> @@ -449,13 +488,23 @@ static int stm32_counter_write_raw(struct iio_dev *indio_dev,
>  
>  	case IIO_CHAN_INFO_ENABLE:
>  		if (val) {
> -			regmap_read(priv->regmap, TIM_CR1, &dat);
> +			ret = regmap_read(priv->regmap, TIM_CR1, &dat);
> +			if (ret) {
> +				dev_err(priv->dev, "fail to read TIM_CR1.\n");
> +				return ret;
> +			}
> +
>  			if (!(dat & TIM_CR1_CEN))
>  				clk_enable(priv->clk);
>  			regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_CEN,
>  					   TIM_CR1_CEN);
>  		} else {
> -			regmap_read(priv->regmap, TIM_CR1, &dat);
> +			ret = regmap_read(priv->regmap, TIM_CR1, &dat);
> +			if (ret) {
> +				dev_err(priv->dev, "fail to read TIM_CR1.\n");
> +				return ret;
> +			}
> +
>  			regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_CEN,
>  					   0);
>  			if (dat & TIM_CR1_CEN)
> @@ -517,8 +566,13 @@ static int stm32_get_trigger_mode(struct iio_dev *indio_dev,
>  {
>  	struct stm32_timer_trigger *priv = iio_priv(indio_dev);
>  	u32 smcr;
> +	int ret;
>  
> -	regmap_read(priv->regmap, TIM_SMCR, &smcr);
> +	ret = regmap_read(priv->regmap, TIM_SMCR, &smcr);
> +	if (ret) {
> +		dev_err(priv->dev, "fail to read TIM_SMCR.\n");
> +		return ret;
> +	}
>  
>  	return (smcr & TIM_SMCR_SMS) == TIM_SMCR_SMS ? 0 : -EINVAL;
>  }
> @@ -557,6 +611,7 @@ static int stm32_set_enable_mode(struct iio_dev *indio_dev,
>  	struct stm32_timer_trigger *priv = iio_priv(indio_dev);
>  	int sms = stm32_enable_mode2sms(mode);
>  	u32 val;
> +	int ret;
>  
>  	if (sms < 0)
>  		return sms;
> @@ -565,7 +620,12 @@ static int stm32_set_enable_mode(struct iio_dev *indio_dev,
>  	 * enable counter clock, so it can use it. Keeps it in sync with CEN.
>  	 */
>  	if (sms == 6) {
> -		regmap_read(priv->regmap, TIM_CR1, &val);
> +		ret = regmap_read(priv->regmap, TIM_CR1, &val);
> +		if (ret) {
> +			dev_err(priv->dev, "fail to read TIM_CR1.\n");
> +			return ret;
> +		}
> +
>  		if (!(val & TIM_CR1_CEN))
>  			clk_enable(priv->clk);
>  	}
> @@ -594,8 +654,14 @@ static int stm32_get_enable_mode(struct iio_dev *indio_dev,
>  {
>  	struct stm32_timer_trigger *priv = iio_priv(indio_dev);
>  	u32 smcr;
> +	int ret;
> +
> +	ret = regmap_read(priv->regmap, TIM_SMCR, &smcr);
> +	if (ret) {
> +		dev_err(priv->dev, "fail to read TIM_SMCR.\n");
> +		return ret;
> +	}
>  
> -	regmap_read(priv->regmap, TIM_SMCR, &smcr);
>  	smcr &= TIM_SMCR_SMS;
>  
>  	return stm32_sms2enable_mode(smcr);
> @@ -706,13 +772,19 @@ EXPORT_SYMBOL(is_stm32_timer_trigger);
>  static void stm32_timer_detect_trgo2(struct stm32_timer_trigger *priv)
>  {
>  	u32 val;
> +	int ret;
>  
>  	/*
>  	 * Master mode selection 2 bits can only be written and read back when
>  	 * timer supports it.
>  	 */
>  	regmap_update_bits(priv->regmap, TIM_CR2, TIM_CR2_MMS2, TIM_CR2_MMS2);
> -	regmap_read(priv->regmap, TIM_CR2, &val);
> +	ret = regmap_read(priv->regmap, TIM_CR2, &val);
> +	if (ret) {
> +		dev_err(priv->dev, "fail to read TIM_CR2.\n");
> +		return;
> +	}
> +
>  	regmap_update_bits(priv->regmap, TIM_CR2, TIM_CR2_MMS2, 0);
>  	priv->has_trgo2 = !!val;
>  }


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
