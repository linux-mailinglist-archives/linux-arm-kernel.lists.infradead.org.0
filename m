Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 131CCAC0DB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 21:48:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dHRB/D7ZbaeCw6eng51zqMIns+k1Ys2HGJzARJ66OQM=; b=iOHn1heK21v5gP
	q3XCbZ2fums9zo3MWkLqZuocuAWl3KBXjyvHkZa77P4bqeHOP2B7QxyJUzUG4l4c8MiLEE5c+3YG2
	AvWuCVHJNvZfs9RRYQmoBkkobblYDGpOhn/iOdnzsXsV7dowXdawDOHIUFKQlj5o8RYD8a2vufium
	gu+vOKbzwS8OHiH1mpGx/O4LxTZzzjbucCov3kDatvigW6izlTWoBU/dvGWLF3Ig4x793z5nwrwHj
	QfiaQ27p+XVlKNurp/+kct73NLEGrmCBpn1846bCWWFwG22tjYcDsV/pRZ7b00Kho0UVbliXfvrX8
	5asBEg30pwcDOsMBhdig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6KDT-00042Q-TX; Fri, 06 Sep 2019 19:48:19 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6KDH-00041l-Qi
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 19:48:11 +0000
Received: by mail-qt1-x843.google.com with SMTP id j10so8464749qtp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 12:48:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iUo+RAfa/ck7sxO/vrTAcMV5/EPMZ8UlL+MvZ/FXZXo=;
 b=LgST1CJV9YA7mttan8L01i3+eoJrRdysbvUiwWvM6KWQbaxEK29uzeyzZSLlkcS3eG
 S5ulY+M3I8TszhtbLSQJdkTbrOw55QatC87Sv1oIpwbI9UkD3ug+eUiNiJ9JXOOU+SSJ
 ELK+5ZbKl3TP1suF2E4ZsSA1YzriQ2mZgfw7o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iUo+RAfa/ck7sxO/vrTAcMV5/EPMZ8UlL+MvZ/FXZXo=;
 b=U4A6juaI2b+moJeaC2ZWQ28UnzRuhA07LfRudEdQiaTAwmjb2IQDMLvVggc3M/CutE
 Z9yUuKgOTPmt1IXkULSHWk6P7wXEQXoc18WhhHxuPaBYCAio2HZZIb8EEcM2hLimVyPE
 LcYrnzCjLMG/LzaQWcKxSsSXAJZ9MOTPuguqnJPPPDnFoQQebEEVpWY2Nn9M6+/PVRxX
 GcMVNafcN3+UVIEH9ijSwNdW2EKg6wf4SDx62dMMsTC6068wMT9N0kS3rLgjs/FWm+lH
 TdYeqEdQdxo0RLrvMQRtg3xWgJIiSEPi197bBj7iQU+iuyyiCA3YZmMZBRkXyih+xe4I
 FeXA==
X-Gm-Message-State: APjAAAXvw1mrCqlprPU8am6PEYpU6XRjTwwcqjfinq2Oh+AdA6STgGsL
 8MaqLbeQdwdwjgY2doKq5+h/cT+6CRP2W2E8UMc=
X-Google-Smtp-Source: APXvYqzFyczhuU4vELy3FEnLbpNgDv8ZSb9uoaP+A83ZFTCAHt0aG0j50/6DoriEh8Y6hPfF9qnzGXcUaTg6VlJXffI=
X-Received: by 2002:a0c:e48b:: with SMTP id n11mr6351886qvl.38.1567799286186; 
 Fri, 06 Sep 2019 12:48:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190906062727.13521-1-rashmica.g@gmail.com>
In-Reply-To: <20190906062727.13521-1-rashmica.g@gmail.com>
From: Joel Stanley <joel@jms.id.au>
Date: Fri, 6 Sep 2019 19:47:55 +0000
Message-ID: <CACPK8XfjGY4A1g0eJAUC7SmiguBa6fLhBBz_FzTRa3hQ1kWDSA@mail.gmail.com>
Subject: Re: [PATCH v3 4/5] gpios: Use ngpio property from device tree if
 available
To: Rashmica Gupta <rashmica.g@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_124810_374220_2692EC11 
X-CRM114-Status: GOOD (  18.74  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "moderated list:ARM/ASPEED MACHINE SUPPORT"
 <linux-aspeed@lists.ozlabs.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Andrew Jeffery <andrew@aj.id.au>, Linus Walleij <linus.walleij@linaro.org>,
 open list <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 "moderated list:ARM/ASPEED MACHINE SUPPORT"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 6 Sep 2019 at 06:27, Rashmica Gupta <rashmica.g@gmail.com> wrote:
>
> Use the ngpio property from the device tree if it exists. If it doesn't
> then fallback to the hardcoded value in the config.
>
> This is in preparation for adding ast2600 support. The ast2600 SoC has
> two GPIO controllers and so requires two instances of the GPIO driver.
> We use the ngpio property to different between them as they have
> different numbers of GPIOs.
>
> Signed-off-by: Rashmica Gupta <rashmica.g@gmail.com>

Reviewed-by: Joel Stanley <joel@jms.id.au>

> ---
>  drivers/gpio/gpio-aspeed.c | 18 +++++++++++-------
>  1 file changed, 11 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpio/gpio-aspeed.c b/drivers/gpio/gpio-aspeed.c
> index 16c6eaf70857..c3d5ecba343b 100644
> --- a/drivers/gpio/gpio-aspeed.c
> +++ b/drivers/gpio/gpio-aspeed.c
> @@ -694,7 +694,7 @@ static void set_irq_valid_mask(struct aspeed_gpio *gpio)
>                 for_each_clear_bit(offset, &input, 32) {
>                         unsigned int i = props->bank * 32 + offset;
>
> -                       if (i >= gpio->config->nr_gpios)
> +                       if (i >= gpio->chip.ngpio)
>                                 break;
>
>                         clear_bit(i, gpio->chip.irq.valid_mask);
> @@ -1007,10 +1007,10 @@ int aspeed_gpio_copro_grab_gpio(struct gpio_desc *desc,
>         unsigned long flags;
>
>         if (!gpio->cf_copro_bankmap)
> -               gpio->cf_copro_bankmap = kzalloc(gpio->config->nr_gpios >> 3, GFP_KERNEL);
> +               gpio->cf_copro_bankmap = kzalloc(gpio->chip.ngpio >> 3, GFP_KERNEL);
>         if (!gpio->cf_copro_bankmap)
>                 return -ENOMEM;
> -       if (offset < 0 || offset > gpio->config->nr_gpios)
> +       if (offset < 0 || offset > gpio->chip.ngpio)
>                 return -EINVAL;
>         bindex = offset >> 3;
>
> @@ -1055,7 +1055,7 @@ int aspeed_gpio_copro_release_gpio(struct gpio_desc *desc)
>         if (!gpio->cf_copro_bankmap)
>                 return -ENXIO;
>
> -       if (offset < 0 || offset > gpio->config->nr_gpios)
> +       if (offset < 0 || offset > gpio->chip.ngpio)
>                 return -EINVAL;
>         bindex = offset >> 3;
>
> @@ -1119,7 +1119,8 @@ static int __init aspeed_gpio_probe(struct platform_device *pdev)
>  {
>         const struct of_device_id *gpio_id;
>         struct aspeed_gpio *gpio;
> -       int rc, i, banks;
> +       int rc, i, banks, err;
> +       u32 ngpio;
>
>         gpio = devm_kzalloc(&pdev->dev, sizeof(*gpio), GFP_KERNEL);
>         if (!gpio)
> @@ -1145,7 +1146,10 @@ static int __init aspeed_gpio_probe(struct platform_device *pdev)
>         gpio->config = gpio_id->data;
>
>         gpio->chip.parent = &pdev->dev;
> -       gpio->chip.ngpio = gpio->config->nr_gpios;
> +       err = of_property_read_u32(pdev->dev.of_node, "ngpios", &ngpio);
> +       gpio->chip.ngpio = (u16) ngpio;
> +       if (err)
> +               gpio->chip.ngpio = gpio->config->nr_gpios;
>         gpio->chip.direction_input = aspeed_gpio_dir_in;
>         gpio->chip.direction_output = aspeed_gpio_dir_out;
>         gpio->chip.get_direction = aspeed_gpio_get_direction;
> @@ -1158,7 +1162,7 @@ static int __init aspeed_gpio_probe(struct platform_device *pdev)
>         gpio->chip.base = -1;
>
>         /* Allocate a cache of the output registers */
> -       banks = DIV_ROUND_UP(gpio->config->nr_gpios, 32);
> +       banks = DIV_ROUND_UP(gpio->chip.ngpio, 32);
>         gpio->dcache = devm_kcalloc(&pdev->dev,
>                                     banks, sizeof(u32), GFP_KERNEL);
>         if (!gpio->dcache)
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
