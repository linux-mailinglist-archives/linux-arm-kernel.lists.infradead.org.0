Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA451FB66
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 22:12:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E0oecQKxNB1Bl7SnY5IAG6OYMChFrW2lCt50tUCPjPw=; b=JIu5tXxUQlRuv8
	3hB7smeO1v6JVXmpdyD3MdKgXgyHLSjKDcMIXP6elFn+gWfO3EgBtmdHGDOynHupwXB4IRzR7XQnu
	3gxlcUYAyYH9rDKYbTcFkZJeapmo0lBBMjAU0lQnn52idxKgTf0s3OLKo9OCUexH5QjAZEsVf7Co0
	79o26fFd8Rq8GM+SqJupTy9MEIhYXFaweq4UtPrNgnRrx/UmG0nhX0NWUu0h9dMablnEkNqgy7MZk
	zw3PLQhh3Tpi85wuK0VyHsi0N2dO8uikUF7bFco2G10m3KiA6bf8ovJEePXIU1ITcF9vT0yPZ3ImC
	74rUJ5Ho1mzSgQkhl7Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR0G9-0002nu-AQ; Wed, 15 May 2019 20:12:17 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR0G1-0002mR-8o
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 20:12:10 +0000
Received: by mail-it1-x144.google.com with SMTP id m141so2287662ita.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 13:12:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uxgF9Epfj1leDEBS3SomGteVW5SkqoPzJb/PZ/M3l2g=;
 b=Ql72fglxXZNNGfPHlceVRZWt4MhCtj4P2XxKtx54et64XHV6OtJShxndeDf/w50v16
 VACqUhg7nezBlS7+CKhlRwL6xFXy5S2v7/JtzZrfNiDRD/9f81iCOfWye6oKsCB9mlNi
 hjJI4tbaQvF8v9hGnYewEpVP1gJFL0o43AUJiLa8RcGejNN3KCQbADDw34U5b1H0rY4i
 bhXxVAB3io94u5qA7ZbDYtJdut8S+MEhiSBKuGE6nzcqWyvIyDUg50bZ6KOW5vCNArwB
 lbKoGM8nPCA/qTouojN6Ud67IhLOFLbA5jLBTO0lUtHlAMSIJnj20FTRTbJnETSR1CFN
 JjXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uxgF9Epfj1leDEBS3SomGteVW5SkqoPzJb/PZ/M3l2g=;
 b=kP606KLHBkI0jjQuSR3bIOAObGrZjPXDM/qSyi50SFL8nTYcAdaO0bZXoL5JX2OlZG
 RyaYymKmTRR6czkwaNtPKHHapl6J+HCvE54NOeuSEQXUb+UMKr9TukJCrnCNUJe7HK1U
 5rk3gmC/y9l0X4O3dJ9VPqibWFvoAKYBwEVgsgjc611iuQ47xhJyTttOKjqwjbsBpS85
 7HDGj5GjYrs01THtuZ+2oSPagLDGUw4uJmkApBJ+wZHV9kfYWDGp0zOpyc6edPc53Uxz
 /dD8Dsh82OpxF10n9KAalyIFZhPnKmeeuYyld5rgnkfPb8bzDuItzgbXdYZgUllhYXfi
 /Nvg==
X-Gm-Message-State: APjAAAXbdvIb5JpAxCcGnxW5wfQTQqOBQrEMwOnKgvFiQkt6q3vjjtR9
 Ot0Uc6PnCij7tlBZOEuo6d/P6hhRU+r2bVMXOOpcPg==
X-Google-Smtp-Source: APXvYqy0Is8SYO89R5fPAeulqJ+RzwFzYum+BS3fo8ISTRJ7CEoQ0E5GHFBKq+paLUll3butIDW17EBIp44VGMK9g4E=
X-Received: by 2002:a24:b342:: with SMTP id z2mr8641253iti.121.1557951125920; 
 Wed, 15 May 2019 13:12:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190513003819.356-1-hsinyi@chromium.org>
 <20190513003819.356-2-hsinyi@chromium.org>
 <20190513085853.GB9271@rapoport-lnx>
 <CAJMQK-hKrU2J0_uGe3eO_JTNwM=HRkXbDx2u45izcdD7wqwGeQ@mail.gmail.com>
 <20190514154223.GA11115@rapoport-lnx>
 <CAJMQK-gMa81kHaTS1kwTcOy+Avt5GsmNcagfscdLdmzS31Tobw@mail.gmail.com>
In-Reply-To: <CAJMQK-gMa81kHaTS1kwTcOy+Avt5GsmNcagfscdLdmzS31Tobw@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 15 May 2019 22:11:53 +0200
Message-ID: <CAKv+Gu8T-=inrckZmzQLk7abZtvkdE-nK_Qgcn+bbtovubzrkQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] amr64: map FDT as RW for early_init_dt_scan()
To: Hsin-Yi Wang <hsinyi@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_131209_431513_8F121A28 
X-CRM114-Status: GOOD (  22.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Architecture Mailman List <boot-architecture@lists.linaro.org>,
 Michal Hocko <mhocko@suse.com>, Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Will Deacon <will.deacon@arm.com>, Mike Rapoport <rppt@linux.ibm.com>,
 Miles Chen <miles.chen@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 James Morse <james.morse@arm.com>, Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Stephen Boyd <swboyd@chromium.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 15 May 2019 at 12:24, Hsin-Yi Wang <hsinyi@chromium.org> wrote:
>
> On Tue, May 14, 2019 at 11:42 PM Mike Rapoport <rppt@linux.ibm.com> wrote:
>
> > I'm not sure if early console is available at the time kaslr_early_init()
> > is called, but if yes, running with memblock=debug may shed some light.
> >
> > > I didn't trace the real reason causing this. But in this case, maybe
> > > don't call memblock_reserve() in kaslr?
> >
> > My concern that this uncovered a real bug which might hit us later.
> >
> Hi Mike,
> Thanks for the hint. I tried on my device but seems that earlycon
> happens after the warning call trace, so can't more information.
>
> Since on my device kaslr will be runned, I tried call
> memblock_reserve() in kaslr and not in
> setup_machine_fdt()#fixmap_remap_fdt, but got following warning
>

I realize this is not documented sufficiently in the commit log, but
the reason I introduced the separate __fixmap_remap_fdt() [which does
not call memblock_reserve()] was that the KASLR init code should set
as little global state as possible, given that it is called with the
kernel mapped at the wrong virtual address.

The KASLR boot sequence is something like
- map kernel at default [unrandomized] address
- apply relocations and clear BSS
- run KASLR init to map and parse the FDT [*]
- if KASLR is enabled, unmap the kernel and remap it at the randomized address
- apply relocations and clear BSS
- proceed with start_kernel()

The issue you are seeing is caused by the fact that the memblock
bookkeeping gets into an inconsistent state due to the 2nd clearing of
BSS.

[*] The reason we need to map the FDT this early is to obtain the
random seed, and to check whether 'nokaslr' was passed on the kernel
command line. The reason arm64 deviates from other architectures in
this regard is that we don't have a decompressor, and so there is no
other execution context available where we can run C code to parse the
FDT etc before we enter the kernel proper.




> [    0.000000] memblock_remove:
> [0x0001000000000000-0x0000fffffffffffe] arm64_memblock_init+0x28/0x224
> [    0.000000] memblock_remove:
> [0x0000004040000000-0x000000403ffffffe] arm64_memblock_init+0x64/0x224
> [    0.000000] memblock_reserve:
> [0x0000000040080000-0x00000000413c3fff]
> arm64_memblock_init+0x188/0x224
> [    0.000000] WARNING: CPU: 0 PID: 0 at
> /mnt/host/source/src/third_party/kernel/v4.19/mm/memblock.c:583
> memblock_add_range+0x1bc/0x1c8
> [    0.000000] Modules linked in:
> [    0.000000] CPU: 0 PID: 0 Comm: swapper Not tainted 4.19.38 #222
> [    0.000000] Hardware name: MediaTek kukui rev2 board (DT)
> [    0.000000] pstate: 60000085 (nZCv daIf -PAN -UAO)
> [    0.000000] pc : memblock_add_range+0x1bc/0x1c8
> [    0.000000] lr : memblock_add_range+0x30/0x1c8
> [    0.000000] sp : ffffffab68603ea0
> [    0.000000] x29: ffffffab68603ef0 x28: 0000000040954324
> [    0.000000] x27: 0000000040080000 x26: 0000000000080000
> [    0.000000] x25: 0000000080127e4b x24: ffffffab68716000
> [    0.000000] x23: ffffffab680b5000 x22: 0000000001344000
> [    0.000000] x21: 0000000040080000 x20: 0000000000000000
> [    0.000000] x19: ffffffab6864bf00 x18: 00000000fffffc94
> [    0.000000] x17: 000000000000003c x16: ffffffab67d49064
> [    0.000000] x15: 0000000000000006 x14: 626d656d5f34366d
> [    0.000000] x13: 7261205d66666633 x12: 0000000000000000
> [    0.000000] x11: 0000000000000000 x10: ffffffffffffffff
> [    0.000000] x9 : 0000000000011547 x8 : ffffffab68765690
> [    0.000000] x7 : 696e695f6b636f6c x6 : ffffffab6875dd41
> [    0.000000] x5 : 0000000000000000 x4 : 0000000000000000
> [    0.000000] x3 : ffffffab678a24a0 x2 : 0000000001344000
> [    0.000000] x1 : 0000000040080000 x0 : ffffffab6864bf00
> [    0.000000] Call trace:
> [    0.000000]  memblock_add_range+0x1bc/0x1c8
> [    0.000000]  memblock_reserve+0x60/0xac
> [    0.000000]  arm64_memblock_init+0x188/0x224
> [    0.000000]  setup_arch+0x138/0x19c
> [    0.000000]  start_kernel+0x68/0x380
> [    0.000000] random: get_random_bytes called from
> print_oops_end_marker+0x3c/0x58 with crng_init=0
> [    0.000000] ---[ end trace ea99802b425f7adf ]---
> [    0.000000] memblock_reserve:
> [0x000000005f800000-0x000000005f811536]
> early_init_dt_reserve_memory_arch+0x38/0x48
> [    0.000000] memblock_reserve:
> [0x00000000ffe00000-0x00000000ffffffff]
> early_init_dt_reserve_memory_arch+0x38/0x48
>
> So I guess we just can't call memblock_reserve() in kaslr?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
