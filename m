Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C35811BA2D7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 13:42:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+/sU2iJdsJOosCkLcMseEx8Yd2lV3Lqz+4IGQ8pRodY=; b=MyqUQI2PG4Rojz
	CXBj3a8nYcbn+sVgqLSO2cZc9Zk8Rg/EBM895bGFjaENjoC6sPCCT8hs6gvuQRe7H4tz448/PYqa/
	1qxeLzi0H9NW7ktWOHATSGbfFNs+V4N53cNWj/96wV/K0l03WIbJxitC0im0EEtzqqEgYoPmGw+dr
	8o/svnfUSR8f+zAOf6O6ut3TqJnSXq2O7+m2yR99/qm3Pi1KnYzUkKE31BGZPASiFI6s0p9NT177O
	gozL8V0jetQNCLGi2iR6/fzyYkJhpTRdUGpUk/Vj/6u8zLhc/fW730j5gLK6Y0BrhNGo0wuEmFF2m
	jrrE/8wy5gCscVhaKnPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT29h-0005RK-UD; Mon, 27 Apr 2020 11:42:33 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT29O-0005Oq-DQ
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 11:42:15 +0000
Received: from p5de0bf0b.dip0.t-ipconnect.de ([93.224.191.11]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1jT29J-0001JG-W7; Mon, 27 Apr 2020 13:42:10 +0200
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id 66B12100606; Mon, 27 Apr 2020 13:42:09 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Michael Walle <michael@walle.cc>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
 linux-pwm@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 09/16] gpiolib: Introduce gpiochip_irqchip_add_domain()
In-Reply-To: <20200423174543.17161-10-michael@walle.cc>
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-10-michael@walle.cc>
Date: Mon, 27 Apr 2020 13:42:09 +0200
Message-ID: <87mu6xqhny.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_044214_601615_88FDFCF9 
X-CRM114-Status: GOOD (  17.33  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Marc Zyngier <maz@kernel.org>, Jean Delvare <jdelvare@suse.com>,
 Jason Cooper <jason@lakedaemon.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shawn Guo <shawnguo@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Li Yang <leoyang.li@nxp.com>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Michael Walle <michael@walle.cc>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, Mark Brown <broonie@kernel.org>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Lee Jones <lee.jones@linaro.org>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Michael Walle <michael@walle.cc> writes:
> This connects an IRQ domain to a gpiochip and reuses
> gpiochip_to_irq().

A little bit more context and explanation why this function is useful
would be appreciated.

> Signed-off-by: Michael Walle <michael@walle.cc>
> ---
>  drivers/gpio/gpiolib.c      | 20 ++++++++++++++++++++
>  include/linux/gpio/driver.h |  3 +++
>  2 files changed, 23 insertions(+)
>
> diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
> index 40f2d7f69be2..7b3d7f496b9a 100644
> --- a/drivers/gpio/gpiolib.c
> +++ b/drivers/gpio/gpiolib.c
> @@ -2722,6 +2722,26 @@ int gpiochip_irqchip_add_key(struct gpio_chip *gc,
>  }
>  EXPORT_SYMBOL_GPL(gpiochip_irqchip_add_key);
>  
> +/**
> + * gpiochip_irqchip_add_key() - adds an irqdomain to a gpiochip

Copy & paste is wonderful

> + * @gc: the gpiochip to add the irqchip to
> + * @domain: the irqdomain to add to the gpiochip
> + *
> + * This function adds an IRQ domain to the gpiochip.
> + */
> +int gpiochip_irqchip_add_domain(struct gpio_chip *gc,
> +				struct irq_domain *domain)
> +{
> +	if (!domain)
> +		return -EINVAL;
> +
> +	gc->to_irq = gpiochip_to_irq;
> +	gc->irq.domain = domain;
> +
> +	return 0;
> +}

Thanks,

        tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
