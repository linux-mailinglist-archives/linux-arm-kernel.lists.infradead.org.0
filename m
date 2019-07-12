Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98FB467578
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 21:41:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q3W3fj2+a4eABkEMbF/wVLA2H3JmVjWft17jpqYFVX0=; b=P+JRM9IaRd4eMR
	hUHDCQk6BCR/sko5oQaCFPIGXX7I8McyFC9MFdYA0P0oLFmafYXsGZ/RuJTppk5djBz8Et01aSsXO
	O3hgRZ7KHkitogfO1CfxSaBa+sJPV0IPZLl/pElDjTmeAVhuTQnOfBX6zMNLH3VYk7DO57mdHDfmX
	7nhdHpGvKGMJws86TTRPG0jyABEXK+vgla0DJZO6Xj0wf4RumARWgYdt5Gbv6syNfArH7sd+6NRHW
	qqVmIAsiYmX5uwWOcPsNJtF3ZuJrAi2epA1Rz+lsBEUKXvDELRuXzufez/Yqb0MlkWEw1XNmDXT46
	zRVqB7RgLjcXvzzTD4Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hm1Pj-0003ca-Nz; Fri, 12 Jul 2019 19:41:03 +0000
Received: from mail-vk1-xa44.google.com ([2607:f8b0:4864:20::a44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hm1PC-0003Oy-97
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 19:40:32 +0000
Received: by mail-vk1-xa44.google.com with SMTP id w186so2310566vkd.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jul 2019 12:40:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QmYsG2c9gdLtpTtADUB+0AnVVhFJh3Pqj6815V6+Oa8=;
 b=fjjna3A91dzJBut8ijjAdiCZdmUGRhRydMD+wdOPX49lsAeLIz/C0n3Gb0dpqKiIh/
 8QPMHqIWvIsKMKkh3t+Ttn8/LiqUDUjlSmVl2ytDK18ZA7p1JFDJE15z3RkFOhiBOT9V
 zITiBJqrAfxH2RdAzNyBJW0rWgFeewHX67Thnv44D7qk+ZajpMF0QWiiR5tvUCy4612o
 TCYQhnRV+eBAFEtzNqat004StG0pxtMPzqYsTFYvhfabfTa4mqXdtjFhFDy3c2wmoMN8
 W7HYKBSHnE1Kf8K2ynIuOiat2qabFaDiNk8nduC3/3lcdE1XoRpVy7/a4sh6h51w46iP
 xllg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QmYsG2c9gdLtpTtADUB+0AnVVhFJh3Pqj6815V6+Oa8=;
 b=G5iuD82OgTu1EHZnZ7W/75TV4i3lSvJ+ouQvU1ibxQ7+RhDIdiuAuq+zSp5bx8MUIZ
 C9RPF+CeEOQ0xOknQ82IYS8ry5OFmolzI9kNBylOn3tJYz3vxBh/9eThFmh6lproxrW2
 q+VvqfvqCX3RZKuT9BLQrr21rVT5kmGl9jz0EaKzX91p0pXNp6DZ9otWmLoALVKBoV9I
 Fms/pXGiQ2sRM4nI6FcKZqTowy7VRgFeNe/9IEaBXzEHZqz4zZVZkwpbA54OyHnNfZtE
 Ru2lsSxUOHUO+WQo5yEEakYkQRd7sslVe9wX2YzMkNvgIbRp5X6A3icxQh7S9fw86g9j
 0bmw==
X-Gm-Message-State: APjAAAWIdDOu0ZTAdWcmJcedZ0iSwK6aKnUsxyymvRGct9E0wh63cqPZ
 GzQi1ofNXtwQfyLhqdT9WuRUQTNwOUg5u13f05SFaQ==
X-Google-Smtp-Source: APXvYqwf7rhyel8HRNT4r2vnNGHEO3vZgGf+u9YPkowHzHqjEK1b8+NhIvqHnTJYAVnqcAnupWI00ipXU21FJ1Ba0wo=
X-Received: by 2002:a1f:9ad7:: with SMTP id c206mr6561639vke.31.1562960428682; 
 Fri, 12 Jul 2019 12:40:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190705080231.123522-1-pcc@google.com>
 <20190710162114.rucn5wyrlwhkifti@willie-the-truck>
In-Reply-To: <20190710162114.rucn5wyrlwhkifti@willie-the-truck>
From: Peter Collingbourne <pcc@google.com>
Date: Fri, 12 Jul 2019 12:40:16 -0700
Message-ID: <CAMn1gO5FyAUy7VSO4YBNniwjPqEoJVpm+_fEiaF=cp_Du991vw@mail.gmail.com>
Subject: Re: [PATCH] arm64: Add support for relocating the kernel with RELR
 relocations
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_124030_444537_12FB3D4C 
X-CRM114-Status: GOOD (  31.95  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a44 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 Catalin Marinas <catalin.marinas@arm.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 9:21 AM Will Deacon <will@kernel.org> wrote:
>
> On Fri, Jul 05, 2019 at 01:02:31AM -0700, Peter Collingbourne wrote:
> > RELR is a relocation packing format for relative relocations.
> > The format is described in a generic-abi proposal:
> > https://groups.google.com/d/topic/generic-abi/bX460iggiKg/discussion
> >
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
> >
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
> >         relocation pass at runtime even if the kernel is loaded at the
> >         same address it was linked at.
> >
> > +config RELR
> > +     bool "Use RELR relocation packing"
> > +     depends on RELOCATABLE && $(ld-option,--pack-dyn-relocs=relr)
>
> Do you know if this will also be supported by binutils and, if so, whether
> they've agreed to use the same name for the option?

A number of binutils developers (Cary Coutant, Alan Modra) expressed
support for the format on the generic-abi thread, but I don't know
what the plans of the binutils developers are in terms of
implementation.

> > +     help
> > +       Store the kernel's dynamic relocations in the RELR relocation packing
> > +       format. Requires a compatible linker (currently only LLD supports
> > +       this feature), as well as compatible NM and OBJCOPY utilities
> > +       (llvm-nm and llvm-objcopy are compatible).
> > +
> >  config RANDOMIZE_BASE
> >       bool "Randomize the address of the kernel image"
> >       select ARM64_MODULE_PLTS if MODULES
> > diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> > index e9d2e578cbe67..16a8636f815c9 100644
> > --- a/arch/arm64/Makefile
> > +++ b/arch/arm64/Makefile
> > @@ -22,6 +22,10 @@ LDFLAGS_vmlinux            += -shared -Bsymbolic -z notext -z norelro \
> >                       $(call ld-option, --no-apply-dynamic-relocs)
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
> >        *  x23        stext() .. start_kernel()  physical misalignment/KASLR offset
> >        *  x28        __create_page_tables()     callee preserved temp register
> >        *  x19/x20    __primary_switch()         callee preserved temp registers
> > +      *  x24        __primary_switch()         current RELR displacement
>
> I think the comment is a bit misleading here, since x24 is used by
> __relocate_kernel(). Maybe make the middle column say:
>
>         __primary_switch() .. __relocate_kernel()
>
> it's still not ideal, since the latter can be invoked twice, but oh well.

Done in v2.

> >        */
> >  ENTRY(stext)
> >       bl      preserve_boot_args
> > @@ -824,24 +825,63 @@ __relocate_kernel:
> >        * Iterate over each entry in the relocation table, and apply the
> >        * relocations in place.
> >        */
> > -     ldr     w9, =__rela_offset              // offset to reloc table
> > -     ldr     w10, =__rela_size               // size of reloc table
> > -
> >       mov_q   x11, KIMAGE_VADDR               // default virtual offset
> >       add     x11, x11, x23                   // actual virtual offset
> > +
> > +     ldr     w9, =__rela_offset              // offset to reloc table
> > +     ldr     w10, =__rela_size               // size of reloc table
>
> I agree with Nick that I'd prefer to leave these lines alone.

Okay, I've reverted this part in v2.

> >       add     x9, x9, x11                     // __va(.rela)
> >       add     x10, x9, x10                    // __va(.rela) + sizeof(.rela)
> >
> >  0:   cmp     x9, x10
> >       b.hs    1f
> > -     ldp     x11, x12, [x9], #24
> > -     ldr     x13, [x9, #-8]
> > -     cmp     w12, #R_AARCH64_RELATIVE
> > +     ldp     x12, x13, [x9], #24
> > +     ldr     x14, [x9, #-8]
> > +     cmp     w13, #R_AARCH64_RELATIVE
> >       b.ne    0b
> > -     add     x13, x13, x23                   // relocate
> > -     str     x13, [x11, x23]
> > +     add     x14, x14, x23                   // relocate
> > +     str     x14, [x12, x23]
> >       b       0b
> > -1:   ret
>
> So the reason you're removing this ret is because we'll end up with both a
> .relr section *and* .rela section, correct?

Right. It's likely that the rela section will be empty when
CONFIG_RELR is enabled, but it isn't guaranteed. There are currently
no relocations at odd addresses in arm64 defconfig, but I've seen a
few in at least one of our Android device kernels.

> > +1:
> > +#ifdef CONFIG_RELR
> > +     ldr     w9, =__relr_offset              // offset to reloc table
> > +     ldr     w10, =__relr_size               // size of reloc table
> > +     add     x9, x9, x11                     // __va(.relr)
> > +     add     x10, x9, x10                    // __va(.relr) + sizeof(.relr)
> > +
> > +     sub     x15, x23, x24                   // delta from previous offset
> > +     cbz     x15, 7f                         // nothing to do if unchanged
> > +     mov     x24, x23                        // save new offset
> > +
> > +2:   cmp     x9, x10
> > +     b.hs    7f
> > +     ldr     x11, [x9], #8
> > +     tbnz    x11, #0, 3f                     // branch to handle bitmaps
>
> Can we guarantee that x13 has been initialised at this point?

Yes. x13 will be initialized while processing an address entry, and
the format guarantees that each sequence of bitmap entries will be
preceded with an address entry.

> > +     add     x13, x11, x23
> > +     ldr     x12, [x13]                      // relocate address entry
> > +     add     x12, x12, x15
> > +     str     x12, [x13], #8                  // adjust to start of bitmap
> > +     b       2b
> > +
> > +3:   mov     x14, x13
> > +4:   lsr     x11, x11, #1
> > +     cbz     x11, 6f
> > +     tbz     x11, #0, 5f                     // skip bit if not set
> > +     ldr     x12, [x14]                      // relocate bit
> > +     add     x12, x12, x15
> > +     str     x12, [x14]
> > +
> > +5:   add     x14, x14, #8                    // move to next bit's address
> > +     b       4b
> > +
> > +6:   add     x13, x13, #(8 * 63)             // move to next bitmap's address
> > +     b       2b
>
> This desparately needs a block comment at the top (immediately after the
> #ifdef CONFIG_RELR) describing the algorithm and the layout of the .relr
> section, please.

Done in v2.



Peter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
