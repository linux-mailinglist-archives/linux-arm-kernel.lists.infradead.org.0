Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0BEE1BF8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 15:13:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ECp7n5ebirLPAL7tFP8fId1ScXcBjRyPlm8ZYZ2Mdgs=; b=lQ7mBDGkPQo3qr
	/rGmJ3IKJOfHi24Oqj656DXqdy7dGSZ/+FNtqDY5BWWd76su2bV+myuOPb3QBFeZ7fsL+X1Ldk/+m
	uA4fXEXShQB7cLBdXYi2bcTCaGBw8LaOnUT39l4AuQnry0GWKKJolgxcWFOY/wl75EvWyj/n2zZ2y
	tQAUkWKoVJUUyOHpcQ/CY7vQ4Q92B0YIXNgYtQ3Rn/n3ueCgokl83KCjnJV2Rf2nKtJnoej00PHyt
	ctT9sI6RPTRagq6hlFmvamRjvOoIj3K3/R1l8ZI4SHNg5TzW9clJAMnaXAnfmjJiREeRHqUGsTPoO
	aT0isz1C7r4gmPh0r3Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNGSW-0004ss-Eg; Wed, 23 Oct 2019 13:13:52 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNGS6-0004gt-5l
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 13:13:28 +0000
Received: by mail-ed1-f66.google.com with SMTP id h2so15721028edn.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 06:13:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=o54Jyg7LaPMTM/R2ezpXAUg6vHkjUZaxwTxf8dd6jXk=;
 b=rOG8jhHktB2w//AiZD4olPS4OMwn/n+4REJfkuG9L+dww1uKUbfXHwrdU21xi7wcba
 uCtzVK40m1T4XuKameSEzH+2pcj4jYD6A5lububDqfuDFJ72f4m91zMCrIAxqn5zMqmR
 vKuj1ODu4ToaazVOV5lUepFd5C5YC0uThX9csI0q9l3rmvZGtufHlp+RmRi0Mn9VdgrA
 DtibI5FJTHdS0NAbwZdoAEsD40jyzLef73oxUAnEZ6WDEBO+j8eiM8LLLalma7l7DqRF
 OE0CeDQXq6emhKzsI6hkaNRNppxddYk8Xy8n1rJklF7eM2/xD7f9KgSPA5gpcwfDP0Fv
 Pdug==
X-Gm-Message-State: APjAAAVBQpr5RlxHDArPsINbjjXxYN0j6arzL/qmxcooKzG78hs51h5W
 vQbQIiG673CfkStC3rsxTHU=
X-Google-Smtp-Source: APXvYqxJH5rltespiv1WDhAborQbNiDE5+2CReq8AP71JjFfyUdkdzYR7L1/bvADJTpzB8Q1SXMf1g==
X-Received: by 2002:a17:906:704:: with SMTP id
 y4mr32582518ejb.259.1571836404632; 
 Wed, 23 Oct 2019 06:13:24 -0700 (PDT)
Received: from pi3 ([194.230.155.217])
 by smtp.googlemail.com with ESMTPSA id v5sm269620edd.90.2019.10.23.06.13.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 06:13:23 -0700 (PDT)
Date: Wed, 23 Oct 2019 15:13:21 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 28/36] fbdev: s3c2410fb: remove mach header dependency
Message-ID: <20191023131321.GH11048@pi3>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-28-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010203043.1241612-28-arnd@arndb.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_061326_303774_0AF7AA60 
X-CRM114-Status: GOOD (  19.61  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
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
Cc: linux-fbdev@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Kukjin Kim <kgene@kernel.org>, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 10:30:12PM +0200, Arnd Bergmann wrote:
> The s3c2410fb driver is too deeply intertwined with the s3c24xx
> platform code. Change it in a way that avoids the use of platform
> header files but having all interface data in a platform_data
> header, and the private register definitions next to the driver
> itself.
> 
> One ugly bit here is that the driver pokes directly into gpio
> registers, which are owned by another driver. Passing the
> mapped addresses in platform_data is somewhat suboptimal, but
> it is a small improvement over the previous version.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/arm/mach-s3c24xx/include/mach/fb.h       |  2 --
>  arch/arm/mach-s3c24xx/mach-amlm5900.c         |  7 ++--
>  arch/arm/mach-s3c24xx/mach-anubis.c           |  1 -
>  arch/arm/mach-s3c24xx/mach-at2440evb.c        |  3 +-
>  arch/arm/mach-s3c24xx/mach-bast.c             |  3 +-
>  arch/arm/mach-s3c24xx/mach-gta02.c            |  2 +-
>  arch/arm/mach-s3c24xx/mach-h1940.c            |  7 ++--
>  arch/arm/mach-s3c24xx/mach-jive.c             | 10 ++++--
>  arch/arm/mach-s3c24xx/mach-mini2440.c         |  9 +++--
>  arch/arm/mach-s3c24xx/mach-n30.c              |  3 +-
>  arch/arm/mach-s3c24xx/mach-osiris.c           |  1 -
>  arch/arm/mach-s3c24xx/mach-qt2410.c           |  3 +-
>  arch/arm/mach-s3c24xx/mach-rx1950.c           |  8 +++--
>  arch/arm/mach-s3c24xx/mach-rx3715.c           |  7 ++--
>  arch/arm/mach-s3c24xx/mach-smdk2413.c         |  3 +-
>  arch/arm/mach-s3c24xx/mach-smdk2416.c         |  1 -
>  arch/arm/mach-s3c24xx/mach-smdk2440.c         |  8 +++--
>  arch/arm/mach-s3c24xx/mach-smdk2443.c         |  3 +-
>  arch/arm/mach-s3c24xx/mach-vstms.c            |  3 +-
>  arch/arm/plat-samsung/devs.c                  |  2 +-
>  .../video/fbdev/s3c2410fb-regs-lcd.h          | 28 ++++------------
>  drivers/video/fbdev/s3c2410fb.c               | 16 +++++----
>  .../linux/platform_data}/fb-s3c2410.h         | 33 ++++++++++++++++++-
>  23 files changed, 98 insertions(+), 65 deletions(-)
>  delete mode 100644 arch/arm/mach-s3c24xx/include/mach/fb.h
>  rename arch/arm/mach-s3c24xx/include/mach/regs-lcd.h => drivers/video/fbdev/s3c2410fb-regs-lcd.h (84%)
>  rename {arch/arm/plat-samsung/include/plat => include/linux/platform_data}/fb-s3c2410.h (57%)
> 
> diff --git a/arch/arm/mach-s3c24xx/include/mach/fb.h b/arch/arm/mach-s3c24xx/include/mach/fb.h
> deleted file mode 100644
> index 4e539cb8b884..000000000000
> --- a/arch/arm/mach-s3c24xx/include/mach/fb.h
> +++ /dev/null
> @@ -1,2 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0 */
> -#include <plat/fb-s3c2410.h>
> diff --git a/arch/arm/mach-s3c24xx/mach-amlm5900.c b/arch/arm/mach-s3c24xx/mach-amlm5900.c
> index 40ad23b52bc0..ef6de1b1d0c6 100644
> --- a/arch/arm/mach-s3c24xx/mach-amlm5900.c
> +++ b/arch/arm/mach-s3c24xx/mach-amlm5900.c
> @@ -30,9 +30,8 @@
>  #include <mach/hardware.h>
>  #include <asm/irq.h>
>  #include <asm/mach-types.h>
> -#include <mach/fb.h>
> +#include <linux/platform_data/fb-s3c2410.h>
>  
> -#include <mach/regs-lcd.h>
>  #include <mach/regs-gpio.h>
>  #include <mach/gpio-samsung.h>
>  
> @@ -194,13 +193,17 @@ static struct s3c2410fb_mach_info __initdata amlm5900_fb_info = {
>  
>  	.gpccon =	0xaaaaaaaa,
>  	.gpccon_mask =	0xffffffff,
> +	.gpccon_reg =	S3C2410_GPCCON,
>  	.gpcup =	0x0000ffff,
>  	.gpcup_mask =	0xffffffff,
> +	.gpcup_reg =	S3C2410_GPCUP,
>  
>  	.gpdcon =	0xaaaaaaaa,
>  	.gpdcon_mask =	0xffffffff,
> +	.gpdcon_reg =	S3C2410_GPDCON,
>  	.gpdup =	0x0000ffff,
>  	.gpdup_mask =	0xffffffff,
> +	.gpdup_reg =	S3C2410_GPDUP,
>  };
>  #endif
>  
> diff --git a/arch/arm/mach-s3c24xx/mach-anubis.c b/arch/arm/mach-s3c24xx/mach-anubis.c
> index 072966dcad78..e1a73274e90b 100644
> --- a/arch/arm/mach-s3c24xx/mach-anubis.c
> +++ b/arch/arm/mach-s3c24xx/mach-anubis.c
> @@ -29,7 +29,6 @@
>  #include <asm/mach-types.h>
>  
>  #include <mach/regs-gpio.h>
> -#include <mach/regs-lcd.h>
>  #include <mach/gpio-samsung.h>
>  #include <linux/platform_data/mtd-nand-s3c2410.h>
>  #include <linux/platform_data/i2c-s3c2410.h>
> diff --git a/arch/arm/mach-s3c24xx/mach-at2440evb.c b/arch/arm/mach-s3c24xx/mach-at2440evb.c
> index b2199906e678..bfda6dd2a9d5 100644
> --- a/arch/arm/mach-s3c24xx/mach-at2440evb.c
> +++ b/arch/arm/mach-s3c24xx/mach-at2440evb.c
> @@ -25,12 +25,11 @@
>  #include <asm/mach/irq.h>
>  
>  #include <mach/hardware.h>
> -#include <mach/fb.h>
> +#include <linux/platform_data/fb-s3c2410.h>
>  #include <asm/irq.h>
>  #include <asm/mach-types.h>
>  
>  #include <mach/regs-gpio.h>
> -#include <mach/regs-lcd.h>
>  #include <mach/gpio-samsung.h>
>  #include <linux/platform_data/mtd-nand-s3c2410.h>
>  #include <linux/platform_data/i2c-s3c2410.h>
> diff --git a/arch/arm/mach-s3c24xx/mach-bast.c b/arch/arm/mach-s3c24xx/mach-bast.c
> index a7c3955ae8f6..cc941b5030ea 100644
> --- a/arch/arm/mach-s3c24xx/mach-bast.c
> +++ b/arch/arm/mach-s3c24xx/mach-bast.c
> @@ -40,10 +40,9 @@
>  #include <asm/mach/irq.h>
>  #include <asm/mach-types.h>
>  
> -#include <mach/fb.h>
>  #include <mach/hardware.h>
> +#include <linux/platform_data/fb-s3c2410.h>
>  #include <mach/regs-gpio.h>
> -#include <mach/regs-lcd.h>
>  #include <mach/gpio-samsung.h>
>  
>  #include <plat/cpu.h>
> diff --git a/arch/arm/mach-s3c24xx/mach-gta02.c b/arch/arm/mach-s3c24xx/mach-gta02.c
> index 61b8c6badeb8..1e42782dbd30 100644
> --- a/arch/arm/mach-s3c24xx/mach-gta02.c
> +++ b/arch/arm/mach-s3c24xx/mach-gta02.c
> @@ -57,8 +57,8 @@
>  #include <linux/platform_data/touchscreen-s3c2410.h>
>  #include <linux/platform_data/usb-ohci-s3c2410.h>
>  #include <linux/platform_data/usb-s3c2410_udc.h>
> +#include <linux/platform_data/fb-s3c2410.h>
>  
> -#include <mach/fb.h>
>  #include <mach/hardware.h>
>  #include <mach/regs-gpio.h>
>  #include <mach/regs-irq.h>
> diff --git a/arch/arm/mach-s3c24xx/mach-h1940.c b/arch/arm/mach-s3c24xx/mach-h1940.c
> index 446891e23511..d56e3befa459 100644
> --- a/arch/arm/mach-s3c24xx/mach-h1940.c
> +++ b/arch/arm/mach-s3c24xx/mach-h1940.c
> @@ -47,11 +47,10 @@
>  
>  #include <sound/uda1380.h>
>  
> -#include <mach/fb.h>
> +#include <linux/platform_data/fb-s3c2410.h>
>  #include <mach/hardware.h>
>  #include <mach/regs-clock.h>
>  #include <mach/regs-gpio.h>
> -#include <mach/regs-lcd.h>
>  #include <mach/gpio-samsung.h>
>  
>  #include <plat/cpu.h>
> @@ -211,12 +210,16 @@ static struct s3c2410fb_mach_info h1940_fb_info __initdata = {
>  	.lpcsel =	0x02,
>  	.gpccon =	0xaa940659,
>  	.gpccon_mask =	0xffffc0f0,
> +	.gpccon_reg =	S3C2410_GPCCON,
>  	.gpcup =	0x0000ffff,
>  	.gpcup_mask =	0xffffffff,
> +	.gpcup_reg =	S3C2410_GPCUP,
>  	.gpdcon =	0xaa84aaa0,
>  	.gpdcon_mask =	0xffffffff,
> +	.gpdcon_reg =	S3C2410_GPDCON,
>  	.gpdup =	0x0000faff,
>  	.gpdup_mask =	0xffffffff,
> +	.gpdup_reg =	S3C2410_GPDUP,
>  };
>  
>  static int power_supply_init(struct device *dev)
> diff --git a/arch/arm/mach-s3c24xx/mach-jive.c b/arch/arm/mach-s3c24xx/mach-jive.c
> index 885e8f12e4b9..3b33132b2334 100644
> --- a/arch/arm/mach-s3c24xx/mach-jive.c
> +++ b/arch/arm/mach-s3c24xx/mach-jive.c
> @@ -32,8 +32,7 @@
>  #include <linux/platform_data/i2c-s3c2410.h>
>  
>  #include <mach/regs-gpio.h>
> -#include <mach/regs-lcd.h>
> -#include <mach/fb.h>
> +#include <linux/platform_data/fb-s3c2410.h>
>  #include <mach/gpio-samsung.h>
>  
>  #include <asm/mach-types.h>
> @@ -321,6 +320,7 @@ static struct s3c2410fb_mach_info jive_lcd_config = {
>  	 * data. */
>  
>  	.gpcup		= (0xf << 1) | (0x3f << 10),
> +	.gpcup_reg =	S3C2410_GPCUP,

Nits: indentation before/after '=' looks wrong. Tab should be
before '=', one space after.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
