Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C9D28CDB0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 10:10:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rTKEKFqXHOuwLic5aP3oi/cawxz503uIsSbJmfj/ziE=; b=hiZCSXgNg2W6e5
	m491Nog5bW93jwmsToWpz0C2aWV+kERwNe3bGCrFJ0qdRo3zRPPfpt5DijOX5O1wBUudmuOjMvqWh
	P/hlqEpsVVo2Lkv9ch84z9hVTEj1y1V/bQV3moJtY0VoUy5Kv5hJAdCabM3bKIhs/2bBKqtk9tEQk
	I5SaDjp9g0pg3yXjyxGkfpakaoXXyYziN/pQB5+xmHHjwXJRp8tNXnoo0kBlpwbjQdlLSTXjz1Yzh
	afr2E7j1AnDp7vrAgQWrSRKbvvRmT9fTqAvl7TRco3AfwNOJlMZ77WyBuclTN796RxeHQvfzufLPS
	Dzp+LInbChY3ppBZPVXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxoLu-0004B3-SX; Wed, 14 Aug 2019 08:09:50 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxoLe-0004Ai-6f
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 08:09:35 +0000
Received: by mail-lf1-x143.google.com with SMTP id 62so73801173lfa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 01:09:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=a3pu4WqgZpVtxAPpr6WRRG6CgvXxsRt/IJW7QWZZBkQ=;
 b=B5hCQPPM/FOpJJlOBHnIL4YX7ZnsrCAX7eRZbnz2PJMhtcI0fVe6V4tL+rTL5JoHgZ
 CHqDhH41nc5wKh+bC3n8fdrhtv10H700YfIlpEyJHujfqhUrKrq1Do8k8+av41R3vJeL
 qs0QfYp8SOYllcOBS3PKhtLI4alQkT7Kt94EHplLYwzMh9sG1DGikunIPOdaoMVMjVwP
 rN4aKmc05L+cbA9//qjMoTgsIYtOUYVIVrpo/q+SMLJzJZahwtGzHuBN85pWOa2Qdbu4
 T8V7sVe3UoVNzPP82tcfVm/NqmzSFZEFfwoH/i5jHXfTKL1QicnXiUITV3szo9S/2uof
 WWCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a3pu4WqgZpVtxAPpr6WRRG6CgvXxsRt/IJW7QWZZBkQ=;
 b=BSGuJZ7OnbeX44oiGGsDLM6fWhZs+ii48ZYPSBTO8NgS4FRgYOv7GenUnIqR27+YrS
 TD45fULMcAWNt5Sn6U+ayYkxUW0uY0qwZHBYyct66LZELUWbstp/3k0k10MzfuTbxtd3
 6P9qmr/rjYdz3RkLvTM0Tp3sn2o5Fvh6+FK1uj6BgZXf0YDJO/8r5is+63bAJcp9hmQL
 dtSrhj4sN+U3p2DVXP8NYGc6eKCfHx+28BL4sVNwpKn3dLeN4EH/ocHQGCKLzg7QkM25
 jNDANa2pzwXdRLQhXWAY+U8tXcCuOgC0dUEB6VVffRkq4XqgXckF5AOVKacly3cdg0bN
 WPww==
X-Gm-Message-State: APjAAAXwiN7wQfN9ba/3HYpk/9Ji+6EB3l+gM6ahhAIIEKhCXj+5pbys
 LWDeOG2ddf1nnxXVaJk0+jfcvFFUuU10KoQhSRjkVA==
X-Google-Smtp-Source: APXvYqxBCrpxYicv9hI8gzWTP6SjkdBV0kiAs9w9dXlSllL/56vgciBYrqOy9aeSFx8Aqqn7+5gXG80m6la1l53JTPU=
X-Received: by 2002:a19:e006:: with SMTP id x6mr24363756lfg.165.1565770171843; 
 Wed, 14 Aug 2019 01:09:31 -0700 (PDT)
MIME-Version: 1.0
References: <1564603297-1391-1-git-send-email-hongweiz@ami.com>
 <1564603297-1391-3-git-send-email-hongweiz@ami.com>
In-Reply-To: <1564603297-1391-3-git-send-email-hongweiz@ami.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 14 Aug 2019 10:09:20 +0200
Message-ID: <CACRpkdaojLe3UTc0=66b5J2yrSOo7t8o5bAY=WRscL+met3iWQ@mail.gmail.com>
Subject: Re: [v7 2/2] gpio: aspeed: Add SGPIO driver
To: Hongwei Zhang <hongweiz@ami.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_010934_250144_AA9ECAB6 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Andrew Jeffery <andrew@aj.id.au>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hongwei,

thanks for your patch!

I have now merged the bindings so you only need to respin
this patch.

On Wed, Jul 31, 2019 at 10:02 PM Hongwei Zhang <hongweiz@ami.com> wrote:

> Add SGPIO driver support for Aspeed AST2500 SoC.
>
> Signed-off-by: Hongwei Zhang <hongweiz@ami.com>
> Reviewed-by:   Andrew Jeffery <andrew@aj.id.au>

I guess I need to go with this, there are some minor things
I still want to be fixed:

> +static void __aspeed_sgpio_set(struct gpio_chip *gc, unsigned int offset, int val)

I don't like __underscore_functions because their semantic
is ambiguous.

Rename this something like aspeed_sgpio_commit() or
whatever best fits the actual use.

> +static int aspeed_sgpio_setup_irqs(struct aspeed_sgpio *gpio,
> +                                  struct platform_device *pdev)
> +{
(...)
> +       rc = gpiochip_irqchip_add(&gpio->chip, &aspeed_sgpio_irqchip,
> +                                 0, handle_bad_irq, IRQ_TYPE_NONE);
(...)
> +       gpiochip_set_chained_irqchip(&gpio->chip, &aspeed_sgpio_irqchip,
> +                                    gpio->irq, aspeed_sgpio_irq_handler);

We do not set up chained irqchips like this anymore, sorry.

I am currently rewriting all existing chained drivers to pass
an initialized irqchip when registering the whole gpio chip.
See drivers/gpio/TODO.

Here are examples:
https://lore.kernel.org/linux-gpio/20190811080539.15647-1-linus.walleij@linaro.org/
https://lore.kernel.org/linux-gpio/20190812132554.18313-1-linus.walleij@linaro.org/

> +       /* set all SGPIO pins as input (1). */
> +       memset(gpio->dir_in, 0xff, sizeof(gpio->dir_in));

Do the irqchip set-up here, before adding the gpio_chip.

> +       rc = devm_gpiochip_add_data(&pdev->dev, &gpio->chip, gpio);
> +       if (rc < 0)
> +               return rc;
> +
> +       return aspeed_sgpio_setup_irqs(gpio, pdev);

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
