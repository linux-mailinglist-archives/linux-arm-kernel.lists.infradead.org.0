Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 603F163E48
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 01:14:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NKxCBzpSL/2b+JMPPgb6cH11GFpka9DYv80UO4+5NSk=; b=tj1nZT5mhRLMup
	RDd7HzXKHCu4spbBfEdllUnHo2c6kxZ1F4ZbLdRvv7bYFFc5GvPyJqiWcPbwIzVOo7RmSLfDcM+GD
	8TPHGUdEjxE0OpOgogSeK4Ymz3y0Qstiu3NcppEFca1O8RX7X/W2Y5frzIX0ZW1EOORNyqTRPwgIu
	B6KLhJ/zqKHKxvXBPRSZLrQjxqk50aVcVC6PEJAtMYhfnxwBhjKx68CL09VcxsHczaygAzG6tBSfb
	AMitZOUd40Ct9QFdqa9CBlKV2sEKziS0TDYK2dzcfGeNZoxDZC+MTvC3ASK/CZb0xx/FuZ2qVp6yk
	VUq/ka1BxnLEh8YRhY0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkzJC-0007z8-Bl; Tue, 09 Jul 2019 23:14:02 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkzIx-0007ya-2n
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 23:13:48 +0000
Received: by mail-pg1-x544.google.com with SMTP id p10so217696pgn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 16:13:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=X+XFg2gunWoGNoZGYV/b+8JbT2riq9VhFBzSoNZF82s=;
 b=cCNqnFOtftEKAXERE7d/rOjK21cxmt1ijoB3q26vUijXYZAYyRv8c+MLeakxqoXCsV
 i0PBKB5DKsQwCj21Ttv/2097j4u3N0i1fWd4sPezCM7DC75MT9AD/DxJ42AG6CNcindU
 QxwPdfvxHv3CUpBzBua1LfyvBXVWpE8xo7nn+Fioop5t8NnNNgyeDH2w4cD3ZqfNvjBI
 zVIeHWeXoOEMAm4AVSoQX0dUvuF8b9FfMbEI9/183d52A7+LoecnYweF4UmYnVU9TX/7
 wNxx4fRQ0IHzHJW2ssY6ViinFx7aeo8usBgRij83pwxYXV69uU82sh9y9zYB9tp7qMs2
 uvxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X+XFg2gunWoGNoZGYV/b+8JbT2riq9VhFBzSoNZF82s=;
 b=LPGo/KwIQ/7qjjCmYOC5IFGSg3bY27FOGJnxzjR0tK+xVvHZnYWnM5mJaVIr6Zm6+L
 UKBlUQR4cTUmtBmyzIv0Ar6pxfnVDYU5UzZ8t4UDV/DNqnr07vEOIVs696iemKkYobEC
 JC+68GP1790pHOYvv69RwnK79KcP1nUxm6CJfm/xTPa2BZHJI0+IbYDWxdzotWCqnDK6
 onzzgdwLOsws37zlaDTNU1eIld02s8jjM0lu41GKJJ9nrzQ+yjYWFf5Sq2k12Yu9XNTt
 ub5AqrwHBz376HcPcO3fRoys1MC6NgChFIIM+tF0NtqreJr59O7idN7b8pQUAAC7kBR+
 kSZg==
X-Gm-Message-State: APjAAAVK2tTY8i/rZOrcSiIUnrIbtb/vkSXBs50D7vW7Edj3RJwokJbZ
 adMkLW/Hn6d+kQdKHhRIuGc0lIsJ9cV4tWBWThzt2g==
X-Google-Smtp-Source: APXvYqx+b03tvbbmKZF8MEC2uUF+1vhapJb+M4DpLVuGST846E80BnBdpSooPaQFoDQh//vmFPm/l2Pzy9nH/WhUBfU=
X-Received: by 2002:a65:5687:: with SMTP id v7mr33987508pgs.263.1562714025730; 
 Tue, 09 Jul 2019 16:13:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190705080231.123522-1-pcc@google.com>
 <CAKwvOd=q8-zZJ443YYQbzQrtvVX1Z70o6sT3Zft+vYOuCjAhxA@mail.gmail.com>
 <CAMn1gO5RR7mbOb3ZgkpN=fbP4tfYYZJLXeX6xyvT6xtqxZwpVw@mail.gmail.com>
In-Reply-To: <CAMn1gO5RR7mbOb3ZgkpN=fbP4tfYYZJLXeX6xyvT6xtqxZwpVw@mail.gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 9 Jul 2019 16:13:34 -0700
Message-ID: <CAKwvOdmU0y=pu1+QfThMb+d9hZeydtHSBmdYPV1rJnr6Lx6sGQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: Add support for relocating the kernel with RELR
 relocations
To: Peter Collingbourne <pcc@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_161347_153919_ED66C75C 
X-CRM114-Status: GOOD (  25.59  )
X-Spam-Score: -14.4 (--------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-14.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

On Tue, Jul 9, 2019 at 3:04 PM Peter Collingbourne <pcc@google.com> wrote:
>
> On Mon, Jul 8, 2019 at 11:02 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Fri, Jul 5, 2019 at 1:03 AM 'Peter Collingbourne' via Clang Built
> > Linux <clang-built-linux@googlegroups.com> wrote:
> > > +config RELR
> > > +       bool "Use RELR relocation packing"
> > > +       depends on RELOCATABLE && $(ld-option,--pack-dyn-relocs=relr)
> >
> > Oh, ld-option in Kconfig? +Masahiro
> >
> > > +       help
> > > +         Store the kernel's dynamic relocations in the RELR relocation packing
> > > +         format. Requires a compatible linker (currently only LLD supports
> > > +         this feature), as well as compatible NM and OBJCOPY utilities
> > > +         (llvm-nm and llvm-objcopy are compatible).
> >
> > So sounds like `make LD=ld.lld NM=llvm-nm OBJCOPY=llvm-objcopy` will
> > be needed to test.  The ld-option check above doesn't seem strong
> > enough, but maybe it's not easy to feature test NM or OBJCOPY?
>
> Right. Ideally we want to test the property that the tool accepts an
> input file with a .relr.dyn section, and this isn't easy without
> actually creating such a file. We could test that the tools are
> actually the LLVM versions (e.g. by testing the output of $TOOL
> --version), but I'm not sure if we want to exclude the possibility
> that GNU or other toolchains will add support for this section in the
> future.

eh, I strongly dislike version checks due to their brittleness.
https://lkml.org/lkml/2019/6/25/1253
Maybe a script like `scripts/cc-can-link.sh` ?

> > >         add     x9, x9, x11                     // __va(.rela)
> > >         add     x10, x9, x10                    // __va(.rela) + sizeof(.rela)
> > >
> > >  0:     cmp     x9, x10
> > >         b.hs    1f
> > > -       ldp     x11, x12, [x9], #24
> > > -       ldr     x13, [x9, #-8]
> > > -       cmp     w12, #R_AARCH64_RELATIVE
> > > +       ldp     x12, x13, [x9], #24
> > > +       ldr     x14, [x9, #-8]
> > > +       cmp     w13, #R_AARCH64_RELATIVE
> >
> > Can you help me understand this renaming?
> > x11 -> x12
> > x13 -> x14
> > x12 -> x13
> > but they all get clobbered before use in your added ifdef hunk?
>
> I use the value of x11 before it is clobbered in the instruction with
> the comment "// __va(.relr)".
>
> > >         b.ne    0b
> > > -       add     x13, x13, x23                   // relocate
> > > -       str     x13, [x11, x23]
> > > +       add     x14, x14, x23                   // relocate
> > > +       str     x14, [x12, x23]
> > >         b       0b
> > > -1:     ret
> > > +
> > > +1:
> > > +#ifdef CONFIG_RELR
> > > +       ldr     w9, =__relr_offset              // offset to reloc table
> > > +       ldr     w10, =__relr_size               // size of reloc table
> >
> > Were these modified since first loaded in the above hunk?  I see the
> > offsets applied below, but I don't spot any loops back up to `1:` (but
> > could be missing it).  It also doesn't look like x11 or x10 are
> > modified below (or above), so this looks like we're rematerializing
> > values that already exist in those registers, IIUC?  Maybe I'm missing
> > some side effect of one of the instructions?
>
> These instructions refer to __relr_{offset,size} which are different
> from __rela_{offset,size} loaded above. They are only loaded once per
> function call; the main loop is between labels 2 and 7 below.

oh, sorry, yes I missed __relr_ vs __rela__.  Thanks for the clarification.

>
> You might have missed the implicit increment of x9 by 8 in the "ldr
> x11, [x9], #8" instruction below (see also similar instructions
> above), which is how we move to the next relocation table entry in the
> main loop.

Yep, I forgot about the pre vs post increment syntax:
http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.kui0100a/armasm_cihgjhed.htm
https://azeria-labs.com/memory-instructions-load-and-store-part-4/

> > > +6:     add     x13, x13, #(8 * 63)             // move to next bitmap's address
> >
> > Sorry, what's this constant `#(8 * 63)`?
>
> It is the number of bytes covered by a bitmap entry. 8 is the word
> size, and 63 is the number of significant bits in a bitmap entry.

Might be good to add that as a comment inline w/ the code?

Pulling down the patch to test.
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
