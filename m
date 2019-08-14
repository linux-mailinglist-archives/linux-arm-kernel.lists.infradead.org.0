Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0245D8CD31
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 09:49:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mi/EZGHbprz5PdJaAEyTT908DpsRLiDpKpicxSjqCak=; b=kIzlNt6v1S6gHH
	qoXYB291mqGupAW6E6iwUDNQfZoUDl0foBpUT4rXEHTjGm/pky36C2I/OdsvHkjVPvSNTd82pIaox
	VrSQbwPVE2hS8tj0NLwXGG/5Ey5korY4ZiHtcJzw7KBUGzYpctVgkHtQpZPzj+PV0ZlwJq2eRZm0r
	U38nvPlDHf2UYMpvKjdxE95/BmqOUv0VS7HFU5oM+q6FNHqlz271/k0W+D1HlD4oOIA41pNYhhtgA
	90xPGrhXP/lqDWic77auck6/emCcnRkKbluxyL2TPh2Ww8W17mf58Tv1qNXgP1hNvNrdAbyb59ix5
	JNIu3YOOLCdrm9FRxCqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxo2N-0004dW-99; Wed, 14 Aug 2019 07:49:39 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxo27-0004d5-UW
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 07:49:25 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 6ADF980C8;
 Wed, 14 Aug 2019 07:49:49 +0000 (UTC)
Date: Wed, 14 Aug 2019 00:49:18 -0700
From: Tony Lindgren <tony@atomide.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 14/22] ARM: omap1: use pci_ioremap_io() for omap_cf
Message-ID: <20190814074918.GA52127@atomide.com>
References: <20190808212234.2213262-1-arnd@arndb.de>
 <20190808212234.2213262-15-arnd@arndb.de>
 <20190813103605.GL52127@atomide.com>
 <CAK8P3a0E+QUn9wcP5Obv-FitWyXCFwcp+oPConeO2p-NV1rqsw@mail.gmail.com>
 <20190813181158.GA26798@darkstar.musicnaut.iki.fi>
 <CAK8P3a0LjKrc+7c5Ht9OL7LfYyLnG9=y7u+w24ujA1xAid_yCQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a0LjKrc+7c5Ht9OL7LfYyLnG9=y7u+w24ujA1xAid_yCQ@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_004924_030985_5CD96FFA 
X-CRM114-Status: GOOD (  21.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

* Arnd Bergmann <arnd@arndb.de> [190813 19:34]:
> On Tue, Aug 13, 2019 at 8:12 PM Aaro Koskinen <aaro.koskinen@iki.fi> wrote:
> > On Tue, Aug 13, 2019 at 01:02:16PM +0200, Arnd Bergmann wrote:
> > > On Tue, Aug 13, 2019 at 12:36 PM Tony Lindgren <tony@atomide.com> wrote:
> >
> > > - I force CONFIG_PCI to be enabled here in order to keep the
> > >   asm/io.h logic unchanged. If PCI support in itself is an issue,
> > >   then turning on CONFIG_PCI without the rest of this patch
> > >   should also break.
> >
> > The board dies early, probably in pci_reserve_io():
> >
> > Starting kernel ...
> >
> > [    0.000000] Booting Linux on physical CPU 0x0
> > [    0.000000] Linux version 5.3.0-rc4-osk-los_80efa+-00028-g09f6f22a63e9 (aaro@amd-fx-6350) (gcc version 8.3.0 (GCC)) #1 Tue Aug 13 20:50:11 EEST 2019
> > [    0.000000] CPU: ARM926EJ-S [41069263] revision 3 (ARMv5TEJ), cr=0005317f
> > [    0.000000] CPU: VIVT data cache, VIVT instruction cache
> > [    0.000000] Machine: TI-OSK
> > [    0.000000] Ignoring tag cmdline (using the default kernel command line)
> > [    0.000000] printk: bootconsole [earlycon0] enabled
> > [    0.000000] Memory policy: Data cache writeback
> > [    0.000000] Internal error: Oops - undefined instruction: 0 [#1] ARM
> > [    0.000000] CPU: 0 PID: 0 Comm: swapper Not tainted 5.3.0-rc4-osk-los_80efa+-00028-g09f6f22a63e9 #1
> > [    0.000000] Hardware name: TI-OSK
> > [    0.000000] PC is at vm_area_add_early+0x1c/0x74
> 
> That sounds like an address conflict in the virtual addres space.
> 
> In multiplatform kernels, PCI I/O space is hardwired to addresses
> 0xfee00000-0xfeffffff,
> which happened to be available on all the other machines that needed it so far.
> 
> OMAP1_IO_VIRT is 0xfefb0000-0xfefeffff, which clearly overlaps with the end of
> the PCI I/O area.
> 
> We only really need 4KB of I/O space rather than the full 2MB, but it
> would also be
> good not to make this too machine specific.
> 
> Could we change OMAP1_IO_OFFSET to stay out of that area? Something like
> 
> diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
> index 97c114c1ef80..3b66d203dc98 100644
> --- a/arch/arm/Kconfig.debug
> +++ b/arch/arm/Kconfig.debug
> @@ -1794,9 +1794,9 @@ config DEBUG_UART_VIRT
>         default 0xfef00000 if ARCH_IXP4XX && !CPU_BIG_ENDIAN
>         default 0xfef00003 if ARCH_IXP4XX && CPU_BIG_ENDIAN
>         default 0xfef36000 if DEBUG_HIGHBANK_UART
> -       default 0xfefb0000 if DEBUG_OMAP1UART1 || DEBUG_OMAP7XXUART1
> -       default 0xfefb0800 if DEBUG_OMAP1UART2 || DEBUG_OMAP7XXUART2
> -       default 0xfefb9800 if DEBUG_OMAP1UART3 || DEBUG_OMAP7XXUART3
> +       default 0xff000000 if DEBUG_OMAP1UART1 || DEBUG_OMAP7XXUART1
> +       default 0xff000800 if DEBUG_OMAP1UART2 || DEBUG_OMAP7XXUART2
> +       default 0xff009800 if DEBUG_OMAP1UART3 || DEBUG_OMAP7XXUART3
>         default 0xff003000 if DEBUG_U300_UART
>         default 0xffd01000 if DEBUG_HIP01_UART
>         default DEBUG_UART_PHYS if !MMU
> diff --git a/arch/arm/mach-omap1/hardware.h b/arch/arm/mach-omap1/hardware.h
> index 232b8deef907..9fc76a3c9e57 100644
> --- a/arch/arm/mach-omap1/hardware.h
> +++ b/arch/arm/mach-omap1/hardware.h
> @@ -61,7 +61,7 @@ static inline u32 omap_cs3_phys(void)
> 
>  #endif /* ifndef __ASSEMBLER__ */
> 
> -#define OMAP1_IO_OFFSET                0x01000000      /* Virtual IO
> = 0xfefb0000 */
> +#define OMAP1_IO_OFFSET                0x00fb0000      /* Virtual IO
> = 0xff000000 */
>  #define OMAP1_IO_ADDRESS(pa)   IOMEM((pa) - OMAP1_IO_OFFSET)
> 
>  #include "serial.h"

Oh OK yeah sounds like that's the issue.

> There may be additional locations that hardcode the virtual address.

Those should be in mach-omap1/io.c, and I recall innovator had some
hardcoded fpga address that should also be checked.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
