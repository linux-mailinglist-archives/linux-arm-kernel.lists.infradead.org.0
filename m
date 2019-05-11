Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ACEC1A75D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 May 2019 11:58:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gERYNn3xFdQGC8sS37gVHfSvZum1nu24DiP6fNmq4ZU=; b=tyZI6+DjUAtOTs
	f0tTZUAV5Qbl0TbMFS+VGDk9V0Pij2G0k8KZ3+yeoKmK85ltQIMhud+8TONIXyLpVvslD2NWGIlfa
	5VukS5gGQ0kAkFVtW7k0UPWB7ZhEwCu8GUMgq83WH+BgZUGfDOYfWw0KIS7hd0OWK/2GGlYdvDfvs
	gCNpv9OfJyrzIRxyQCxHLoO2/CgwGGBckFhOA2C+UovmHd2+P7dBkZVOHPjVEGZSaJOtJT4Ts3W4b
	eA4OmTwGbxZIcK3nJB7J/qFSMNc9xw1WPdiVtaQIYvqo7qyMpXc7MkKvT7JpSvxPXI/HOeyO2o+dP
	qyjAetTx8lvaynnAaqag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPOlw-0006iu-7F; Sat, 11 May 2019 09:58:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPOlp-0006iJ-Oh
 for linux-arm-kernel@lists.infradead.org; Sat, 11 May 2019 09:58:23 +0000
Received: from archlinux (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net
 [81.96.234.148])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1620D21479;
 Sat, 11 May 2019 09:58:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557568699;
 bh=w06xIIDrPLNrUYunIGSuFxnclJ9Ts8pgisvyPGIll0c=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=KpuAxiSrFCRO5aA7AgDmR6XNEY/HgQMzyfHQlLiLaqKhuXAve4OUfzRbsxkC9lgoo
 u/KWxxXhC0NdI3bWI0AQ+Kfxm8DqpWmK0ppR3q+pBOeKkQK7DDyIvUC1u5+4tbpxef
 pPvH/wpW2lxtd4V+kNlF6XUZ8GeqTyFZu7QD9EZA=
Date: Sat, 11 May 2019 10:58:12 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Philippe Schenker <dev@pschenker.ch>
Subject: Re: [PATCH 1/5] iio: stmpe-adc: Add compatible name
Message-ID: <20190511105812.54f6d5f0@archlinux>
In-Reply-To: <20190507143615.28477-1-dev@pschenker.ch>
References: <20190507143615.28477-1-dev@pschenker.ch>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_025821_819151_59BCB8B0 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Max Krummenacher <max.krummenacher@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, Stefan Agner <stefan@agner.ch>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 David Laight <David.Laight@ACULAB.COM>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Lee Jones <lee.jones@linaro.org>, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue,  7 May 2019 16:36:11 +0200
Philippe Schenker <dev@pschenker.ch> wrote:

> From: Philippe Schenker <philippe.schenker@toradex.com>
> 
> Add the compatible name to the driver so it gets loaded when the proper
> node in DT is detected.
> 
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
Applied thanks,

Jonathan

> ---
> 
>  drivers/iio/adc/stmpe-adc.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iio/adc/stmpe-adc.c b/drivers/iio/adc/stmpe-adc.c
> index 37f4b74a5d32..9ec338ba3440 100644
> --- a/drivers/iio/adc/stmpe-adc.c
> +++ b/drivers/iio/adc/stmpe-adc.c
> @@ -354,9 +354,14 @@ static struct platform_driver stmpe_adc_driver = {
>  		.pm	= &stmpe_adc_pm_ops,
>  	},
>  };
> -
>  module_platform_driver(stmpe_adc_driver);
>  
> +static const struct of_device_id stmpe_adc_ids[] = {
> +	{ .compatible = "st,stmpe-adc", },
> +	{ },
> +};
> +MODULE_DEVICE_TABLE(of, stmpe_adc_ids);
> +
>  MODULE_AUTHOR("Stefan Agner <stefan.agner@toradex.com>");
>  MODULE_DESCRIPTION("STMPEXXX ADC driver");
>  MODULE_LICENSE("GPL v2");


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
