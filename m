Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE7919CC66
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 23:31:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i5gIZQ7XdIbjbUbiKhxGAe+ZWRcvD9Pya09lT29Skxs=; b=Qob+yW/GK4JOWh
	WoRhPQXj/d/Pr5Cwk8qMO7ydTRmJdCJhOcDE1yjQINUiS5QDXrYpjVkCpINXtvFMla+AAVk71NAhF
	/fV2y2dZmiLeFo+JqmAtvUX9zVZPX2edQBXtEfA72iRsB2jS6OzweurC+cO4u6Dj3d6BjYMTczQBT
	YGZDkruYGfcPZX8rzOMGlANFGi1cCA5CilRUUitcLuGtg0FzhszQ1K+ODebwpUSThjaEB18OPW8Vv
	ZQy8S5oTFvWDPxJ7ZuV525LqwsC4PYXP5IREFl171JGSmxA2AtQaKk42MwxdjhGeFmRi3Y9PahVUg
	k0BuAENNvDoXibeqKthg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK7QT-00031w-DL; Thu, 02 Apr 2020 21:31:01 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK7QM-00031W-OB
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 21:30:56 +0000
Received: by mail-pl1-x643.google.com with SMTP id a23so1855165plm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Apr 2020 14:30:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=UUPOa3XdCHYcoLx/8Rv7jexCWtPWMH0y/BtvQy0KvdE=;
 b=Osr4o8aHTJp+wpPLX6iRSAfZZFYcURj2YXurTPtrrGopI9GgL09N58zNW5yiUzQ6lh
 c+VTP115iCVVfBIMcGoSfmdMaiYMYGyRA4Mrf5XFQGewHOz+cwGrgrvhndDpm13smzLA
 Ho2SOHxfzDoCTRD1p+FfemjenJnCXoTL5sqif8IU5iN0NDcRbXRQU7AA5E2nntEuLZBE
 yQrl2SSJ0SoeHVLbyVr8nHiMy6ZhWEDtkPzo09w1aPoHmm88WQ4ZfjIy0kQ04/rf+RsI
 Xate3bhRXxD6BJic2DAyP6KWtyCcT4bqeIGOxivC5zlLSyW7/fRolQGsNwXKb+63i27G
 f3nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=UUPOa3XdCHYcoLx/8Rv7jexCWtPWMH0y/BtvQy0KvdE=;
 b=C7sEIkf1YA7MD4m5ZCv3K5rA5voZLrSe45qdqMGTVLzy2zXff4hGgdujkirDHfA/Iy
 2Z86k+MDpooUTz320TJsuak01e9uQ50PQe7xzX/RDR+kPJr1gEXapaQMh3lqi4Eh5nlD
 cv49Joizk8XJhfZPtf3rfzody5ejwc4gqUeRaaVH9aArRGsqLJQLYehptYwwr+3rajtr
 +qKrnTMYNWEZBSEOCb19BKs1X6nFIzpG0xD0MRDmhqCSwhuNMQReANC0q6gUF1xOy8XG
 gKhjiUwGT67NhKzClSn0WXy68Z70fW6+4gYU6minXLYcyDFd1y1XJrPZEHjzQI6pXfHu
 V0mA==
X-Gm-Message-State: AGi0PuZRh+iRXoNAmUic8LFkueV1MiRrP1+W8Cv0vtfhR1iFWv6Xld0I
 wXyBHuTllOfSNDlxnUaVA4s=
X-Google-Smtp-Source: APiQypKypSVnD6UnnrTZinEFkK2Xx8fadJPwB459UiNAc04C+ERmDX3ifauRzwJEo71PQoblfxnGhQ==
X-Received: by 2002:a17:90a:f48c:: with SMTP id
 bx12mr5896086pjb.64.1585863053480; 
 Thu, 02 Apr 2020 14:30:53 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id 3sm699454pfd.140.2020.04.02.14.30.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 02 Apr 2020 14:30:52 -0700 (PDT)
Date: Thu, 2 Apr 2020 14:30:51 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v2 12/16] hwmon: add support for the sl28cpld hardware
 monitoring controller
Message-ID: <20200402213051.GA129260@roeck-us.net>
References: <20200402203656.27047-1-michael@walle.cc>
 <20200402203656.27047-13-michael@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200402203656.27047-13-michael@walle.cc>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_143054_812137_21F3604F 
X-CRM114-Status: GOOD (  30.32  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-pwm@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
 linux-watchdog@vger.kernel.org, linux-gpio@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Mark Brown <broonie@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 02, 2020 at 10:36:52PM +0200, Michael Walle wrote:
> This adds support for the hardware monitoring controller of the sl28cpld
> board management controller. This driver is part of a multi-function
> device.
> 
> Signed-off-by: Michael Walle <michael@walle.cc>
> ---
>  Documentation/hwmon/sl28cpld.rst |  36 ++++++++

Needs to be added to Documentation.hwmon/index.rst.
Otherwise looks good. With that fixed, please feel free to add

Acked-by: Guenter Roeck <linux@roeck-us.net>

in the next version.

Guenter

>  drivers/hwmon/Kconfig            |  10 ++
>  drivers/hwmon/Makefile           |   1 +
>  drivers/hwmon/sl28cpld-hwmon.c   | 151 +++++++++++++++++++++++++++++++
>  4 files changed, 198 insertions(+)
>  create mode 100644 Documentation/hwmon/sl28cpld.rst
>  create mode 100644 drivers/hwmon/sl28cpld-hwmon.c
> 
> diff --git a/Documentation/hwmon/sl28cpld.rst b/Documentation/hwmon/sl28cpld.rst
> new file mode 100644
> index 000000000000..7ed65f78250c
> --- /dev/null
> +++ b/Documentation/hwmon/sl28cpld.rst
> @@ -0,0 +1,36 @@
> +.. SPDX-License-Identifier: GPL-2.0-only
> +
> +Kernel driver sl28cpld
> +======================
> +
> +Supported chips:
> +
> +   * Kontron sl28cpld
> +
> +     Prefix: 'sl28cpld'
> +
> +     Datasheet: not available
> +
> +Authors: Michael Walle <michael@walle.cc>
> +
> +Description
> +-----------
> +
> +The sl28cpld is a board management controller which also exposes a hardware
> +monitoring controller. At the moment this controller supports a single fan
> +supervisor. In the future there might be other flavours and additional
> +hardware monitoring might be supported.
> +
> +The fan supervisor has a 7 bit counter register and a counter period of 1
> +second. If the 7 bit counter overflows, the supervisor will automatically
> +switch to x8 mode to support a wider input range at the loss of
> +granularity.
> +
> +Sysfs entries
> +-------------
> +
> +The following attributes are supported.
> +
> +======================= ========================================================
> +fan1_input		Fan RPM. Assuming 2 pulses per revolution.
> +======================= ========================================================
> diff --git a/drivers/hwmon/Kconfig b/drivers/hwmon/Kconfig
> index 05a30832c6ba..c98716f78cfa 100644
> --- a/drivers/hwmon/Kconfig
> +++ b/drivers/hwmon/Kconfig
> @@ -1412,6 +1412,16 @@ config SENSORS_RASPBERRYPI_HWMON
>  	  This driver can also be built as a module. If so, the module
>  	  will be called raspberrypi-hwmon.
>  
> +config SENSORS_SL28CPLD
> +	tristate "Kontron's SMARC-sAL28 hardware monitoring driver"
> +	depends on MFD_SL28CPLD
> +	help
> +	  If you say yes here you get support for a fan connected to the
> +	  input of the SMARC connector of Kontron's SMARC-sAL28 module.
> +
> +	  This driver can also be built as a module.  If so, the module
> +	  will be called sl28cpld-hwmon.
> +
>  config SENSORS_SHT15
>  	tristate "Sensiron humidity and temperature sensors. SHT15 and compat."
>  	depends on GPIOLIB || COMPILE_TEST
> diff --git a/drivers/hwmon/Makefile b/drivers/hwmon/Makefile
> index b0b9c8e57176..dfb0f8cda2dd 100644
> --- a/drivers/hwmon/Makefile
> +++ b/drivers/hwmon/Makefile
> @@ -155,6 +155,7 @@ obj-$(CONFIG_SENSORS_S3C)	+= s3c-hwmon.o
>  obj-$(CONFIG_SENSORS_SCH56XX_COMMON)+= sch56xx-common.o
>  obj-$(CONFIG_SENSORS_SCH5627)	+= sch5627.o
>  obj-$(CONFIG_SENSORS_SCH5636)	+= sch5636.o
> +obj-$(CONFIG_SENSORS_SL28CPLD)	+= sl28cpld-hwmon.o
>  obj-$(CONFIG_SENSORS_SHT15)	+= sht15.o
>  obj-$(CONFIG_SENSORS_SHT21)	+= sht21.o
>  obj-$(CONFIG_SENSORS_SHT3x)	+= sht3x.o
> diff --git a/drivers/hwmon/sl28cpld-hwmon.c b/drivers/hwmon/sl28cpld-hwmon.c
> new file mode 100644
> index 000000000000..c79bdfed8332
> --- /dev/null
> +++ b/drivers/hwmon/sl28cpld-hwmon.c
> @@ -0,0 +1,151 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * sl28cpld hardware monitoring driver.
> + *
> + * Copyright 2019 Kontron Europe GmbH
> + */
> +
> +#include <linux/bitfield.h>
> +#include <linux/hwmon.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/of_device.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
> +
> +#define FAN_INPUT		0x00
> +#define   FAN_SCALE_X8		BIT(7)
> +#define   FAN_VALUE_MASK	GENMASK(6, 0)
> +
> +struct sl28cpld_hwmon {
> +	struct regmap *regmap;
> +	u32 offset;
> +};
> +
> +static umode_t sl28cpld_hwmon_is_visible(const void *data,
> +					 enum hwmon_sensor_types type,
> +					 u32 attr, int channel)
> +{
> +	return 0444;
> +}
> +
> +static int sl28cpld_hwmon_read(struct device *dev,
> +			       enum hwmon_sensor_types type, u32 attr,
> +			       int channel, long *input)
> +{
> +	struct sl28cpld_hwmon *hwmon = dev_get_drvdata(dev);
> +	unsigned int value;
> +	int ret;
> +
> +	switch (attr) {
> +	case hwmon_fan_input:
> +		ret = regmap_read(hwmon->regmap, hwmon->offset + FAN_INPUT,
> +				  &value);
> +		if (ret)
> +			return ret;
> +		/*
> +		 * The register has a 7 bit value and 1 bit which indicates the
> +		 * scale. If the MSB is set, then the lower 7 bit has to be
> +		 * multiplied by 8, to get the correct reading.
> +		 */
> +		if (value & FAN_SCALE_X8)
> +			value = FIELD_GET(FAN_VALUE_MASK, value) << 3;
> +
> +		/*
> +		 * The counter period is 1000ms and the sysfs specification
> +		 * says we should asssume 2 pulses per revolution.
> +		 */
> +		value *= 60 / 2;
> +
> +		break;
> +	default:
> +		return -EOPNOTSUPP;
> +	}
> +
> +	*input = value;
> +	return 0;
> +}
> +
> +static const u32 sl28cpld_hwmon_fan_config[] = {
> +	HWMON_F_INPUT,
> +	0
> +};
> +
> +static const struct hwmon_channel_info sl28cpld_hwmon_fan = {
> +	.type = hwmon_fan,
> +	.config = sl28cpld_hwmon_fan_config,
> +};
> +
> +static const struct hwmon_channel_info *sl28cpld_hwmon_info[] = {
> +	&sl28cpld_hwmon_fan,
> +	NULL
> +};
> +
> +static const struct hwmon_ops sl28cpld_hwmon_ops = {
> +	.is_visible = sl28cpld_hwmon_is_visible,
> +	.read = sl28cpld_hwmon_read,
> +};
> +
> +static const struct hwmon_chip_info sl28cpld_hwmon_chip_info = {
> +	.ops = &sl28cpld_hwmon_ops,
> +	.info = sl28cpld_hwmon_info,
> +};
> +
> +static int sl28cpld_hwmon_probe(struct platform_device *pdev)
> +{
> +	struct device *hwmon_dev;
> +	struct sl28cpld_hwmon *hwmon;
> +	struct resource *res;
> +
> +	if (!pdev->dev.parent)
> +		return -ENODEV;
> +
> +	hwmon = devm_kzalloc(&pdev->dev, sizeof(*hwmon), GFP_KERNEL);
> +	if (!hwmon)
> +		return -ENOMEM;
> +
> +	hwmon->regmap = dev_get_regmap(pdev->dev.parent, NULL);
> +	if (!hwmon->regmap)
> +		return -ENODEV;
> +
> +	res = platform_get_resource(pdev, IORESOURCE_REG, 0);
> +	if (!res)
> +		return -EINVAL;
> +	hwmon->offset = res->start;
> +
> +	hwmon_dev = devm_hwmon_device_register_with_info(&pdev->dev,
> +				"sl28cpld_hwmon", hwmon,
> +				&sl28cpld_hwmon_chip_info, NULL);
> +	if (IS_ERR(hwmon_dev)) {
> +		dev_err(&pdev->dev, "failed to register as hwmon device");
> +		return PTR_ERR(hwmon_dev);
> +	}
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id sl28cpld_hwmon_of_match[] = {
> +	{ .compatible = "kontron,sl28cpld-fan" },
> +	{},
> +};
> +MODULE_DEVICE_TABLE(of, sl28cpld_hwmon_of_match);
> +
> +static const struct platform_device_id sl28cpld_hwmon_id_table[] = {
> +	{ "sl28cpld-fan" },
> +	{}
> +};
> +MODULE_DEVICE_TABLE(platform, sl28cpld_hwmon_id_table);
> +
> +static struct platform_driver sl28cpld_hwmon_driver = {
> +	.probe = sl28cpld_hwmon_probe,
> +	.id_table = sl28cpld_hwmon_id_table,
> +	.driver = {
> +		.name = KBUILD_MODNAME,
> +		.of_match_table = sl28cpld_hwmon_of_match,
> +	},
> +};
> +module_platform_driver(sl28cpld_hwmon_driver);
> +
> +MODULE_DESCRIPTION("sl28cpld Hardware Monitoring Driver");
> +MODULE_AUTHOR("Michael Walle <michael@walle.cc>");
> +MODULE_LICENSE("GPL");

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
