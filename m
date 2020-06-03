Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC0E1ECC4C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 11:15:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yly8eeCQIXWPIRbxuoodvhyFCoAxwnR3z8iKKdwUeHc=; b=gOztJF5gxxJuCZ
	F/SjDmKqB6fLUO5yYuWbpX0iksEWta7GxFsALfsEtaDpxZ3LeHb35E/F4ycooprW8r9kiloBuHFyb
	UQV1rxyyOcqEH6zBmw28i3JTUvwqrhFpLl6bSp/IUxUoy1Kdt19ECGIVFH1Qm/JOX5ZUiO1mNO1IP
	31KVptiKsUSx5lGODzKAh3UeHws3VRteMmMzwVK51LizCA5RXc1PyFJTrD8SygCYs37iFHEwcQisd
	KYVVW35PYyFb0s4lCP6+YnltyNcmA6dpLd2atAPc6NeRU/5M+X0/bXZ5VGt9oveSfZ5ayJ3Hs7i/H
	fb8WTIqDtJxhjAh2NKgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgPUh-0000UV-4r; Wed, 03 Jun 2020 09:15:31 +0000
Received: from conssluserg-01.nifty.com ([210.131.2.80])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgPUZ-0000TV-0r
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 09:15:24 +0000
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com
 [209.85.222.52]) (authenticated)
 by conssluserg-01.nifty.com with ESMTP id 0539EsJk027684
 for <linux-arm-kernel@lists.infradead.org>; Wed, 3 Jun 2020 18:14:55 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 0539EsJk027684
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1591175695;
 bh=WkoRi0qcjL+OLowdteLADl1qLtuJ/HWKEwgYQ6avQCU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=dYypLwI5VjQUrI5LksJCjHXku7K8+GfBch/gpzjz8Bc1ZMIJ2A88Pu/iPLwGSCTC2
 nwRqUpQypKZh01nqso6TX1Jv1fZ8AMvyr6JOSDVB2Hch82w3M6gRHh50183kBDjprR
 RdLXcvOW8hdDnzK6cqIN1WU0UnczU6yiMzixRAhMvEnhSaz/IjT21SN6tECnUK1ePW
 dIgKI/YoN6s58Z7ewLX5mdZ7GAa3EVrf5HM+vhtpD+ektPrIT8KqUXl/rAOnhXAXz6
 0yjV5aGTDXCOvN8LqOqVyjXS5oSGxeQs+GBtgpbfcUTAWjr2LHNluSZtzgugtOycIl
 JiakT9Wi2zDpA==
X-Nifty-SrcIP: [209.85.222.52]
Received: by mail-ua1-f52.google.com with SMTP id r9so612580ual.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 02:14:54 -0700 (PDT)
X-Gm-Message-State: AOAM531D8CLklGWQT9Gjzx7maDLtdDHnKvHA+BqztY1p1LjeUMhscUFI
 7tWdOiHwpkKZbC95mSC386UMbrKAQaTNM/kxKR0=
X-Google-Smtp-Source: ABdhPJxqjJvbzrt0CAQOlW8LZFKbwA7XaE4Gc9qWM6Yt1XDz6danBHRdw4t3FweVQDQxJj8eB0foP/gnapLgrxtEAX4=
X-Received: by 2002:a9f:3791:: with SMTP id q17mr82429uaq.95.1591175693496;
 Wed, 03 Jun 2020 02:14:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200603053313.3863761-1-masahiroy@kernel.org>
 <CAMj1kXGk-2pyTZ3yNW14Kk4fvtsNOb7maAHVM2C=vVAjaaFRug@mail.gmail.com>
 <CAK7LNARg70FrTmnuoUiLM6KWxeJ+AeXqgB53GS6sY7z0J+qH6g@mail.gmail.com>
 <CAMj1kXFxmgQ=YzmLNnMO-2gibSGQ1=tXBd07ntqCYYU122zEUw@mail.gmail.com>
 <CAK7LNARLUeuiu3Y1cFqT7550MaF8fnBmMTZxKEG0Cy3vpxVkMQ@mail.gmail.com>
 <CAMj1kXFKuMoYW8Sj=DHeYBSkWyeu+QgP9=fgET83K5D=-DsJ7Q@mail.gmail.com>
In-Reply-To: <CAMj1kXFKuMoYW8Sj=DHeYBSkWyeu+QgP9=fgET83K5D=-DsJ7Q@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 3 Jun 2020 18:14:16 +0900
X-Gmail-Original-Message-ID: <CAK7LNAR3YqmSWh_GkXdP+2tb83sOpySeXVi-kP=1eehcD5097Q@mail.gmail.com>
Message-ID: <CAK7LNAR3YqmSWh_GkXdP+2tb83sOpySeXVi-kP=1eehcD5097Q@mail.gmail.com>
Subject: Re: [PATCH] efi/libstub: refactor Makefile to not use lib-y syntax
To: Ard Biesheuvel <ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_021523_285471_0B51AD34 
X-CRM114-Status: GOOD (  27.05  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.80 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Wed, Jun 3, 2020 at 6:02 PM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Wed, 3 Jun 2020 at 10:59, Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > On Wed, Jun 3, 2020 at 5:45 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> > >
> > > On Wed, 3 Jun 2020 at 10:36, Masahiro Yamada <masahiroy@kernel.org> wrote:
> > > >
> > > > On Wed, Jun 3, 2020 at 3:45 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> > > > >
> > > > > On Wed, 3 Jun 2020 at 07:34, Masahiro Yamada <masahiroy@kernel.org> wrote:
> > > > > >
> > > > > > Documentation/kbuild/makefiles.rst says:
> > > > > >
> > > > > >   Use of lib-y is normally restricted to `lib/` and `arch/*/lib`.
> > > > > >
> > > > > > I want to disallow lib-y outside of them.
> > > > > >
> > > > >
> > > > > Why?
> > > >
> > > >
> > > > Because I plan to remove lib-y entirely at some point.
> > > >
> > > > lib-y is not so useful to shrink the image size because:
> > > >
> > > >   - An object in lib.a can be omitted only when no symbol
> > > >     in that object is referenced.  This rarely happens.
> > > >
> > > >   -  lib-y objects are often exported by nature
> > > >      because lib-y is a collection of utility functions.
> > > >      Even if no in-tree user, we always need to keep them
> > > >      because EXPORT_SYMBOL() is the interface to modules.
> > > >
> > > >
> > > > When I worked on commit 7273ad2b08f8ac9563579d16a3cf528857b26f49,
> > > > I made some research.
> > > >
> > > > The benefit of lib-y is just 362 byte for x86_64_defconfig.
> > > > ( Before: 26578002, After: 26578364)
> > > >
> > > > My hope is lib-y will be replaced by dead-code elimination or
> > > > ultimately by LTO.
> > > >
> > > > drivers/firmware/efi/libstub/Makefile
> > > > is the only Makefile that breaks the rule:
> > > > "Use of lib-y is normally restricted to `lib/` and `arch/*/lib`"
> > > >
> > > >
> > > >
> > > >
> > > > >
> > > > > > Add a custom rule to build lib.a, which is linked to the decompressor
> > > > > > for ARCH=x86, ARCH=arm.
> > > > > >
> > > > > > For ARCH=arm64, use obj-y to link objects to vmlinux in the ordinary
> > > > > > way.
> > > > > >
> > > > >
> > > > > The code works perfectly fine as is, and I don't see what is
> > > > > fundamentally wrong with using static libraries outside of lib/ and
> > > > > arch/*/lib.
> > > >
> > > > The intended usage of lib-y is to hook lib.a
> > > > to scripts/vmlinux.sh via KBUILD_VMLINUX_LIBS.
> > > >
> > > > This Makefile is just what you found to work.
> > > >
> > > >
> > > > >
> > > > > Also, I would like this code to still be incorporated as a static
> > > > > library into arm64 as well, so that only pieces that are actually
> > > > > needed are incorporated into the final image.
> > > >
> > > > No.
> > > > It is not working like that because you set
> > > > lib.a to core-y.
> > > >
> > > > All objects in core-y are always linked to vmlinux.
> > > >
> > >
> > > The lib.a file is passed to the linker as a static library, so it will
> > > only grab what it needs.
> > >
> > > For instance, if you build arm64 from mainline today, the
> > > efi_relocate_kernel will not be in the final image, even though it is
> > > built as part of libstub
> >
> >
> > I built today's mainline kernel
> > (d6f9469a03d832dcd17041ed67774ffb5f3e73b3).
> >
> >
> > I see it in vmlinux.
> >
> >
> > $ make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu-  defconfig
> > $ make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu-  -j24
> >     ...
> > $ aarch64-linux-gnu-nm  -n  vmlinux | grep  efi_relocate_kernel
> > ffff8000114afb90 t __efistub_efi_relocate_kernel
> >
>
> That is strange. I tested this before, and it worked.
>
> Did anything change recently in the way the linker is invoked?


Nothing recently.

This is obvious result because
drivers/firmware/efi/libstub/lib.a
is passed after ----whole-archive flag.


I guess the following commit is it,
but it is already 3 years ago.



commit 799c43415442414b1032580c47684cb709dfed6d (HEAD)
Author: Nicholas Piggin <npiggin@gmail.com>
Date:   Fri Jun 9 15:24:17 2017 +1000

    kbuild: thin archives make default for all archs

    Make thin archives build the default, but keep the config option
    to allow exemptions if any breakage can't be quickly solved.

    Signed-off-by: Nicholas Piggin <npiggin@gmail.com>
    Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>









-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
