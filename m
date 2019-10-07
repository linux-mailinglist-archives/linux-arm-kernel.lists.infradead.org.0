Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47EDFCDC61
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 09:31:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fY8KpfJCZV4FskASbDuLJ1Ohzn0yrlKnmJ2fy0kUefA=; b=VOx7YI5kq8gKZ5
	m7wQY0fwbOWDh5lHAY6alb66Rli++v/54Wy1lfwKJ+4XwjmOoLEeWTTdGnckzARJS/gVA8SqnZPVd
	k54R/LlG2DfZ7PikeVH3sOTwlup3dE3lGSHOHZv3Dy55XpQUWwH6VXClgwYJEo3E3ariACUPzKX8Y
	fXh5sBLdh4sYKO8qZPZiLvWkX177evcbLmWrrEKlnwtXU3tCZsBBQ9k0VkLKV8tm6iMbFisg1jJ9z
	Lqu7+DD5qdpCObWjr0s8pPHH5UiDoz5KDVQa6LOjlbLQyVFGAS/ridLa0KkDHpoKxwFAaKBnJxLj4
	IyUJf7a4EnWrnlD5khSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHNU8-0002Xf-J6; Mon, 07 Oct 2019 07:31:12 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHNTz-0002XA-GA
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 07:31:05 +0000
Received: by mail-ot1-f67.google.com with SMTP id 67so10137140oto.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 00:31:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TB5Y9SznZoLk3Cl9+KE4TTX9dqxZSiY5fm75Asj4Mjs=;
 b=twHQ3BPkq13FyrASnVE3NL03Gccxj4uEcYOxFkWj55ZL6AlGTdD43n03aO3UAskNLT
 UE/8J5Ggol01xmaqH4aNTEllLdGPk15du/254wiBdbJWRORToQNRjGtI2UbR60g1GS+u
 n6iWjykuXf7wKeR81OAkDjvXRx4dQNh72j4coMwt7GkBfXPSeEjrwnK7EDQ83mEMFM7r
 RQK2j74+IxLynSaY1/byRQas+JTLRPCBXNNIWSkmpzLQNH6/BbxeQhm7mSFW5VulUBLC
 ZZdt0TmFCKoxv5DZJDOAgF3uhC8shuv697yEL6encc7rS5yhtMJzlzb1DlTSfo8kGTw9
 CoFQ==
X-Gm-Message-State: APjAAAVcLLLSjPL+Zk4j+8IiEMXoo8kk6ExRfmG8xVdPOZO9OEKx3jye
 sInOvisjGlrJDhBvldbfz9SxJc8BkZns5lZpndM=
X-Google-Smtp-Source: APXvYqwRM7uJwnHvbblrxA3GV3XCD3dOkjpVemwi/jQS/PJ9OScfdocl+T1L6ngeL0/ZvC8rlrJgbk3ER8m6c6VW4zk=
X-Received: by 2002:a9d:6642:: with SMTP id q2mr19868047otm.250.1570433462183; 
 Mon, 07 Oct 2019 00:31:02 -0700 (PDT)
MIME-Version: 1.0
References: <20191003000310.17099-1-chris.packham@alliedtelesis.co.nz>
 <20191003000310.17099-3-chris.packham@alliedtelesis.co.nz>
In-Reply-To: <20191003000310.17099-3-chris.packham@alliedtelesis.co.nz>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 7 Oct 2019 09:30:50 +0200
Message-ID: <CAMuHMdV7syxxtnHEcgFBrf5DLo-M_71tZFWHHQ6kTO=2A1eVhg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] pinctrl: iproc: use unique name for irq chip
To: Chris Packham <chris.packham@alliedtelesis.co.nz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_003103_534047_9D85FFF7 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Scott Branden <sbranden@broadcom.com>, rayagonda.kokatanur@broadcom.com,
 Ray Jui <rjui@broadcom.com>, Linus Walleij <linus.walleij@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, Marc Zyngier <maz@kernel.org>,
 li.jin@broadcom.com, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Chris,

CC MarcZ

On Thu, Oct 3, 2019 at 2:03 AM Chris Packham
<chris.packham@alliedtelesis.co.nz> wrote:
> Use the dev_name(dev) for the irqc->name so that we get unique names
> when we have multiple instances of this driver.
>
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>

A while ago, Marc Zyngier pointed out that the irq_chip .name field
should contain the device's class name, not the instance's name.
Hence the current code is correct?

See also "[PATCH 0/4] irqchip: renesas: Use proper irq_chip name and parent"
(https://lore.kernel.org/lkml/20190607095858.10028-1-geert+renesas@glider.be/)
Note that the irqchip patches in that series have been applied; the gpio
patches haven't been applied yet.

> --- a/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
> +++ b/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
> @@ -858,7 +858,7 @@ static int iproc_gpio_probe(struct platform_device *pdev)
>                 struct gpio_irq_chip *girq;
>
>                 irqc = &chip->irqchip;
> -               irqc->name = "bcm-iproc-gpio";
> +               irqc->name = dev_name(dev);
>                 irqc->irq_ack = iproc_gpio_irq_ack;
>                 irqc->irq_mask = iproc_gpio_irq_mask;
>                 irqc->irq_unmask = iproc_gpio_irq_unmask;

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
