Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 439811EE910
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 19:02:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KT7p0ENCbG+EGZxIWIiIanGuGc9PCKHMd4jNPgueDN0=; b=fDIIgveZijG3SW
	TawjYJw9llgbxHfWtFUA4fWh7x7hBCdwpUSbcmbB8HwQ/0KIqF7dpnXFUwBs30KLPUsl255l/6eE8
	dqPL09mdryfeMmz6qWtsE3a37LyNX2sWV6Tpdd6yxubRu259cT2GX+B0sJks3gy0l9mtYnNAVM6wb
	xiDOPlfGvaVXBmXqXuf26XZHL9IHuFi5R/2CZshIX0vfTg2aa8iaomX5GGJkECtU3QBXz73z2CbaH
	yvRm4Nwz3nNCKBG54wOauEDGsXJOlrJYWWMNxiWO4wvViCKMZOKF3rHFCCj0C9g6SkqZFDrJiMcY1
	VAvKBvogk6zt+bJAik0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgtFe-0004BY-JH; Thu, 04 Jun 2020 17:01:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgtFV-0004B5-DO
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 17:01:51 +0000
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com
 [209.85.167.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E698B207F5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  4 Jun 2020 17:01:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591290108;
 bh=Owsrr2fEiDqcPfVNWEXBcJQ0MGws3w1s0vgBig3yu5M=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=YHuQj5rV3xY3YRozDFT9hU+vewlPJhnxDuHmeYIzQ1zQrLSGV1pj4UmvrSniw3CjV
 R6v4YW3PfKoshN0XCkw/B/SgpZbb8lcXZSKwqrWuidv0HFZK/5WmbzsfItk0N8w/QK
 v0mnuGsyY0Z91dfMnuaR7sNQ+qrZAhOJafpcCBbQ=
Received: by mail-oi1-f177.google.com with SMTP id j189so5685077oih.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 10:01:47 -0700 (PDT)
X-Gm-Message-State: AOAM533ap/soC7JvKQgbMTg4dDHSxMNke7ZVLJuMWuNNAtO3zwhVxIvQ
 VVLVswboSgriU6YNekjALmMq3RCbVTio1EhOoQg=
X-Google-Smtp-Source: ABdhPJzU7XM2IUvWBCANzmSVk8bG9uyqi2iVuAJ9CZRNWsUqgWODVrG/aLCS1buwzwbDnKGegp9HVJXFjxurku239eE=
X-Received: by 2002:aca:6144:: with SMTP id v65mr3747749oib.33.1591290106951; 
 Thu, 04 Jun 2020 10:01:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200412002407.396790-1-linus.walleij@linaro.org>
 <107be5e0-3acd-1bf5-d1dd-e27f796e87d9@gmail.com>
 <CACRpkdZ5Dd92QYtKU8X+HHBFXXWm5m16htZ7vxeMTanxTQ=L1A@mail.gmail.com>
 <25cdd13f-1f95-1ca5-c28b-917538643590@gmail.com>
 <CACRpkdbEhnOfvHEQZ1GbdKuTchfBn1TozeD02NBFJ_YF6WwH=g@mail.gmail.com>
 <CACRpkdYnXCfUxbd8PxM5N9=xHDi6-55VcmkEzMNpUGR0k5snag@mail.gmail.com>
 <CAMj1kXF=SOan4i9T3U2guGPaNQxeZ-mUOp7fW7j7FtFCY2ZH1g@mail.gmail.com>
 <CAMj1kXErHqaQod5nQCypLvyWET-K2-CEKvcGMPYzgfb=mgKK0A@mail.gmail.com>
In-Reply-To: <CAMj1kXErHqaQod5nQCypLvyWET-K2-CEKvcGMPYzgfb=mgKK0A@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 4 Jun 2020 19:01:35 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFvbn3UAAO+zB9J79Prjgx4-xwjJ64VnOj2a_nyOQQDqQ@mail.gmail.com>
Message-ID: <CAMj1kXFvbn3UAAO+zB9J79Prjgx4-xwjJ64VnOj2a_nyOQQDqQ@mail.gmail.com>
Subject: Re: [PATCH 0/5 v2] KASan for ARM
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_100149_514061_ED5DE2F3 
X-CRM114-Status: GOOD (  28.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rob Herring <robh@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Abbott Liu <liuwenliang@huawei.com>, Russell King <linux@armlinux.org.uk>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 4 Jun 2020 at 14:10, Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Thu, 4 Jun 2020 at 13:26, Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > On Thu, 4 Jun 2020 at 11:24, Linus Walleij <linus.walleij@linaro.org> wrote:
> > >
> > > On Wed, Jun 3, 2020 at 10:45 AM Linus Walleij <linus.walleij@linaro.org> wrote:
> > > > On Mon, Jun 1, 2020 at 6:37 PM Florian Fainelli <f.fainelli@gmail.com> wrote:
> > > >
> > > > > This branch got me a bit further,
> > > >
> > > > Thanks, at least we get improvements. :)
> > > >
> > > > > but still failed to fully initialize
> > > > > (see attached kasan.log), on another platform with a slightly different
> > > > > memory map, I ended up getting a different error (kasan2.log).
> > > >
> > > > I have this error too on a Qualcomm board, it is what I report
> > > > in the cover letter, that if I load the kernel into 0x40200000
> > > > this happens but when I load it into 0x50000000 it does not
> > > > happen.
> > >
> > > So this is what happens to me, even after I try to de-instrument
> > > the DT parsing code (maybe I do it all wrong...)
> > > This is done with that patch:
> > > https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-integrator.git/commit/?h=kasan-apq8060-test&id=1cd83357f3c35b037400f6ec2547eeff074c578c
> > >
> > > If I boot from physical memory at 0x40200000
> > > fastboot --base 40200000 --cmdline "console=ttyMSM0,115200,n8" boot zImage
> > >
> > > kasan: populating shadow for b7040000, b75c0000
> > > kasan: populating shadow for b8000000, bb000000
> > > kasan: populating shadow for b6e00000, b7000000
> > > kasan: Kernel address sanitizer initialized
> > > 8<--- cut here ---
> > > Unable to handle kernel paging request at virtual address c30050b0
> > > pgd = (ptrval)
> > > [c30050b0] *pgd=00000000c
> > > Internal error: Oops: 5 [#1] PREEMPT SMP ARM
> > > Modules linked in:c
> > > CPU: 0 PID: 0 Comm: swapper Not tainted 5.7.0-00011-g1cd83357f3c3 #34
> > > Hardware name: Generic DT based system
> > > PC is at fdt_check_header+0x0/0x168
> > > LR is at __unflatten_device_tree+0x6c/0x338
> > > pc : [<c08e6968>]    lr : [<c0d698a8>]    psr: 60000093
> > > sp : c1e03db8  ip : cffffee0  fp : fffff000
> > > r10: 00000000  r9 : c2646000  r8 : 00000000
> > > r7 : c30050b0  r6 : c192e9e4  r5 : c19492e8  r4 : c21d7448
> > > r3 : 00000000  r2 : c2646000  r1 : 00000000  r0 : c30050b0
> > > (...)
> > > [<c08e6968>] (fdt_check_header) from [<c192e9e4>]
> > > (early_init_dt_alloc_memory_arch+0x0/0x64)
> > > [<c192e9e4>] (early_init_dt_alloc_memory_arch) from [<c1930264>]
> > > (unflatten_device_tree+0x34/0x44)
> > > [<c1930264>] (unflatten_device_tree) from [<c1905794>] (setup_arch+0xac4/0xde8)
> > > [<c1905794>] (setup_arch) from [<c1900b98>] (start_kernel+0xd8/0x634)
> > > [<c1900b98>] (start_kernel) from [<00000000>] (0x0)
> > > Code: e3a00020 e12fff1e e3a0001c e12fff1e (e5901000)
> > > random: get_random_bytes called from print_oops_end_marker+0x38/0x50
> > > with crng_init=0
> > > ---[ end trace 0000000000000000 ]---
> > > Kernel panic - not syncing: Attempted to kill the idle task!
> > > ---[ end Kernel panic - not syncing: Attempted to kill the idle task! ]---
> > >
> >
> > I don't think we ever check whether the ATAGS/DTB pointer points into
> > memory that is described to the kernel as unreserved lowmem. We simply
> > call phys_to_virt() on it [in setup_machine_fdt()], and assume that by
> > the time we call unflatten_device_tree(), the same virtual address
> > still points to the DT contents.
> >

OK, so this is definitely not the issue. I am seeing very similar
issues, but in different places (two examples below)

What is notable here is that in both cases, a sizable chunk of memory
has one stack frame's worth of shadow bytes right in the middle. I
spent some time trying to figure out what is going on here, but I am
not a KASAN expert, so I am struggling a bit. Are we sure that all the
shadow is mapped correctly without physical pages being mapped more
than once?




[    0.000000] ==================================================================
[    0.000000] BUG: KASAN: stack-out-of-bounds in
memblock_alloc_try_nid+0x108/0x144
[    0.000000] Write of size 19104 at addr e95c2560 by task swapper/0
[    0.000000]
[    0.000000] CPU: 0 PID: 0 Comm: swapper Not tainted 5.7.0+ #60
[    0.000000] Hardware name: Generic DT based system
[    0.000000] [<c0317634>] (unwind_backtrace) from [<c030f338>]
(show_stack+0x10/0x14)
[    0.000000] [<c030f338>] (show_stack) from [<c0905130>]
(dump_stack+0xc4/0xdc)
[    0.000000] [<c0905130>] (dump_stack) from [<c053b238>]
(print_address_description.constprop.0+0x34/0x444)
[    0.000000] [<c053b238>] (print_address_description.constprop.0)
from [<c053b844>] (kasan_report+0x158/0x174)
[    0.000000] [<c053b844>] (kasan_report) from [<c053c24c>]
(check_memory_region+0x94/0x1a4)
[    0.000000] [<c053c24c>] (check_memory_region) from [<c053a640>]
(memset+0x20/0x3c)
[    0.000000] [<c053a640>] (memset) from [<c242fa78>]
(memblock_alloc_try_nid+0x108/0x144)
[    0.000000] [<c242fa78>] (memblock_alloc_try_nid) from [<c24c857c>]
(early_init_dt_alloc_memory_arch+0x30/0x60)
[    0.000000] [<c24c857c>] (early_init_dt_alloc_memory_arch) from
[<c128cd3c>] (__unflatten_device_tree+0x5c/0x11c)
[    0.000000] [<c128cd3c>] (__unflatten_device_tree) from
[<c24c9c88>] (unflatten_device_tree+0x34/0x44)
[    0.000000] [<c24c9c88>] (unflatten_device_tree) from [<c2405a4c>]
(setup_arch+0xc00/0x10f4)
[    0.000000] [<c2405a4c>] (setup_arch) from [<c2400c2c>]
(start_kernel+0xd4/0x610)
[    0.000000] [<c2400c2c>] (start_kernel) from [<00000000>] (0x0)
[    0.000000]
[    0.000000] The buggy address belongs to the page:
[    0.000000] page:efd24840 refcount:1 mapcount:0 mapping:00000000 index:0x0
[    0.000000] flags: 0x0()
[    0.000000] raw: 00000000 efd24844 efd24844 00000000 00000000
00000000 ffffffff 00000001
[    0.000000] page dumped because: kasan: bad access detected
[    0.000000]
[    0.000000] Memory state around the buggy address:
[    0.000000]  e95c3c00: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
[    0.000000]  e95c3c80: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
[    0.000000] >e95c3d00: f1 f1 f1 f1 f1 f1 04 f2 04 f3 f3 f3 00 00 00 00
[    0.000000]            ^
[    0.000000]  e95c3d80: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
[    0.000000]  e95c3e00: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
[    0.000000] ==================================================================

[   50.235136] ==================================================================
[   50.238107] BUG: KASAN: stack-out-of-bounds in blk_add_partitions+0x1e8/0x6f8
[   50.239318] Write of size 32768 at addr f08c6000 by task swapper/0/1
[   50.240226]
[   50.241432] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.7.0+ #60
[   50.242402] Hardware name: QEMU QEMU Virtual Machine, BIOS 0.0.0 02/06/2015
[   50.244206] [<c0317634>] (unwind_backtrace) from [<c030f338>]
(show_stack+0x10/0x14)
[   50.245566] [<c030f338>] (show_stack) from [<c0905130>]
(dump_stack+0xc4/0xdc)
[   50.246823] [<c0905130>] (dump_stack) from [<c053b384>]
(print_address_description.constprop.0+0x180/0x444)
[   50.248429] [<c053b384>] (print_address_description.constprop.0)
from [<c053b844>] (kasan_report+0x158/0x174)
[   50.250113] [<c053b844>] (kasan_report) from [<c053c24c>]
(check_memory_region+0x94/0x1a4)
[   50.251495] [<c053c24c>] (check_memory_region) from [<c053a640>]
(memset+0x20/0x3c)
[   50.252787] [<c053a640>] (memset) from [<c0868954>]
(blk_add_partitions+0x1e8/0x6f8)
[   50.254172] [<c0868954>] (blk_add_partitions) from [<c05aa56c>]
(bdev_disk_changed+0x94/0x118)
[   50.255630] [<c05aa56c>] (bdev_disk_changed) from [<c05ab140>]
(__blkdev_get+0x460/0x748)
[   50.257091] [<c05ab140>] (__blkdev_get) from [<c08649b4>]
(__device_add_disk+0x718/0x808)
[   50.258649] [<c08649b4>] (__device_add_disk) from [<c24b12ac>]
(brd_init+0x158/0x234)
[   50.259989] [<c24b12ac>] (brd_init) from [<c0302630>]
(do_one_initcall+0xb4/0x30c)
[   50.261275] [<c0302630>] (do_one_initcall) from [<c2401360>]
(kernel_init_freeable+0x1f8/0x26c)
[   50.262629] [<c2401360>] (kernel_init_freeable) from [<c1545040>]
(kernel_init+0x8/0x120)
[   50.263953] [<c1545040>] (kernel_init) from [<c03001b0>]
(ret_from_fork+0x14/0x24)
[   50.265225] Exception stack(0xe88c3fb0 to 0xe88c3ff8)
[   50.266569] 3fa0:                                     00000000
00000000 00000000 00000000
[   50.268334] 3fc0: 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000
[   50.269970] 3fe0: 00000000 00000000 00000000 00000000 00000013 00000000
[   50.271241]
[   50.271821]
[   50.272268] Memory state around the buggy address:
[   50.274111]  f08cbd00: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
[   50.275302]  f08cbd80: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
[   50.276296] >f08cbe00: 00 00 00 00 f1 f1 f1 f1 04 f2 04 f2 00 f3 f3 f3
[   50.277548]                        ^
[   50.278206]  f08cbe80: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
[   50.279194]  f08cbf00: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
[   50.280193] ==================================================================

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
