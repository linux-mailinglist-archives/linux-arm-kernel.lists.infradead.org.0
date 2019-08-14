Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8BD38DFA4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 23:10:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XALdLgT6jR8wQDKpnjUixsCs/5AHY8zTE+MOb/Vr174=; b=swv88c9O+yxRP0
	j+ZTZH1UW4B4S06r9x+LQO+uPsP2otjP1iJFnxIP75L4DywuNGsFFidSnTL83423W9fE6eVowtRIP
	njmIRID7rBUj8jeFbyFmbYWCGL0Rp5t5/C/T54PM2Uapwju8OhhSVWon54oeVWHpHi9ehfSGZxXpN
	ALZyTCUiWGQ0LaFC7ai+JUIUee/D/8urrtu5P1iAwEFyNpP80/KIwWP2vdO9FjguUOi7n9dQ/Skct
	U4LeUETwa30PoOgN8xre4Z82DIJyw99PQiijobJhEwyOGjITLQe9dJqjXJDaGYvRKlJ1rKdNlciHo
	ZUT8AI5pddfQDJoYM0Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy0XQ-0003NP-37; Wed, 14 Aug 2019 21:10:32 +0000
Received: from emh01.mail.saunalahti.fi ([62.142.5.107])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy0X3-0002lG-Bc
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 21:10:11 +0000
Received: from darkstar.musicnaut.iki.fi (85-76-96-82-nat.elisa-mobile.fi
 [85.76.96.82])
 by emh01.mail.saunalahti.fi (Postfix) with ESMTP id A8FA6200B2;
 Thu, 15 Aug 2019 00:10:02 +0300 (EEST)
Date: Thu, 15 Aug 2019 00:10:02 +0300
From: Aaro Koskinen <aaro.koskinen@iki.fi>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 21/22] ARM: omap1: use common clk framework
Message-ID: <20190814211002.GA1952@darkstar.musicnaut.iki.fi>
References: <20190808212234.2213262-1-arnd@arndb.de>
 <20190808214347.2865294-1-arnd@arndb.de>
 <20190808214347.2865294-2-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808214347.2865294-2-arnd@arndb.de>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_141009_746467_831767BB 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [62.142.5.107 listed in list.dnswl.org]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
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
Cc: Paul Walmsley <paul@pwsan.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Tony Lindgren <tony@atomide.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thu, Aug 08, 2019 at 11:43:39PM +0200, Arnd Bergmann wrote:
> The omap1 clock driver now uses types and calling conventions
> that are compatible with the common clk core.
> 
> Turn on CONFIG_COMMON_CLK and remove all the code that is
> now duplicated.
> 
> Note: if this previous steps didn't already break it, this one
> most likely will, because the interfaces are very likely to
> have different semantics.

QEMU SX1 board works up to this patch (the I/O virtual address change
included). With this patch, it seems to fail to allocate memory during
omap1_init_early() (the log is a bit messy as I extracted it using QEMU
memory dumping):

swapper: page allocation failure: order:0, mode:0x0(), nodemask=(null)
CPU: 0 PID: 0 Comm: swapper Not tainted 5.3.0-rc4-sx1-los_80efa++ #1
Hardware name: OMAP310 based Siemens SX1
[<c000dc44>] (unwind_backtrace) from [<c000cb00>] (show_stack+0x10/0x18)
[<c000cb00>] (show_stack) from [<c0172ba8>] (dump_stack+0x18/0x24)
[<c0172ba8>] (dump_stack) from [<c00844e8>] (warn_alloc+0x90/0x140)
[<c00844e8>] (warn_alloc) from [<c0084dcc>] (__alloc_pages_nodemask+0x7a4/0x9cc)
[<c0084dcc>] (__alloc_pages_nodemask) from [<c008df24>] (slob_new_pages.constpro
p.2+0x10/0x3c)
[<c008df24>] (slob_new_pages.constprop.2) from [<c008e208>] (slob_alloc.constprop.1+0xe4/0x1e8)
[<c008e208>] (slob_alloc.constprop.1) from [<c008e344>] (__kmalloc+0x38/0xb0)
[<c008e344>] (__kmalloc) from [<c0126514>] (__clk_register+0x20/0x62c)
[<c0126514>] (__clk_register) from [<c01f6614>] (omap1_clk_init+0x88/0x220)
[<c01f6614>] (omap1_clk_init) from [<c01f5820>] (omap1_init_early+0x20/0x30)
[<c01f5820>] (omap1_init_early) from [<c01f09e8>] (start_kernel+0x48/0x408)
[<c01f09e8>] (start_kernel) from [<00000000>] (0x0)
Clocks: ARM_SYSST: 0x003a DPLL_CTL: 0x2002 ARM_CKCTL: 0x3000
Clocking rate (xtal/DPLL1/MPU): 12.0/12.0/0.0 MHz
"8<--- cut here ---
"Unable to handle kernel NULL pointer dereference at virtual address 00000018
"pgd = (ptrval)
"[00000018] *pgd=00000000
Internal error: Oops: 5 [#1] ARM
CPU: 0 PID: 0 Comm: swapper Not tainted 5.3.0-rc4-sx1-los_80efa++ #1
Hardware name: OMAP310 based Siemens SX1
PC is at clk_hw_get_parent+0x4/0x14
LR is at omap1_clk_enable+0xc/0xcc
OMAP310 based Siemens SX1
[    0.000000]  free:0 free_pcp:0 free_cma:0
pc : [<c0126cd0>]    lr : [<c00128d4>]    psr: 600001d3
sp : c03aff88  ip : 00000000  fp : 00000000
r10: 00000001  r9 : 54029252  r8 : 10000100
r7 : c03b1000  r6 : 00002002  r5 : 0000003a  r4 : c03b5444
r3 : 00000000  r2 : c03b9818  r1 : ff03ce08  r0 : c03b5444
Flags: nZCv  IRQs off  FIQs off  Mode SVC_32  ISA ARM  Segment user
Control: 0000317f  Table: 10004000  DAC: 00000055
Process swapper (pid: 0, stack limit = 0x(ptrval))
Stack: (0xc03aff88 to 0xc03b0000)
ff80:                   c03b5438 0000003a 00002002 c01f6734 00000000 00000057
ffa0: 0000313d c01f5820 00000000 c01f09e8 00000000 00000000 00000000 00000000
ffc0: 00000000 00000000 00000000 c0201a38 00000000 c01f0330 00000057 0000313d
ffe0: 00000265 10000100 54029252 0000317f 00000000 00000000 00000000 00000000
[<c0126cd0>] (clk_hw_get_parent) from [<c00128d4>] (omap1_clk_enable+0xc/0xcc)
[<c00128d4>] (omap1_clk_enable) from [<c01f6734>] (omap1_clk_init+0x1a8/0x220)
[<c01f6734>] (omap1_clk_init) from [<c01f5820>] (omap1_init_early+0x20/0x30)
[<c01f5820>] (omap1_init_early) from [<c01f09e8>] (start_kernel+0x48/0x408)
[<c01f09e8>] (start_kernel) from [<00000000>] (0x0)

A.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
