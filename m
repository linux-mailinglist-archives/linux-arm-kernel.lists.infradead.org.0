Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C8398C192
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 21:34:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fOBYWGXrExD8s+iwPqGzAI+pq2qu8EIkHSHoXyZrqI8=; b=kiX1Fm8ExAyx4/
	HDhqok15Y4L0+Pwz2EEjsAfMGLICEM/oGUtjLQqR4aD0SxKywEUov+KP2U2aJKSIZjYEbaOEl+z6Z
	bDycafP82eMWJTBs3kibal20voLwzAQOnFyQVdc8AmrN9BmE18oiMHjGYqgPAEIb2WcR/jxbsARR9
	jhINk7VgTgqOpx2n7EFOzvEmX15QzAF8AImB6Oar3yXvCNXk54icm0E1RkHk+KSUc/toyXjVfD6I1
	pfgKrvZt1TIWMltHKRJkdM8ZcsxYzNmk6+AihtaS9PZ7vcU7pFxkfAoMqCEuz6I/PNhX63BHdHIOk
	vpjZ1xfJIRO6bf2SIQRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxcYk-0004n4-31; Tue, 13 Aug 2019 19:34:18 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxcYZ-0004ma-Gw
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 19:34:08 +0000
Received: by mail-qt1-f194.google.com with SMTP id u34so8281133qte.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 12:34:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IrNYqnrvmJh/91dlAAnnW0hWppUM4hXZeBrKa/Inzcg=;
 b=Bcouf2PyeTOXCCZoazgd4NUAY11jlsnAZqdBng0jbvaEhc8qZVcmXaEo/UsYuB7IQV
 pvCybSqtRSDTck1mDdpoZHHY+ogpDOUU32+YLk62GrfsG9IfuKy9DrXa2VrdcQS9P+jL
 eRLR/HzhdGoRGfL5hHPAldCUHUhQNTBNq0glboWYp4FrIfSFa6ILp9MFZQzxj93kyX6y
 Smg83rfJ+3qzq9/3cFaM+hak/I6lKNWCVfaNEcwOSAyPbIdTXiWPMeaxYZ4aBIHkgKd7
 KNF4ZWtPH4dgOkhpHxQXdch8bvsfVwupC09ESd0kxOzKPfotZI7stIM7Ai6JGGVJTkAP
 athA==
X-Gm-Message-State: APjAAAVBlvfiucLtdx9TrunYjSxrP+x0V+B1svUAMJ/CbVeFxOZzZuCv
 LTw+3bqebiG8BgGbJo7G+a5uFrxZgRWXxI+DUEw=
X-Google-Smtp-Source: APXvYqzDVGgCy8YeXkynnehJIA7xTZe4NKEdf8nNIC8nlYN5SK1TrTd5ILkEAKU8XVbhCAvalyqiPKaciPXoQNF05Pk=
X-Received: by 2002:a0c:dd86:: with SMTP id v6mr78537qvk.176.1565724846213;
 Tue, 13 Aug 2019 12:34:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190808212234.2213262-1-arnd@arndb.de>
 <20190808212234.2213262-15-arnd@arndb.de>
 <20190813103605.GL52127@atomide.com>
 <CAK8P3a0E+QUn9wcP5Obv-FitWyXCFwcp+oPConeO2p-NV1rqsw@mail.gmail.com>
 <20190813181158.GA26798@darkstar.musicnaut.iki.fi>
In-Reply-To: <20190813181158.GA26798@darkstar.musicnaut.iki.fi>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 13 Aug 2019 21:33:49 +0200
Message-ID: <CAK8P3a0LjKrc+7c5Ht9OL7LfYyLnG9=y7u+w24ujA1xAid_yCQ@mail.gmail.com>
Subject: Re: [PATCH 14/22] ARM: omap1: use pci_ioremap_io() for omap_cf
To: Aaro Koskinen <aaro.koskinen@iki.fi>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_123407_560760_46014054 
X-CRM114-Status: GOOD (  19.06  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On Tue, Aug 13, 2019 at 8:12 PM Aaro Koskinen <aaro.koskinen@iki.fi> wrote:
> On Tue, Aug 13, 2019 at 01:02:16PM +0200, Arnd Bergmann wrote:
> > On Tue, Aug 13, 2019 at 12:36 PM Tony Lindgren <tony@atomide.com> wrote:
>
> > - I force CONFIG_PCI to be enabled here in order to keep the
> >   asm/io.h logic unchanged. If PCI support in itself is an issue,
> >   then turning on CONFIG_PCI without the rest of this patch
> >   should also break.
>
> The board dies early, probably in pci_reserve_io():
>
> Starting kernel ...
>
> [    0.000000] Booting Linux on physical CPU 0x0
> [    0.000000] Linux version 5.3.0-rc4-osk-los_80efa+-00028-g09f6f22a63e9 (aaro@amd-fx-6350) (gcc version 8.3.0 (GCC)) #1 Tue Aug 13 20:50:11 EEST 2019
> [    0.000000] CPU: ARM926EJ-S [41069263] revision 3 (ARMv5TEJ), cr=0005317f
> [    0.000000] CPU: VIVT data cache, VIVT instruction cache
> [    0.000000] Machine: TI-OSK
> [    0.000000] Ignoring tag cmdline (using the default kernel command line)
> [    0.000000] printk: bootconsole [earlycon0] enabled
> [    0.000000] Memory policy: Data cache writeback
> [    0.000000] Internal error: Oops - undefined instruction: 0 [#1] ARM
> [    0.000000] CPU: 0 PID: 0 Comm: swapper Not tainted 5.3.0-rc4-osk-los_80efa+-00028-g09f6f22a63e9 #1
> [    0.000000] Hardware name: TI-OSK
> [    0.000000] PC is at vm_area_add_early+0x1c/0x74

That sounds like an address conflict in the virtual addres space.

In multiplatform kernels, PCI I/O space is hardwired to addresses
0xfee00000-0xfeffffff,
which happened to be available on all the other machines that needed it so far.

OMAP1_IO_VIRT is 0xfefb0000-0xfefeffff, which clearly overlaps with the end of
the PCI I/O area.

We only really need 4KB of I/O space rather than the full 2MB, but it
would also be
good not to make this too machine specific.

Could we change OMAP1_IO_OFFSET to stay out of that area? Something like

diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
index 97c114c1ef80..3b66d203dc98 100644
--- a/arch/arm/Kconfig.debug
+++ b/arch/arm/Kconfig.debug
@@ -1794,9 +1794,9 @@ config DEBUG_UART_VIRT
        default 0xfef00000 if ARCH_IXP4XX && !CPU_BIG_ENDIAN
        default 0xfef00003 if ARCH_IXP4XX && CPU_BIG_ENDIAN
        default 0xfef36000 if DEBUG_HIGHBANK_UART
-       default 0xfefb0000 if DEBUG_OMAP1UART1 || DEBUG_OMAP7XXUART1
-       default 0xfefb0800 if DEBUG_OMAP1UART2 || DEBUG_OMAP7XXUART2
-       default 0xfefb9800 if DEBUG_OMAP1UART3 || DEBUG_OMAP7XXUART3
+       default 0xff000000 if DEBUG_OMAP1UART1 || DEBUG_OMAP7XXUART1
+       default 0xff000800 if DEBUG_OMAP1UART2 || DEBUG_OMAP7XXUART2
+       default 0xff009800 if DEBUG_OMAP1UART3 || DEBUG_OMAP7XXUART3
        default 0xff003000 if DEBUG_U300_UART
        default 0xffd01000 if DEBUG_HIP01_UART
        default DEBUG_UART_PHYS if !MMU
diff --git a/arch/arm/mach-omap1/hardware.h b/arch/arm/mach-omap1/hardware.h
index 232b8deef907..9fc76a3c9e57 100644
--- a/arch/arm/mach-omap1/hardware.h
+++ b/arch/arm/mach-omap1/hardware.h
@@ -61,7 +61,7 @@ static inline u32 omap_cs3_phys(void)

 #endif /* ifndef __ASSEMBLER__ */

-#define OMAP1_IO_OFFSET                0x01000000      /* Virtual IO
= 0xfefb0000 */
+#define OMAP1_IO_OFFSET                0x00fb0000      /* Virtual IO
= 0xff000000 */
 #define OMAP1_IO_ADDRESS(pa)   IOMEM((pa) - OMAP1_IO_OFFSET)

 #include "serial.h"

There may be additional locations that hardcode the virtual address.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
