Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD981581A0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 18:46:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pZNocAqpBM8j6v+uq2lTMEdczSIRLH2Ln+qR1ejvgV4=; b=YdzjBNeJVQlm4E
	bMF1xH/7LmzqEdqJFp82RQSfP/3ustsWxtWuaFQPk04fi8ArN302pq9pKuxnlwjTQ8HwPrXqQjTDI
	Fy0SJFay5iRXFbdQyS32vnb9ZaNj0GHEKnt1L3RpfcFFAVSdNzQWflDRvUds0hOGhNQiII+ZKtHL2
	EzK4KNTf+/GKcm5R98xVSyELy86BK/jFqLQKCCESMvUpaPytd9PLbj20aklLaFXnzFf7ZWQBAgEi+
	O8f0oi9oCx7aaR+DL+ftyTGMPzMm8edVsKu8jzC54dR6Arycuz32d1L1v3EfQ3hZsMLD1JgTXj3H0
	1oTttvG9SvMN9iwupJWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1D8T-0002gT-Oy; Mon, 10 Feb 2020 17:46:17 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1D8J-0002ez-VJ
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 17:46:09 +0000
Received: by mail-yw1-xc41.google.com with SMTP id 10so3806683ywv.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 09:46:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=c1zhLfQHfrUfvkp0MTuGkuwB8y82vgQU4IfRGdXFd5k=;
 b=bVqj8QgM5OlikSgs9Kf4RXNCDtoJmQ8E9efAXgds9jlaEE8+UbeRTMgRb5fstC1Mhx
 k/uub/bsuUK6xPR8j7coolX+ew3ilVxeZCq31NwF6TXcA2Hb+LoyfERWncfohs0bkU8V
 WzGgCq76QV9mI4MUzvzifjm9XDvYFWfdfASEavK/AQmrfXaLldxGckLWZfEVqzJb11wM
 ujgBmMnXoXLnfrsQx+fmI9MSue6BDkhA7xo4fdq/IwQomihaNVIb7irhAhenqAd3NMz3
 SW28jXWBvrBDX+ft5xVZrOB4r+LSEAuyLMsSsdwdOaWorFAzJR9abp4BwrzfMFfhAWt6
 u5cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=c1zhLfQHfrUfvkp0MTuGkuwB8y82vgQU4IfRGdXFd5k=;
 b=Gr/60zlYt06+yhfh/I1mgO0QRAt0P81gl4hMAzlhrcRRyWnaTCxoRa/L2wqeYGedFK
 wmSCbkixO7IB0UUz4Ql39zSvbna/c/WCjCUwa5yn3bQ3OHMoW9uq3hbs1D0K/4uLQ4Tn
 4CXqjfAHNAzE0Zc5hx7ac/J2w0haoZgdAiJ2pY7+EZKusdhxpzL74Nh8CcKMgoftaMVE
 4lLQn79/J82gwZaMZW5FBL7vO2VoO0MQw3Q6S+ggvfJxHwhxNDcP5RZ8OwWOkIbI9iVh
 wJQdOTETr5iZqrJFQVx/bFoEY1O1GsAPc48mIuvWGDar3TbdwroYZA5zSKussd3PR0Ls
 sndA==
X-Gm-Message-State: APjAAAXm4PXhZIh97KU33vFUlohMB4JOUYiRm4CFt1ymjIM5Sou4yyrS
 05ZtweRUD6YK49c24Sjee20=
X-Google-Smtp-Source: APXvYqylUh8O1JaCDocqRa9z5ZfVTr6cLqiL1RjJNIIGfFN2TwYqpRxHFKwWH3DBkxpkZ9FGw44sOg==
X-Received: by 2002:a0d:cb54:: with SMTP id n81mr1817971ywd.375.1581356766107; 
 Mon, 10 Feb 2020 09:46:06 -0800 (PST)
Received: from icarus (072-189-064-225.res.spectrum.com. [72.189.64.225])
 by smtp.gmail.com with ESMTPSA id m62sm530815ywb.107.2020.02.10.09.46.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 09:46:05 -0800 (PST)
Date: Mon, 10 Feb 2020 12:45:50 -0500
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH v2] counter: stm32-timer-cnt: add power management support
Message-ID: <20200210174550.GA4626@icarus>
References: <1581355198-30428-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581355198-30428-1-git-send-email-fabrice.gasnier@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_094608_010442_2296AE30 
X-CRM114-Status: GOOD (  19.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [vilhelm.gray[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 mcoquelin.stm32@gmail.com, linux-stm32@st-md-mailman.stormreply.com,
 jic23@kernel.org, benjamin.gaignard@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 10, 2020 at 06:19:58PM +0100, Fabrice Gasnier wrote:
> Add suspend/resume PM sleep ops. When going to low power, enforce the
> counter isn't active. Gracefully restore its state upon resume in case
> it's been left enabled prior to suspend.
> 
> Acked-by: William Breathitt Gray <vilhelm.gray@gmail.com>
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> ---
> Changes in v2:
> - Don't refuse to suspend in case the counter has been left enabled.
>   Gracefully disable it and restore its state upon resume.
> ---
>  drivers/counter/stm32-timer-cnt.c | 63 +++++++++++++++++++++++++++++++++++++++
>  1 file changed, 63 insertions(+)
> 
> diff --git a/drivers/counter/stm32-timer-cnt.c b/drivers/counter/stm32-timer-cnt.c
> index 3eafcce..50496f4 100644
> --- a/drivers/counter/stm32-timer-cnt.c
> +++ b/drivers/counter/stm32-timer-cnt.c
> @@ -12,6 +12,7 @@
>  #include <linux/iio/types.h>

Unrelated to your patch but it caught my eye: are iio headers necessary
for this file? I suspect they are not needed since this driver does not
make use of the IIO interface.

William Breathitt Gray

>  #include <linux/mfd/stm32-timers.h>
>  #include <linux/module.h>
> +#include <linux/pinctrl/consumer.h>
>  #include <linux/platform_device.h>
>  
>  #define TIM_CCMR_CCXS	(BIT(8) | BIT(0))
> @@ -20,11 +21,20 @@
>  #define TIM_CCER_MASK	(TIM_CCER_CC1P | TIM_CCER_CC1NP | \
>  			 TIM_CCER_CC2P | TIM_CCER_CC2NP)
>  
> +struct stm32_timer_regs {
> +	u32 cr1;
> +	u32 cnt;
> +	u32 smcr;
> +	u32 arr;
> +};
> +
>  struct stm32_timer_cnt {
>  	struct counter_device counter;
>  	struct regmap *regmap;
>  	struct clk *clk;
>  	u32 ceiling;
> +	bool enabled;
> +	struct stm32_timer_regs bak;
>  };
>  
>  /**
> @@ -224,6 +234,9 @@ static ssize_t stm32_count_enable_write(struct counter_device *counter,
>  			clk_disable(priv->clk);
>  	}
>  
> +	/* Keep enabled state to properly handle low power states */
> +	priv->enabled = enable;
> +
>  	return len;
>  }
>  
> @@ -358,10 +371,59 @@ static int stm32_timer_cnt_probe(struct platform_device *pdev)
>  	priv->counter.num_signals = ARRAY_SIZE(stm32_signals);
>  	priv->counter.priv = priv;
>  
> +	platform_set_drvdata(pdev, priv);
> +
>  	/* Register Counter device */
>  	return devm_counter_register(dev, &priv->counter);
>  }
>  
> +static int __maybe_unused stm32_timer_cnt_suspend(struct device *dev)
> +{
> +	struct stm32_timer_cnt *priv = dev_get_drvdata(dev);
> +
> +	/* Only take care of enabled counter: don't disturb other MFD child */
> +	if (priv->enabled) {
> +		/* Backup registers that may get lost in low power mode */
> +		regmap_read(priv->regmap, TIM_SMCR, &priv->bak.smcr);
> +		regmap_read(priv->regmap, TIM_ARR, &priv->bak.arr);
> +		regmap_read(priv->regmap, TIM_CNT, &priv->bak.cnt);
> +		regmap_read(priv->regmap, TIM_CR1, &priv->bak.cr1);
> +
> +		/* Disable the counter */
> +		regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_CEN, 0);
> +		clk_disable(priv->clk);
> +	}
> +
> +	return pinctrl_pm_select_sleep_state(dev);
> +}
> +
> +static int __maybe_unused stm32_timer_cnt_resume(struct device *dev)
> +{
> +	struct stm32_timer_cnt *priv = dev_get_drvdata(dev);
> +	int ret;
> +
> +	ret = pinctrl_pm_select_default_state(dev);
> +	if (ret)
> +		return ret;
> +
> +	if (priv->enabled) {
> +		clk_enable(priv->clk);
> +
> +		/* Restore registers that may have been lost */
> +		regmap_write(priv->regmap, TIM_SMCR, priv->bak.smcr);
> +		regmap_write(priv->regmap, TIM_ARR, priv->bak.arr);
> +		regmap_write(priv->regmap, TIM_CNT, priv->bak.cnt);
> +
> +		/* Also re-enables the counter */
> +		regmap_write(priv->regmap, TIM_CR1, priv->bak.cr1);
> +	}
> +
> +	return 0;
> +}
> +
> +static SIMPLE_DEV_PM_OPS(stm32_timer_cnt_pm_ops, stm32_timer_cnt_suspend,
> +			 stm32_timer_cnt_resume);
> +
>  static const struct of_device_id stm32_timer_cnt_of_match[] = {
>  	{ .compatible = "st,stm32-timer-counter", },
>  	{},
> @@ -373,6 +435,7 @@ static struct platform_driver stm32_timer_cnt_driver = {
>  	.driver = {
>  		.name = "stm32-timer-counter",
>  		.of_match_table = stm32_timer_cnt_of_match,
> +		.pm = &stm32_timer_cnt_pm_ops,
>  	},
>  };
>  module_platform_driver(stm32_timer_cnt_driver);
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
