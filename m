Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BEA7E1777
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 12:13:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+jVJvvJTwutCtnWblISpx88r4LmEYuxI2WsAQtEVawQ=; b=pKvK1WmgFXF7H0
	47Jn0ZA6M8Y5cQATfcRdUFA9YjwZfHjbYKczmWllgIGTkUSuRXgtfCn3Js2m48sNS0vy4p4YWucZ6
	PDsiqa7eV5YRI4fqpW7MAR4MVz1o9ShnsD3fK3rJmph5noP6+xDiRyinHxNua+FDJNxGmAogr3QLY
	lq4vyc3QlCAV4sk9HK5P5bJZsK2Azw9L2HycDmX0brvLq6sKYpnj8ZJkTAD9RdjGLNXzPn+2y9G4l
	f1cPB2s+8dCtCmBmYEoJez7rIKxeoc0B7Y+PtMmN2zXhRhFNI0AibR8tkxZ0tmJYOmfwDPBKBXmXo
	ZMy5YiB3n0+5w4n2tOtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNDde-0004RX-Tx; Wed, 23 Oct 2019 10:13:10 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNDdV-0004Qx-2r
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 10:13:02 +0000
Received: by mail-ed1-f68.google.com with SMTP id k2so4621023edx.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 03:13:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gh/A8yPMnN6fLcg7Rkm6GEnRbYetJz0QGF4U7JjOn9o=;
 b=JqeSsO/1QRmeJ02hQwyMLMXZ5oTeJVf+dHfPowZRVBuTcFkGQDMXBTeeddklQzSgFy
 75PpZJPabiMVHz1NtlWjyXyibXYBCu4zcARLB3NGfsKWYTOdxIOMWYR0buUlmt50Ohbf
 e8pQ06PMswzg2zGs0LgCZGJM1Rs5giAeHYzui6XZ4JEKNKJo0al1cezyjoL73wwSdpC+
 XUrURYYeK8sPVMcngPcEmFR4k7L6g2SQB5EA//2Nz2BIiI7yFcMO2fXjO5RgNSlq3ZAI
 DJgaTwZQkQLM9vnpA5T9mgal5CZM2PISlKKn9ZtCtsW7rntYZvDuYVCTg+csveJcJ88h
 5wew==
X-Gm-Message-State: APjAAAUBUNEZzntiiXfYnuMH8T+hCgkgo27/jj4ao/kEARB0ew4xCj2N
 y2HQWJjPaE8kHBOSUI+7t94=
X-Google-Smtp-Source: APXvYqyuj6NCW72i3rqtWTRKsJx3LFyO3f0M4VmCWK792D/NQODCSFHNhIH0XERkCGbZhxUd4Vbu0g==
X-Received: by 2002:a50:f40c:: with SMTP id r12mr13174374edm.50.1571825579739; 
 Wed, 23 Oct 2019 03:12:59 -0700 (PDT)
Received: from pi3 ([194.230.155.217])
 by smtp.googlemail.com with ESMTPSA id m14sm790794edc.61.2019.10.23.03.12.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 03:12:59 -0700 (PDT)
Date: Wed, 23 Oct 2019 12:12:57 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 06/36] ARM: samsung: move CONFIG_DEBUG_S3C_UART to
 Kconfig.debug
Message-ID: <20191023101257.GC10630@pi3>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-6-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010203043.1241612-6-arnd@arndb.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_031301_127016_C43CB6F3 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
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
Cc: linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 Olof Johansson <olof@lixom.net>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 10:29:50PM +0200, Arnd Bergmann wrote:
> Before we can plat-samsung from the individual platforms,

"Before we can split"? Or moved? What did you want to say here?

Best regards,
Krzysztof

> this one has to get moved to a place where it remains
> accessible.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/arm/Kconfig.debug        | 10 ++++++++++
>  arch/arm/plat-samsung/Kconfig |  8 --------
>  2 files changed, 10 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
> index 8bcbd0cd739b..d05b836dfeb2 100644
> --- a/arch/arm/Kconfig.debug
> +++ b/arch/arm/Kconfig.debug
> @@ -1464,6 +1464,16 @@ config DEBUG_S3C64XX_UART
>  config DEBUG_S5PV210_UART
>  	bool
>  
> +config DEBUG_S3C_UART
> +	depends on DEBUG_S3C2410_UART || DEBUG_S3C24XX_UART || \
> +		   DEBUG_S3C64XX_UART ||  DEBUG_S5PV210_UART || \
> +		   DEBUG_EXYNOS_UART
> +	int
> +	default "0" if DEBUG_S3C_UART0
> +	default "1" if DEBUG_S3C_UART1
> +	default "2" if DEBUG_S3C_UART2
> +	default "3" if DEBUG_S3C_UART3
> +
>  config DEBUG_OMAP2PLUS_UART
>  	bool
>  	depends on ARCH_OMAP2PLUS
> diff --git a/arch/arm/plat-samsung/Kconfig b/arch/arm/plat-samsung/Kconfig
> index 301e572651c0..832ab0e6cd72 100644
> --- a/arch/arm/plat-samsung/Kconfig
> +++ b/arch/arm/plat-samsung/Kconfig
> @@ -296,13 +296,5 @@ config SAMSUNG_WDT_RESET
>  	  Compile support for system restart by triggering watchdog reset.
>  	  Used on SoCs that do not provide dedicated reset control.
>  
> -config DEBUG_S3C_UART
> -	depends on PLAT_SAMSUNG
> -	int
> -	default "0" if DEBUG_S3C_UART0
> -	default "1" if DEBUG_S3C_UART1
> -	default "2" if DEBUG_S3C_UART2
> -	default "3" if DEBUG_S3C_UART3
> -
>  endmenu
>  endif
> -- 
> 2.20.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
