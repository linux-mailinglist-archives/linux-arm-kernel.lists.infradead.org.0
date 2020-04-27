Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C851BAB7B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 19:40:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DUM5qdypHPPrAH3C+UGGWvNpKbOqDzcAiW/YbZpYIcM=; b=Rwg9HYahbX2IAbsQcxSEiouro
	L4zOYrApoCGMXzDB1pfF2eiwWcQcgXJnmuUVTq+CDHqndvGYtvz552BrewTkBp+eq9S81eDx1tnyh
	z65X9s5tg77llNXPj8PGLMKF+f/WTEVm7CHV/pPM35REOH7pG8CUuh5iqKbigtudXAc0Bs4DZDZKH
	FL8bVdUZfvGk8g+GVM7Wa10NKyEzdXcWH7qkMl7K73tFEQQWvlFh3LQDXn79Hta6o8rKeRrxIF7dW
	49EZ6FjpRJ+syz/6qO5gafSKhsuuE6wkZO4UA3l5ZlOJoEDyVrbqGzKNJwHJ8UauZNNgWXY92ShCU
	blhlpjygg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT7kA-0000ot-B6; Mon, 27 Apr 2020 17:40:34 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT7jy-0000mJ-6K
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 17:40:24 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id A316B2305C;
 Mon, 27 Apr 2020 19:40:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1588009213;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Mb7wOIhi91zTa7OdCwnok2RD4/Y3FAeCxF/iMp7nN6o=;
 b=jZOn6q/jxrjwYNn4nj3d83zoUJgdzvpe11GNFG7mRNPqsDk605zmppuXrjG6DwI9lToeYu
 hv+XTWKczoGnq1p/Vnvk/7ctIF/9ikivCHAneUAnz7kw7CjEkx+6UB5FgdL5xAtJTg6voE
 R4T413P+f5UjxDP86b2VwSVDn779YB4=
MIME-Version: 1.0
Date: Mon, 27 Apr 2020 19:40:11 +0200
From: Michael Walle <michael@walle.cc>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH v3 06/16] irqchip: add sl28cpld interrupt controller
 support
In-Reply-To: <87pnbtqhr1.fsf@nanos.tec.linutronix.de>
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-7-michael@walle.cc>
 <87pnbtqhr1.fsf@nanos.tec.linutronix.de>
Message-ID: <87f141bce0a4fda04b550647306be296@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.10
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: web
X-Spam-Status: No, score=1.40
X-Spam-Score: 1.40
X-Rspamd-Queue-Id: A316B2305C
X-Spamd-Result: default: False [1.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; FREEMAIL_ENVRCPT(0.00)[gmail.com];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[24]; NEURAL_HAM(-0.00)[-0.766];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 FREEMAIL_CC(0.00)[linux.intel.com,vger.kernel.org,lists.infradead.org,linaro.org,baylibre.com,kernel.org,suse.com,roeck-us.net,gmail.com,pengutronix.de,linux-watchdog.org,nxp.com,lakedaemon.net,linuxfoundation.org];
 MID_RHS_MATCH_FROM(0.00)[]; SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_104022_382859_01CF9D8D 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, linux-watchdog@vger.kernel.org,
 linux-gpio@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Thomas,

thanks for the review.

Am 2020-04-27 13:40, schrieb Thomas Gleixner:
> Michael Walle <michael@walle.cc> writes:
> 
>> This patch adds support for the interrupt controller inside the sl28
> 
> git grep 'This patch' Documentation/process/

ok.

> 
>> CPLD management controller.
>> 
>> +static int sl28cpld_intc_probe(struct platform_device *pdev)
>> +{
>> +	struct sl28cpld_intc *irqchip;
>> +	struct resource *res;
>> +	unsigned int irq;
>> +	int ret;
>> +
>> +	if (!pdev->dev.parent)
>> +		return -ENODEV;
>> +
>> +	irqchip = devm_kzalloc(&pdev->dev, sizeof(*irqchip), GFP_KERNEL);
>> +	if (!irqchip)
>> +		return -ENOMEM;
>> +
>> +	irqchip->regmap = dev_get_regmap(pdev->dev.parent, NULL);
>> +	if (!irqchip->regmap)
>> +		return -ENODEV;
>> +
>> +	irq = platform_get_irq(pdev, 0);
>> +	if (irq < 0)
>> +		return irq;
>> +
>> +	res = platform_get_resource(pdev, IORESOURCE_REG, 0);
>> +	if (!res)
>> +		return -EINVAL;
>> +
>> +	irqchip->chip.name = "sl28cpld-intc";
>> +	irqchip->chip.irqs = sl28cpld_irqs;
>> +	irqchip->chip.num_irqs = ARRAY_SIZE(sl28cpld_irqs);
>> +	irqchip->chip.num_regs = 1;
>> +	irqchip->chip.status_base = res->start + INTC_IP;
>> +	irqchip->chip.mask_base = res->start + INTC_IE;
>> +	irqchip->chip.mask_invert = true,
>> +	irqchip->chip.ack_base = res->start + INTC_IP;
>> +
>> +	ret = devm_regmap_add_irq_chip(&pdev->dev, irqchip->regmap, irq,
>> +				       IRQF_SHARED | IRQF_ONESHOT, 0,
> 
> What's the point of IRQF_SHARED | IRQF_ONESHOT here?

IRQF_SHARED because this interrupt is shared with all the blocks
which can generate interrupts, i.e. the GPIO contollers.

IRQF_ONESHOT, because its is a threaded interrupt with no primary
handler. But I just noticed, that regmap-irq will also set the
IRQF_ONESHOT. But that the commit 09cadf6e088b ("regmap-irq:
set IRQF_ONESHOT flag to ensure IRQ request") reads like it is
just there to be sure. So I don't know if it should also be set
here.

-michael

> 
>> +				       &irqchip->chip, &irqchip->irq_data);
> 
> Thanks,
> 
>         tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
