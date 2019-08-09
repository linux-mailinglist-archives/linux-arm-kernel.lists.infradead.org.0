Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B97F878EC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 13:43:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NFxyodDolEtRNosp+DY3TT4WCrOTmTLpkgR1+9WxPEo=; b=J/319ySdoVwOMB
	hu3kAfaQeYKatNv79CzdT5NAaD61h0whpBwZrUlKqupVuUeMa6LJlBReINN9BQEJ4BSTQUuxGV++n
	664/r3pBsGe4UXiMUi/Tm35AHLCXZPJLL8XkJA9DBSnEYR7c/R89K0sqGrXUL+B5sVTBevjTlNGQk
	DE/79urCS8dKTc6ybNsd1omIHcXquPNA7+cJYxh/tlHReg1jQI38/P2YfPBqaKWi0yyVHA+t3vyH3
	1jvtniGyt5sd4zqPmONpkX1DlE8rU0IS9GfpyE4lSifk1Nc31Bh5FOKL9sJN5trkRoQwFkL5gz8Ny
	jZlMkScCEUk/CkLr584w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw3J8-0006s6-T5; Fri, 09 Aug 2019 11:43:43 +0000
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw3Ix-0006rS-1S
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 11:43:32 +0000
Received: by mail-qk1-f194.google.com with SMTP id 201so71284547qkm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 04:43:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VVKEn1uhwnct32QQNQWKMMQwz1IKox/lIkY41QXr3n4=;
 b=lTfOcWOqvtBAV/pYfJncSUhMbX7EOQYEu0uTqTdL46dm3rK+ztXCT5eukf77bwcY3y
 aL5YJ1o2R4rMpdOpneVi5h3jTPqtxoo9LLLNtIB+//jJ9CywJLn8WHTJrPtXVBpWES32
 eK7/vIuShFMYqUpY8VsnAGTq+JSckhP5lfs2wWTTg4grAnHLZ6U93YHZmC4eTE37uUoC
 6AguiqZIc6Yh04oqsR5PsAqLodhgRERm0JoNrmbdzN4OiOPeACiHzeUsydkuZ2kQXSKT
 YK0r5AxCq+tX1Y6sgkV6f8JOU0muMvbeDcCw/RhzgXvGWgo7VgwBeyZ2bRXtaJATNM+I
 Zx5w==
X-Gm-Message-State: APjAAAXWjvxJl2y7ViYeoNKChUg3CaTCM3avh5GF9RSic48OgZLlXuyJ
 A3b3gGQrzBGv5QsWdRVxuZ/aYLKAvvzA1qd4SPQ=
X-Google-Smtp-Source: APXvYqz3y2NTzxkuXgdthyLbml49Ah52Sn2rqR//B9FnkAzFwcen/MazMdX5ZFS3FoRo2xISosV/96/4q4XOkHiRGAw=
X-Received: by 2002:a05:620a:b:: with SMTP id
 j11mr17853054qki.352.1565351009257; 
 Fri, 09 Aug 2019 04:43:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190808212234.2213262-1-arnd@arndb.de>
 <CGME20190808212453epcas2p44ff418662ee1acf428c6842ee4488f9f@epcas2p4.samsung.com>
 <20190808212234.2213262-3-arnd@arndb.de>
 <55c9608d-68c4-17f6-2682-7668d5d7720a@samsung.com>
In-Reply-To: <55c9608d-68c4-17f6-2682-7668d5d7720a@samsung.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 9 Aug 2019 13:43:13 +0200
Message-ID: <CAK8P3a3grFEGr33s327yNMabK5=1kCJc3k7y55dhzQx9sTvkyQ@mail.gmail.com>
Subject: Re: [PATCH 02/22] ARM: omap1: make omapfb standalone compilable
To: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_044331_086177_41D6A3F3 
X-CRM114-Status: GOOD (  15.50  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
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

On Fri, Aug 9, 2019 at 1:32 PM Bartlomiej Zolnierkiewicz
<b.zolnierkie@samsung.com> wrote:
> On 8/8/19 11:22 PM, Arnd Bergmann wrote:
> > The omapfb driver is split into platform specific code for omap1, and
> > driver code that is also specific to omap1.
> >
> > Moving both parts into the driver directory simplifies the structure
> > and avoids the dependency on certain omap machine header files.
> >
> > The interrupt numbers in particular however must not be referenced
> > directly from the driver to allow building in a multiplatform
> > configuration, so these have to be passed through resources, is
> > done for all other omap drivers.
> >
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>
> For fbdev part:
>
> Acked-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>

Thanks for taking a look.

> [ It seems that adding of static inline for omap_set_dma_priority()
>   when ARCH_OMAP=n should be in patch #9 but this is a minor issue. ]

That would have been ok as well, but having the addition here was
intentional and seems more logical to me as this is where the headers
get moved around.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
