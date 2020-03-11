Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C30CF181C59
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 16:32:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wsdo2drJ0+Yyhdb3+0eb55dK3AUNHxblLPWVKv4BkBI=; b=dR58dYjehyINNL
	oVlLAjmV8OPpkQwTR6jnAmEG5Y2Ev4IKxDvsG9T91cqlf+o6oK0FSFxxfH/4vDUadjyLzmjLGxTat
	SvD0EUhCLokCkqoit5y2vWqzP4UpFXebeZyL/3HjHJijaAdxza0f/YZbkwob694227UHKtnKTdm6H
	UAV12AApYKK545LGzH3eolL0BdF+mGV9rMxwrlM1SgZ0aYVwAZB7X1B9d7eBx/atYaZiAw3fIUMxF
	g40DeEz2rdZc2aBDMdIryD9g1p5lNUhTcmU3+p5yh5d3TvdXySzLvAmMTIdU6EM2hHJxt5POIBhX+
	ed6+Gb7gCIi4We18xzIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC3Lm-0008PC-NV; Wed, 11 Mar 2020 15:32:50 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC3Le-0008OX-HB
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 15:32:43 +0000
Received: by mail-lf1-x144.google.com with SMTP id j15so2102912lfk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 08:32:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=igM2VI1+T7dAbedLoTNIOOP15/c1U1XVsx0x9BZ/myo=;
 b=lqKirzdAID+58xNJrnXODfhsEXd+1XT0hsWptXnIiKCSXD1oliJSkWtAwCkpP3KrZf
 SE6YQSRwhSLJfEbhVMD4MwVd9nNP0tZ52T8Mycl7CZLNWJ3gt0A2U+QyEYclzo2QkdbQ
 Fve9KCp1rSO0UDKQFJKaatHNck9DLeVRM5AnpkgBgPElw2wSM4IXVuVN2RiSOP4y9GNX
 nCtP7K7TvgnWifrF9goHJpM8ApwrdpPWJQh2qIJ48+eM+keiYOOVZwb6yVAufb+kdtKz
 L6otsOtmKHsA61SdlexWzQXwmlKGdBc7RHB0Vz0VERYQi35yGYKHy46esvnWsLWFUL5/
 1XBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=igM2VI1+T7dAbedLoTNIOOP15/c1U1XVsx0x9BZ/myo=;
 b=Yier0UoxmORsMT94obeppJ01/ooEXc+rlUD23ZinOSGznqw7E5KxgQqMSZYOlMEYZI
 K4zLIQBeBubsWaL/RotEbTNmZBYea6lJcwR9sXU4kUJ8oXFJGBQb4opVgkv14MkgFSnp
 GBbdGdT728X59u0NOuBODQsQJq5dEJcN92tu3uP0rasH73JeBScZvFN4nNvTDPq2C4JW
 lkulBXJijEg8TquCZ0pZWTj/RguGw7YpsYnBsBQn+xlUS1Eo4qIqCQPZ3yovjFvc9+Q5
 Mvs7wacxt4XO+bHb3l1zS1qEas+L5cUJXMB89biHaJtZc2JmF2noHw6tuOe8B18DXM85
 8dMQ==
X-Gm-Message-State: ANhLgQ2Al5OcqgbhjJOVuRjnFiL74pp4XwhOaItQutrAu+z2zV7njD7k
 OtZdBcEOytL6wrzbTYx+1g7FFF6IBXFDmaJfEGkuTw==
X-Google-Smtp-Source: ADFU+vtDV8z5iYek9wUa00dmO4NFp1uTESLKgQiJai5A22kehORhROonLF6FHU/ZKUeB4tZ0MB4HucdTPznvOI+3gRc=
X-Received: by 2002:ac2:4a76:: with SMTP id q22mr2396492lfp.217.1583940760278; 
 Wed, 11 Mar 2020 08:32:40 -0700 (PDT)
MIME-Version: 1.0
References: <1583780521-45702-1-git-send-email-opendmb@gmail.com>
In-Reply-To: <1583780521-45702-1-git-send-email-opendmb@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 11 Mar 2020 16:32:29 +0100
Message-ID: <CACRpkdZ1p3_U_yth-rCEKdPsuFNFnxsE3kTeP7krf-xHuSGkFw@mail.gmail.com>
Subject: Re: [PATCH V2] gpio: brcmstb: support gpio-line-names property
To: Doug Berger <opendmb@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_083242_573841_7B46E2A1 
X-CRM114-Status: GOOD (  16.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Gregory Fong <gregory.0xf0@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 9, 2020 at 8:02 PM Doug Berger <opendmb@gmail.com> wrote:

> The default handling of the gpio-line-names property by the
> gpiolib-of implementation does not work with the multiple
> gpiochip banks per device structure used by the gpio-brcmstb
> driver.
>
> This commit adds driver level support for the device tree
> property so that GPIO lines can be assigned friendly names.
>


> Signed-off-by: Doug Berger <opendmb@gmail.com>
> +static void brcmstb_gpio_set_names(struct device *dev,
> +                                  struct brcmstb_gpio_bank *bank)
> +{
> +       struct device_node *np = dev->of_node;
> +       const char **names;
> +       int nstrings, base;

I don't understand why that thing is named "base".

> +       unsigned int i;
> +
> +       base = bank->id * MAX_GPIO_PER_BANK;

That would be ngpios or something.

But you alread have what you need in bank->gc.ngpio, right?

So why calculate it?

> +       nstrings = of_property_count_strings(np, "gpio-line-names");
> +       if (nstrings <= base)
> +               /* Line names not present */
> +               return;
> +
> +       names = devm_kcalloc(dev, MAX_GPIO_PER_BANK, sizeof(*names),
> +                            GFP_KERNEL);
> +       if (!names)
> +               return;
> +
> +       /*
> +        * Make sure to not index beyond the end of the number of descriptors
> +        * of the GPIO device.
> +        */
> +       for (i = 0; i < bank->width; i++) {
> +               const char *name;
> +               int ret;
> +
> +               ret = of_property_read_string_index(np, "gpio-line-names",
> +                                                   base + i, &name);
> +               if (ret) {
> +                       if (ret != -ENODATA)
> +                               dev_err(dev, "unable to name line %d: %d\n",
> +                                       base + i, ret);
> +                       break;
> +               }
> +               if (*name)
> +                       names[i] = name;
> +       }
> +
> +       bank->gc.names = names;
> +}

Why can't you just make the function
devprop_gpiochip_set_names() public, (line in <linux/gpio/driver.h>)
and convert your np to a fwnode and call that &bank->gc ?

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
