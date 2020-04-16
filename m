Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F32C1ABCC1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 11:28:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o1nTKxc/kMQBfmHpnqDJ3t/D4z2kmUgpCU+69PnGVQM=; b=im6yiSkkYXEP4Y
	Z5dUW7587uZhHCQQS6TlyEauJA5ogCG6Q16G59I86OHAZ4V5YlDSWJkGXlF3m69R7dCUUUeVm0n8x
	JZo34Ij80RBrgDJguZ5b9OpqYIsomff4YCpPRZfI6Ky7hpWUtQB7TNulfUSEJScQibtx9XgGkSX44
	kz2xAr0Uv/PbHil9MAxyuNNL2ge1mTjwRle1+EXu+s6X0S/Qu1QIVG9le/rH401PiRKqzFhBijcNL
	s164+PpZVG0P1DIQwDF8WXHvDV3NUEi0oD3VdKOClNE1Md6yXIZPbcGbCLcTksfEbajYYfpcOliZ+
	+WqDgsWI3Cz6ba6Zy6ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP0od-0004vX-Fa; Thu, 16 Apr 2020 09:28:11 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP0oV-0004oK-5u
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 09:28:04 +0000
Received: by mail-lj1-x241.google.com with SMTP id m8so7088052lji.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 02:28:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WsPjodFLa29jgz8fN9Fb4AffGRX4R/S0PAGXHFxg8uc=;
 b=Mcjo0LRYVYxyzbtjbCWQVN/NoJRsDH8jFlsbuCOBONMT1lR2ImkQ/9Gyi6g9ECLGD9
 W6+NvffZF/UBCbB65JSgSA15hb1DBUMVmSago9O5LFo/FlxiOs0HJ9MMXrD/bobgK0Wt
 mMVuq5ylGm8TZD27kCZcpU+ZZGgxXnxAhUmazdaIRigybhADJAXlhqCpHAnwaqebmn77
 48UsyHV+4cY856JG138S9HEb9o2gew/a6x80Z8PggjjeFafkcMesJftx8HReUBysV/gx
 GRB7jVLJBDkBbXax2F7N8etArkTLVsDT3ukSGd2g9bhBAQlzlqv6iTs7iWBiPoiBSWfj
 bFzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WsPjodFLa29jgz8fN9Fb4AffGRX4R/S0PAGXHFxg8uc=;
 b=Dc7G4f8qCvdiMMaVOW7hUtZcFnjunaw3G7jXyWFO2ceLnCNEfhXDSCu/PFR+Amp8BT
 Wmz3v2iIz9UR28Sgwj3cdobTVDgUlZ2ICFVEFtlwG9e7jRgYbiH8c4qS8B5z4X4RNe7d
 ExQQtFrEAy7wZZKr+jIkDCumppKDRuM5FKpbz45Xz5D3TYDKLc/mSq2+QI+Eg3mY75Iq
 r40NHupthNdPhdRi9S1FIOf/AkvXIdXqyFSuEcuCcvbjDNqhCnqHm+RA019ErAfjP/0I
 GCsiwTSLWAlkEgFQLsvZuHSWdV8JZkHBi4tfYNlk4ojgtPGuhBnCpwPZFa39oLQH7YwB
 49dA==
X-Gm-Message-State: AGi0PuZDdckn1h/8e/D67U7vvy547x8ksfkSD2kidcyliI6jOsd8vsHI
 apgfXM+dCtoO8fSXgTEPBwraEk5wTPTXVGXVsGGfgg==
X-Google-Smtp-Source: APiQypJMQjT4pZ+GIg1c79TG3Woa9BTCPwC3Eg2zQlaa/+IMFOuGyPsLA6Z0cx46mmNNDk/3KbeDkx0QsaVz8N768ms=
X-Received: by 2002:a2e:9ad9:: with SMTP id p25mr6015137ljj.39.1587029281103; 
 Thu, 16 Apr 2020 02:28:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200402203656.27047-1-michael@walle.cc>
 <20200402203656.27047-11-michael@walle.cc>
In-Reply-To: <20200402203656.27047-11-michael@walle.cc>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 16 Apr 2020 11:27:49 +0200
Message-ID: <CACRpkdaqgHhPwdKdUai4zvi21qR-cSQUKyzZ3SyfWBLPN9us3w@mail.gmail.com>
Subject: Re: [PATCH v2 10/16] gpio: add a reusable generic gpio_chip using
 regmap
To: Michael Walle <michael@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_022803_257298_B0D03797 
X-CRM114-Status: GOOD (  19.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Lee Jones <lee.jones@linaro.org>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 2, 2020 at 10:37 PM Michael Walle <michael@walle.cc> wrote:

> There are quite a lot simple GPIO controller which are using regmap to
> access the hardware. This driver tries to be a base to unify existing
> code into one place. This won't cover everything but it should be a good
> starting point.
>
> It does not implement its own irq_chip because there is already a
> generic one for regmap based devices. Instead, the irq_chip will be
> instanciated in the parent driver and its irq domain will be associate
> to this driver.
>
> For now it consists of the usual registers, like set (and an optional
> clear) data register, an input register and direction registers.
> Out-of-the-box, it supports consecutive register mappings and mappings
> where the registers have gaps between them with a linear mapping between
> GPIO offset and bit position. For weirder mappings the user can register
> its own .xlate().
>
> Signed-off-by: Michael Walle <michael@walle.cc>

Overall I really like this driver and I think we should merge is as soon
as it is in reasonable shape and then improve on top so we can start
migrating drivers to it.

> +static int gpio_regmap_to_irq(struct gpio_chip *chip, unsigned int offset)
> +{
> +       struct gpio_regmap_data *data = gpiochip_get_data(chip);
> +       struct gpio_regmap *gpio = data->gpio;
> +
> +       /* the user might have its own .to_irq callback */
> +       if (gpio->to_irq)
> +               return gpio->to_irq(gpio, offset);
> +
> +       return irq_create_mapping(gpio->irq_domain, offset);

I think that should at least be irq_find_mapping(), the mapping should
definately not be created by the .to_irq() callback since that is just
a convenience function.

> +       if (gpio->irq_domain)
> +               chip->to_irq = gpio_regmap_to_irq;

I don't know about this.
(...)
> + * @irq_domain:                (Optional) IRQ domain if the controller is
> + *                     interrupt-capable
(...)
> +       struct irq_domain *irq_domain;

I don't think this is a good storage place for the irqdomain, we already have
gpio_irq_chip inside gpio_chip and that has an irqdomain, we should
strive to reuse that infrastructure also for regmap GPIO I think, for now
I would just leave .to_irq() out of this and let the driver deal with any
irqs.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
