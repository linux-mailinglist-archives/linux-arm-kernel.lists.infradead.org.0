Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61DCE1BBE68
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 14:59:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5yiLAPFoSPIyApj88Oe5xA+foOTK2nSwQLgFExB+7OY=; b=fXaETOuEA8NWwF
	agc3lG1e1lzK+hmccKwdFVDTFuR28B+K4V11PutA7RsCooWp49tIHh6SMu6eA0taEmulssrBv/oYj
	r/0TNAuvZltFcHa+JN/5PugqxMwwFX+lGvS1CX7SGZFYJxSmJaD61BXHHN+RvBeoHNGCCUlEPSHBG
	7PMUYneWY9nz3ghZVCr+qfL/FypL+6ej43NE6INqHe8GoV8YXNQQyUOVB1ny5XA7UJfARL2gcPshz
	SJl55KkQuZAwqPsOsLrJIvGVQMvHJNaJW28TO49l04TpNlOC/e5M/LWVMzCMmARWQ2QIiNx7OpTcO
	rcTS7fAoniylJ0FWIbiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTPpF-0001I7-HW; Tue, 28 Apr 2020 12:59:01 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTPow-0001Fk-0j
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 12:58:44 +0000
Received: by mail-wr1-x442.google.com with SMTP id b11so24518631wrs.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 05:58:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:autocrypt:organization:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Kpf3Gj89FZgvAJxASF81D6FvM70dkQw/EUjKVkw9Z/I=;
 b=E1hLYnAoG/Jt9qKwCi/6QIXZuzcOladgecCfHjgawdJqGm/ZAZLk5OJ5BlEFGU1qai
 QRm5QpygtwLiYc8Qz0Iz7mjuFbhrCoVWw0VFwAFy54fds+nX9rOnVHUjwJzdJSJkFNek
 PV6lBwcViY95oH7OhTH5IKCaWQuLJwF7s53ZK1BumveHcUeyBDeYC4XVCpp3TPQD5E9Z
 4dwud0Lx2xt6WgJy3JoRjQLsM9yloe9cO4Xv0UJf9Y8fuOnCVWR7M2kfWuuNtk4+r+zK
 z687RfyqHDIjDCPwsLl3YrsMU2u+vEOqq5GWlkPFgelvfSzW94b9Z7KtrKGD7901WGPD
 rvSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=Kpf3Gj89FZgvAJxASF81D6FvM70dkQw/EUjKVkw9Z/I=;
 b=IZd3NpDoTPnMCJUQMH1OM2kgdHo8EU+22whQvXbnxA354BSQjYL5EdxPwENv9tSvzK
 c/0iueFaurrCKwQIy+EqBmSQX+qQPJsBHQpPcJmG+MU5guH+vOCwx3W1o3V+WMuQ1fR/
 1kgmM1lvnX8EJahxsSHumEpgZOMr8VQfrc7SULiCKZ+Q2u+TvSwx2qD7SRK/zLMJkSbW
 XE1hDienkANTxg23mJIvQQH0Xm4Jlt1P4QBNCe09yg19xe8X6odayYHySp+ecZbfmoj6
 9Smj6Sic5E2hC1lLJnGsxZauNUnbn4QP+k+wvn7DShxTgJPqyq9mEINb4R57JHkAZT8l
 Yjtw==
X-Gm-Message-State: AGi0Pubuc/338LEZNpDS/fONzI8CAUmeSypHuFzmStXBlIJXCivNpixE
 o55SKquxpbrSrIwzkt3rpdohVg==
X-Google-Smtp-Source: APiQypKCDYoLLe87NkmjPtQ3Ms6eLi7KBBpvWVjI0XxvRbObM6StIM7LH7X98YtZElMmSFQffuDUfg==
X-Received: by 2002:a05:6000:1242:: with SMTP id
 j2mr32341875wrx.274.1588078719903; 
 Tue, 28 Apr 2020 05:58:39 -0700 (PDT)
Received: from ?IPv6:2a01:e35:2ec0:82b0:4460:3fd3:382:4a71?
 ([2a01:e35:2ec0:82b0:4460:3fd3:382:4a71])
 by smtp.gmail.com with ESMTPSA id k14sm25788392wrp.53.2020.04.28.05.58.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Apr 2020 05:58:39 -0700 (PDT)
Subject: Re: [RFC 3/8] hwmon: add support for the MCU controlled FAN on Khadas
 boards
To: Guenter Roeck <linux@roeck-us.net>, lee.jones@linaro.org,
 jdelvare@suse.com, srinivas.kandagatla@linaro.org
References: <20200421080102.22796-1-narmstrong@baylibre.com>
 <20200421080102.22796-4-narmstrong@baylibre.com>
 <37d7db98-cae8-4d97-8e39-88602756dd62@roeck-us.net>
From: Neil Armstrong <narmstrong@baylibre.com>
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 BSwxi7g3Mu7u5kUByanqHyA=
Organization: Baylibre
Message-ID: <8cb43d05-3d0e-2ea1-fc52-ddfe38a4b60e@baylibre.com>
Date: Tue, 28 Apr 2020 14:58:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <37d7db98-cae8-4d97-8e39-88602756dd62@roeck-us.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_055842_063379_51798618 
X-CRM114-Status: GOOD (  22.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org, nick@khadas.com,
 linux-amlogic@lists.infradead.org, art@khadas.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21/04/2020 11:24, Guenter Roeck wrote:
> On 4/21/20 1:00 AM, Neil Armstrong wrote:
>> The new Khadas VIM2 and VIM3 boards controls the cooling fan via the
>> on-board microcontroller.
>>
>> This implements the FAN control as HWMON devices as cell of the Khadas
>> MCU MFD driver.
>>
>> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> 
> This should be a thermal driver, not a hwmon driver.
> I don't see a single standard hwmon attribute, making
> the driver quite pointless as hwmon device.

Sure,

Neil

> 
> Guenter
> 
>> ---
>>  drivers/hwmon/Kconfig          |   9 ++
>>  drivers/hwmon/Makefile         |   1 +
>>  drivers/hwmon/khadas-mcu-fan.c | 230 +++++++++++++++++++++++++++++++++
>>  3 files changed, 240 insertions(+)
>>  create mode 100644 drivers/hwmon/khadas-mcu-fan.c
>>
>> diff --git a/drivers/hwmon/Kconfig b/drivers/hwmon/Kconfig
>> index 4c62f900bf7e..7f63ff7bb732 100644
>> --- a/drivers/hwmon/Kconfig
>> +++ b/drivers/hwmon/Kconfig
>> @@ -1997,6 +1997,15 @@ config SENSORS_XGENE
>>  	  If you say yes here you get support for the temperature
>>  	  and power sensors for APM X-Gene SoC.
>>  
>> +config SENSORS_KHADAS_MCU_FAN
>> +	tristate "Khadas MCU controller FAN driver"
>> +	depends on OF || COMPILE_TEST
>> +	select MFD_CORE
>> +	select REGMAP
>> +	help
>> +	  If you say yes here you get support for the FAN controlled
>> +	  by the Microcontroller found on the Khadas VIM boards.
>> +
>>  if ACPI
>>  
>>  comment "ACPI drivers"
>> diff --git a/drivers/hwmon/Makefile b/drivers/hwmon/Makefile
>> index b0b9c8e57176..20db40f6d57f 100644
>> --- a/drivers/hwmon/Makefile
>> +++ b/drivers/hwmon/Makefile
>> @@ -185,6 +185,7 @@ obj-$(CONFIG_SENSORS_W83L786NG)	+= w83l786ng.o
>>  obj-$(CONFIG_SENSORS_WM831X)	+= wm831x-hwmon.o
>>  obj-$(CONFIG_SENSORS_WM8350)	+= wm8350-hwmon.o
>>  obj-$(CONFIG_SENSORS_XGENE)	+= xgene-hwmon.o
>> +obj-$(CONFIG_SENSORS_KHADAS_MCU_FAN)	+= khadas-mcu-fan.o
>>  
>>  obj-$(CONFIG_SENSORS_OCC)	+= occ/
>>  obj-$(CONFIG_PMBUS)		+= pmbus/
>> diff --git a/drivers/hwmon/khadas-mcu-fan.c b/drivers/hwmon/khadas-mcu-fan.c
>> new file mode 100644
>> index 000000000000..dd92b2bcb7e3
>> --- /dev/null
>> +++ b/drivers/hwmon/khadas-mcu-fan.c
>> @@ -0,0 +1,230 @@
>> +// SPDX-License-Identifier: GPL-2.0-or-later
>> +/*
>> + * Khadas MCU Controlled FAN driver
>> + *
>> + * Copyright (C) 2020 BayLibre SAS
>> + * Author(s): Neil Armstrong <narmstrong@baylibre.com>
>> + */
>> +
>> +#include <linux/hwmon.h>
>> +#include <linux/hwmon-sysfs.h>
>> +#include <linux/module.h>
>> +#include <linux/of.h>
>> +#include <linux/platform_device.h>
>> +#include <linux/regulator/consumer.h>
>> +#include <linux/mfd/khadas-mcu.h>
>> +#include <linux/regmap.h>
>> +#include <linux/sysfs.h>
>> +#include <linux/thermal.h>
>> +
>> +#define MAX_LEVEL 3
>> +
>> +struct khadas_mcu_fan_ctx {
>> +	struct khadas_mcu *mcu;
>> +	unsigned int level;
>> +	struct thermal_cooling_device *cdev;
>> +};
>> +
>> +static int khadas_mcu_fan_set_level(struct khadas_mcu_fan_ctx *ctx,
>> +				    unsigned int level)
>> +{
>> +	int ret;
>> +
>> +	ret = regmap_write(ctx->mcu->map, KHADAS_MCU_CMD_FAN_STATUS_CTRL_REG,
>> +			   level);
>> +	if (ret)
>> +		return ret;
>> +
>> +	ctx->level = level;
>> +
>> +	return 0;
>> +}
>> +
>> +static ssize_t level_store(struct device *dev, struct device_attribute *attr,
>> +			   const char *buf, size_t count)
>> +{
>> +	struct khadas_mcu_fan_ctx *ctx = dev_get_drvdata(dev);
>> +	unsigned long level;
>> +	int ret;
>> +
>> +	if (kstrtoul(buf, 10, &level) || level > MAX_LEVEL)
>> +		return -EINVAL;
>> +
>> +	ret = khadas_mcu_fan_set_level(ctx, level);
>> +	if (ret < 0)
>> +		return ret;
>> +
>> +	return count;
>> +}
>> +
>> +static ssize_t level_show(struct device *dev, struct device_attribute *attr,
>> +			  char *buf)
>> +{
>> +	struct khadas_mcu_fan_ctx *ctx = dev_get_drvdata(dev);
>> +
>> +	return sprintf(buf, "%u\n", ctx->level);
>> +}
>> +
>> +static SENSOR_DEVICE_ATTR_RW(level1, level, 0);
>> +
>> +static struct attribute *khadas_mcu_fan_attrs[] = {
>> +	&sensor_dev_attr_level1.dev_attr.attr,
>> +	NULL,
>> +};
>> +
>> +static const struct attribute_group khadas_mcu_fan_group = {
>> +	.attrs = khadas_mcu_fan_attrs,
>> +};
>> +
>> +static const struct attribute_group *khadas_mcu_fan_groups[] = {
>> +	&khadas_mcu_fan_group,
>> +	NULL,
>> +};
>> +
>> +/* thermal cooling device callbacks */
>> +static int khadas_mcu_fan_get_max_state(struct thermal_cooling_device *cdev,
>> +					unsigned long *state)
>> +{
>> +	struct khadas_mcu_fan_ctx *ctx = cdev->devdata;
>> +
>> +	if (!ctx)
>> +		return -EINVAL;
>> +
>> +	*state = MAX_LEVEL;
>> +
>> +	return 0;
>> +}
>> +
>> +static int khadas_mcu_fan_get_cur_state(struct thermal_cooling_device *cdev,
>> +					unsigned long *state)
>> +{
>> +	struct khadas_mcu_fan_ctx *ctx = cdev->devdata;
>> +
>> +	if (!ctx)
>> +		return -EINVAL;
>> +
>> +	*state = ctx->level;
>> +
>> +	return 0;
>> +}
>> +
>> +static int
>> +khadas_mcu_fan_set_cur_state(struct thermal_cooling_device *cdev,
>> +			     unsigned long state)
>> +{
>> +	struct khadas_mcu_fan_ctx *ctx = cdev->devdata;
>> +
>> +	if (!ctx || (state > MAX_LEVEL))
>> +		return -EINVAL;
>> +
>> +	if (state == ctx->level)
>> +		return 0;
>> +
>> +	return khadas_mcu_fan_set_level(ctx, state);
>> +}
>> +
>> +static const struct thermal_cooling_device_ops khadas_mcu_fan_cooling_ops = {
>> +	.get_max_state = khadas_mcu_fan_get_max_state,
>> +	.get_cur_state = khadas_mcu_fan_get_cur_state,
>> +	.set_cur_state = khadas_mcu_fan_set_cur_state,
>> +};
>> +
>> +static int khadas_mcu_fan_probe(struct platform_device *pdev)
>> +{
>> +	struct khadas_mcu *mcu = dev_get_drvdata(pdev->dev.parent);
>> +	struct thermal_cooling_device *cdev;
>> +	struct device *dev = &pdev->dev;
>> +	struct khadas_mcu_fan_ctx *ctx;
>> +	struct device *hwmon;
>> +	int ret;
>> +
>> +	ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
>> +	if (!ctx)
>> +		return -ENOMEM;
>> +	ctx->mcu = mcu;
>> +	platform_set_drvdata(pdev, ctx);
>> +
>> +	hwmon = devm_hwmon_device_register_with_groups(dev, "khadas-mcu-fan",
>> +						       ctx,
>> +						       khadas_mcu_fan_groups);
>> +	if (IS_ERR(hwmon)) {
>> +		dev_err(dev, "Failed to register hwmon device\n");
>> +		return PTR_ERR(hwmon);
>> +	}
>> +
>> +	if (IS_ENABLED(CONFIG_THERMAL)) {
>> +		cdev = devm_thermal_of_cooling_device_register(dev->parent,
>> +			dev->parent->of_node, "khadas-mcu-fan", ctx,
>> +			&khadas_mcu_fan_cooling_ops);
>> +		if (IS_ERR(cdev)) {
>> +			ret = PTR_ERR(cdev);
>> +			dev_err(dev,
>> +				"Failed to register khadas-mcu-fan as cooling device: %d\n",
>> +				ret);
>> +			return ret;
>> +		}
>> +		ctx->cdev = cdev;
>> +		thermal_cdev_update(cdev);
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +static int khadas_mcu_fan_disable(struct device *dev)
>> +{
>> +	struct khadas_mcu_fan_ctx *ctx = dev_get_drvdata(dev);
>> +	unsigned int level_save = ctx->level;
>> +	int ret;
>> +
>> +	ret = khadas_mcu_fan_set_level(ctx, 0);
>> +	if (ret)
>> +		return ret;
>> +
>> +	ctx->level = level_save;
>> +
>> +	return 0;
>> +}
>> +
>> +static void khadas_mcu_fan_shutdown(struct platform_device *pdev)
>> +{
>> +	khadas_mcu_fan_disable(&pdev->dev);
>> +}
>> +
>> +#ifdef CONFIG_PM_SLEEP
>> +static int khadas_mcu_fan_suspend(struct device *dev)
>> +{
>> +	return khadas_mcu_fan_disable(dev);
>> +}
>> +
>> +static int khadas_mcu_fan_resume(struct device *dev)
>> +{
>> +	struct khadas_mcu_fan_ctx *ctx = dev_get_drvdata(dev);
>> +
>> +	return khadas_mcu_fan_set_level(ctx, ctx->level);
>> +}
>> +#endif
>> +
>> +static SIMPLE_DEV_PM_OPS(khadas_mcu_fan_pm, khadas_mcu_fan_suspend,
>> +			 khadas_mcu_fan_resume);
>> +
>> +static const struct platform_device_id khadas_mcu_fan_id_table[] = {
>> +	{ .name = "khadas-mcu-fan-ctrl", },
>> +	{},
>> +};
>> +MODULE_DEVICE_TABLE(platform, khadas_mcu_fan_id_table);
>> +
>> +static struct platform_driver khadas_mcu_fan_driver = {
>> +	.probe		= khadas_mcu_fan_probe,
>> +	.shutdown	= khadas_mcu_fan_shutdown,
>> +	.driver	= {
>> +		.name		= "khadas-mcu-fan-ctrl",
>> +		.pm		= &khadas_mcu_fan_pm,
>> +	},
>> +	.id_table	= khadas_mcu_fan_id_table,
>> +};
>> +
>> +module_platform_driver(khadas_mcu_fan_driver);
>> +
>> +MODULE_AUTHOR("Neil Armstrong <narmstrong@baylibre.com>");
>> +MODULE_DESCRIPTION("Khadas MCU FAN driver");
>> +MODULE_LICENSE("GPL");
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
