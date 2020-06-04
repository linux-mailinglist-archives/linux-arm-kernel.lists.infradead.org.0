Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ABAF1EE363
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 13:27:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mZmdW2XXsorwn6kDIteKpLCD6pLMVE16Y5GjSCYj4Oo=; b=klCk+lkJ0X4YCm
	pUHtlXRQK55Hslsd9B5/2TQk7gj+tVqn+GV3Ociay+0AA82cWQYLPAWTN46/nq5T8jPiuxvoFfpzU
	uCF6j+t7vyb9LfDlYoXSTTKZToA63sz8xBunv4BRmyXUNqsij/UtitPXjsmINkfLdNJGhXbXKF+oT
	0qh4pNKOqRIzLX5jMaNnuOg9rzZL7lmaUHK6J9jgK++TSxf/KDHgLUG2y4v/AFwSJW4dih1sSw/yt
	yonhG3aH3qJiErMNkKJQpgp2Jh+9zVD2/v0LdSlmk6PBfkfAIOQi5gYNnoOdiyMJO1dcRtCa4bgHi
	3VrovOYJ2WUtZrnrpdiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgo1M-0005gV-98; Thu, 04 Jun 2020 11:26:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgo1E-0005fm-RM
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 11:26:46 +0000
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com
 [209.85.167.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 175A9207D3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  4 Jun 2020 11:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591270004;
 bh=NIVL+V6Js/sy2ZFFovb7XXomMVEUEvXae1dJ3WqZKY8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=HRK/2gccYsPZ1h3mCOHV4S5yqtmTKKK5rfHCd0yqAHFXVOQPkTZtB0zG6lTAzPtsR
 uLMsiqAH1CM0dW2MRVqQ184W9X4lopIiG7MXoBGyPuVFfwgp8i2brut6HmNfOEJ93j
 gaR+Qa68WWkdS3jsBRUHQQqc1MXvy26plMU0k06w=
Received: by mail-oi1-f181.google.com with SMTP id a21so4733383oic.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 04:26:44 -0700 (PDT)
X-Gm-Message-State: AOAM533MDqOHk9gvXhciXMoTKRkoppuL5NdDn+vOfDFiDU469YxIyVXu
 S0eNKFnNd84RBc2ROPbeTwyCtpinbsBeZYGsmNk=
X-Google-Smtp-Source: ABdhPJyR85xhlDRtThcKX5lPBc1cJJMNUftJvLCtFWyJCZiVo4LXROV4ZWUHnBos1ihahGhOwckyF2dGjCuVOl7WBi4=
X-Received: by 2002:aca:b887:: with SMTP id i129mr2619929oif.47.1591270003346; 
 Thu, 04 Jun 2020 04:26:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200412002407.396790-1-linus.walleij@linaro.org>
 <107be5e0-3acd-1bf5-d1dd-e27f796e87d9@gmail.com>
 <CACRpkdZ5Dd92QYtKU8X+HHBFXXWm5m16htZ7vxeMTanxTQ=L1A@mail.gmail.com>
 <25cdd13f-1f95-1ca5-c28b-917538643590@gmail.com>
 <CACRpkdbEhnOfvHEQZ1GbdKuTchfBn1TozeD02NBFJ_YF6WwH=g@mail.gmail.com>
 <CACRpkdYnXCfUxbd8PxM5N9=xHDi6-55VcmkEzMNpUGR0k5snag@mail.gmail.com>
In-Reply-To: <CACRpkdYnXCfUxbd8PxM5N9=xHDi6-55VcmkEzMNpUGR0k5snag@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 4 Jun 2020 13:26:31 +0200
X-Gmail-Original-Message-ID: <CAMj1kXF=SOan4i9T3U2guGPaNQxeZ-mUOp7fW7j7FtFCY2ZH1g@mail.gmail.com>
Message-ID: <CAMj1kXF=SOan4i9T3U2guGPaNQxeZ-mUOp7fW7j7FtFCY2ZH1g@mail.gmail.com>
Subject: Re: [PATCH 0/5 v2] KASan for ARM
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_042644_924838_B49253BA 
X-CRM114-Status: GOOD (  32.16  )
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

On Thu, 4 Jun 2020 at 11:24, Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Wed, Jun 3, 2020 at 10:45 AM Linus Walleij <linus.walleij@linaro.org> wrote:
> > On Mon, Jun 1, 2020 at 6:37 PM Florian Fainelli <f.fainelli@gmail.com> wrote:
> >
> > > This branch got me a bit further,
> >
> > Thanks, at least we get improvements. :)
> >
> > > but still failed to fully initialize
> > > (see attached kasan.log), on another platform with a slightly different
> > > memory map, I ended up getting a different error (kasan2.log).
> >
> > I have this error too on a Qualcomm board, it is what I report
> > in the cover letter, that if I load the kernel into 0x40200000
> > this happens but when I load it into 0x50000000 it does not
> > happen.
>
> So this is what happens to me, even after I try to de-instrument
> the DT parsing code (maybe I do it all wrong...)
> This is done with that patch:
> https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-integrator.git/commit/?h=kasan-apq8060-test&id=1cd83357f3c35b037400f6ec2547eeff074c578c
>
> If I boot from physical memory at 0x40200000
> fastboot --base 40200000 --cmdline "console=ttyMSM0,115200,n8" boot zImage
>
> kasan: populating shadow for b7040000, b75c0000
> kasan: populating shadow for b8000000, bb000000
> kasan: populating shadow for b6e00000, b7000000
> kasan: Kernel address sanitizer initialized
> 8<--- cut here ---
> Unable to handle kernel paging request at virtual address c30050b0
> pgd = (ptrval)
> [c30050b0] *pgd=00000000c
> Internal error: Oops: 5 [#1] PREEMPT SMP ARM
> Modules linked in:c
> CPU: 0 PID: 0 Comm: swapper Not tainted 5.7.0-00011-g1cd83357f3c3 #34
> Hardware name: Generic DT based system
> PC is at fdt_check_header+0x0/0x168
> LR is at __unflatten_device_tree+0x6c/0x338
> pc : [<c08e6968>]    lr : [<c0d698a8>]    psr: 60000093
> sp : c1e03db8  ip : cffffee0  fp : fffff000
> r10: 00000000  r9 : c2646000  r8 : 00000000
> r7 : c30050b0  r6 : c192e9e4  r5 : c19492e8  r4 : c21d7448
> r3 : 00000000  r2 : c2646000  r1 : 00000000  r0 : c30050b0
> (...)
> [<c08e6968>] (fdt_check_header) from [<c192e9e4>]
> (early_init_dt_alloc_memory_arch+0x0/0x64)
> [<c192e9e4>] (early_init_dt_alloc_memory_arch) from [<c1930264>]
> (unflatten_device_tree+0x34/0x44)
> [<c1930264>] (unflatten_device_tree) from [<c1905794>] (setup_arch+0xac4/0xde8)
> [<c1905794>] (setup_arch) from [<c1900b98>] (start_kernel+0xd8/0x634)
> [<c1900b98>] (start_kernel) from [<00000000>] (0x0)
> Code: e3a00020 e12fff1e e3a0001c e12fff1e (e5901000)
> random: get_random_bytes called from print_oops_end_marker+0x38/0x50
> with crng_init=0
> ---[ end trace 0000000000000000 ]---
> Kernel panic - not syncing: Attempted to kill the idle task!
> ---[ end Kernel panic - not syncing: Attempted to kill the idle task! ]---
>

I don't think we ever check whether the ATAGS/DTB pointer points into
memory that is described to the kernel as unreserved lowmem. We simply
call phys_to_virt() on it [in setup_machine_fdt()], and assume that by
the time we call unflatten_device_tree(), the same virtual address
still points to the DT contents.

On arm64, we have a special fixmap slot for the DT, so there this
doesn't happen.

Could you try whether the following makes the issues go away?

diff --git a/arch/arm/kernel/setup.c b/arch/arm/kernel/setup.c
index d8e18cdd96d3..b00867a026ed 100644
--- a/arch/arm/kernel/setup.c
+++ b/arch/arm/kernel/setup.c
@@ -1076,6 +1076,7 @@ void __init hyp_mode_check(void)
 void __init setup_arch(char **cmdline_p)
 {
        const struct machine_desc *mdesc;
+       void *fdt;

        setup_processor();
        mdesc = setup_machine_fdt(__atags_pointer);
@@ -1135,6 +1136,8 @@ void __init setup_arch(char **cmdline_p)
        if (mdesc->restart)
                arm_pm_restart = mdesc->restart;

+       fdt = memremap(__atags_pointer, SZ_1M, MEMREMAP_WB);
+       early_init_dt_verify(fdt);
        unflatten_device_tree();

        arm_dt_init_cpu_maps();


(Not saying this is the right fix, just testing a hypothesis)





> But if I instead boot from 0x50000000 I just get this lesser error and
> the platform actually comes up:
> fastboot --base 50000000 --cmdline "console=ttyMSM0,115200,n8" boot zImage
>
> [    0.000000] kasan: populating shadow for b7000000, b9000000
> [    0.000000] kasan: populating shadow for b6e00000, b7000000
> [    0.000000] kasan: Kernel address sanitizer initialized
> [    0.000000] ==================================================================
> [    0.000000] BUG: KASAN: stack-out-of-bounds in
> memblock_alloc_try_nid+0x9c/0xac
> [    0.000000] Write of size 61920 at addr cdbd6e20 by task swapper/0
> [    0.000000]
> [    0.000000] CPU: 0 PID: 0 Comm: swapper Not tainted
> 5.7.0-00011-g1cd83357f3c3 #34
> [    0.000000] Hardware name: Generic DT based system
> [    0.000000] [<c0317844>] (unwind_backtrace) from [<c0310544>]
> (show_stack+0x10/0x14)
> [    0.000000] [<c0310544>] (show_stack) from [<c08e6374>]
> (dump_stack+0x80/0x98)
> [    0.000000] [<c08e6374>] (dump_stack) from [<c050eed0>]
> (print_address_description.constprop.3+0x50/0x478)
> [    0.000000] [<c050eed0>] (print_address_description.constprop.3)
> from [<c050f508>] (__kasan_report+0xf0/0x12c)
> [    0.000000] [<c050f508>] (__kasan_report) from [<c050e95c>]
> (kasan_report+0x34/0x3c)
> [    0.000000] [<c050e95c>] (kasan_report) from [<c050fed0>]
> (check_memory_region+0x14c/0x1b0)
> [    0.000000] [<c050fed0>] (check_memory_region) from [<c050e100>]
> (memset+0x20/0x3c)
> [    0.000000] [<c050e100>] (memset) from [<c1918898>]
> (memblock_alloc_try_nid+0x9c/0xac)
> [    0.000000] [<c1918898>] (memblock_alloc_try_nid) from [<c192ea14>]
> (early_init_dt_alloc_memory_arch+0x30/0x64)
> [    0.000000] [<c192ea14>] (early_init_dt_alloc_memory_arch) from
> [<c0d698f0>] (__unflatten_device_tree+0xb4/0x338)
> [    0.000000] [<c0d698f0>] (__unflatten_device_tree) from
> [<c1930264>] (unflatten_device_tree+0x34/0x44)
> [    0.000000] [<c1930264>] (unflatten_device_tree) from [<c1905794>]
> (setup_arch+0xac4/0xde8)
> [    0.000000] [<c1905794>] (setup_arch) from [<c1900b98>]
> (start_kernel+0xd8/0x634)
> [    0.000000] [<c1900b98>] (start_kernel) from [<00000000>] (0x0)
> [    0.000000]
> [    0.000000] The buggy address belongs to the page:
> [    0.000000] page:cffafac0 refcount:1 mapcount:0 mapping:00000000 index:0x0
> [    0.000000] flags: 0x0()
> [    0.000000] raw: 00000000 cffafac4 cffafac4 00000000 00000000
> 00000000 ffffffff 00000001
> [    0.000000] page dumped because: kasan: bad access detected
> [    0.000000]
> [    0.000000] Memory state around the buggy address:
> [    0.000000]  cdbe3d00: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
> [    0.000000]  cdbe3d80: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
> [    0.000000] >cdbe3e00: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
> [    0.000000]                        ^
> [    0.000000]  cdbe3e80: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
> [    0.000000]  cdbe3f00: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
> [    0.000000] ==================================================================
>
> There is something really funky going on with how devicetree is unflattened
> in this platform I think, I just need to figure it out.
>
> I do not think it is a KASan bug per se, more of a DT parser issue, like it is
> doing stuff that need to be properly de-instrumented.
>
> Any hints welcome!
>
> Yours,
> Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
