Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37261D7828
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 16:14:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GG19n6xagN2ugAL963l8KCq88f/syzbb0rTx05pd+sQ=; b=cZQGkUj65jfbCe
	z5cqF9Y7Ani7G80B+s5E2IIEp/uPtR8UvypW8Q8DECkyOVlQjJKha+fjmmYFEOqj/6581Q0ZkX6FX
	u5XtKhTOd/JLVdCUAHKem+lNUTuFKvV2r6Sn4Hj3MWuhlF6U1YyAnq5V6eSKb7TnbqeI/UsMj1Cym
	PEo/Ii8plHuSPhYPqOs+wh957r92jQESRGO5VdjNWa68LSIXXdIdOLESbJtrUpk9BCRWiQVgwk3oS
	v9z0KBt7lIK44ojhjlqCttC19YDV27cKGhWCruSc8JQpAHLfJhnr9YY47L58C1111JTUIb5B07uSR
	akddscq+/a+3Ulrm6KOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKNaW-0002s4-8v; Tue, 15 Oct 2019 14:14:12 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKNZw-0002c5-TW
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 14:13:40 +0000
Received: by mail-vs1-xe44.google.com with SMTP id s7so13263680vsl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 07:13:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=w/RCY4GLlbWydxXCB+Mw3Ptt0w5yAq9AlkuwapJwfpg=;
 b=FhR2ket7J/xpKMufg1DK6Q92neuymC1xiLnKbkOzfn57QCU1qO6s+ici/6gyu28d8B
 l0VSMzzs6E0hSN8Y3iNUaKiMBvj6FOfMmJM3lbNh4QFy7gGF83qfFzbzu+g1P8Z4bfjV
 EarCWIoV76WnmTpS1OSsQ/kEXJL6axKE0ibdMl2CvdRdqQsVgPz8DiTp+U5j0901aViW
 ES1+D+3gNwdYv6NyXU/zzZOF0HpU683yfKwFOEJ5AfDZZrRRqnQXv9k66h4BvdV9yqM6
 jWy29bFe6izjuSVS7n73KLAIU6Um9phtknYV80OROCydbgzWxgAL6wXTc+BxRvkgimYD
 gL+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=w/RCY4GLlbWydxXCB+Mw3Ptt0w5yAq9AlkuwapJwfpg=;
 b=KNzl8eLK3DD75HHiNbevFUiwvHB9lnGztakQJR//Nyyzi3V3qlmWZMlKZxxKeYtv5A
 5unxye4a9960MvUCLxrenhHMsdwNYzD5h4AEndPwWgpmTS4E6STMtowh9Bk5gVNwXzkD
 DzZf62MH/gXQ5+1iTfF/0oIKP8vzvDy8UyrPZz1CKHykbS9UaH+VSIu4AjX6ThX4zdde
 c6U6NekwvS5yMW8HYuAaxqpd19oYToeIAmBKOf/SL+RsN9LOGUzSRZIsPnuA+LTy1nsS
 wIek3vur8stW7n9mYVb9vvJ+yqbdD+Os5CUxbrbXlo53rwk6VlbFLfCyKQtQtJW8sFb2
 rIQA==
X-Gm-Message-State: APjAAAUPQ+yW5ILd5cYBElf1WNMsISXAXclDIRE0idJr5i3722oPyV8Y
 FzkmkA2/eOGkY82u93sndRaPSbes4XWXNBeO9R70Ww==
X-Google-Smtp-Source: APXvYqzZXcCuaO9tik5LsFinEq3ogWhV9MFtqOVWRSJuuJUwjFJdFJp3+ZM53BbrqxgTkSx+7op8ey4r/q8+CTUy7TY=
X-Received: by 2002:a67:8bc4:: with SMTP id n187mr4858829vsd.35.1571148814878; 
 Tue, 15 Oct 2019 07:13:34 -0700 (PDT)
MIME-Version: 1.0
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-23-arnd@arndb.de>
In-Reply-To: <20191010203043.1241612-23-arnd@arndb.de>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 15 Oct 2019 16:12:58 +0200
Message-ID: <CAPDyKFqwShPvcPmfe5P7-fqqjaeJdZV=Ak1i0-1_xJiBrhrVCg@mail.gmail.com>
Subject: Re: [PATCH 23/36] ARM: s3c: move s3cmci pinctrl handling into board
 files
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_071337_001638_30B03716 
X-CRM114-Status: GOOD (  19.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
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
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Ben Dooks <ben-linux@fluff.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 10 Oct 2019 at 22:47, Arnd Bergmann <arnd@arndb.de> wrote:
>
> Rather than call the internal s3c_gpio_cfgall_range() function
> through a platform header, move the code into the set_power
> callback that is already exported by the board, and add
> a default implementation.
>
> In DT mode, the code already does not set the pin config,
> so nothing changes there.
>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

This looks good to me!

Acked-by: Ulf Hansson <ulf.hansson@linaro.org>

Kind regards
Uffe


> ---
>  arch/arm/mach-s3c24xx/include/mach/pm-core.h |  1 +
>  arch/arm/mach-s3c24xx/mach-amlm5900.c        | 15 +++++
>  arch/arm/mach-s3c24xx/mach-at2440evb.c       | 10 ++-
>  arch/arm/mach-s3c24xx/mach-gta02.c           | 15 +++++
>  arch/arm/mach-s3c24xx/mach-h1940.c           |  8 +++
>  arch/arm/mach-s3c24xx/mach-mini2440.c        |  9 ++-
>  arch/arm/mach-s3c24xx/mach-n30.c             |  9 +++
>  arch/arm/mach-s3c24xx/mach-qt2410.c          | 15 +++++
>  arch/arm/mach-s3c24xx/mach-rx1950.c          |  9 +++
>  arch/arm/mach-s3c24xx/mach-tct_hammer.c      | 15 +++++
>  arch/arm/plat-samsung/devs.c                 | 29 ++++++++
>  drivers/mmc/host/s3cmci.c                    | 69 +++++---------------
>  include/linux/platform_data/mmc-s3cmci.h     |  2 +
>  13 files changed, 152 insertions(+), 54 deletions(-)
>
> diff --git a/arch/arm/mach-s3c24xx/include/mach/pm-core.h b/arch/arm/mach-s3c24xx/include/mach/pm-core.h
> index 8f87606c4cdc..a22b4a37ee57 100644
> --- a/arch/arm/mach-s3c24xx/include/mach/pm-core.h
> +++ b/arch/arm/mach-s3c24xx/include/mach/pm-core.h
> @@ -12,6 +12,7 @@
>
>  #include "regs-clock.h"
>  #include "regs-irq.h"
> +#include <mach/irqs.h>
>
>  static inline void s3c_pm_debug_init_uart(void)
>  {
> diff --git a/arch/arm/mach-s3c24xx/mach-amlm5900.c b/arch/arm/mach-s3c24xx/mach-amlm5900.c
> index 9a9daf526d0c..40ad23b52bc0 100644
> --- a/arch/arm/mach-s3c24xx/mach-amlm5900.c
> +++ b/arch/arm/mach-s3c24xx/mach-amlm5900.c
> @@ -13,6 +13,7 @@
>  #include <linux/list.h>
>  #include <linux/timer.h>
>  #include <linux/init.h>
> +#include <linux/gpio/machine.h>
>  #include <linux/gpio.h>
>  #include <linux/device.h>
>  #include <linux/platform_device.h>
> @@ -124,6 +125,19 @@ static struct s3c2410_uartcfg amlm5900_uartcfgs[] = {
>         }
>  };
>
> +static struct gpiod_lookup_table amlm5900_mmc_gpio_table = {
> +       .dev_id = "s3c2410-sdi",
> +       .table = {
> +               /* bus pins */
> +               GPIO_LOOKUP_IDX("GPIOE",  5, "bus", 0, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE",  6, "bus", 1, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE",  7, "bus", 2, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE",  8, "bus", 3, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE",  9, "bus", 4, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE", 10, "bus", 5, GPIO_ACTIVE_HIGH),
> +               { },
> +       },
> +};
>
>  static struct platform_device *amlm5900_devices[] __initdata = {
>  #ifdef CONFIG_FB_S3C2410
> @@ -219,6 +233,7 @@ static void __init amlm5900_init(void)
>         s3c24xx_fb_set_platdata(&amlm5900_fb_info);
>  #endif
>         s3c_i2c0_set_platdata(NULL);
> +       gpiod_add_lookup_table(&amlm5900_mmc_gpio_table);
>         platform_add_devices(amlm5900_devices, ARRAY_SIZE(amlm5900_devices));
>  }
>
> diff --git a/arch/arm/mach-s3c24xx/mach-at2440evb.c b/arch/arm/mach-s3c24xx/mach-at2440evb.c
> index 58c5ef3cf1d7..3a793aaf2cba 100644
> --- a/arch/arm/mach-s3c24xx/mach-at2440evb.c
> +++ b/arch/arm/mach-s3c24xx/mach-at2440evb.c
> @@ -136,7 +136,7 @@ static struct platform_device at2440evb_device_eth = {
>  };
>
>  static struct s3c24xx_mci_pdata at2440evb_mci_pdata __initdata = {
> -       /* Intentionally left blank */
> +       .set_power = s3c24xx_mci_def_set_power,
>  };
>
>  static struct gpiod_lookup_table at2440evb_mci_gpio_table = {
> @@ -144,10 +144,18 @@ static struct gpiod_lookup_table at2440evb_mci_gpio_table = {
>         .table = {
>                 /* Card detect S3C2410_GPG(10) */
>                 GPIO_LOOKUP("GPG", 10, "cd", GPIO_ACTIVE_LOW),
> +               /* bus pins */
> +               GPIO_LOOKUP_IDX("GPIOE",  5, "bus", 0, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE",  6, "bus", 1, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE",  7, "bus", 2, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE",  8, "bus", 3, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE",  9, "bus", 4, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE", 10, "bus", 5, GPIO_ACTIVE_HIGH),
>                 { },
>         },
>  };
>
> +
>  /* 7" LCD panel */
>
>  static struct s3c2410fb_display at2440evb_lcd_cfg __initdata = {
> diff --git a/arch/arm/mach-s3c24xx/mach-gta02.c b/arch/arm/mach-s3c24xx/mach-gta02.c
> index 1ca0460d82f4..61b8c6badeb8 100644
> --- a/arch/arm/mach-s3c24xx/mach-gta02.c
> +++ b/arch/arm/mach-s3c24xx/mach-gta02.c
> @@ -489,6 +489,20 @@ static struct platform_device gta02_audio = {
>         .id = -1,
>  };
>
> +static struct gpiod_lookup_table gta02_mmc_gpio_table = {
> +       .dev_id = "s3c2410-sdi",
> +       .table = {
> +               /* bus pins */
> +               GPIO_LOOKUP_IDX("GPIOE",  5, "bus", 0, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE",  6, "bus", 1, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE",  7, "bus", 2, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE",  8, "bus", 3, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE",  9, "bus", 4, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE", 10, "bus", 5, GPIO_ACTIVE_HIGH),
> +               { },
> +       },
> +};
> +
>  static void __init gta02_map_io(void)
>  {
>         s3c24xx_init_io(gta02_iodesc, ARRAY_SIZE(gta02_iodesc));
> @@ -545,6 +559,7 @@ static void __init gta02_machine_init(void)
>                               S3C_GPIO_PULL_NONE);
>
>         gpiod_add_lookup_table(&gta02_audio_gpio_table);
> +       gpiod_add_lookup_table(&gta02_mmc_gpio_table);
>         platform_add_devices(gta02_devices, ARRAY_SIZE(gta02_devices));
>         pm_power_off = gta02_poweroff;
>
> diff --git a/arch/arm/mach-s3c24xx/mach-h1940.c b/arch/arm/mach-s3c24xx/mach-h1940.c
> index 11f705fb5e32..24f785da7659 100644
> --- a/arch/arm/mach-s3c24xx/mach-h1940.c
> +++ b/arch/arm/mach-s3c24xx/mach-h1940.c
> @@ -462,6 +462,7 @@ static void h1940_set_mmc_power(unsigned char power_mode, unsigned short vdd)
>  static struct s3c24xx_mci_pdata h1940_mmc_cfg __initdata = {
>         .set_power     = h1940_set_mmc_power,
>         .ocr_avail     = MMC_VDD_32_33,
> +       .set_power = s3c24xx_mci_def_set_power,
>  };
>
>  static struct gpiod_lookup_table h1940_mmc_gpio_table = {
> @@ -471,6 +472,13 @@ static struct gpiod_lookup_table h1940_mmc_gpio_table = {
>                 GPIO_LOOKUP("GPF", 5, "cd", GPIO_ACTIVE_LOW),
>                 /* Write protect S3C2410_GPH(8) */
>                 GPIO_LOOKUP("GPH", 8, "wp", GPIO_ACTIVE_LOW),
> +               /* bus pins */
> +               GPIO_LOOKUP_IDX("GPIOE",  5, "bus", 0, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE",  6, "bus", 1, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE",  7, "bus", 2, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE",  8, "bus", 3, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE",  9, "bus", 4, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE", 10, "bus", 5, GPIO_ACTIVE_HIGH),
>                 { },
>         },
>  };
> diff --git a/arch/arm/mach-s3c24xx/mach-mini2440.c b/arch/arm/mach-s3c24xx/mach-mini2440.c
> index 894d43ff94f1..5c000efdf0e8 100644
> --- a/arch/arm/mach-s3c24xx/mach-mini2440.c
> +++ b/arch/arm/mach-s3c24xx/mach-mini2440.c
> @@ -236,7 +236,7 @@ static struct s3c2410fb_mach_info mini2440_fb_info __initdata = {
>
>  static struct s3c24xx_mci_pdata mini2440_mmc_cfg __initdata = {
>         .wprotect_invert        = 1,
> -       .set_power              = NULL,
> +       .set_power              = s3c24xx_mci_def_set_power,
>         .ocr_avail              = MMC_VDD_32_33|MMC_VDD_33_34,
>  };
>
> @@ -247,6 +247,13 @@ static struct gpiod_lookup_table mini2440_mmc_gpio_table = {
>                 GPIO_LOOKUP("GPG", 8, "cd", GPIO_ACTIVE_LOW),
>                 /* Write protect S3C2410_GPH(8) */
>                 GPIO_LOOKUP("GPH", 8, "wp", GPIO_ACTIVE_HIGH),
> +               /* bus pins */
> +               GPIO_LOOKUP_IDX("GPIOE",  5, "bus", 0, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE",  6, "bus", 1, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE",  7, "bus", 2, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE",  8, "bus", 3, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE",  9, "bus", 4, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE", 10, "bus", 5, GPIO_ACTIVE_HIGH),
>                 { },
>         },
>  };
> diff --git a/arch/arm/mach-s3c24xx/mach-n30.c b/arch/arm/mach-s3c24xx/mach-n30.c
> index 5f5ca4b7015c..8d7ad61e9930 100644
> --- a/arch/arm/mach-s3c24xx/mach-n30.c
> +++ b/arch/arm/mach-s3c24xx/mach-n30.c
> @@ -339,6 +339,8 @@ static struct s3c2410fb_mach_info n30_fb_info __initdata = {
>
>  static void n30_sdi_set_power(unsigned char power_mode, unsigned short vdd)
>  {
> +       s3c24xx_mci_def_set_power(power_mode, vdd);
> +
>         switch (power_mode) {
>         case MMC_POWER_ON:
>         case MMC_POWER_UP:
> @@ -364,6 +366,13 @@ static struct gpiod_lookup_table n30_mci_gpio_table = {
>                 /* Write protect S3C2410_GPG(10) */
>                 GPIO_LOOKUP("GPG", 10, "wp", GPIO_ACTIVE_LOW),
>                 { },
> +               /* bus pins */
> +               GPIO_LOOKUP_IDX("GPIOE",  5, "bus", 0, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE",  6, "bus", 1, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE",  7, "bus", 2, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE",  8, "bus", 3, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE",  9, "bus", 4, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE", 10, "bus", 5, GPIO_ACTIVE_HIGH),
>         },
>  };
>
> diff --git a/arch/arm/mach-s3c24xx/mach-qt2410.c b/arch/arm/mach-s3c24xx/mach-qt2410.c
> index 6686f02a3f4f..9b47b8434f10 100644
> --- a/arch/arm/mach-s3c24xx/mach-qt2410.c
> +++ b/arch/arm/mach-s3c24xx/mach-qt2410.c
> @@ -219,6 +219,20 @@ static struct gpiod_lookup_table qt2410_spi_gpiod_table = {
>         },
>  };
>
> +static struct gpiod_lookup_table qt2410_mmc_gpiod_table = {
> +       .dev_id = "s3c2410-sdi",
> +       .table = {
> +               /* bus pins */
> +               GPIO_LOOKUP_IDX("GPIOE",  5, "bus", 0, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE",  6, "bus", 1, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE",  7, "bus", 2, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE",  8, "bus", 3, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE",  9, "bus", 4, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE", 10, "bus", 5, GPIO_ACTIVE_HIGH),
> +               { },
> +       },
> +};
> +
>  /* Board devices */
>
>  static struct platform_device *qt2410_devices[] __initdata = {
> @@ -342,6 +356,7 @@ static void __init qt2410_machine_init(void)
>         s3c_gpio_cfgall_range(S3C2410_GPE(0), 5, S3C_GPIO_SFN(2),
>                               S3C_GPIO_PULL_NONE);
>         gpiod_add_lookup_table(&qt2410_spi_gpiod_table);
> +       gpiod_add_lookup_table(&qt2410_mmc_gpiod_table);
>         platform_add_devices(qt2410_devices, ARRAY_SIZE(qt2410_devices));
>         s3c_pm_init();
>  }
> diff --git a/arch/arm/mach-s3c24xx/mach-rx1950.c b/arch/arm/mach-s3c24xx/mach-rx1950.c
> index 4eeede398775..820e626f5129 100644
> --- a/arch/arm/mach-s3c24xx/mach-rx1950.c
> +++ b/arch/arm/mach-s3c24xx/mach-rx1950.c
> @@ -545,6 +545,8 @@ static struct platform_device rx1950_backlight = {
>
>  static void rx1950_set_mmc_power(unsigned char power_mode, unsigned short vdd)
>  {
> +       s3c24xx_mci_def_set_power(power_mode, vdd);
> +
>         switch (power_mode) {
>         case MMC_POWER_OFF:
>                 gpio_direction_output(S3C2410_GPJ(1), 0);
> @@ -570,6 +572,13 @@ static struct gpiod_lookup_table rx1950_mmc_gpio_table = {
>                 GPIO_LOOKUP("GPF", 5, "cd", GPIO_ACTIVE_LOW),
>                 /* Write protect S3C2410_GPH(8) */
>                 GPIO_LOOKUP("GPH", 8, "wp", GPIO_ACTIVE_LOW),
> +               /* bus pins */
> +               GPIO_LOOKUP_IDX("GPIOE",  5, "bus", 0, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE",  6, "bus", 1, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE",  7, "bus", 2, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE",  8, "bus", 3, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE",  9, "bus", 4, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE", 10, "bus", 5, GPIO_ACTIVE_HIGH),
>                 { },
>         },
>  };
> diff --git a/arch/arm/mach-s3c24xx/mach-tct_hammer.c b/arch/arm/mach-s3c24xx/mach-tct_hammer.c
> index 8d8ddd6ea305..d6dbbe6759bc 100644
> --- a/arch/arm/mach-s3c24xx/mach-tct_hammer.c
> +++ b/arch/arm/mach-s3c24xx/mach-tct_hammer.c
> @@ -7,6 +7,7 @@
>  // derived from linux/arch/arm/mach-s3c2410/mach-bast.c, written by
>  // Ben Dooks <ben@simtec.co.uk>
>
> +#include <linux/gpio/machine.h>
>  #include <linux/kernel.h>
>  #include <linux/types.h>
>  #include <linux/interrupt.h>
> @@ -103,6 +104,19 @@ static struct s3c2410_uartcfg tct_hammer_uartcfgs[] = {
>         }
>  };
>
> +static struct gpiod_lookup_table tct_hammer_mmc_gpio_table = {
> +       .dev_id = "s3c2410-sdi",
> +       .table = {
> +               /* bus pins */
> +               GPIO_LOOKUP_IDX("GPIOE",  5, "bus", 0, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE",  6, "bus", 1, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE",  7, "bus", 2, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE",  8, "bus", 3, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE",  9, "bus", 4, GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP_IDX("GPIOE", 10, "bus", 5, GPIO_ACTIVE_HIGH),
> +               { },
> +       },
> +};
>
>  static struct platform_device *tct_hammer_devices[] __initdata = {
>         &s3c_device_adc,
> @@ -131,6 +145,7 @@ static void __init tct_hammer_init_time(void)
>  static void __init tct_hammer_init(void)
>  {
>         s3c_i2c0_set_platdata(NULL);
> +       gpiod_add_lookup_table(&tct_hammer_mmc_gpio_table);
>         platform_add_devices(tct_hammer_devices, ARRAY_SIZE(tct_hammer_devices));
>  }
>
> diff --git a/arch/arm/plat-samsung/devs.c b/arch/arm/plat-samsung/devs.c
> index ddd90f0bb380..c0739bda060b 100644
> --- a/arch/arm/plat-samsung/devs.c
> +++ b/arch/arm/plat-samsung/devs.c
> @@ -5,6 +5,7 @@
>  //
>  // Base SAMSUNG platform device definitions
>
> +#include <linux/gpio.h>
>  #include <linux/kernel.h>
>  #include <linux/types.h>
>  #include <linux/interrupt.h>
> @@ -40,6 +41,8 @@
>  #include <mach/dma.h>
>  #include <mach/irqs.h>
>  #include <mach/map.h>
> +#include <mach/gpio-samsung.h>
> +#include <plat/gpio-cfg.h>
>  #include <mach/regs-s3c2443-clock.h>
>
>  #include <plat/cpu.h>
> @@ -833,16 +836,42 @@ struct platform_device s3c_device_rtc = {
>  /* SDI */
>
>  #ifdef CONFIG_PLAT_S3C24XX
> +void s3c24xx_mci_def_set_power(unsigned char power_mode, unsigned short vdd)
> +{
> +       switch (power_mode) {
> +       case MMC_POWER_ON:
> +       case MMC_POWER_UP:
> +               /* Configure GPE5...GPE10 pins in SD mode */
> +               s3c_gpio_cfgall_range(S3C2410_GPE(5), 6, S3C_GPIO_SFN(2),
> +                                     S3C_GPIO_PULL_NONE);
> +               break;
> +
> +       case MMC_POWER_OFF:
> +       default:
> +               gpio_direction_output(S3C2410_GPE(5), 0);
> +               break;
> +       }
> +}
> +
>  static struct resource s3c_sdi_resource[] = {
>         [0] = DEFINE_RES_MEM(S3C24XX_PA_SDI, S3C24XX_SZ_SDI),
>         [1] = DEFINE_RES_IRQ(IRQ_SDI),
>  };
>
> +static struct s3c24xx_mci_pdata s3cmci_def_pdata = {
> +       /* This is currently here to avoid a number of if (host->pdata)
> +        * checks. Any zero fields to ensure reasonable defaults are picked. */
> +       .no_wprotect = 1,
> +       .no_detect = 1,
> +       .set_power = s3c24xx_mci_def_set_power,
> +};
> +
>  struct platform_device s3c_device_sdi = {
>         .name           = "s3c2410-sdi",
>         .id             = -1,
>         .num_resources  = ARRAY_SIZE(s3c_sdi_resource),
>         .resource       = s3c_sdi_resource,
> +       .dev.platform_data = &s3cmci_def_pdata,
>  };
>
>  void __init s3c24xx_mci_set_platdata(struct s3c24xx_mci_pdata *pdata)
> diff --git a/drivers/mmc/host/s3cmci.c b/drivers/mmc/host/s3cmci.c
> index bce9c33bc4b5..c2b46640a78b 100644
> --- a/drivers/mmc/host/s3cmci.c
> +++ b/drivers/mmc/host/s3cmci.c
> @@ -25,9 +25,7 @@
>  #include <linux/of_device.h>
>  #include <linux/mmc/slot-gpio.h>
>
> -#include <plat/gpio-cfg.h>
>  #include <mach/dma.h>
> -#include <mach/gpio-samsung.h>
>
>  #include <linux/platform_data/mmc-s3cmci.h>
>
> @@ -307,7 +305,8 @@ static inline void clear_imask(struct s3cmci_host *host)
>  static void s3cmci_check_sdio_irq(struct s3cmci_host *host)
>  {
>         if (host->sdio_irqen) {
> -               if (gpio_get_value(S3C2410_GPE(8)) == 0) {
> +               if (host->pdata->bus[3] &&
> +                   gpiod_get_value(host->pdata->bus[3]) == 0) {
>                         pr_debug("%s: signalling irq\n", __func__);
>                         mmc_signal_sdio_irq(host->mmc);
>                 }
> @@ -1213,33 +1212,20 @@ static void s3cmci_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
>         switch (ios->power_mode) {
>         case MMC_POWER_ON:
>         case MMC_POWER_UP:
> -               /* Configure GPE5...GPE10 pins in SD mode */
> -               if (!host->pdev->dev.of_node)
> -                       s3c_gpio_cfgall_range(S3C2410_GPE(5), 6, S3C_GPIO_SFN(2),
> -                                             S3C_GPIO_PULL_NONE);
> -
> -               if (host->pdata->set_power)
> -                       host->pdata->set_power(ios->power_mode, ios->vdd);
> -
>                 if (!host->is2440)
>                         mci_con |= S3C2410_SDICON_FIFORESET;
> -
>                 break;
>
>         case MMC_POWER_OFF:
>         default:
> -               if (!host->pdev->dev.of_node)
> -                       gpio_direction_output(S3C2410_GPE(5), 0);
> -
>                 if (host->is2440)
>                         mci_con |= S3C2440_SDICON_SDRESET;
> -
> -               if (host->pdata->set_power)
> -                       host->pdata->set_power(ios->power_mode, ios->vdd);
> -
>                 break;
>         }
>
> +       if (host->pdata->set_power)
> +               host->pdata->set_power(ios->power_mode, ios->vdd);
> +
>         s3cmci_set_clk(host, ios);
>
>         /* Set CLOCK_ENABLE */
> @@ -1317,13 +1303,6 @@ static const struct mmc_host_ops s3cmci_ops = {
>         .enable_sdio_irq = s3cmci_enable_sdio_irq,
>  };
>
> -static struct s3c24xx_mci_pdata s3cmci_def_pdata = {
> -       /* This is currently here to avoid a number of if (host->pdata)
> -        * checks. Any zero fields to ensure reasonable defaults are picked. */
> -        .no_wprotect = 1,
> -        .no_detect = 1,
> -};
> -
>  #ifdef CONFIG_ARM_S3C24XX_CPUFREQ
>
>  static int s3cmci_cpufreq_transition(struct notifier_block *nb,
> @@ -1477,24 +1456,21 @@ static int s3cmci_probe_pdata(struct s3cmci_host *host)
>         int i, ret;
>
>         host->is2440 = platform_get_device_id(pdev)->driver_data;
> +       pdata = pdev->dev.platform_data;
> +       if (!pdata) {
> +               dev_err(&pdev->dev, "need platform data");
> +               return -ENXIO;
> +       }
>
> -       for (i = S3C2410_GPE(5); i <= S3C2410_GPE(10); i++) {
> -               ret = gpio_request(i, dev_name(&pdev->dev));
> -               if (ret) {
> +       for (i = 0; i < 6; i++) {
> +               pdata->bus[i] = devm_gpiod_get_index(&pdev->dev, "bus", i,
> +                                                    GPIOD_OUT_LOW);
> +               if (IS_ERR(pdata->bus[i])) {
>                         dev_err(&pdev->dev, "failed to get gpio %d\n", i);
> -
> -                       for (i--; i >= S3C2410_GPE(5); i--)
> -                               gpio_free(i);
> -
> -                       return ret;
> +                       return PTR_ERR(pdata->bus[i]);
>                 }
>         }
>
> -       if (!pdev->dev.platform_data)
> -               pdev->dev.platform_data = &s3cmci_def_pdata;
> -
> -       pdata = pdev->dev.platform_data;
> -
>         if (pdata->no_wprotect)
>                 mmc->caps2 |= MMC_CAP2_NO_WRITE_PROTECT;
>
> @@ -1549,7 +1525,6 @@ static int s3cmci_probe(struct platform_device *pdev)
>         struct s3cmci_host *host;
>         struct mmc_host *mmc;
>         int ret;
> -       int i;
>
>         mmc = mmc_alloc_host(sizeof(struct s3cmci_host), &pdev->dev);
>         if (!mmc) {
> @@ -1593,7 +1568,7 @@ static int s3cmci_probe(struct platform_device *pdev)
>                         "failed to get io memory region resource.\n");
>
>                 ret = -ENOENT;
> -               goto probe_free_gpio;
> +               goto probe_free_host;
>         }
>
>         host->mem = request_mem_region(host->mem->start,
> @@ -1602,7 +1577,7 @@ static int s3cmci_probe(struct platform_device *pdev)
>         if (!host->mem) {
>                 dev_err(&pdev->dev, "failed to request io memory region.\n");
>                 ret = -ENOENT;
> -               goto probe_free_gpio;
> +               goto probe_free_host;
>         }
>
>         host->base = ioremap(host->mem->start, resource_size(host->mem));
> @@ -1726,11 +1701,6 @@ static int s3cmci_probe(struct platform_device *pdev)
>   probe_free_mem_region:
>         release_mem_region(host->mem->start, resource_size(host->mem));
>
> - probe_free_gpio:
> -       if (!pdev->dev.of_node)
> -               for (i = S3C2410_GPE(5); i <= S3C2410_GPE(10); i++)
> -                       gpio_free(i);
> -
>   probe_free_host:
>         mmc_free_host(mmc);
>
> @@ -1756,7 +1726,6 @@ static int s3cmci_remove(struct platform_device *pdev)
>  {
>         struct mmc_host         *mmc  = platform_get_drvdata(pdev);
>         struct s3cmci_host      *host = mmc_priv(mmc);
> -       int i;
>
>         s3cmci_shutdown(pdev);
>
> @@ -1769,10 +1738,6 @@ static int s3cmci_remove(struct platform_device *pdev)
>
>         free_irq(host->irq, host);
>
> -       if (!pdev->dev.of_node)
> -               for (i = S3C2410_GPE(5); i <= S3C2410_GPE(10); i++)
> -                       gpio_free(i);
> -
>         iounmap(host->base);
>         release_mem_region(host->mem->start, resource_size(host->mem));
>
> diff --git a/include/linux/platform_data/mmc-s3cmci.h b/include/linux/platform_data/mmc-s3cmci.h
> index 33310b11cbdd..bacb86db3112 100644
> --- a/include/linux/platform_data/mmc-s3cmci.h
> +++ b/include/linux/platform_data/mmc-s3cmci.h
> @@ -35,6 +35,7 @@ struct s3c24xx_mci_pdata {
>         unsigned long   ocr_avail;
>         void            (*set_power)(unsigned char power_mode,
>                                      unsigned short vdd);
> +       struct gpio_desc *bus[6];
>  };
>
>  /**
> @@ -44,6 +45,7 @@ struct s3c24xx_mci_pdata {
>   * Copy the platform data supplied by @pdata so that this can be marked
>   * __initdata.
>   */
> +extern void s3c24xx_mci_def_set_power(unsigned char power_mode, unsigned short vdd);
>  extern void s3c24xx_mci_set_platdata(struct s3c24xx_mci_pdata *pdata);
>
>  #endif /* _ARCH_NCI_H */
> --
> 2.20.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
