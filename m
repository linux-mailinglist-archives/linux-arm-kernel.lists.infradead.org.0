Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2608915D79B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 13:46:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RGUIOwgoKr7giBtB0VcM6XF86zaq7wbBjcVsG/PCXJI=; b=Ejwwr+kfQOnIfq
	/iE82GTKsrHnOZ5IjUyH/b5n6qI6FG+HtDg4zSMcbY98C39sXCnI0jX7Tpzhv+c4YK1k+Hu0N64Hm
	kx54qE32TQH/KXEDmHzVCIzFFZco8hBEWtPA5yxo97PNUtqW8pU9yp2wrMqwLW9PUm9QF67Cv4Dq8
	nXSSGQfbNCWJfNczenT7BanTLEoOgvUyrP2wsHXzafSWUHVzX4kKtC7FkdnxIg0KZIsxOi0cpS/Ox
	0ykTdXyYpiEiqg5+WQCcr/2chmhS/wwUeUezY3mLDH15MaL4rrwVlr0j1Bj7oTMYWQWeeC6si1hBI
	IcBM25ivr1/AtpqILEyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2aLw-0004Mt-WE; Fri, 14 Feb 2020 12:45:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2aLo-0004M2-Np
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 12:45:46 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 45AA820675;
 Fri, 14 Feb 2020 12:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581684343;
 bh=L11LgvfvPife2NQLp25fa0qA4b8xQO9XV9Ewz0cn3OA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=EJVEl0PjCob4ckz1ww9HSHih0z/eutsImM7F2lSFEZx4eb6+IzWYvzEqONq/xeqAO
 kcuBuai37ObfoxWSjExVa+R1wv0SN0BCei+agomUauxuxoeeKdc7NP3Kn7KfkSXevU
 wJA5r7d3dZQxUFEfcjjP2WHEJBlMXGCh+Xg5RX+k=
Date: Fri, 14 Feb 2020 12:45:37 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH v2] counter: stm32-timer-cnt: add power management support
Message-ID: <20200214124537.1b870746@archlinux>
In-Reply-To: <1581355198-30428-1-git-send-email-fabrice.gasnier@st.com>
References: <1581355198-30428-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_044544_817850_AEA1BB56 
X-CRM114-Status: GOOD (  17.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: benjamin.gaignard@st.com, linux-iio@vger.kernel.org, vilhelm.gray@gmail.com,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 alexandre.torgue@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 10 Feb 2020 18:19:58 +0100
Fabrice Gasnier <fabrice.gasnier@st.com> wrote:

> Add suspend/resume PM sleep ops. When going to low power, enforce the
> counter isn't active. Gracefully restore its state upon resume in case
> it's been left enabled prior to suspend.
> 
> Acked-by: William Breathitt Gray <vilhelm.gray@gmail.com>
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
Looks good to me.

Applied to the togreg branch of iio.git and pushed out as testing for
the autobuilders to play with it.

Thanks,

Jonathan

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


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
