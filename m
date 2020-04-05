Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D14CC19EB47
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 14:46:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OxP/xrhi8BZA77hDF0bXTqhweEvCZOn6DISI05C5DXc=; b=aiWFNBI+S/c8wD
	QAWuaYnlnUnr5aqhvQk0SqUWRcLCdL7eSzK5w+kTfBkTZMBsS0LXH+gCD+dd4S8OslTeC9ec7kjDb
	G/QGlX/XMrR5k5POZkb1RvDRcLdDfXMv0mau7Qega/ZybH21DDLI+CfMG5TGmjbAvI+B7PMoOwQpQ
	6G8ryTgxSDvjelNji9UYJ4I0fdUQsYTj3cbI3AoYvi+Ijy1aQ7Y5+fmNVMkfcfEbqmXlk/JTTjrx+
	Ak2y49cYIitpBcfwzBDeqpwP7If9kym4wO8Xn10vahh/rleqAnuHwp0VvbELJCnluynMzj5zG6p/5
	plFs6HFnfNYamyZ1neuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL4eq-0007fh-L5; Sun, 05 Apr 2020 12:45:48 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL4ej-0007fL-PR
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 12:45:43 +0000
Received: from mail-qk1-f179.google.com ([209.85.222.179]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MoNy4-1iwlNh37BA-00omZi for <linux-arm-kernel@lists.infradead.org>; Sun,
 05 Apr 2020 14:45:37 +0200
Received: by mail-qk1-f179.google.com with SMTP id i186so4307616qke.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Apr 2020 05:45:37 -0700 (PDT)
X-Gm-Message-State: AGi0Pub7a/50WxU2WmrMrdckXp+KYpLcofnGYFjUV5QSNFFRsA9zXg0Y
 6NIBZI9SNQW9yRfkFTUul0XHSaTeKDtocGs0Bh0=
X-Google-Smtp-Source: APiQypKlKm5u3myZf/GwFpSyF6fIiqJOxT5moUwM4gaZfAI+KUBEWYbYQYwZh31yY3jPs9ZHIBimRXzXSm0vY+Q4Zqk=
X-Received: by 2002:a37:6455:: with SMTP id y82mr17373098qkb.286.1586090736480; 
 Sun, 05 Apr 2020 05:45:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200405025123.154688-1-sboyd@kernel.org>
 <20200405025123.154688-7-sboyd@kernel.org>
In-Reply-To: <20200405025123.154688-7-sboyd@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sun, 5 Apr 2020 14:45:20 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2M54quhRNK4xvwjz9O9oZwgrobc_wtkGaeA2PMYwOUdg@mail.gmail.com>
Message-ID: <CAK8P3a2M54quhRNK4xvwjz9O9oZwgrobc_wtkGaeA2PMYwOUdg@mail.gmail.com>
Subject: Re: [PATCH 6/9] clk: Allow the common clk framework to be selectable
To: Stephen Boyd <sboyd@kernel.org>
X-Provags-ID: V03:K1:fjpFJH2JFNRiHbeeSDJBYS090po5g/rrNjYKdA/dYjsLWNN4mRY
 dQeWfaxqO1bhSXI5DKzcch9LgEG5FzdJcMnrKbOo5lzAXF0POjciE9mXyWTulioRHNui6kQ
 4ck7yojU/kIBCNMjyf/FsklAyF+uUYgI2HykCB1bGvk51SGqkWA8BC6O3x/06lVDiO0rYRJ
 +GymOfhlBNSC5ZiLulg7w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:uNz2rsp4jVg=:Heetiz+0pKAiXYTc9XLpTw
 D9vFPL16uHx3wdp3YmfAf41S0nR+CJ7dBmmcOsC8dm+liO+DPxE8PWziBVvGSPRPTX3SJezmo
 IluLfTkyPtZPVmNmiNmzN+H3I9LQsXswBp2xukfvgDachAHhxPk7+HphaBUkoNR5qwDY+QyNq
 eXOGlg1pbiFstVl3cTK4ohuKN0QAcRfXhjXHWcuUsqiNfcyvm7DdpLz1lZE2EqQ9n4Wuq5xhl
 ZStRiVIUZ95veFr+/s1e03jeSu5lYlCZn4Zq6zzdiWsAOh64yKu7KElKfGpW/9enGFo2xW7Hm
 YPm3M4qlIl7Ar6chAWvNLFiUuLg1EHTAGu1X3nU3CN3F48l1hOHvKNSw7BUuU1XOxH25maWyl
 naJqv/nbsVtI77Ws6/srZD8PQZymim0+6e+4WFLXeE2RkpnPlFk20nM9D0F1QklOuIwHQ01/P
 6R1tLudW8Ghn7/lFr2LCyEuK2drDBuVvDiRwWcyKOiu7HI0etEyGf9Pv5voGPAEEjppA2Dyzw
 iZFylVwJfghoK9mE0XWNEGedKwT1ZvAWjhaFQfCJeZGN5Zk84TaaYHcz8VpKnqsAtm+qcSkYa
 C6MP4UGRXuXadFXc4ScqE6dqedkDAdZCLpJjd9V5SCdDVDg3yGrAxnEdvinSy6ezuxiONBeDr
 8yrF8/vkuZMak4dwFViu+3ZzCHAbFHxqX9Qiv06Aw8rvDb6PBKGiZ8CvHAl5b3ZV39J8oXsfN
 ZW8WnUhb2r5kNx10wWeC7Pq6kL2sSvvTiQpSpyAazNFkh2qB0/22qrB19pY0g9RS35V9vdKWA
 UgQ/3wOOA6qt3YCz6ReB0un+rEoOP+Rkw2LBpoiVlOuqG4KUNI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_054542_116846_D6C0BA8A 
X-CRM114-Status: GOOD (  26.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Rich Felker <dalias@libc.org>, linux-c6x-dev@linux-c6x.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Linux-sh list <linux-sh@vger.kernel.org>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jiaxun Yang <jiaxun.yang@flygoat.com>,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>, Mark Brown <broonie@kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Mark Salter <msalter@redhat.com>,
 Russell King <linux@armlinux.org.uk>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Guan Xuetao <gxt@pku.edu.cn>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 5, 2020 at 4:51 AM Stephen Boyd <sboyd@kernel.org> wrote:
> There's one snag with doing this, and that's making sure that randconfig
> builds don't select this option when some architecture or platform
> implements 'struct clk' outside of the common clk framework. Introduce a
> new config option 'HAVE_LEGACY_CLK' to indicate those platforms that
> haven't migrated to the common clk framework and therefore shouldn't be
> allowed to select this new config option. Also add a note that we hope
> one day to remove this config entirely.

Good idea!

I've looked through the individual ones and commented a bit on
what I think may or may not happen with them.

ralink SOC_MT7621 is the only one that I think you got wrong,
as it already has common-clk support.

>  arch/arm/Kconfig              |  2 ++
>  arch/c6x/Kconfig              |  1 +
>  arch/m68k/Kconfig.cpu         |  2 +-
>  arch/mips/Kconfig             |  6 ++++--
>  arch/mips/loongson2ef/Kconfig |  2 +-
>  arch/sh/boards/Kconfig        |  5 +++++
>  arch/unicore32/Kconfig        |  2 +-
>  drivers/clk/Kconfig           | 17 +++++++++++++----
>  8 files changed, 28 insertions(+), 9 deletions(-)
>
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index eeabdc5a3dd2..0606e1bbd7b6 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -364,6 +364,7 @@ config ARCH_EP93XX
>         select CPU_ARM920T
>         select GENERIC_CLOCKEVENTS
>         select GPIOLIB
> +       select HAVE_LEGACY_CLK
>         help
>           This enables support for the Cirrus EP93xx series of CPUs.
>
> @@ -522,6 +523,7 @@ config ARCH_OMAP1
>         select GENERIC_IRQ_MULTI_HANDLER
>         select GPIOLIB
>         select HAVE_IDE
> +       select HAVE_LEGACY_CLK
>         select IRQ_DOMAIN
>         select NEED_MACH_IO_H if PCCARD
>         select NEED_MACH_MEMORY_H

Ah nice, I thought there were more than two implementations
left. I need to refresh the series for OMAP1 that I did last year
and debug the regression that caused. I think Linus Walleij
has looked into the ep93xx one at some point.

> diff --git a/arch/c6x/Kconfig b/arch/c6x/Kconfig
> index e65e8d82442a..6444ebfd06a6 100644
> --- a/arch/c6x/Kconfig
> +++ b/arch/c6x/Kconfig
> @@ -11,6 +11,7 @@ config C6X
>         select ARCH_HAS_SYNC_DMA_FOR_CPU
>         select ARCH_HAS_SYNC_DMA_FOR_DEVICE
>         select CLKDEV_LOOKUP
> +       select HAVE_LEGACY_CLK
>         select GENERIC_ATOMIC64
>         select GENERIC_IRQ_SHOW
>         select HAVE_ARCH_TRACEHOOK

This was last touched in 2012 when TMS320C6678 support
was added. It seems to be based on the original same code
as omap1 and omap2 that eventually turned into the common
clock subsystem, so it would clearly be possible to do a
step-by-step conversion like I did for omap1, but I suspect
we can wait for all of c6x-linux to become obsolete enough.

> diff --git a/arch/m68k/Kconfig.cpu b/arch/m68k/Kconfig.cpu
> index 60ac1cd8b96f..bd2d29c22a10 100644
> --- a/arch/m68k/Kconfig.cpu
> +++ b/arch/m68k/Kconfig.cpu
> @@ -28,7 +28,7 @@ config COLDFIRE
>         select CPU_HAS_NO_MULDIV64
>         select GENERIC_CSUM
>         select GPIOLIB
> -       select HAVE_CLK
> +       select HAVE_LEGACY_CLK
>
>  endchoice

The coldfire clock implementation looks rather simple compared
to chips from the 2010s: most chips have only fixed clocks,
and three of them have one of two registers of clock gates.

It shouldn't be hard to convert, but enabling common-clk will
cause a noticeable kernel size increase on the fairly limited
hardware.

Simply enabling COMMON_CLK in m5475evb_defconfig
results in a 1.7% or 40KB growth in kernel size, plus there
would be additional dynamic memory usage:

   text    data     bss     dec     hex filename
1934726 263616   83284 2281626 22d09a obj/vmlinux-before
1971989 266192   83308 2321489 236c51 obj/vmlinux-after

> diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
> index e53a8dd5c19b..fa02c715ab25 100644
> --- a/arch/mips/Kconfig
> +++ b/arch/mips/Kconfig
> @@ -181,7 +181,7 @@ config AR7
>         select SYS_SUPPORTS_ZBOOT_UART16550
>         select GPIOLIB
>         select VLYNQ
> -       select HAVE_CLK
> +       select HAVE_LEGACY_CLK
>         help
>           Support for the Texas Instruments AR7 System-on-a-Chip
>           family: TNETD7100, 7200 and 7300.

I suspect this platform is fairly dead, OpenWRT dropped support for it,
and the known machines have at most 16MB of RAM, which limits
the number of use cases that also want to build recent kernels.

> @@ -296,9 +296,9 @@ config BCM63XX
>         select SYS_HAS_EARLY_PRINTK
>         select SWAP_IO_SPACE
>         select GPIOLIB
> -       select HAVE_CLK
>         select MIPS_L1_CACHE_SHIFT_4
>         select CLKDEV_LOOKUP
> +       select HAVE_LEGACY_CLK
>         help
>           Support for BCM63XX based boards
>
> @@ -419,6 +419,7 @@ config LANTIQ
>         select SWAP_IO_SPACE
>         select BOOT_RAW
>         select CLKDEV_LOOKUP
> +       select HAVE_LEGACY_CLK
>         select USE_OF
>         select PINCTRL
>         select PINCTRL_LANTIQ
> @@ -656,6 +657,7 @@ config RALINK
>         select SYS_SUPPORTS_MIPS16
>         select SYS_HAS_EARLY_PRINTK
>         select CLKDEV_LOOKUP
> +       select HAVE_LEGACY_CLK
>         select ARCH_HAS_RESET_CONTROLLER
>         select RESET_CONTROLLER

All three of these are older platforms that still have a number of machines
supported in OpenWRT, so there is hope that someone would do the work
to add common-clk support. Both Lantiq and Ralink have been converted
to device tree not too long ago.

I think the RALINK entry needs to be changed, as this includes
SOC_MT7621, which already uses COMMON_CLK.

> diff --git a/arch/mips/loongson2ef/Kconfig b/arch/mips/loongson2ef/Kconfig
> index 595dd48e1e4d..c9ec43afde73 100644
> --- a/arch/mips/loongson2ef/Kconfig
> +++ b/arch/mips/loongson2ef/Kconfig
> @@ -46,7 +46,7 @@ config LEMOTE_MACH2F
>         select CSRC_R4K if ! MIPS_EXTERNAL_TIMER
>         select DMA_NONCOHERENT
>         select GENERIC_ISA_DMA_SUPPORT_BROKEN
> -       select HAVE_CLK
> +       select HAVE_LEGACY_CLK
>         select FORCE_PCI
>         select I8259
>         select IRQ_MIPS_CPU

For all I can tell, this driver only uses the clock interface for
its cpufreq driver, and the actual API definition looks bogus.

Half of it could be folded into the cpufreq driver, and the rest
of it removed, along with arch/mips/include/asm/clock.h

> diff --git a/arch/sh/boards/Kconfig b/arch/sh/boards/Kconfig
> index cee24c308337..fb0ca0c1efe1 100644
> --- a/arch/sh/boards/Kconfig
> +++ b/arch/sh/boards/Kconfig
> @@ -7,6 +7,11 @@ config SOLUTION_ENGINE
>  config SH_ALPHA_BOARD
>         bool
>
> +config SH_CUSTOM_CLK
> +       def_bool y
> +       depends on !SH_DEVICE_TREE
> +       select HAVE_LEGACY_CLK
> +
>  config SH_DEVICE_TREE
>         bool
>         select OF

It's going to be hard to find anyone willing to touch this, as the code
is very large but has few users these days.

drivers/sh/clk/ is basically a generic clk subsystem on its own, and
there are at least 28 different arch/sh SoCs with drivers for it.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
