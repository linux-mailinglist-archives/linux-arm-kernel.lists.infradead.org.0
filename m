Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60CA81BA2EA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 13:45:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8evafKWvVlnCXWrCd+vxEc/cOeXGZWHyylH082GmODg=; b=pT90mHvP+zr78G
	BERxkJ7RmDKYKHIjomrDiIrl2eEjpUBEHNnNacVpB40qoPwA3eQgfvPS3qaq6HGtDR3QZ10/dVJlz
	C2I7zeB7eXSJncDg5YoEWhL71QIohqR7PNYtO2i5aGIFp7KYquwfYjcSSXxxPIb05nar5maA3cMiS
	5ff/VxQeySIIYMfshQlNqjjgffSbu6UoKX0AJgQFx312FP3H6jqMB849The+A2sGvUBZVoGjGbRLf
	0qcGr5qa/1TSJzuAal7hiL3IHh5v5J3oJ/hr7Rtf3r9GMOSFIL3xm7og1Nw+ZYgf2iLEkjDtSgaZx
	XEE0Owc+f8412ne8WA5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT2CS-0007yx-9l; Mon, 27 Apr 2020 11:45:24 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT2CA-00078j-Kn
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 11:45:08 +0000
Received: from p5de0bf0b.dip0.t-ipconnect.de ([93.224.191.11]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1jT2C4-0001Mi-Mv; Mon, 27 Apr 2020 13:45:00 +0200
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id 1C40E100606; Mon, 27 Apr 2020 13:45:00 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Michael Walle <michael@walle.cc>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
 linux-pwm@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 11/16] gpio: add support for the sl28cpld GPIO
 controller
In-Reply-To: <20200423174543.17161-12-michael@walle.cc>
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-12-michael@walle.cc>
Date: Mon, 27 Apr 2020 13:45:00 +0200
Message-ID: <87k121qhj7.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_044506_842657_B384E8AB 
X-CRM114-Status: GOOD (  12.60  )
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
> +struct sl28cpld_gpio {
> +	struct regmap_irq_chip irq_chip;
> +	struct regmap_irq_chip_data *irq_data;
> +};
> +
> +static const struct regmap_irq sl28cpld_gpio_irqs[] = {
> +	REGMAP_IRQ_REG_LINE(0, 8),
> +	REGMAP_IRQ_REG_LINE(1, 8),
> +	REGMAP_IRQ_REG_LINE(2, 8),
> +	REGMAP_IRQ_REG_LINE(3, 8),
> +	REGMAP_IRQ_REG_LINE(4, 8),
> +	REGMAP_IRQ_REG_LINE(5, 8),
> +	REGMAP_IRQ_REG_LINE(6, 8),
> +	REGMAP_IRQ_REG_LINE(7, 8),
> +};

This is exactly the same as the one in the irq chip patch.

> +static int sl28cpld_gpio_irq_init(struct device *dev,
> +				  struct sl28cpld_gpio *gpio,
> +				  struct regmap *regmap, unsigned int base,
> +				  int irq)
> +{
> +	struct regmap_irq_chip *irq_chip = &gpio->irq_chip;
> +
> +	irq_chip->name = "sl28cpld-gpio-irq",
> +	irq_chip->irqs = sl28cpld_gpio_irqs;
> +	irq_chip->num_irqs = ARRAY_SIZE(sl28cpld_gpio_irqs);
> +	irq_chip->num_regs = 1;
> +	irq_chip->status_base = base + GPIO_REG_IP;
> +	irq_chip->mask_base = base + GPIO_REG_IE;
> +	irq_chip->mask_invert = true,
> +	irq_chip->ack_base = base + GPIO_REG_IP;
> +
> +	return devm_regmap_add_irq_chip_np(dev, dev_of_node(dev), regmap,
> +					   irq, IRQF_SHARED | IRQF_ONESHOT, 0,
> +					   irq_chip, &gpio->irq_data);
> +}

And this looks pretty familiar as well. What's the point of duplicating
that code?

Thanks,

        tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
