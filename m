Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17FB279E9A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 04:23:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0GhwccLNWh7NqmMRwaFPJ9DxfhckYmJWZ43rrQp/mDw=; b=Cir9hWQ7vQsb2U
	OYaNIocuzcOkkAILhF7QvYM+HrlB4nWoZv1mOz3Mxrhqnh9iyOAFgTVnkqeZzlQRjA1SQ++VJdu28
	JXeReoaLchJZOtRD363VTuPAuLYXSs1auDXElENlE3QIBX28mLSYddl1ZbVQE0kOMKsqkAgNdxNT1
	GBINCinsv0DfO4ojAZd2g1O1kOJ6YJpBhbc/oI+rl12TRXKP5BZP28QJ+FK7Ky3VSnE2JVlzJZD+u
	7x42kJr3MtWHr4MNY9usiWSE9Cpxoj9VZ8fAazcUv6BcrMaI4YfHjuefgO68FlGSVl3geJ/uY0AaL
	fJkDo5GDmFTkztsYeuhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsHnA-00013H-QS; Tue, 30 Jul 2019 02:23:08 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsHmF-0000jI-Ce
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 02:22:13 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 30 Jul 2019 11:22:10 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id AB03B180B6E;
 Tue, 30 Jul 2019 11:22:10 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Tue, 30 Jul 2019 11:22:10 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 5B0BA1A04E1;
 Tue, 30 Jul 2019 11:22:10 +0900 (JST)
Received: from [127.0.0.1] (unknown [10.213.132.48])
 by yuzu.css.socionext.com (Postfix) with ESMTP id 37DE9120C1E;
 Tue, 30 Jul 2019 11:22:10 +0900 (JST)
Date: Tue, 30 Jul 2019 11:22:10 +0900
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH 4/5] pinctrl: uniphier: Add Pro5 PCIe pin-mux settings
In-Reply-To: <CAK7LNAT7irhQWdMkKsY9E8Qwgvwqobs8GF1Mvmoe9wfTqVE4nA@mail.gmail.com>
References: <1562668156-12927-5-git-send-email-hayashi.kunihiko@socionext.com>
 <CAK7LNAT7irhQWdMkKsY9E8Qwgvwqobs8GF1Mvmoe9wfTqVE4nA@mail.gmail.com>
Message-Id: <20190730112209.F398.4A936039@socionext.com>
MIME-Version: 1.0
X-Mailer: Becky! ver. 2.70 [ja]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_192211_775808_35E72681 
X-CRM114-Status: GOOD (  20.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Hello,

On Mon, 29 Jul 2019 22:46:02 +0900 <yamada.masahiro@socionext.com> wrote:

> On Tue, Jul 9, 2019 at 7:29 PM Kunihiko Hayashi
> <hayashi.kunihiko@socionext.com> wrote:
> >
> > Pro5 PCIe interface uses the following pins:
> >     XPERST, XPEWAKE, XPECLKRQ
> >
> > Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> > ---
> >  drivers/pinctrl/uniphier/pinctrl-uniphier-pro5.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/drivers/pinctrl/uniphier/pinctrl-uniphier-pro5.c b/drivers/pinctrl/uniphier/pinctrl-uniphier-pro5.c
> > index 1d418e3..577f12e 100644
> > --- a/drivers/pinctrl/uniphier/pinctrl-uniphier-pro5.c
> > +++ b/drivers/pinctrl/uniphier/pinctrl-uniphier-pro5.c
> > @@ -855,6 +855,8 @@ static const unsigned usb1_pins[] = {126, 127};
> >  static const int usb1_muxvals[] = {0, 0};
> >  static const unsigned usb2_pins[] = {128, 129};
> >  static const int usb2_muxvals[] = {0, 0};
> > +static const unsigned pcie_pins[] = {109, 110, 111};
> > +static const int pcie_muxvals[] = {0, 0, 0};
> 
> Please keep the alphabetical sorting.

I made mistake in adding it.
Okay, I'll sort it including below in v2.

> >  static const unsigned int gpio_range_pins[] = {
> >         89, 90, 91, 92, 93, 94, 95, 96,         /* PORT0x */
> >         97, 98, 99, 100, 101, 102, 103, 104,    /* PORT1x */
> > @@ -925,6 +927,7 @@ static const struct uniphier_pinctrl_group uniphier_pro5_groups[] = {
> >         UNIPHIER_PINCTRL_GROUP(usb0),
> >         UNIPHIER_PINCTRL_GROUP(usb1),
> >         UNIPHIER_PINCTRL_GROUP(usb2),
> > +       UNIPHIER_PINCTRL_GROUP(pcie),
> 
> Ditto.
> 
> >         UNIPHIER_PINCTRL_GROUP_GPIO(gpio_range),
> >  };
> >
> > @@ -957,6 +960,7 @@ static const char * const uart3_groups[] = {"uart3"};
> >  static const char * const usb0_groups[] = {"usb0"};
> >  static const char * const usb1_groups[] = {"usb1"};
> >  static const char * const usb2_groups[] = {"usb2"};
> > +static const char * const pcie_groups[] = {"pcie"};
> >
> >  static const struct uniphier_pinmux_function uniphier_pro5_functions[] = {
> >         UNIPHIER_PINMUX_FUNCTION(emmc),
> > @@ -979,6 +983,7 @@ static const struct uniphier_pinmux_function uniphier_pro5_functions[] = {
> >         UNIPHIER_PINMUX_FUNCTION(usb0),
> >         UNIPHIER_PINMUX_FUNCTION(usb1),
> >         UNIPHIER_PINMUX_FUNCTION(usb2),
> > +       UNIPHIER_PINMUX_FUNCTION(pcie),
> 
> Ditto.
> 
> 
> 
> >  };
> >
> >  static int uniphier_pro5_get_gpio_muxval(unsigned int pin,
> > --
> > 2.7.4
> >
> 
> 
> --
> Best Regards
> Masahiro Yamada

---
Best Regards,
Kunihiko Hayashi



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
