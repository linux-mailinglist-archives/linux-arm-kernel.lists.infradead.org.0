Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C2A78D20
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 15:46:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uh/nCN1UBUeOohhh9Z+H73gfbytS+PucWEH21cQH4co=; b=rUy25YPJNWSxct
	JAFNGVhaY1g4GmwXrabg6+sr/BRUzmmB5XB8XHtJ0GHbv6eBC4h0d2D+qo5+Rshf925kQGo6H+63q
	gjWBKjj6R3nAyuI0KpxF9RrbIQwcPQZoSSUNKLKNUvhxyQJhjo+WOYpdBdl3XBC/EYvum9GmWA/8G
	kc5VJ8lOcAKvequy3pZG+gvXLlDGVoHqu80rIySOJ/G/mVeY1pYFmY9t4+xAfw4G0DicIHxoD4eo+
	CE3mC8+F01U7VYXbCVLBDBW8VhX83iH35D9qbadXBUWSivCAe7tyAZjRHxke3O0tiHpCd/J8xd2Mv
	PuQzZMFx2SojzZi2EePQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs5yk-0006MB-UY; Mon, 29 Jul 2019 13:46:18 +0000
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs5yd-0006Lk-11
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 13:46:12 +0000
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com
 [209.85.217.44]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id x6TDjb71021375
 for <linux-arm-kernel@lists.infradead.org>; Mon, 29 Jul 2019 22:45:38 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com x6TDjb71021375
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1564407938;
 bh=VgyZn3U//MF81+efTBgICKWVreWt1CvUqxcn1hoetTk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=WMpj5QHm204O3U+89kXdV12RJuUmyFrXLLwtFg1BqtzyiWvx6U0DfhxRTMC7UVH8f
 togauNYEunYBm4lYQXOzHAlGN+zdiAuIrtt8SfYcD7Q9Mu+Sa6EbsyuB8ErgxouXm4
 t+w8NlvbXjS0revQmaH4UUFAgwegwfRSIzkZwKfmLRF+pZrLYvAAzmQTDFsZvzatLe
 6/j9aeko2Teh1a48/B8FqeYvCWTsjDT000bqtxa3mIYVm3NP+eo769YO0em3TsijO/
 iBvzVfYw4NZ5TElrX9PNHXIhWSai3D75T0b3iww/qDTiQd9+D0MrcruEpyefllGHkG
 /pyfc0HcvqXIA==
X-Nifty-SrcIP: [209.85.217.44]
Received: by mail-vs1-f44.google.com with SMTP id a186so39157934vsd.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 06:45:38 -0700 (PDT)
X-Gm-Message-State: APjAAAWb9vzu0qTMAF0OCyEfrl0IKT5aF1bZeJ7i7oZJx5kzsgazCn1d
 EYiQMJbuSVHGsLY8hEOxtUC4dsFo3i4F8ZSAMgE=
X-Google-Smtp-Source: APXvYqyWqVnFLVPX2fs2nTxoZNXWls7FMCZA5Ra7eHohioGPq4IsN5YgV/jZAXcrkKhi2YSN4Ac0V99EijZxcoVeB30=
X-Received: by 2002:a67:cd1a:: with SMTP id u26mr67298701vsl.155.1564407937090; 
 Mon, 29 Jul 2019 06:45:37 -0700 (PDT)
MIME-Version: 1.0
References: <1562668156-12927-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1562668156-12927-2-git-send-email-hayashi.kunihiko@socionext.com>
In-Reply-To: <1562668156-12927-2-git-send-email-hayashi.kunihiko@socionext.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Mon, 29 Jul 2019 22:45:01 +0900
X-Gmail-Original-Message-ID: <CAK7LNARTjBH=bWz3AjTrw2ySVziAH-f4uaYcu51E-ZXk-5zskQ@mail.gmail.com>
Message-ID: <CAK7LNARTjBH=bWz3AjTrw2ySVziAH-f4uaYcu51E-ZXk-5zskQ@mail.gmail.com>
Subject: Re: [PATCH 1/5] pinctrl: uniphier: Separate modem group from UART
 ctsrts group
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_064611_292206_163BEAC8 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.81 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.81 listed in wl.mailspike.net]
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
> It depends on the board implementation whether to have each pins of
> CTS/RTS, and others for modem. So it is necessary to divide current
> uart_ctsrts group into uart_ctsrts and uart_modem groups.
>
> Since the number of implemented pins for modem differs depending
> on SoC, each uart_modem group also has a different number of pins.
>
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---

> diff --git a/drivers/pinctrl/uniphier/pinctrl-uniphier-ld6b.c b/drivers/pinctrl/uniphier/pinctrl-uniphier-ld6b.c
> index 414ff3a..d1ed5b7 100644
> --- a/drivers/pinctrl/uniphier/pinctrl-uniphier-ld6b.c
> +++ b/drivers/pinctrl/uniphier/pinctrl-uniphier-ld6b.c
> @@ -780,8 +780,10 @@ static const unsigned system_bus_cs5_pins[] = {55};
>  static const int system_bus_cs5_muxvals[] = {6};
>  static const unsigned uart0_pins[] = {135, 136};
>  static const int uart0_muxvals[] = {3, 3};
> -static const unsigned uart0_ctsrts_pins[] = {137, 138, 139, 140, 141, 124};
> -static const int uart0_ctsrts_muxvals[] = {3, 3, 3, 3, 3, 3};
> +static const unsigned uart0_ctsrts_pins[] = {137, 139};
> +static const int uart0_ctsrts_muxvals[] = {3, 3};
> +static const unsigned uart0_modem_pins[] = {138, 140, 141, 124};

Please sort this array
while you are here.

Otherwise, looks good to me.






--
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
