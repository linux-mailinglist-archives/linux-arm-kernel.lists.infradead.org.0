Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC28AC0D6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 21:47:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WukzqJmkUbEqOSku+T5YYwVdHtCCaTvkgFShYfp9UL8=; b=ZC63E554O810kW
	5QsnF5Vh0MJpHVpx+4nfOdVRSJuP626w5bppSlvJQH7RUcB31JGP3oHSUM2Hdat2YKtB1FqgeA4nd
	xJ03FG3yfQuifD0Wtd2FIwdWr73Kw22+wl/FlYTkCj7kSxcFtAMxMeKntKKnp6ARVpmZU20LqG2zq
	bN4Pq+TUTfSMzGcoDdtDPpzyQBT7mXGmAHHp7axLhtEXQhPx0KQnIONLAAkxHVetfqwQzy5xk7Ot+
	ZZXcCVciCunXvoWuBei8nHWNRpygS9fJ3Vn8WKeGyHivcgrI4Vhjcuc6ibFvV4QZucyHnV2Ja1pr7
	zHUZapwusG6YPZ6+9wFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6KCU-0003l5-5N; Fri, 06 Sep 2019 19:47:18 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6KCJ-0003ki-7c
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 19:47:08 +0000
Received: by mail-qk1-x743.google.com with SMTP id m2so6805838qkd.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 12:47:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GlriHQcPoNAAyA0m3FTNkIoAvIrt6CyS5DffxYEz37k=;
 b=JV3Gxop+nVe6QmZ91Cy718WYBKBAy8NjiGK4vtv+HjEfMdhIIBjEhWnBJdsRgYlyWr
 6Q0JSuJelzRFEQ/cvRNurMHnh4RnezG6ayGXFbCJDsZWwhDYiN8Rj8VgPLvDUmKAjXst
 DOD3sL8OIY+m5zWDXSDXsKLu+c86L3M9Esd0o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GlriHQcPoNAAyA0m3FTNkIoAvIrt6CyS5DffxYEz37k=;
 b=S+ru1NMoQD8eD7AA1PvvxEehWkpTxKqtpzuQttBwGsJB5ASkjdJbb+zsgc+28Xw0Z3
 bVJjNo4VuB8XYRtpd71fQN/KDWCMQ3hGtXXmRqscmyJTLq6lafwmc1jpsseTokDp7d8m
 saDH+mFHWyNOkAznEUcugysDgcleQcyfto2HLsmWwJpcKJ/hZA6WCX5665LaLGNrzrbq
 6xiFKGOen/PCv6Kl7YrDSzvAYPqgDolTtKBOahv6sMgEU4aq2AffwAzuZS3M1bY/hmGO
 v+APkvscAy7nPfbUkfP9lYKAVDGoZ3S+yU80UuyxUmuSchseFfi/qYiXovv/7DYC/2jL
 UKqw==
X-Gm-Message-State: APjAAAUdqUQJCdJ1CYjM1YKVsP/8ew/c8XDh91rPhVrtKn1VuKfGSmVU
 c/nUd2jYeixx+2tOPMHZB13AC4PbAXaGJIZcvAI=
X-Google-Smtp-Source: APXvYqzPbIKN8fLMP3JKF0jTbxrj163kAl2OUg9AwS3DSyA2kYmIJr9dAtyu/yz9wztF6mdPxhcTuHhbFMrrusGOrNI=
X-Received: by 2002:a37:bd5:: with SMTP id 204mr10857479qkl.330.1567799226454; 
 Fri, 06 Sep 2019 12:47:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190906062644.13445-1-rashmica.g@gmail.com>
In-Reply-To: <20190906062644.13445-1-rashmica.g@gmail.com>
From: Joel Stanley <joel@jms.id.au>
Date: Fri, 6 Sep 2019 19:46:55 +0000
Message-ID: <CACPK8XdWtg73-ZewJ7jThs0G-j5a3PL3Y9HLcMiEjU+8W_-_Uw@mail.gmail.com>
Subject: Re: [PATCH v3 3/5] gpio/aspeed: Setup irqchip dynamically
To: Rashmica Gupta <rashmica.g@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_124707_271018_87BD4105 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
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

On Fri, 6 Sep 2019 at 06:26, Rashmica Gupta <rashmica.g@gmail.com> wrote:
>
> This is in preparation for adding ast2600 support. The ast2600 SoC
> requires two instances of the GPIO driver as it has two GPIO
> controllers. Each instance needs it's own irqchip.
>
> Signed-off-by: Rashmica Gupta <rashmica.g@gmail.com>

Reviewed-by: Joel Stanley <joel@jms.id.au>

> ---
>  drivers/gpio/gpio-aspeed.c | 16 +++++++---------
>  1 file changed, 7 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpio/gpio-aspeed.c b/drivers/gpio/gpio-aspeed.c
> index b83e23aecd18..16c6eaf70857 100644
> --- a/drivers/gpio/gpio-aspeed.c
> +++ b/drivers/gpio/gpio-aspeed.c
> @@ -52,6 +52,7 @@ struct aspeed_gpio_config {
>   */
>  struct aspeed_gpio {
>         struct gpio_chip chip;
> +       struct irq_chip irqc;
>         spinlock_t lock;
>         void __iomem *base;
>         int irq;
> @@ -681,14 +682,6 @@ static void aspeed_gpio_irq_handler(struct irq_desc *desc)
>         chained_irq_exit(ic, desc);
>  }
>
> -static struct irq_chip aspeed_gpio_irqchip = {
> -       .name           = "aspeed-gpio",
> -       .irq_ack        = aspeed_gpio_irq_ack,
> -       .irq_mask       = aspeed_gpio_irq_mask,
> -       .irq_unmask     = aspeed_gpio_irq_unmask,
> -       .irq_set_type   = aspeed_gpio_set_type,
> -};
> -
>  static void set_irq_valid_mask(struct aspeed_gpio *gpio)
>  {
>         const struct aspeed_bank_props *props = gpio->config->props;
> @@ -1192,7 +1185,12 @@ static int __init aspeed_gpio_probe(struct platform_device *pdev)
>
>                 gpio->irq = rc;
>                 girq = &gpio->chip.irq;
> -               girq->chip = &aspeed_gpio_irqchip;
> +               girq->chip = &gpio->irqc;
> +               girq->chip->name = dev_name(&pdev->dev);
> +               girq->chip->irq_ack = aspeed_gpio_irq_ack;
> +               girq->chip->irq_mask = aspeed_gpio_irq_mask;
> +               girq->chip->irq_unmask = aspeed_gpio_irq_unmask;
> +               girq->chip->irq_set_type = aspeed_gpio_set_type;
>                 girq->parent_handler = aspeed_gpio_irq_handler;
>                 girq->num_parents = 1;
>                 girq->parents = devm_kcalloc(&pdev->dev, 1,
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
