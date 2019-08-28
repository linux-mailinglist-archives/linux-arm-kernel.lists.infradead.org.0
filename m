Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E1FA095F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 20:23:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c4/BkYBzEUj/QPFxf8ivEakiR9YKJGmgGr6Ki4ycsyg=; b=AK36MCtw62K/Mm
	ER8kpJKUgrl7fZH+phwDiXvReCsXJACx1b7Z7IuPG1yK7/Qs6Zy3y74l7IL6Amm3FYQp/Wzw5wTce
	IUrAPqI7EEivsEmUlIhW2ItW64G9YV4cUl7Zj86uTaojq/bbVk5gfalvyWICAO7ovJRak5WLowUXj
	BF41cTjqNkGfauPEE+YTBpSWtYJOUzePRBPOmYjYt+RupgeAT1eJSGjCZW6NaKF+VCDp6OQfr+/C4
	3xhQ6nP9zt+YBD38lMn/EaQoC0lQSL91uvJNAMPR+fvcn9g6N/O8zbHoYcoY9deIdvTbId4t/4tML
	KO7qzzAsv84FWPL+Zqiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i32bX-0000qz-Nb; Wed, 28 Aug 2019 18:23:35 +0000
Received: from emh04.mail.saunalahti.fi ([62.142.5.110])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i32bL-0000qf-2h
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 18:23:25 +0000
Received: from darkstar.musicnaut.iki.fi (85-76-76-175-nat.elisa-mobile.fi
 [85.76.76.175])
 by emh04.mail.saunalahti.fi (Postfix) with ESMTP id 40CF5300A0;
 Wed, 28 Aug 2019 21:23:19 +0300 (EEST)
Date: Wed, 28 Aug 2019 21:23:19 +0300
From: Aaro Koskinen <aaro.koskinen@iki.fi>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 14/22] ARM: omap1: use pci_ioremap_io() for omap_cf
Message-ID: <20190828182318.GL30291@darkstar.musicnaut.iki.fi>
References: <20190813103605.GL52127@atomide.com>
 <CAK8P3a0E+QUn9wcP5Obv-FitWyXCFwcp+oPConeO2p-NV1rqsw@mail.gmail.com>
 <20190813181158.GA26798@darkstar.musicnaut.iki.fi>
 <CAK8P3a0LjKrc+7c5Ht9OL7LfYyLnG9=y7u+w24ujA1xAid_yCQ@mail.gmail.com>
 <20190814074918.GA52127@atomide.com>
 <CAK8P3a3k_HOGqzMGjtc+7NSaK0Bsa_vxxRFLzY8aP6ev4wa9iA@mail.gmail.com>
 <20190816083403.GB1952@darkstar.musicnaut.iki.fi>
 <CAK8P3a3jqNxoihQ+UFvOZMg=AcF2yzHXs5ay6X1TZX8L3zQ3rg@mail.gmail.com>
 <20190827190453.GJ30291@darkstar.musicnaut.iki.fi>
 <CAK8P3a1PeBMRuweAmzrTQC85CmwdZPirG3HPg9aJ99p2U7zknQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a1PeBMRuweAmzrTQC85CmwdZPirG3HPg9aJ99p2U7zknQ@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_112323_462984_32C75FE7 
X-CRM114-Status: GOOD (  19.66  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [62.142.5.110 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
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

Hi,

On Wed, Aug 28, 2019 at 03:02:36PM +0200, Arnd Bergmann wrote:
> On Tue, Aug 27, 2019 at 9:05 PM Aaro Koskinen <aaro.koskinen@iki.fi> wrote:
> > On Tue, Aug 27, 2019 at 06:33:01PM +0200, Arnd Bergmann wrote:
> > > On Fri, Aug 16, 2019 at 10:34 AM Aaro Koskinen <aaro.koskinen@iki.fi> wrote:
> > > > However with earlyprintk it seems to hang as soon as kernel tries to print
> > > > something. So something goes wrong with early DEBUG_LL mapping code when
> > > > CONFIG_DEBUG_UART_VIRT=0xff000000 is used?
> > >
> > > I just redid the calculation and came out with the same address, so I
> > > don't think I put the wrong one there. The address also does not
> > > conflict with the PCI mapping, and the address is the same one that
> > > is installed later, so that should also be fine.
> > >
> > > Are you sure you used the correct address in the .config file? If you
> > > ran 'make oldconfig', the virtual address would not be changed here
> > > as I just modify the default for a fresh 'make omap1_defconfig'
> > > run or similar.
> >
> > Yes... You should be able to try this out also in QEMU to see the hang:
> 
> Haven't tried yet, but I took a look at the dump:
> 
> > $ qemu-system-arm -M sx1 -kernel sx1-zImage -nographic
> >
> > [ Hangs silently, press Ctrl-a c to enter monitor. ]
> >
> > QEMU 4.1.0 monitor - type 'help' for more information
> > (qemu) info registers
> > R00=c0379de1 R01=0000005b R02=00000000 R03=ff000000
> > R04=00000000 R05=00000031 R06=c038f119 R07=00000000
> > R08=00000000 R09=c038f50e R10=600001d3 R11=00000001
> > R12=00000010 R13=c0379de0 R14=c000e07c R15=c000dfcc
> > PSR=000001d3 ---- A svc32
> > FPSCR: 00000000
> >
> > from System.map:
> > c000df7c T printascii
> > c000dfe0 T printch
> 
> Ok, that is clearly the "busyloop" macro in
> arch/arm/include/debug/8250.S, checking if the data got sent.
> 
> The 'r2' register contains zero, so UART_LSR_TEMT and
> UART_LSR_THRE are not set, but presumably the mapping
> was installed right since you did not get a page fault.
> 
> I assume you checked that the uart output wasn't already broken
> by one of the earlier patches, right?

Correct, it's only with the mapping change patch it hangs.

> Also, looking at arch/arm/mach-omap1/include/mach/uncompress.h
> it seems that SX1 normally uses UART3, not UART1.
> Is that different in qemu?

In QEMU all uarts can be used, trying with UART3 as early console
hangs as well. (It prints Uncompressing... done. but I guess that's
done with the physical address.)

A.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
