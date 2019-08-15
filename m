Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F618E540
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 09:11:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zKevTdbj0OB1bk2h0N47tWXM+Sz5dlXRMk4PektSR6U=; b=W/yNyLWfTrUzxz
	XonLc2/DEPRh+RwqE5iZVEfJdRb3Rg64HAwJZuylLvx5mIqUyNX20wreQhbRdUtUNiengIX6waUAN
	S9Sxy2V0yxTUa+Dzm6yr3Wcm4FGoc0YR6nAObdlu6nr7U3n4Lo94TUKDmCb+N8C4BmwxK57ETh3Eq
	QirV8yBkFY+oo9H4YSHMMd0wJdB2Vbq6Df6aXAwZolc+zKamnpOVxls41I6jgmkzGTTLeX0YLtbt3
	RIDPEBClSy53yOgog6nlvI7bGRiXX8Yg7awM9WT5xQxWxiSXCRV/RzyD5E435XG3aYyz3/QhoQlZq
	3IQ5+PZrr5exy9iEJpvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy9v3-0002mw-Q0; Thu, 15 Aug 2019 07:11:33 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy9uL-0002m7-EL
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 07:10:51 +0000
Received: by mail-qt1-f193.google.com with SMTP id j15so1376704qtl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 00:10:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+XZYmbsnbr0sSwIKTeFZGEhcqBxG1btN9f5DRyi29Vc=;
 b=c5p4xhjMUtJxQa3RMlqt7LlLg3aG1oDH6ANNn8UErLUevuuASRP3Y3vUykC5j0oWvd
 iWx3o6w7oBT4PqmSXVKFVOmE1atUu3LoWLj5CR5+QQoHAO/D0ANUU/0ywrd/MCFhkf4L
 rlSWOT3EbvCEYF+EreOsmnDDL2DXKkvWI+bTf0p/IZ0NrRWYrNcBLrdivkhZQcV9o0wY
 gVYwOvKUn/c/NYBjB7VzC/kBJVTdOq7TCMnViJ0sqep7OK4u8KmNsEw+wDyjGpuZSv2l
 eqzFLKrJARAghlzelOUtvoFQh2OM7E03RdLsk45g1+VXdlyddFa0I/QgtBQJkYvPVWPR
 O+ew==
X-Gm-Message-State: APjAAAVnsoUng+9BGrjRVr7w2NPHq3rpJSnzhgYqQm0R7Y+5/abwwYud
 pZOnlSpIIjMrxxxt142w2eBjGrhRfbz1kKkUoYw=
X-Google-Smtp-Source: APXvYqzes2xrmqdbClCROX/Q+PfszKVeI1DW0ZX+TIylT9deTu0v9IMyny/8McBlEj0PozeCVXwlC25l9yO+FLH9dOM=
X-Received: by 2002:ac8:117:: with SMTP id e23mr2752639qtg.18.1565853047353;
 Thu, 15 Aug 2019 00:10:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190808212234.2213262-1-arnd@arndb.de>
 <20190808214347.2865294-1-arnd@arndb.de>
 <20190808214347.2865294-2-arnd@arndb.de>
 <20190814211002.GA1952@darkstar.musicnaut.iki.fi>
In-Reply-To: <20190814211002.GA1952@darkstar.musicnaut.iki.fi>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 15 Aug 2019 09:10:31 +0200
Message-ID: <CAK8P3a36dztkctUD2jZND9gR7zo2joZu4PPzVozDJCi9gLcmkg@mail.gmail.com>
Subject: Re: [PATCH 21/22] ARM: omap1: use common clk framework
To: Aaro Koskinen <aaro.koskinen@iki.fi>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_001049_529090_6276F6C0 
X-CRM114-Status: GOOD (  24.09  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Paul Walmsley <paul@pwsan.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Tony Lindgren <tony@atomide.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 linux-omap <linux-omap@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 11:10 PM Aaro Koskinen <aaro.koskinen@iki.fi> wrote:
>
> Hi,
>
> On Thu, Aug 08, 2019 at 11:43:39PM +0200, Arnd Bergmann wrote:
> > The omap1 clock driver now uses types and calling conventions
> > that are compatible with the common clk core.
> >
> > Turn on CONFIG_COMMON_CLK and remove all the code that is
> > now duplicated.
> >
> > Note: if this previous steps didn't already break it, this one
> > most likely will, because the interfaces are very likely to
> > have different semantics.
>
> QEMU SX1 board works up to this patch (the I/O virtual address change
> included). With this patch, it seems to fail to allocate memory during
> omap1_init_early() (the log is a bit messy as I extracted it using QEMU
> memory dumping):

That sounds pretty good, I definitely did not expect this patch
to work without first dealing with a few bugs, and it it did not break
earlier, I'm willing to call that success ;-)

Unfortunately, doing it in qemu does not guarantee that the clocks
are set up right at this point: if any of the clocks are disabled when
they should not be, qemu won't care as much as real hardware  would.

> swapper: page allocation failure: order:0, mode:0x0(), nodemask=(null)
> CPU: 0 PID: 0 Comm: swapper Not tainted 5.3.0-rc4-sx1-los_80efa++ #1
> Hardware name: OMAP310 based Siemens SX1
> [<c000dc44>] (unwind_backtrace) from [<c000cb00>] (show_stack+0x10/0x18)
> [<c000cb00>] (show_stack) from [<c0172ba8>] (dump_stack+0x18/0x24)
> [<c0172ba8>] (dump_stack) from [<c00844e8>] (warn_alloc+0x90/0x140)
> [<c00844e8>] (warn_alloc) from [<c0084dcc>] (__alloc_pages_nodemask+0x7a4/0x9cc)
> [<c0084dcc>] (__alloc_pages_nodemask) from [<c008df24>] (slob_new_pages.constpro
> p.2+0x10/0x3c)
> [<c008df24>] (slob_new_pages.constprop.2) from [<c008e208>] (slob_alloc.constprop.1+0xe4/0x1e8)
> [<c008e208>] (slob_alloc.constprop.1) from [<c008e344>] (__kmalloc+0x38/0xb0)
> [<c008e344>] (__kmalloc) from [<c0126514>] (__clk_register+0x20/0x62c)
> [<c0126514>] (__clk_register) from [<c01f6614>] (omap1_clk_init+0x88/0x220)
> [<c01f6614>] (omap1_clk_init) from [<c01f5820>] (omap1_init_early+0x20/0x30)
> [<c01f5820>] (omap1_init_early) from [<c01f09e8>] (start_kernel+0x48/0x408)
> [<c01f09e8>] (start_kernel) from [<00000000>] (0x0)
> Clocks: ARM_SYSST: 0x003a DPLL_CTL: 0x2002 ARM_CKCTL: 0x3000
> Clocking rate (xtal/DPLL1/MPU): 12.0/12.0/0.0 MHz

Ok, so here the problem is that we call the omap1_clk_init() function from
setup_arch(), which is before we can even allocate memory with kmalloc.

Most other machines do it from init_time(), which comes after the initialization
of the memory allocator.

Something like this would be needed:

diff --git a/arch/arm/mach-omap1/io.c b/arch/arm/mach-omap1/io.c
index b0465a956ea8..17ba8dfd8e19 100644
--- a/arch/arm/mach-omap1/io.c
+++ b/arch/arm/mach-omap1/io.c
@@ -125,9 +125,6 @@ void __init omap1_init_early(void)
        omap_writew(0x0, MPU_PUBLIC_TIPB_CNTL);
        omap_writew(0x0, MPU_PRIVATE_TIPB_CNTL);

-       /* Must init clocks early to assure that timer interrupt works
-        */
-       omap1_clk_init();
        omap1_mux_init();
 }

diff --git a/arch/arm/mach-omap1/time.c b/arch/arm/mach-omap1/time.c
index 7cc1a968230e..4e5ddd1db429 100644
--- a/arch/arm/mach-omap1/time.c
+++ b/arch/arm/mach-omap1/time.c
@@ -228,6 +228,8 @@ static inline void omap_mpu_timer_init(void)
  */
 void __init omap1_timer_init(void)
 {
+       omap1_clk_init();
+
        if (omap_32k_timer_init() != 0)
                omap_mpu_timer_init();
 }

but the removed comment up there makes me suspect that it introduces
a different issue.

> "8<--- cut here ---
> "Unable to handle kernel NULL pointer dereference at virtual address 00000018
> "pgd = (ptrval)
> "[00000018] *pgd=00000000
> Internal error: Oops: 5 [#1] ARM
> CPU: 0 PID: 0 Comm: swapper Not tainted 5.3.0-rc4-sx1-los_80efa++ #1
> Hardware name: OMAP310 based Siemens SX1
> PC is at clk_hw_get_parent+0x4/0x14
> LR is at omap1_clk_enable+0xc/0xcc
> OMAP310 based Siemens SX1
> [    0.000000]  free:0 free_pcp:0 free_cma:0
> pc : [<c0126cd0>]    lr : [<c00128d4>]    psr: 600001d3
> sp : c03aff88  ip : 00000000  fp : 00000000
> r10: 00000001  r9 : 54029252  r8 : 10000100
> r7 : c03b1000  r6 : 00002002  r5 : 0000003a  r4 : c03b5444
> r3 : 00000000  r2 : c03b9818  r1 : ff03ce08  r0 : c03b5444
> Flags: nZCv  IRQs off  FIQs off  Mode SVC_32  ISA ARM  Segment user
> Control: 0000317f  Table: 10004000  DAC: 00000055
> Process swapper (pid: 0, stack limit = 0x(ptrval))
> Stack: (0xc03aff88 to 0xc03b0000)
> ff80:                   c03b5438 0000003a 00002002 c01f6734 00000000 00000057
> ffa0: 0000313d c01f5820 00000000 c01f09e8 00000000 00000000 00000000 00000000
> ffc0: 00000000 00000000 00000000 c0201a38 00000000 c01f0330 00000057 0000313d
> ffe0: 00000265 10000100 54029252 0000317f 00000000 00000000 00000000 00000000
> [<c0126cd0>] (clk_hw_get_parent) from [<c00128d4>] (omap1_clk_enable+0xc/0xcc)
> [<c00128d4>] (omap1_clk_enable) from [<c01f6734>] (omap1_clk_init+0x1a8/0x220)
> [<c01f6734>] (omap1_clk_init) from [<c01f5820>] (omap1_init_early+0x20/0x30)
> [<c01f5820>] (omap1_init_early) from [<c01f09e8>] (start_kernel+0x48/0x408)
> [<c01f09e8>] (start_kernel) from [<00000000>] (0x0)

clk_hw->core is NULL here, presumably as a result of the first issue.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
