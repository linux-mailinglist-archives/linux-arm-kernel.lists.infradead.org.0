Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E21AE1AD631
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 08:34:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O1UdHzgrXhMISgH36do18iw/P0TrTT0JM9l/fX4uOO0=; b=okjUZ6Y9eP0epwWT5kOQwPcxp
	FntaGSQMkl2CAXoHyAOEqxiseyfLNaJHrMytD32iUxeiLYiYDNIDfK/qWa+zIUeEpuK9lhWmQgAIX
	1ydGceRBWck2GmWw08sIWqmZ8lkXqK1YY6VTjK6ZjdhHwg7/4pWKPAhbgnYhEJ2NXUPKkI0mClfvF
	QQ0DNO4pr53jz67H3uZuvyBmmY9PLUtVipsgGyGjLGpCx4V5tKiHZ6xr339XfvtU1Sxn4BBwvFwGE
	PmteHj1y++ne5AYF/na0PPN//5kwCte+5sDO1+sEbQlrWdKf8y3pRgmTNSLow6vBdwua8zeL6Mrrp
	PGgcekgng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPKa2-0004lH-DG; Fri, 17 Apr 2020 06:34:26 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPKZt-0004kl-He
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 06:34:20 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 062C222EEB;
 Fri, 17 Apr 2020 08:34:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1587105252;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=yRofvrT7uJxuqc53iK0glkaODL7zqW5wwpHXjFjKcgw=;
 b=QJWl4WcToI73JqjXrubzRp0qLIcPIjk2ilLyWMLcnLKpiGqrfWON6uL1z8JhJq7r5UUkyF
 TKqmBRGjCEejYmQaC3M7NJhp8Ji3md43YmGOp9YWBADR/RoIApO6RHynSWNUvMQUz3QA90
 FlDbwzSR3GqZVaXjssTh33Iz8CDafW4=
MIME-Version: 1.0
Date: Fri, 17 Apr 2020 08:34:09 +0200
From: Michael Walle <michael@walle.cc>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v2 10/16] gpio: add a reusable generic gpio_chip using
 regmap
In-Reply-To: <CACRpkdaqgHhPwdKdUai4zvi21qR-cSQUKyzZ3SyfWBLPN9us3w@mail.gmail.com>
References: <20200402203656.27047-1-michael@walle.cc>
 <20200402203656.27047-11-michael@walle.cc>
 <CACRpkdaqgHhPwdKdUai4zvi21qR-cSQUKyzZ3SyfWBLPN9us3w@mail.gmail.com>
Message-ID: <f82706a8596436d13642c49e26233133@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.10
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: web
X-Spam-Status: No, score=1.40
X-Spam-Score: 1.40
X-Rspamd-Queue-Id: 062C222EEB
X-Spamd-Result: default: False [1.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; FREEMAIL_ENVRCPT(0.00)[gmail.com];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[23]; NEURAL_HAM(-0.00)[-0.393];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,baylibre.com,kernel.org,suse.com,roeck-us.net,linaro.org,gmail.com,pengutronix.de,linux-watchdog.org,nxp.com,linutronix.de,lakedaemon.net,linuxfoundation.org];
 MID_RHS_MATCH_FROM(0.00)[]; SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_233417_878407_80A22E9B 
X-CRM114-Status: GOOD (  21.59  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:OPEN
 FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

Am 2020-04-16 11:27, schrieb Linus Walleij:
> On Thu, Apr 2, 2020 at 10:37 PM Michael Walle <michael@walle.cc> wrote:
> 
>> There are quite a lot simple GPIO controller which are using regmap to
>> access the hardware. This driver tries to be a base to unify existing
>> code into one place. This won't cover everything but it should be a 
>> good
>> starting point.
>> 
>> It does not implement its own irq_chip because there is already a
>> generic one for regmap based devices. Instead, the irq_chip will be
>> instanciated in the parent driver and its irq domain will be associate
>> to this driver.
>> 
>> For now it consists of the usual registers, like set (and an optional
>> clear) data register, an input register and direction registers.
>> Out-of-the-box, it supports consecutive register mappings and mappings
>> where the registers have gaps between them with a linear mapping 
>> between
>> GPIO offset and bit position. For weirder mappings the user can 
>> register
>> its own .xlate().
>> 
>> Signed-off-by: Michael Walle <michael@walle.cc>
> 
> Overall I really like this driver and I think we should merge is as 
> soon
> as it is in reasonable shape and then improve on top so we can start
> migrating drivers to it.
> 
>> +static int gpio_regmap_to_irq(struct gpio_chip *chip, unsigned int 
>> offset)
>> +{
>> +       struct gpio_regmap_data *data = gpiochip_get_data(chip);
>> +       struct gpio_regmap *gpio = data->gpio;
>> +
>> +       /* the user might have its own .to_irq callback */
>> +       if (gpio->to_irq)
>> +               return gpio->to_irq(gpio, offset);
>> +
>> +       return irq_create_mapping(gpio->irq_domain, offset);
> 
> I think that should at least be irq_find_mapping(), the mapping should
> definately not be created by the .to_irq() callback since that is just
> a convenience function.

what do you mean by conenience function? are there other ways? if you 
use
irq_find_mapping() who will create the mappings? most gpio drivers use a
similar function like gpio_regmap_to_irq().

> 
>> +       if (gpio->irq_domain)
>> +               chip->to_irq = gpio_regmap_to_irq;
> 
> I don't know about this.
> (...)
>> + * @irq_domain:                (Optional) IRQ domain if the 
>> controller is
>> + *                     interrupt-capable
> (...)
>> +       struct irq_domain *irq_domain;
> 
> I don't think this is a good storage place for the irqdomain, we 
> already have
> gpio_irq_chip inside gpio_chip and that has an irqdomain, we should
> strive to reuse that infrastructure also for regmap GPIO I think, for 
> now
> I would just leave .to_irq() out of this and let the driver deal with 
> any
> irqs.

How would a driver attach the to_irq callback then? At the moment, the
gpio_regmap doesn't expose the gpio_chip. So either we have to do that 
or
the config still have to have a .to_irq property.

-michael

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
