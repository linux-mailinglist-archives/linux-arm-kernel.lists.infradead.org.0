Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5995FC11FF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Sep 2019 21:16:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g0nw/gi9c9E/iMj12IvHGb3iB+JNNCYHv4cfuHR3usc=; b=ooj8Ld+8Nop6U6
	QCGIWdymZ4Yc1UZyUdrfXacLRAau3Aisri3J2RWhXhh3wd33GSHpDRSpuj4pksrQvi9dJEs4I52GS
	ADL18IR6ApJ0gysOeH04F0+4vxsroUirCWlcdUTqt0nP5DwH826ze+oI8LyPCdjytXIgjVQ+Dn27H
	IKCtJI+qNNHMx3AckaAY2kHNsXNpP8fpZZ7vTWxkd2VkDC/ZZR7y8SyVI8/wqI1BowEaMFJYR9OU3
	dDl+KFMXgAy7Lb6b6TFd8Y5ahe7Fo16IMxvN7AaGEzdx2WNiI0D5Lqu8/wojaPB8n3NJCFuYg3rwn
	/0wDwfzaSHG9rbB6WQbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEICx-0006A0-6x; Sat, 28 Sep 2019 19:16:43 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEICm-00069U-NC
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Sep 2019 19:16:34 +0000
Received: by mail-pl1-x642.google.com with SMTP id d22so2339298pls.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Sep 2019 12:16:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=2tFPX7ab9aePgUICX8itdJOBDm+2TtdwJ9e0G0bDfOI=;
 b=lExVhAQfrfbxN4TiiOJIkOifjrRVbTkIz5Z4/QOsu1d+cPIs+wHZzQ5mf41TNJfwe+
 CFBo+i+DHaa3BPSN7aSk3LYdyslqYVF59lJiCcvahacd3UDPrvmqhSTMqq3RX/6cOiA3
 K5Bc/EFlXwm6/2pNmwPzpscz6nZ5E+Z3qobZXnmViLCHgEJkZjlmy6XTQ3bq38RkDyf/
 36NgM+l94bR+nKKaq7dmvZKLz1mAvc2Rsoxr/NvNrqlA16IjZdReCgB+bAkiWdoziApz
 PL4aaIcKSC9FKHYilniJlnetB7vNWybtMuI9KLaEriNS07+Ketc8Rl7Pt8KyA54MlnRP
 2LGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2tFPX7ab9aePgUICX8itdJOBDm+2TtdwJ9e0G0bDfOI=;
 b=DkVkiY89iKjRLCSgITSdx0W8INqogPqplgILpzzmn9zdNdD8lIa/Nq58EEoFVo1S3g
 3Gf7brEfHMPbLr4xbUUxBzR6/W5cDGHAdTiDfwrNWt3esNbMCwgkJ2aonUemtl3MMX31
 ELaA5COdUsqzk7Iqes6B+NrmPWgq9/iTASG8M2IdwFwCwTExsUBKDuqTZ/cBwW6CsUWr
 FcrwhfaYNuK9cFw7MhozP/8YTT4WXNTvOt9lPGp1SDM73F/erQL+bJmwK5X31vL3Vj5a
 juYPKLVW/IRYPFWTHdk2sL7pK7nBKnoRftzCCXnUamA0bZ8qPlvk7UoC+5/qJcml1OM4
 7Lkg==
X-Gm-Message-State: APjAAAUU8beosiA4gg4UdbhADaqSTdSdnJDZIdt+wOFrvD2hcw9rZBV2
 Ko8vHeUFW9B0VKiTTKkCjXw=
X-Google-Smtp-Source: APXvYqxgzL22KQbEoe9qW0EWcVQ9p9su62xeNj5ctYD+Dfj9NIFCLxnRyrTl/+FRFb/WbHixDb/PCA==
X-Received: by 2002:a17:902:6c:: with SMTP id 99mr11948901pla.89.1569698191772; 
 Sat, 28 Sep 2019 12:16:31 -0700 (PDT)
Received: from [10.230.28.130] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id z20sm7737390pfj.156.2019.09.28.12.16.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 28 Sep 2019 12:16:30 -0700 (PDT)
Subject: Re: [PATCH V3 6/8] ARM: bcm: Add support for BCM2711 SoC
To: Stefan Wahren <wahrenst@gmx.net>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
References: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
 <1569672435-19823-7-git-send-email-wahrenst@gmx.net>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <6b251871-59ae-6040-cbbc-74207b2169f3@gmail.com>
Date: Sat, 28 Sep 2019 12:16:30 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <1569672435-19823-7-git-send-email-wahrenst@gmx.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190928_121632_782447_92010464 
X-CRM114-Status: GOOD (  23.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, devicetree@vger.kernel.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 9/28/2019 5:07 AM, Stefan Wahren wrote:
> Add the BCM2711 to ARCH_BCM2835, but use new machine board code
> because of the differences.
> 
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> Reviewed-by: Eric Anholt <eric@anholt.net>
> ---
>  arch/arm/mach-bcm/Kconfig    |  3 ++-
>  arch/arm/mach-bcm/Makefile   |  3 ++-
>  arch/arm/mach-bcm/bcm2711.c  | 24 ++++++++++++++++++++++++
>  arch/arm64/Kconfig.platforms |  5 +++--
>  4 files changed, 31 insertions(+), 4 deletions(-)
>  create mode 100644 arch/arm/mach-bcm/bcm2711.c
> 
> diff --git a/arch/arm/mach-bcm/Kconfig b/arch/arm/mach-bcm/Kconfig
> index 5e5f1fa..39bcbea 100644
> --- a/arch/arm/mach-bcm/Kconfig
> +++ b/arch/arm/mach-bcm/Kconfig
> @@ -161,6 +161,7 @@ config ARCH_BCM2835
>  	select GPIOLIB
>  	select ARM_AMBA
>  	select ARM_ERRATA_411920 if ARCH_MULTI_V6
> +	select ARM_GIC if ARCH_MULTI_V7
>  	select ARM_TIMER_SP804
>  	select HAVE_ARM_ARCH_TIMER if ARCH_MULTI_V7
>  	select TIMER_OF

Are not we missing a select ZONE_DMA here?

> @@ -169,7 +170,7 @@ config ARCH_BCM2835
>  	select PINCTRL_BCM2835
>  	select MFD_CORE
>  	help
> -	  This enables support for the Broadcom BCM2835 and BCM2836 SoCs.
> +	  This enables support for the Broadcom BCM2711 and BCM283x SoCs.
>  	  This SoC is used in the Raspberry Pi and Roku 2 devices.
> 
>  config ARCH_BCM_53573
> diff --git a/arch/arm/mach-bcm/Makefile b/arch/arm/mach-bcm/Makefile
> index b59c813..7baa8c9 100644
> --- a/arch/arm/mach-bcm/Makefile
> +++ b/arch/arm/mach-bcm/Makefile
> @@ -42,8 +42,9 @@ obj-$(CONFIG_ARCH_BCM_MOBILE_L2_CACHE) += kona_l2_cache.o
>  obj-$(CONFIG_ARCH_BCM_MOBILE_SMC) += bcm_kona_smc.o
> 
>  # BCM2835
> -obj-$(CONFIG_ARCH_BCM2835)	+= board_bcm2835.o
>  ifeq ($(CONFIG_ARCH_BCM2835),y)
> +obj-y				+= board_bcm2835.o
> +obj-y				+= bcm2711.o
>  ifeq ($(CONFIG_ARM),y)
>  obj-$(CONFIG_SMP)		+= platsmp.o
>  endif
> diff --git a/arch/arm/mach-bcm/bcm2711.c b/arch/arm/mach-bcm/bcm2711.c
> new file mode 100644
> index 0000000..dbe2967
> --- /dev/null
> +++ b/arch/arm/mach-bcm/bcm2711.c
> @@ -0,0 +1,24 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2019 Stefan Wahren
> + */
> +
> +#include <linux/of_address.h>
> +
> +#include <asm/mach/arch.h>
> +
> +#include "platsmp.h"
> +
> +static const char * const bcm2711_compat[] = {
> +#ifdef CONFIG_ARCH_MULTI_V7
> +	"brcm,bcm2711",
> +#endif
> +};
> +
> +DT_MACHINE_START(BCM2711, "BCM2711")
> +#ifdef CONFIG_ZONE_DMA
> +	.dma_zone_size	= SZ_1G,
> +#endif
> +	.dt_compat = bcm2711_compat,
> +	.smp = smp_ops(bcm2836_smp_ops),
> +MACHINE_END
> diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
> index 16d7614..b5d31dc 100644
> --- a/arch/arm64/Kconfig.platforms
> +++ b/arch/arm64/Kconfig.platforms
> @@ -37,11 +37,12 @@ config ARCH_BCM2835
>  	select PINCTRL
>  	select PINCTRL_BCM2835
>  	select ARM_AMBA
> +	select ARM_GIC
>  	select ARM_TIMER_SP804
>  	select HAVE_ARM_ARCH_TIMER
>  	help
> -	  This enables support for the Broadcom BCM2837 SoC.
> -	  This SoC is used in the Raspberry Pi 3 device.
> +	  This enables support for the Broadcom BCM2837 and BCM2711 SoC.
> +	  This SoC is used in the Raspberry Pi 3 and 4 device.

Nit:

These SoCs are used in the Raspberry Pi 3 and 4 devices.

With that:

Acked-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
