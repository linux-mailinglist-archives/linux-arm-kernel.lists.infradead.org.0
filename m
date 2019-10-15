Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E32D728A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 11:52:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZQ33k6b6SHIoux292JvZQmQBTD3hqvOM68auocnHPh0=; b=rZ9ijNJj/OEuf3
	l2HOHTqtjmfAnfkp+Iq1uKBEO8CZrO30LtNqRe8/3FWxzJOBAxxdqM0DcAlP/UxRS5sS/8xFAt5LK
	pT/VgFckhPZ7Cnxu6EMwFGYwbFtSZdMBvk2Qq+ixhU8BboRQJPkn3/A51bpxc2ipwcPHQMLCoMjyA
	0Xz5h6J748+ryMEvQvuTm1bxvFlxoKbOLMyUoACKJu4FjLOIqzDDe2WFrKlD9C76xee6qAP5YJj4N
	Gyw1OY9hDH7YZzQWRJilP9CT+3sG/dz3m5+RXuZXvxicwTFgMF3D5YxWSqR9Wc+XKdA7TA8yixNWK
	zjXLr0ILS4ch4+Wda4UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKJUu-0007ha-O4; Tue, 15 Oct 2019 09:52:08 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKJUn-0007hA-4o
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 09:52:02 +0000
Received: by mail-oi1-f193.google.com with SMTP id o205so16229298oib.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 02:52:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0CYH4j0srWEiMsF+OANP2Wo3C2QtrbO2vNC7ScJyUA8=;
 b=s7XtJg5AEvSMZm3dg2AODTuCGERw7dyeZzDxjUAN8x+NHNIY3QcEGcFS003gZv9kR3
 +sUFfupcnkcaBZk9yWTHagNqnyt13RTIXnPp/peX/1QauSUNpQSBiDu3VJ2DxK9jeHcL
 Zkae8lHin/ACFkg9rUy2M4+YTgQr9pcu7xqrBnXkQ1TaM01lIbjSx8Q+aNM9tSLGgGGs
 93cg2dPDilhNZvJmqYxj3lsTj7YnJLyK57FqUTqulFpMvUV+fOSnyta+uFhbCrpqPlPw
 XIdnT3aGZLPcxaz64DyXdu3dJogIqe+OVX7Q+FV2xww/ylWJBhdVdmzb9MLhKAtBaxgb
 9JAQ==
X-Gm-Message-State: APjAAAX9JjB88Y0Ge/gtJ7AQDcb9nYebfDZ1OLbJswFRZVN6FfysaGyW
 xJY2chnIR38CoJMINR7Qm8j0Vd0uosWyE0dZh/9pBlrp
X-Google-Smtp-Source: APXvYqwlKwjCfbaD/Fu4Kccv/2hAco6cGIIYZtyu2Fqx7giwBiOA8FU9ug4GAzQwht8aPR23rojHPBuumOCb+IuEQ+k=
X-Received: by 2002:aca:4bd2:: with SMTP id y201mr3095361oia.102.1571133119807; 
 Tue, 15 Oct 2019 02:51:59 -0700 (PDT)
MIME-Version: 1.0
References: <4a877f1c7189a7c45b59a6ebfc3de607e8758949.1567434470.git.michal.simek@xilinx.com>
 <CAMuHMdWY2VsY-CyAxSvpm1XYicAWqU7NORSQofQ+T195DwyLUg@mail.gmail.com>
 <7284590f-2b74-1b47-2d61-783ad8d5f46f@monstr.eu>
In-Reply-To: <7284590f-2b74-1b47-2d61-783ad8d5f46f@monstr.eu>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 15 Oct 2019 11:51:48 +0200
Message-ID: <CAMuHMdWZYALZB1bP5Mtoq4Nj5iubzdWBf1vRY9Mh5QvjCDhBgA@mail.gmail.com>
Subject: Re: [PATCH] serial: core: Use cons->index for preferred console
 registration
To: Michal Simek <monstr@monstr.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_025201_188554_87A291B4 
X-CRM114-Status: GOOD (  21.75  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michal Simek <michal.simek@xilinx.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Michal,

On Tue, Oct 15, 2019 at 11:22 AM Michal Simek <monstr@monstr.eu> wrote:
> On 15. 10. 19 11:19, Geert Uytterhoeven wrote:
> > On Mon, Sep 2, 2019 at 4:29 PM Michal Simek <michal.simek@xilinx.com> wrote:
> >> The reason for this patch is xilinx_uartps driver which create one dynamic
> >> instance per IP with unique major and minor combinations. drv->nr is in
> >> this case all the time setup to 1. That means that uport->line is all the
> >> time setup to 0 and drv->tty_driver->name_base is doing shift in name to
> >> for example ttyPS3.
> >>
> >> register_console() is looping over console_cmdline array and looking for
> >> proper name/index combination which is in our case ttyPS/3.
> >> That's why every instance of driver needs to be registered with proper
> >> combination of name/number (ttyPS/3). Using uport->line is doing
> >> registration with ttyPS/0 which is wrong that's why proper console index
> >> should be used which is in cons->index field.
> >>
> >> Also it is visible that recording console should be done based on
> >> information about console not about the port but in most cases numbers are
> >> the same and xilinx_uartps is only one exception now.
> >>
> >> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> >
> > This is now commit 91daae03188e0dd1 ("serial: core: Use cons->index
> > for preferred console registration") in tty-next.
> >
> > This has been bisected to break the serial console on (at least)
> > r8a7791/koelsch and r8a7795/h3-salvator-xs.
> >
> > The line "printk: console [ttySC0] enabled" is no longer printed.
> > The system continues booting without any serial console output, and the
> > login prompt never appears on the serial console.
> >
> > Reverting this commit fixes the issue.
>
> Sorry for trouble with this patch. Can you please point me to dts files
> for these boards and also what's the value you have in uport->line and

arch/arm/boot/dts/r8a7791-koelsch.dts
arch/arm64/boot/dts/renesas/r8a7795-salvator-xs.dts

> uport->cons->index?

On r8a7791/koelsch:

    Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
    platform serial8250: uport->line = 0, uport->cons->index = -1
    platform serial8250: uport->line = 1, uport->cons->index = -1
    platform serial8250: uport->line = 2, uport->cons->index = -1
    platform serial8250: uport->line = 3, uport->cons->index = -1
    SuperH (H)SCI(F) driver initialized
  * sh-sci e6e60000.serial: uport->line = 0, uport->cons->index = -1
  * e6e60000.serial: ttySC0 at MMIO 0xe6e60000 (irq = 79, base_baud =
0) is a scif
    printk: console [ttySC0] enabled
    sh-sci e6e68000.serial: uport->line = 1, uport->cons->index = 0
    e6e68000.serial: ttySC1 at MMIO 0xe6e68000 (irq = 80, base_baud =
0) is a scif

On r8a7795/salvator-xs:

    sh-sci e6550000.serial: uport->line = 1, uport->cons->index = -1
    e6550000.serial: ttySC1 at MMIO 0xe6550000 (irq = 34, base_baud =
0) is a hscif
  * sh-sci e6e88000.serial: uport->line = 0, uport->cons->index = -1
  * e6e88000.serial: ttySC0 at MMIO 0xe6e88000 (irq = 120, base_baud =
0) is a scif
    printk: console [ttySC0] enabled

Actual serial consoles marked with *.

There are no 8250 serial ports in the system, shmobile_defconfig just includes
driver support for it.

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
