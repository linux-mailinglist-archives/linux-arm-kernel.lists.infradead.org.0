Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 494F1183038
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 13:29:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S0FYD87PyXR569SUhAUeghc6QbK5ilof2BaPBAz3xwM=; b=ija7mJyNwgPKXp
	KJfVK93Ja9FjIvwS0vHuongwZfOudLs+rIaXzIkcp1Y687Jq4Eo+5u7gzeL8xLi2UuKuONzuQ6QFm
	5rJpbUfieAN38GjLpde5y289AA8Mk2HzoHKHSrXSd+Y/H4rGpVOnjJYX2a1SF7H2Tpki7lJM7fnKW
	xvt5uF7c2dCRdAwJk8CCl/E04ZYi+OsNcPFnITYS0XR9r8ykhkcJSjc5HPTsohayZPZQ4QfVHO5CO
	q6dj2R0tiH6Yj6nxWVgyp5+ly7CeV4qWX41ljjwunjKGIqkJhM3DbH4z9qizjUOGp7HmTW5wSFzQ7
	8JJa9pMCWfasFD6/2k4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCMxw-0006NV-At; Thu, 12 Mar 2020 12:29:32 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCMxn-0006Mc-NE
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 12:29:25 +0000
Received: by mail-ot1-f66.google.com with SMTP id k26so5984216otr.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 05:29:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zjFcVOAemnoKsr2cIZIjqhkKv+6KDzTh2mCpNYwVHFw=;
 b=VsU/K+YXyuIQxpGl7TFNz8RtERiGsHZrc36/Y4g8K9XiAupZk+sbxarspZTk7gBwq/
 UHtGqfx/GQ22R2Ijv2SrU8U8nWEoPbID9jk4UUqcWOrFpGKHPDb5aaj1ZnELLU1mvtGR
 nVth/i/8ySbVyvmc9fjWNCCdTm6BuifljMQJBr9i4FEl1/+keLkSD/vn2KteUoG+URER
 KuY8S6TNsHrKArj/Qd0w+AohyUAHIkjmviJRzhJxjMUMS1EnSZBZIWjGh776bh0MW3sW
 ZLp90yviPt56QkFMvKybejcMLNeTg6nLkes98jNy0DuKe+8GBDUAJ9QBqwhGguPVMaFC
 xCRA==
X-Gm-Message-State: ANhLgQ2DpC9hqNX+SKozJgfTsN0XFWqEaTPJ1cONVKLQ4osy2TTuMeSp
 I9OOF/ZoeSYYkYudwSLTmBhgwsZzBCGX4HFQc24=
X-Google-Smtp-Source: ADFU+vucH2ks+fpvX4BNhVKQ3S6LjZbVYW6W1MizjhNyTjKcraAwX6o5NYlfrTlM4Dx4g8mOMmj4P3VTBGu0rNdkPKs=
X-Received: by 2002:a4a:e211:: with SMTP id b17mr3815296oot.79.1584016162158; 
 Thu, 12 Mar 2020 05:29:22 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20200225144815eucas1p1229ceb0d017b46cbbe2409639a7c1f83@eucas1p1.samsung.com>
 <20200225144749.19815-1-geert+renesas@glider.be>
 <e249c123-8d00-4aa3-34b8-f82d52428966@samsung.com>
 <20200226174905.GE25745@shell.armlinux.org.uk>
 <CAMuHMdW1ojYyWXZpzgiy8PrZnR2PQ9n3SEDrQ7hFFUg0j-jegg@mail.gmail.com>
 <20200226175723.GF25745@shell.armlinux.org.uk>
 <CAMuHMdV9VyS3kBnhFT-5ry_O-aRafq-8Yor0xxxnjGqNQiSgZw@mail.gmail.com>
 <f30208dc-e74a-cae7-95e6-d99220d9735c@samsung.com>
In-Reply-To: <f30208dc-e74a-cae7-95e6-d99220d9735c@samsung.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 12 Mar 2020 13:29:11 +0100
Message-ID: <CAMuHMdV=A-ObmHCsSQgbGCm=QxZ==3vSpFg3OMp-o0Aq=N3w6Q@mail.gmail.com>
Subject: Re: [PATCH] ARM: boot: Fix ATAGs with appended DTB
To: Marek Szyprowski <m.szyprowski@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_052923_756342_2FA44C4B 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 Nicolas Pitre <nico@fluxnic.net>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Eric Miao <eric.miao@nvidia.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek,

On Thu, Mar 12, 2020 at 1:23 PM Marek Szyprowski
<m.szyprowski@samsung.com> wrote:
> On 26.02.2020 21:48, Geert Uytterhoeven wrote:
> > On Wed, Feb 26, 2020 at 6:57 PM Russell King - ARM Linux admin
> > <linux@armlinux.org.uk> wrote:
> >> On Wed, Feb 26, 2020 at 06:56:06PM +0100, Geert Uytterhoeven wrote:
> >>> On Wed, Feb 26, 2020 at 6:49 PM Russell King - ARM Linux admin
> >>> <linux@armlinux.org.uk> wrote:
> >>>> On Wed, Feb 26, 2020 at 07:35:14AM +0100, Marek Szyprowski wrote:
> >>>>> On 25.02.2020 15:47, Geert Uytterhoeven wrote:
> >>>>>> At early boot, register r8 may contain an ATAGs or DTB pointer.
> >>>>>> When an appended DTB is found, its address is stored in r8, for
> >>>>>> extraction of the RAM base address later.
> >>>>>>
> >>>>>> However, if r8 contained an ATAGs pointer before, that pointer will be
> >>>>>> lost, and the provided ATAGs is no longer folded into the provided DTB.
> >>>>>>
> >>>>>> Fix this by leaving r8 untouched.
> >>>>>>
> >>>>>> Fixes: 137e522593918be2 ("ARM: 8960/1: boot: Obtain start of physical memory from DTB")
> >>>>>> Reported-by: Marek Szyprowski <m.szyprowski@samsung.com>
> >>>>>> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> >>>> The original commit hasn't been submitted, so it can be fixed before it
> >>>> hits mainline if you want.  Let me know what you want to do.  Thanks.
> >>> Fixing the original is fine for me, of course.
> >>> Thanks!
> >> Please submit a replacement for 8960/1, thanks.
> > Done.
>
> Gentle ping. This fix is still not present in linux-next for over 2 weeks...

According to
https://www.arm.linux.org.uk/developer/patches/viewpatch.php?id=8963
the fixed version was applied less than one hour ago.

It's now part of arm/for-next.

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
