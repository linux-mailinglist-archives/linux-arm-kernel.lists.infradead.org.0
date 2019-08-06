Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A552839FD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 22:03:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RQhEDiaMiO1PdVf73MFmXN4Gxf23YJEuo4mTosFZweE=; b=VCg6FKij3DCgud
	CdHz1aag5rGWT7WIdosenNAWWUsw4OnlWoXLVwy6wDNwi1rRLlmw0/LhEAICiTW0IZ/f/1YtY8lk1
	nZUvjhvlT+z0sCFIYJCLGKi7jd0Ute8Y3OycRmsmcd0aA9qR6xNsFzQmiY76hWNlWzeeJvrB1lMXu
	Rcw2kzMTHYc/z3ZxZQeNBcgk3TEp4y7xQTBXhBajD4kCMDsMdANHI2FvCsQ9XPLnemhrhhj7fIHuo
	t5ABcrXZ23DTGuXQzgH9SeilgoVYro8jYZpH7stfQKrAxyz61O3GxVGAOprO1vDNZrX+e9E5biXKJ
	kDFTyRzLeUcQpmNfDJBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv5ff-0004XT-3i; Tue, 06 Aug 2019 20:02:59 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv5fN-0004X1-Tw
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 20:02:43 +0000
Received: by mail-ot1-x343.google.com with SMTP id r21so89637422otq.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 13:02:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gqjViCXObN2WgC0+IhrtTb7Ll35AmMVzauFcMWGTI3Y=;
 b=g6geZrRSw1Dk72HeV3MeqgqDiCymOKGzorDS9kcJv2KYasDx9IRJzWdUCQ5iz/Ck/a
 sMOqtrYcPYFkeOtOkh3EZ6BQOFZFtjfX4FeNaR7psKg3xzJZZT2HZI2UO45VHTO99KCa
 5DJfIPEVo7ChrD9UA9ksvW4WKmWAYqfMY6fVOBsARhj6ITM/Y954KCB64DT/86RovKv+
 v3izTjlAuvKv3KGD3bthq9dyPH36SX8i7m0+F89SRk5FQznew6pgkuE+/KIjfgWA0K30
 KRvE8YQ5YyG26Sgb8bPl/FmaHp9h4HQXgX6WZJSlRti8akUyiqMHCDslkE+F9DWvSgMq
 +SWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gqjViCXObN2WgC0+IhrtTb7Ll35AmMVzauFcMWGTI3Y=;
 b=hFAIf0fiyuQa7JHzbmi6HX690sKAnCodpyR27etzyzXkVHBIzJr0I8rSIZTBfmJphB
 KVINo0UQbvdET4nquCYLEKoQcKynlXNENP8H3KnXUhlBczfe3JTrv1aIdYOdmUPN719i
 H5XT3l0P3FY9ARryGEgXumcTn0LWgOzJt4NB0hI3ZNbpGhZdKpYo6Jeqc4JDkETdQKzx
 81LeOtgbXyCFq+ONYYd4KgSd488OGdWAs6napdGxJHmGRsXMadkSq9zlqT/uXymrN9pe
 aUL6LUPupPBkswpbfViuhZW2uhORaZA122rHyj/zeoimVPpcfsW1AAL3NYH8giXHCYkO
 f8AQ==
X-Gm-Message-State: APjAAAXRaKCmg8LVzsuGe0KzrTDz65D0TQ8iBH/2+CNiBaIQrGwgaA0u
 nDo0tuz1jSbX9pWv5ltaCFLF1yXyz9CA8hf9X3I=
X-Google-Smtp-Source: APXvYqxUZRrA60vyMd0kzSQ4htAnblGQWHtpdj5jgj0q6G1y1gZxQTbe74lzuUCM09PKJHet7o8XCRwQJqJO6Q95G/0=
X-Received: by 2002:a5d:9942:: with SMTP id v2mr5555846ios.177.1565121759065; 
 Tue, 06 Aug 2019 13:02:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190731195713.3150463-1-arnd@arndb.de>
 <20190731195713.3150463-6-arnd@arndb.de>
In-Reply-To: <20190731195713.3150463-6-arnd@arndb.de>
From: Sylvain Lemieux <slemieux.tyco@gmail.com>
Date: Tue, 6 Aug 2019 16:02:27 -0400
Message-ID: <CA+rxa6p4gD7+6-aRyd4-V4TvkyMiUh9ueMLc6ggBaDC=LG7fQg@mail.gmail.com>
Subject: Re: [PATCH 05/14] gpio: lpc32xx: allow building on non-lpc32xx targets
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_130241_964331_66F5ABC1 
X-CRM114-Status: GOOD (  19.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slemieux.tyco[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jason Cooper <jason@lakedaemon.net>, "David S. Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Gregory Clement <gregory.clement@bootlin.com>,
 USB list <linux-usb@vger.kernel.org>, Russell King <linux@armlinux.org.uk>,
 Vladimir Zapolskiy <vz@mleia.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, soc@kernel.org,
 Alan Stern <stern@rowland.harvard.edu>, Guenter Roeck <linux@roeck-us.net>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Networking <netdev@vger.kernel.org>, Lee Jones <lee.jones@linaro.org>,
 linux-serial@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

On Wed, Jul 31, 2019 at 4:00 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> The driver uses hardwire MMIO addresses instead of the data
> that is passed in device tree. Change it over to only
> hardcode the register offset values and allow compile-testing.
>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/gpio/Kconfig        |  8 +++++
>  drivers/gpio/Makefile       |  2 +-
>  drivers/gpio/gpio-lpc32xx.c | 63 ++++++++++++++++++++++++-------------
>  3 files changed, 50 insertions(+), 23 deletions(-)
>
[...]

> diff --git a/drivers/gpio/gpio-lpc32xx.c b/drivers/gpio/gpio-lpc32xx.c
> index 24885b3db3d5..548f7cb69386 100644
> --- a/drivers/gpio/gpio-lpc32xx.c
> +++ b/drivers/gpio/gpio-lpc32xx.c

[...]

> @@ -498,6 +509,10 @@ static int lpc32xx_gpio_probe(struct platform_device *pdev)
>  {
>         int i;
>
> +       gpio_reg_base = devm_platform_ioremap_resource(pdev, 0);
> +       if (gpio_reg_base)
> +               return -ENXIO;

The probe function will always return an error.
Please replace the previous 2 lines with:
    if (IS_ERR(gpio_reg_base))
        return PTR_ERR(gpio_reg_base);

You can add my acked-by and tested-by in the v2 patch.
Acked-by: Sylvain Lemieux <slemieux.tyco@gmail.com>
Tested-by: Sylvain Lemieux <slemieux.tyco@gmail.com>

> +
>         for (i = 0; i < ARRAY_SIZE(lpc32xx_gpiochip); i++) {
>                 if (pdev->dev.of_node) {
>                         lpc32xx_gpiochip[i].chip.of_xlate = lpc32xx_of_xlate;
> @@ -527,3 +542,7 @@ static struct platform_driver lpc32xx_gpio_driver = {
>  };
>
>  module_platform_driver(lpc32xx_gpio_driver);
> +
> +MODULE_AUTHOR("Kevin Wells <kevin.wells@nxp.com>");
> +MODULE_LICENSE("GPL");
> +MODULE_DESCRIPTION("GPIO driver for LPC32xx SoC");
> --
> 2.20.0
>
Sylvain

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
