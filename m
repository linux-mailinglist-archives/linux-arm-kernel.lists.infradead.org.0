Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7306E17DD9B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 11:32:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+P8a6JM3y3ny1hcRxc4Vj9Y7d79+TGAkf04GvEKSGNw=; b=E9xPjgVPam9+VM
	yChfP2pnl8ZBnef89uJl6h+p4D/GGToo5Y+tt5UnMdEdM7JxieQ4kMM9qUNBEpRTaqcbEAPti+ZJC
	kIzdqNt3elSqS6kaNx7wN6TcHNVJh/qg10GvD/lRbNy5gNz3mfCD5t2sy1HICsHMdAkrwdzsF0jdf
	rOrvkFA5JPS7DLZcPgplNz5uyB3MRie+FP5IrU9TRGo2dc2Ko6Ks6uPS18z+jnjZgtj32E9ZvcCCj
	mN8l7whczwQBuCgCWfusG8Gt7zrghSKXk8R3NkIsqDMuEaKe317XW1jH8pq6CphGJ5cjd4d6cubAX
	s3j+U+oIzXXS3lIyCaog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBFhx-0006lc-JF; Mon, 09 Mar 2020 10:32:25 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBFhq-0006kg-0b
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 10:32:20 +0000
Received: by mail-ot1-f65.google.com with SMTP id x19so9020204otp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 03:32:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pN1NhwV5FZU7mvbB/Fyos9y0uYvy+acNwUtvUwLUiRQ=;
 b=MB1bgmSwfghUcwak1x/SxsTFl+NnyGyEDpUUqti+iUIBhH111JaElGrpb/3sg1D6tT
 tS44qdR/tZTiHPOVz+mS40RUwKOgGDCgOUPApvkBRg7Mr7n/p+JV0fdzB7m/SRyhNlDp
 vmiEUPL+l24FQXIwgHNYUD8S3WBmAVpzms31qO2X79/7OnnPa0fob5ATE8yZPBuIvtc6
 Dnhxp6tr26ebsX4RIBBAxbIvexI2+n9hZvcscv1zW+go0E2xzlzdegSv+IzfuibbQtUO
 frEHOnjHlWnd3XS2kkwbUSyAlDEdKkHMa+NjzG+wcR6GUIiWu/yEOW1nXU8/csL/BbF1
 mCKA==
X-Gm-Message-State: ANhLgQ0P0C5lb0s4wsE85ZssELUbeb4LeSqE9MUgiAhicAFKxiWe/twv
 YUbEzyUZhcQRItDWqufCRp4kSijlXNDX3uc64Sw=
X-Google-Smtp-Source: ADFU+vvWEUII/TFq+DBVwE8+/gWKHsyLSflVItjuPLkHr74fKp/RQBIfJzV4NZ2ge/14b9Bn2Mfny2XLzY2FCAHqPAU=
X-Received: by 2002:a9d:b89:: with SMTP id 9mr12586549oth.297.1583749937349;
 Mon, 09 Mar 2020 03:32:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200305103228.9686-1-zhang.lyra@gmail.com>
 <CAMuHMdVyy3v24zBxJFe5hYdnzdj80dvE2Z9GO4=AC1N8fD64pw@mail.gmail.com>
 <CAAfSe-spu2oNmfEYt+WQvRQy1bCC0e1MFjbUyBAFzghd5XNBfw@mail.gmail.com>
In-Reply-To: <CAAfSe-spu2oNmfEYt+WQvRQy1bCC0e1MFjbUyBAFzghd5XNBfw@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 9 Mar 2020 11:32:06 +0100
Message-ID: <CAMuHMdV1qQZF-kAwbcxhHQZZ9hs0dG-OTZ2NcB25Jtra6ii5iA@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: change ARCH_SPRD Kconfig to tristate
To: Chunyan Zhang <zhang.lyra@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_033218_059894_9D2BF2EB 
X-CRM114-Status: GOOD (  17.95  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
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
Cc: Android Kernel Team <kernel-team@android.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Chunyan Zhang <chunyan.zhang@unisoc.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>, Baolin Wang <baolin.wang7@gmail.com>,
 Orson Zhai <orsonzhai@gmail.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Chunyan,

On Mon, Mar 9, 2020 at 9:32 AM Chunyan Zhang <zhang.lyra@gmail.com> wrote:
> On Mon, 9 Mar 2020 at 16:03, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > On Thu, Mar 5, 2020 at 11:33 AM Chunyan Zhang <zhang.lyra@gmail.com> wrote:
> > > From: Chunyan Zhang <chunyan.zhang@unisoc.com>
> > >
> > > The default value of Kconfig for almost all sprd drivers are the same with
> > > ARCH_SPRD, making these drivers built as modules as default would be easier
> > > if we can set ARCH_SPRD as 'm', so this patch change ARCH_SPRD to tristate.
> > >
> > > Signed-off-by: Chunyan Zhang <chunyan.zhang@unisoc.com>
> >
> > Can you actually boot a kernel on a Spreadtrum platform when all platform
> > and driver support is modular?
>
> Yes, even if all drivers are modular.

Cool. No hard dependencies on e.g. regulators that are turned off when
unused?

> But I hope serial can be builtin, then I can have a console to see
> kernel output before loading modules.

No dependency on the clock driver?
Oh, I see you have a hack in the serial driver, to assume default
values when the serial port's parent clock is not found.  That may
limit use of the other serial ports, depending on the actual serial
hardware.
And on Sharkl64, the serial port's clock is a fixed-clock anyway, so
you don't even need the hack.

But in general you cannot rely on that, especially if your SoC has clock
and/or power domains.

BTW, what about the watchdog driver? That one does need a clock, and
loading it too late will reboot your system.

> Also, this's what Google GKI [1] asked :)
>
> Regards,
> Chunyan
>
> [1] https://arstechnica.com/gadgets/2019/11/google-outlines-plans-for-mainline-linux-kernel-support-in-android/

Let's see how having everything modular works out on an SoC where all
hardware is part of a clock and power domain.

Thanks!

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
