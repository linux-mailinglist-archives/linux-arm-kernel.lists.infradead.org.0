Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30AB8D3306
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 23:02:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pYgOA7mn06u0WpcdaS9lc3QT8UMyLGYJLJq+Fnu9w0A=; b=SHLEWIO+ImE8Fb
	plqI0wHoP7Hb5ex6XEuJFW4fJoNCxp34cfoy9akFrUmiPSNAZdCLMY8k7GZQNRqyvzVpsc4XbMJxz
	qw2ORVJf0mlAaJCRCK4UKzxsHI5olqXwGJ08/AlYfylL+EZRDFFuyTaO7pRJrQRv6j0JBY7jVi94k
	P6lstxkgnlIobiiQzYqaPxUg9Zug1Ql6TcM3waQGPPvbgoJhH0wCsKWnipxRSmvWjp/Lu5bYl35Yl
	LoP/pq1aSReoDzSfNTDJ1g8/gzkLcC/biAnp5SSIc64c8qfIiZ9bG2QcM9FypUNm3V3BnQXbdWM4U
	b08kk4f4wSokqtVN6i4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIfa9-0005g3-Me; Thu, 10 Oct 2019 21:02:45 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIfZy-0005em-NY
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 21:02:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GOvsSXPX5WtsXHeYWNOuRtlXQ9QuSoefn1nZ0F/ehbA=; b=OwiduhoVYCBq+kBw6BNGb52t+
 k3WKuzfH+gk4cG4kW/cdwhUynmWiiU9pnNCTqIEucGpzVNDm+EcmC1bfjocV4gUjcMYl04y+je9kn
 wkjLfxhJYXP6RZE5q/ynoNZd6aM0u8yuj27EpNgYMtKdVmG2OoC8DmfXsntI+lB+/Q9oeWjsg1tX2
 UFED/3mQ44z4s5uPIhecp9t17UF9VrhIYVHKopdBsYyKiRIcQhHEZYehrwr02ve3xCyqD6xx4k2Ll
 orq9N+jC9bxwQSbywwfmlE9FaDneC+9Ol6dCuuWZwk8kqIls72YQXPKWMqkWsVgI7TQiVxnoxmdYR
 dg3c5rjnQ==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:42498)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iIfZc-0001FP-0J; Thu, 10 Oct 2019 22:02:12 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iIfZZ-0000WS-0V; Thu, 10 Oct 2019 22:02:09 +0100
Date: Thu, 10 Oct 2019 22:02:08 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 34/36] ARM: s3c: stop including mach/hardware.h from
 mach/io.h
Message-ID: <20191010210208.GK25745@shell.armlinux.org.uk>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-34-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010203043.1241612-34-arnd@arndb.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_140237_288224_E12F4EFF 
X-CRM114-Status: GOOD (  19.00  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Felipe Balbi <balbi@kernel.org>, linux-samsung-soc@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linus.walleij@linaro.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-spi@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Andi Shyti <andi@etezian.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 10:30:18PM +0200, Arnd Bergmann wrote:
> A number of other files rely on mach/map.h to be indirectly
> included from mach/io.h through mach/hardware.h.
> 
> Reduce this to the minimal plat/map-base.h and add explicit
> includes everywhere else.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/arm/mach-s3c24xx/common.c                          | 1 +
>  arch/arm/mach-s3c24xx/include/mach/gpio-samsung.h       | 2 ++
>  arch/arm/mach-s3c24xx/include/mach/hardware.h           | 7 -------
>  arch/arm/mach-s3c24xx/include/mach/io.h                 | 3 +--
>  arch/arm/mach-s3c24xx/include/mach/regs-clock.h         | 2 ++
>  arch/arm/mach-s3c24xx/include/mach/regs-gpio.h          | 2 ++
>  arch/arm/mach-s3c24xx/include/mach/regs-irq.h           | 2 ++
>  arch/arm/mach-s3c24xx/include/mach/regs-s3c2443-clock.h | 1 +
>  arch/arm/mach-s3c24xx/include/mach/s3c2412.h            | 2 ++
>  arch/arm/mach-s3c24xx/mach-h1940.c                      | 1 +
>  arch/arm/mach-s3c24xx/mach-jive.c                       | 1 +
>  arch/arm/mach-s3c24xx/mach-rx1950.c                     | 1 +
>  arch/arm/mach-s3c24xx/pm-h1940.S                        | 1 -
>  arch/arm/mach-s3c24xx/regs-mem.h                        | 2 ++
>  arch/arm/mach-s3c24xx/s3c2410.c                         | 2 +-
>  arch/arm/mach-s3c24xx/s3c2412.c                         | 2 +-
>  arch/arm/mach-s3c24xx/s3c2416.c                         | 2 +-
>  arch/arm/mach-s3c24xx/s3c2443.c                         | 2 +-
>  arch/arm/mach-s3c24xx/s3c244x.c                         | 2 +-
>  arch/arm/mach-s3c24xx/sleep-s3c2410.S                   | 1 -
>  arch/arm/mach-s3c24xx/sleep-s3c2412.S                   | 1 -
>  arch/arm/mach-s3c24xx/sleep.S                           | 1 -
>  drivers/spi/spi-s3c24xx-regs.h                          | 2 ++
>  drivers/usb/gadget/udc/s3c2410_udc_regs.h               | 2 ++
>  24 files changed, 27 insertions(+), 18 deletions(-)
> 
> diff --git a/arch/arm/mach-s3c24xx/common.c b/arch/arm/mach-s3c24xx/common.c
> index d16a164df6c4..42d828f48345 100644
> --- a/arch/arm/mach-s3c24xx/common.c
> +++ b/arch/arm/mach-s3c24xx/common.c
> @@ -21,6 +21,7 @@
>  #include <linux/dmaengine.h>
>  
>  #include <mach/hardware.h>
> +#include <mach/map.h>
>  #include <mach/regs-clock.h>
>  #include <asm/irq.h>
>  #include <asm/cacheflush.h>
> diff --git a/arch/arm/mach-s3c24xx/include/mach/gpio-samsung.h b/arch/arm/mach-s3c24xx/include/mach/gpio-samsung.h
> index 2ad22b2d459b..f8a114891f16 100644
> --- a/arch/arm/mach-s3c24xx/include/mach/gpio-samsung.h
> +++ b/arch/arm/mach-s3c24xx/include/mach/gpio-samsung.h
> @@ -14,6 +14,8 @@
>  #ifndef GPIO_SAMSUNG_S3C24XX_H
>  #define GPIO_SAMSUNG_S3C24XX_H
>  
> +#include <mach/map.h>
> +

Why?  Nothing in this file uses anything from mach/map.h

>  /*
>   * GPIO sizes for various SoCs:
>   *
> diff --git a/arch/arm/mach-s3c24xx/include/mach/hardware.h b/arch/arm/mach-s3c24xx/include/mach/hardware.h
> index f28ac6c78d82..c732ea54984c 100644
> --- a/arch/arm/mach-s3c24xx/include/mach/hardware.h
> +++ b/arch/arm/mach-s3c24xx/include/mach/hardware.h
> @@ -9,13 +9,6 @@
>  #ifndef __ASM_ARCH_HARDWARE_H
>  #define __ASM_ARCH_HARDWARE_H
>  
> -#ifndef __ASSEMBLY__
> -
>  extern unsigned int s3c2410_modify_misccr(unsigned int clr, unsigned int chg);
>  
> -#endif /* __ASSEMBLY__ */
> -
> -#include <linux/sizes.h>
> -#include <mach/map.h>
> -
>  #endif /* __ASM_ARCH_HARDWARE_H */
> diff --git a/arch/arm/mach-s3c24xx/include/mach/io.h b/arch/arm/mach-s3c24xx/include/mach/io.h
> index 3e8bff26cdd5..bcddf615adb6 100644
> --- a/arch/arm/mach-s3c24xx/include/mach/io.h
> +++ b/arch/arm/mach-s3c24xx/include/mach/io.h
> @@ -10,8 +10,7 @@
>  #ifndef __ASM_ARM_ARCH_IO_H
>  #define __ASM_ARM_ARCH_IO_H
>  
> -#include <mach/hardware.h>
> -
> +#include <plat/map-base.h>
>  
>  /*
>   * ISA style IO, for each machine to sort out mappings for,
> diff --git a/arch/arm/mach-s3c24xx/include/mach/regs-clock.h b/arch/arm/mach-s3c24xx/include/mach/regs-clock.h
> index 7ca3dd4f13c0..da4e7b3aeba6 100644
> --- a/arch/arm/mach-s3c24xx/include/mach/regs-clock.h
> +++ b/arch/arm/mach-s3c24xx/include/mach/regs-clock.h
> @@ -9,6 +9,8 @@
>  #ifndef __ASM_ARM_REGS_CLOCK
>  #define __ASM_ARM_REGS_CLOCK
>  
> +#include <mach/map.h>
> +

Why?  Nothing in this file uses anything from mach/map.h

>  #define S3C2410_CLKREG(x) ((x) + S3C24XX_VA_CLKPWR)
>  
>  #define S3C2410_PLLVAL(_m,_p,_s) ((_m) << 12 | ((_p) << 4) | ((_s)))
> diff --git a/arch/arm/mach-s3c24xx/include/mach/regs-gpio.h b/arch/arm/mach-s3c24xx/include/mach/regs-gpio.h
> index 594e967c0673..51827d5577b6 100644
> --- a/arch/arm/mach-s3c24xx/include/mach/regs-gpio.h
> +++ b/arch/arm/mach-s3c24xx/include/mach/regs-gpio.h
> @@ -10,6 +10,8 @@
>  #ifndef __ASM_ARCH_REGS_GPIO_H
>  #define __ASM_ARCH_REGS_GPIO_H
>  
> +#include <plat/map-s3c.h>
> +
>  #define S3C24XX_MISCCR		S3C24XX_GPIOREG2(0x80)
>  
>  /* general configuration options */
> diff --git a/arch/arm/mach-s3c24xx/include/mach/regs-irq.h b/arch/arm/mach-s3c24xx/include/mach/regs-irq.h
> index 8d8e669e3903..2921b48c56b2 100644
> --- a/arch/arm/mach-s3c24xx/include/mach/regs-irq.h
> +++ b/arch/arm/mach-s3c24xx/include/mach/regs-irq.h
> @@ -8,6 +8,8 @@
>  #ifndef ___ASM_ARCH_REGS_IRQ_H
>  #define ___ASM_ARCH_REGS_IRQ_H
>  
> +#include <plat/map-s3c.h>
> +
>  /* interrupt controller */
>  
>  #define S3C2410_IRQREG(x)   ((x) + S3C24XX_VA_IRQ)
> diff --git a/arch/arm/mach-s3c24xx/include/mach/regs-s3c2443-clock.h b/arch/arm/mach-s3c24xx/include/mach/regs-s3c2443-clock.h
> index 682759549e63..fefef7233f4b 100644
> --- a/arch/arm/mach-s3c24xx/include/mach/regs-s3c2443-clock.h
> +++ b/arch/arm/mach-s3c24xx/include/mach/regs-s3c2443-clock.h
> @@ -11,6 +11,7 @@
>  #define __ASM_ARM_REGS_S3C2443_CLOCK
>  
>  #include <linux/delay.h>
> +#include <plat/map-s3c.h>
>  
>  #define S3C2443_CLKREG(x)		((x) + S3C24XX_VA_CLKPWR)
>  
> diff --git a/arch/arm/mach-s3c24xx/include/mach/s3c2412.h b/arch/arm/mach-s3c24xx/include/mach/s3c2412.h
> index 4ff83f956cfb..1ae369c81beb 100644
> --- a/arch/arm/mach-s3c24xx/include/mach/s3c2412.h
> +++ b/arch/arm/mach-s3c24xx/include/mach/s3c2412.h
> @@ -8,6 +8,8 @@
>  #ifndef __ARCH_ARM_MACH_S3C24XX_S3C2412_H
>  #define __ARCH_ARM_MACH_S3C24XX_S3C2412_H __FILE__
>  
> +#include <plat/map-s3c.h>
> +
>  #define S3C2412_MEMREG(x)		(S3C24XX_VA_MEMCTRL + (x))
>  #define S3C2412_EBIREG(x)		(S3C2412_VA_EBI + (x))
>  
> diff --git a/arch/arm/mach-s3c24xx/mach-h1940.c b/arch/arm/mach-s3c24xx/mach-h1940.c
> index d56e3befa459..287e42fc1665 100644
> --- a/arch/arm/mach-s3c24xx/mach-h1940.c
> +++ b/arch/arm/mach-s3c24xx/mach-h1940.c
> @@ -48,6 +48,7 @@
>  #include <sound/uda1380.h>
>  
>  #include <linux/platform_data/fb-s3c2410.h>
> +#include <mach/map.h>
>  #include <mach/hardware.h>
>  #include <mach/regs-clock.h>
>  #include <mach/regs-gpio.h>
> diff --git a/arch/arm/mach-s3c24xx/mach-jive.c b/arch/arm/mach-s3c24xx/mach-jive.c
> index 3b33132b2334..8012c34bddd9 100644
> --- a/arch/arm/mach-s3c24xx/mach-jive.c
> +++ b/arch/arm/mach-s3c24xx/mach-jive.c
> @@ -31,6 +31,7 @@
>  #include <linux/platform_data/mtd-nand-s3c2410.h>
>  #include <linux/platform_data/i2c-s3c2410.h>
>  
> +#include <mach/hardware.h>
>  #include <mach/regs-gpio.h>
>  #include <linux/platform_data/fb-s3c2410.h>
>  #include <mach/gpio-samsung.h>
> diff --git a/arch/arm/mach-s3c24xx/mach-rx1950.c b/arch/arm/mach-s3c24xx/mach-rx1950.c
> index ee4a0992339f..f94884090fbe 100644
> --- a/arch/arm/mach-s3c24xx/mach-rx1950.c
> +++ b/arch/arm/mach-s3c24xx/mach-rx1950.c
> @@ -46,6 +46,7 @@
>  
>  #include <sound/uda1380.h>
>  
> +#include <mach/hardware.h>
>  #include <mach/regs-gpio.h>
>  #include <mach/gpio-samsung.h>
>  
> diff --git a/arch/arm/mach-s3c24xx/pm-h1940.S b/arch/arm/mach-s3c24xx/pm-h1940.S
> index a7bbe336ac6b..f9ee515e1cbe 100644
> --- a/arch/arm/mach-s3c24xx/pm-h1940.S
> +++ b/arch/arm/mach-s3c24xx/pm-h1940.S
> @@ -7,7 +7,6 @@
>  
>  #include <linux/linkage.h>
>  #include <asm/assembler.h>
> -#include <mach/hardware.h>
>  #include <mach/map.h>
>  
>  #include <mach/regs-gpio.h>
> diff --git a/arch/arm/mach-s3c24xx/regs-mem.h b/arch/arm/mach-s3c24xx/regs-mem.h
> index 2f3bc48b5890..5048ab8f06c2 100644
> --- a/arch/arm/mach-s3c24xx/regs-mem.h
> +++ b/arch/arm/mach-s3c24xx/regs-mem.h
> @@ -9,6 +9,8 @@
>  #ifndef __ARCH_ARM_MACH_S3C24XX_REGS_MEM_H
>  #define __ARCH_ARM_MACH_S3C24XX_REGS_MEM_H __FILE__
>  
> +#include <plat/map-s3c.h>
> +
>  #define S3C2410_MEMREG(x)		(S3C24XX_VA_MEMCTRL + (x))
>  
>  #define S3C2410_BWSCON			S3C2410_MEMREG(0x00)
> diff --git a/arch/arm/mach-s3c24xx/s3c2410.c b/arch/arm/mach-s3c24xx/s3c2410.c
> index 8427c150dd22..44bf3e1e77f1 100644
> --- a/arch/arm/mach-s3c24xx/s3c2410.c
> +++ b/arch/arm/mach-s3c24xx/s3c2410.c
> @@ -25,7 +25,7 @@
>  #include <asm/mach/map.h>
>  #include <asm/mach/irq.h>
>  
> -#include <mach/hardware.h>
> +#include <mach/map.h>
>  #include <mach/gpio-samsung.h>
>  #include <asm/irq.h>
>  #include <asm/system_misc.h>
> diff --git a/arch/arm/mach-s3c24xx/s3c2412.c b/arch/arm/mach-s3c24xx/s3c2412.c
> index 209f952a6c98..75648dcc2c1d 100644
> --- a/arch/arm/mach-s3c24xx/s3c2412.c
> +++ b/arch/arm/mach-s3c24xx/s3c2412.c
> @@ -29,7 +29,7 @@
>  #include <asm/irq.h>
>  #include <asm/system_misc.h>
>  
> -#include <mach/hardware.h>
> +#include <mach/map.h>
>  #include <mach/regs-clock.h>
>  #include <mach/regs-gpio.h>
>  
> diff --git a/arch/arm/mach-s3c24xx/s3c2416.c b/arch/arm/mach-s3c24xx/s3c2416.c
> index 1cdb7bd3e713..ef2eace605e6 100644
> --- a/arch/arm/mach-s3c24xx/s3c2416.c
> +++ b/arch/arm/mach-s3c24xx/s3c2416.c
> @@ -26,7 +26,7 @@
>  #include <asm/mach/map.h>
>  #include <asm/mach/irq.h>
>  
> -#include <mach/hardware.h>
> +#include <mach/map.h>
>  #include <mach/gpio-samsung.h>
>  #include <asm/proc-fns.h>
>  #include <asm/irq.h>
> diff --git a/arch/arm/mach-s3c24xx/s3c2443.c b/arch/arm/mach-s3c24xx/s3c2443.c
> index f404ecac4baf..00318ad994ff 100644
> --- a/arch/arm/mach-s3c24xx/s3c2443.c
> +++ b/arch/arm/mach-s3c24xx/s3c2443.c
> @@ -23,7 +23,7 @@
>  #include <asm/mach/map.h>
>  #include <asm/mach/irq.h>
>  
> -#include <mach/hardware.h>
> +#include <mach/map.h>
>  #include <mach/gpio-samsung.h>
>  #include <mach/irqs.h>
>  #include <asm/irq.h>
> diff --git a/arch/arm/mach-s3c24xx/s3c244x.c b/arch/arm/mach-s3c24xx/s3c244x.c
> index f5bd489bac85..0ca188d0ffe5 100644
> --- a/arch/arm/mach-s3c24xx/s3c244x.c
> +++ b/arch/arm/mach-s3c24xx/s3c244x.c
> @@ -25,7 +25,7 @@
>  #include <asm/mach/map.h>
>  #include <asm/mach/irq.h>
>  
> -#include <mach/hardware.h>
> +#include <mach/map.h>
>  #include <asm/irq.h>
>  
>  #include <mach/regs-clock.h>
> diff --git a/arch/arm/mach-s3c24xx/sleep-s3c2410.S b/arch/arm/mach-s3c24xx/sleep-s3c2410.S
> index 659f9eff9de2..e4f6f64e7826 100644
> --- a/arch/arm/mach-s3c24xx/sleep-s3c2410.S
> +++ b/arch/arm/mach-s3c24xx/sleep-s3c2410.S
> @@ -13,7 +13,6 @@
>  #include <linux/linkage.h>
>  #include <linux/serial_s3c.h>
>  #include <asm/assembler.h>
> -#include <mach/hardware.h>
>  #include <mach/map.h>
>  
>  #include <mach/regs-gpio.h>
> diff --git a/arch/arm/mach-s3c24xx/sleep-s3c2412.S b/arch/arm/mach-s3c24xx/sleep-s3c2412.S
> index c373f1ca862b..434f5082b2ed 100644
> --- a/arch/arm/mach-s3c24xx/sleep-s3c2412.S
> +++ b/arch/arm/mach-s3c24xx/sleep-s3c2412.S
> @@ -8,7 +8,6 @@
>  
>  #include <linux/linkage.h>
>  #include <asm/assembler.h>
> -#include <mach/hardware.h>
>  #include <mach/map.h>
>  
>  #include <mach/regs-irq.h>
> diff --git a/arch/arm/mach-s3c24xx/sleep.S b/arch/arm/mach-s3c24xx/sleep.S
> index f0f11ad60c52..4bda4a413584 100644
> --- a/arch/arm/mach-s3c24xx/sleep.S
> +++ b/arch/arm/mach-s3c24xx/sleep.S
> @@ -13,7 +13,6 @@
>  #include <linux/linkage.h>
>  #include <linux/serial_s3c.h>
>  #include <asm/assembler.h>
> -#include <mach/hardware.h>
>  #include <mach/map.h>
>  
>  #include <mach/regs-gpio.h>
> diff --git a/drivers/spi/spi-s3c24xx-regs.h b/drivers/spi/spi-s3c24xx-regs.h
> index 37b93ff7c7fe..b76d591eba8c 100644
> --- a/drivers/spi/spi-s3c24xx-regs.h
> +++ b/drivers/spi/spi-s3c24xx-regs.h
> @@ -8,6 +8,8 @@
>  #ifndef __ASM_ARCH_REGS_SPI_H
>  #define __ASM_ARCH_REGS_SPI_H
>  
> +#include <mach/map.h>
> +

If this is outside of arch/arm, it shouldn't need anything from
mach/map.h - mach/map.h is not for driver use.

>  #define S3C2410_SPCON		(0x00)
>  
>  #define S3C2410_SPCON_SMOD_DMA	(2 << 5)	/* DMA mode */
> diff --git a/drivers/usb/gadget/udc/s3c2410_udc_regs.h b/drivers/usb/gadget/udc/s3c2410_udc_regs.h
> index d8d2eeaca088..4df279342cdd 100644
> --- a/drivers/usb/gadget/udc/s3c2410_udc_regs.h
> +++ b/drivers/usb/gadget/udc/s3c2410_udc_regs.h
> @@ -6,6 +6,8 @@
>  #ifndef __ASM_ARCH_REGS_UDC_H
>  #define __ASM_ARCH_REGS_UDC_H
>  
> +#include <mach/map.h>
> +

If this is outside of arch/arm, it shouldn't need anything from
mach/map.h - mach/map.h is not for driver use.

>  #define S3C2410_USBDREG(x) (x)
>  
>  #define S3C2410_UDC_FUNC_ADDR_REG	S3C2410_USBDREG(0x0140)
> -- 
> 2.20.0
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
