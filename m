Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 627471EF6F1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 14:01:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fH/J0vlwYLejXe8fl4ZdcLKqRVreN6eemf65cC+syiU=; b=McgbACMjxO9TS7
	u2xzaQoY0HwGWSExNzT/mzfOWkH39t3o7wZ3QUryPDHzYdRfEG35u+Yxnw/xkpKpBry6TKWeQ/Gdz
	b39P61hvPVcPTXIwvgH0TJfUaAAh18MqV3mlztanaNIIIBybq1pmAKyprb1poLkOAOMm6cFpxGkB1
	H+ahsZo0WMqmGfU0h7Ser31nNelpNR8Uf6zdoBPSUX/PFxMLl15mpYkME0GSiQPbg5RzzP5BmGZ1b
	YFS83LKx5tcWe0IyuBhe8nayk6/xBq1U1I77fnyQUfh55vKFQGf9rPoX6ZOhJNRyA2BNYbK0QBE8n
	KgFITmqf4wvy6ODutMAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhB24-00071P-V9; Fri, 05 Jun 2020 12:01:08 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhB1x-00070Q-Aw
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 12:01:04 +0000
Received: by mail-pj1-x1042.google.com with SMTP id 5so2643210pjd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jun 2020 05:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0Xf0VKrmkHeAJFwaoucbXABKRmsaGZeECCqgdfD3J2s=;
 b=tYaQ3fCRjkKhBvGrmDqpWE015RUF+OhT+4CSQYciswYQW+XoCZjEZxlXAum1/YUKrd
 K9PHXdqnhMWsxWT7E2CSDhXqBR3tg/yhSKxI94MXIuQoY/fILsKhYTaQzpiSWoM/6MSr
 GzXXsAB8LdUIVivCc1r7cqFsi8/FhhiHSrjA9+0Q1lWgc/pI6EFFaITTwv13WiEYNPZl
 HyFPB3z+YmFLc3j0k1IE+6d1yM+8jDF8Ws7GcuIYPQiVhSYjeYdhnODyb+XxiuSYGNYp
 QkvwXV3krpkE6XWNsMUyXCTpXXMKBYxgMxz7osqQKgnZV3nU1AQzKKS6AAHq4GDexQVL
 lf9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0Xf0VKrmkHeAJFwaoucbXABKRmsaGZeECCqgdfD3J2s=;
 b=b79lfBmPXeWNta84A0PeR92evSvTUd9KssM5HM/9Ir/4/hZZbfmuK8eUQYOJ/nsa8V
 CTDni07M64NhkxQeUzLu53tKcFci9ODrDy0EZOxg6PCfwReeeyiJi5p/j68h/NQqiVNN
 QmuxZgn0dSZd4Ju1RkcbO8EPexQ5pbWDU42AK2/H7JZf0oMSLYOII9i/4ohFzA9lYIym
 kfcqs7mj7txbfMyX7XS87GSKz+Hh9uTs5lIWZVbuMfYEMpRVeb1mWnrfed3hi44VdTPW
 acLVG8NRTl5yFYslVhf5Mf0vj4qnKkrlSRStKQ+UTlGR3HhsKL+LNkMYCNQcwwDBA5S3
 iquw==
X-Gm-Message-State: AOAM533AtvhEJlbeE7WZ1D9GClzjnSkW/iPPz083AGtQFAu0duqVEXZk
 6DbetFbnMglCyp7J7VkN9y6dM0Y+C3BOaPCwXx7SXvNcDME=
X-Google-Smtp-Source: ABdhPJwACy0B38AavuEf6WMnT76KysnsvN8UpWw4wnOgQGpEezjfzKwDqPqc7U2vaZTzr539FT2ktvxUQOnmdxD8EuY=
X-Received: by 2002:a17:90a:ac05:: with SMTP id
 o5mr2734229pjq.228.1591358460238; 
 Fri, 05 Jun 2020 05:01:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200604211039.12689-1-michael@walle.cc>
 <20200604211039.12689-7-michael@walle.cc>
In-Reply-To: <20200604211039.12689-7-michael@walle.cc>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 5 Jun 2020 15:00:48 +0300
Message-ID: <CAHp75VfRhL1f-XD=PMbqd3BLeJQzQMFAupSzqAvx0g7-X_2VhQ@mail.gmail.com>
Subject: Re: [PATCH v4 06/11] gpio: add support for the sl28cpld GPIO
 controller
To: Michael Walle <michael@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_050101_377441_C4F26A07 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, linux-watchdog@vger.kernel.org,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-hwmon@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 5, 2020 at 12:14 AM Michael Walle <michael@walle.cc> wrote:

> Add support for the GPIO controller of the sl28 board management
> controller. This driver is part of a multi-function device.
>
> A controller has 8 lines. There are three different flavors:
> full-featured GPIO with interrupt support, input-only and output-only.

...

> +#include <linux/of_device.h>

I think also not needed.
But wait...

> +       return devm_regmap_add_irq_chip_np(dev, dev_of_node(dev), regmap,

It seems regmap needs to be converted to use fwnode.

> +                                          irq, IRQF_SHARED | IRQF_ONESHOT, 0,
> +                                          irq_chip, &gpio->irq_data);

...

> +       if (!pdev->dev.parent)
> +               return -ENODEV;

Are we expecting to get shot into foot? I mean why we need this check?

> +       dev_id = platform_get_device_id(pdev);
> +       if (dev_id)
> +               type = dev_id->driver_data;

Oh, no. In new code we don't need this. We have facilities to provide
platform data in a form of fwnode.

> +       else
> +               type = (uintptr_t)of_device_get_match_data(&pdev->dev);

So does this. device_get_match_data().

> +       if (!type)
> +               return -ENODEV;

...

> +       if (irq_support &&

Why do you need this flag? Can't simple IRQ number be sufficient?

> +           device_property_read_bool(&pdev->dev, "interrupt-controller")) {
> +               irq = platform_get_irq(pdev, 0);
> +               if (irq < 0)
> +                       return irq;
> +
> +               ret = sl28cpld_gpio_irq_init(&pdev->dev, gpio, regmap,
> +                                            base, irq);
> +               if (ret)
> +                       return ret;
> +
> +               config.irq_domain = regmap_irq_get_domain(gpio->irq_data);
> +       }

...

> +static const struct of_device_id sl28cpld_gpio_of_match[] = {

> +       { .compatible = "kontron,sl28cpld-gpio",
> +         .data = (void *)SL28CPLD_GPIO },
> +       { .compatible = "kontron,sl28cpld-gpi",
> +         .data = (void *)SL28CPLD_GPI },
> +       { .compatible = "kontron,sl28cpld-gpo",
> +         .data = (void *)SL28CPLD_GPO },

All above can be twice less LOCs.

> +       {},

No comma.

> +};


...

> +               .name = KBUILD_MODNAME,

This actually not good idea in long term. File name can change and break an ABI.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
