Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 669E5927B9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 16:57:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HKvCluMYk5Z9xRd+CS7dc4jO4Hu14MohPo20nnP3YRU=; b=KUQ4219Pzmz3m6
	O9vA3XgdxSVViDYf2PQwrobALC06BHOTKimkdPiSjX8LP+Flnw0oany8/QK9+Fz23uKgDl1qywXYM
	fjCgX3eLJHw81BZ8E/x5xqXnqS/eDXprwRqKqw2YQoON3lV1WKZyA+lcy+p1xZPFLRlySWC9uHtQT
	zQKJ3PX9omlVwIJkFofNC52NyLQm6vIUX/nDucporLpLyDS4JA4ekhUboVxHvItzab8omMDkiETBS
	en2tB9jO2wSa+XEBa1tj/ymdVzciO/s75iRXgCyXFo7bBA+PNLdYAnoRBrLFZMfHJPya88oPHBzbu
	B9wLfCp7HD7Xnak2AjUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzj5v-00050L-V8; Mon, 19 Aug 2019 14:57:16 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzj5p-0004zw-5K
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 14:57:10 +0000
Received: by mail-wr1-x442.google.com with SMTP id g17so9066819wrr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 07:57:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GAjO3kDCKw737mzKsCDzc5iC6QhFGKmfyjzceHvXKsU=;
 b=eHXy/LiFZh4gTgutePEYj72vYa3eraTi+gVzKrpM8z0zscSoc9UJpBuMortwZBA+yH
 b/qr6lPvJg2FbAmYXEVoaweL9a2Ast4QPjhwkO402tiAnBchwSQYMqsc3Ga4Xrk2Ng3W
 m4AS4QVgcC6tckNHGvaiyRI2W53BSLkm3JKL81fodAmYKV6ENKScDhJTmgEfalb1KuWk
 YnD5iWbCqtLHviBfoPgj73No1xc7M8ZMn7xj+wS23J9X6JjXWSjswI4RBuBE0WVsPtPz
 7p7rA+Vacwl2wrcih/m1v58ny92ZlbO1wetTpUk7e1iDNlvUDxUuzTODDlaF4IOC+ssV
 66SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GAjO3kDCKw737mzKsCDzc5iC6QhFGKmfyjzceHvXKsU=;
 b=PkU4wzipE9Vb4lVwxaRWtEiMnd8sIeV0aCgNvo6jISHAra/F6cJNGFxnT497s+wGMv
 dkfl0Mpn8NBDMO/X5a+SbT3D0FIFkcI5uTsA5dfrPEK211GklKth42uw92SrlrLGCzBr
 JpBCfrpqhZ9sys0j6sZ3MnOmBu5NKi5ktJq7OAqLRyoez4Rz8b7Xvf49N/I37LILF3Ql
 Pun5XRnwgsfrsBIxw5rMJ/pashANQVjs9TCwy/j58yNtl+tNjlQnpC7XiNw9Ck3tezTG
 PJuxf4L5trlBydvG/JXYnuS4Vgv/s+yk3v9h0YavGd1lEq7+69W2k8YJizg7KiA9nGFt
 2f6Q==
X-Gm-Message-State: APjAAAUPyu4N7lMPa0fO9K6JpHgL19Sx3pCg+ho7oAT0fMI371zNRaHN
 LG+u0Xcy3i+Bts1yEH2XX9X1L9GrQCMeORtAjrRN1Q==
X-Google-Smtp-Source: APXvYqzb23vvVNc5UUcj/kt8thoSOcUzIyc0Kl1oqCEx0FA3r9Qd6OKc7JK2zme0EV4PzSteaAxAPvPWNVNZBuMyHWk=
X-Received: by 2002:a5d:5450:: with SMTP id w16mr15166999wrv.174.1566226625378; 
 Mon, 19 Aug 2019 07:57:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190802053744.5519-1-clin@suse.com>
 <CAKv+Gu-yaNYsLQOOcr8srW91-nt-w0e+RBqxXGOagiGGT69n1Q@mail.gmail.com>
 <CAKv+Gu8uwbY-JtjNbgoyY230X_M6xLchVM3OUg_oNWOJrF=iCg@mail.gmail.com>
 <20190815111543.GA4728@linux-8mug>
 <CAKv+Gu-5M-4=SbOzbqbLUYnfFw29vhfcrVD=N9j_APYpKjq2wQ@mail.gmail.com>
 <20190815133738.GA2483@rapoport-lnx> <20190819075621.GA20595@linux-8mug>
In-Reply-To: <20190819075621.GA20595@linux-8mug>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 19 Aug 2019 17:56:51 +0300
Message-ID: <CAKv+Gu-sdhNbhfD24Fn93mj-h6=vGi82Ghjy7AzaRSqcpXCx-g@mail.gmail.com>
Subject: Re: [PATCH] efi/arm: fix allocation failure when reserving the kernel
 base
To: Chester Lin <clin@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_075709_269472_25B56297 
X-CRM114-Status: GOOD (  38.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Juergen Gross <JGross@suse.com>,
 "linux-efi@vger.kernel.org" <linux-efi@vger.kernel.org>,
 "guillaume.gardet@arm.com" <guillaume.gardet@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 Mike Rapoport <rppt@linux.ibm.com>, Joey Lee <JLee@suse.com>,
 "geert@linux-m68k.org" <geert@linux-m68k.org>,
 "ren_guo@c-sky.com" <ren_guo@c-sky.com>, Gary Lin <GLin@suse.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 19 Aug 2019 at 11:01, Chester Lin <clin@suse.com> wrote:
>
> Hi Mike and Ard,
>
> On Thu, Aug 15, 2019 at 04:37:39PM +0300, Mike Rapoport wrote:
> > On Thu, Aug 15, 2019 at 02:32:50PM +0300, Ard Biesheuvel wrote:
> > > (adding Mike)
> > >
> > > On Thu, 15 Aug 2019 at 14:28, Chester Lin <clin@suse.com> wrote:
> > > >
> > > > Hi Ard,
> > > >
> > > > On Thu, Aug 15, 2019 at 10:59:43AM +0300, Ard Biesheuvel wrote:
> > > > > On Sun, 4 Aug 2019 at 10:57, Ard Biesheuvel <ard.biesheuvel@linaro.org> wrote:
> > > > > >
> > > > > > Hello Chester,
> > > > > >
> > > > > > On Fri, 2 Aug 2019 at 08:40, Chester Lin <clin@suse.com> wrote:
> > > > > > >
> > > > > > > In some cases the arm32 efistub could fail to allocate memory for
> > > > > > > uncompressed kernel. For example, we got the following error message when
> > > > > > > verifying EFI stub on Raspberry Pi-2 [kernel-5.2.1 + grub-2.04] :
> > > > > > >
> > > > > > >   EFI stub: Booting Linux Kernel...
> > > > > > >   EFI stub: ERROR: Unable to allocate memory for uncompressed kernel.
> > > > > > >   EFI stub: ERROR: Failed to relocate kernel
> > > > > > >
> > > > > > > After checking the EFI memory map we found that the first page [0 - 0xfff]
> > > > > > > had been reserved by Raspberry Pi-2's firmware, and the efistub tried to
> > > > > > > set the dram base at 0, which was actually in a reserved region.
> > > > > > >
> > > > > >
> > > > > > This by itself is a violation of the Linux boot protocol for 32-bit
> > > > > > ARM when using the decompressor. The decompressor rounds down its own
> > > > > > base address to a multiple of 128 MB, and assumes the whole area is
> > > > > > available for the decompressed kernel and related data structures.
> > > > > > (The first TEXT_OFFSET bytes are no longer used in practice, which is
> > > > > > why putting a reserved region of 4 KB bytes works at the moment, but
> > > > > > this is fragile). Note that the decompressor does not look at any DT
> > > > > > or EFI provided memory maps *at all*.
> > > > > >
> > > > > > So unfortunately, this is not something we can fix in the kernel, but
> > > > > > we should fix it in the bootloader or in GRUB, so it does not put any
> > > > > > reserved regions in the first 128 MB of memory,
> > > > > >
> > > > >
> > > > > OK, perhaps we can fix this by taking TEXT_OFFSET into account. The
> > > > > ARM boot protocol docs are unclear about whether this memory should be
> > > > > used or not, but it is no longer used for its original purpose (page
> > > > > tables), and the RPi loader already keeps data there.
> > > > >
> > > > > Can you check whether the following patch works for you?
> > > > >
> > > > > diff --git a/drivers/firmware/efi/libstub/Makefile
> > > > > b/drivers/firmware/efi/libstub/Makefile
> > > > > index 0460c7581220..ee0661ddb25b 100644
> > > > > --- a/drivers/firmware/efi/libstub/Makefile
> > > > > +++ b/drivers/firmware/efi/libstub/Makefile
> > > > > @@ -52,6 +52,7 @@ lib-$(CONFIG_EFI_ARMSTUB)     += arm-stub.o fdt.o
> > > > > string.o random.o \
> > > > >
> > > > >  lib-$(CONFIG_ARM)              += arm32-stub.o
> > > > >  lib-$(CONFIG_ARM64)            += arm64-stub.o
> > > > > +CFLAGS_arm32-stub.o            := -DTEXT_OFFSET=$(TEXT_OFFSET)
> > > > >  CFLAGS_arm64-stub.o            := -DTEXT_OFFSET=$(TEXT_OFFSET)
> > > > >
> > > > >  #
> > > > > diff --git a/drivers/firmware/efi/libstub/arm32-stub.c
> > > > > b/drivers/firmware/efi/libstub/arm32-stub.c
> > > > > index e8f7aefb6813..66ff0c8ec269 100644
> > > > > --- a/drivers/firmware/efi/libstub/arm32-stub.c
> > > > > +++ b/drivers/firmware/efi/libstub/arm32-stub.c
> > > > > @@ -204,7 +204,7 @@ efi_status_t
> > > > > handle_kernel_image(efi_system_table_t *sys_table,
> > > > >          * loaded. These assumptions are made by the decompressor,
> > > > >          * before any memory map is available.
> > > > >          */
> > > > > -       dram_base = round_up(dram_base, SZ_128M);
> > > > > +       dram_base = round_up(dram_base, SZ_128M) + TEXT_OFFSET;
> > > > >
> > > > >         status = reserve_kernel_base(sys_table, dram_base, reserve_addr,
> > > > >                                      reserve_size);
> > > > >
> > > >
> > > > I tried your patch on rpi2 and got the following panic. Just a reminder that I
> > > > have replaced some log messages with "......" since it might be too long to
> > > > post all.
> > > >
> > >
> > > OK. Good to know that this change helps you to get past the EFI stub boot issue.
> > >
> > > > In this case the kernel failed to reserve cma, which should hit the issue of
> > > > memblock_limit=0x1000 as I had mentioned in my patch description. The first
> > > > block [0-0xfff] was scanned in adjust_lowmem_bounds(), but it did not align
> > > > with PMD_SIZE so the cma reservation failed because the memblock.current_limit
> > > > was extremely low. That's why I expand the first reservation from 1 PAGESIZE to
> > > > 1 PMD_SIZE in my patch in order to avoid this issue. Please kindly let me know
> > > > if any suggestion, thank you.
> >
> >
> > > This looks like it is a separate issue. The memblock/cma code should
> > > not choke on a reserved page of memory at 0x0.
> > >
> > > Perhaps Russell or Mike (cc'ed) have an idea how to address this?
> >
> > Presuming that the last memblock dump comes from the end of
> > arm_memblock_init() with the this memory map
> >
> > memory[0x0] [0x0000000000000000-0x0000000000000fff], 0x0000000000001000 bytes flags: 0x4
> > memory[0x1] [0x0000000000001000-0x0000000007ef5fff], 0x0000000007ef5000 bytes flags: 0x0
> > memory[0x2] [0x0000000007ef6000-0x0000000007f09fff], 0x0000000000014000 bytes flags: 0x4
> > memory[0x3] [0x0000000007f0a000-0x000000003cb3efff], 0x0000000034c35000 bytes flags: 0x0
> >
> > adjust_lowmem_bounds() will set the memblock_limit (and respectively global
> > memblock.current_limit) to 0x1000 and any further memblock_alloc*() will
> > happily fail.
> >
> > I believe that the assumption for memblock_limit calculations was that the
> > first bank has several megs at least.
> >
> > I wonder if this hack would help:
> >
> > diff --git a/arch/arm/mm/mmu.c b/arch/arm/mm/mmu.c
> > index d9a0038..948e5b9 100644
> > --- a/arch/arm/mm/mmu.c
> > +++ b/arch/arm/mm/mmu.c
> > @@ -1206,7 +1206,7 @@ void __init adjust_lowmem_bounds(void)
> >                        * allocated when mapping the start of bank 0, which
> >                        * occurs before any free memory is mapped.
> >                        */
> > -                     if (!memblock_limit) {
> > +                     if (memblock_limit < PMD_SIZE) {
> >                               if (!IS_ALIGNED(block_start, PMD_SIZE))
> >                                       memblock_limit = block_start;
> >                               else if (!IS_ALIGNED(block_end, PMD_SIZE))
> >
>
> I applied this patch as well and it works well on rpi-2 model B.
>

Thanks, Chester, that is good to know.

However, afaict, this only affects systems where physical memory
starts at address 0x0, so I think we need a better fix.

I know Mike has been looking into the NOMAP stuff lately, and your
original patch contains a hunk that makes this code (?) disregard
nomap memblocks. That might be a better approach.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
