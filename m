Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC058140BF
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 17:45:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A9JCfbbzYx416GnzqJJPexkZIFnF6898gAmED0jlpUU=; b=TZso2OzxDMdepN
	Rgqk666ny8U1473kBWlx8/STDzv9qSDz1uqEsGrktfBTo3hR8H1I8wJLwnkItkGr1Vdta+d57j3fP
	8Y/TwxJKDGQK+fWL3R+12QEBZFvFmh/i6H0Zxd8yFi8G6+JPwXR3EtvDGeFE+XOMgrv8rHHQHiOZe
	A4JiVIRymlPeVuE96JaDNkL+sO2ivqNHccDGgR1/zqqabs8aDRz3Yh1dPMuphrFEAEaI2KNJ30sJr
	Gi/SmI5C3EjqqzjahampsLbTYZow943b9l3OMOge+9XuI+2sbBcmw1T4syHIpP+t35xgqt/PuLeqg
	pS8YFxp8EFY7vO2Vf2NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNJKH-0001ub-3m; Sun, 05 May 2019 15:45:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNJKA-0001uG-22
 for linux-arm-kernel@lists.infradead.org; Sun, 05 May 2019 15:45:11 +0000
Received: from archlinux (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net
 [81.96.234.148])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B11FA206DF;
 Sun,  5 May 2019 15:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557071109;
 bh=aKwSsB4VIQvPHjNpyepX94dwCojn4YcW4pPdu085lpA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=0LZ8f5LyLX20WKafPP0af88glvklQ1x0J0Jve8bY4nJCqS9IyvDajjpokrGH3LdVt
 +h1+08XmvOD2KobcKuiqSatQjSlPfOdnfVwZWlZnyukPLprLaQkxFC8O1M/49pfaFZ
 5suhRhYTipcXVWcq6OvfsC/8fdhP0DI17yQOKFFs=
Date: Sun, 5 May 2019 16:45:03 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Philippe Schenker <dev@pschenker.ch>
Subject: Re: [PATCH 3/3] iio: stmpe-adc: Enable all stmpe-adc interrupts
 just once
Message-ID: <20190505164503.030d6687@archlinux>
In-Reply-To: <20190503135725.9959-3-dev@pschenker.ch>
References: <20190503135725.9959-1-dev@pschenker.ch>
 <20190503135725.9959-3-dev@pschenker.ch>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_084510_123315_D5A4CD4F 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Max Krummenacher <max.krummenacher@toradex.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, Stefan Agner <stefan@agner.ch>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Lee Jones <lee.jones@linaro.org>, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri,  3 May 2019 15:57:25 +0200
Philippe Schenker <dev@pschenker.ch> wrote:

> From: Philippe Schenker <philippe.schenker@toradex.com>
> 
> This commit will enable the interrupts of all channels handled by this
> driver only once in the probe function.
> 
> This will improve performance because one byte less has to be written over
> i2c on each read out of the adc. On the fastest ADC mode this will improve
> read out speed by 15%.
> 
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
Makes sense. I'll pick this up once patch 2 discussion is sorted.

Jonathan

> 
> ---
> 
>  drivers/iio/adc/stmpe-adc.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/iio/adc/stmpe-adc.c b/drivers/iio/adc/stmpe-adc.c
> index baa41ffc0d76..427c890c6e7d 100644
> --- a/drivers/iio/adc/stmpe-adc.c
> +++ b/drivers/iio/adc/stmpe-adc.c
> @@ -72,9 +72,6 @@ static int stmpe_read_voltage(struct stmpe_adc *info,
>  		return -EINVAL;
>  	}
>  
> -	stmpe_reg_write(info->stmpe, STMPE_REG_ADC_INT_EN,
> -			STMPE_ADC_CH(info->channel));
> -
>  	stmpe_reg_write(info->stmpe, STMPE_REG_ADC_CAPT,
>  			STMPE_ADC_CH(info->channel));
>  
> @@ -328,6 +325,9 @@ static int stmpe_adc_probe(struct platform_device *pdev)
>  	if (ret)
>  		return ret;
>  
> +	stmpe_reg_write(info->stmpe, STMPE_REG_ADC_INT_EN,
> +			~(norequest_mask & 0xFF));
> +
>  	return devm_iio_device_register(&pdev->dev, indio_dev);
>  }
>  


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
