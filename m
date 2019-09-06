Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A502EAC22A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 23:47:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p6aMrShId4tMH1bKlN6IPGjh0cABY/5AMzrn8j+mqjc=; b=LyVnNRKKC3FoP6
	Ohm5fF9QUI0/cf5wRu5v8Wk7ADbLGxHJ4XRtWAky+8VWXdreMl9SJwuTWWLJTUN+CAMkUaqrP5bI5
	Md6hEBbxV1IxZ+qP1UAfQSz9uaDS9ascfyiIcwpO1WfwK8vkogUc7+xiaJpEwduqHb271nkO6VCho
	erKbSMFFl4quiezBQUzniPFK5JlVRICPi1MZseo9RYZGFQeNL5I53exGFqt0c5Pc1GM45JRFv83q7
	8nz3ljicEQmifGGLerMu7siQsE7OIpk0Wsx2Ve01vaW5grD5lCOp4ZTUXoZ8LwFZVCsd0WqCEoViD
	oT+XGdx5PgRh97be14+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6M4a-00062m-Gh; Fri, 06 Sep 2019 21:47:16 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6M4S-00062O-IG
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 21:47:09 +0000
Received: by mail-oi1-f193.google.com with SMTP id z6so726548oix.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 14:47:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AxdmH4Las6LxoPzUkRRDSuUEuP8kEFd6s6/nV6yfxfg=;
 b=mQ/gWWU2T26alYSFZSRypBrnOsaMqAP0nm/DvUtQvyVau2QhYvqcRN8VTQZ0FoGaNI
 uc7BBrVDj85nDtddGZmSwDF3WwpglAyt5H8730AOioxx0mow8WkhkZlMqrPRY0/zS501
 YrrR/vDhi+bbr4kdGDHNTQRNSeQNBTnnvzk/n0Pg4wQ28GdlsKkSBqZJTIgOVCCGZTcL
 JIPeJFL7b0w8gt7M1GqlaXb6lueHBI0Q2s3ko9A7F67n0Zqdq0Lts3JHQym/ckNmm2Gm
 KfVgL0Cp25FptHYPBuc6bmk3PzREfVpezry3j/ptkrGRnEIYMeRg1IkmpoFUyyAjB26l
 F5kw==
X-Gm-Message-State: APjAAAWW9Ch6fr8HB2VFk4hCy4kofRbOlglWSQmV8K50QDf01oY3041Z
 ZOgMnYRwGnzwjkOF66e7J9I4m4Z+
X-Google-Smtp-Source: APXvYqzmY/nrFGvdsmgUSgCR4pEbQEGiXuxF2bG4Qp/yOR8G0sU9gRpOnLq2e7AK4pHcGYXfXJ6CBQ==
X-Received: by 2002:a54:468c:: with SMTP id k12mr9141114oic.63.1567806427047; 
 Fri, 06 Sep 2019 14:47:07 -0700 (PDT)
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com.
 [209.85.167.170])
 by smtp.gmail.com with ESMTPSA id j31sm2650820ota.13.2019.09.06.14.47.06
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Sep 2019 14:47:06 -0700 (PDT)
Received: by mail-oi1-f170.google.com with SMTP id v7so6257491oib.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 14:47:06 -0700 (PDT)
X-Received: by 2002:a54:4492:: with SMTP id v18mr25801oiv.175.1567806426189;
 Fri, 06 Sep 2019 14:47:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190906115614.5645-1-hui.song_1@nxp.com>
In-Reply-To: <20190906115614.5645-1-hui.song_1@nxp.com>
From: Li Yang <leoyang.li@nxp.com>
Date: Fri, 6 Sep 2019 16:46:54 -0500
X-Gmail-Original-Message-ID: <CADRPPNSjOV4RvJiFU2krj_-0gwcvw07x27Ku9t7h+VKNd=BStQ@mail.gmail.com>
Message-ID: <CADRPPNSjOV4RvJiFU2krj_-0gwcvw07x27Ku9t7h+VKNd=BStQ@mail.gmail.com>
Subject: Re: [PATCH] gpio/mpc8xxx: change irq handler from chained to normal
To: Hui Song <hui.song_1@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_144708_608943_CB09B4A6 
X-CRM114-Status: GOOD (  17.77  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pku.leo[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-gpio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, lkml <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 6, 2019 at 10:20 AM Hui Song <hui.song_1@nxp.com> wrote:
>
> From: Song Hui <hui.song_1@nxp.com>
>

The English below need to be fixed.

> more one gpio controller use share one interrupt,
> make request interrupt to be shared.

More than one gpio controllers can share one interrupt, change the
driver to request shared irq.

>
> Signed-off-by: Laurentiu Tudor <Laurentiu.Tudor@nxp.com>
> Signed-off-by: Alex Marginean <alexandru.marginean@nxp.com>
> Signed-off-by: Song Hui <hui.song_1@nxp.com>
> ---
>  drivers/gpio/gpio-mpc8xxx.c | 20 +++++++++++++-------
>  1 file changed, 13 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpio/gpio-mpc8xxx.c b/drivers/gpio/gpio-mpc8xxx.c
> index 16a47de..4006250 100644
> --- a/drivers/gpio/gpio-mpc8xxx.c
> +++ b/drivers/gpio/gpio-mpc8xxx.c
> @@ -22,6 +22,7 @@
>  #include <linux/irq.h>
>  #include <linux/gpio/driver.h>
>  #include <linux/bitops.h>
> +#include <linux/interrupt.h>
>
>  #define MPC8XXX_GPIO_PINS      32
>
> @@ -127,10 +128,9 @@ static int mpc8xxx_gpio_to_irq(struct gpio_chip *gc, unsigned offset)
>                 return -ENXIO;
>  }
>
> -static void mpc8xxx_gpio_irq_cascade(struct irq_desc *desc)
> +static irqreturn_t mpc8xxx_gpio_irq_cascade(int irq, void *data)
>  {
> -       struct mpc8xxx_gpio_chip *mpc8xxx_gc = irq_desc_get_handler_data(desc);
> -       struct irq_chip *chip = irq_desc_get_chip(desc);
> +       struct mpc8xxx_gpio_chip *mpc8xxx_gc = (struct mpc8xxx_gpio_chip *)data;
>         struct gpio_chip *gc = &mpc8xxx_gc->gc;
>         unsigned int mask;
>
> @@ -139,8 +139,8 @@ static void mpc8xxx_gpio_irq_cascade(struct irq_desc *desc)
>         if (mask)
>                 generic_handle_irq(irq_linear_revmap(mpc8xxx_gc->irq,
>                                                      32 - ffs(mask)));
> -       if (chip->irq_eoi)
> -               chip->irq_eoi(&desc->irq_data);
> +
> +       return IRQ_HANDLED;
>  }
>
>  static void mpc8xxx_irq_unmask(struct irq_data *d)
> @@ -409,8 +409,14 @@ static int mpc8xxx_probe(struct platform_device *pdev)
>         if (devtype->gpio_dir_in_init)
>                 devtype->gpio_dir_in_init(gc);
>
> -       irq_set_chained_handler_and_data(mpc8xxx_gc->irqn,
> -                                        mpc8xxx_gpio_irq_cascade, mpc8xxx_gc);
> +       ret = request_irq(mpc8xxx_gc->irqn, mpc8xxx_gpio_irq_cascade,
> +               IRQF_NO_THREAD | IRQF_SHARED, "gpio-cascade", mpc8xxx_gc);
> +       if (ret) {
> +               pr_err("%s: failed to request_irq(%d), ret = %d\n",
> +                               np->full_name, mpc8xxx_gc->irqn, ret);
> +               goto err;
> +       }
> +
>         return 0;
>  err:
>         iounmap(mpc8xxx_gc->regs);
> --
> 2.9.5
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
