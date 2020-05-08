Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06DCD1CB426
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 17:56:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ESchtCnUIGJ2MWO8qytFGn3IjvzHSRlOA7ZXMXzlVP0=; b=LvBZBLh6CHQtZm
	yVz6P6uepyemrfJdqrSkn3eqH2Yw9mnDIXnpx/rMOCEW9lA4wfGmsoR7lYgZK59z8b0vMqbM0BNrD
	eq3oTT/vyrjwehE6bOJf9ikCWXMdZ1rjGaD/A9hqh5z1u3WmqNBNkCRbLqE8u1ZZUcX64LZXjIO9q
	Mbhqrq9fapPWsrBeM7Z/pwXiXUvZu0898J3FjOiZCz7n3yOuVaVQXSbBHFWX8GS2zsKkbN7D5bPD8
	ZV8vnf+TMvRXWxOVk5vG8URCDNHZpquwPpkWdogHFXfmGW0IaKsCFY8YCPY++L1DQLVHQ4w6Gji0q
	L9OC6GpTrmi2jGDosKwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX5Mg-0000fP-Te; Fri, 08 May 2020 15:56:42 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX5MZ-0000ef-Na
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 15:56:37 +0000
Received: by mail-oi1-f193.google.com with SMTP id j16so8792190oih.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 May 2020 08:56:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+GKUewSWahMzbTGK4Irc6ZImh8HZvmgtHXE2/q/YsbY=;
 b=p0Tc80O1Cuu6LWWvZQVo3FyaBO8ZI8u6iv5ZayKFuy29LaViX39ANokU0FvabpaQTM
 a6JKPFj4Pso6LfXPnKlhuQpHV86W3JsJpzOYl5pLJrQYmODY/r83V4rPkYrAYRlB2ii4
 +2KdEhCz0YEwn5A7KUZp0pmWVUxSMgtYlrrtPtZWBsaTGUHrl/9/uKpMflssbqHJjQ4I
 isM/AbWsdxlkQdzzNOI/zGH/ZQo3A80vhMUdcnzwYfHqiaZHAZ3w3GOoDaR0WYJ/nlxx
 cIrqDFR6k6DUAsehUHW+smaJtQmkxFLLrGBevTFCFRp/y6wLU5jQpX2ul2bvYlOzRhzw
 vNkg==
X-Gm-Message-State: AGi0Pua7JcP4AK+M3x3WRLbHfRLQeOFoVb9NSWMf+YbDIjBQgexAuaYX
 DSyTyqEV+1MtgnaHH5OOr6B/xLgdyzvo0Uk27EI=
X-Google-Smtp-Source: APiQypKL9fUgGlobVYbD8ZVeb4rJeP/CAXgTk+gBY4MoyW9NLz3SmymX2vn2ZDSavA3bXeL5QEMTJIiKqTMwdSwmAOw=
X-Received: by 2002:aca:d50f:: with SMTP id m15mr10967981oig.54.1588953394204; 
 Fri, 08 May 2020 08:56:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200507080528.547-1-geert+renesas@glider.be>
 <nycvar.YSQ.7.77.849.2005071056450.5637@knanqh.ubzr>
 <CAMuHMdXgpR6HDQs_NS4W2C8NxqJp3g1DjR2VneUF5Rvun-L4jQ@mail.gmail.com>
 <nycvar.YSQ.7.77.849.2005071303480.5637@knanqh.ubzr>
 <CAMuHMdW0=KWk2pC2tRUajvZQsoObBEFz7WoJ+uJbHbX27f7b2g@mail.gmail.com>
 <OSAPR01MB2114FB6F10EC904F19363F9D8AA20@OSAPR01MB2114.jpnprd01.prod.outlook.com>
 <nycvar.YSQ.7.77.849.2005081023180.5637@knanqh.ubzr>
In-Reply-To: <nycvar.YSQ.7.77.849.2005081023180.5637@knanqh.ubzr>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 8 May 2020 17:56:22 +0200
Message-ID: <CAMuHMdX11aLVE8tNNzuawKZqg21mOEnmTv=RkdOPZmMjMzWRMw@mail.gmail.com>
Subject: Re: [PATCH/RFC] ARM: dts: rza2mevb: Upstream Linux requires SDRAM
To: Nicolas Pitre <nico@fluxnic.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_085635_767296_9C6B415F 
X-CRM114-Status: GOOD (  20.18  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Arnd Bergmann <arnd@arndb.de>, Magnus Damm <magnus.damm@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <Chris.Brandt@renesas.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

On Fri, May 8, 2020 at 4:41 PM Nicolas Pitre <nico@fluxnic.net> wrote:
> On Fri, 8 May 2020, Chris Brandt wrote:
> > The big argument was always that "XIP cannot be multi-platform by
> > definition because RAM/ROM always resides at different addresses in different
> > devices". And as you know, the physical address for RAM and ROM have to
> > be hard coded in the kernel binary.
>
> Exact.  So what is the problem?

Ah, you've fallen for the "multi-platform" fallacy! I have no desire to
enable support for multiple platforms in a single kernel that supports
XIP on all platforms.
I merely want it to be possible to build a XIP kernel for one platform.
As ARM v7m systems must be part of the ARCH_MULTI_V7 gang, they cannot
enable the XIP_KERNEL config symbol.

[PATCH] [RFC] arm: Replace "multiple platforms" by "common platform"
http://lore.kernel.org/r/20180621155906.12821-1-geert+renesas@glider.be

> > At an ELC a while back, I talked to Arnd and his suggestion was to put
> > the base addresses for RAM and ROM at a fixed location in the kernel
> > binary. Then for each SoC, you manually modify those values in the each
> > binary to match your board. This means there is 'technically' a single build
> > that will support all boards.

Interesting. I didn't know that suggestion.
Sounds doable (but see below).

> The very reason for using XIP in the first place is to maximize resource
> savings on constrained platforms. Any notion of a multi-platform kernel
> is completely contrary to this goal. This is even more true for no-MMU
> platforms where you can't abstract physical address differences behind a
> page table.
>
> Multi-platform kernel supporting all boards make sense for generic
> distros and/or build coverage tests. But a multi-platform XIP kernel is
> a nonsense. Trying to make XIP multi-platform might be a nice
> intellectual challenge but that has zero value for actual deployment and
> usage.

Agreed.

> Given that there isn't a lot of such platforms anyway, it should be
> possible to carry a few kconfig entries outside of the multi-platform
> menu for XIP targets and live with possible kconfig duplicates. That
> shouldn't be such a maintenance burden.

Still, it's duplication, which could be avoided using a single "know
what you're doing" Kconfig option.
And it will grow, as XIP could be used on lots of platforms.

I believe this is exactly what Chris' last attempt did?


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
