Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E3C79E96
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 04:22:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ayjbIBjM9XZhD15toD0ogzRL5XRjRrODhYM70TVx7xs=; b=uQ1SObGDjxEgk6
	X7Xg3MjaH05s//Maj5zQYk3DSyUOqzQoyaNChxLFqohVmYpYpb6i//Gvz9etTn8+9VTC4KckfDHHb
	YH0nDwOI8NLlDjc2mgDRRJtSjHTtzK+BvDrG0gU30rGSHqAA79yT1cCDY3Z/zbpO0sy1ukrvAQa4Y
	xWvNk3V7bPRloSalDctsEVWvL4+8EgX6/TkYvMkoT/hh/qdfX9sp+9MpaeUTZH2oQ4mcAJpEY/30o
	9+TkiNnXYx2/NWigdW9wPKm69hOsrb5iyH25mco1FbWEPw5Xw1TPOQo9WHaijfbYYqus+Bi3HcqkQ
	OsIbiOAU3RQ/kY83Hk2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsHmH-0000d2-1g; Tue, 30 Jul 2019 02:22:13 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsHm5-0000ci-Ub
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 02:22:03 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 30 Jul 2019 11:21:54 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id 31EDE180B6E;
 Tue, 30 Jul 2019 11:21:55 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Tue, 30 Jul 2019 11:21:55 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 00E801A04E1;
 Tue, 30 Jul 2019 11:21:55 +0900 (JST)
Received: from [127.0.0.1] (unknown [10.213.132.48])
 by yuzu.css.socionext.com (Postfix) with ESMTP id D373B120C1E;
 Tue, 30 Jul 2019 11:21:54 +0900 (JST)
Date: Tue, 30 Jul 2019 11:21:54 +0900
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH 1/5] pinctrl: uniphier: Separate modem group from UART
 ctsrts group
In-Reply-To: <CAK7LNARTjBH=bWz3AjTrw2ySVziAH-f4uaYcu51E-ZXk-5zskQ@mail.gmail.com>
References: <1562668156-12927-2-git-send-email-hayashi.kunihiko@socionext.com>
 <CAK7LNARTjBH=bWz3AjTrw2ySVziAH-f4uaYcu51E-ZXk-5zskQ@mail.gmail.com>
Message-Id: <20190730112153.F396.4A936039@socionext.com>
MIME-Version: 1.0
X-Mailer: Becky! ver. 2.70 [ja]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_192202_105522_CC14D21D 
X-CRM114-Status: GOOD (  20.06  )
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

On Mon, 29 Jul 2019 22:45:01 +0900 <yamada.masahiro@socionext.com> wrote:

> On Tue, Jul 9, 2019 at 7:29 PM Kunihiko Hayashi
> <hayashi.kunihiko@socionext.com> wrote:
> >
> > It depends on the board implementation whether to have each pins of
> > CTS/RTS, and others for modem. So it is necessary to divide current
> > uart_ctsrts group into uart_ctsrts and uart_modem groups.
> >
> > Since the number of implemented pins for modem differs depending
> > on SoC, each uart_modem group also has a different number of pins.
> >
> > Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> > ---
> 
> > diff --git a/drivers/pinctrl/uniphier/pinctrl-uniphier-ld6b.c b/drivers/pinctrl/uniphier/pinctrl-uniphier-ld6b.c
> > index 414ff3a..d1ed5b7 100644
> > --- a/drivers/pinctrl/uniphier/pinctrl-uniphier-ld6b.c
> > +++ b/drivers/pinctrl/uniphier/pinctrl-uniphier-ld6b.c
> > @@ -780,8 +780,10 @@ static const unsigned system_bus_cs5_pins[] = {55};
> >  static const int system_bus_cs5_muxvals[] = {6};
> >  static const unsigned uart0_pins[] = {135, 136};
> >  static const int uart0_muxvals[] = {3, 3};
> > -static const unsigned uart0_ctsrts_pins[] = {137, 138, 139, 140, 141, 124};
> > -static const int uart0_ctsrts_muxvals[] = {3, 3, 3, 3, 3, 3};
> > +static const unsigned uart0_ctsrts_pins[] = {137, 139};
> > +static const int uart0_ctsrts_muxvals[] = {3, 3};
> > +static const unsigned uart0_modem_pins[] = {138, 140, 141, 124};
> 
> Please sort this array
> while you are here.

Thank you for pointing out.
I'll sort it in v2.

> 
> Otherwise, looks good to me.
> 
> 
> 
> 
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
