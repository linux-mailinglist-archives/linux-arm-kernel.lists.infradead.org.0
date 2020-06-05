Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D27031EF830
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 14:43:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GhWqUXzQPLQsLiD3RHsioQ7oGZZygTD6hAZwrina970=; b=hwXcUEWUUNCns/meRA+OtW1HR
	FBEXR4zV1mIGhINbMZCh7VHb5xw3hz9ZWpNBs29lXp1hr9X56GenHKFptPBLWlD1qda389W3zvypH
	YvLBcFT5RyfPkf6g0T+m+Ao8MjiJdGYFmMn9xdOETaMGJImN9qBbISFrrc5iKA/UR1Da+qwZEoaR5
	BACPziuPeEJqp5FzcBbUplFBhSCzUx36wBazNaZZA4MDnbrLJphqCca68VoHzxAU9m7JzNg8x2tVY
	lTKz+K2dP0PCz1wGvZux49LkgvQKkQhJjFmvGgmhvUqd5DRU/mqhigic2Af1eiAmqJkSmzaF9s9Ud
	+zdqJq/nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhBge-0001Kl-9L; Fri, 05 Jun 2020 12:43:04 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhBgX-0001KE-CK
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 12:42:59 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 3389822FEC;
 Fri,  5 Jun 2020 14:42:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1591360973;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=V/2TzxsPSlfyINNO8TTfnGs1HicX0u51iSKBI+ftYOE=;
 b=ppjkq+9sTLA7e0BVJjM/uHM60R+cDCBYYMmhqDwQNcUvU9b7+pKRcr03C7m5x0zjrB3ziF
 YWsz9DFPvrHEqnF8RKJ1y+mHfSEf3iFURJD8DMeRu/20zVMLDC7Y4IGTLAjYc4Il/lkiaE
 DPx5ggCjNo0+Q9tyOM36Ky+mQkjuEFI=
MIME-Version: 1.0
Date: Fri, 05 Jun 2020 14:42:53 +0200
From: Michael Walle <michael@walle.cc>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: Re: [PATCH v4 06/11] gpio: add support for the sl28cpld GPIO
 controller
In-Reply-To: <CAHp75VfRhL1f-XD=PMbqd3BLeJQzQMFAupSzqAvx0g7-X_2VhQ@mail.gmail.com>
References: <20200604211039.12689-1-michael@walle.cc>
 <20200604211039.12689-7-michael@walle.cc>
 <CAHp75VfRhL1f-XD=PMbqd3BLeJQzQMFAupSzqAvx0g7-X_2VhQ@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <216db3154b46bd80202873df055bb3f3@walle.cc>
X-Sender: michael@walle.cc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_054257_718611_77FDE660 
X-CRM114-Status: GOOD (  21.74  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 2020-06-05 14:00, schrieb Andy Shevchenko:
> On Fri, Jun 5, 2020 at 12:14 AM Michael Walle <michael@walle.cc> wrote:
> 
>> Add support for the GPIO controller of the sl28 board management
>> controller. This driver is part of a multi-function device.
>> 
>> A controller has 8 lines. There are three different flavors:
>> full-featured GPIO with interrupt support, input-only and output-only.
> 
> ...
> 
>> +#include <linux/of_device.h>
> 
> I think also not needed.
> But wait...
> 
>> +       return devm_regmap_add_irq_chip_np(dev, dev_of_node(dev), 
>> regmap,
> 
> It seems regmap needs to be converted to use fwnode.

Mhh, this _np functions was actually part of this series in the
beginning.

>> +                                          irq, IRQF_SHARED | 
>> IRQF_ONESHOT, 0,
>> +                                          irq_chip, &gpio->irq_data);
> 
> ...
> 
>> +       if (!pdev->dev.parent)
>> +               return -ENODEV;
> 
> Are we expecting to get shot into foot? I mean why we need this check?

Can we be sure, that we always have a parent node? You are the first
which complains about this ;) There were some other comments to move
this to the beginning of the function.

> 
>> +       dev_id = platform_get_device_id(pdev);
>> +       if (dev_id)
>> +               type = dev_id->driver_data;
> 
> Oh, no. In new code we don't need this. We have facilities to provide
> platform data in a form of fwnode.

Ok I'll look into that.

But I already have a question, so there are of_property_read_xx(), which
seems to be the old functions, then there is device_property_read_xx() 
and
fwnode_property_read_xx(). What is the difference between the latter 
two?

> 
>> +       else
>> +               type = 
>> (uintptr_t)of_device_get_match_data(&pdev->dev);
> 
> So does this. device_get_match_data().
ok

> 
>> +       if (!type)
>> +               return -ENODEV;
> 
> ...
> 
>> +       if (irq_support &&
> 
> Why do you need this flag? Can't simple IRQ number be sufficient?

I want to make sure, the is no misconfiguration. Eg. only GPIO
flavors which has irq_support set, have the additional interrupt
registers.

> 
>> +           device_property_read_bool(&pdev->dev, 
>> "interrupt-controller")) {
>> +               irq = platform_get_irq(pdev, 0);
>> +               if (irq < 0)
>> +                       return irq;
>> +
>> +               ret = sl28cpld_gpio_irq_init(&pdev->dev, gpio, regmap,
>> +                                            base, irq);
>> +               if (ret)
>> +                       return ret;
>> +
>> +               config.irq_domain = 
>> regmap_irq_get_domain(gpio->irq_data);
>> +       }
> 
> ...
> 
>> +static const struct of_device_id sl28cpld_gpio_of_match[] = {
> 
>> +       { .compatible = "kontron,sl28cpld-gpio",
>> +         .data = (void *)SL28CPLD_GPIO },
>> +       { .compatible = "kontron,sl28cpld-gpi",
>> +         .data = (void *)SL28CPLD_GPI },
>> +       { .compatible = "kontron,sl28cpld-gpo",
>> +         .data = (void *)SL28CPLD_GPO },
> 
> All above can be twice less LOCs.

They are longer than 80 chars. Or do I miss something?

> 
>> +       {},
> 
> No comma.

ok

>> +};
> 
> 
> ...
> 
>> +               .name = KBUILD_MODNAME,
> 
> This actually not good idea in long term. File name can change and 
> break an ABI.

Ahh an explanation, why this is bad. Ok makes sense, although to be 
fair,
.id_table should be used for the driver name matching. I'm not sure if
this is used somewhere else, though.


-- 
-michael

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
