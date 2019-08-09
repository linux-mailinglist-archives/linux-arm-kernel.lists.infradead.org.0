Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E23687851
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 13:23:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ztgFrVAr1todV3JGkUryD7BgVFlK5537K/rzTK+3qPc=; b=Km8ynIUzzjBv8q
	cpAzMz1xacVLwiMvsuI7OJEq1bBfWiA0r3vBs3ESFED8uxF3vHL6GL5Mws8zk9RrdQH0NdNrXkBon
	cerbqYWeFDNwY8o/l0lmeN7NWH/ao71YtKM/0VyTgSNGvUqEq7htPJZt4eSZqmntQsaIZY4MR7zDK
	Hol3dTW6yT2OCHY0SIhFvgJrw1usXZNIrvrEBMPn5Z+XTPTuN8jEhNYGusMvGAagjlw7mawL7WewD
	c13nF9/fufRXYo/i3kPA/kdkeTLrgXjszoRuDO92Cry6vbonOZcCWme1xICAzepJq48CFVJo6XFl2
	UbcEtcG4bg1zs397q5qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw2zy-0004nu-2n; Fri, 09 Aug 2019 11:23:54 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw2zl-0004nT-Dd
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 11:23:42 +0000
Received: by mail-qt1-f193.google.com with SMTP id d17so16448616qtj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 04:23:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gRvZxPuek6JRQruqkUJVQMjk/VZ8xO7dmw6h4WlzFd8=;
 b=F3eYXeswAu5R6TJuwcY16yDfRZSMRE3OF3IIaQuuROgd11bvvb+aKJ4TEnpwRvugzB
 CsGgfFctIQKS7zzIqUOt2xbW0J6h2H7JYs+F5MbLsF8VfCTQr6+DRa9Gixm3L0kACURn
 1soxoTRA+kgbNNfBtVggEB1ezGVJkUjJcPYEGDnLzl7SImBEZL9pO2imOl06HZ3EAzY0
 0xDgzVLq7GThakE6zmDYvbRN5yN7wWHgQBH52/Psu8UTe/wNPbarI6BiUM8MjiAuSh5L
 V5d7k9gl7JRXkomof03tSyCraBA7X7HOHMD8/4vYflDBjp3mgJcHYHNDZ96P/lhra4vn
 z8JA==
X-Gm-Message-State: APjAAAWUW9Q6g5TXEOskHek/E+sZihIcmR9DCud7tbA7TQjKM5RVEt26
 Ky86klQrO3P6GiFiZhwG9DG3useJHiTYdJijiFU=
X-Google-Smtp-Source: APXvYqwyfun0rS3dI0VPy9YQLTjb23p3p5REd7rS9TuRRKEk5l8WvDyNNaWtDch5+OMsqDgqQyJPBtXPE6lfaVR0VOI=
X-Received: by 2002:ac8:5311:: with SMTP id t17mr17162360qtn.304.1565349819769; 
 Fri, 09 Aug 2019 04:23:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190808212234.2213262-1-arnd@arndb.de>
 <20190808212234.2213262-14-arnd@arndb.de>
 <20190808214257.GF178933@dtor-ws>
 <CAK8P3a2TOcjxwCBGkZAhMAf9HuTL=FAB1e0=FAg+oHB0U1nJ0A@mail.gmail.com>
 <20190808221950.GG178933@dtor-ws>
 <20190808233941.v6elo2mdji5awylu@earth.universe>
In-Reply-To: <20190808233941.v6elo2mdji5awylu@earth.universe>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 9 Aug 2019 13:23:23 +0200
Message-ID: <CAK8P3a1QUo=qCGMdojN2RZmpr_kmkqBcJXAOab06yRgSzz4VzQ@mail.gmail.com>
Subject: Re: [PATCH 13/22] input: omap: void using mach/*.h headers
To: Sebastian Reichel <sre@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_042341_462840_8683BBCA 
X-CRM114-Status: GOOD (  21.57  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Tony Lindgren <tony@atomide.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 "open list:HID CORE LAYER" <linux-input@vger.kernel.org>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, linux-omap <linux-omap@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 9, 2019 at 1:39 AM Sebastian Reichel <sre@kernel.org> wrote:
> On Thu, Aug 08, 2019 at 03:19:50PM -0700, Dmitry Torokhov wrote:
> > On Thu, Aug 08, 2019 at 11:46:45PM +0200, Arnd Bergmann wrote:
> > > On Thu, Aug 8, 2019 at 11:43 PM Dmitry Torokhov wrote:
> > > > On Thu, Aug 08, 2019 at 11:22:22PM +0200, Arnd Bergmann wrote:
> > > > > By using the new linux/soc/ti/omap1-io.h header instead,
> > > > > compile-testing can be enabled, and a CONFIG_ARCH_MULTIPLATFORM
> > > > > conversion of omap1 may eventually be possible.
> > > > >
> > > > > The warning in the header file gets removed in order to
> > > > > allow CONFIG_COMPILE_TEST.
> > > >
> > > > Given that we want to migrate people off this driver everywhere but
> > > > OMAP1 I wonder why we would want to improve compile coverage of it.
> > >
> > > Mainly for consistency: I'm converting all omap1 drivers in this series to
> > > not rely on mach/* headers and to let them be compiled standalone.
> > > The other drivers don't have a replacement, so I could treat this different
> > > from the rest and skip the Kconfig and platform_data changes if you
> > > prefer.
> >
> > Yes, because at least with the version you posted we are losing the
> > #warning telling people to move to matrix_keypad. We could do:
> >
> > #ifndef CONFIG_COMPILE_TEST
> > #warning ...
> > #endif
> >
> > if you really want to allow compiling standalone for testing.

No, I'll just drop the compile-test portion and leave the warning
untouched, leaving only the header file include as a preparation
for multiplatform support then.

> FWIW the driver depends on ARCH_OMAP1 and the warning is
> only printed for !ARCH_OMAP1. In other words: The warning
> is never printed at the moment. All OMAP2+ boards moved to
> matrix-keypad long time ago and the driver does not support
> OMAP2+ anymore since f799a3d8fe170 from 2012.

Right, it also seems extremely unlikely that any new platform
would start using the header, and it also doesn't look like
anyone is interested in moving omap1 over to matrix-keypad.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
