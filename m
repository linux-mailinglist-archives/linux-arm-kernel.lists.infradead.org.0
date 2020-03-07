Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CBB17CF03
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 16:21:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EBHjHSm6Kr8KMfhFziWse+Z5b4ZawR93QEIQ+6HV/Xo=; b=m3Osu3BhJJO63y
	h5Hk0LIIwh4XmqQsVinaalt6akp/dIFauWkqv1X80pIxpPm7mdSIQoeBxYSvX44GWybRFfksXu9GH
	joV3ills8UmqdMtEST/f6dYMU6ivOjj8lJUTOhQL8HtockHAf856mXOX9VuEF94PQmExn5AcjLBl0
	+mKazUDiSfQq1leG07tQWpwPVcIKG8vjvbuEqfnq4rf6mxePoLv+RolWc4K4PitdsJ9RGl9IXJT0X
	dURagXIa4Pw5+QwTN0MXF5pyM/JU+PkKeHY8szx+rcJcOmPBM317YKbDl6QqcNnbrXzEHpnZqMjjQ
	zs9IyAjCFCk65G6x4gOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAbFy-0000Tt-6B; Sat, 07 Mar 2020 15:20:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAbFn-0000TU-Uo
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Mar 2020 15:20:41 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9FC6D20674;
 Sat,  7 Mar 2020 15:20:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583594439;
 bh=WXObIi33XmoyMwmcEZvaU65yLjmbN66OToWMCu6nPyE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=FV+tBombC10mD94wQu/owOffP+3osxZtdkbQHT2q9THGErYc3/8iSvySgWfc89yyw
 NoiEst1cjF1D/c+/yUYQQt5IIACUVC++KmwWImLlyNWgkWnOBcppBH6CsloyMsVl73
 G9iYUgHc4YxqVoeAFFl6RGOgoc9z+8Umw5WMSdFw=
Date: Sat, 7 Mar 2020 15:20:34 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH 1/2] iio: trigger: stm32-timer: rename enabled flag
Message-ID: <20200307152034.0d7e01a5@archlinux>
In-Reply-To: <1583247585-16698-2-git-send-email-fabrice.gasnier@st.com>
References: <1583247585-16698-1-git-send-email-fabrice.gasnier@st.com>
 <1583247585-16698-2-git-send-email-fabrice.gasnier@st.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_072040_038595_C0F15993 
X-CRM114-Status: GOOD (  17.46  )
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
Cc: lars@metafoo.de, olivier.moysan@st.com, alexandre.torgue@st.com,
 linux-iio@vger.kernel.org, pmeerw@pmeerw.net, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, knaack.h@gmx.de,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 benjamin.gaignard@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 3 Mar 2020 15:59:44 +0100
Fabrice Gasnier <fabrice.gasnier@st.com> wrote:

> "clk_enabled" flag reflects enabled state of the timer, for master mode,
> slave mode or trigger (with sampling_frequency). So rename it to "enabled".
> 
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
Applied to the togreg branch of iio.git and pushed out as testing for
the autobuilders to play with it.

Thanks,

Jonathan

> ---
>  drivers/iio/trigger/stm32-timer-trigger.c | 28 ++++++++++++++--------------
>  1 file changed, 14 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/iio/trigger/stm32-timer-trigger.c b/drivers/iio/trigger/stm32-timer-trigger.c
> index 16a3b6b..32e1249 100644
> --- a/drivers/iio/trigger/stm32-timer-trigger.c
> +++ b/drivers/iio/trigger/stm32-timer-trigger.c
> @@ -79,7 +79,7 @@ struct stm32_timer_trigger {
>  	struct device *dev;
>  	struct regmap *regmap;
>  	struct clk *clk;
> -	bool clk_enabled;
> +	bool enabled;
>  	u32 max_arr;
>  	const void *triggers;
>  	const void *valids;
> @@ -140,8 +140,8 @@ static int stm32_timer_start(struct stm32_timer_trigger *priv,
>  		return -EBUSY;
>  
>  	mutex_lock(&priv->lock);
> -	if (!priv->clk_enabled) {
> -		priv->clk_enabled = true;
> +	if (!priv->enabled) {
> +		priv->enabled = true;
>  		clk_enable(priv->clk);
>  	}
>  
> @@ -185,8 +185,8 @@ static void stm32_timer_stop(struct stm32_timer_trigger *priv)
>  	/* Make sure that registers are updated */
>  	regmap_update_bits(priv->regmap, TIM_EGR, TIM_EGR_UG, TIM_EGR_UG);
>  
> -	if (priv->clk_enabled) {
> -		priv->clk_enabled = false;
> +	if (priv->enabled) {
> +		priv->enabled = false;
>  		clk_disable(priv->clk);
>  	}
>  	mutex_unlock(&priv->lock);
> @@ -305,9 +305,9 @@ static ssize_t stm32_tt_store_master_mode(struct device *dev,
>  		if (!strncmp(master_mode_table[i], buf,
>  			     strlen(master_mode_table[i]))) {
>  			mutex_lock(&priv->lock);
> -			if (!priv->clk_enabled) {
> +			if (!priv->enabled) {
>  				/* Clock should be enabled first */
> -				priv->clk_enabled = true;
> +				priv->enabled = true;
>  				clk_enable(priv->clk);
>  			}
>  			regmap_update_bits(priv->regmap, TIM_CR2, mask,
> @@ -476,8 +476,8 @@ static int stm32_counter_write_raw(struct iio_dev *indio_dev,
>  	case IIO_CHAN_INFO_ENABLE:
>  		mutex_lock(&priv->lock);
>  		if (val) {
> -			if (!priv->clk_enabled) {
> -				priv->clk_enabled = true;
> +			if (!priv->enabled) {
> +				priv->enabled = true;
>  				clk_enable(priv->clk);
>  			}
>  			regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_CEN,
> @@ -485,8 +485,8 @@ static int stm32_counter_write_raw(struct iio_dev *indio_dev,
>  		} else {
>  			regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_CEN,
>  					   0);
> -			if (priv->clk_enabled) {
> -				priv->clk_enabled = false;
> +			if (priv->enabled) {
> +				priv->enabled = false;
>  				clk_disable(priv->clk);
>  			}
>  		}
> @@ -594,9 +594,9 @@ static int stm32_set_enable_mode(struct iio_dev *indio_dev,
>  	 * enable counter clock, so it can use it. Keeps it in sync with CEN.
>  	 */
>  	mutex_lock(&priv->lock);
> -	if (sms == 6 && !priv->clk_enabled) {
> +	if (sms == 6 && !priv->enabled) {
>  		clk_enable(priv->clk);
> -		priv->clk_enabled = true;
> +		priv->enabled = true;
>  	}
>  	mutex_unlock(&priv->lock);
>  
> @@ -806,7 +806,7 @@ static int stm32_timer_trigger_remove(struct platform_device *pdev)
>  	if (!(val & TIM_CCER_CCXE))
>  		regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_CEN, 0);
>  
> -	if (priv->clk_enabled)
> +	if (priv->enabled)
>  		clk_disable(priv->clk);
>  
>  	return 0;


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
