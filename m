Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D9A1E5EFA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 13:58:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OJOKrlkqtjws43NpIL0IofzbFB3TAjvA5eJj8OKrILY=; b=FO56ECvahMyPRS
	Vr+svrKxzkS74cX+165Y2BONGUyIFyjgPHjKw9JKcMW7DbdNfscQaOHNRxGEsEj0I3u9F9F9jn9n8
	nV8MzPJbUKYDfoMmXGwJprAYg3R2vPvShSxZ2iXaAlLDzpyhVurzV0+9NHe3EeD89Kxo1RISeLPQn
	SPU49LCUokONUtktig60vwetXCfXYfqAE7dZdBpSV3g7JHELLkVHfccgSsxJPlKOXqsXFYytKmUCM
	0tnSlTRx3AFaNQZp0gBjOFFhH+ccIPX/wyEInClrJCgbwC66C78en0eyIFDYF3YmLU1mbEG9UuzDk
	zuXE8MeMzILe5NsS8ybw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeHAl-0003nH-Of; Thu, 28 May 2020 11:58:07 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeHAX-0003mY-Jk
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 11:57:55 +0000
Received: from mail-qk1-f182.google.com ([209.85.222.182]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1Mg6i8-1j5Vhr48ly-00hdYD for <linux-arm-kernel@lists.infradead.org>; Thu,
 28 May 2020 13:57:50 +0200
Received: by mail-qk1-f182.google.com with SMTP id b27so2758938qka.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 04:57:49 -0700 (PDT)
X-Gm-Message-State: AOAM533i8oTALzsE3WnD9D8QFWDGGBPJnajOeqkAVtMnrrz82O0nDoo2
 T3h+Cd5imPO4mFXCH9TlD4bLGr/X/c1wX26HM4Y=
X-Google-Smtp-Source: ABdhPJz02BIHcejgMZy60Qf70ZgFyMNKd+rhOvbUF4qbhRCLsGQ7Yvaxbck9sSYKzX9BuNp74DvRvQw4vU3WenCxBwM=
X-Received: by 2002:ae9:de85:: with SMTP id s127mr1139395qkf.352.1590667068879; 
 Thu, 28 May 2020 04:57:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200527181307.2482167-1-robh@kernel.org>
In-Reply-To: <20200527181307.2482167-1-robh@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 28 May 2020 13:57:32 +0200
X-Gmail-Original-Message-ID: <CAK8P3a27RkBkt5mnBeVJ-67MnJi29Dc+jYL2Q8JskaZ1W_XrKg@mail.gmail.com>
Message-ID: <CAK8P3a27RkBkt5mnBeVJ-67MnJi29Dc+jYL2Q8JskaZ1W_XrKg@mail.gmail.com>
Subject: Re: [PATCH] clk: versatile: Fix kconfig dependency on
 COMMON_CLK_VERSATILE
To: Rob Herring <robh@kernel.org>
X-Provags-ID: V03:K1:hJnerRtqON9veurAPQWGqWQow1VTISuY3wIAROkucepzofjjtFD
 RiuCO6fTzVep9CwAdzM/BBgdQz8hjiXOft/CrVH4+11d+5uxzXchmnrWO91uj7rbJzfai7J
 G3CePI1umyAYeYHpqgZPSiAGdJMUzWTihLzSbesl/ZTcl2ZAQD6obCLeIuNmxeMbd0MVnlg
 TOAFmivof7XWDvT248P+Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:GYYMbPpZFwo=:8Rl1dQ/ioFuyDWcsTjCH93
 KIwgkLNrV5v/gn/oR8OgrUpyy4Wmh6E7FecPXvy2XGxjjmvP1RT110i47wvfKVApJVzbmOvhT
 jLTXeQIXTkxvty1mTdVa+mO/R0W0DCalWY+qTIE8/tTcSvJTS6i+zntZPbOhncuwPpklNwLyY
 ZO7RFMJlEJgvB5iTi3V5I7gLxNTGs8zPsD6TOPSaCDaniYKX9DU9dGqwzLimT6OmTCF65fIAT
 fvgIxnHxdQB75GSz5NXofYA/fVyt/Shn9jP71NdcGOqr85WRMaJ+KaK06dG0HVgkWwJNh7Tdk
 9RGyBxi8DwAJRjM1YXGqwAfRjKlZ8iQzcGmwOMNJoWcUCDrTVa5KjlcfwBCB56fJztp15LaZC
 uFHj7ySXwspGT22tMYU5PIObd7/TgaUrYYZd0UY98kXgwEPLjlQsAG1v7ExPbbDtecklgsYDO
 nUHB81cIvxKNILq/hgsG9JOTyXjNN1Ilg2pnay57lEvb+ScaOfMr+XITwwHhfrVtGnowdffUF
 BuuXLaJwSCVZvOYx2QxlFqqp3lbuEzXUXS9ggqSsN/fn2l4hs41S04Q4mJ16GnFGPn7C3jv4s
 3D1RoZo+3NDSWhhEPOy2QauSTuTMnFKy892uz5sH2KwnWdzESN0GiTx1R2dzB7XCzwtsV32vT
 iCBTiZZ1Waoee6LqaMkx8TjjI+Cxhj2UYoIVaLYy+Mu39ErPnCIGnr0VMBxTiR19JGUgzy723
 d1R8wFKuf0V9yqRa64JllGaHLqLu96pkitnUbBxy/8Q8WStihOTwSrLRCBHG55PftDA3rSATG
 BlWD0UAZ71LE0u+ZANR26+H7na8eBcNGq5TCjaJdtd7G6uMxOI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_045753_934794_5919F2BC 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
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
 linux-clk <linux-clk@vger.kernel.org>, SoC Team <soc@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 8:13 PM Rob Herring <robh@kernel.org> wrote:
> diff --git a/drivers/clk/versatile/Kconfig b/drivers/clk/versatile/Kconfig
> index a0ed412e8396..8c1b0e8e8d32 100644
> --- a/drivers/clk/versatile/Kconfig
> +++ b/drivers/clk/versatile/Kconfig
> @@ -1,11 +1,8 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>
> -menuconfig COMMON_CLK_VERSATILE
> -       bool "Clock driver for ARM Reference designs" if COMPILE_TEST
> -       default y if ARCH_INTEGRATOR || ARCH_REALVIEW || \
> -               ARCH_VERSATILE || ARCH_VEXPRESS
> -
> -if COMMON_CLK_VERSATILE
> +menu "Clock driver for ARM Reference designs"
> +       depends on ARCH_INTEGRATOR || ARCH_REALVIEW || \
> +               ARCH_VERSATILE || ARCH_VEXPRESS || COMPILE_TEST
>

I've applied this version now but added ARCH_ZYNQ as an additional
dependency to work around one of the warnings we got earlier.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
