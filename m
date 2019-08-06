Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C553183A2F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 22:16:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VQxk1ZWM6AJ+2Q1pmkmOS/mSTsqDfFLjFymSYOqk+sA=; b=XY/jOeNTzZWjdS
	jNNZVFBbrIdjQz+k+wmuUOr1wItSVH1gqgXy1VxwMJJ3krhAlpsEgFcOL4APmzq255G14CmFBaYwb
	YlumRYu6TFk0K3yrJY9KeIJSzaQF/GyLJpRIEV40Zld7IqVajnH3W93XvUC0LTGF5SrjNzSsKBP3Z
	/NANiYMFzWeTzQYTOQnsfXMvXJ453sHCvx2sxyaZ8FJEyMaCtB5r6otPQ1d6bchHuaLb2l/31RY9h
	IqJ2zHXuuiQ9NoUMLBLP+dxMzc9CJ2l3mGzu+s4uQJnTJdWtaCJJZWsT60MWtYBK+iXNnAHCVeTDJ
	S3qfvE5lPZO0P7uVVeYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv5sw-00011t-H6; Tue, 06 Aug 2019 20:16:42 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv5se-00010X-F6
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 20:16:31 +0000
Received: by mail-oi1-x241.google.com with SMTP id e189so68340410oib.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 13:16:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/CP2/ttlNAMRHZe9wM5QhXivun+Nsqj7wMDJLW+3ZZY=;
 b=drS1ChCKV2oZLvLa0J82vKTdPn7F11YVpSgv95ld9eh4LkfZElOn3KD+BiKhKxSRqf
 J+02q3B47x5ZQvRMxJuHaG75BqV3sCvpdiUkPBoy7sKACnjd+p1uqeAjwS7I74FrhbGY
 rasXjppJNI7oU75E1FMd7pjX/59tAhVAeRtupfviSe6FpxkFWAQgtdg08Ai33lY0wSek
 18f2LXjmU7/cykv5mKQf9sPsJ9kRIQOUxKTtgDpTQ+tOogpc79uFDxRQB9q0seQjTpqM
 UYtqzkdJDHdUUaPyqXtCWrCpgxm0j73zEtyLCYie9ZLgIWobKS9wxAFl3yUSlacWy6sN
 XlRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/CP2/ttlNAMRHZe9wM5QhXivun+Nsqj7wMDJLW+3ZZY=;
 b=AN1SqBwsQx2surbK7t3/AsY+75YDb0SnWLMJCkMzk6Oh6ctp17te4mKI94v1KsL9pw
 lWHPV30ZUftMyGIOoNXw4HsDJ+4WTE6KOLPUCHvrYfAVjsLraq4bO0fGzfeaTGLU4jts
 MCr2IsT8cFNm1yPxHhTK6oB8yT2KsZ48UQDm8uEaHTTgUkfrRxdQ5QO4xo7WbpClktr5
 Ha8TJaPIx3qj9diyaZQRisroDYqvM0meg/DeS0w43SLiIBo1AghvUYgHhmLxzLa+xWPr
 8QK+3AZbJfWeQzQT4MhKDH0v+3Vxcj+tggbL4tvy+AlI87quG5ol/sxllCAJ0QInV5ZO
 q8MQ==
X-Gm-Message-State: APjAAAV+pOOrR6rOarg+7SBbYF1g6/Yi9nTyBFme1h0k2XeRHDdEmS6+
 RtGxEZCGxpTkr2QPxH2B/J8RILN0LOWXzIY060k=
X-Google-Smtp-Source: APXvYqz/hGubzfXZxEe6HVdAAvIc8af3ExDXm6NywvNKLHbOmM0G2ay9LIIMYVwbU/79DJZpr1wz/8FIZz/TI6LgzZA=
X-Received: by 2002:a02:ca19:: with SMTP id i25mr6237467jak.6.1565122583783;
 Tue, 06 Aug 2019 13:16:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190731195713.3150463-1-arnd@arndb.de>
 <20190731195713.3150463-11-arnd@arndb.de>
In-Reply-To: <20190731195713.3150463-11-arnd@arndb.de>
From: Sylvain Lemieux <slemieux.tyco@gmail.com>
Date: Tue, 6 Aug 2019 16:16:10 -0400
Message-ID: <CA+rxa6pJkoccxJkS1Y7nQHiZHiNq5D+KM7+xS37vZa3dTCF31w@mail.gmail.com>
Subject: Re: [PATCH 10/14] ARM: lpc32xx: clean up header files
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_131624_510140_3F79FD4D 
X-CRM114-Status: GOOD (  19.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slemieux.tyco[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jason Cooper <jason@lakedaemon.net>, "David S. Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Gregory Clement <gregory.clement@bootlin.com>,
 USB list <linux-usb@vger.kernel.org>, Russell King <linux@armlinux.org.uk>,
 Vladimir Zapolskiy <vz@mleia.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, soc@kernel.org,
 Alan Stern <stern@rowland.harvard.edu>, Guenter Roeck <linux@roeck-us.net>,
 linux-serial@vger.kernel.org, Networking <netdev@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Acked-by: Sylvain Lemieux <slemieux.tyco@gmail.com>

On Wed, Jul 31, 2019 at 4:03 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> All device drivers have stopped relying on mach/*.h headers,
> so move the remaining headers into arch/arm/mach-lpc32xx/lpc32xx.h
> to prepare for multiplatform builds.
>
> The mach/entry-macro.S file has been unused for a long time now
> and can simply get removed.
>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/arm/mach-lpc32xx/common.c                |  3 +-
>  .../mach-lpc32xx/include/mach/entry-macro.S   | 28 -------------------
>  arch/arm/mach-lpc32xx/include/mach/hardware.h | 25 -----------------
>  .../mach-lpc32xx/include/mach/uncompress.h    |  4 +--
>  .../{include/mach/platform.h => lpc32xx.h}    | 18 ++++++++++--
>  arch/arm/mach-lpc32xx/pm.c                    |  3 +-
>  arch/arm/mach-lpc32xx/serial.c                |  3 +-
>  arch/arm/mach-lpc32xx/suspend.S               |  3 +-
>  8 files changed, 21 insertions(+), 66 deletions(-)
>  delete mode 100644 arch/arm/mach-lpc32xx/include/mach/entry-macro.S
>  delete mode 100644 arch/arm/mach-lpc32xx/include/mach/hardware.h
>  rename arch/arm/mach-lpc32xx/{include/mach/platform.h => lpc32xx.h} (98%)
>
> diff --git a/arch/arm/mach-lpc32xx/common.c b/arch/arm/mach-lpc32xx/common.c
> index a475339333c1..304ea61a0716 100644
> --- a/arch/arm/mach-lpc32xx/common.c
> +++ b/arch/arm/mach-lpc32xx/common.c
> @@ -13,8 +13,7 @@
>  #include <asm/mach/map.h>
>  #include <asm/system_info.h>
>
> -#include <mach/hardware.h>
> -#include <mach/platform.h>
> +#include "lpc32xx.h"
>  #include "common.h"
>
>  /*
> diff --git a/arch/arm/mach-lpc32xx/include/mach/entry-macro.S b/arch/arm/mach-lpc32xx/include/mach/entry-macro.S
> deleted file mode 100644
> index eec0f5f7e722..000000000000
> --- a/arch/arm/mach-lpc32xx/include/mach/entry-macro.S
> +++ /dev/null
> @@ -1,28 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0-or-later */
> -/*
> - * arch/arm/mach-lpc32xx/include/mach/entry-macro.S
> - *
> - * Author: Kevin Wells <kevin.wells@nxp.com>
> - *
> - * Copyright (C) 2010 NXP Semiconductors
> - */
> -
> -#include <mach/hardware.h>
> -#include <mach/platform.h>
> -
> -#define LPC32XX_INTC_MASKED_STATUS_OFS 0x8
> -
> -       .macro  get_irqnr_preamble, base, tmp
> -       ldr     \base, =IO_ADDRESS(LPC32XX_MIC_BASE)
> -       .endm
> -
> -/*
> - * Return IRQ number in irqnr. Also return processor Z flag status in CPSR
> - * as set if an interrupt is pending.
> - */
> -       .macro  get_irqnr_and_base, irqnr, irqstat, base, tmp
> -       ldr     \irqstat, [\base, #LPC32XX_INTC_MASKED_STATUS_OFS]
> -       clz     \irqnr, \irqstat
> -       rsb     \irqnr, \irqnr, #31
> -       teq     \irqstat, #0
> -       .endm
> diff --git a/arch/arm/mach-lpc32xx/include/mach/hardware.h b/arch/arm/mach-lpc32xx/include/mach/hardware.h
> deleted file mode 100644
> index 4866f096ffce..000000000000
> --- a/arch/arm/mach-lpc32xx/include/mach/hardware.h
> +++ /dev/null
> @@ -1,25 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0-or-later */
> -/*
> - * arch/arm/mach-lpc32xx/include/mach/hardware.h
> - *
> - * Copyright (c) 2005 MontaVista Software, Inc. <source@mvista.com>
> - */
> -
> -#ifndef __ASM_ARCH_HARDWARE_H
> -#define __ASM_ARCH_HARDWARE_H
> -
> -/*
> - * Start of virtual addresses for IO devices
> - */
> -#define IO_BASE                0xF0000000
> -
> -/*
> - * This macro relies on fact that for all HW i/o addresses bits 20-23 are 0
> - */
> -#define IO_ADDRESS(x)  IOMEM(((((x) & 0xff000000) >> 4) | ((x) & 0xfffff)) |\
> -                        IO_BASE)
> -
> -#define io_p2v(x)      ((void __iomem *) (unsigned long) IO_ADDRESS(x))
> -#define io_v2p(x)      ((((x) & 0x0ff00000) << 4) | ((x) & 0x000fffff))
> -
> -#endif
> diff --git a/arch/arm/mach-lpc32xx/include/mach/uncompress.h b/arch/arm/mach-lpc32xx/include/mach/uncompress.h
> index a568812a0b91..74b7aa0da0e4 100644
> --- a/arch/arm/mach-lpc32xx/include/mach/uncompress.h
> +++ b/arch/arm/mach-lpc32xx/include/mach/uncompress.h
> @@ -12,15 +12,13 @@
>
>  #include <linux/io.h>
>
> -#include <mach/hardware.h>
> -#include <mach/platform.h>
> -
>  /*
>   * Uncompress output is hardcoded to standard UART 5
>   */
>
>  #define UART_FIFO_CTL_TX_RESET (1 << 2)
>  #define UART_STATUS_TX_MT      (1 << 6)
> +#define LPC32XX_UART5_BASE     0x40090000
>
>  #define _UARTREG(x)            (void __iomem *)(LPC32XX_UART5_BASE + (x))
>
> diff --git a/arch/arm/mach-lpc32xx/include/mach/platform.h b/arch/arm/mach-lpc32xx/lpc32xx.h
> similarity index 98%
> rename from arch/arm/mach-lpc32xx/include/mach/platform.h
> rename to arch/arm/mach-lpc32xx/lpc32xx.h
> index 1c53790444fc..5eeb884a1993 100644
> --- a/arch/arm/mach-lpc32xx/include/mach/platform.h
> +++ b/arch/arm/mach-lpc32xx/lpc32xx.h
> @@ -7,8 +7,8 @@
>   * Copyright (C) 2010 NXP Semiconductors
>   */
>
> -#ifndef __ASM_ARCH_PLATFORM_H
> -#define __ASM_ARCH_PLATFORM_H
> +#ifndef __ARM_LPC32XX_H
> +#define __ARM_LPC32XX_H
>
>  #define _SBF(f, v)                             ((v) << (f))
>  #define _BIT(n)                                        _SBF(n, 1)
> @@ -700,4 +700,18 @@
>  #define LPC32XX_USB_OTG_DEV_CLOCK_ON   _BIT(1)
>  #define LPC32XX_USB_OTG_HOST_CLOCK_ON  _BIT(0)
>
> +/*
> + * Start of virtual addresses for IO devices
> + */
> +#define IO_BASE                0xF0000000
> +
> +/*
> + * This macro relies on fact that for all HW i/o addresses bits 20-23 are 0
> + */
> +#define IO_ADDRESS(x)  IOMEM(((((x) & 0xff000000) >> 4) | ((x) & 0xfffff)) |\
> +                        IO_BASE)
> +
> +#define io_p2v(x)      ((void __iomem *) (unsigned long) IO_ADDRESS(x))
> +#define io_v2p(x)      ((((x) & 0x0ff00000) << 4) | ((x) & 0x000fffff))
> +
>  #endif
> diff --git a/arch/arm/mach-lpc32xx/pm.c b/arch/arm/mach-lpc32xx/pm.c
> index 32bca351a73b..b27fa1b9f56c 100644
> --- a/arch/arm/mach-lpc32xx/pm.c
> +++ b/arch/arm/mach-lpc32xx/pm.c
> @@ -70,8 +70,7 @@
>
>  #include <asm/cacheflush.h>
>
> -#include <mach/hardware.h>
> -#include <mach/platform.h>
> +#include "lpc32xx.h"
>  #include "common.h"
>
>  #define TEMP_IRAM_AREA  IO_ADDRESS(LPC32XX_IRAM_BASE)
> diff --git a/arch/arm/mach-lpc32xx/serial.c b/arch/arm/mach-lpc32xx/serial.c
> index cfb35e5691cd..3e765c4bf986 100644
> --- a/arch/arm/mach-lpc32xx/serial.c
> +++ b/arch/arm/mach-lpc32xx/serial.c
> @@ -16,8 +16,7 @@
>  #include <linux/clk.h>
>  #include <linux/io.h>
>
> -#include <mach/hardware.h>
> -#include <mach/platform.h>
> +#include "lpc32xx.h"
>  #include "common.h"
>
>  #define LPC32XX_SUART_FIFO_SIZE        64
> diff --git a/arch/arm/mach-lpc32xx/suspend.S b/arch/arm/mach-lpc32xx/suspend.S
> index 374f9f07fe48..3f0a8282ef6f 100644
> --- a/arch/arm/mach-lpc32xx/suspend.S
> +++ b/arch/arm/mach-lpc32xx/suspend.S
> @@ -11,8 +11,7 @@
>   */
>  #include <linux/linkage.h>
>  #include <asm/assembler.h>
> -#include <mach/platform.h>
> -#include <mach/hardware.h>
> +#include "lpc32xx.h"
>
>  /* Using named register defines makes the code easier to follow */
>  #define WORK1_REG                      r0
> --
> 2.20.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
