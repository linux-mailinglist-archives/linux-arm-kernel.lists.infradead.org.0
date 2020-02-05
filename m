Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9277E153723
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 19:00:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uR7g9O2QmrIJ+y9AUaVKoNQPokXFMKJzBK/h/ayzD0I=; b=rjZ6+gICsra4gM
	yLu1NRAV+Pc1NGYbCTX0KJZE1jVLQAl6UDD7H80le8uYSg05gCivCD3zyeNfaqEusjJ6g49OLXBt0
	J/1J9M1xppFiiulJr4nQ/i4o/ANkp73aMiM+iPY+blb0IPx9ABLLtS44wISTvC8TPIEsAWSqEfVVv
	xg9RA/zTS5lVmfq9ZA1FwDLiGyemJheHeOeusvmW8voTtdaxdaAKedIDDfhhZouIrO4qccE50w6aq
	19JczCqYXVPhqZvvJDIVKcbFwZNshQwSZJXY82MS2JNYUaLBN2iJIfDo7wbX+otUy1khAChEBoU+O
	sz3M7e7UJWzTEgnCddow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izOyD-0007Iq-Ua; Wed, 05 Feb 2020 18:00:13 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izOy2-0006qr-1V
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 18:00:03 +0000
Received: by mail-yw1-xc42.google.com with SMTP id b81so3165325ywe.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Feb 2020 10:00:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=rRgXvPr3SwIij87seHPiKa5mQQ0rdFnyGB2bv1mFSf8=;
 b=Bk0/Cw3/MqA+hum9NqHHMRRRYzF3xdfomLI5myEg+7tMx0ZRORwJbupYsD5Fcx6/WZ
 +iTgQCiKWKSaAPUceVbmwxBP3dluyHQ+6itcBpIHPH0q6OoUk1GIhnSIFXyXx8F4s84y
 1QKv3u2CkJ4vqiaqrL+rDTyQ14PmxhCKsvjK/ky0/EuFW9l1Ze8Vnw29Zc/5/Pr4gVfw
 +4aXPQpSJi3RqV+SAES3L5WtWJN9Lo1Kz9EuSdnxMjYaE5HgsLMCcoyeqKiMvDaPV+eg
 t7eXrxmLxe12Pq8r+W4u487E9V0L5qQsikTa3ePAzgAfKaLzIBM8sWyHYe2UKPsCTdfA
 nL9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=rRgXvPr3SwIij87seHPiKa5mQQ0rdFnyGB2bv1mFSf8=;
 b=RE6TUYz6Cj5MlXyGUroq5HjXN0xk4m+Xfng72P5Bm9pwNerTiX02IqQpH9CG6STreJ
 BYoCNMNSEfvdKcfs23VlELCD94ZnGFGstQqWgn5RiAsed7j8kVBVMP+VChMHrsFbLbtC
 22lgde80BzkdeZdzq8YFBEoTa9WCNsF19JkCNDIbX8H2OWz7fAVfcvSit6/zJDb+OPtB
 VDEKOdXlzgzd5y1QXo6h1x8EWZa8LC3FcknrCWu8zivaKu1HSJmK6ijP5LWDadtYrD3l
 jmsYBtwQOk1kdb28dnnw4BwLedoZzEjOPlovs3RWWejUkxIpRtXtL07oSlG5yw1BN28s
 wHsw==
X-Gm-Message-State: APjAAAUt1vtXa7qX5bWJpCvGYRydg7fg2K11HWd5yjfmYUD+ilsYh5Qv
 O8hmpy4rTeclBPX4/ENS16A=
X-Google-Smtp-Source: APXvYqxL/2f5r/cM0VlljtruqTfsVW5vkWvw0UbpVFlDnScpMN99cE8YToUz2/tGE3IbM8NbrZIfaw==
X-Received: by 2002:a81:11d7:: with SMTP id 206mr11978061ywr.150.1580925600074; 
 Wed, 05 Feb 2020 10:00:00 -0800 (PST)
Received: from icarus (072-189-064-225.res.spectrum.com. [72.189.64.225])
 by smtp.gmail.com with ESMTPSA id h203sm216399ywb.98.2020.02.05.09.59.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Feb 2020 09:59:59 -0800 (PST)
Date: Wed, 5 Feb 2020 12:59:45 -0500
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: Fabrice Gasnier <fabrice.gasnier@st.com>, jic23@kernel.org
Subject: Re: [PATCH] counter: stm32-timer-cnt: add power management support
Message-ID: <20200205175945.GA57132@icarus>
References: <1580899678-26393-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1580899678-26393-1-git-send-email-fabrice.gasnier@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_100002_126617_46DBD48D 
X-CRM114-Status: GOOD (  18.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [vilhelm.gray[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 benjamin.gaignard@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 05, 2020 at 11:47:58AM +0100, Fabrice Gasnier wrote:
> Add suspend/resume PM sleep ops. When going to low power, enforce the
> counter isn't active.
> 
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>

These changes are purely for the PM ops and don't involve the Counter
API, so I don't see any see any issues with this patch from my end.

Acked-by: William Breathitt Gray <vilhelm.gray@gmail.com>

> ---
>  drivers/counter/stm32-timer-cnt.c | 25 +++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 
> diff --git a/drivers/counter/stm32-timer-cnt.c b/drivers/counter/stm32-timer-cnt.c
> index 3eafcce..3b84503 100644
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
> @@ -358,10 +359,33 @@ static int stm32_timer_cnt_probe(struct platform_device *pdev)
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
> +	u32 cr1;
> +
> +	/* Check for active counter */
> +	regmap_read(priv->regmap, TIM_CR1, &cr1);
> +	if (cr1 & TIM_CR1_CEN)
> +		return -EBUSY;
> +
> +	return pinctrl_pm_select_sleep_state(dev);
> +}
> +
> +static int __maybe_unused stm32_timer_cnt_resume(struct device *dev)
> +{
> +	return pinctrl_pm_select_default_state(dev);
> +}
> +
> +static SIMPLE_DEV_PM_OPS(stm32_timer_cnt_pm_ops, stm32_timer_cnt_suspend,
> +			 stm32_timer_cnt_resume);
> +
>  static const struct of_device_id stm32_timer_cnt_of_match[] = {
>  	{ .compatible = "st,stm32-timer-counter", },
>  	{},
> @@ -373,6 +397,7 @@ static struct platform_driver stm32_timer_cnt_driver = {
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
