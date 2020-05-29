Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B87E51E7709
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 09:39:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7PVdzURGL5iX56AdWBK955cFW4ZhCxeea89iQsLvYYY=; b=h8LOp3YNXbu11o
	ON+zf3mpbZWquQjrIOSMobvZkraKfjXH4wK/DY4JUrQUd8qmB3liZfkxL4rzUFACjvadATcmiNJzD
	pN/llraokVLcoAehaQ/005gdImHPLz8FRuNrE236ym8lW9Xgjvre0rdsopANufMJP9IlWP3ESuOYF
	atd/DTD56PDnsky5YJfbvQ70Ka6OfSltCkdcubAjn/Nr0dQmum+KDDu/KGtL6797t+iwMCpv5rjxx
	U+R5WsKfS9tyEUHdeb4PGpFJaeVJPDjKqsXzuabgH30z0P6fPrGZ2G814gdXFNTB6CYhlKSJf8mfw
	q5yDDTyeHr0mgTDQQH/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeZc3-0003RT-IH; Fri, 29 May 2020 07:39:31 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeZbn-0003Nm-5x
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 07:39:17 +0000
Received: from mail-qk1-f176.google.com ([209.85.222.176]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MTRdK-1jZ5yO1gia-00To8t for <linux-arm-kernel@lists.infradead.org>; Fri,
 29 May 2020 09:39:12 +0200
Received: by mail-qk1-f176.google.com with SMTP id c12so1339109qkk.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 00:39:12 -0700 (PDT)
X-Gm-Message-State: AOAM531SishYNnFf8n+6GMffQgu1YIuABQS5zhANOn9f+gexZ22CFPJ5
 OwTxyVPsv7HYyF6wggdNHRHPqT1tHHwqJqrNjq0=
X-Google-Smtp-Source: ABdhPJxQKYd4FlNgNoz2isNi0ebCTB3nvWDUEuOZMHLr8f8WtGdScxnBe7hCE28C3sqQ+FdC/w/xyW9EOP1Ihhx9Ghk=
X-Received: by 2002:a37:554:: with SMTP id 81mr6509274qkf.394.1590737951276;
 Fri, 29 May 2020 00:39:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200527181307.2482167-1-robh@kernel.org>
 <CAK8P3a27RkBkt5mnBeVJ-67MnJi29Dc+jYL2Q8JskaZ1W_XrKg@mail.gmail.com>
 <CAL_JsqJ83UJ0Roy_NJBLXuvhPG2zBDod8ZgSGrEtpKSnYPtowQ@mail.gmail.com>
In-Reply-To: <CAL_JsqJ83UJ0Roy_NJBLXuvhPG2zBDod8ZgSGrEtpKSnYPtowQ@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 29 May 2020 09:38:54 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2S-8fvyiKTk+o876r1XMV6C=HipiRutSWSe0P2rdL4Xg@mail.gmail.com>
Message-ID: <CAK8P3a2S-8fvyiKTk+o876r1XMV6C=HipiRutSWSe0P2rdL4Xg@mail.gmail.com>
Subject: Re: [PATCH] clk: versatile: Fix kconfig dependency on
 COMMON_CLK_VERSATILE
To: Rob Herring <robh@kernel.org>
X-Provags-ID: V03:K1:tUqEEAndHEkWtijaFlYyLqzsyjIIZ9HQu0nhK0zHNvz9M7veo3Z
 1VQ+r4ntl49VstDoZYZJyZTbjVciMJEqwFsh6KCgQ1qOMNkv752uOxw3zw/JjdASpAskz+B
 aekl4XFtpp+Pi7jyoGBOmCOCDub3uiDkkgH+rWsT+jlCqeVFrVJ5HiaIQM8sD0Zx87zkPBT
 MwIj5+XUiyYn4yKTu9Ghw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:/Viq+iY9rd0=:cvTdR6P+KDJqxmWcxvY0Bt
 c7Du2HebT7L5262Upl6nhO9VB+9TQIcP1Zlg6XCo60oJ517rn+Tv2iDgX1yml+iNRmFwiNxMi
 UpX0/+XKD5BqKy3/1gIoW2Qeo4aCYb1CCcSnhsKcSNAvvC1de6qdyhCxqPTrfIk1D4zsEWZOU
 Yq23GgN9hbn6ZE/xbtFXxwFaGP+MfOyVAb5cL1fbwnhSqz0AxpdkhvIo74vlBi2M3yLzwIs1m
 7z4TwJFJzrHoOSNb/Ot2qJGncIqKr4Jg926R5QIkfJD2Ewyqi/eAP+uqy09wAc/r16FogdL78
 N7TwCRczZuVQzbg6yFUP/YsYn4IaO90uqOWrUC8CWrY493YfPc2bE5qwkU1XvL2NKswX6C18g
 cu87YcEbOJgxDYcGvfoIURCnejKD35da/nv+i+WDv74UOTe6fejkh+WBiowSZja97XfWzkCNG
 xH5Y7AIz9zLNdsvXEmf1dvXphtxT8j+gynP5RTQ7F1pQM4Wa/F38on3r1rZd1oRj5hsfU0Sje
 T0JQz9dsmiXs5NKkLmOmH0wEXHBI3ZegdSbgGDQS+3ZociQm34MQ1hORqYGL/VFtvGFEg7+mf
 n3wWmCpQC6G8/Z4brpEXetoD9bUU5CWP70+YuaMbYNmJulMW8hdecs9sGB9vHNkQzk0rX4fsj
 9bORIlb/A2dy891ne+RfoN/8znOvGpa2RluNAM1ln9vO2+zFwZwdTEIpH4jG4Bl9eGOjwnenM
 6nGrNqVkeiKK635lFqEhUQR4SpoihM19m6/KBn0DC5aHN1chdXWcUujxlhSgW83SHuNDtcqA5
 LfCc597SKdRbnmRtHckZUsIKfR/dFBIQ7KeiZSqo0sanc8AtSw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_003915_529115_003EFF99 
X-CRM114-Status: GOOD (  15.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Anders Roxell <anders.roxell@linaro.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-clk <linux-clk@vger.kernel.org>,
 SoC Team <soc@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 11:29 PM Rob Herring <robh@kernel.org> wrote:
> On Thu, May 28, 2020 at 5:57 AM Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > On Wed, May 27, 2020 at 8:13 PM Rob Herring <robh@kernel.org> wrote:
> > > diff --git a/drivers/clk/versatile/Kconfig b/drivers/clk/versatile/Kconfig
> > > index a0ed412e8396..8c1b0e8e8d32 100644
> > > --- a/drivers/clk/versatile/Kconfig
> > > +++ b/drivers/clk/versatile/Kconfig
> > > @@ -1,11 +1,8 @@
> > >  # SPDX-License-Identifier: GPL-2.0-only
> > >
> > > -menuconfig COMMON_CLK_VERSATILE
> > > -       bool "Clock driver for ARM Reference designs" if COMPILE_TEST
> > > -       default y if ARCH_INTEGRATOR || ARCH_REALVIEW || \
> > > -               ARCH_VERSATILE || ARCH_VEXPRESS
> > > -
> > > -if COMMON_CLK_VERSATILE
> > > +menu "Clock driver for ARM Reference designs"
> > > +       depends on ARCH_INTEGRATOR || ARCH_REALVIEW || \
> > > +               ARCH_VERSATILE || ARCH_VEXPRESS || COMPILE_TEST
> > >
> >
> > I've applied this version now but added ARCH_ZYNQ as an additional
> > dependency to work around one of the warnings we got earlier.
>
> That's just spreading a copy-n-paste error. Why don't you apply the
> Zynq patch I referenced if Michal never did?

Sorry I completely missed the reference from your previous email.
I've applied that patch on top now, reverting the change I did in the
process.

I had noticed that the Zynq Kconfig seemed rather odd, by my interpretation
was that it had been added intentionally in order to use an existing clk
controller driver for configurable logic on Zynq that was not part of the
main DT file. As Michal already confirmed that it was just a mistake, I
agree it should be removed.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
