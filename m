Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 849521BA291
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 13:40:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cbQ1kDYGvOfv+BljK5FcKZ9ppVgPYjT8ykq2HEzp5gY=; b=d25Z0h9yymSYBz
	RwB3NmoE/MWdTCBGmDXiLKfa+MiSxRVRw5mIckV6hWtA4qWCfCxj8YcHQz0lplFsgghW7BLrogZTq
	vm6teB6xiEdEC7BAFHZplHu2uf+UB6oRVtQZhLJRHVdbBC8b56NaDJPcEukS1eJuKN8q34XaVaZ8I
	dzvG7x58mwi9dw6HbKREDEBFJiXZ0xSWVsY0XLeli0epWvZi3o9B2eQS+KWSvixGFgrxlkcrOjfCR
	oiX+cMULbAnp0brc/cba6NCZQC62AkyeiuDkU+7LmXMBpzuG57Lf8kwb+0oM1Kpupu7R/UT8sbGiR
	ZWNjCVU40di0n9S59QoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT27v-0004Q1-UD; Mon, 27 Apr 2020 11:40:43 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT27j-0004OV-HU
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 11:40:34 +0000
Received: from p5de0bf0b.dip0.t-ipconnect.de ([93.224.191.11]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1jT27W-0001FM-LG; Mon, 27 Apr 2020 13:40:18 +0200
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id 118A3100606; Mon, 27 Apr 2020 13:40:18 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Michael Walle <michael@walle.cc>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
 linux-pwm@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 06/16] irqchip: add sl28cpld interrupt controller
 support
In-Reply-To: <20200423174543.17161-7-michael@walle.cc>
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-7-michael@walle.cc>
Date: Mon, 27 Apr 2020 13:40:18 +0200
Message-ID: <87pnbtqhr1.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_044033_246836_B1E7B1B5 
X-CRM114-Status: GOOD (  11.83  )
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

> This patch adds support for the interrupt controller inside the sl28

git grep 'This patch' Documentation/process/

> CPLD management controller.
>
> +static int sl28cpld_intc_probe(struct platform_device *pdev)
> +{
> +	struct sl28cpld_intc *irqchip;
> +	struct resource *res;
> +	unsigned int irq;
> +	int ret;
> +
> +	if (!pdev->dev.parent)
> +		return -ENODEV;
> +
> +	irqchip = devm_kzalloc(&pdev->dev, sizeof(*irqchip), GFP_KERNEL);
> +	if (!irqchip)
> +		return -ENOMEM;
> +
> +	irqchip->regmap = dev_get_regmap(pdev->dev.parent, NULL);
> +	if (!irqchip->regmap)
> +		return -ENODEV;
> +
> +	irq = platform_get_irq(pdev, 0);
> +	if (irq < 0)
> +		return irq;
> +
> +	res = platform_get_resource(pdev, IORESOURCE_REG, 0);
> +	if (!res)
> +		return -EINVAL;
> +
> +	irqchip->chip.name = "sl28cpld-intc";
> +	irqchip->chip.irqs = sl28cpld_irqs;
> +	irqchip->chip.num_irqs = ARRAY_SIZE(sl28cpld_irqs);
> +	irqchip->chip.num_regs = 1;
> +	irqchip->chip.status_base = res->start + INTC_IP;
> +	irqchip->chip.mask_base = res->start + INTC_IE;
> +	irqchip->chip.mask_invert = true,
> +	irqchip->chip.ack_base = res->start + INTC_IP;
> +
> +	ret = devm_regmap_add_irq_chip(&pdev->dev, irqchip->regmap, irq,
> +				       IRQF_SHARED | IRQF_ONESHOT, 0,

What's the point of IRQF_SHARED | IRQF_ONESHOT here?

> +				       &irqchip->chip, &irqchip->irq_data);

Thanks,

        tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
