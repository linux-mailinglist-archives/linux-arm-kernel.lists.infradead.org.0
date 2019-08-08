Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2CE86CAE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 23:47:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w3dWCua/F79d1cSfa0D9l9UGf50gpIPnbB6ciBgRgBs=; b=jwb/73UVrCBMdl
	Yc3R4+aVBRn3YT6Cs+6N79suzjkIPJDpWzkQu6CwWRjBdHTwTrJos3Ybe4r5IAlxHm/JlvsImgFuR
	IgD3LsSFJC+UHF5OxafCyjtSgGqw6rWUaaSSyqXuvSAtlY03f+N55oezA9qlzSaEX52B7A3bUYNdh
	mShkycAUDPKShDnX2t0c6q0+DHXMOKLaYM9Z1cT7Cule96BP7q+Uu2C6hhLFd0U3YjUNxNlVbdLfM
	9ZGv4Asja0cy2jJvZ3YkG+S1+evj1Ty6XQg9HkxwpM+IYdwTQn/YwQBtizvde4JIw+YZP9MRaDY0N
	K523JPjwMk41yF0wUDfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvqFZ-0001qH-Lr; Thu, 08 Aug 2019 21:47:09 +0000
Received: from mail-qk1-f193.google.com ([209.85.222.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvqFS-0001pu-R2
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 21:47:03 +0000
Received: by mail-qk1-f193.google.com with SMTP id s145so70129804qke.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 14:47:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xVLCEyuU5pBNVx1TCmAc/TP4L1lHqIgkx7yJEE6tqjk=;
 b=EFsWSea8vW15bD6k0tf78+3KIC9T71CxVdTQxeH6M5i8mAXhsF3kStQ1K1J2djf87F
 AIPNvxxyi6YJe8o6NuXSPRv2K3LwzMn3v1FTDC5tXNKb7yRdLwCjfdQAi/WUmi0Pg6zG
 hcG70uQaDxroJ+EvEJeCeil/yg6lDNV6NLRyvO4TQcgsHbmtGGSSsu96x6NZUpwNSUHK
 UBMyeC2e3YITh2M5mEwPJEwdYmXzPdTIqIxzWetgOPUWXKqMm0ZJ6bOzKLTbQo69019I
 GEUCYDG+NONLcbp5cu+5CiF/HlSM/w2imOtpLGflgVPkHdnTU00YLpPQQrKksF6y2qwb
 qabA==
X-Gm-Message-State: APjAAAXpWOmizVziblFSEF0o49NmbO7uSsRq+Xt7qKAGvA/WLEVVbNZ0
 webXE76udDeDZo2eTOhoj9iWhbN6w9VP74N400A=
X-Google-Smtp-Source: APXvYqy+B+qqsuvHb9p/Sjrie5IiMOZ5r/TClGgDChlxpboOO80aH3A3Oyu3iNJfjELi0RWYxk+y1/TmPK6BNCPDHbU=
X-Received: by 2002:a37:76c5:: with SMTP id
 r188mr15459896qkc.394.1565300821239; 
 Thu, 08 Aug 2019 14:47:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190808212234.2213262-1-arnd@arndb.de>
 <20190808212234.2213262-14-arnd@arndb.de>
 <20190808214257.GF178933@dtor-ws>
In-Reply-To: <20190808214257.GF178933@dtor-ws>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 8 Aug 2019 23:46:45 +0200
Message-ID: <CAK8P3a2TOcjxwCBGkZAhMAf9HuTL=FAB1e0=FAg+oHB0U1nJ0A@mail.gmail.com>
Subject: Re: [PATCH 13/22] input: omap: void using mach/*.h headers
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_144702_870236_3FC455C4 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.193 listed in wl.mailspike.net]
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
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 "open list:HID CORE LAYER" <linux-input@vger.kernel.org>,
 linux-omap <linux-omap@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 8, 2019 at 11:43 PM Dmitry Torokhov
<dmitry.torokhov@gmail.com> wrote:
>
> Hi Arnd,
>
> On Thu, Aug 08, 2019 at 11:22:22PM +0200, Arnd Bergmann wrote:
> > By using the new linux/soc/ti/omap1-io.h header instead,
> > compile-testing can be enabled, and a CONFIG_ARCH_MULTIPLATFORM
> > conversion of omap1 may eventually be possible.
> >
> > The warning in the header file gets removed in order to
> > allow CONFIG_COMPILE_TEST.
>
> Given that we want to migrate people off this driver everywhere but
> OMAP1 I wonder why we would want to improve compile coverage of it.

Mainly for consistency: I'm converting all omap1 drivers in this series to
not rely on mach/* headers and to let them be compiled standalone.
The other drivers don't have a replacement, so I could treat this different
from the rest and skip the Kconfig and platform_data changes if you
prefer.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
