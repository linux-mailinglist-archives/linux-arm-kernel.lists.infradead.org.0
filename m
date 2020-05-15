Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 000E61D460D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 08:42:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DIiXzchb7Bz00HVPzZwa08GzZ8t8N0A/UcvYTQJnM20=; b=GsH5As3QPLuk5F
	rrC6NxCDGAlDBKZI0JTtIQedCcuTPUn40ctBoErEVfT1aq3/ZMnEqFkQQs6MkJ8AOaqkSkhKD1n8G
	LlRG4QzBbnyma9JtJmlKviHH4024cqOX6HHw0ORITQkUTnk0f1cCnI6H/acAjC5csCayvF/Sh5nu6
	zVmNnzHNbKNI1VT667RgYMshhoGlFek/36sCgZ5umJESJIDSAn8NGNW9kVksc2z9mK26Y70k+SWRI
	xMJ0qswPSqzcyAVFLnZh8lCYfKkg6vvzYUpRyUx1KbIilV6MDWGOEMyycg7+P/n+PCDe3h4l1fxfj
	AWwUeQ7aSOySdf12s+cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZU34-0003Oo-8j; Fri, 15 May 2020 06:42:22 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZU2t-0003J4-W9
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 06:42:13 +0000
Received: by mail-vk1-xa43.google.com with SMTP id p7so311862vkf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 23:42:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BA59quelcDIdRO9l949jW9ARAKnurXI4XEzSqUYELU8=;
 b=0aGc2/3Oe8lE6W0GmBwKdtVn9A80fXiRgafCdAIrbNICAcWPA7bdshiQbSgWb+GY+c
 QXHSadz9Alk0IWk1K5O52dnHgeLOcDNrTOCRfeUCPq7f/aNQONzwN9xx0mqmxKns2dpa
 YQTBOSFnMib+b4loR0XIYQFU8dw7mptMNHNj72JKS3RrCDYBLSU/2W9tHNkj9JAhjUEf
 hqXKJ9oNvxsGbenMKAFNlQXvtnkCmXedDaB4jSSeZG2bn4sS1KLAWf4FaFOhkUKbz5h6
 lYNwGan+ItmduuXW+cesj+198/pDHKJgXy1irGQBotwHxwio5GymDrz50Jh17K11X6oL
 e0wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BA59quelcDIdRO9l949jW9ARAKnurXI4XEzSqUYELU8=;
 b=s6WTlFpx6RTjvs2OcED4axFQiHAqgyvS8iOVFzPF2Num+wC01EbON1qItzXZLxAX9y
 EXNWpZM4iSVOKPeFp4t+3zkoJQ8mFMkoCTpW7QWLqaBeIrcYhAwlg1nsMNb1fXyB64JH
 bnISsobtjzJyvRJ6e8Wyio21cp+J27ZSEwedENGvoHbsqmljjRg6Wwneo1tn1tMx+V/T
 QlDo7TShew2HZ8wI7fsu671FplvUMv4yGq0KyMjD+8XX5zOhhLopLUL6qNnZ4YIy7Q4H
 p9sg+UtKoFVgGvm9LezjjhfgbIKVq2489oGBGRYNayU2PG6XiQVbbZVkR1rAfmPAOxXg
 ppDw==
X-Gm-Message-State: AOAM530O25c9fm/OEn+HfRHFWNRFekkr88e16N55Xny37WAkAdx4PAtf
 KK4ZS0OqBmn/DbY5YtPgToa6cwjnGnHcoCRlwhlusg==
X-Google-Smtp-Source: ABdhPJy97WG9tZErtAsULFfSPQ2I8f+58cBdq2w509U3NXrskksxpY2YjHa+yvY7hNCX5KBgDaNNsncGxmdr5WGEM/I=
X-Received: by 2002:a1f:1386:: with SMTP id 128mr799240vkt.46.1589524930544;
 Thu, 14 May 2020 23:42:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200512132613.31507-1-narmstrong@baylibre.com>
 <20200512132613.31507-4-narmstrong@baylibre.com>
In-Reply-To: <20200512132613.31507-4-narmstrong@baylibre.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Fri, 15 May 2020 12:11:29 +0530
Message-ID: <CAHLCerPiC3QS5u5CGX20q_5aUk4sN5knF4043_=WjtbhDDGuUg@mail.gmail.com>
Subject: Re: [PATCH v2 3/6] thermal: add support for the MCU controlled FAN on
 Khadas boards
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_234212_102613_8B2D947F 
X-CRM114-Status: GOOD (  22.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linux PM list <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Srini Kandagatla <srinivas.kandagatla@linaro.org>,
 linux-amlogic@lists.infradead.org, Zhang Rui <rui.zhang@intel.com>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 12, 2020 at 6:56 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> The new Khadas VIM2 and VIM3 boards controls the cooling fan via the
> on-board microcontroller.
>
> This implements the FAN control as thermal devices and as cell of the Khadas
> MCU MFD driver.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  drivers/thermal/Kconfig          |  10 ++
>  drivers/thermal/Makefile         |   1 +
>  drivers/thermal/khadas_mcu_fan.c | 174 +++++++++++++++++++++++++++++++
>  3 files changed, 185 insertions(+)
>  create mode 100644 drivers/thermal/khadas_mcu_fan.c
>
> diff --git a/drivers/thermal/Kconfig b/drivers/thermal/Kconfig
> index 91af271e9bb0..72b3960cc5ac 100644
> --- a/drivers/thermal/Kconfig
> +++ b/drivers/thermal/Kconfig
> @@ -490,4 +490,14 @@ config SPRD_THERMAL
>         help
>           Support for the Spreadtrum thermal sensor driver in the Linux thermal
>           framework.
> +
> +config KHADAS_MCU_FAN_THERMAL
> +       tristate "Khadas MCU controller FAN cooling support"
> +       depends on OF || COMPILE_TEST

Could you add a depends on the some board/SoC Kconfig option here so
this doesn't show up for non-Amlogic/non-Khadas boards?

Looks OK otherwise.

> +       select MFD_CORE
> +       select REGMAP
> +       help
> +         If you say yes here you get support for the FAN controlled
> +         by the Microcontroller found on the Khadas VIM boards.
> +
>  endif
> diff --git a/drivers/thermal/Makefile b/drivers/thermal/Makefile
> index 8c8ed7b79915..460428c2122c 100644
> --- a/drivers/thermal/Makefile
> +++ b/drivers/thermal/Makefile
> @@ -60,3 +60,4 @@ obj-$(CONFIG_ZX2967_THERMAL)  += zx2967_thermal.o
>  obj-$(CONFIG_UNIPHIER_THERMAL) += uniphier_thermal.o
>  obj-$(CONFIG_AMLOGIC_THERMAL)     += amlogic_thermal.o
>  obj-$(CONFIG_SPRD_THERMAL)     += sprd_thermal.o
> +obj-$(CONFIG_KHADAS_MCU_FAN_THERMAL)   += khadas_mcu_fan.o
> diff --git a/drivers/thermal/khadas_mcu_fan.c b/drivers/thermal/khadas_mcu_fan.c
> new file mode 100644
> index 000000000000..044d4aba8be2
> --- /dev/null
> +++ b/drivers/thermal/khadas_mcu_fan.c
> @@ -0,0 +1,174 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Khadas MCU Controlled FAN driver
> + *
> + * Copyright (C) 2020 BayLibre SAS
> + * Author(s): Neil Armstrong <narmstrong@baylibre.com>
> + */
> +
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/mfd/khadas-mcu.h>
> +#include <linux/regmap.h>
> +#include <linux/sysfs.h>
> +#include <linux/thermal.h>
> +
> +#define MAX_LEVEL 3
> +
> +struct khadas_mcu_fan_ctx {
> +       struct khadas_mcu *mcu;
> +       unsigned int level;
> +       struct thermal_cooling_device *cdev;
> +};
> +
> +static int khadas_mcu_fan_set_level(struct khadas_mcu_fan_ctx *ctx,
> +                                   unsigned int level)
> +{
> +       int ret;
> +
> +       ret = regmap_write(ctx->mcu->map, KHADAS_MCU_CMD_FAN_STATUS_CTRL_REG,
> +                          level);
> +       if (ret)
> +               return ret;
> +
> +       ctx->level = level;
> +
> +       return 0;
> +}
> +
> +static int khadas_mcu_fan_get_max_state(struct thermal_cooling_device *cdev,
> +                                       unsigned long *state)
> +{
> +       struct khadas_mcu_fan_ctx *ctx = cdev->devdata;
> +
> +       if (!ctx)
> +               return -EINVAL;
> +
> +       *state = MAX_LEVEL;
> +
> +       return 0;
> +}
> +
> +static int khadas_mcu_fan_get_cur_state(struct thermal_cooling_device *cdev,
> +                                       unsigned long *state)
> +{
> +       struct khadas_mcu_fan_ctx *ctx = cdev->devdata;
> +
> +       if (!ctx)
> +               return -EINVAL;
> +
> +       *state = ctx->level;
> +
> +       return 0;
> +}
> +
> +static int
> +khadas_mcu_fan_set_cur_state(struct thermal_cooling_device *cdev,
> +                            unsigned long state)
> +{
> +       struct khadas_mcu_fan_ctx *ctx = cdev->devdata;
> +
> +       if (!ctx || (state > MAX_LEVEL))
> +               return -EINVAL;
> +
> +       if (state == ctx->level)
> +               return 0;
> +
> +       return khadas_mcu_fan_set_level(ctx, state);
> +}
> +
> +static const struct thermal_cooling_device_ops khadas_mcu_fan_cooling_ops = {
> +       .get_max_state = khadas_mcu_fan_get_max_state,
> +       .get_cur_state = khadas_mcu_fan_get_cur_state,
> +       .set_cur_state = khadas_mcu_fan_set_cur_state,
> +};
> +
> +static int khadas_mcu_fan_probe(struct platform_device *pdev)
> +{
> +       struct khadas_mcu *mcu = dev_get_drvdata(pdev->dev.parent);
> +       struct thermal_cooling_device *cdev;
> +       struct device *dev = &pdev->dev;
> +       struct khadas_mcu_fan_ctx *ctx;
> +       int ret;
> +
> +       ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
> +       if (!ctx)
> +               return -ENOMEM;
> +       ctx->mcu = mcu;
> +       platform_set_drvdata(pdev, ctx);
> +
> +       cdev = devm_thermal_of_cooling_device_register(dev->parent,
> +                       dev->parent->of_node, "khadas-mcu-fan", ctx,
> +                       &khadas_mcu_fan_cooling_ops);
> +       if (IS_ERR(cdev)) {
> +               ret = PTR_ERR(cdev);
> +               dev_err(dev,
> +                               "Failed to register khadas-mcu-fan as cooling device: %d\n",
> +                               ret);
> +               return ret;
> +       }
> +       ctx->cdev = cdev;
> +       thermal_cdev_update(cdev);
> +
> +       return 0;
> +}
> +
> +static int khadas_mcu_fan_disable(struct device *dev)
> +{
> +       struct khadas_mcu_fan_ctx *ctx = dev_get_drvdata(dev);
> +       unsigned int level_save = ctx->level;
> +       int ret;
> +
> +       ret = khadas_mcu_fan_set_level(ctx, 0);
> +       if (ret)
> +               return ret;
> +
> +       ctx->level = level_save;
> +
> +       return 0;
> +}
> +
> +static void khadas_mcu_fan_shutdown(struct platform_device *pdev)
> +{
> +       khadas_mcu_fan_disable(&pdev->dev);
> +}
> +
> +#ifdef CONFIG_PM_SLEEP
> +static int khadas_mcu_fan_suspend(struct device *dev)
> +{
> +       return khadas_mcu_fan_disable(dev);
> +}
> +
> +static int khadas_mcu_fan_resume(struct device *dev)
> +{
> +       struct khadas_mcu_fan_ctx *ctx = dev_get_drvdata(dev);
> +
> +       return khadas_mcu_fan_set_level(ctx, ctx->level);
> +}
> +#endif
> +
> +static SIMPLE_DEV_PM_OPS(khadas_mcu_fan_pm, khadas_mcu_fan_suspend,
> +                        khadas_mcu_fan_resume);
> +
> +static const struct platform_device_id khadas_mcu_fan_id_table[] = {
> +       { .name = "khadas-mcu-fan-ctrl", },
> +       {},
> +};
> +MODULE_DEVICE_TABLE(platform, khadas_mcu_fan_id_table);
> +
> +static struct platform_driver khadas_mcu_fan_driver = {
> +       .probe          = khadas_mcu_fan_probe,
> +       .shutdown       = khadas_mcu_fan_shutdown,
> +       .driver = {
> +               .name           = "khadas-mcu-fan-ctrl",
> +               .pm             = &khadas_mcu_fan_pm,
> +       },
> +       .id_table       = khadas_mcu_fan_id_table,
> +};
> +
> +module_platform_driver(khadas_mcu_fan_driver);
> +
> +MODULE_AUTHOR("Neil Armstrong <narmstrong@baylibre.com>");
> +MODULE_DESCRIPTION("Khadas MCU FAN driver");
> +MODULE_LICENSE("GPL");
> --
> 2.22.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
