Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD57D7817
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 16:13:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BJAcpcsyJHrP9pIK1CGB6oSSCys7lqeCpwEpRBuVt+Y=; b=KOYaqen0K0SEZI
	Wydnyj5KMKf4rBRivmmHrIKORB561tVfHvcSyFtHVi9PdeSit+48reHcViyIJHnY42elII5nPUybW
	gdhX2bJzgJTUQQuocr8QcEZO1ip54vbRyPS01+JEkvVla3l2nN/gqAaCFpIOKKGT7EuHiXQP34WQX
	4tRZaPtzDsmWXafQmv/CrwLx7HROptJzmBh+6ga/+xWAMItpi8Z0YD3G8nxWZO/s7t1ttEUXbuvy/
	q8CuqN7EGHsQhspBDQLet2mzxGR8GTV4DnHtZNZ33g//Cg3RhkQ6PB0DBV2uJukn5Dt6OCFR29YGX
	ZpUgncSTZBgjjHPlrbxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKNa9-0002cQ-UT; Tue, 15 Oct 2019 14:13:50 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKNZt-0002aM-H9
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 14:13:35 +0000
Received: by mail-vs1-xe42.google.com with SMTP id d3so13267115vsr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 07:13:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YhnnS+fONegzJKouW6TGJYBzAX4jJpOzISUMhIfFdCE=;
 b=haOGaYC/1KpBT/vZYB+zjBwPW0pfiZ9pk+jzE6qpTtML9GwFS2Ys1CErgD5FIvPiB+
 X0ToEA3MXJvRPHR9pr3mqn44Qeg1eiBHtuWFLadTcT838sJ27Bdf2bXC4JFczewUcDwk
 /Dc/CxazPnZRkv8scafnNFeJ6raAwhqzfwh40y+ueE186kUodVfkPFgQ8vQ5+KYF2z/+
 J5zhBocRy6yw1MxIaA4QWZDuIdwQ+ySN//DZYJewJpFVJO7Iak1lO3oRZq2PikbPV/07
 TFqzaYgK9VHbCEHSto/sb5hkTXvjqWzsds595DHF0kyv2w3YPBVzQrUCaGfOLUvmYlcQ
 Qq2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YhnnS+fONegzJKouW6TGJYBzAX4jJpOzISUMhIfFdCE=;
 b=ql4Z3hAOajPxirJsce9XzsZkSqPfqyYmLZKLZeAGbVAc/EYDnW0OxXHa+noKaHQhCe
 pcWzWhtn5+855+vjTdC0gjCppH9FCiQH5eRdB3nyrLes4Yre1s6og2qoK40ZQV37H+tW
 cDw9jfnD+Ul+MK9IkS+RDAiqLUTBCgkn2A8GwzB8phgRG6PL2xU6By2inA81TECLwv6D
 PyBgvKlwW0OriAlUYzjSPZrXVXjfIzzVh21QLva1AK4zgFV521Qk+TXOgd/mdtsehyIy
 YnM+j+mvpoU4VaiLU1qi3W1WWIKYD6utY1ltVWJSXOgr3i8AE186ns9Ged1jGtDrqkxW
 hlow==
X-Gm-Message-State: APjAAAVcqYPWawqUeUg7z5omIVOXgvwLSa0pMaVpwtnzO/Q1qhwzvkTr
 PUDQVjktdVPpZgsYnHeYrFIRt8xO/KksWLVFtM9JNA==
X-Google-Smtp-Source: APXvYqzA32Mk0LaXO6v1xRVVKG/ySz/eTgRyhMT2tMHZp7seOXpAOAcCIYGvFFlIHW1pgcDj3L8ihVXHbmmd+HuPNOA=
X-Received: by 2002:a67:ef89:: with SMTP id r9mr20863437vsp.200.1571148811398; 
 Tue, 15 Oct 2019 07:13:31 -0700 (PDT)
MIME-Version: 1.0
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-8-arnd@arndb.de>
In-Reply-To: <20191010203043.1241612-8-arnd@arndb.de>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 15 Oct 2019 16:12:55 +0200
Message-ID: <CAPDyKFquppMx=hpPkwU65DbW_XGgm0oww+zOS2Z-OVE6Kr0xxA@mail.gmail.com>
Subject: Re: [PATCH 08/36] ARM: exynos: stop selecting PLAT_SAMSUNG
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_071333_582093_FC6A8C37 
X-CRM114-Status: GOOD (  18.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Olof Johansson <olof@lixom.net>, "Enrico Weigelt,
 metux IT consult" <info@metux.net>, Sascha Hauer <s.hauer@pengutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 10 Oct 2019 at 22:34, Arnd Bergmann <arnd@arndb.de> wrote:
>
> Now that no code in arch/arm is shared between mach-exynos and the
> others, make the split formal.
>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/arm/Kconfig.debug        | 8 ++++----
>  arch/arm/Makefile             | 1 -
>  arch/arm/mach-exynos/Makefile | 4 ----
>  arch/arm/plat-samsung/Kconfig | 4 ++--
>  drivers/mmc/host/Kconfig      | 2 +-

For the mmc part:

Acked-by: Ulf Hansson <ulf.hansson@linaro.org>

Kind regards
Uffe


>  5 files changed, 7 insertions(+), 12 deletions(-)
>
> diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
> index d05b836dfeb2..9c4f2d6deb06 100644
> --- a/arch/arm/Kconfig.debug
> +++ b/arch/arm/Kconfig.debug
> @@ -998,7 +998,7 @@ choice
>                   via SCIFA4 on Renesas SH-Mobile AG5 (SH73A0).
>
>         config DEBUG_S3C_UART0
> -               depends on PLAT_SAMSUNG
> +               depends on PLAT_SAMSUNG || ARCH_EXYNOS
>                 select DEBUG_EXYNOS_UART if ARCH_EXYNOS
>                 select DEBUG_S3C24XX_UART if ARCH_S3C24XX
>                 select DEBUG_S3C64XX_UART if ARCH_S3C64XX
> @@ -1010,7 +1010,7 @@ choice
>                   by the boot-loader before use.
>
>         config DEBUG_S3C_UART1
> -               depends on PLAT_SAMSUNG
> +               depends on PLAT_SAMSUNG || ARCH_EXYNOS
>                 select DEBUG_EXYNOS_UART if ARCH_EXYNOS
>                 select DEBUG_S3C24XX_UART if ARCH_S3C24XX
>                 select DEBUG_S3C64XX_UART if ARCH_S3C64XX
> @@ -1022,7 +1022,7 @@ choice
>                   by the boot-loader before use.
>
>         config DEBUG_S3C_UART2
> -               depends on PLAT_SAMSUNG
> +               depends on PLAT_SAMSUNG || ARCH_EXYNOS
>                 select DEBUG_EXYNOS_UART if ARCH_EXYNOS
>                 select DEBUG_S3C24XX_UART if ARCH_S3C24XX
>                 select DEBUG_S3C64XX_UART if ARCH_S3C64XX
> @@ -1034,7 +1034,7 @@ choice
>                   by the boot-loader before use.
>
>         config DEBUG_S3C_UART3
> -               depends on PLAT_SAMSUNG && (ARCH_EXYNOS || ARCH_S5PV210)
> +               depends on ARCH_EXYNOS || ARCH_S5PV210
>                 select DEBUG_EXYNOS_UART if ARCH_EXYNOS
>                 select DEBUG_S3C64XX_UART if ARCH_S3C64XX
>                 select DEBUG_S5PV210_UART if ARCH_S5PV210
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index db857d07114f..f492d7c338fe 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -233,7 +233,6 @@ machine-$(CONFIG_PLAT_SPEAR)                += spear
>
>  # Platform directory name.  This list is sorted alphanumerically
>  # by CONFIG_* macro name.
> -plat-$(CONFIG_ARCH_EXYNOS)     += samsung
>  plat-$(CONFIG_ARCH_OMAP)       += omap
>  plat-$(CONFIG_ARCH_S3C64XX)    += samsung
>  plat-$(CONFIG_ARCH_S5PV210)    += samsung
> diff --git a/arch/arm/mach-exynos/Makefile b/arch/arm/mach-exynos/Makefile
> index 0fd3fcf8bfb0..53fa363c8e44 100644
> --- a/arch/arm/mach-exynos/Makefile
> +++ b/arch/arm/mach-exynos/Makefile
> @@ -3,10 +3,6 @@
>  # Copyright (c) 2010-2011 Samsung Electronics Co., Ltd.
>  #              http://www.samsung.com/
>
> -ccflags-$(CONFIG_ARCH_MULTIPLATFORM) += -I$(srctree)/$(src)/include -I$(srctree)/arch/arm/plat-samsung/include
> -
> -# Core
> -
>  obj-$(CONFIG_ARCH_EXYNOS)      += exynos.o exynos-smc.o firmware.o
>
>  obj-$(CONFIG_EXYNOS_CPU_SUSPEND) += pm.o sleep.o
> diff --git a/arch/arm/plat-samsung/Kconfig b/arch/arm/plat-samsung/Kconfig
> index 832ab0e6cd72..e31a156a27df 100644
> --- a/arch/arm/plat-samsung/Kconfig
> +++ b/arch/arm/plat-samsung/Kconfig
> @@ -4,7 +4,7 @@
>
>  config PLAT_SAMSUNG
>         bool
> -       depends on PLAT_S3C24XX || ARCH_S3C64XX || ARCH_EXYNOS || ARCH_S5PV210
> +       depends on PLAT_S3C24XX || ARCH_S3C64XX || ARCH_S5PV210
>         default y
>         select GENERIC_IRQ_CHIP
>         select NO_IOPORT_MAP
> @@ -240,7 +240,7 @@ config SAMSUNG_PM_DEBUG
>         bool "Samsung PM Suspend debug"
>         depends on PM && DEBUG_KERNEL
>         depends on PLAT_S3C24XX || ARCH_S3C64XX || ARCH_S5PV210
> -       depends on DEBUG_EXYNOS_UART || DEBUG_S3C24XX_UART || DEBUG_S3C2410_UART
> +       depends on DEBUG_S3C24XX_UART || DEBUG_S3C2410_UART
>         help
>           Say Y here if you want verbose debugging from the PM Suspend and
>           Resume code. See <file:Documentation/arm/samsung-s3c24xx/suspend.rst>
> diff --git a/drivers/mmc/host/Kconfig b/drivers/mmc/host/Kconfig
> index 49ea02c467bf..400a581c918c 100644
> --- a/drivers/mmc/host/Kconfig
> +++ b/drivers/mmc/host/Kconfig
> @@ -275,7 +275,7 @@ config MMC_SDHCI_TEGRA
>
>  config MMC_SDHCI_S3C
>         tristate "SDHCI support on Samsung S3C SoC"
> -       depends on MMC_SDHCI && PLAT_SAMSUNG
> +       depends on MMC_SDHCI && (PLAT_SAMSUNG || ARCH_EXYNOS)
>         help
>           This selects the Secure Digital Host Controller Interface (SDHCI)
>           often referrered to as the HSMMC block in some of the Samsung S3C
> --
> 2.20.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
