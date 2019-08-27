Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF6289F043
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 18:33:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tINXcfFA7wVGhYo32AENQvnVl7RrX0D7v6lFQsLIWgg=; b=ZYj0JBh9ZWENbb
	+N4NLZNrdRfN0Eq6KsRTibuLhNVfasu+aUK2YOtyqpbSx1z4R8L7LLssgpUXcc9mgJGeIE54zInVP
	Hz/hF2JRcIX9HcKvW5nIYOVVIHePnlsJqP3pWQoc8Uisx7mG0vfq4vV6TrTDuvX+LkaL4HdgepEyY
	TwyS19iC4BhwqVWzgLd4kijuDVwyVb8zh/s1iCA3h/K3tboGZKBiTdvpeah943e/xmLVGkRREpsni
	jy/PNmr1lbsq1VaZ0yeqg2IkAiejlOeef0E4W/biCwK/UAgqAMhyTNUqCzEjLIXiGxM8CnbpFrmoF
	FdLdvj1ftBlQhpi/hamA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2ePi-0004Mn-Jn; Tue, 27 Aug 2019 16:33:46 +0000
Received: from mail-qk1-f196.google.com ([209.85.222.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2ePH-0004A4-4i
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 16:33:20 +0000
Received: by mail-qk1-f196.google.com with SMTP id 201so17510101qkm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 09:33:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/zg0bV3qxRrrZ8M4aU2pwZR/A1NqBI7vpxBYLuL1/5c=;
 b=o1Vv1kDVQmIh1Zv09cSECJIyikxOTsH1a5+ZjhKMVJmo91Hu8EtXQnVRee950l6GFI
 hQHLAy5Ah3P53zFVGJaG6b70cmevwcx7NWZw4HwFoypBPuqEEd84lBzZeWp0Jvn5YsF5
 AZG+nH0NgNluU7rMZKuTxQCk1ogW5Vwv7YJrcrxZi/62/G8mr60+HW72vpt53xZ99GjE
 6zpsm6GA27cIT/4d6syh2PYX+kw8mrDie4s8zv4VLOdbAQCK7ekGgTuW555zCRym4yAf
 mUms9869Ydu8isMLCBIz2L1y8QViaZWSRlk9vuyeycQsPiYP2KjoA1W1ioBjnSQWI+8H
 yMMQ==
X-Gm-Message-State: APjAAAWBEUGEHnVVPgLlc4PxBzfO1CXG//KKuxBTKut8ktSC0w122jCV
 GqnzThVRWKs22c+kO/IHfdqkNEDp9MVEepg17TQ=
X-Google-Smtp-Source: APXvYqxmXX+KSa+dqu82Y9804plYSWjLPoR2eL0zXepUxEM9uaGcvZ5C/ITNAAIVCt20lQg/KUKT+p99sfbOHZrATd8=
X-Received: by 2002:a37:4b0d:: with SMTP id y13mr22291349qka.3.1566923597978; 
 Tue, 27 Aug 2019 09:33:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190808212234.2213262-1-arnd@arndb.de>
 <20190808212234.2213262-15-arnd@arndb.de>
 <20190813103605.GL52127@atomide.com>
 <CAK8P3a0E+QUn9wcP5Obv-FitWyXCFwcp+oPConeO2p-NV1rqsw@mail.gmail.com>
 <20190813181158.GA26798@darkstar.musicnaut.iki.fi>
 <CAK8P3a0LjKrc+7c5Ht9OL7LfYyLnG9=y7u+w24ujA1xAid_yCQ@mail.gmail.com>
 <20190814074918.GA52127@atomide.com>
 <CAK8P3a3k_HOGqzMGjtc+7NSaK0Bsa_vxxRFLzY8aP6ev4wa9iA@mail.gmail.com>
 <20190816083403.GB1952@darkstar.musicnaut.iki.fi>
In-Reply-To: <20190816083403.GB1952@darkstar.musicnaut.iki.fi>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 27 Aug 2019 18:33:01 +0200
Message-ID: <CAK8P3a3jqNxoihQ+UFvOZMg=AcF2yzHXs5ay6X1TZX8L3zQ3rg@mail.gmail.com>
Subject: Re: [PATCH 14/22] ARM: omap1: use pci_ioremap_io() for omap_cf
To: Aaro Koskinen <aaro.koskinen@iki.fi>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_093319_179763_412B8CBD 
X-CRM114-Status: GOOD (  18.33  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Dominik Brodowski <linux@dominikbrodowski.net>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 linux-omap <linux-omap@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 10:34 AM Aaro Koskinen <aaro.koskinen@iki.fi> wrote:
> On Wed, Aug 14, 2019 at 12:36:40PM +0200, Arnd Bergmann wrote:
> > On Wed, Aug 14, 2019 at 9:49 AM Tony Lindgren <tony@atomide.com> wrote:
> > > * Arnd Bergmann <arnd@arndb.de> [190813 19:34]:
> > > > -#define OMAP1_IO_OFFSET                0x01000000      /* Virtual IO
> > > > = 0xfefb0000 */
> > > > +#define OMAP1_IO_OFFSET                0x00fb0000      /* Virtual IO
> > > > = 0xff000000 */
> > > >  #define OMAP1_IO_ADDRESS(pa)   IOMEM((pa) - OMAP1_IO_OFFSET)
> > >
> > > Oh OK yeah sounds like that's the issue.
> > >
> > > > There may be additional locations that hardcode the virtual address.
> > >
> > > Those should be in mach-omap1/io.c, and I recall innovator had some
> > > hardcoded fpga address that should also be checked.
> >
> > I see four boards with hardcoded I/O addresses, but they are all below
> > the PCI I/O virtual address range, and are not affected by that change.
> >
> > For the innovator FPGA access, this was ok, it uses the correct address
> > in the OMAP1_IO_OFFSET range.
>
> I tried testing this on OSK board. If I boot with earlyprintk disabled,
> it boots OK and everything works (also CF card) with your playground
> commit 5723b6686943.
>
> However with earlyprintk it seems to hang as soon as kernel tries to print
> something. So something goes wrong with early DEBUG_LL mapping code when
> CONFIG_DEBUG_UART_VIRT=0xff000000 is used?

I just redid the calculation and came out with the same address, so I
don't think I put the wrong one there. The address also does not
conflict with the PCI mapping, and the address is the same one that
is installed later, so that should also be fine.

Are you sure you used the correct address in the .config file? If you
ran 'make oldconfig', the virtual address would not be changed here
as I just modify the default for a fresh 'make omap1_defconfig'
run or similar.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
