Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10A5067570
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 21:40:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HaGPP2OwxlWJQHOrx1B8I5vnix7SKLDu+o9I9SeUPgU=; b=sa9Om4NtzCEE12
	SihWVlO80koCfD+REHptTrid5MzQVuDBjvP2c/Pk4KLXllFPUlRCFxb6LnOT535ATqJ2SnEaXHId4
	LcpjQna/8+pBbmWKmUoQnpLdLQa5BIpg+oay3zsyhxVhSKaAcs2KhABj/c/CQxFoTB7VHxnxxXhxH
	dzxdBzHBHEm5DO+XI9Rj7+DaKGs6busSoyakzAbAuuJuzgP+3FjF9jUQ1D6wQM1I9m7X9gTJAbyWA
	Ty6PiWZdwX8lWXkp/iQUpREfgN67P6OwqWefo5dafY/EGXD948z2WBHgt3LorlVfzei4E3+yY39P2
	XyrejAOKoRwzH6YqhOQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hm1PK-0003NM-37; Fri, 12 Jul 2019 19:40:38 +0000
Received: from mail-vk1-xa41.google.com ([2607:f8b0:4864:20::a41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hm1P3-0003Ma-SV
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 19:40:23 +0000
Received: by mail-vk1-xa41.google.com with SMTP id b69so2319688vkb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jul 2019 12:40:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jf3a2VPz2kRH2FuR+a8ySEHrky73zbT5tznEgM5MSEo=;
 b=k1+42Pt5ZCltnIPJZUJuEmaH8HxwlbJLzm3I6WJhq+nvhkB+F/Jcruy0G3tsGHKELp
 2dcHIgUbOAD52AeF7N3K6e11AfZg8dyQmMEqqUBCk6p4YcmCYZWqC6Chi8XtZ34fI9d4
 Rs0DJfTcZ1htZ2cIns5DKX58AOSPEO6glueg+53kd7zwq8h2oghxvx3P+P8NEyQE+X6P
 N2IyghfpDS0M7sXyA33dXCH8Ib/h/TaoVw7Q7KEiNUtS6TiFMq0O4BFMyM75lJQDpz/j
 8iKDMBF2PB0sbGv/3xRo0tMfCbHIs0tUks+sjnUPq8HRdksNwV/0ultzchZ2Dr2mngY/
 nk9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jf3a2VPz2kRH2FuR+a8ySEHrky73zbT5tznEgM5MSEo=;
 b=QjrSdwha8zRQ+VSownbh6Pf3rSmeSjrTvcpzJi5SQOTkLKEO6ijV4+/1w0TGKq9HP9
 +La7UKkPwYA1pkxJ84c5s0ypQPzI/n1G90BDRlsO59LDnkAXbuK9wOZKlpNnsV3Enm7w
 7DJygiUPeKGLFTGCTLqRkpIagEsrJb7JK8Gr9xlBcA/nyVlmRj5Vg0AXiQ420BMgkoPM
 ugw1qvQaW2rxMT5GAitZnrtRZ2AfcU0+ZtvyEJvdxpudAxf1HD83u0RtpLTnHaVeq2gg
 usih3tu9Lh86vMHkUHxxIi29u/RW36/OVlJjfN6Xwojj7TYliGLTtYq0POux3fE4xOTa
 2aJQ==
X-Gm-Message-State: APjAAAV8zGXaJQmmv/YaaKHOIUq93orii/3p2BiqPzCkkWuRu/CNfTL9
 OqQeIBmYLaXjr/p1EFFnv1XhHanCVnbcljIWLTZglw==
X-Google-Smtp-Source: APXvYqwu0qkiy7qKOW5WdiuDdlmOel3jPbNf9LBkvkFQ70FZjbEcMW5tpA+8W0mUBPPRe7LiSWV1oVQn3aY1G9JwBXk=
X-Received: by 2002:a1f:2d50:: with SMTP id t77mr6779299vkt.46.1562960416867; 
 Fri, 12 Jul 2019 12:40:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190705080231.123522-1-pcc@google.com>
 <CAKwvOd=q8-zZJ443YYQbzQrtvVX1Z70o6sT3Zft+vYOuCjAhxA@mail.gmail.com>
 <CAMn1gO5RR7mbOb3ZgkpN=fbP4tfYYZJLXeX6xyvT6xtqxZwpVw@mail.gmail.com>
 <CAKwvOdmU0y=pu1+QfThMb+d9hZeydtHSBmdYPV1rJnr6Lx6sGQ@mail.gmail.com>
In-Reply-To: <CAKwvOdmU0y=pu1+QfThMb+d9hZeydtHSBmdYPV1rJnr6Lx6sGQ@mail.gmail.com>
From: Peter Collingbourne <pcc@google.com>
Date: Fri, 12 Jul 2019 12:40:04 -0700
Message-ID: <CAMn1gO6WzRjXTFpHJ4n2+s2rmK4Kd7R9cPeof2geSNrgk9yOXA@mail.gmail.com>
Subject: Re: [PATCH] arm64: Add support for relocating the kernel with RELR
 relocations
To: Nick Desaulniers <ndesaulniers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_124021_927675_780E7D8C 
X-CRM114-Status: GOOD (  27.00  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a41 listed in]
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

On Tue, Jul 9, 2019 at 4:13 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Tue, Jul 9, 2019 at 3:04 PM Peter Collingbourne <pcc@google.com> wrote:
> >
> > On Mon, Jul 8, 2019 at 11:02 AM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > On Fri, Jul 5, 2019 at 1:03 AM 'Peter Collingbourne' via Clang Built
> > > Linux <clang-built-linux@googlegroups.com> wrote:
> > > > +config RELR
> > > > +       bool "Use RELR relocation packing"
> > > > +       depends on RELOCATABLE && $(ld-option,--pack-dyn-relocs=relr)
> > >
> > > Oh, ld-option in Kconfig? +Masahiro
> > >
> > > > +       help
> > > > +         Store the kernel's dynamic relocations in the RELR relocation packing
> > > > +         format. Requires a compatible linker (currently only LLD supports
> > > > +         this feature), as well as compatible NM and OBJCOPY utilities
> > > > +         (llvm-nm and llvm-objcopy are compatible).
> > >
> > > So sounds like `make LD=ld.lld NM=llvm-nm OBJCOPY=llvm-objcopy` will
> > > be needed to test.  The ld-option check above doesn't seem strong
> > > enough, but maybe it's not easy to feature test NM or OBJCOPY?
> >
> > Right. Ideally we want to test the property that the tool accepts an
> > input file with a .relr.dyn section, and this isn't easy without
> > actually creating such a file. We could test that the tools are
> > actually the LLVM versions (e.g. by testing the output of $TOOL
> > --version), but I'm not sure if we want to exclude the possibility
> > that GNU or other toolchains will add support for this section in the
> > future.
>
> eh, I strongly dislike version checks due to their brittleness.
> https://lkml.org/lkml/2019/6/25/1253
> Maybe a script like `scripts/cc-can-link.sh` ?

Okay, in v2 I've added a feature test for LD, NM and OBJCOPY.

Now that we can accurately test whether all of the provided tools
support RELR, I propose that we make it the default if the tools
support it, which is what I've done in v2.

> > > >         add     x9, x9, x11                     // __va(.rela)
> > > >         add     x10, x9, x10                    // __va(.rela) + sizeof(.rela)
> > > >
> > > >  0:     cmp     x9, x10
> > > >         b.hs    1f
> > > > -       ldp     x11, x12, [x9], #24
> > > > -       ldr     x13, [x9, #-8]
> > > > -       cmp     w12, #R_AARCH64_RELATIVE
> > > > +       ldp     x12, x13, [x9], #24
> > > > +       ldr     x14, [x9, #-8]
> > > > +       cmp     w13, #R_AARCH64_RELATIVE
> > >
> > > Can you help me understand this renaming?
> > > x11 -> x12
> > > x13 -> x14
> > > x12 -> x13
> > > but they all get clobbered before use in your added ifdef hunk?
> >
> > I use the value of x11 before it is clobbered in the instruction with
> > the comment "// __va(.relr)".
> >
> > > >         b.ne    0b
> > > > -       add     x13, x13, x23                   // relocate
> > > > -       str     x13, [x11, x23]
> > > > +       add     x14, x14, x23                   // relocate
> > > > +       str     x14, [x12, x23]
> > > >         b       0b
> > > > -1:     ret
> > > > +
> > > > +1:
> > > > +#ifdef CONFIG_RELR
> > > > +       ldr     w9, =__relr_offset              // offset to reloc table
> > > > +       ldr     w10, =__relr_size               // size of reloc table
> > >
> > > Were these modified since first loaded in the above hunk?  I see the
> > > offsets applied below, but I don't spot any loops back up to `1:` (but
> > > could be missing it).  It also doesn't look like x11 or x10 are
> > > modified below (or above), so this looks like we're rematerializing
> > > values that already exist in those registers, IIUC?  Maybe I'm missing
> > > some side effect of one of the instructions?
> >
> > These instructions refer to __relr_{offset,size} which are different
> > from __rela_{offset,size} loaded above. They are only loaded once per
> > function call; the main loop is between labels 2 and 7 below.
>
> oh, sorry, yes I missed __relr_ vs __rela__.  Thanks for the clarification.
>
> >
> > You might have missed the implicit increment of x9 by 8 in the "ldr
> > x11, [x9], #8" instruction below (see also similar instructions
> > above), which is how we move to the next relocation table entry in the
> > main loop.
>
> Yep, I forgot about the pre vs post increment syntax:
> http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.kui0100a/armasm_cihgjhed.htm
> https://azeria-labs.com/memory-instructions-load-and-store-part-4/
>
> > > > +6:     add     x13, x13, #(8 * 63)             // move to next bitmap's address
> > >
> > > Sorry, what's this constant `#(8 * 63)`?
> >
> > It is the number of bytes covered by a bitmap entry. 8 is the word
> > size, and 63 is the number of significant bits in a bitmap entry.
>
> Might be good to add that as a comment inline w/ the code?

Done in v2.



Peter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
