Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C3F1BABAF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 19:49:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AvJCW08t3nZnEFYF7FBxzKoSdh/M3XgeLUPqhDYOkgo=; b=lU612WTlINuLP04Ql8RiRjFBL
	IfKcxqVo/drwan6WgWHh8UO0CxLtlVubG3LzbnZLqaNZVv3EsgmjPRsqXqqW4iqnPJtK7L2KKVim6
	ygjDTeATz9x42RNilhqdkwq5MM1FXBxBOrGvdxRxfyIh+HX3PyiOfvSN0/hMU5D9SZ9qwCJcrbXT4
	s15xeaKODNH7hPY+umYIsNUcGbk2FerCdXPgsDe6amvxx89huNrr6sXejKKLKy2ounO1bW9IfSMux
	CmQFGIJslSshmPe8FrvEpd27WTDRATEHpxSGPUZ5egiK9ru9pllTlDZF82j1goSa1/YqO2nG7zi8s
	MXqZarzLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT7sr-0005ms-EG; Mon, 27 Apr 2020 17:49:33 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT7sj-0005m8-6m
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 17:49:26 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id AAEB72305C;
 Mon, 27 Apr 2020 19:49:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1588009761;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uIPaAmEQWo9UFG1wdCdYNeEuiFocSYDqyKIO62bAJso=;
 b=daZ1yQbt+ly5oR4B23djB/+U8nDAtnXWozzanckjgsxqNTdrrDaqv34hlVayGoqj6wvrCn
 lZ7cJuj41ddvRap8LThkKzVCsf0BhUEWdgnuLK7CWaxscOMUAMPxKJGTC7MHCqeoDAmplb
 t/DjgF9AP9YXkde3zaURA5KQJxay3oM=
MIME-Version: 1.0
Date: Mon, 27 Apr 2020 19:49:21 +0200
From: Michael Walle <michael@walle.cc>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH v3 09/16] gpiolib: Introduce gpiochip_irqchip_add_domain()
In-Reply-To: <87mu6xqhny.fsf@nanos.tec.linutronix.de>
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-10-michael@walle.cc>
 <87mu6xqhny.fsf@nanos.tec.linutronix.de>
Message-ID: <43af0bff6fee64687ac4e0d1ded14c4d@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.10
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: web
X-Spam-Status: No, score=1.40
X-Spam-Score: 1.40
X-Rspamd-Queue-Id: AAEB72305C
X-Spamd-Result: default: False [1.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; FREEMAIL_ENVRCPT(0.00)[gmail.com];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[24]; NEURAL_HAM(-0.00)[-0.777];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 FREEMAIL_CC(0.00)[linux.intel.com,vger.kernel.org,lists.infradead.org,linaro.org,baylibre.com,kernel.org,suse.com,roeck-us.net,gmail.com,pengutronix.de,linux-watchdog.org,nxp.com,lakedaemon.net,linuxfoundation.org];
 MID_RHS_MATCH_FROM(0.00)[]; SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_104925_395322_5950E81B 
X-CRM114-Status: GOOD (  13.92  )
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

Am 2020-04-27 13:42, schrieb Thomas Gleixner:
> Michael Walle <michael@walle.cc> writes:
>> This connects an IRQ domain to a gpiochip and reuses
>> gpiochip_to_irq().
> 
> A little bit more context and explanation why this function is useful
> would be appreciated.

Ok I'll try to be a bit more elaborate the in the next version, (if
this function is still there).

For now:

gpiochip_irqchip_add_domain() allows to use reqmap-irq, which exports
an irqdomain, with gpiolib while reusing gpiochip_to_irq(). Both
gpiochip_irqchip_* and regmap_irq partially provides the same
functionality. The new function will help to connect just the
minimal functionality of the gpiochip_irqchip which is needed to
work together with regmap-irq.

> 
>> Signed-off-by: Michael Walle <michael@walle.cc>
>> ---
>>  drivers/gpio/gpiolib.c      | 20 ++++++++++++++++++++
>>  include/linux/gpio/driver.h |  3 +++
>>  2 files changed, 23 insertions(+)
>> 
>> diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
>> index 40f2d7f69be2..7b3d7f496b9a 100644
>> --- a/drivers/gpio/gpiolib.c
>> +++ b/drivers/gpio/gpiolib.c
>> @@ -2722,6 +2722,26 @@ int gpiochip_irqchip_add_key(struct gpio_chip 
>> *gc,
>>  }
>>  EXPORT_SYMBOL_GPL(gpiochip_irqchip_add_key);
>> 
>> +/**
>> + * gpiochip_irqchip_add_key() - adds an irqdomain to a gpiochip
> 
> Copy & paste is wonderful

whoops.

-michael

> 
>> + * @gc: the gpiochip to add the irqchip to
>> + * @domain: the irqdomain to add to the gpiochip
>> + *
>> + * This function adds an IRQ domain to the gpiochip.
>> + */
>> +int gpiochip_irqchip_add_domain(struct gpio_chip *gc,
>> +				struct irq_domain *domain)
>> +{
>> +	if (!domain)
>> +		return -EINVAL;
>> +
>> +	gc->to_irq = gpiochip_to_irq;
>> +	gc->irq.domain = domain;
>> +
>> +	return 0;
>> +}
> 
> Thanks,
> 
>         tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
