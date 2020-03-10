Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6BB180C58
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 00:28:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MwDf8aEpRj2/UCPDMf8Yp8wG7SH2gb5KJtbrR3qwYqs=; b=gmgS4PS3aNl/3E
	mS7XAHZRBRFfi21zkNRbvG79TOGHeMASnXzT2RqBofZ3CFiASX5o3lvM5Nr2t+ling25WsgReKTpx
	mOggj2k0T+0rvFXSdx85179lmKdUqdlK9WyyXd2STU/eGFqYuXcYwio/79RUcsuICm3oBYbS2v3kN
	BGC5fyA9g4u3foExhQqTV3YCPxJuItu8KvzQ/4IukeDNwVViW6UlntGw5lBGSFrOLyzTBj/sqDBWX
	k77X7504x5f2ZgQ8d+bSwvAZ0pLQdNS1TaxISU9xxzkRJ3jV+BbmuwG2NKj7A/o+4FQO7sNkQdr8b
	8yKi0joHGiCw6cbkU95A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBoHy-0008U6-Tn; Tue, 10 Mar 2020 23:27:54 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBoHn-0008TO-PR
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 23:27:45 +0000
Received: by mail-oi1-x244.google.com with SMTP id a22so15724777oid.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 16:27:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=urlu+8TdQXdW80awHG4Zd4J9lzaBBb5vKaOjUvu/Baw=;
 b=TWAFwRacAltjmxOIncTM4pfxUqZ6aLEc6D3plWuBUkMVwBWikAKxmA/+G8h7sSHmyB
 EFPNWTaWMtj0FRPhsXGtXySfrpCA4iGwzXXTLofXfjpLjniSQ7nSic1fLN/FVIo8YxGK
 7xO21xec0DGPZEOGtZJgsTQpe8NiVMsg1y/avSifZrIfD7OMJSPKqaZ8+ks3nvFF13WV
 CzM5IZPb8PFQfnxKuYmDOjUfn7r2idvxonZ8HoisdEs7PBl8lHxYdn9FBn/UtfMfDNSj
 D3dg/R1Kh0wQhAVd6/MHdsYS+o2M9VABsavSoob/Vo9kb7Dhp/L1QMmQyTOhcdmvRygp
 u1xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=urlu+8TdQXdW80awHG4Zd4J9lzaBBb5vKaOjUvu/Baw=;
 b=sjCEerwfp0d3EkdjNdH2VLXOeW1/3foXkvuFRV43i+REw6NO4Xr21moOq05Ol4OUmT
 yBWPZXXEN0oaPvVzdPWKS9B2fJNN50AXOlGYFfccZUdEuDKAzxfv9e4/MTKajiqjtvSe
 4c0hSObFHIUIqwgmBg/iDa2PzY00PtSjk/Fg4/pJbdxL08OdHxKgZnvVYEGo2esV964A
 GmA0M3CWF5k7eWkQB0ZDZC1+WkWen1ZrymTR3GM2ZUjpTWyZsa3wCgVyoIUk2jjllTHF
 bcY3tvDPl5gDUHPtGnwbDEWD5z8x/Y2E1uuFQkz4H8PlN6dOmCr+dkJ41Joe6x3QUq35
 zkcw==
X-Gm-Message-State: ANhLgQ0RUJkF+V7erk5S/QJ5r7edjP/rurQLQ16S39N+6w67wi02PT4u
 hXA/9f8GYcDoapE5Us63XPG5vsXvXtFYXn7OAN926g==
X-Google-Smtp-Source: ADFU+vtFw4+uD8Udv5vJx1K7Yd8AiJ1NSDWoUD72RcY9sbbnvgqvHt4vpV9vddaJ49Th3mFrW8Vk6vTPlnaLbkWy0qQ=
X-Received: by 2002:aca:474e:: with SMTP id u75mr86968oia.52.1583882862823;
 Tue, 10 Mar 2020 16:27:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190430101230.21794-1-lokeshvutla@ti.com>
 <20190430101230.21794-8-lokeshvutla@ti.com>
In-Reply-To: <20190430101230.21794-8-lokeshvutla@ti.com>
From: Tim Harvey <tharvey@gateworks.com>
Date: Tue, 10 Mar 2020 16:27:31 -0700
Message-ID: <CAJ+vNU2gnKKxX2YL1JUSnpF7qNqKVAsPhC2emv=Y79HPJbZXzw@mail.gmail.com>
Subject: Re: [PATCH v8 07/14] gpio: thunderx: Use the default parent apis for
 {request, release}_resources
To: Lokesh Vutla <lokeshvutla@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_162743_851882_B350636B 
X-CRM114-Status: GOOD (  20.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Nishanth Menon <nm@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Jason Cooper <jason@lakedaemon.net>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Marc Zyngier <marc.zyngier@arm.com>, Linus Walleij <linus.walleij@linaro.org>,
 Sekhar Nori <nsekhar@ti.com>, open list <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Tony Lindgren <tony@atomide.com>,
 Rob Herring <robh+dt@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Santosh Shilimkar <ssantosh@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 3:14 AM Lokesh Vutla <lokeshvutla@ti.com> wrote:
>
> thunderx_gpio_irq_{request,release}_resources apis are trying to
> {request,release} resources on parent interrupt. There are default
> apis doing the same. Use the default parent apis instead of writing
> the same code snippet.
>
> Cc: linux-gpio@vger.kernel.org
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Acked-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
> ---
> Changes since v7:
> - None
>
>  drivers/gpio/gpio-thunderx.c | 16 ++++------------
>  1 file changed, 4 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpio/gpio-thunderx.c b/drivers/gpio/gpio-thunderx.c
> index 1306722faa5a..715371b5102a 100644
> --- a/drivers/gpio/gpio-thunderx.c
> +++ b/drivers/gpio/gpio-thunderx.c
> @@ -363,22 +363,16 @@ static int thunderx_gpio_irq_request_resources(struct irq_data *data)
>  {
>         struct thunderx_line *txline = irq_data_get_irq_chip_data(data);
>         struct thunderx_gpio *txgpio = txline->txgpio;
> -       struct irq_data *parent_data = data->parent_data;
>         int r;
>
>         r = gpiochip_lock_as_irq(&txgpio->chip, txline->line);
>         if (r)
>                 return r;
>
> -       if (parent_data && parent_data->chip->irq_request_resources) {
> -               r = parent_data->chip->irq_request_resources(parent_data);
> -               if (r)
> -                       goto error;
> -       }
> +       r = irq_chip_request_resources_parent(data);
> +       if (r)
> +               gpiochip_unlock_as_irq(&txgpio->chip, txline->line);

Lokesh,

This patch breaks irq resources for thunderx-gpio as
parent_data->chip->irq_request_resources is undefined thus your new
irq_chip_request_resources_parent() returns -ENOSYS causing this
function to return an error where as before it would happily return 0.

Is the following the correct fix or should we qualify
data->parent_data->chip->irq_request_resources before calling
irq_chip_request_resources_parent() in thunderx-gpio?

diff --git a/kernel/irq/chip.c b/kernel/irq/chip.c
index b3fa2d8..b2435ecb 100644
--- a/kernel/irq/chip.c
+++ b/kernel/irq/chip.c
@@ -1525,7 +1525,7 @@ int irq_chip_request_resources_parent(struct
irq_data *data)
        if (data->chip->irq_request_resources)
                return data->chip->irq_request_resources(data);

-       return -ENOSYS;
+       return 0;
 }
 EXPORT_SYMBOL_GPL(irq_chip_request_resources_parent);

Regards,

Tim

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
