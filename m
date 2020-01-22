Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE011455F1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 14:33:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lxcjoTxRy9GpL9kqZT3fdGOjBS05T9CBxwHUZ+/LIrY=; b=J0HP3MgNUvrbvz
	rapHoerDPY+2/fcnxfxHU/SwW9igUbKQvB+MgLeMLY1F2P+HJ0wLHfNC9P4vvlVbDlvGNh3TQ/kIj
	rxn54Vn/cJspaiBGYgOu+MrXxghUVojc8yAcMrQe7HKdqpwa3SeK9i9lmNVUaL+9Q/MCZh1lC18m7
	amnBODyGqJEu0cISE0w1g/K4MUrRrp8kXWAYm8DYEEXBvv95R6+1ox16LNLSboEiuNQqEYOq0tUB7
	yMA5X+Ka3jJlQQR3z/1qu23VF0JgYVfY/x6vUa929W3YsVkCFYm6IJ7VnpDPAX4J2DQowgOlZux6N
	B6E+JsBJg5LWkfE0C82Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuG8l-00027Z-6j; Wed, 22 Jan 2020 13:33:51 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuG8c-00026l-5Q
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 13:33:43 +0000
Received: by mail-ot1-f68.google.com with SMTP id 59so6194930otp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Jan 2020 05:33:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iXidiK5tVlkQ0oI63DDPIucIlwGG0gDTXW/wsHE+cj0=;
 b=jvuhFymD81S8pEGA6eH/0FTHBhWKb+qrVNE5a1f8H0glxEq+L7dm0jDq3XfmLaPsD9
 jyXL8wwedFB2CkoBgFWIQC3N57N0l1S3XmRS05TjeWThPmjhPomkXKYDUr7r983n+7fs
 tKfVHpmz/GrWPh8+dfiszbh7P7fRBfVa+Y/AUnvQkmru04nWlMOzA1eN4u1ffQemnnT4
 rUJa79QBzbD5dDGfmlyCq76lyWNjcmRTK1iy361/n2bC9BzhQYv76/pYTU5KYQOp/SZO
 Ih6toJ+HzY6lK2i/8ITCj+ebMEwrdMstJRonAQhqo4zlfPfi15L5YiaHALN00tQuRRn7
 VdlQ==
X-Gm-Message-State: APjAAAUs46VtMGWqqogJsAlL/t885rrbPfrnZTNvWSwxyhWpmGcgncR3
 mEwvdHtBsnxN85twfFCaRNguSZySzU9IqMSk/Tg=
X-Google-Smtp-Source: APXvYqx2WT9miCyQl2CICz4pB+JoTuMEVCoWq80VHJk6RfrccdbBL+sY24/JFlOCh65kdCawS95nHFz2cNnZQK/pJZ4=
X-Received: by 2002:a9d:7984:: with SMTP id h4mr7504494otm.297.1579700021124; 
 Wed, 22 Jan 2020 05:33:41 -0800 (PST)
MIME-Version: 1.0
References: <56c7b6d5-1248-15bd-8441-5d80557455b3@free.fr>
In-Reply-To: <56c7b6d5-1248-15bd-8441-5d80557455b3@free.fr>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 22 Jan 2020 14:33:29 +0100
Message-ID: <CAMuHMdX3kZoEfCeGamreeWq0-Tu2+Mw8MYEbRUZV8wBS+e2K=A@mail.gmail.com>
Subject: Re: [RFC PATCH v2] clk: Use a new helper in managed functions
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_053342_201981_5BD1EA5A 
X-CRM114-Status: GOOD (  21.74  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 LKML <linux-kernel@vger.kernel.org>, Russell King <linux@armlinux.org.uk>,
 Guenter Roeck <linux@roeck-us.net>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On Wed, Jan 22, 2020 at 2:02 PM Marc Gonzalez <marc.w.gonzalez@free.fr> wrote:
> Introduce devm_add() to factorize devres_alloc/devres_add calls.
>
> Using that helper produces simpler code and smaller object size:
>
> 1 file changed, 27 insertions(+), 66 deletions(-)
>
>     text           data     bss     dec     hex filename
> -   1708             80       0    1788     6fc drivers/clk/clk-devres.o
> +   1508             80       0    1588     634 drivers/clk/clk-devres.o
>
> Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>

Thanks for your patch!

> --- a/drivers/base/devres.c
> +++ b/drivers/base/devres.c
> @@ -685,6 +685,20 @@ int devres_release_group(struct device *dev, void *id)
>  }
>  EXPORT_SYMBOL_GPL(devres_release_group);
>
> +void *devm_add(struct device *dev, dr_release_t func, void *arg, size_t size)

I there any advantage of using dr_release_t over "void (*action)(void *)",
like devm_add_action() does?  The latter lacks the "device *" parameter.

> +{
> +       void *data = devres_alloc(func, size, GFP_KERNEL);
> +
> +       if (data) {
> +               memcpy(data, arg, size);
> +               devres_add(dev, data);
> +       } else
> +               func(dev, arg);

Both branchs should use { ...}

> +
> +       return data;

Why return data or NULL, instead of 0 or -Efoo, like devm_add_action()?

> +}
> +EXPORT_SYMBOL_GPL(devm_add);
> +
>  /*
>   * Custom devres actions allow inserting a simple function call
>   * into the teadown sequence.
> diff --git a/drivers/clk/clk-devres.c b/drivers/clk/clk-devres.c
> index be160764911b..582fda9ad6a6 100644
> --- a/drivers/clk/clk-devres.c
> +++ b/drivers/clk/clk-devres.c

> @@ -33,10 +25,7 @@ struct clk *devm_clk_get_optional(struct device *dev, const char *id)
>  {
>         struct clk *clk = devm_clk_get(dev, id);
>
> -       if (clk == ERR_PTR(-ENOENT))
> -               return NULL;
> -
> -       return clk;
> +       return clk == ERR_PTR(-ENOENT) ? NULL : clk;

Unrelated change (which is less readable than the original, IMHO).

>  }
>  EXPORT_SYMBOL(devm_clk_get_optional);
>
> @@ -45,7 +34,7 @@ struct clk_bulk_devres {
>         int num_clks;
>  };
>
> -static void devm_clk_bulk_release(struct device *dev, void *res)
> +static void wrap_clk_bulk_put(struct device *dev, void *res)
>  {
>         struct clk_bulk_devres *devres = res;
>
> @@ -55,25 +44,17 @@ static void devm_clk_bulk_release(struct device *dev, void *res)
>  static int __devm_clk_bulk_get(struct device *dev, int num_clks,
>                                struct clk_bulk_data *clks, bool optional)
>  {
> -       struct clk_bulk_devres *devres;
>         int ret;
> -
> -       devres = devres_alloc(devm_clk_bulk_release,
> -                             sizeof(*devres), GFP_KERNEL);
> -       if (!devres)
> -               return -ENOMEM;
> +       struct clk_bulk_devres arg = { clks, num_clks };
>
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
> +       if (!ret)
> +               if (!devm_add(dev, wrap_clk_bulk_put, &arg, sizeof(arg)))
> +                       ret = -ENOMEM;

Nested ifs are easier to read when the outer one uses curly braces:

        if (!ret) {
                if (!devm_add(dev, wrap_clk_bulk_put, &arg, sizeof(arg)))
                        ret = -ENOMEM;
        }

Or merge the condition with &&.

>
>         return ret;

But in this case, I would write it as:

        if (ret)
                return ret;

        if (!devm_add(dev, wrap_clk_bulk_put, &arg, sizeof(arg)))
                return -ENOMEM;

        return 0;

(+ consider devm_add() returning the error code instead, cfr. above).

BTW, I'm still wondering if the varargs macro discussed on #armlinux would
help.  I.e.

    devm_add(dev, wrap_clk_bulk_put, struct clk_bulk_devres, clks, num_clks)

would create and populate the temporary arg variable.

That would require defining an argument struct for the use in devm_clk_get(),
though.

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
