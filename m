Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB6F1ECC51
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 11:17:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OD046hyKF3Oh+Kk5Ql2V35JBeDL9RqA/u+NsHMyIXjg=; b=qW32TRhxhF6WbT
	aunLZjNe1J2s/ey3CFybWiBaUzybJ5iI93UjOdXJcy/MmdNKdsTPtvc0lP82+NtE9Kk3hWCTyvPJQ
	74cjIdixw5XpM40HsLHLvRp2ebybIOlQ1SRfxG9f04EC7x7Qv4gWJdvyiCpk/30di7NFrUeDgtP1o
	NSUZBJoGgxKbA8Tb3MvQS8osmzechClQu5xMgpjoeGHfKqXKzZKq+9wdGsygCZFFzHoBLn82ejNrC
	LtYAfXnJOdj183oVipLcYqzfInioOB3QY2AY17FCSDV4uBEIw+JE26vuNcOhHL7xCuyqlcF6/I9KB
	I1Lu8F9zKIdLBQSSRLfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgPWB-0000t6-GH; Wed, 03 Jun 2020 09:17:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgPW1-0000sY-KU
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 09:16:55 +0000
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com
 [209.85.167.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2E66C2077D
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  3 Jun 2020 09:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591175813;
 bh=pJayPSRc4UZIbyAtgs2YD2peTONAnMhdYWQv46y0DUc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Kb3tf7IIyLLZa25SuvdAgFe9n6XYJ/QfTAQ2D1AJtVHl8sIFSHXnv5/otU8WBzjaj
 JqsYjCW4QGfqsxeTUFZ/cv4/gQNZLNFtK5jBu7K0R7U6gXhXAnIf/sxGE0ODcF/MNv
 QOK7aBmFInK/FbcgPLO+H5jUq35xcWET1A5k8go8=
Received: by mail-oi1-f177.google.com with SMTP id i74so1212511oib.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 02:16:53 -0700 (PDT)
X-Gm-Message-State: AOAM530omzSpLAMVWZHe2E/BlF/HMvZwIy4HhFs9TesDxKeap8tbb1mr
 z11O3ibDOshmpOTmfuD0GhMLxMBT5+aRMbjXw7U=
X-Google-Smtp-Source: ABdhPJzFay6mwWSXAypV9UB/IeKJoznfkdYj8L8BU5RJz2xKHIKKe/qgCb0ME1df0N9Vc2L3q4uQZwyxOf/CjP/CbWE=
X-Received: by 2002:aca:6144:: with SMTP id v65mr5530033oib.33.1591175812489; 
 Wed, 03 Jun 2020 02:16:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200603053313.3863761-1-masahiroy@kernel.org>
 <CAMj1kXGk-2pyTZ3yNW14Kk4fvtsNOb7maAHVM2C=vVAjaaFRug@mail.gmail.com>
 <CAK7LNARg70FrTmnuoUiLM6KWxeJ+AeXqgB53GS6sY7z0J+qH6g@mail.gmail.com>
 <CAMj1kXFxmgQ=YzmLNnMO-2gibSGQ1=tXBd07ntqCYYU122zEUw@mail.gmail.com>
 <CAK7LNARLUeuiu3Y1cFqT7550MaF8fnBmMTZxKEG0Cy3vpxVkMQ@mail.gmail.com>
 <CAMj1kXFKuMoYW8Sj=DHeYBSkWyeu+QgP9=fgET83K5D=-DsJ7Q@mail.gmail.com>
 <CAK7LNAR3YqmSWh_GkXdP+2tb83sOpySeXVi-kP=1eehcD5097Q@mail.gmail.com>
In-Reply-To: <CAK7LNAR3YqmSWh_GkXdP+2tb83sOpySeXVi-kP=1eehcD5097Q@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 3 Jun 2020 11:16:41 +0200
X-Gmail-Original-Message-ID: <CAMj1kXHcRuQXPej9_H_jnno516BnuFrPRqzp1+6xN-odckEMJg@mail.gmail.com>
Message-ID: <CAMj1kXHcRuQXPej9_H_jnno516BnuFrPRqzp1+6xN-odckEMJg@mail.gmail.com>
Subject: Re: [PATCH] efi/libstub: refactor Makefile to not use lib-y syntax
To: Masahiro Yamada <masahiroy@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_021653_715110_E15D3001 
X-CRM114-Status: GOOD (  29.21  )
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Arvind Sankar <nivedita@alum.mit.edu>,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 3 Jun 2020 at 11:15, Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Wed, Jun 3, 2020 at 6:02 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > On Wed, 3 Jun 2020 at 10:59, Masahiro Yamada <masahiroy@kernel.org> wrote:
> > >
> > > On Wed, Jun 3, 2020 at 5:45 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> > > >
> > > > On Wed, 3 Jun 2020 at 10:36, Masahiro Yamada <masahiroy@kernel.org> wrote:
> > > > >
> > > > > On Wed, Jun 3, 2020 at 3:45 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> > > > > >
> > > > > > On Wed, 3 Jun 2020 at 07:34, Masahiro Yamada <masahiroy@kernel.org> wrote:
> > > > > > >
> > > > > > > Documentation/kbuild/makefiles.rst says:
> > > > > > >
> > > > > > >   Use of lib-y is normally restricted to `lib/` and `arch/*/lib`.
> > > > > > >
> > > > > > > I want to disallow lib-y outside of them.
> > > > > > >
> > > > > >
> > > > > > Why?
> > > > >
> > > > >
> > > > > Because I plan to remove lib-y entirely at some point.
> > > > >
> > > > > lib-y is not so useful to shrink the image size because:
> > > > >
> > > > >   - An object in lib.a can be omitted only when no symbol
> > > > >     in that object is referenced.  This rarely happens.
> > > > >
> > > > >   -  lib-y objects are often exported by nature
> > > > >      because lib-y is a collection of utility functions.
> > > > >      Even if no in-tree user, we always need to keep them
> > > > >      because EXPORT_SYMBOL() is the interface to modules.
> > > > >
> > > > >
> > > > > When I worked on commit 7273ad2b08f8ac9563579d16a3cf528857b26f49,
> > > > > I made some research.
> > > > >
> > > > > The benefit of lib-y is just 362 byte for x86_64_defconfig.
> > > > > ( Before: 26578002, After: 26578364)
> > > > >
> > > > > My hope is lib-y will be replaced by dead-code elimination or
> > > > > ultimately by LTO.
> > > > >
> > > > > drivers/firmware/efi/libstub/Makefile
> > > > > is the only Makefile that breaks the rule:
> > > > > "Use of lib-y is normally restricted to `lib/` and `arch/*/lib`"
> > > > >
> > > > >
> > > > >
> > > > >
> > > > > >
> > > > > > > Add a custom rule to build lib.a, which is linked to the decompressor
> > > > > > > for ARCH=x86, ARCH=arm.
> > > > > > >
> > > > > > > For ARCH=arm64, use obj-y to link objects to vmlinux in the ordinary
> > > > > > > way.
> > > > > > >
> > > > > >
> > > > > > The code works perfectly fine as is, and I don't see what is
> > > > > > fundamentally wrong with using static libraries outside of lib/ and
> > > > > > arch/*/lib.
> > > > >
> > > > > The intended usage of lib-y is to hook lib.a
> > > > > to scripts/vmlinux.sh via KBUILD_VMLINUX_LIBS.
> > > > >
> > > > > This Makefile is just what you found to work.
> > > > >
> > > > >
> > > > > >
> > > > > > Also, I would like this code to still be incorporated as a static
> > > > > > library into arm64 as well, so that only pieces that are actually
> > > > > > needed are incorporated into the final image.
> > > > >
> > > > > No.
> > > > > It is not working like that because you set
> > > > > lib.a to core-y.
> > > > >
> > > > > All objects in core-y are always linked to vmlinux.
> > > > >
> > > >
> > > > The lib.a file is passed to the linker as a static library, so it will
> > > > only grab what it needs.
> > > >
> > > > For instance, if you build arm64 from mainline today, the
> > > > efi_relocate_kernel will not be in the final image, even though it is
> > > > built as part of libstub
> > >
> > >
> > > I built today's mainline kernel
> > > (d6f9469a03d832dcd17041ed67774ffb5f3e73b3).
> > >
> > >
> > > I see it in vmlinux.
> > >
> > >
> > > $ make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu-  defconfig
> > > $ make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu-  -j24
> > >     ...
> > > $ aarch64-linux-gnu-nm  -n  vmlinux | grep  efi_relocate_kernel
> > > ffff8000114afb90 t __efistub_efi_relocate_kernel
> > >
> >
> > That is strange. I tested this before, and it worked.
> >
> > Did anything change recently in the way the linker is invoked?
>
>
> Nothing recently.
>
> This is obvious result because
> drivers/firmware/efi/libstub/lib.a
> is passed after ----whole-archive flag.
>
>
> I guess the following commit is it,
> but it is already 3 years ago.
>

Right.

So that means there is no point at all in using static libraries, no?
Or does --whole-archive still allow duplicate definitions like static
libraries do usually?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
