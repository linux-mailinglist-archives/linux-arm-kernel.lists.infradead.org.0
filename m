Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E66962E7E7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 00:15:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KypIulgj+30hr7twVeJZK+qOJlksAHldCPmDMJFrfTg=; b=AQpKwQF4/8ncSw
	mbgXq62g+TXh5Arf0Yt9YaRoG+hzi7OW+YYHpyaEeI07CuY8ryAg3ph8QN/8Z3SN/qBVlFEgGk1oD
	38f9nofrjX9OxbsLqmikLRSmx0+9rnyTSB4L4wNni8ByC+arwApDoTtNI6vWkb9jFsfAk/3YbIjo0
	90rG2AmME6V2i5Er9vgFcppz1TlYHKypiu9KhH30udTSFekSxoNQbXiFuTGKfg8uBRYJVcgqaJnLR
	YrtkTEjgGwjBhxnWXZUzpxzK7W1Rh9rkRIDCtLfl1nrw3z3k6nsQV3Lpb+Zvc+hL2uSAHBoS54tYO
	0pchxK4QTybu8FBFq4hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW6r4-0005KL-VQ; Wed, 29 May 2019 22:15:30 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW6qx-0005Jb-L1
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 22:15:25 +0000
Received: by mail-ot1-f67.google.com with SMTP id c3so3684057otr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 15:15:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KSFF4bDXPHpLrA6n50RMJhRFJYg/glW80Pouz4KvDb0=;
 b=DRd1KusBCyqQ8/hB+Pq2tTlCtlBuq7krQ39ttt/xgmOd89xU1s2oGSwdRTf17z0Oy/
 Qi9PFa2maZn5Qi4PrwJKoN8kYvbUhoEo+M014bCHGoqIcfiOKB9JMfWvptq6WvqGIi0V
 +Gko+p7hraau5YVVkiFus2jauKIfWUZIcbU/BXmVbwM0QUmCyM9j785ynAslah01lRP8
 InRcrjsgMjstzRODkGU70ps73ihl+uibAUpLLbKrJoKzB/oSqt3PWKYKBMJQKAGpHvc7
 XIWIGo4jHb4BT1+FbkVDbyV3Ed6a2ZIqZtDvymwADpoFiLBOf7XO55LEAiZt7lZ8rN5d
 AG8Q==
X-Gm-Message-State: APjAAAXWNiJbofwTGRgfI98KW8a61kjagMTq8nZQbYgf9NuquJyr6qxW
 Emsqhth/xNg2uORK4DGznNGyrZYwmaA=
X-Google-Smtp-Source: APXvYqwIl9+J4omx0XMbE6udkmuSGKXaZx2xAKJxiUYq0/dJIISpOb8YuZzRcg4llLxgTDNt1/Y2/Q==
X-Received: by 2002:a05:6830:10d4:: with SMTP id
 z20mr108648oto.40.1559168116705; 
 Wed, 29 May 2019 15:15:16 -0700 (PDT)
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com.
 [209.85.167.182])
 by smtp.gmail.com with ESMTPSA id v20sm315632otk.66.2019.05.29.15.15.15
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 15:15:15 -0700 (PDT)
Received: by mail-oi1-f182.google.com with SMTP id v25so2850567oic.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 15:15:15 -0700 (PDT)
X-Received: by 2002:aca:ea05:: with SMTP id i5mr374591oih.51.1559168115228;
 Wed, 29 May 2019 15:15:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190529083254.39581-1-chuanhua.han@nxp.com>
 <20190529083254.39581-2-chuanhua.han@nxp.com>
In-Reply-To: <20190529083254.39581-2-chuanhua.han@nxp.com>
From: Li Yang <leoyang.li@nxp.com>
Date: Wed, 29 May 2019 17:15:03 -0500
X-Gmail-Original-Message-ID: <CADRPPNTyr+ZpK84C4KPwLVLnabNYN4MC3q=Gp94hBc5VPh7fYg@mail.gmail.com>
Message-ID: <CADRPPNTyr+ZpK84C4KPwLVLnabNYN4MC3q=Gp94hBc5VPh7fYg@mail.gmail.com>
Subject: Re: [PATCH 2/3] gpio: mpc8xxx: Use IRQF_SHARED mode to request IRQ
To: Chuanhua Han <chuanhua.han@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_151523_691744_E054AC43 
X-CRM114-Status: GOOD (  23.30  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pku.leo[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-gpio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Zhang Ying-22455 <ying.zhang22455@nxp.com>,
 lkml <linux-kernel@vger.kernel.org>, bgolaszewski@baylibre.com,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 3:33 AM Chuanhua Han <chuanhua.han@nxp.com> wrote:
>
> GPIO3 and GPIO4 controllers share one irq number on Layerscape
> platform. In the current implementation, only one GPIO controller
> can register successfully.
>
> This patch is to allow two controllers to share a single interrupt
> number.

This patch definitely did more than setting the IRQF_SHARED flag for
interrupt.  If the driver do need some cleanup please separate the
cleanup into another patch.

>
> Signed-off-by: Zhang Ying-22455 <ying.zhang22455@nxp.com>
> Signed-off-by: Chuanhua Han <chuanhua.han@nxp.com>
> ---
>  drivers/gpio/gpio-mpc8xxx.c | 43 ++++++++++++++++++++++++++-----------
>  1 file changed, 30 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpio/gpio-mpc8xxx.c b/drivers/gpio/gpio-mpc8xxx.c
> index 555e0e7957d9..63c8586fe5c8 100644
> --- a/drivers/gpio/gpio-mpc8xxx.c
> +++ b/drivers/gpio/gpio-mpc8xxx.c
> @@ -11,6 +11,7 @@
>
>  #include <linux/kernel.h>
>  #include <linux/init.h>
> +#include <linux/interrupt.h>
>  #include <linux/spinlock.h>
>  #include <linux/io.h>
>  #include <linux/of.h>
> @@ -105,10 +106,9 @@ static int mpc8xxx_gpio_to_irq(struct gpio_chip *gc, unsigned offset)
>                 return -ENXIO;
>  }
>
> -static void mpc8xxx_gpio_irq_cascade(struct irq_desc *desc)
> +static irqreturn_t mpc8xxx_gpio_irq_cascade(int irq, void *dev_id)
>  {
> -       struct mpc8xxx_gpio_chip *mpc8xxx_gc = irq_desc_get_handler_data(desc);
> -       struct irq_chip *chip = irq_desc_get_chip(desc);
> +       struct mpc8xxx_gpio_chip *mpc8xxx_gc = dev_id;
>         struct gpio_chip *gc = &mpc8xxx_gc->gc;
>         unsigned int mask;
>
> @@ -117,8 +117,7 @@ static void mpc8xxx_gpio_irq_cascade(struct irq_desc *desc)
>         if (mask)
>                 generic_handle_irq(irq_linear_revmap(mpc8xxx_gc->irq,
>                                                      32 - ffs(mask)));
> -       if (chip->irq_eoi)
> -               chip->irq_eoi(&desc->irq_data);
> +       return IRQ_HANDLED;
>  }
>
>  static void mpc8xxx_irq_unmask(struct irq_data *d)
> @@ -129,6 +128,9 @@ static void mpc8xxx_irq_unmask(struct irq_data *d)
>
>         raw_spin_lock_irqsave(&mpc8xxx_gc->lock, flags);
>
> +       gc->write_reg(mpc8xxx_gc->regs + GPIO_IER,
> +                     gc->pin2mask(gc, irqd_to_hwirq(d)));

This API has been removed for a while, are you sure you compiled and
tested the change on latest kernel?

commit 24efd94bc38290dc1d9775a1e767ed4685d8a79b
Author: Linus Walleij <linus.walleij@linaro.org>
Date:   Fri Oct 20 16:31:27 2017 +0200

    gpio: mmio: Make pin2mask() a private business

    The vtable call pin2mask() was introducing a vtable function call
    in every gpiochip callback for a generic MMIO GPIO chip. This was
    not exactly efficient. (Maybe link-time optimization could get rid of
    it, I don't know.)

    After removing all external calls into this API we can make it a
    boolean flag in the struct gpio_chip call and sink the function into
    the gpio-mmio driver yielding encapsulation and potential speedups.

    Cc: Anton Vorontsov <anton@enomsg.org>
    Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

> +
>         gc->write_reg(mpc8xxx_gc->regs + GPIO_IMR,
>                 gc->read_reg(mpc8xxx_gc->regs + GPIO_IMR)
>                 | mpc_pin2mask(irqd_to_hwirq(d)));
> @@ -302,21 +304,31 @@ static int mpc8xxx_probe(struct platform_device *pdev)
>         struct gpio_chip        *gc;
>         const struct mpc8xxx_gpio_devtype *devtype =
>                 of_device_get_match_data(&pdev->dev);
> -       int ret;
> +       int ret, irq;
>
>         mpc8xxx_gc = devm_kzalloc(&pdev->dev, sizeof(*mpc8xxx_gc), GFP_KERNEL);
>         if (!mpc8xxx_gc)
>                 return -ENOMEM;
>
> -       platform_set_drvdata(pdev, mpc8xxx_gc);
> -
> -       raw_spin_lock_init(&mpc8xxx_gc->lock);
> -
>         mpc8xxx_gc->regs = of_iomap(np, 0);
>         if (!mpc8xxx_gc->regs)
>                 return -ENOMEM;
>
>         gc = &mpc8xxx_gc->gc;
> +       irq = platform_get_irq(pdev, 0);
> +       if (irq < 0) {
> +               dev_err(&pdev->dev, "can't get irq number\n");
> +               return irq;
> +       }
> +
> +       mpc8xxx_gc->gc.label = pdev->name;
> +       mpc8xxx_gc->gc.owner = THIS_MODULE;
> +       mpc8xxx_gc->gc.base = -1;
> +       mpc8xxx_gc->gc.ngpio = MPC8XXX_GPIO_PINS;
> +
> +       platform_set_drvdata(pdev, mpc8xxx_gc);
> +
> +       raw_spin_lock_init(&mpc8xxx_gc->lock);
>
>         if (of_property_read_bool(np, "little-endian")) {
>                 ret = bgpio_init(gc, &pdev->dev, 4,
> @@ -364,7 +376,7 @@ static int mpc8xxx_probe(struct platform_device *pdev)
>                 goto err;
>         }
>
> -       mpc8xxx_gc->irqn = irq_of_parse_and_map(np, 0);
> +       mpc8xxx_gc->irqn = platform_get_irq(pdev, 0);
>         if (!mpc8xxx_gc->irqn)
>                 return 0;
>
> @@ -378,8 +390,13 @@ static int mpc8xxx_probe(struct platform_device *pdev)
>         gc->write_reg(mpc8xxx_gc->regs + GPIO_IMR, 0xffffffff);
>         gc->write_reg(mpc8xxx_gc->regs + GPIO_ICR2, 0xffffffff);
>
> -       irq_set_chained_handler_and_data(mpc8xxx_gc->irqn,
> -                                        mpc8xxx_gpio_irq_cascade, mpc8xxx_gc);
> +       /* Request IRQ */
> +       ret = devm_request_irq(&pdev->dev, irq, mpc8xxx_gpio_irq_cascade,
> +                              IRQF_SHARED, pdev->name, mpc8xxx_gc);
> +       if (ret) {
> +               dev_err(&pdev->dev, "can't claim irq %d\n", mpc8xxx_gc->irqn);
> +               goto err;
> +       }
>         return 0;
>  err:
>         iounmap(mpc8xxx_gc->regs);
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
