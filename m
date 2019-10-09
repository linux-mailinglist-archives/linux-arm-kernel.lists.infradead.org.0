Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40303D141C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 18:34:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l0QQQLaX9EEOxwUOekkhiYmwwjbD1GC2udSHyz51kYw=; b=K9MT7iMnCfyE0a
	B+6TbhPzOVI3521TTP7ZRq1ynoqdY+0tofW1BkPYh8YRrA8tJWeaK3tEi5ecSmtRIN92ODw/BUmyz
	cDNcao7VW5PGIyyd9UlesRcSoYu5hpHojgrivfI2ZPlxpItp00naavI9nRvilGUuWmP6+IeLS+2GZ
	4apbiv6vTwk2HzTTYK9enxZCI3DZeYOiaK7sSSRCkl5CfZiwTo+XaDIN8iM+MEr6ZG/L+j0GG2rQh
	gwfUOT5EAN4vzZKKqCqFG/eJdaXIzEQgDWEoHiwTpIcAR5usjSFoyGzQX76OEb8c0jdaK8QG3N/Mi
	jeiHQjA0EbOIS75gKdNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIEuh-0005mY-GI; Wed, 09 Oct 2019 16:34:11 +0000
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIEuZ-0005m9-V6
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 16:34:05 +0000
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com
 [209.85.217.50]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id x99GXhGK016767
 for <linux-arm-kernel@lists.infradead.org>; Thu, 10 Oct 2019 01:33:43 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com x99GXhGK016767
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1570638823;
 bh=y7V7634zQnspw5C5IJL3KPw/IDKbvhhOq4Dz/8oh3dQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=vjCcwHQl1Cwp2oMfCaVKmE+QZ2iJoJ3MBnK4imH1NdErQvuFdXWgeCR5jlpizN+C0
 vOWdUvit3QJQ3kDfT5YY+84lNWfrbDW0fWQUTOo8kx5Ol59E+0BN7ZjXnx2z4RxCbr
 3wxjWWvN+IY9M7OjqMAQPv5LfI86oQ1HCnr0PvE1y8XMGp/3cNPVrG8DGkPw+Mc8C+
 FLEuv61utWHYRBrOjmycITgBMQ3TLa7mgU2ZIBEQWGiHoyt0Cj6nqHV+0bMtW8z6zT
 TkkWUHrNYI8wM6Tz4mfbgbKR/sOLoo5cFyHykj76sg3Feudni5mUdqNrp5XD8k6WjQ
 6dznYzJjWNvSw==
X-Nifty-SrcIP: [209.85.217.50]
Received: by mail-vs1-f50.google.com with SMTP id p13so1940694vsr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 09:33:43 -0700 (PDT)
X-Gm-Message-State: APjAAAXoXjuc+HNQuChzFWXAGzPpnAeGLp8uIQk29vWF7jfPMh0TZKRk
 l8ZFWnigyF2F2uv26bD5mPzKMQoY0hCxIOJ9g7s=
X-Google-Smtp-Source: APXvYqyVz/TISAP9X9dWqRgp4AQ7poq8KBQqo3Tv8o3GwtVkP0izbYG6Zxk1diURj0JSGqrOxub3fGjbdk2bFZQOcHU=
X-Received: by 2002:a05:6102:97:: with SMTP id
 t23mr2437001vsp.179.1570638822621; 
 Wed, 09 Oct 2019 09:33:42 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1570633189.git.vilhelm.gray@gmail.com>
 <271a7735b02b6a8b1f54c018e38ea932d1fd299e.1570633189.git.vilhelm.gray@gmail.com>
In-Reply-To: <271a7735b02b6a8b1f54c018e38ea932d1fd299e.1570633189.git.vilhelm.gray@gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Thu, 10 Oct 2019 01:33:06 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQStJsZ4cYTJyAPvjyngWkKs+5y=yzJb6vz3-cco+2-ug@mail.gmail.com>
Message-ID: <CAK7LNAQStJsZ4cYTJyAPvjyngWkKs+5y=yzJb6vz3-cco+2-ug@mail.gmail.com>
Subject: Re: [PATCH v17 09/14] gpio: uniphier: Utilize for_each_set_clump8
 macro
To: William Breathitt Gray <vilhelm.gray@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_093404_223646_53C00A9D 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: linux-arch <linux-arch@vger.kernel.org>, preid@electromag.com.au,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux PM mailing list <linux-pm@vger.kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 morten.tiljeset@prevas.dk, sean.nyekjaer@prevas.dk,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Lukas Wunner <lukas@wunner.de>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 12:27 AM William Breathitt Gray
<vilhelm.gray@gmail.com> wrote:
>
> Replace verbose implementation in set_multiple callback with
> for_each_set_clump8 macro to simplify code and improve clarity. An
> improvement in this case is that banks that are not masked will now be
> skipped.
>
> Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
> Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
> ---
>  drivers/gpio/gpio-uniphier.c | 16 ++++++----------
>  1 file changed, 6 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpio/gpio-uniphier.c b/drivers/gpio/gpio-uniphier.c
> index 93cdcc41e9fb..3e4b15d0231e 100644
> --- a/drivers/gpio/gpio-uniphier.c
> +++ b/drivers/gpio/gpio-uniphier.c
> @@ -15,9 +15,6 @@
>  #include <linux/spinlock.h>
>  #include <dt-bindings/gpio/uniphier-gpio.h>
>
> -#define UNIPHIER_GPIO_BANK_MASK                \
> -                               GENMASK((UNIPHIER_GPIO_LINES_PER_BANK) - 1, 0)
> -
>  #define UNIPHIER_GPIO_IRQ_MAX_NUM      24
>
>  #define UNIPHIER_GPIO_PORT_DATA                0x0     /* data */
> @@ -147,15 +144,14 @@ static void uniphier_gpio_set(struct gpio_chip *chip,
>  static void uniphier_gpio_set_multiple(struct gpio_chip *chip,
>                                        unsigned long *mask, unsigned long *bits)
>  {
> -       unsigned int bank, shift, bank_mask, bank_bits;
> -       int i;
> +       unsigned long i;
> +       unsigned long bank_mask;
> +       unsigned long bank;
> +       unsigned long bank_bits;


Please do not split it into multiple lines
unless you need to do so.

Thanks.




> -       for (i = 0; i < chip->ngpio; i += UNIPHIER_GPIO_LINES_PER_BANK) {
> +       for_each_set_clump8(i, bank_mask, mask, chip->ngpio) {
>                 bank = i / UNIPHIER_GPIO_LINES_PER_BANK;
> -               shift = i % BITS_PER_LONG;
> -               bank_mask = (mask[BIT_WORD(i)] >> shift) &
> -                                               UNIPHIER_GPIO_BANK_MASK;
> -               bank_bits = bits[BIT_WORD(i)] >> shift;
> +               bank_bits = bitmap_get_value8(bits, i);
>
>                 uniphier_gpio_bank_write(chip, bank, UNIPHIER_GPIO_PORT_DATA,
>                                          bank_mask, bank_bits);
> --
> 2.23.0
>


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
