Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C968DE19B9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 14:15:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/IyGR2LwqgYmQsJmOPTEg97Ws8aCbN8KBMIgVI7fbQc=; b=hjrqZa1sEHMAqJ
	08ktGsFgiBqSm34yEj9JLQ6yiCCDwpXBDy4NCX1nKQw7JrWVUSUUDwjKa80A+8PaGi9JToYzr+hVv
	xZxQcUyqf8ZuzTIjS5YzfixkZvs/HA7if9TslzwupA5tLhOaYuzu4Z/5RCRllTZQsSMfiwA/CJ9fu
	GM7sa9wJcey2X2N8RCpzO26s3IHGEdebPuskb6FciboHZOz1yiFBhjN5J26o1dfPa8tKERIdhij7w
	92j7EfTmKfV6aiYVDCObEAO3iHDUkYlHpKS6TnpaeFsGNde/tfLkktUbVTNcM7gn6Wmyfmqr19WUY
	2JQqEzhU4EIG34+tJ4/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNFXx-00058H-Rb; Wed, 23 Oct 2019 12:15:25 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNFXb-0004ba-Uj
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 12:15:05 +0000
Received: by mail-ed1-f65.google.com with SMTP id q24so9589507edr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 05:15:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EM2bqpofr7QfnOYg3+B2AOXvOUUZQ5S8Y8TJAmAFfq0=;
 b=Vj9inwreAxdpmgj/bDmjyg8Oe28IK1+uxAbU1ynIW0FfZecfnRN0Nyqgl+Glv6+W3v
 /nVZfShVLaO5Hfp7jAVwVmz5w8YIsAtjoTiO6z8Dv6NedifVr6Bc7ScPklN0f0j+xUf+
 IXJH2MxF/5HeiOhEpzFMCLtYfhK/I7Okr8hJLbTIopfQUQN/NUYiPSXxismRDHRY53WN
 s1/OHYcsW6JC1cHtXQt8xKEcds9qGlxIKNj8wUgq+8vS1pu2s6SdwJNEsksF4Au0Bxcm
 KyVU/qMGLlZeHFkB/lBxDWj71j6CEU1xlrUud6wfA9iyvfHQETTtLMUS4RSw9IM2sbtS
 rVTg==
X-Gm-Message-State: APjAAAWqb+CNGO5HCMiuTcEmUSCPAJ65Pma94Up2YvH/3cfWhcXHLM3p
 siYyCef7ucIb60WiC8KryzY=
X-Google-Smtp-Source: APXvYqzMHg39Wi2a6r4kf+i1HiG2eaoZDJ9aezTMqReWB2uYi5hp2/274lnrfoQNk4EHNQ+xelbuwA==
X-Received: by 2002:a17:906:a0f:: with SMTP id
 w15mr12009761ejf.321.1571832902425; 
 Wed, 23 Oct 2019 05:15:02 -0700 (PDT)
Received: from pi3 ([194.230.155.217])
 by smtp.googlemail.com with ESMTPSA id r16sm760759eds.72.2019.10.23.05.15.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 05:15:01 -0700 (PDT)
Date: Wed, 23 Oct 2019 14:14:58 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 11/36] ARM: s5pv210: split from plat-samsung
Message-ID: <20191023121458.GB11048@pi3>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-11-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010203043.1241612-11-arnd@arndb.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_051504_000907_A1102A66 
X-CRM114-Status: GOOD (  18.82  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, linus.walleij@linaro.org,
 alsa-devel@alsa-project.org, Liam Girdwood <lgirdwood@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-samsung-soc@vger.kernel.org, Takashi Iwai <tiwai@suse.com>,
 Kukjin Kim <kgene@kernel.org>,
 =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 linux-serial@vger.kernel.org,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-pwm@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Jiri Slaby <jslaby@suse.com>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org, Sangbeom Kim <sbkim73@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 Faiz Abbas <faiz_abbas@ti.com>, Olof Johansson <olof@lixom.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 10:29:55PM +0200, Arnd Bergmann wrote:
> These can be build completely independently, so split
> the two Kconfig symbols.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/arm/Kconfig.debug        | 6 +++---
>  arch/arm/Makefile             | 1 -
>  arch/arm/plat-samsung/Kconfig | 2 +-
>  drivers/mmc/host/Kconfig      | 2 +-
>  drivers/pwm/Kconfig           | 2 +-
>  drivers/spi/Kconfig           | 2 +-
>  drivers/tty/serial/Kconfig    | 2 +-
>  sound/soc/samsung/Kconfig     | 2 +-
>  8 files changed, 9 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
> index 9c4f2d6deb06..4c4e97ae4fcb 100644
> --- a/arch/arm/Kconfig.debug
> +++ b/arch/arm/Kconfig.debug
> @@ -998,7 +998,7 @@ choice
>  		  via SCIFA4 on Renesas SH-Mobile AG5 (SH73A0).
>  
>  	config DEBUG_S3C_UART0
> -		depends on PLAT_SAMSUNG || ARCH_EXYNOS
> +		depends on PLAT_SAMSUNG || ARCH_S5PV210 || ARCH_EXYNOS

How are you going to select DEBUG_S5PV210_UART now?

Best regards,
Krzysztof


>  		select DEBUG_EXYNOS_UART if ARCH_EXYNOS
>  		select DEBUG_S3C24XX_UART if ARCH_S3C24XX
>  		select DEBUG_S3C64XX_UART if ARCH_S3C64XX
> @@ -1010,7 +1010,7 @@ choice
>  		  by the boot-loader before use.
>  
>  	config DEBUG_S3C_UART1
> -		depends on PLAT_SAMSUNG || ARCH_EXYNOS
> +		depends on PLAT_SAMSUNG || ARCH_S5PV210 || ARCH_EXYNOS
>  		select DEBUG_EXYNOS_UART if ARCH_EXYNOS
>  		select DEBUG_S3C24XX_UART if ARCH_S3C24XX
>  		select DEBUG_S3C64XX_UART if ARCH_S3C64XX
> @@ -1022,7 +1022,7 @@ choice
>  		  by the boot-loader before use.
>  
>  	config DEBUG_S3C_UART2
> -		depends on PLAT_SAMSUNG || ARCH_EXYNOS
> +		depends on PLAT_SAMSUNG || ARCH_S5PV210 || ARCH_EXYNOS
>  		select DEBUG_EXYNOS_UART if ARCH_EXYNOS
>  		select DEBUG_S3C24XX_UART if ARCH_S3C24XX
>  		select DEBUG_S3C64XX_UART if ARCH_S3C64XX
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index f492d7c338fe..a1bc15cda751 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -235,7 +235,6 @@ machine-$(CONFIG_PLAT_SPEAR)		+= spear
>  # by CONFIG_* macro name.
>  plat-$(CONFIG_ARCH_OMAP)	+= omap
>  plat-$(CONFIG_ARCH_S3C64XX)	+= samsung
> -plat-$(CONFIG_ARCH_S5PV210)	+= samsung
>  plat-$(CONFIG_PLAT_ORION)	+= orion
>  plat-$(CONFIG_PLAT_PXA)		+= pxa
>  plat-$(CONFIG_PLAT_S3C24XX)	+= samsung
> diff --git a/arch/arm/plat-samsung/Kconfig b/arch/arm/plat-samsung/Kconfig
> index 740bdb23f38a..1530946cc672 100644
> --- a/arch/arm/plat-samsung/Kconfig
> +++ b/arch/arm/plat-samsung/Kconfig
> @@ -4,7 +4,7 @@
>  
>  config PLAT_SAMSUNG
>  	bool
> -	depends on PLAT_S3C24XX || ARCH_S3C64XX || ARCH_S5PV210
> +	depends on PLAT_S3C24XX || ARCH_S3C64XX
>  	default y
>  	select GENERIC_IRQ_CHIP
>  	select NO_IOPORT_MAP
> diff --git a/drivers/mmc/host/Kconfig b/drivers/mmc/host/Kconfig
> index 400a581c918c..16a0e5430b44 100644
> --- a/drivers/mmc/host/Kconfig
> +++ b/drivers/mmc/host/Kconfig
> @@ -275,7 +275,7 @@ config MMC_SDHCI_TEGRA
>  
>  config MMC_SDHCI_S3C
>  	tristate "SDHCI support on Samsung S3C SoC"
> -	depends on MMC_SDHCI && (PLAT_SAMSUNG || ARCH_EXYNOS)
> +	depends on MMC_SDHCI && (PLAT_SAMSUNG || ARCH_S5PV210 || ARCH_EXYNOS)
>  	help
>  	  This selects the Secure Digital Host Controller Interface (SDHCI)
>  	  often referrered to as the HSMMC block in some of the Samsung S3C
> diff --git a/drivers/pwm/Kconfig b/drivers/pwm/Kconfig
> index e3a2518503ed..8eb738cac0c7 100644
> --- a/drivers/pwm/Kconfig
> +++ b/drivers/pwm/Kconfig
> @@ -394,7 +394,7 @@ config PWM_ROCKCHIP
>  
>  config PWM_SAMSUNG
>  	tristate "Samsung PWM support"
> -	depends on PLAT_SAMSUNG || ARCH_EXYNOS
> +	depends on PLAT_SAMSUNG || ARCH_S5PV210 || ARCH_EXYNOS
>  	help
>  	  Generic PWM framework driver for Samsung.
>  
> diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
> index 6f7fdcbb9151..355391ee643d 100644
> --- a/drivers/spi/Kconfig
> +++ b/drivers/spi/Kconfig
> @@ -625,7 +625,7 @@ config SPI_S3C24XX_FIQ
>  
>  config SPI_S3C64XX
>  	tristate "Samsung S3C64XX series type SPI"
> -	depends on (PLAT_SAMSUNG || ARCH_EXYNOS || COMPILE_TEST)
> +	depends on (PLAT_SAMSUNG || ARCH_S5PV210 || ARCH_EXYNOS || COMPILE_TEST)
>  	help
>  	  SPI driver for Samsung S3C64XX and newer SoCs.
>  
> diff --git a/drivers/tty/serial/Kconfig b/drivers/tty/serial/Kconfig
> index 4789b5d62f63..17f01cf3009c 100644
> --- a/drivers/tty/serial/Kconfig
> +++ b/drivers/tty/serial/Kconfig
> @@ -237,7 +237,7 @@ config SERIAL_CLPS711X_CONSOLE
>  
>  config SERIAL_SAMSUNG
>  	tristate "Samsung SoC serial support"
> -	depends on PLAT_SAMSUNG || ARCH_EXYNOS
> +	depends on PLAT_SAMSUNG || ARCH_S5PV210 || ARCH_EXYNOS
>  	select SERIAL_CORE
>  	help
>  	  Support for the on-chip UARTs on the Samsung S3C24XX series CPUs,
> diff --git a/sound/soc/samsung/Kconfig b/sound/soc/samsung/Kconfig
> index 638983123d8f..7a0035dd9995 100644
> --- a/sound/soc/samsung/Kconfig
> +++ b/sound/soc/samsung/Kconfig
> @@ -1,7 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  menuconfig SND_SOC_SAMSUNG
>  	tristate "ASoC support for Samsung"
> -	depends on PLAT_SAMSUNG || ARCH_EXYNOS || COMPILE_TEST
> +	depends on PLAT_SAMSUNG || ARCH_S5PV210 || ARCH_EXYNOS || COMPILE_TEST
>  	depends on COMMON_CLK
>  	select SND_SOC_GENERIC_DMAENGINE_PCM
>  	---help---
> -- 
> 2.20.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
