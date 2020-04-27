Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F691BABD1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 19:58:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LnkfWLoqokPmQO5fCF6bivlBHvqS+p3UIucQo3ph+2g=; b=Di8ioH8PocXoHvOdTssUM0LG2
	BWZfdolTgoX/upgJW+Od0k4j5XJdtvNNCk+vs5roqjTZl9ngp/xcizViWYh7A04VhJ6R8+fK/RXLk
	4hf3IuFtYmUj4tVe8K6c2TJSAu4jPI1Pl/vKUk3ufp+IbhFlpJmEqTew//WHpr6C+6yjVLNN54YH3
	9uV/s5QuaTbUQhCPNPN0TCcjeVUos8e4Td2Vf+tnMj+vZYSSsM9JldTk0ANg7BaJfS9OT+Rl3KRy0
	hjI5aARhZbGvB1PjRwD6+f1JszEZ3FiUc1gv1wRHpK8uzbQtiaIZBRZivWOjIk2xVPt3pYcE0Zz2Z
	2e9z1RATw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT81d-0004AY-9Q; Mon, 27 Apr 2020 17:58:37 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT81R-00048w-43
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 17:58:26 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 0E4E323060;
 Mon, 27 Apr 2020 19:58:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1588010302;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kuXxMU3XohLcLuj7G8DbEK61wsli0t56ftpqdXv6gHs=;
 b=BjqUDFiMiUoB5EOzeIikHKwr+tp8SxHEsoerjHtd9z1THx0O4KAwF9vKQGIZctvLq394Cg
 ZpkQkrazePtHUKwyrY7KH/9H83n+AlCdAMH/NkZoOBMnT6SQN0SX+Zl3tAux8l44NobQ7y
 mqZnPqIvvbmtL/bpsPNDTUrXK6rmzLQ=
MIME-Version: 1.0
Date: Mon, 27 Apr 2020 19:58:22 +0200
From: Michael Walle <michael@walle.cc>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH v3 11/16] gpio: add support for the sl28cpld GPIO
 controller
In-Reply-To: <87k121qhj7.fsf@nanos.tec.linutronix.de>
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-12-michael@walle.cc>
 <87k121qhj7.fsf@nanos.tec.linutronix.de>
Message-ID: <8acfbefeb9d7f59329f2899176059600@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.10
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: web
X-Spam-Status: No, score=1.40
X-Spam-Score: 1.40
X-Rspamd-Queue-Id: 0E4E323060
X-Spamd-Result: default: False [1.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; FREEMAIL_ENVRCPT(0.00)[gmail.com];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[24]; NEURAL_HAM(-0.00)[-0.765];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 FREEMAIL_CC(0.00)[linux.intel.com,vger.kernel.org,lists.infradead.org,linaro.org,baylibre.com,kernel.org,suse.com,roeck-us.net,gmail.com,pengutronix.de,linux-watchdog.org,nxp.com,lakedaemon.net,linuxfoundation.org];
 MID_RHS_MATCH_FROM(0.00)[]; SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_105825_310724_953C7734 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
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

Am 2020-04-27 13:45, schrieb Thomas Gleixner:
> Michael Walle <michael@walle.cc> writes:
>> +struct sl28cpld_gpio {
>> +	struct regmap_irq_chip irq_chip;
>> +	struct regmap_irq_chip_data *irq_data;
>> +};
>> +
>> +static const struct regmap_irq sl28cpld_gpio_irqs[] = {
>> +	REGMAP_IRQ_REG_LINE(0, 8),
>> +	REGMAP_IRQ_REG_LINE(1, 8),
>> +	REGMAP_IRQ_REG_LINE(2, 8),
>> +	REGMAP_IRQ_REG_LINE(3, 8),
>> +	REGMAP_IRQ_REG_LINE(4, 8),
>> +	REGMAP_IRQ_REG_LINE(5, 8),
>> +	REGMAP_IRQ_REG_LINE(6, 8),
>> +	REGMAP_IRQ_REG_LINE(7, 8),
>> +};
> 
> This is exactly the same as the one in the irq chip patch.

To my knowledge this boilerplate is just to describe this
irqchip has 8 different IRQs.

>> +static int sl28cpld_gpio_irq_init(struct device *dev,
>> +				  struct sl28cpld_gpio *gpio,
>> +				  struct regmap *regmap, unsigned int base,
>> +				  int irq)
>> +{
>> +	struct regmap_irq_chip *irq_chip = &gpio->irq_chip;
>> +
>> +	irq_chip->name = "sl28cpld-gpio-irq",
>> +	irq_chip->irqs = sl28cpld_gpio_irqs;
>> +	irq_chip->num_irqs = ARRAY_SIZE(sl28cpld_gpio_irqs);
>> +	irq_chip->num_regs = 1;
>> +	irq_chip->status_base = base + GPIO_REG_IP;
>> +	irq_chip->mask_base = base + GPIO_REG_IE;
>> +	irq_chip->mask_invert = true,
>> +	irq_chip->ack_base = base + GPIO_REG_IP;
>> +
>> +	return devm_regmap_add_irq_chip_np(dev, dev_of_node(dev), regmap,
>> +					   irq, IRQF_SHARED | IRQF_ONESHOT, 0,
>> +					   irq_chip, &gpio->irq_data);
>> +}
> 
> And this looks pretty familiar as well. What's the point of duplicating
> that code?

this is also just boilerplate to configure the irqchip. But there are 
two
distinct blocks inside the board management controller:
  - an interrupt controller (which has 8 interrupts)
  - and gpio controllers which also happen to have 8 interrupts and
    both have some shared semantics for now. But the GPIO building block
    might be extended to provide interrupt type settings, i.e. falling/
    rising/level triggered interrupts.

So yes both look similar, but they are two different blocks, they use
different registers and they might drift apart in the future.

-michael

> 
> Thanks,
> 
>         tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
