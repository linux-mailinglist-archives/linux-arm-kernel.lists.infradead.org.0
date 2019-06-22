Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A264F4CF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 11:39:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bYj9PxOxsiDmiLE47EBW9VeHrXPOGfKt6LFeXk75IiE=; b=rVkvi1sRHZ2tWi
	ZdzfHIP43XmbyI46a3HL9mfB+4e7vwhm8jrXzxaT1lakL+DPgSzLNQdmY+XAUtvNYEqg9Q8A1Gp6Y
	XuXuf8cwD7UwzlnKqqSOLXt+LFXkxFKbnh0gq7ECBjUTScq9y/im9E/7JBDME3KuKRc+ruzGj+6gL
	CTphjlzBkDQMVo4hwssJK5QZruNCwJfjMzgc9tuHtYK0Bufvep9IzNGbHOIxeLJapbrQuhnL2cTbS
	armxGRrKxf/rgLfd1XC1RETjFp5dXe3ouxZ8efN5I6C5jVdCjOOopAp/LBeIRwcLn57bSj5VG4HTq
	8vgx9jIFCR8h3DYb+YoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hecUh-0005s5-Fs; Sat, 22 Jun 2019 09:39:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hecUW-0005rg-8D
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Jun 2019 09:39:25 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 668842070B;
 Sat, 22 Jun 2019 09:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561196363;
 bh=62wqamZTufCpuZJ2+wwSe9gHyryf/3KEt5zf+QDPazA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=AivjhXf/pCteBL38ChM4XsrZCIl4SXwVurhN97FIwh7bxNv4IP+1Z2Vvg+03XLer9
 cw0yYJrEf7ZfxGO3hiSQLbc5X4Q7JjmxQHPgOeJ3SkSg2cFMLxleAu2n1NDqfmxXUz
 SQgYKw4i7GUUdYZT6/5Rki7NlKgQ0QoPXeOUy3zU=
Date: Sat, 22 Jun 2019 10:39:18 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH 2/5] iio: adc: stm32-adc: add missing vdda-supply
Message-ID: <20190622103918.1ccbd452@archlinux>
In-Reply-To: <1560947398-11592-3-git-send-email-fabrice.gasnier@st.com>
References: <1560947398-11592-1-git-send-email-fabrice.gasnier@st.com>
 <1560947398-11592-3-git-send-email-fabrice.gasnier@st.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_023924_325392_AF5EA99A 
X-CRM114-Status: GOOD (  19.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 alexandre.torgue@st.com, linux-iio@vger.kernel.org, pmeerw@pmeerw.net,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 knaack.h@gmx.de, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 19 Jun 2019 14:29:55 +0200
Fabrice Gasnier <fabrice.gasnier@st.com> wrote:

> Add missing vdda-supply, analog power supply, to STM32 ADC. When vdda is
> an independent supply, it needs to be properly turned on or off to supply
> the ADC.
> 
> Fixes: 1add69880240 ("iio: adc: Add support for STM32 ADC core").
> 
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
I'm going to assume there is a board out there where this matters as that
doesn't seem to be the case for the two in tree dts files so I've
marked it for stable.

Going via togreg branch however rather than fixes as we are late in this
cycle so this can wait for the merge window.

Thanks,

Jonathan


> ---
>  drivers/iio/adc/stm32-adc-core.c | 21 ++++++++++++++++++++-
>  1 file changed, 20 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iio/adc/stm32-adc-core.c b/drivers/iio/adc/stm32-adc-core.c
> index 2327ec1..1f7ce51 100644
> --- a/drivers/iio/adc/stm32-adc-core.c
> +++ b/drivers/iio/adc/stm32-adc-core.c
> @@ -87,6 +87,7 @@ struct stm32_adc_priv_cfg {
>   * @domain:		irq domain reference
>   * @aclk:		clock reference for the analog circuitry
>   * @bclk:		bus clock common for all ADCs, depends on part used
> + * @vdda:		vdda analog supply reference
>   * @vref:		regulator reference
>   * @cfg:		compatible configuration data
>   * @common:		common data for all ADC instances
> @@ -97,6 +98,7 @@ struct stm32_adc_priv {
>  	struct irq_domain		*domain;
>  	struct clk			*aclk;
>  	struct clk			*bclk;
> +	struct regulator		*vdda;
>  	struct regulator		*vref;
>  	const struct stm32_adc_priv_cfg	*cfg;
>  	struct stm32_adc_common		common;
> @@ -394,10 +396,16 @@ static int stm32_adc_core_hw_start(struct device *dev)
>  	struct stm32_adc_priv *priv = to_stm32_adc_priv(common);
>  	int ret;
>  
> +	ret = regulator_enable(priv->vdda);
> +	if (ret < 0) {
> +		dev_err(dev, "vdda enable failed %d\n", ret);
> +		return ret;
> +	}
> +
>  	ret = regulator_enable(priv->vref);
>  	if (ret < 0) {
>  		dev_err(dev, "vref enable failed\n");
> -		return ret;
> +		goto err_vdda_disable;
>  	}
>  
>  	if (priv->bclk) {
> @@ -425,6 +433,8 @@ static int stm32_adc_core_hw_start(struct device *dev)
>  		clk_disable_unprepare(priv->bclk);
>  err_regulator_disable:
>  	regulator_disable(priv->vref);
> +err_vdda_disable:
> +	regulator_disable(priv->vdda);
>  
>  	return ret;
>  }
> @@ -441,6 +451,7 @@ static void stm32_adc_core_hw_stop(struct device *dev)
>  	if (priv->bclk)
>  		clk_disable_unprepare(priv->bclk);
>  	regulator_disable(priv->vref);
> +	regulator_disable(priv->vdda);
>  }
>  
>  static int stm32_adc_probe(struct platform_device *pdev)
> @@ -468,6 +479,14 @@ static int stm32_adc_probe(struct platform_device *pdev)
>  		return PTR_ERR(priv->common.base);
>  	priv->common.phys_base = res->start;
>  
> +	priv->vdda = devm_regulator_get(&pdev->dev, "vdda");
> +	if (IS_ERR(priv->vdda)) {
> +		ret = PTR_ERR(priv->vdda);
> +		if (ret != -EPROBE_DEFER)
> +			dev_err(&pdev->dev, "vdda get failed, %d\n", ret);
> +		return ret;
> +	}
> +
>  	priv->vref = devm_regulator_get(&pdev->dev, "vref");
>  	if (IS_ERR(priv->vref)) {
>  		ret = PTR_ERR(priv->vref);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
