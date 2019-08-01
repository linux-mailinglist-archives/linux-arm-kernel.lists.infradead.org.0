Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C037D2C0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 03:19:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HmCfNQDSlvmT68VH7cyL9JHGBknqol65veLmahiacBo=; b=skEhcgspUtkjpS
	AB68TKDPrh0344FxccfkQq+g2eeS5TvaPqt0kyAR8roEZXVkVHVnxOWOv23uVA71K0Fm+UNhQClQo
	F5JtvN5/qb0Aft7jWtLz6Rp+D0a/LL59YVg6jZHLsMyX7J9btuaUR9uDqjmnwyyufk8MCRJLqv66i
	eLDQOPAfm1J6fcQeEscd090Vr4qh5+/KzT+vrUBgWLk+2cvSLznlv9nOUtG5Gqf/U8qMHEnYf/ikn
	CP3337xrj3GglsrzOa3NxTos6N/3lak0kbU4qENCkYAsREuV9CMCI9LuaJ+lm9a+Z6OwwBL5ZzcNw
	HaAP35+LOWrsOMLPmdIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hszkr-0008QO-In; Thu, 01 Aug 2019 01:19:41 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hszkj-0008FZ-9a
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 01:19:34 +0000
Received: by mail-vs1-xe42.google.com with SMTP id y16so47662633vsc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 18:19:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=13TUXhRMp3FAWj7cl2ooNj24+BeTIKfGauogLqkOLOo=;
 b=BIabTuIURlnazJx47VnIx9ebu5ZLsFf/42Kw28foq6a4O1MqfFDdXUmuXl5bOTzNTo
 c73SwUsLt+l0kJ1xwkufbtMpFhLjLMhvQg3lYTvehg0Op0rpF2GgeCFZ8uv9wjxg04Pp
 olM/nMcYLH2YWWO4zAhX9bfpr52P03hhXUPW7aWM2tItIHCjGDJo/Qz0n/sUj4XAkSKL
 EId+tiTXJFf+YIa1PuVjNE0EBBIjyaJ0fkWw66wjByiyWE1EFDZb0Rsd72e1nBVRoeM9
 d/Zz+3cQbvViAHyuNghDy/3K2gJ0sHL2iWOL6Ge4o808jyhzrorTi4rMtJmmItPhAhPv
 kArQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=13TUXhRMp3FAWj7cl2ooNj24+BeTIKfGauogLqkOLOo=;
 b=UlIF7Mgi+1HQZvMx54SdVH13vC+2MHTJudc1dWqqvnE/w7bx2NvUX4mLxmE92IFFDu
 dBPWkFlc7txuTOqhyVNYrEczbZUWrbSOzO7buhZi8BIa+MIb56caKxzz0yTn6GI2dadW
 jA7/EOf65NZmA1NtHnEHOlqLC0K6yPdt06BVrF2i/f1N2ii6/anuaQvoFMvSX94jbvfL
 rjyY1uNB1Sq0b+SLf5xdXU4ggC2+sXNwkKbEZpIBHryzr5MEmYaPtc+0s942Lqt1RDGu
 CrYKwOWW0QedTxUOL0+SWVvsG/WduucPLo1f7iAJtq7Uj75yjwqzQBvZ8TbrakPq1kBP
 H7cQ==
X-Gm-Message-State: APjAAAUKJuDbxHv3IZcXAQuWpXKTTjyu39uF4Tlwn5UdjYGNDqo41kuj
 xBCqqEVTqCrRu9oyQV7fVIMX/OAU1Qvwhl9XT5UXCw==
X-Google-Smtp-Source: APXvYqz7JwjN0CekQ/43wMyQXbHgfz3y9aePLubTv4LPS5W0Flo3K0LVkKv0dmpkKDEQfes+y+C2dhitqv7S+3ZqA10=
X-Received: by 2002:a67:e906:: with SMTP id c6mr32908601vso.82.1564622368701; 
 Wed, 31 Jul 2019 18:19:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190705080231.123522-1-pcc@google.com>
 <20190712193846.174893-1-pcc@google.com>
 <20190731164818.m2und6msyhlbf5oi@willie-the-truck>
In-Reply-To: <20190731164818.m2und6msyhlbf5oi@willie-the-truck>
From: Peter Collingbourne <pcc@google.com>
Date: Wed, 31 Jul 2019 18:19:17 -0700
Message-ID: <CAMn1gO51aDnLLMNkr36T3UFVEN48QczOa46YriznYrSqaJF=wA@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: Add support for relocating the kernel with RELR
 relocations
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_181933_337439_61ACDC11 
X-CRM114-Status: GOOD (  29.48  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 9:48 AM Will Deacon <will@kernel.org> wrote:
>
> On Fri, Jul 12, 2019 at 12:38:46PM -0700, Peter Collingbourne wrote:
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
> > Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> > Changes in v2:
> > - Reverted change to RELA processing
> > - Added more comments, as requested by Nick and Will
> > - Added a feature test for NM and OBJCOPY
> > - Made CONFIG_RELR=y the default if the tools support it
> >
> >  arch/arm64/Kconfig              | 10 ++++
> >  arch/arm64/Makefile             |  4 ++
> >  arch/arm64/kernel/head.S        | 96 ++++++++++++++++++++++++++++++---
> >  arch/arm64/kernel/vmlinux.lds.S |  9 ++++
> >  init/Kconfig                    |  3 ++
> >  scripts/tools-support-relr.sh   | 16 ++++++
> >  6 files changed, 132 insertions(+), 6 deletions(-)
> >  create mode 100755 scripts/tools-support-relr.sh
> >
> > diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> > index 7442edbcabfc3..cf3907d21d097 100644
> > --- a/arch/arm64/Kconfig
> > +++ b/arch/arm64/Kconfig
> > @@ -1476,6 +1476,16 @@ config RELOCATABLE
> >         relocation pass at runtime even if the kernel is loaded at the
> >         same address it was linked at.
> >
> > +config RELR
> > +     bool "Use RELR relocation packing"
> > +     depends on RELOCATABLE && TOOLS_SUPPORT_RELR
> > +     default y
> > +     help
> > +       Store the kernel's dynamic relocations in the RELR relocation packing
> > +       format. Requires a compatible linker (currently only LLD supports
>
> Drop "currently" because it will just rot

Done in v3.

> > +       this feature), as well as compatible NM and OBJCOPY utilities
> > +       (llvm-nm and llvm-objcopy are compatible).
> > +
> >  config RANDOMIZE_BASE
> >       bool "Randomize the address of the kernel image"
> >       select ARM64_MODULE_PLTS if MODULES
> > diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> > index bb1f1dbb34e8f..11f84450c7784 100644
> > --- a/arch/arm64/Makefile
> > +++ b/arch/arm64/Makefile
> > @@ -22,6 +22,10 @@ LDFLAGS_vmlinux            += -shared -Bsymbolic -z notext -z norelro \
> >                       $(call ld-option, --no-apply-dynamic-relocs)
> >  endif
> >
> > +ifeq ($(CONFIG_RELR),y)
> > +  LDFLAGS_vmlinux += --pack-dyn-relocs=relr
> > +endif
>
> RELR isn't arm64-specific, right? So we could put this in the top-level
> Makefile and have arm64 select ARCH_HAS_RELR if relocatable, so that other
> architecture can easily support this in future.

Makes sense, done in v3.

> >  ifeq ($(CONFIG_ARM64_ERRATUM_843419),y)
> >    ifeq ($(call ld-option, --fix-cortex-a53-843419),)
> >  $(warning ld does not support --fix-cortex-a53-843419; kernel may be susceptible to erratum)
> > diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
> > index 2cdacd1c141b9..cc23302e9d95e 100644
> > --- a/arch/arm64/kernel/head.S
> > +++ b/arch/arm64/kernel/head.S
> > @@ -102,6 +102,8 @@ pe_header:
> >        *  x23        stext() .. start_kernel()  physical misalignment/KASLR offset
> >        *  x28        __create_page_tables()     callee preserved temp register
> >        *  x19/x20    __primary_switch()         callee preserved temp registers
> > +      *  x24        __primary_switch() .. relocate_kernel()
> > +      *                                        current RELR displacement
> >        */
> >  ENTRY(stext)
> >       bl      preserve_boot_args
> > @@ -834,14 +836,93 @@ __relocate_kernel:
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
> > +
> > +1:
> > +#ifdef CONFIG_RELR
> > +     /*
> > +      * Apply RELR relocations.
> > +      *
> > +      * RELR is a compressed format for storing relative relocations. The
> > +      * encoded sequence of entries looks like:
> > +      * [ AAAAAAAA BBBBBBB1 BBBBBBB1 ... AAAAAAAA BBBBBB1 ... ]
>
> I assume these are treated as an array of u64 types for the purposes of
> endianness?

Yes, the element type is defined as an integer whose endianness
matches the ELF endianness and whose size matches the ELF bitness.
This may be one of the many things that would need to be adjusted for
a hypothetical ILP32 kernel however because ILP32 on aarch64 uses
32-bit ELF according to the latest spec.

> (have you tested with a big-endian kernel?).

Unfortunately I have no easy way to test that because LLD doesn't
currently support big-endian aarch64.

Peter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
