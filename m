Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5AE1D47B4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 10:05:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QLNAfja5UvJ7OEmC4QCDXQTTwOHPwywjuvIAG04XLl0=; b=SJ5mV2dppeHCJu
	AsQqPd5meJfZMS06JYNm6MfSqDNbmcXXI7Vxc6GNSlyQ6M5ZwGf2OiWiMVUtHdP5OcHdtXdg79Tr+
	FQoBfQiGv3/+bU0KZ19XiINYJ1YfjbITrayN+tBXcRO4WqbSBcWeJ+pbOv8PhxpNg/sKKzLD9TcEc
	dWUIY1OYSdQOlhL8AY/6GC+iiHQJZFs5Nzxu0rFMmpZYBE2cN1w+qxwtQmqW6otguNqmNUBJUapih
	K2jPQY5rWuooJcKoS4q4EdVQPvzZsIvBA1rWsQd8Z8rk7XLrmEOlVk9DTgus8NJfQJm6Kxbm/Ek7i
	hpZYLWcxfO2skLxhx6BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZVLM-0006Ow-Cm; Fri, 15 May 2020 08:05:20 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZVLB-0005aX-F4
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 08:05:11 +0000
Received: by mail-wr1-x444.google.com with SMTP id l18so2403640wrn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 01:05:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:autocrypt:organization:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Ka+cKcLR8lJuV8gjRpPRMdYz++ooxArfAv0RBTCP7c8=;
 b=E+cClAx4sR8jeE9o7QyTEEyqr/+l3AJPGM97foILCtra6xaHJjbxjJ/Fl2Or4K5P7e
 MV68NNcg4v4C2hV5PPJJlL0f65nB8+7EJZIc1R+5dpoolc7oqKB28Rt0SdaZc6ZK48r1
 op3yiUq4uM5ePUBocuL7nmHPaVdkO/JDYb4mb37pY5nHQE6a1WjLtbNte7BVy4YLFoJR
 75UctLb6YmivwKHPQ5JiJhJrsvmnQiBhkMJhfMCjbgRhTgAETrqAUFSa9h9u8Qz4yawD
 BHWIHd1LLxLZFR2vbf2ZGsZHoFMCwBYEHaSLqq3wVpTlOOVGp3Md5JFKXeBCDfAOih8O
 7/JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=Ka+cKcLR8lJuV8gjRpPRMdYz++ooxArfAv0RBTCP7c8=;
 b=ckjq1f/Oxf0+xuhifyzTcGlvaAS+rj6FMhwO4ZXLxD2t9pX7mlYiS3r3xJSnEoiNBq
 ArX5uI0GBWqfmEpm8J4YBHaEotuHDM4GTivqR8KFYUxkgYGhlXAYqhBfN2VuaWXA8eLe
 yQIcVxtrMnuRuCyhxVQw/xX3xOqKOj5vWjK/OZ8kMHhD/P7AxRNyGu46ZApezT/i9XAF
 tucYoGPfLAPnVgsnaBZkNeZX8MDAdwFM2sV5jGQhnmqoEduhziAhMJ74RWVH6POdKN2q
 R4yRbSEVRoj7XKZqKoDfMEFeSRr7ePTqRQ553TcFZozMV3H/bxeLo/xYUT3DOW8orzVo
 DUcA==
X-Gm-Message-State: AOAM530XaRCGoftGeuu/Bz+SvPVTPy7Ly9Ym3aEBNQ7oV+Xz3Ujt/qsp
 HpDroHykqpoQJ1H1QihkK059FQ==
X-Google-Smtp-Source: ABdhPJwf0AkQnlDmnyxvqVQc2yzAgAQDxwbcUdvMzQqCQmiukwzD12WG7bLyOIJ58+AHo9yGLJlJXA==
X-Received: by 2002:a5d:4006:: with SMTP id n6mr2890572wrp.27.1589529907976;
 Fri, 15 May 2020 01:05:07 -0700 (PDT)
Received: from ?IPv6:2a01:e35:2ec0:82b0:4460:3fd3:382:4a71?
 ([2a01:e35:2ec0:82b0:4460:3fd3:382:4a71])
 by smtp.gmail.com with ESMTPSA id c80sm2513852wme.15.2020.05.15.01.05.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 15 May 2020 01:05:07 -0700 (PDT)
Subject: Re: [PATCH v2 3/6] thermal: add support for the MCU controlled FAN on
 Khadas boards
To: Amit Kucheria <amit.kucheria@verdurent.com>
References: <20200512132613.31507-1-narmstrong@baylibre.com>
 <20200512132613.31507-4-narmstrong@baylibre.com>
 <CAHLCerPiC3QS5u5CGX20q_5aUk4sN5knF4043_=WjtbhDDGuUg@mail.gmail.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 BSwxi7g3Mu7u5kUByanqHyA=
Organization: Baylibre
Message-ID: <da7e8d72-9d70-c4a0-97d8-de9b65782a92@baylibre.com>
Date: Fri, 15 May 2020 10:05:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAHLCerPiC3QS5u5CGX20q_5aUk4sN5knF4043_=WjtbhDDGuUg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_010509_641116_BCB2CA00 
X-CRM114-Status: GOOD (  21.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On 15/05/2020 08:41, Amit Kucheria wrote:
> On Tue, May 12, 2020 at 6:56 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>>
>> The new Khadas VIM2 and VIM3 boards controls the cooling fan via the
>> on-board microcontroller.
>>
>> This implements the FAN control as thermal devices and as cell of the Khadas
>> MCU MFD driver.
>>
>> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
>> ---
>>  drivers/thermal/Kconfig          |  10 ++
>>  drivers/thermal/Makefile         |   1 +
>>  drivers/thermal/khadas_mcu_fan.c | 174 +++++++++++++++++++++++++++++++
>>  3 files changed, 185 insertions(+)
>>  create mode 100644 drivers/thermal/khadas_mcu_fan.c
>>
>> diff --git a/drivers/thermal/Kconfig b/drivers/thermal/Kconfig
>> index 91af271e9bb0..72b3960cc5ac 100644
>> --- a/drivers/thermal/Kconfig
>> +++ b/drivers/thermal/Kconfig
>> @@ -490,4 +490,14 @@ config SPRD_THERMAL
>>         help
>>           Support for the Spreadtrum thermal sensor driver in the Linux thermal
>>           framework.
>> +
>> +config KHADAS_MCU_FAN_THERMAL
>> +       tristate "Khadas MCU controller FAN cooling support"
>> +       depends on OF || COMPILE_TEST
> 
> Could you add a depends on the some board/SoC Kconfig option here so
> this doesn't show up for non-Amlogic/non-Khadas boards?

Sure,

Thanks.

Neil

> 
> Looks OK otherwise.
> 
>> +       select MFD_CORE
>> +       select REGMAP
>> +       help
>> +         If you say yes here you get support for the FAN controlled
>> +         by the Microcontroller found on the Khadas VIM boards.
>> +
>>  endif
>> diff --git a/drivers/thermal/Makefile b/drivers/thermal/Makefile
>> index 8c8ed7b79915..460428c2122c 100644
>> --- a/drivers/thermal/Makefile
>> +++ b/drivers/thermal/Makefile
>> @@ -60,3 +60,4 @@ obj-$(CONFIG_ZX2967_THERMAL)  += zx2967_thermal.o
>>  obj-$(CONFIG_UNIPHIER_THERMAL) += uniphier_thermal.o
>>  obj-$(CONFIG_AMLOGIC_THERMAL)     += amlogic_thermal.o
>>  obj-$(CONFIG_SPRD_THERMAL)     += sprd_thermal.o
>> +obj-$(CONFIG_KHADAS_MCU_FAN_THERMAL)   += khadas_mcu_fan.o
>> diff --git a/drivers/thermal/khadas_mcu_fan.c b/drivers/thermal/khadas_mcu_fan.c
>> new file mode 100644
>> index 000000000000..044d4aba8be2
>> --- /dev/null
>> +++ b/drivers/thermal/khadas_mcu_fan.c
>> @@ -0,0 +1,174 @@
>> +// SPDX-License-Identifier: GPL-2.0-or-later
>> +/*
>> + * Khadas MCU Controlled FAN driver
>> + *
>> + * Copyright (C) 2020 BayLibre SAS
>> + * Author(s): Neil Armstrong <narmstrong@baylibre.com>
>> + */
>> +
>> +#include <linux/module.h>
>> +#include <linux/of.h>
>> +#include <linux/platform_device.h>
>> +#include <linux/mfd/khadas-mcu.h>
>> +#include <linux/regmap.h>
>> +#include <linux/sysfs.h>
>> +#include <linux/thermal.h>
>> +
>> +#define MAX_LEVEL 3
>> +
>> +struct khadas_mcu_fan_ctx {
>> +       struct khadas_mcu *mcu;
>> +       unsigned int level;
>> +       struct thermal_cooling_device *cdev;
>> +};
>> +
>> +static int khadas_mcu_fan_set_level(struct khadas_mcu_fan_ctx *ctx,
>> +                                   unsigned int level)
>> +{
>> +       int ret;
>> +
>> +       ret = regmap_write(ctx->mcu->map, KHADAS_MCU_CMD_FAN_STATUS_CTRL_REG,
>> +                          level);
>> +       if (ret)
>> +               return ret;
>> +
>> +       ctx->level = level;
>> +
>> +       return 0;
>> +}
>> +
>> +static int khadas_mcu_fan_get_max_state(struct thermal_cooling_device *cdev,
>> +                                       unsigned long *state)
>> +{
>> +       struct khadas_mcu_fan_ctx *ctx = cdev->devdata;
>> +
>> +       if (!ctx)
>> +               return -EINVAL;
>> +
>> +       *state = MAX_LEVEL;
>> +
>> +       return 0;
>> +}
>> +
>> +static int khadas_mcu_fan_get_cur_state(struct thermal_cooling_device *cdev,
>> +                                       unsigned long *state)
>> +{
>> +       struct khadas_mcu_fan_ctx *ctx = cdev->devdata;
>> +
>> +       if (!ctx)
>> +               return -EINVAL;
>> +
>> +       *state = ctx->level;
>> +
>> +       return 0;
>> +}
>> +
>> +static int
>> +khadas_mcu_fan_set_cur_state(struct thermal_cooling_device *cdev,
>> +                            unsigned long state)
>> +{
>> +       struct khadas_mcu_fan_ctx *ctx = cdev->devdata;
>> +
>> +       if (!ctx || (state > MAX_LEVEL))
>> +               return -EINVAL;
>> +
>> +       if (state == ctx->level)
>> +               return 0;
>> +
>> +       return khadas_mcu_fan_set_level(ctx, state);
>> +}
>> +
>> +static const struct thermal_cooling_device_ops khadas_mcu_fan_cooling_ops = {
>> +       .get_max_state = khadas_mcu_fan_get_max_state,
>> +       .get_cur_state = khadas_mcu_fan_get_cur_state,
>> +       .set_cur_state = khadas_mcu_fan_set_cur_state,
>> +};
>> +
>> +static int khadas_mcu_fan_probe(struct platform_device *pdev)
>> +{
>> +       struct khadas_mcu *mcu = dev_get_drvdata(pdev->dev.parent);
>> +       struct thermal_cooling_device *cdev;
>> +       struct device *dev = &pdev->dev;
>> +       struct khadas_mcu_fan_ctx *ctx;
>> +       int ret;
>> +
>> +       ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
>> +       if (!ctx)
>> +               return -ENOMEM;
>> +       ctx->mcu = mcu;
>> +       platform_set_drvdata(pdev, ctx);
>> +
>> +       cdev = devm_thermal_of_cooling_device_register(dev->parent,
>> +                       dev->parent->of_node, "khadas-mcu-fan", ctx,
>> +                       &khadas_mcu_fan_cooling_ops);
>> +       if (IS_ERR(cdev)) {
>> +               ret = PTR_ERR(cdev);
>> +               dev_err(dev,
>> +                               "Failed to register khadas-mcu-fan as cooling device: %d\n",
>> +                               ret);
>> +               return ret;
>> +       }
>> +       ctx->cdev = cdev;
>> +       thermal_cdev_update(cdev);
>> +
>> +       return 0;
>> +}
>> +
>> +static int khadas_mcu_fan_disable(struct device *dev)
>> +{
>> +       struct khadas_mcu_fan_ctx *ctx = dev_get_drvdata(dev);
>> +       unsigned int level_save = ctx->level;
>> +       int ret;
>> +
>> +       ret = khadas_mcu_fan_set_level(ctx, 0);
>> +       if (ret)
>> +               return ret;
>> +
>> +       ctx->level = level_save;
>> +
>> +       return 0;
>> +}
>> +
>> +static void khadas_mcu_fan_shutdown(struct platform_device *pdev)
>> +{
>> +       khadas_mcu_fan_disable(&pdev->dev);
>> +}
>> +
>> +#ifdef CONFIG_PM_SLEEP
>> +static int khadas_mcu_fan_suspend(struct device *dev)
>> +{
>> +       return khadas_mcu_fan_disable(dev);
>> +}
>> +
>> +static int khadas_mcu_fan_resume(struct device *dev)
>> +{
>> +       struct khadas_mcu_fan_ctx *ctx = dev_get_drvdata(dev);
>> +
>> +       return khadas_mcu_fan_set_level(ctx, ctx->level);
>> +}
>> +#endif
>> +
>> +static SIMPLE_DEV_PM_OPS(khadas_mcu_fan_pm, khadas_mcu_fan_suspend,
>> +                        khadas_mcu_fan_resume);
>> +
>> +static const struct platform_device_id khadas_mcu_fan_id_table[] = {
>> +       { .name = "khadas-mcu-fan-ctrl", },
>> +       {},
>> +};
>> +MODULE_DEVICE_TABLE(platform, khadas_mcu_fan_id_table);
>> +
>> +static struct platform_driver khadas_mcu_fan_driver = {
>> +       .probe          = khadas_mcu_fan_probe,
>> +       .shutdown       = khadas_mcu_fan_shutdown,
>> +       .driver = {
>> +               .name           = "khadas-mcu-fan-ctrl",
>> +               .pm             = &khadas_mcu_fan_pm,
>> +       },
>> +       .id_table       = khadas_mcu_fan_id_table,
>> +};
>> +
>> +module_platform_driver(khadas_mcu_fan_driver);
>> +
>> +MODULE_AUTHOR("Neil Armstrong <narmstrong@baylibre.com>");
>> +MODULE_DESCRIPTION("Khadas MCU FAN driver");
>> +MODULE_LICENSE("GPL");
>> --
>> 2.22.0
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
