Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A56E1718D8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 14:37:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2aCp0uS7qmCqo4vjDETXBmRaSWKOEeZZFOLJumKsipI=; b=tNR2KePhd7D6GI
	4ng6Xhqv01DUpzslSnX5QReECzUIqQFZfe66WX6DOzq6OfjUkgbdakN3JqhjFMNbOGYTYYj4T5PTy
	Qya3R0slfcCDZCCEi9TKkwTAqm6x4wlDN28GDeR8o7qbc/n+b/HZmZ0f+n8itxNs2xRVQtJWAKmti
	rTHbnmYpg7t+ZfaikWD4G1yz/6zMqtKV0AJXAYfN8y00ILfnmUWm8EzyeFylAyxIZO/A1aH9iNgZz
	MXlxv5CN86Jx0pzKSeNE8I1m5/rFe18EFDoEbHeIUaKM35k1UmPiSkWhii/S2XL3+xLXs0sKiNwAP
	KcWleLrQ19PdaNFKEuew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7JLR-0007ca-Mq; Thu, 27 Feb 2020 13:36:53 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7JLF-0007bo-Kg
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 13:36:43 +0000
Received: by mail-oi1-f196.google.com with SMTP id p125so3252750oif.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 05:36:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MgPO7ELVuWGwpya2a5yhCTpGcfN6PfsNmhRsLtt669A=;
 b=hs8v6tDnbmrFsnMqQWW8vd8tbM6sxhSRA7yk+tLKP95yuLLoVIXF/sSpVTkCj+jYFk
 la6beJzajzvth9dCGF16laDHIK0Vanh2GOBxD214Ea64yV3rgCZae+TGD84a15mmRXOq
 uI9S9kSSPNcCgQ2u1e803Rv9ML7H7D2fUd9tF/2XCXR1ONoUKKzxfuQkKbc4WS8f2LIG
 u4541g6vCFdu53og6Rsy12fcQvDjg9W6DydcQrGE5t39oWYn7Z5UDonh251FDG+mQIWn
 N66DFR+9INlt5fpQ/N/WmC2gz5JkAm+odf1Bx+d0/rq8c0g9nP2FgFK1CDgCyRRjEH9L
 bgPQ==
X-Gm-Message-State: APjAAAXRalw5bDpP7jJ32ovlNz933MPx/DLYTxbSD7/pdrjD4Fze1MH4
 2iFwtUJEqUcjBXhzgJm6/5/UjxKAKCDaT3DNzkQ=
X-Google-Smtp-Source: APXvYqzIYnQiYyviv4vxEN0xt3PJIW3ungOh7jqD4M4TFya2yAyor+8r40KHsX2LrN6OlxEwrnEvFwy6FGg4JA5Qe48=
X-Received: by 2002:aca:1a06:: with SMTP id a6mr3143012oia.148.1582810600115; 
 Thu, 27 Feb 2020 05:36:40 -0800 (PST)
MIME-Version: 1.0
References: <68219a85-295d-7b7c-9658-c3045bbcbaeb@free.fr>
 <e88ca46a-799d-9c86-f2d2-6284eb3c3419@free.fr>
In-Reply-To: <e88ca46a-799d-9c86-f2d2-6284eb3c3419@free.fr>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 27 Feb 2020 14:36:29 +0100
Message-ID: <CAMuHMdUZfR6pYG-hourZCKT-jhh1t+x-ySF4JnEPJjscGAQT+A@mail.gmail.com>
Subject: Re: [RFC PATCH v4 2/2] clk: Use devm_add in managed functions
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_053641_680112_05A9723A 
X-CRM114-Status: GOOD (  16.72  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-clk <linux-clk@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rafael Wysocki <rjw@rjwysocki.net>, Russell King <linux@armlinux.org.uk>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Suzuki Poulose <suzuki.poulose@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

Thanks for your patch!

On Wed, Feb 26, 2020 at 4:55 PM Marc Gonzalez <marc.w.gonzalez@free.fr> wrote:
> Using the helper produces simpler code, and smaller object size.
> E.g. with gcc-arm-9.2-2019.12-x86_64-aarch64-none-linux-gnu:
>
>     text           data     bss     dec     hex filename
> -   1708             80       0    1788     6fc drivers/clk/clk-devres.o
> +   1524             80       0    1604     644 drivers/clk/clk-devres.o

And the size reduction could have been even more ;-)

> Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>

> --- a/drivers/clk/clk-devres.c
> +++ b/drivers/clk/clk-devres.c

> @@ -55,25 +51,17 @@ static void devm_clk_bulk_release(struct device *dev, void *res)
>  static int __devm_clk_bulk_get(struct device *dev, int num_clks,
>                                struct clk_bulk_data *clks, bool optional)
>  {
> -       struct clk_bulk_devres *devres;
>         int ret;
>
> -       devres = devres_alloc(devm_clk_bulk_release,
> -                             sizeof(*devres), GFP_KERNEL);
> -       if (!devres)
> -               return -ENOMEM;
> -
>         if (optional)
>                 ret = clk_bulk_get_optional(dev, num_clks, clks);
>         else
>                 ret = clk_bulk_get(dev, num_clks, clks);
> -       if (!ret) {
> -               devres->clks = clks;
> -               devres->num_clks = num_clks;
> -               devres_add(dev, devres);
> -       } else {
> -               devres_free(devres);
> -       }
> +
> +       if (ret)
> +               return ret;
> +
> +       ret = devm_vadd(dev, my_clk_bulk_put, clk_bulk_args, num_clks, clks);
>
>         return ret;

return devm_vadd(...);

>  }

> @@ -128,30 +109,22 @@ static int devm_clk_match(struct device *dev, void *res, void *data)
>
>  void devm_clk_put(struct device *dev, struct clk *clk)
>  {
> -       int ret;
> -
> -       ret = devres_release(dev, devm_clk_release, devm_clk_match, clk);
> -
> -       WARN_ON(ret);
> +       WARN_ON(devres_release(dev, my_clk_put, devm_clk_match, clk));

Getting rid of "ret" is an unrelated change, which actually increases
kernel size, as the WARN_ON() parameter is stringified for the warning
message.

The rest looks good, so with the above fixed:
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

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
