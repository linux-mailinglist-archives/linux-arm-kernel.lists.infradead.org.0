Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B29078D27
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 15:47:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BBeCB2skTb+QE9UZxX/DvQWYBGlJepo1HsmCYeStnFc=; b=oWeYYtxRN17BCY
	foaOhZvUS305F6ZSFUBCzasb+0JduIcB056X5tOuGcEVn3vgvCPPwkZRq+FeUjubb1/Ia+oduRx6Q
	FkYIQ/4O3/ZXIImJJ2M6xqTTEq1+k3O5I/nhrZ13sAO25/U3VvuTpCmOh6fe5Hqh7LgDAg3BsKR2B
	QAROnmXZPXTV/72S9BFN8EPf73fN/1G41ZSUmojZBkNOU5lqIjdZhaJ3FYrDA30UVRZyT9hv8EzvD
	VPvlEvhdZXOdLGFsUyLmpN5kBZWcVviSGre12yh/zREoJpLP73uNmTT5jEfGCWNTB3Fx03llI8mtS
	w3F8EPNbZX9AW1P+m5Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs5zW-0006nE-Jr; Mon, 29 Jul 2019 13:47:06 +0000
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs5zL-0006m7-1y
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 13:46:56 +0000
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com
 [209.85.221.182]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id x6TDkdI1004064
 for <linux-arm-kernel@lists.infradead.org>; Mon, 29 Jul 2019 22:46:39 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com x6TDkdI1004064
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1564407999;
 bh=cWonGbORACMO992JEG6wXpUqVMiORjcWPcSpyfVWOk0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=YiaN9TvKEiAy5f9FiC7CIBYwMpyY2i4mh9BVD3eZYHuWmzxzbeMeNYnqzqzr2jSgx
 kB1YPbCyWnRwwSpeQNg2EkndNVjq0ItYxyJY4pb0mAVx+3LcB+Da4F5QLyb0hgJ5//
 c9iFonMEFGqEPNojbYIuZjXdjT17oK3un8zV8v/r+9Z/SKHwr49xKSET/QwxpFwfO3
 M1aNvrc3fV+QGQRCx/ljkmpU3S90hU0z/502lt88/HVZY/JhzKKL8jzukKbE3TxlBC
 CA5sCqpmDTAAuYwQ+/zdmZdEwOMWE36BCmCAHrexFtRH2Q4FQZDxyq7JElB175GCRN
 5oCKD/G5U2YMw==
X-Nifty-SrcIP: [209.85.221.182]
Received: by mail-vk1-f182.google.com with SMTP id e83so11948205vke.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 06:46:39 -0700 (PDT)
X-Gm-Message-State: APjAAAX8uJu1du/W4UkRSukx2CAiUFQnnO8d//TLlatmSqhKDDGGzRqm
 /xZmhpUZI8V49pmm/Ql7uRuqtJBdF8wE50C80XQ=
X-Google-Smtp-Source: APXvYqwBJsXVFguSWM2zN6i1W5HEZ0K0TTlacTQ34Up1dQRt6B588UuGnxnYplz478eRNNtsGmGRMZj0/96+C/dgC7c=
X-Received: by 2002:a1f:a34c:: with SMTP id m73mr27781226vke.74.1564407998326; 
 Mon, 29 Jul 2019 06:46:38 -0700 (PDT)
MIME-Version: 1.0
References: <1562668156-12927-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1562668156-12927-5-git-send-email-hayashi.kunihiko@socionext.com>
In-Reply-To: <1562668156-12927-5-git-send-email-hayashi.kunihiko@socionext.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Mon, 29 Jul 2019 22:46:02 +0900
X-Gmail-Original-Message-ID: <CAK7LNAT7irhQWdMkKsY9E8Qwgvwqobs8GF1Mvmoe9wfTqVE4nA@mail.gmail.com>
Message-ID: <CAK7LNAT7irhQWdMkKsY9E8Qwgvwqobs8GF1Mvmoe9wfTqVE4nA@mail.gmail.com>
Subject: Re: [PATCH 4/5] pinctrl: uniphier: Add Pro5 PCIe pin-mux settings
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_064655_316139_595F47D1 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.82 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 9, 2019 at 7:29 PM Kunihiko Hayashi
<hayashi.kunihiko@socionext.com> wrote:
>
> Pro5 PCIe interface uses the following pins:
>     XPERST, XPEWAKE, XPECLKRQ
>
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  drivers/pinctrl/uniphier/pinctrl-uniphier-pro5.c | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/drivers/pinctrl/uniphier/pinctrl-uniphier-pro5.c b/drivers/pinctrl/uniphier/pinctrl-uniphier-pro5.c
> index 1d418e3..577f12e 100644
> --- a/drivers/pinctrl/uniphier/pinctrl-uniphier-pro5.c
> +++ b/drivers/pinctrl/uniphier/pinctrl-uniphier-pro5.c
> @@ -855,6 +855,8 @@ static const unsigned usb1_pins[] = {126, 127};
>  static const int usb1_muxvals[] = {0, 0};
>  static const unsigned usb2_pins[] = {128, 129};
>  static const int usb2_muxvals[] = {0, 0};
> +static const unsigned pcie_pins[] = {109, 110, 111};
> +static const int pcie_muxvals[] = {0, 0, 0};

Please keep the alphabetical sorting.


>  static const unsigned int gpio_range_pins[] = {
>         89, 90, 91, 92, 93, 94, 95, 96,         /* PORT0x */
>         97, 98, 99, 100, 101, 102, 103, 104,    /* PORT1x */
> @@ -925,6 +927,7 @@ static const struct uniphier_pinctrl_group uniphier_pro5_groups[] = {
>         UNIPHIER_PINCTRL_GROUP(usb0),
>         UNIPHIER_PINCTRL_GROUP(usb1),
>         UNIPHIER_PINCTRL_GROUP(usb2),
> +       UNIPHIER_PINCTRL_GROUP(pcie),

Ditto.

>         UNIPHIER_PINCTRL_GROUP_GPIO(gpio_range),
>  };
>
> @@ -957,6 +960,7 @@ static const char * const uart3_groups[] = {"uart3"};
>  static const char * const usb0_groups[] = {"usb0"};
>  static const char * const usb1_groups[] = {"usb1"};
>  static const char * const usb2_groups[] = {"usb2"};
> +static const char * const pcie_groups[] = {"pcie"};
>
>  static const struct uniphier_pinmux_function uniphier_pro5_functions[] = {
>         UNIPHIER_PINMUX_FUNCTION(emmc),
> @@ -979,6 +983,7 @@ static const struct uniphier_pinmux_function uniphier_pro5_functions[] = {
>         UNIPHIER_PINMUX_FUNCTION(usb0),
>         UNIPHIER_PINMUX_FUNCTION(usb1),
>         UNIPHIER_PINMUX_FUNCTION(usb2),
> +       UNIPHIER_PINMUX_FUNCTION(pcie),

Ditto.



>  };
>
>  static int uniphier_pro5_get_gpio_muxval(unsigned int pin,
> --
> 2.7.4
>


--
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
