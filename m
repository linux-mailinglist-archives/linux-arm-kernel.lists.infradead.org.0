Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AC6015FFC6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 19:41:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UJhVdga9df+Pzb6fgqJbqadO9YZLI5kvSI6uMmFvIs4=; b=ulyr1MqTBIsS9R
	mjyHtmyzd3cpUxBBrMJGg7cnJf1aLMJwnAFedHR70q8d5YQnODRxQAS0Qayo4WQ/bCykwyQ7kklYP
	MT/iz3L64MBOq+FHi3X0qjcJv6obnCON54oAYAQYLRvt8YGEw+TGR1XIGKeNlyJ/puAEtQR5kp3q1
	txM6XdxVbhKeoQbVpqyY3DKSsigB0Od7SuYhbLqKcH7H6/EQLJpVLBZDraEX8sErVbvUQMnwGXxoX
	REqHEXzLc3L9qoXk2mZfi1XiVEISfhCeadu00rg+IBLIOj1zSmw7zkzTIXOo6Er/gy+ubIO32r+NT
	QynJVpyOZtfItqhmJldg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j32Nv-0007u1-Hu; Sat, 15 Feb 2020 18:41:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j32No-0007tf-Qf
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 18:41:42 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 94AAC2072D;
 Sat, 15 Feb 2020 18:41:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581792100;
 bh=BjBazr4WmmuTjxM5m3H0niFodBZruveqbCGfq9sC65Q=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=djgmAQXjqo+MlqzTZc00spUUBrsvrHJZoZRFnHI9BzjfTLivfrp5FNipSdfQfqJLi
 BqANi0V7cfltMJT0voJbWwGrIDwFYflw/eT7iFq6/Z8C/njlTvZQT2zhYZc4DWPJlo
 m2oCHozWKKl/O/5UqGl+ElpKIcR14X8IyJDeTu7w=
Date: Sat, 15 Feb 2020 18:41:35 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH] iio: trigger: stm32-timer: disable master mode when
 stopping
Message-ID: <20200215184135.10af9907@archlinux>
In-Reply-To: <1581698795-437-1-git-send-email-fabrice.gasnier@st.com>
References: <1581698795-437-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200215_104140_888558_C8CF1286 
X-CRM114-Status: GOOD (  17.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Fri, 14 Feb 2020 17:46:35 +0100
Fabrice Gasnier <fabrice.gasnier@st.com> wrote:

> Master mode should be disabled when stopping. This mainly impacts
> possible other use-case after timer has been stopped. Currently,
> master mode remains set (from start routine).
> 
> Fixes: 6fb34812c2a2 ("iio: stm32 trigger: Add support for TRGO2 triggers")
> 
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
I 'think' this is tangential to the other changes to this driver recently
and you seem to have prepared this against current mailine.

Hence applied to the fixes-togreg branch of iio.git and marked for stable.

Thanks,

Jonathan

> ---
>  drivers/iio/trigger/stm32-timer-trigger.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/iio/trigger/stm32-timer-trigger.c b/drivers/iio/trigger/stm32-timer-trigger.c
> index 2e0d32a..2f82e8c 100644
> --- a/drivers/iio/trigger/stm32-timer-trigger.c
> +++ b/drivers/iio/trigger/stm32-timer-trigger.c
> @@ -161,7 +161,8 @@ static int stm32_timer_start(struct stm32_timer_trigger *priv,
>  	return 0;
>  }
>  
> -static void stm32_timer_stop(struct stm32_timer_trigger *priv)
> +static void stm32_timer_stop(struct stm32_timer_trigger *priv,
> +			     struct iio_trigger *trig)
>  {
>  	u32 ccer, cr1;
>  
> @@ -179,6 +180,12 @@ static void stm32_timer_stop(struct stm32_timer_trigger *priv)
>  	regmap_write(priv->regmap, TIM_PSC, 0);
>  	regmap_write(priv->regmap, TIM_ARR, 0);
>  
> +	/* Force disable master mode */
> +	if (stm32_timer_is_trgo2_name(trig->name))
> +		regmap_update_bits(priv->regmap, TIM_CR2, TIM_CR2_MMS2, 0);
> +	else
> +		regmap_update_bits(priv->regmap, TIM_CR2, TIM_CR2_MMS, 0);
> +
>  	/* Make sure that registers are updated */
>  	regmap_update_bits(priv->regmap, TIM_EGR, TIM_EGR_UG, TIM_EGR_UG);
>  }
> @@ -197,7 +204,7 @@ static ssize_t stm32_tt_store_frequency(struct device *dev,
>  		return ret;
>  
>  	if (freq == 0) {
> -		stm32_timer_stop(priv);
> +		stm32_timer_stop(priv, trig);
>  	} else {
>  		ret = stm32_timer_start(priv, trig, freq);
>  		if (ret)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
