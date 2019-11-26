Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B4F10A601
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 22:29:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iw9bVEfd4g7fqYwztAW8lIuLZEi43AAthplIyOeRPq8=; b=QH2O6S3Mw79786
	m8YTT9zxhOBc9biBDQfdOF33URY3ocdmuDtNocwa4SpUKktyYreRy3GeZrWgNzYVS9QXlvRYeH+KN
	CV8H/AVXCTdvtbozoirS2vueojmkSRhGj7sf7+LoPJ3bejEwAAszZ1v6ND1yrMuAUMKvpme0eoOMv
	V3e576PB95dZCgrdvntGl40K3J43l17Kw/8/WT5YtK0l6iMx6tSpVsnoC486dFAKFQaqCYMJGMVpt
	/IfDKDEpf2I6Cs+6L24MNN3Di50M0gTEkco/PqPlYwF9FzAJQajiQj4E3lODaVM/PHWpeGLx1e8u7
	zNfuZWpyEs3Dq+o+q9oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZiOO-0004NZ-1n; Tue, 26 Nov 2019 21:29:04 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZiOF-0004Mi-6i
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 21:28:57 +0000
X-Originating-IP: 90.65.92.102
Received: from localhost (lfbn-1-1723-102.w90-65.abo.wanadoo.fr [90.65.92.102])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 1B17E60002;
 Tue, 26 Nov 2019 21:28:41 +0000 (UTC)
Date: Tue, 26 Nov 2019 22:28:41 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH v2 02/17] ARM: at91: pm: move SAM9X60's PM under its own
 SoC config flag
Message-ID: <20191126212841.GR299836@piout.net>
References: <1574773941-20649-1-git-send-email-claudiu.beznea@microchip.com>
 <1574773941-20649-3-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1574773941-20649-3-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_132855_529600_EBF360BF 
X-CRM114-Status: GOOD (  17.03  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux@armlinux.org.uk, ludovic.desroches@microchip.com, sre@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 26/11/2019 15:12:06+0200, Claudiu Beznea wrote:
> Move SAM9X60's PM part under SoC config flag. This allows the building
> of SAM9X60 platform withouth depending on CONFIG_SOC_AT91SAM9 flag,
> allowing us to select only necessary config flags for SAM9X60.
> 

I'm really wondering, how much space does that really save?

The net benefit seems to be very small...

> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---
>  arch/arm/mach-at91/Makefile   |  1 +
>  arch/arm/mach-at91/at91sam9.c | 18 ------------------
>  arch/arm/mach-at91/pm.c       |  2 +-
>  arch/arm/mach-at91/sam9x60.c  | 34 ++++++++++++++++++++++++++++++++++
>  4 files changed, 36 insertions(+), 19 deletions(-)
>  create mode 100644 arch/arm/mach-at91/sam9x60.c
> 
> diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
> index de64301dcff2..f565490f1b70 100644
> --- a/arch/arm/mach-at91/Makefile
> +++ b/arch/arm/mach-at91/Makefile
> @@ -6,6 +6,7 @@
>  # CPU-specific support
>  obj-$(CONFIG_SOC_AT91RM9200)	+= at91rm9200.o
>  obj-$(CONFIG_SOC_AT91SAM9)	+= at91sam9.o
> +obj-$(CONFIG_SOC_SAM9X60)	+= sam9x60.o
>  obj-$(CONFIG_SOC_SAMA5)		+= sama5.o
>  obj-$(CONFIG_SOC_SAMV7)		+= samv7.o
>  
> diff --git a/arch/arm/mach-at91/at91sam9.c b/arch/arm/mach-at91/at91sam9.c
> index bf629c90c758..7e572189a5eb 100644
> --- a/arch/arm/mach-at91/at91sam9.c
> +++ b/arch/arm/mach-at91/at91sam9.c
> @@ -31,21 +31,3 @@ DT_MACHINE_START(at91sam_dt, "Atmel AT91SAM9")
>  	.init_machine	= at91sam9_init,
>  	.dt_compat	= at91_dt_board_compat,
>  MACHINE_END
> -
> -static void __init sam9x60_init(void)
> -{
> -	of_platform_default_populate(NULL, NULL, NULL);
> -
> -	sam9x60_pm_init();
> -}
> -
> -static const char *const sam9x60_dt_board_compat[] __initconst = {
> -	"microchip,sam9x60",
> -	NULL
> -};
> -
> -DT_MACHINE_START(sam9x60_dt, "Microchip SAM9X60")
> -	/* Maintainer: Microchip */
> -	.init_machine	= sam9x60_init,
> -	.dt_compat	= sam9x60_dt_board_compat,
> -MACHINE_END
> diff --git a/arch/arm/mach-at91/pm.c b/arch/arm/mach-at91/pm.c
> index d5af6aedc02c..56a6a49b19e2 100644
> --- a/arch/arm/mach-at91/pm.c
> +++ b/arch/arm/mach-at91/pm.c
> @@ -805,7 +805,7 @@ void __init at91rm9200_pm_init(void)
>  
>  void __init sam9x60_pm_init(void)
>  {
> -	if (!IS_ENABLED(CONFIG_SOC_AT91SAM9))
> +	if (!IS_ENABLED(CONFIG_SOC_SAM9X60))
>  		return;
>  
>  	at91_pm_modes_init();
> diff --git a/arch/arm/mach-at91/sam9x60.c b/arch/arm/mach-at91/sam9x60.c
> new file mode 100644
> index 000000000000..d8c739d25458
> --- /dev/null
> +++ b/arch/arm/mach-at91/sam9x60.c
> @@ -0,0 +1,34 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Setup code for SAM9X60.
> + *
> + * Copyright (C) 2019 Microchip Technology Inc. and its subsidiaries
> + *
> + * Author: Claudiu Beznea <claudiu.beznea@microchip.com>
> + */
> +
> +#include <linux/of.h>
> +#include <linux/of_platform.h>
> +
> +#include <asm/mach/arch.h>
> +#include <asm/system_misc.h>
> +
> +#include "generic.h"
> +
> +static void __init sam9x60_init(void)
> +{
> +	of_platform_default_populate(NULL, NULL, NULL);
> +
> +	sam9x60_pm_init();
> +}
> +
> +static const char *const sam9x60_dt_board_compat[] __initconst = {
> +	"microchip,sam9x60",
> +	NULL
> +};
> +
> +DT_MACHINE_START(sam9x60_dt, "Microchip SAM9X60")
> +	/* Maintainer: Microchip */
> +	.init_machine	= sam9x60_init,
> +	.dt_compat	= sam9x60_dt_board_compat,
> +MACHINE_END
> -- 
> 2.7.4
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
