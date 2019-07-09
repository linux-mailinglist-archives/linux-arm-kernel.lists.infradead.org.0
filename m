Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E08B63DB4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 00:05:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cO3N9NCgRVA3972Rmxn4Pa5Lsm92i9AGftryACbhLnU=; b=ilsrSdyO868AxE
	6+Bm5xoBm0Kw/8Sb/D/HeTqjunijmREmk3LwyT/c1wEIzp+JwOZLN7Itingq/WvrSGsypGX3xiJK6
	BW9RzK1a3LNbm/a6i76muaQ/WBe2YX84KkHGKpfvdMkpnIvh6I8bYdQwWaAfrmxd03E52tiGag0SY
	2Itdmdb7J5K9SCj8WdD1WMs35URFLrl/Cjfm3+uSv4TZIJHsdw3udXeTZvXMQYif18fVB7kGhCbwz
	r7AAZtf8pYQSO+13TFlPW7ZUNUhprUHmPmcfrUPUbZH35UExeNEyFJaTNylKxRgFaocWS+mFZ285F
	ey9PMyrje4DgUyi8z1KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkyEY-0005Jl-Q4; Tue, 09 Jul 2019 22:05:10 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkyEF-0005J8-8Q
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 22:04:53 +0000
Received: by mail-vs1-xe43.google.com with SMTP id k9so168752vso.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 15:04:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OI07+jhaZ3pLwKzUYgV59wBI9jHcKVeWDh5Du9sn04Q=;
 b=DdJ6JtpFVHnq5HjYR4EWUjWpJS5fWXRiR7mefnJiWnxSNHwAK1RC1pk2tsmUYBNgF7
 c0Bo7s/NmjfCxoeBJJvmtiYR9SSZzhV4oaiUkiQ6PtUJ09E+ILJtxIGqLahzu7BfirCb
 Zuw/j0LrFsrTB5L3BKOGaEr9+Fin5S7r3IqrLxSk/Dob9ogvcnaTV3c0RkzFWAMT8Mmr
 sZtAuRnCOk2BIFnpwKJbuUG4qM1XNXCrCow9BNPjn4nBZA9lZ001VKVfXQ+QSTAJUHl9
 NzVsH7sWZovGf3dMdrumtZ08vZQUTUNVSOGS2ey1aM9yRnQxQ2+Nq0525TeKtujdY+0D
 Jj2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OI07+jhaZ3pLwKzUYgV59wBI9jHcKVeWDh5Du9sn04Q=;
 b=rz13ojJfYlRgs6aji38O8v7qdGV8fflZBCpBumYDy6/+09mXsrbIBolfUzgbhMqZou
 fNQzjfQcFvehJOyi9rdK4kfI97S+D1VQ5Ok6mibkUjl7OqW3Dkbagg10MySv7oJaDHbT
 kjVqkTElkbT5LlzoKdQA8JVp2C9Jy93zrCPC3QYVd6ZjA4B6QEcIOBLWXRiuRsloboGj
 KC3t1qsHlN0lvzMZJeZm0+hchIT1eRdb/HHwkC2lAA7RiUZeblc2lU3XsclvvwOsDPqy
 GgrB0dOGfjmC+3HY9klxvfXzRvBCux8Yvp7u76TcuLKyboyHQsEB4CBUSD9lgB9nI7c+
 BEiQ==
X-Gm-Message-State: APjAAAVjil7V2DeUABReMjswMrTZUreD5axAIDoYggjjNvItGExybSG7
 X1EI52HNu7giNaPWGIx3v2pD+U8FPEJEwmOD4LbOJg==
X-Google-Smtp-Source: APXvYqyw2K6pD3gLylPPe+C4IKkDaWeASdk5hgoonZEbwaj1SMofVs1UQETNdL27nQvdVvHJYaneP7vZQzDpLqsFgEc=
X-Received: by 2002:a67:e906:: with SMTP id c6mr9637403vso.82.1562709887139;
 Tue, 09 Jul 2019 15:04:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190705080231.123522-1-pcc@google.com>
 <CAKwvOd=q8-zZJ443YYQbzQrtvVX1Z70o6sT3Zft+vYOuCjAhxA@mail.gmail.com>
In-Reply-To: <CAKwvOd=q8-zZJ443YYQbzQrtvVX1Z70o6sT3Zft+vYOuCjAhxA@mail.gmail.com>
From: Peter Collingbourne <pcc@google.com>
Date: Tue, 9 Jul 2019 15:04:35 -0700
Message-ID: <CAMn1gO5RR7mbOb3ZgkpN=fbP4tfYYZJLXeX6xyvT6xtqxZwpVw@mail.gmail.com>
Subject: Re: [PATCH] arm64: Add support for relocating the kernel with RELR
 relocations
To: Nick Desaulniers <ndesaulniers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_150451_330016_F2B379E8 
X-CRM114-Status: GOOD (  43.99  )
X-Spam-Score: -14.4 (--------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-14.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 8, 2019 at 11:02 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Fri, Jul 5, 2019 at 1:03 AM 'Peter Collingbourne' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > RELR is a relocation packing format for relative relocations.
> > The format is described in a generic-abi proposal:
> > https://groups.google.com/d/topic/generic-abi/bX460iggiKg/discussion
>
> Cool, Rahul reports 9-19% savings for various userspace binaries.
> Just curious, but a quick scan makes it seem like this could be
> do-able for other arch's as well? (maybe a topic for a separate
> thread)

Yes, but it would likely involve reimplementing the self-relocation
code in assembly for each architecture so that we can guarantee that
the code does not itself need to be relocated. Probably worth
discussing on a separate thread.

> > The LLD linker can be instructed to pack relocations in the RELR
> > format by passing the flag --pack-dyn-relocs=relr.
> >
> > This patch adds a new config option, CONFIG_RELR. Enabling this option
> > instructs the linker to pack vmlinux's relative relocations in the RELR
> > format, and causes the kernel to apply the relocations at startup along
> > with the RELA relocations. RELA relocations still need to be applied
> > because the linker will emit RELA relative relocations if they are
> > unrepresentable in the RELR format (i.e. address not a multiple of 2).
> >
> > Enabling CONFIG_RELR reduces the size of a defconfig kernel image
> > with CONFIG_RANDOMIZE_BASE by 3.5MB/16% uncompressed, or 550KB/5%
> > compressed (lz4).
>
> Neat! Thanks for the patch; I'll try to get it tested this week to see
> if I can reproduce the results and boot test on hardware (I think
> llvm-nm has no known issues, I'll need to check llvm-objcopy).

Thanks. I've already boot tested it using qemu and I was planning to
test on hikey960 (currently waiting on a part), but more testing would
be useful.

> > Signed-off-by: Peter Collingbourne <pcc@google.com>
> > ---
> >  arch/arm64/Kconfig              |  9 +++++
> >  arch/arm64/Makefile             |  4 ++
> >  arch/arm64/kernel/head.S        | 70 ++++++++++++++++++++++++++++-----
> >  arch/arm64/kernel/vmlinux.lds.S |  9 +++++
> >  4 files changed, 83 insertions(+), 9 deletions(-)
> >
> > diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> > index 697ea05107298..f0cd0d2607e70 100644
> > --- a/arch/arm64/Kconfig
> > +++ b/arch/arm64/Kconfig
> > @@ -1447,6 +1447,15 @@ config RELOCATABLE
> >           relocation pass at runtime even if the kernel is loaded at the
> >           same address it was linked at.
> >
> > +config RELR
> > +       bool "Use RELR relocation packing"
> > +       depends on RELOCATABLE && $(ld-option,--pack-dyn-relocs=relr)
>
> Oh, ld-option in Kconfig? +Masahiro
>
> > +       help
> > +         Store the kernel's dynamic relocations in the RELR relocation packing
> > +         format. Requires a compatible linker (currently only LLD supports
> > +         this feature), as well as compatible NM and OBJCOPY utilities
> > +         (llvm-nm and llvm-objcopy are compatible).
>
> So sounds like `make LD=ld.lld NM=llvm-nm OBJCOPY=llvm-objcopy` will
> be needed to test.  The ld-option check above doesn't seem strong
> enough, but maybe it's not easy to feature test NM or OBJCOPY?

Right. Ideally we want to test the property that the tool accepts an
input file with a .relr.dyn section, and this isn't easy without
actually creating such a file. We could test that the tools are
actually the LLVM versions (e.g. by testing the output of $TOOL
--version), but I'm not sure if we want to exclude the possibility
that GNU or other toolchains will add support for this section in the
future.

> > +
> >  config RANDOMIZE_BASE
> >         bool "Randomize the address of the kernel image"
> >         select ARM64_MODULE_PLTS if MODULES
> > diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> > index e9d2e578cbe67..16a8636f815c9 100644
> > --- a/arch/arm64/Makefile
> > +++ b/arch/arm64/Makefile
> > @@ -22,6 +22,10 @@ LDFLAGS_vmlinux              += -shared -Bsymbolic -z notext -z norelro \
> >                         $(call ld-option, --no-apply-dynamic-relocs)
> >  endif
> >
> > +ifeq ($(CONFIG_RELR),y)
> > +  LDFLAGS_vmlinux += --pack-dyn-relocs=relr
> > +endif
> > +
> >  ifeq ($(CONFIG_ARM64_ERRATUM_843419),y)
> >    ifeq ($(call ld-option, --fix-cortex-a53-843419),)
> >  $(warning ld does not support --fix-cortex-a53-843419; kernel may be susceptible to erratum)
> > diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
> > index 2cdacd1c141b9..9b27d5e7d8f70 100644
> > --- a/arch/arm64/kernel/head.S
> > +++ b/arch/arm64/kernel/head.S
> > @@ -102,6 +102,7 @@ pe_header:
> >          *  x23        stext() .. start_kernel()  physical misalignment/KASLR offset
> >          *  x28        __create_page_tables()     callee preserved temp register
> >          *  x19/x20    __primary_switch()         callee preserved temp registers
> > +        *  x24        __primary_switch()         current RELR displacement
> >          */
> >  ENTRY(stext)
> >         bl      preserve_boot_args
> > @@ -824,24 +825,63 @@ __relocate_kernel:
> >          * Iterate over each entry in the relocation table, and apply the
> >          * relocations in place.
> >          */
> > -       ldr     w9, =__rela_offset              // offset to reloc table
> > -       ldr     w10, =__rela_size               // size of reloc table
> > -
> >         mov_q   x11, KIMAGE_VADDR               // default virtual offset
> >         add     x11, x11, x23                   // actual virtual offset
> > +
> > +       ldr     w9, =__rela_offset              // offset to reloc table
> > +       ldr     w10, =__rela_size               // size of reloc table
>
> Was this reordering intentional?  I don't think w9 or w10 would change
> across the mov_q and add above? Or is it just to match the loop update
> below?

Yes, it was intended to group all of the code that deals with RELA
tables together so that it resembles the RELR code.

> >         add     x9, x9, x11                     // __va(.rela)
> >         add     x10, x9, x10                    // __va(.rela) + sizeof(.rela)
> >
> >  0:     cmp     x9, x10
> >         b.hs    1f
> > -       ldp     x11, x12, [x9], #24
> > -       ldr     x13, [x9, #-8]
> > -       cmp     w12, #R_AARCH64_RELATIVE
> > +       ldp     x12, x13, [x9], #24
> > +       ldr     x14, [x9, #-8]
> > +       cmp     w13, #R_AARCH64_RELATIVE
>
> Can you help me understand this renaming?
> x11 -> x12
> x13 -> x14
> x12 -> x13
> but they all get clobbered before use in your added ifdef hunk?

I use the value of x11 before it is clobbered in the instruction with
the comment "// __va(.relr)".

> >         b.ne    0b
> > -       add     x13, x13, x23                   // relocate
> > -       str     x13, [x11, x23]
> > +       add     x14, x14, x23                   // relocate
> > +       str     x14, [x12, x23]
> >         b       0b
> > -1:     ret
> > +
> > +1:
> > +#ifdef CONFIG_RELR
> > +       ldr     w9, =__relr_offset              // offset to reloc table
> > +       ldr     w10, =__relr_size               // size of reloc table
>
> Were these modified since first loaded in the above hunk?  I see the
> offsets applied below, but I don't spot any loops back up to `1:` (but
> could be missing it).  It also doesn't look like x11 or x10 are
> modified below (or above), so this looks like we're rematerializing
> values that already exist in those registers, IIUC?  Maybe I'm missing
> some side effect of one of the instructions?

These instructions refer to __relr_{offset,size} which are different
from __rela_{offset,size} loaded above. They are only loaded once per
function call; the main loop is between labels 2 and 7 below.

You might have missed the implicit increment of x9 by 8 in the "ldr
x11, [x9], #8" instruction below (see also similar instructions
above), which is how we move to the next relocation table entry in the
main loop.

> > +       add     x9, x9, x11                     // __va(.relr)
> > +       add     x10, x9, x10                    // __va(.relr) + sizeof(.relr)
> > +
> > +       sub     x15, x23, x24                   // delta from previous offset
> > +       cbz     x15, 7f                         // nothing to do if unchanged
> > +       mov     x24, x23                        // save new offset
> > +
> > +2:     cmp     x9, x10
> > +       b.hs    7f
> > +       ldr     x11, [x9], #8
> > +       tbnz    x11, #0, 3f                     // branch to handle bitmaps
> > +       add     x13, x11, x23
> > +       ldr     x12, [x13]                      // relocate address entry
> > +       add     x12, x12, x15
> > +       str     x12, [x13], #8                  // adjust to start of bitmap
> > +       b       2b
> > +
> > +3:     mov     x14, x13
> > +4:     lsr     x11, x11, #1
> > +       cbz     x11, 6f
> > +       tbz     x11, #0, 5f                     // skip bit if not set
> > +       ldr     x12, [x14]                      // relocate bit
> > +       add     x12, x12, x15
> > +       str     x12, [x14]
> > +
> > +5:     add     x14, x14, #8                    // move to next bit's address
> > +       b       4b
> > +
> > +6:     add     x13, x13, #(8 * 63)             // move to next bitmap's address
>
> Sorry, what's this constant `#(8 * 63)`?

It is the number of bytes covered by a bitmap entry. 8 is the word
size, and 63 is the number of significant bits in a bitmap entry.

>
> > +       b       2b
> > +
> > +7:
> > +#endif
> > +       ret
> > +
> >  ENDPROC(__relocate_kernel)
> >  #endif
> >
> > @@ -854,6 +894,18 @@ __primary_switch:
> >         adrp    x1, init_pg_dir
> >         bl      __enable_mmu
> >  #ifdef CONFIG_RELOCATABLE
> > +#ifdef CONFIG_RELR
> > +       /*
> > +        * RELR is similar to REL in that the addends are stored in place in the
> > +        * binary. This means that RELR relocations cannot be applied
> > +        * idempotently. We use x24 to keep track of the currently applied
> > +        * displacement so that we can correctly relocate if __relocate_kernel
> > +        * is called twice with non-zero displacements (i.e. if there is both a
> > +        * physical misalignment and a KASLR displacement). We start off at 0
>
> Sounds like I should test w/ and w/o CONFIG_RANDOMIZE_BASE enabled?

Sure, makes sense.

Peter

> > +        * because no displacement has been applied yet.
> > +        */
> > +       mov     x24, #0
> > +#endif
> >         bl      __relocate_kernel
> >  #ifdef CONFIG_RANDOMIZE_BASE
> >         ldr     x8, =__primary_switched
> > diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
> > index 7fa0083749078..31716afa30f65 100644
> > --- a/arch/arm64/kernel/vmlinux.lds.S
> > +++ b/arch/arm64/kernel/vmlinux.lds.S
> > @@ -200,6 +200,15 @@ SECTIONS
> >         __rela_offset   = ABSOLUTE(ADDR(.rela.dyn) - KIMAGE_VADDR);
> >         __rela_size     = SIZEOF(.rela.dyn);
> >
> > +#ifdef CONFIG_RELR
> > +       .relr.dyn : ALIGN(8) {
> > +               *(.relr.dyn)
> > +       }
> > +
> > +       __relr_offset   = ABSOLUTE(ADDR(.relr.dyn) - KIMAGE_VADDR);
> > +       __relr_size     = SIZEOF(.relr.dyn);
> > +#endif
> > +
> >         . = ALIGN(SEGMENT_ALIGN);
> >         __initdata_end = .;
> >         __init_end = .;
> > --
>
> --
> Thanks,
> ~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
