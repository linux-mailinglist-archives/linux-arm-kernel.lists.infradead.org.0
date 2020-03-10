Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B201817F42C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 10:52:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3T86fOY3g027B55ifOawRbPzhFa+AnUfh9I/ZtJh2Yk=; b=Mm9HC1HO2uVHlw
	xZifQd2CA3GHrcoVQuNK0WZkNVO/tDgNc8IqF0CsY5f8ycvC2w1tdsV09Azz2keDjad9Lmi1+4XEq
	bV6iUx+KcLeqasGRfXrwI3RaiXue1xmdHN4MANyV0niZFfArjoW2cJy9r5WW89hEY8Y7GLt/xQn5T
	MgZO19XPdWyn8U4ATPyycKx08e3jwqDmmQg9uyI7KAzHOFi6NuwICj5ekvpyvBBzS29ZBFUNl5RmB
	ihLKWLGBvLBH5RDnQw05PR4/FLu4EBirzdWvFIGnYMnKbChwg1Y9SySa29SxMg1T97pP183j8TUXz
	RVkNXl5RGpioPhKmaiMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBbYs-0000Ep-1N; Tue, 10 Mar 2020 09:52:30 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBbYk-0000EO-K0
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 09:52:23 +0000
Received: by mail-ot1-f68.google.com with SMTP id a6so4618832otb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 02:52:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=D2V/UePASyU230tuKRbMCAGcZJI5X8GF+a664jH15CU=;
 b=iYts+wfVSvpZVFI6/exXBaSvAIwY4cXc6kyhn3SNvOrk9rwalf+EcRX/b4puHJAJFa
 VzLKDULZdoG+CDxbzgCKIQHvPO+UoFSCJdCBWtUAos3jnok51M2RtZ4H2nezByBXrCsz
 uzZbYVg6frIkzVK1pOHYC5UIAqOdaks0UTGi2PsAPXSQzAgnWFT31Dh0B2R3my5YL584
 rSTG7VgGkTtiSpHtVGMj5wpqxmTmaZH9bzwk2QcD2GbvmBVBvW9R5mkjY7CvX4fjY2LA
 SBXfEj//pup4gFeylVahJP2/1ZWq9n2DVCa88a2XVmhHN1AdwrGuGLOOBNuiLHMBLTKH
 PmhQ==
X-Gm-Message-State: ANhLgQ1ukNiW5Zv2mt33Dj815UcLljHwuVnJy9UxtLX8vg5nkn0QWJ9p
 cWpIHJNZP/gSzNN7yMwg/bwTgOrekkRU4uwRs7Y=
X-Google-Smtp-Source: ADFU+vsj5UWJdrV7QmKDiwgSvDldXSei2pp+JGaKb/Y7ORMGEFfH2B3XQIlZ+H27C0XBvXY1wG4vDKm2MB7xCJwnqls=
X-Received: by 2002:a9d:b89:: with SMTP id 9mr16432511oth.297.1583833941607;
 Tue, 10 Mar 2020 02:52:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200305103228.9686-1-zhang.lyra@gmail.com>
 <CAMuHMdVyy3v24zBxJFe5hYdnzdj80dvE2Z9GO4=AC1N8fD64pw@mail.gmail.com>
 <CAAfSe-spu2oNmfEYt+WQvRQy1bCC0e1MFjbUyBAFzghd5XNBfw@mail.gmail.com>
 <CAMuHMdV1qQZF-kAwbcxhHQZZ9hs0dG-OTZ2NcB25Jtra6ii5iA@mail.gmail.com>
 <CA+H2tpEzFAbfzMuUGMfW3BqCKv2+kk+cLL5gWpR-zJZFYwWKqw@mail.gmail.com>
In-Reply-To: <CA+H2tpEzFAbfzMuUGMfW3BqCKv2+kk+cLL5gWpR-zJZFYwWKqw@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 10 Mar 2020 10:52:10 +0100
Message-ID: <CAMuHMdUKD5Ob_o4E3bH9wx=6r2PU+7U3RQ_GVRj7ZQc-e5Y4TA@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: change ARCH_SPRD Kconfig to tristate
To: Orson Zhai <orsonzhai@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_025222_658902_C061FD77 
X-CRM114-Status: GOOD (  20.98  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Chunyan Zhang <zhang.lyra@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Chunyan Zhang <chunyan.zhang@unisoc.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>, Baolin Wang <baolin.wang7@gmail.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Orson,

On Tue, Mar 10, 2020 at 10:41 AM Orson Zhai <orsonzhai@gmail.com> wrote:
> On Mon, Mar 9, 2020 at 6:32 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > On Mon, Mar 9, 2020 at 9:32 AM Chunyan Zhang <zhang.lyra@gmail.com> wrote:
> > > On Mon, 9 Mar 2020 at 16:03, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > On Thu, Mar 5, 2020 at 11:33 AM Chunyan Zhang <zhang.lyra@gmail.com> wrote:
> > > > > From: Chunyan Zhang <chunyan.zhang@unisoc.com>
> > > > >
> > > > > The default value of Kconfig for almost all sprd drivers are the same with
> > > > > ARCH_SPRD, making these drivers built as modules as default would be easier
> > > > > if we can set ARCH_SPRD as 'm', so this patch change ARCH_SPRD to tristate.
> > > > >
> > > > > Signed-off-by: Chunyan Zhang <chunyan.zhang@unisoc.com>
> > > >
> > > > Can you actually boot a kernel on a Spreadtrum platform when all platform
> > > > and driver support is modular?
> > >
> > > Yes, even if all drivers are modular.
> >
> > Cool. No hard dependencies on e.g. regulators that are turned off when
> > unused?
> >
> > > But I hope serial can be builtin, then I can have a console to see
> > > kernel output before loading modules.
> >
> > No dependency on the clock driver?
> > Oh, I see you have a hack in the serial driver, to assume default
> > values when the serial port's parent clock is not found.  That may
> > limit use of the other serial ports, depending on the actual serial
> > hardware.
>
> There is an function named "sprd_uart_is_console()" in the driver
> code. So the hack could be only applied when the
> port is identified as console. And other ports might return
> PROBE_DEFER until the clock is ready.
>
> Could it work out of the limitation?

Yes, that could work.  You also have only a single SPRD_DEFAULT_SOURCE_CLK,
which makes it simple to handle.
For other SoCs, there may be a variation of possible values, depending on
SoC and/or board.

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
