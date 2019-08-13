Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA0A8B61E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 13:03:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kv0kN7FHNpEc1iP3vLe1xPRdEEjO1sYeLp/dAhT2430=; b=RKSeVPpxVETNWr
	1MBYHGupXwASJMPrCNHqTmZ6Fz/+80uHss3IAFESnVNoPneGDATFJ2wj62P552wmBH6Uuklb734R8
	PJ3XHL1d2Rq4z6nl+UPiGB9TuQvhwurG1bC7BSpkPGgkkbfNbVbSR1/kkm3A+JNVanxP/8zQbXOsZ
	APAp0RWKzKauk/KysemqiYOQXI+YRlUpMGTqDEM+Gsh/CV62aA4BP/ZLOrBlk95zKqI50dXsouJZv
	wguXokURGUgsHHCxPRQpB/6wFKVC9nk8UpEN/sUjshy2BRaam5dGKZuYm6nkrmWF2gBySCG7jL0qY
	II/Ft7QmheDk9pmf9ujg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxUZr-0003w7-9W; Tue, 13 Aug 2019 11:02:55 +0000
Received: from mail-qk1-f195.google.com ([209.85.222.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxUZX-0003rS-Cj
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 11:02:36 +0000
Received: by mail-qk1-f195.google.com with SMTP id r21so79330776qke.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 04:02:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WIVPRunU/w1dyBYpE62jjyhKpZiqDaIeAA95Lfp6mlw=;
 b=pnCkzZjyrY7pjz6HMDZcXpKxo9PaAMa5E7jct9gN+AAS124FsuhjhfL9WlBz8JsHcb
 EtYIoHr3LFJySixU34QCNgaeQ8s6IQSSNdzVHHYOa5xT1J9M+nsRmgVyKNUPIbJsD/LJ
 TypW7fCa7KtS4cOA6Y25eaf5GdXKbrt7ouyj8yviiDPp8UZTlGvfQNQxTk+/cs1cY4vY
 z9GVdIJt/CSIfRb8je3j7FdOUVvHANXU5CC069IwhqjMa3CPxBLhFh0t30TKpDOq6NRB
 IWyzDYBzl58M1S5qm3KKfUEFvMds1hNCGlhfs2JLpo5DAXPYBPpNOfPxDVX6QwlECDBP
 4mMg==
X-Gm-Message-State: APjAAAUOlarLG0/GpDzIqJXtaDrqj2XKANJsAH2Z+KfVNQWYhFWJ6Ps5
 mDML2PZJkdSeGI0yzXEJM+AAX+3kRgz3aAaWKKo=
X-Google-Smtp-Source: APXvYqy/CATnyfix26F5hVCSlz5bm0U3GsHRNm6L5LCpSh5nvRem8bN2wSesbPtcSYmDrOPrd5ebcEHN4QWXNlj1ZGw=
X-Received: by 2002:a05:620a:b:: with SMTP id
 j11mr33354187qki.352.1565694153731; 
 Tue, 13 Aug 2019 04:02:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190808212234.2213262-1-arnd@arndb.de>
 <20190808212234.2213262-15-arnd@arndb.de>
 <20190813103605.GL52127@atomide.com>
In-Reply-To: <20190813103605.GL52127@atomide.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 13 Aug 2019 13:02:16 +0200
Message-ID: <CAK8P3a0E+QUn9wcP5Obv-FitWyXCFwcp+oPConeO2p-NV1rqsw@mail.gmail.com>
Subject: Re: [PATCH 14/22] ARM: omap1: use pci_ioremap_io() for omap_cf
To: Tony Lindgren <tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_040235_527294_64373C77 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.4 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Dominik Brodowski <linux@dominikbrodowski.net>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 linux-omap <linux-omap@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 12:36 PM Tony Lindgren <tony@atomide.com> wrote:

> * Arnd Bergmann <arnd@arndb.de> [190808 21:34]:
> > The ISA I/O space handling in omap_cf is incompatible with
> > PCI drivers in a multiplatform kernel, and requires a custom
> > mach/io.h.
> >
> > Change the driver to use pci_ioremap_io() like PCI drivers do,
> > so the generic ioport access can work across platforms.
> >
> > To actually use that code, we have to select CONFIG_PCI
> > here.
> >
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>
> Looks like this series boots for me on 5912osk up to this
> patch

Ok, that's something. Thanks for testing!

>, but this patch breaks booting somehow.
>
> Any ideas for fixes?

I can think of multiple possible issues:

- I force CONFIG_PCI to be enabled here in order to keep the
  asm/io.h logic unchanged. If PCI support in itself is an issue,
  then turning on CONFIG_PCI without the rest of this patch
  should also break.

- I see that osk is the one board that actually has a CF slot.
  If it crashes while trying to access a CF device, then I most
  likely screwed up the I/O port mapping itself, so it uses the
  wrong virtual and/or physical address for the access.

- I made on the assumption that only CF devices use inb/outb
  on any OMAP1 machine. If there is a driver that uses inb/outb
  instead of readb/writeb, it would have worked by chance before
  but stopped working now.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
