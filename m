Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99AE188388
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 21:56:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JiDIQ2jcH5CmC1TLBR9ddVnRd8bQ+nl2p7uIhotRm/U=; b=MYPOVgIlvfx14F
	BYPPCO6juHXrQ21M0WJrLeZ49EPiRyQAjX0Y6nqC+vvMGeE24Ei+5MDtrdHXk/fID6qJwhBEuh7fC
	DdiJlA/56fvZBlc009ogUXG5rxOBwACBjIrsSe1JkV1nYvYb0+mIrN+759tay8c+wUcZ53xthhnUN
	ryaSvM5jR/63663cOGhm0/NG1QVGUIZ0VOUhoi8PEhG7oMvMMW4qFmikqhYFU1qo5wPrGtiazDrO6
	YwVr1qX3O02oGJtvNCpQy/y/MKGwDiBBf7QoC/Gtea1Ahp8DuesTenvjO7O7rmVYlNy+Fe7ZbAuOP
	N9eLY3tiqx23ou2C+d/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwAzR-0004Sj-QH; Fri, 09 Aug 2019 19:55:53 +0000
Received: from mail-qk1-f193.google.com ([209.85.222.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwAyy-00046l-TX
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 19:55:31 +0000
Received: by mail-qk1-f193.google.com with SMTP id z16so2775423qka.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 12:55:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dnOilxMk2SUL76Uue/BpGe79hjdo4enHEg4ADIUo9fQ=;
 b=tHJlRFtIg591QxagRaAZvPLJYPPY907eLilGaAhu621b58x+nsMlOlF4WDZ/Kpq2vm
 zI/iTxUGGJUiGWafgnLks3HSEX0O0HMF4Rw2BgCrhe/6D25vIhMtubB+AcHo9nbdenqR
 PbhxhFKwV+0SQAk7oEbYMWdoSgvYTPoVxkXrioo5FuEXYSb2r+6mGVAHE+L7D0WaSAQ5
 brcT55xYxaASIGGCFFbCANnjpWt9kr45l/rwY5HtuPv+/nbcpsupbAd7k7DqYleDwuPQ
 WHyXy3hLqgSqox0m8cJKgbPOOYzyhVCdLhXBYBjprSe+/lraYydevhh2zthD0viAB4rT
 fxOw==
X-Gm-Message-State: APjAAAWHsExqiJKDH0crFa8ZlbP8O8r+fG1E2S4zGzxcSqUCgaOff9bh
 PGAZqcGcbI4EXInJ3As3qNjQU8DhaD7RMfOx6Lc=
X-Google-Smtp-Source: APXvYqwAu5/r0mHWormPvLY7YMy/YQGg6b0vzBOW6n/lxhXedE7IhmTuQUWTlOO73gdZw7G2QGBV7Ro3F8/PmGWkabE=
X-Received: by 2002:a05:620a:b:: with SMTP id
 j11mr20047492qki.352.1565380523825; 
 Fri, 09 Aug 2019 12:55:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190808212234.2213262-1-arnd@arndb.de>
 <CGME20190808212453epcas2p44ff418662ee1acf428c6842ee4488f9f@epcas2p4.samsung.com>
 <20190808212234.2213262-3-arnd@arndb.de>
 <55c9608d-68c4-17f6-2682-7668d5d7720a@samsung.com>
 <CAK8P3a3grFEGr33s327yNMabK5=1kCJc3k7y55dhzQx9sTvkyQ@mail.gmail.com>
 <487da98d-a862-0207-289a-bca8ff18e51a@samsung.com>
In-Reply-To: <487da98d-a862-0207-289a-bca8ff18e51a@samsung.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 9 Aug 2019 21:55:07 +0200
Message-ID: <CAK8P3a0_v1XM-fH5TOr-osrdLOsfYGbG8VCqktuSgUU7jKtgNQ@mail.gmail.com>
Subject: Re: [PATCH 02/22] ARM: omap1: make omapfb standalone compilable
To: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_125524_959658_49B926FE 
X-CRM114-Status: GOOD (  23.57  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
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
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>, Tony Lindgren <tony@atomide.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 linux-omap <linux-omap@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 9, 2019 at 4:36 PM Bartlomiej Zolnierkiewicz
<b.zolnierkie@samsung.com> wrote:
> On 8/9/19 1:43 PM, Arnd Bergmann wrote:

> >
> > That would have been ok as well, but having the addition here was
> > intentional and seems more logical to me as this is where the headers
> > get moved around.
> I see that this is an optimization for making the patch series more
> compact but I think that this addition logically belongs to patch #9
> (which adds support for COMPILE_TEST) where the new code is required.
>
> Moreover patch description for patch #2 lacks any comment about this
> addition being a preparation for changes in patch #9 so I was quite
> puzzled about its purpose when seeing it first.
>
> Therefore please have mercy on the poor/stupid reviewer and don't do
> such optimizations intentionally (or at least describe them properly
> somewhere).. ;-)

Ok, I looked at it some more and agree that you are right. I've split it
up further now into patches that make more sense by themselves:

commit ad71cdc54404ecde2e88678ee6bc7ae7fb8aec97
Author: Arnd Bergmann <arnd@arndb.de>
Date:   Tue Aug 6 16:08:34 2019 +0200

    fbdev: omap: avoid using mach/*.h files

    All the headers we actually need are now in include/linux/soc,
    so use those versions instead and allow compile-testing on
    other architectures.

    Acked-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
    Signed-off-by: Arnd Bergmann <arnd@arndb.de>

 drivers/video/backlight/Kconfig          | 4 ++--
 drivers/video/backlight/omap1_bl.c       | 4 ++--
 drivers/video/fbdev/omap/Kconfig         | 4 ++--
 drivers/video/fbdev/omap/lcd_ams_delta.c | 2 +-
 drivers/video/fbdev/omap/lcd_dma.c       | 3 ++-
 drivers/video/fbdev/omap/lcd_inn1510.c   | 2 +-
 drivers/video/fbdev/omap/lcd_osk.c       | 4 ++--
 drivers/video/fbdev/omap/lcdc.c          | 2 ++
 drivers/video/fbdev/omap/omapfb_main.c   | 3 +--
 drivers/video/fbdev/omap/sossi.c         | 1 +
 10 files changed, 16 insertions(+), 13 deletions(-)

commit 959e0d68751757e84dd703f60405c7268763dba4
Author: Arnd Bergmann <arnd@arndb.de>
Date:   Fri Aug 9 21:27:01 2019 +0200

    fbdev: omap: pass irqs as resource

    To avoid relying on the mach/irqs.h header, stop using
    OMAP_LCDC_IRQ and INT_1610_SoSSI_MATCH directly in the driver
    code, but instead pass these as resources.

    Signed-off-by: Arnd Bergmann <arnd@arndb.de>

 arch/arm/mach-omap1/fb.c               | 19 ++++++++++++++++++-
 drivers/video/fbdev/omap/lcdc.c        |  6 +++---
 drivers/video/fbdev/omap/omapfb.h      |  2 ++
 drivers/video/fbdev/omap/omapfb_main.c | 16 +++++++++++++++-
 drivers/video/fbdev/omap/sossi.c       |  2 +-
 5 files changed, 39 insertions(+), 6 deletions(-)


commit 6643f7a7da3ca7ce8f2ff094fecab7a0fd706acf
Author: Arnd Bergmann <arnd@arndb.de>
Date:   Fri Aug 9 21:42:31 2019 +0200

    ARM: omap1: declare a dummy omap_set_dma_priority

    omapfb calls directly into the omap_set_dma_priority() function in
    the DMA driver. This prevents compile-testing omapfb on other
    architectures. Add an inline function next to the other ones
    for non-omap configurations.

    Signed-off-by: Arnd Bergmann <arnd@arndb.de>

 include/linux/omap-dma.h | 3 +++
 1 file changed, 3 insertions(+)

commit 154bfb7ddcecdbca66d9a086776a3108831ef0b9
Author: Arnd Bergmann <arnd@arndb.de>
Date:   Mon Aug 5 23:15:37 2019 +0200

    ARM: omap1: move lcd_dma code into omapfb driver

    The omapfb driver is split into platform specific code for omap1, and
    driver code that is also specific to omap1.

    Moving both parts into the driver directory simplifies the structure
    and avoids the dependency on certain omap machine header files.

    As mach/lcd_dma.h can not be included from include/linux/omap-dma.h
    any more now, move the omap_lcd_dma_running() declaration into the
    omap-dma header, which matches where it is defined.

    Signed-off-by: Arnd Bergmann <arnd@arndb.de>

 arch/arm/mach-omap1/Makefile
   |  4 ----
 arch/arm/mach-omap1/include/mach/lcdc.h
   | 44 --------------------------------------------
 drivers/video/fbdev/Makefile
   |  2 +-
 drivers/video/fbdev/omap/Makefile
   |  5 +++++
 {arch/arm/mach-omap1 => drivers/video/fbdev/omap}/lcd_dma.c
   |  4 +++-
 {arch/arm/mach-omap1/include/mach =>
drivers/video/fbdev/omap}/lcd_dma.h |  2 --
 drivers/video/fbdev/omap/lcdc.c
   |  2 +-
 drivers/video/fbdev/omap/lcdc.h
   | 35 +++++++++++++++++++++++++++++++++++
 drivers/video/fbdev/omap/sossi.c                                         |  1 +
 include/linux/omap-dma.h
   |  4 ++--
 10 files changed, 48 insertions(+), 55 deletions(-)

commit b8ddb98d29a43fecb4387d0d8218935cb1997a28
Author: Arnd Bergmann <arnd@arndb.de>
Date:   Tue Aug 6 14:59:00 2019 +0200

    ARM: omap1: innovator: pass lcd control address as pdata

    To avoid using the mach/omap1510.h header file, pass the correct
    address as platform data.

    Acked-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
    Signed-off-by: Arnd Bergmann <arnd@arndb.de>

 arch/arm/mach-omap1/board-innovator.c  | 3 +++
 drivers/video/fbdev/omap/lcd_inn1510.c | 7 +++++--
 2 files changed, 8 insertions(+), 2 deletions(-)

The resulting code is the same as before, I'll post that again along
the rest of the series next week. Should I add your Ack to each
patch already?

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
