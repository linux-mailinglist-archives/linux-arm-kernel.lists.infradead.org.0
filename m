Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF182A0272
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 15:03:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wryet1qdi9r9ejVTnT/aMO8xhMSEwW1dZXyeGKijK6k=; b=h7kTDR+MJfz6zu
	WmV08NYDfex01jExaIkIHfbHvGYh5qjVMMtP410q06+yaxQSY/UF9gMf96c4UG2bJBj1mrviS9Y1j
	Al1tVTJaRI1H9SIs4QJK5ecIaUVD8S0vYHEnhb/5BHu0D7qMs6f3gQtfpLTVO14FKpKQXVeURHcfP
	fQNhNZq6Y+5ohwPOXO2YMU40Dzd4/WhGBbX9AJ3eThP2xmjA+iAIU2jJVECnkE8PRDA88lyVxiQS6
	nWB69T4gB2ZeEIjzB4u9whv2XaljYhfGczaQTHOYlGnhplGRE9rA0x8IlHL5dIboBEmJ9Ossyfp0R
	Lv7+uxaQ3ndOC3fKEJ2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2xbP-0002RL-48; Wed, 28 Aug 2019 13:03:07 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2xbC-0002Hg-Lb
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 13:02:56 +0000
Received: by mail-qt1-f194.google.com with SMTP id b11so2834819qtp.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 06:02:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IGBGJGSXKu1XI7QCTZRx+ka85VzBENyC+3JcanBjN3E=;
 b=Rkd3EU34O9KhN9WJO3THDpHpzm6/N4vt97f76VirN2XBO1XqwN0X35AATfG2TrEIPo
 KagBO2KGp/s1heyZo6LvkxBtQHFcjZR2R7x4ykxhEor9Qe6rJMy7XKlyTQ0tQr8VeY5t
 ZgjRHAYwgL0nb95SaBQ74Q6pgObGmWR4u4LivREXmHVwmi3zC9FcVKqq6zDWS2ptASNH
 DuDC2ED4824tmSb4yI3ZARkHTsCv+MOeEbRUv7kDWMchfH5YI7tZvQ/sNYVA2RrzhOIh
 reBSfrYhFP+pr3uC4El1OepD66UDgdQqn3FygGrd4JDL1Ox8rdXyps7d66Y8O5dpOoEU
 P8Lw==
X-Gm-Message-State: APjAAAVrA9Ta/sA+wVXeRkeas5rKyXFyro5+fjj3qzju3yHBbKtjLdjU
 g9d39LwZGXXwAAkhBRRP46zSIqvvtHNlusBAAto=
X-Google-Smtp-Source: APXvYqwFs2+ff1HO4EmjqAOCzKXa7tMdrsXizeCnfMrVB5CqO4/vjsoIDKOUj+3CtQPhIKsdnKwWMimhgoCxxhSPV9c=
X-Received: by 2002:ac8:239d:: with SMTP id q29mr4036253qtq.304.1566997372955; 
 Wed, 28 Aug 2019 06:02:52 -0700 (PDT)
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
 <CAK8P3a3jqNxoihQ+UFvOZMg=AcF2yzHXs5ay6X1TZX8L3zQ3rg@mail.gmail.com>
 <20190827190453.GJ30291@darkstar.musicnaut.iki.fi>
In-Reply-To: <20190827190453.GJ30291@darkstar.musicnaut.iki.fi>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 28 Aug 2019 15:02:36 +0200
Message-ID: <CAK8P3a1PeBMRuweAmzrTQC85CmwdZPirG3HPg9aJ99p2U7zknQ@mail.gmail.com>
Subject: Re: [PATCH 14/22] ARM: omap1: use pci_ioremap_io() for omap_cf
To: Aaro Koskinen <aaro.koskinen@iki.fi>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_060254_709545_53AD2C74 
X-CRM114-Status: GOOD (  18.07  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Dominik Brodowski <linux@dominikbrodowski.net>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 linux-omap <linux-omap@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 9:05 PM Aaro Koskinen <aaro.koskinen@iki.fi> wrote:
> On Tue, Aug 27, 2019 at 06:33:01PM +0200, Arnd Bergmann wrote:
> > On Fri, Aug 16, 2019 at 10:34 AM Aaro Koskinen <aaro.koskinen@iki.fi> wrote:
> > > However with earlyprintk it seems to hang as soon as kernel tries to print
> > > something. So something goes wrong with early DEBUG_LL mapping code when
> > > CONFIG_DEBUG_UART_VIRT=0xff000000 is used?
> >
> > I just redid the calculation and came out with the same address, so I
> > don't think I put the wrong one there. The address also does not
> > conflict with the PCI mapping, and the address is the same one that
> > is installed later, so that should also be fine.
> >
> > Are you sure you used the correct address in the .config file? If you
> > ran 'make oldconfig', the virtual address would not be changed here
> > as I just modify the default for a fresh 'make omap1_defconfig'
> > run or similar.
>
> Yes... You should be able to try this out also in QEMU to see the hang:

Haven't tried yet, but I took a look at the dump:

> $ qemu-system-arm -M sx1 -kernel sx1-zImage -nographic
>
> [ Hangs silently, press Ctrl-a c to enter monitor. ]
>
> QEMU 4.1.0 monitor - type 'help' for more information
> (qemu) info registers
> R00=c0379de1 R01=0000005b R02=00000000 R03=ff000000
> R04=00000000 R05=00000031 R06=c038f119 R07=00000000
> R08=00000000 R09=c038f50e R10=600001d3 R11=00000001
> R12=00000010 R13=c0379de0 R14=c000e07c R15=c000dfcc
> PSR=000001d3 ---- A svc32
> FPSCR: 00000000
>
> from System.map:
> c000df7c T printascii
> c000dfe0 T printch

Ok, that is clearly the "busyloop" macro in
arch/arm/include/debug/8250.S, checking if the data got sent.

The 'r2' register contains zero, so UART_LSR_TEMT and
UART_LSR_THRE are not set, but presumably the mapping
was installed right since you did not get a page fault.

I assume you checked that the uart output wasn't already broken
by one of the earlier patches, right?

Also, looking at arch/arm/mach-omap1/include/mach/uncompress.h
it seems that SX1 normally uses UART3, not UART1.
Is that different in qemu?

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
