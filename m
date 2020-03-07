Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 961E817CF08
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 16:21:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aTTyYIIi12OcvT56z5leylge9DUg5R8M8L0hWF9PEfY=; b=hAUmOa4TvbB7Ln
	amPRTKzOV/CMRUAYGKMWK59CCSa8k78jxFTf7cKA31EEtk2a7QnMd4ekPr1RJeek6jCZraD6d+Xsl
	K4FyuZ4MPQwvvRzcUQd9Hpl6koG41ySNX4z5wh7mDSOnN4yUKSzVmEqH2zFOGIaDerLD+/Zjh0q67
	7bZG13gQbksYLgTgexX19svqu/VwRZbhO9k00iZzuEoPxWJpFsOUCRhWNoY3myHeQ2Z0cYUmwXNlg
	4dlp+ADC14VpWR3u4ylKH705ni52+g5fyhcY3p70DLduwqvBJ8nBA5n3GIcvy1z5f0mVS74ksSKTy
	ojU3R8nuA6JIDNyzrXEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAbGr-0000mO-Re; Sat, 07 Mar 2020 15:21:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAbGg-0000lv-OD
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Mar 2020 15:21:36 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8CCB020674;
 Sat,  7 Mar 2020 15:21:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583594494;
 bh=zXhA3RoLELcyY2UKL8bcqbSijN27udDZjliB55Zc+PM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=eH3omeFiyPeHhZ9l62cNGCJmGil5/S2xcf4vhQoBUjPoOWVnsBYBk4gShULYCrSod
 IdEaczUOrw4cfLWzoM4VAiNV9Vswma2J6qsiaghim6DUNPRFrFW0JuMxPiGK9mCOBn
 vq8r9qma/eAE8YbYkWUXx3i6r9W5gPVV2ZZaRZ1o=
Date: Sat, 7 Mar 2020 15:21:27 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH 2/2] iio: trigger: stm32-timer: add power management
 support
Message-ID: <20200307152127.404aba78@archlinux>
In-Reply-To: <1583247585-16698-3-git-send-email-fabrice.gasnier@st.com>
References: <1583247585-16698-1-git-send-email-fabrice.gasnier@st.com>
 <1583247585-16698-3-git-send-email-fabrice.gasnier@st.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_072134_832505_5236629D 
X-CRM114-Status: GOOD (  17.39  )
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

On Tue, 3 Mar 2020 15:59:45 +0100
Fabrice Gasnier <fabrice.gasnier@st.com> wrote:

> Add suspend/resume PM sleep ops to stm32-timer-trigger driver.
> Register contents may be lost depending on low power modes.
> When going to low power, enforce the timer isn't active. Gracefully
> restore its state upon resume in case it's been left enabled prior to
> suspend.
> 
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
Seems sensible. Applied,

Thanks,

Jonathan

> ---
>  drivers/iio/trigger/stm32-timer-trigger.c | 63 +++++++++++++++++++++++++++++++
>  1 file changed, 63 insertions(+)
> 
> diff --git a/drivers/iio/trigger/stm32-timer-trigger.c b/drivers/iio/trigger/stm32-timer-trigger.c
> index 32e1249..37545a8 100644
> --- a/drivers/iio/trigger/stm32-timer-trigger.c
> +++ b/drivers/iio/trigger/stm32-timer-trigger.c
> @@ -75,6 +75,15 @@ static const void *stm32h7_valids_table[][MAX_VALIDS] = {
>  	{ }, /* timer 17 */
>  };
>  
> +struct stm32_timer_trigger_regs {
> +	u32 cr1;
> +	u32 cr2;
> +	u32 psc;
> +	u32 arr;
> +	u32 cnt;
> +	u32 smcr;
> +};
> +
>  struct stm32_timer_trigger {
>  	struct device *dev;
>  	struct regmap *regmap;
> @@ -86,6 +95,7 @@ struct stm32_timer_trigger {
>  	bool has_trgo2;
>  	struct mutex lock; /* concurrent sysfs configuration */
>  	struct list_head tr_list;
> +	struct stm32_timer_trigger_regs bak;
>  };
>  
>  struct stm32_timer_trigger_cfg {
> @@ -812,6 +822,58 @@ static int stm32_timer_trigger_remove(struct platform_device *pdev)
>  	return 0;
>  }
>  
> +static int __maybe_unused stm32_timer_trigger_suspend(struct device *dev)
> +{
> +	struct stm32_timer_trigger *priv = dev_get_drvdata(dev);
> +
> +	/* Only take care of enabled timer: don't disturb other MFD child */
> +	if (priv->enabled) {
> +		/* Backup registers that may get lost in low power mode */
> +		regmap_read(priv->regmap, TIM_CR1, &priv->bak.cr1);
> +		regmap_read(priv->regmap, TIM_CR2, &priv->bak.cr2);
> +		regmap_read(priv->regmap, TIM_PSC, &priv->bak.psc);
> +		regmap_read(priv->regmap, TIM_ARR, &priv->bak.arr);
> +		regmap_read(priv->regmap, TIM_CNT, &priv->bak.cnt);
> +		regmap_read(priv->regmap, TIM_SMCR, &priv->bak.smcr);
> +
> +		/* Disable the timer */
> +		regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_CEN, 0);
> +		clk_disable(priv->clk);
> +	}
> +
> +	return 0;
> +}
> +
> +static int __maybe_unused stm32_timer_trigger_resume(struct device *dev)
> +{
> +	struct stm32_timer_trigger *priv = dev_get_drvdata(dev);
> +	int ret;
> +
> +	if (priv->enabled) {
> +		ret = clk_enable(priv->clk);
> +		if (ret)
> +			return ret;
> +
> +		/* restore master/slave modes */
> +		regmap_write(priv->regmap, TIM_SMCR, priv->bak.smcr);
> +		regmap_write(priv->regmap, TIM_CR2, priv->bak.cr2);
> +
> +		/* restore sampling_frequency (trgo / trgo2 triggers) */
> +		regmap_write(priv->regmap, TIM_PSC, priv->bak.psc);
> +		regmap_write(priv->regmap, TIM_ARR, priv->bak.arr);
> +		regmap_write(priv->regmap, TIM_CNT, priv->bak.cnt);
> +
> +		/* Also re-enables the timer */
> +		regmap_write(priv->regmap, TIM_CR1, priv->bak.cr1);
> +	}
> +
> +	return 0;
> +}
> +
> +static SIMPLE_DEV_PM_OPS(stm32_timer_trigger_pm_ops,
> +			 stm32_timer_trigger_suspend,
> +			 stm32_timer_trigger_resume);
> +
>  static const struct stm32_timer_trigger_cfg stm32_timer_trg_cfg = {
>  	.valids_table = valids_table,
>  	.num_valids_table = ARRAY_SIZE(valids_table),
> @@ -840,6 +902,7 @@ static struct platform_driver stm32_timer_trigger_driver = {
>  	.driver = {
>  		.name = "stm32-timer-trigger",
>  		.of_match_table = stm32_trig_of_match,
> +		.pm = &stm32_timer_trigger_pm_ops,
>  	},
>  };
>  module_platform_driver(stm32_timer_trigger_driver);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
