Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77EDA1D18AB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 17:05:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P5TN2MKQvICbBYjjN9M59bAvAmoxTm7f2SLhTnU/Mfg=; b=HpaNaD1M3ovIvN
	eLtoMQERCbWOA2u81gatpoxZe9jfsdRNAbgMFujOJIpdhh9BS8TLde924lG3ollc61Irm04QPjAB/
	KO3yh6XeYo6K42Y0kiDDbtNwbJyEkDFAT4+k3JIo7MpLZtTs71C99epRVr6oPQi5hdbq1aXNdcijz
	rdGb6q5EMHtt0DJPMmNEIVzcniFK7Gn24WpluHBhyRqBHExEJ8gh6UkMG2Q8bThNtFkLst/jsuyFN
	fdvVGj/4BuUE+3XQEteCBR/gZna42PQlrM2bTh8eQ8jno/9rmUKO9JAsaPPmpUuturGHOb1bbbQ2N
	TnEdHKsFZ0Ruu4BJ184w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYswm-0002q9-Jj; Wed, 13 May 2020 15:05:24 +0000
Received: from [2601:1c0:6280:3f0:897c:6038:c71d:ecac]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYsss-0007Ms-QN; Wed, 13 May 2020 15:01:22 +0000
Subject: Re: [PATCH 2/3] pinctrl: mchp-sgpio: Add pinctrl driver for Microsemi
 Serial GPIO
To: Lars Povlsen <lars.povlsen@microchip.com>, SoC Team <soc@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>
References: <20200513141134.25819-1-lars.povlsen@microchip.com>
 <20200513141134.25819-3-lars.povlsen@microchip.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <fb104436-69c1-3f5a-85d9-af0aee35547f@infradead.org>
Date: Wed, 13 May 2020 08:01:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200513141134.25819-3-lars.povlsen@microchip.com>
Content-Language: en-US
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/13/20 7:11 AM, Lars Povlsen wrote:
> diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
> index 834c59950d1cf..2b0e9021fd7e0 100644
> --- a/drivers/pinctrl/Kconfig
> +++ b/drivers/pinctrl/Kconfig
> @@ -396,6 +396,23 @@ config PINCTRL_OCELOT
>  	select OF_GPIO
>  	select REGMAP_MMIO
> 
> +config PINCTRL_MSCC_SGPIO
> +	bool "Pinctrl driver for Microsemi Serial GPIO"
> +	depends on OF
> +	depends on HAS_IOMEM
> +	select GPIOLIB
> +	select GENERIC_PINCONF
> +	select GENERIC_PINCTRL_GROUPS
> +	select GENERIC_PINMUX_FUNCTIONS
> +	select OF_GPIO
> +	help
> +          Support for the VCoreIII SoC serial GPIO device. By using a

Line above should be indented with one tab + 2 spaces...
like the lines below.

> +	  serial interface, the SIO controller significantly extends
> +	  the number of available GPIOs with a minimum number of
> +	  additional pins on the device. The primary purpose of the
> +	  SIO controller is to connect control signals from SFP
> +	  modules and to act as an LED controller.
> +

thanks.
-- 
~Randy


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
