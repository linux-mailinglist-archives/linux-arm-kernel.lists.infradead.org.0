Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF3A78D1B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 15:45:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZpietUA1bqy14K2qDkCKpYVFUn7XKfbO4vNb8Cnpbbo=; b=fDlcK6VtI1XdxY
	ADbL8moM4EzWr0iggYaVdIumeFJDEQH2cRUOL1lOtQHlJLCI9YLAfFSdIlClxnru1jxSmr4j9PE6f
	MJlViHTJp12EC2aN7TbqBQ2Vs8CgFyyoAKvmDj7tDgGrJbbHjDRZkMA7iisKea23yO1XYgmcJHjt+
	IXx2UZb+N4FsHiXFOf28Gkdk/gqRRjQS0gjJSBP4Bn6UREOlBGYdkC0dNP7DzrlQMmSAIkLYaFsQg
	DWH9+0AoVI9UUZANW7IEuErQAqIeHphBNIen0JdhsZj+la+xdL7P9tO5exPWVgxk7MmUzdK6szb+W
	ENYvcYLh0594NDoQ9yxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs5xx-000666-Ji; Mon, 29 Jul 2019 13:45:29 +0000
Received: from conssluserg-06.nifty.com ([210.131.2.91])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs5xp-000657-Qk
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 13:45:23 +0000
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com
 [209.85.217.43]) (authenticated)
 by conssluserg-06.nifty.com with ESMTP id x6TDj34J004342
 for <linux-arm-kernel@lists.infradead.org>; Mon, 29 Jul 2019 22:45:04 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com x6TDj34J004342
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1564407904;
 bh=JLUFjbOKV2nbZtck/lHJfZDzqVkrmAgAJ0NT4kGB4Pk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=yVyEi/3AxhfcCm94gODojYkps7a18E/mRz1RqzaYL2lwY6tezM/OnVmNctijkA5jB
 kwjDCtjziIroxaRYMe0L42yvPv0qYh2ZCPm/8Bo+Fuw/pirXZXD826Su6inoOcIhYu
 xYWfSop15FR3Se4PmQLBxUWJEi7ONHeKYlCTDN+D1YzmyS3V/jcPcmm3PdRXS6U3PV
 WLCS5KhxCipnkcdvwdlGErPpKXbBikjn0OGM7hcAanvrL81/xx9ZvQkLcFLqIKF5AN
 TTyTj3QGSccrdGP5ZQmKXl6gxjLED5ZtmGtEUys4unz3qxuAY/bKAE0eYgQV4FjZsx
 QONa4YUpX1Bow==
X-Nifty-SrcIP: [209.85.217.43]
Received: by mail-vs1-f43.google.com with SMTP id j26so40769068vsn.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 06:45:04 -0700 (PDT)
X-Gm-Message-State: APjAAAULUoqUheK5TuKeCmR8Ni3tVl6BJeh1yY6QkxHZootGM0cxAIgA
 DpFujYpsTycJfi3i/p2Ov+0WxUM6kRamilv+T4A=
X-Google-Smtp-Source: APXvYqyBxvnX/hskxLT1gfGXlo1tF2MDV/GDj4ZZRsWqRaqUXU+AAdJ/4SGLb5lBhBeifox3fimyZoOFR3ipsGfkDiM=
X-Received: by 2002:a67:fc45:: with SMTP id p5mr6080037vsq.179.1564407902846; 
 Mon, 29 Jul 2019 06:45:02 -0700 (PDT)
MIME-Version: 1.0
References: <1562668156-12927-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1562668156-12927-3-git-send-email-hayashi.kunihiko@socionext.com>
In-Reply-To: <1562668156-12927-3-git-send-email-hayashi.kunihiko@socionext.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Mon, 29 Jul 2019 22:44:27 +0900
X-Gmail-Original-Message-ID: <CAK7LNASuNMij8Fttup6T6hd=vyKSEu=B7HCPMAezWK6T2b0Gfg@mail.gmail.com>
Message-ID: <CAK7LNASuNMij8Fttup6T6hd=vyKSEu=B7HCPMAezWK6T2b0Gfg@mail.gmail.com>
Subject: Re: [PATCH 2/5] pinctrl: uniphier: Add another audio I/O pin-mux
 settings for LD20
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_064522_196625_763272B9 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.91 listed in list.dnswl.org]
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
> This adds support for pinmux settings of aout1b groups. This group includes
> aout1 signals derived from xirq pins.
>
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  drivers/pinctrl/uniphier/pinctrl-uniphier-ld20.c | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/drivers/pinctrl/uniphier/pinctrl-uniphier-ld20.c b/drivers/pinctrl/uniphier/pinctrl-uniphier-ld20.c
> index 28e54b3..2c66e70 100644
> --- a/drivers/pinctrl/uniphier/pinctrl-uniphier-ld20.c
> +++ b/drivers/pinctrl/uniphier/pinctrl-uniphier-ld20.c
> @@ -544,6 +544,8 @@ static const struct pinctrl_pin_desc uniphier_ld20_pins[] = {
>
>  static const unsigned aout1_pins[] = {137, 138, 139, 140, 141, 142};
>  static const int aout1_muxvals[] = {0, 0, 0, 0, 0, 0};
> +static const unsigned aout1b_pins[] = {150, 151, 152, 153, 154, 155, 156};
> +static const int aout1b_muxvals[] = {1, 1, 1, 1, 1, 1, 1};
>  static const unsigned aoutiec1_pins[] = {135, 136};
>  static const int aoutiec1_muxvals[] = {0, 0};
>  static const unsigned int emmc_pins[] = {19, 20, 21, 22, 23, 24, 25};
> @@ -664,6 +666,7 @@ static const unsigned int gpio_range2_pins[] = {
>
>  static const struct uniphier_pinctrl_group uniphier_ld20_groups[] = {
>         UNIPHIER_PINCTRL_GROUP(aout1),
> +       UNIPHIER_PINCTRL_GROUP(aout1b),
>         UNIPHIER_PINCTRL_GROUP(aoutiec1),
>         UNIPHIER_PINCTRL_GROUP(emmc),
>         UNIPHIER_PINCTRL_GROUP(emmc_dat8),
> @@ -708,6 +711,7 @@ static const struct uniphier_pinctrl_group uniphier_ld20_groups[] = {
>  };
>
>  static const char * const aout1_groups[] = {"aout1"};
> +static const char * const aout1b_groups[] = {"aout1b"};

If this has the same functionality as "aout1",
shouldn't it be a part of aout1_groups?




-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
