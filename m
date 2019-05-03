Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B56612DBE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 14:37:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZMH0AbH55Rr4C3G0ZAwnhnUplpkobn9IPyQ9KL9Ehbg=; b=h6YwXaMuBU6Xf1
	TExSuz+JmsZGbETwNSEuo7n9neNF9ql1HNz81ES/cgZegJKT6aT+0c9Arz5FKnzYzIYPV/ARDLbAM
	cr9dUnFJ307ez0tUFHkZJrfomuPxbO+kdfNLPrYAX0ObQKvgyYEtrcuPE8fvlOciSBDbq2Xd6wdKT
	AGbzqrs5z0gv33dSSvBwb34WUeFnEd/s9CzAu/zWJTsg3NYIt0TnHawVfRnsCe4VpQ1OpN0UNgOf0
	PfJpLpj4EwsS3OXC6FXmksMN3WZhvf25DHdI5uy+IqbI1YT2bdZMi24hDyTU592qLHXygSeEZwQgr
	JJprHDE9XEMu3nlcjUzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXRF-0007a6-7I; Fri, 03 May 2019 12:37:17 +0000
Received: from mail-vs1-f65.google.com ([209.85.217.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXR7-0007Zg-Az
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 12:37:11 +0000
Received: by mail-vs1-f65.google.com with SMTP id b74so3456722vsd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 05:37:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jDCEaUKwzXmAEfj30fOgoVtiP8zX20N3JlYslFBSUKs=;
 b=Cy61rXzv8HCjiJWjYlOzjPRXe0KFsnQjIJJGyOioKbssu8LWmvKRC9xQmqn0Xf74uy
 6TfUsHLvIH2hcky0nCuvWbh4OI9QwcJA2/Oj+8PoCZsdtARI8YyNOYDyfqvUPlBrWYpT
 ZJXbZXzx6kKccnwCVSKFsX1f7tTk0yWwQm3FAfdzlp9QBXOlLg2xa30tBoFKUnpez1z8
 QlyMz8QNgyCYeUMljiDh57J1KteAj4SX9mHI6QxwvMVf6awtcKsWlzdYxLuzQI+WWAy8
 BHVtqdEwTv8Mrwn+FaacgTxR1n/1s8Ld25BLvfYbB+/piYEpEtSHX7opkZaqF4bO/yaV
 ZF3A==
X-Gm-Message-State: APjAAAXQJHlzfb5uYhbeg/YblFn1IStfca6tIyGfQRbecKSNUHEDktWl
 fKT5MBdRT6yomBiyNOuh1S2bNR+YWYdVTSvRA64=
X-Google-Smtp-Source: APXvYqxZ8ehBgdn2BB6Bd6C/MNFHr+UaTZDJZf7alyfEwt7exeQ8PhOBcwpgZYVJqiE6wI0Vtja3AjgibQWul/g0lKU=
X-Received: by 2002:a67:ba07:: with SMTP id l7mr5107913vsn.11.1556887027407;
 Fri, 03 May 2019 05:37:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190502140634.4529-1-marek.vasut@gmail.com>
In-Reply-To: <20190502140634.4529-1-marek.vasut@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 3 May 2019 14:36:55 +0200
Message-ID: <CAMuHMdVGAq1XgSohBjc8i4c_o-N-yWGedS_LLS_Apr4Bx10xGQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: r8a779x: Configure PMIC IRQ pinmux
To: Marek Vasut <marek.vasut@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_053709_375701_DC82C15F 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.217.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Simon Horman <horms+renesas@verge.net.au>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek,

On Thu, May 2, 2019 at 4:06 PM <marek.vasut@gmail.com> wrote:
> From: Marek Vasut <marek.vasut+renesas@gmail.com>
>
> The PMIC IRQ line pin multiplexing configuration is missing from the DTs.
> Since the line is configured correctly by default, the system works fine.
> However, add the IRQ line pin multiplexing configuration for completeness.
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@gmail.com>

Thanks for your patch!

> --- a/arch/arm/boot/dts/r8a7790-lager.dts
> +++ b/arch/arm/boot/dts/r8a7790-lager.dts
> @@ -423,6 +423,8 @@
>          */
>         i2cpwr: i2c-13 {
>                 compatible = "i2c-demux-pinctrl";
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&pmic_irq_pins>;
>                 i2c-parent = <&iic3>, <&i2c3>;
>                 i2c-bus-name = "i2c-pwr";
>                 #address-cells = <1>;
> @@ -615,6 +617,11 @@
>                 function = "iic3";
>         };
>
> +       pmic_irq_pins: pmicirq {
> +               groups = "intc_irq2";
> +               function = "intc";
> +       };

Please insert according to alphabetical sort order.
Oh, we don't have the R-Car Gen2 entries sorted yet. Nevermind...

> --- a/arch/arm/boot/dts/r8a7792-blanche.dts
> +++ b/arch/arm/boot/dts/r8a7792-blanche.dts
> @@ -234,6 +234,11 @@
>                 groups = "du1_rgb666", "du1_sync", "du1_disp";
>                 function = "du1";
>         };
> +
> +       pmic_irq_pins: pmicirq {
> +               groups = "intc_irq2";
> +               function = "intc";
> +       };
>  };
>
>  &rwdt {
> @@ -309,6 +314,8 @@
>  };
>
>  &iic3 {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pmic_irq_pins>;

Given Blanche has a single device connected to irq2, I think it makes
sense to move the pinctrl properties to the pmic node below.

With that fixed:
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
