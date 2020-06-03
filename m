Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD051ECBBB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 10:45:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ITtAuxC0MmtGWWPVCSccMzDvGOFc5pc9UALY7w8q6ac=; b=g02aewZso6YLkH
	mT2Sy9NtMTiJFD++KzXPsv1O4YxajyH6nHSOYvazgIq8dWkzR7YonxvJd6vPjbJUEncY262U4LDg0
	car331FC1WoufQv5Oz+aQArNt4BcWVNbMNxmQQMeWZe5Rm/MgwGSU8tInkL6fLpzKvtO6YSNumETO
	g+RRbWxBmfKd054pIt9hJhWX0qVnie9UIN/S2Hy+/6/22mZ7F34zj5ChWuBjHhjJEUoNvejG0n1w0
	rMzOixYy4R3mFjFOrhsMHmUcgShbGkyWQhNKSWriCyb+1rbF8m5nlNvmb+MhDfg+iqFKP8vg3Vuh1
	eJqmCw75ij/U/bSC9SWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgP1e-0004w8-Rk; Wed, 03 Jun 2020 08:45:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgP1Y-0004va-Bo
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 08:45:25 +0000
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com
 [209.85.210.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 85ECB206C3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  3 Jun 2020 08:45:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591173923;
 bh=cblJEWAd3DPBh04Tlvi8BcWOqhwYMzDqk94d+BenPsg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=JMMp8Ma1HO/w/A4xLIz/t4cDUfnR9e6+1nfkhAszV/2t7s5h2fFOHOWb5WhGNIVww
 HlDhJJr2T/2K1hDog0MaSCnEnalnWwGta927B0xxNxUBzO38h+iAKd2gjX8L/qSCg6
 T77Fw9B1pB9+weIlI0CutbQ8W7oT1wSKDmnpUmIk=
Received: by mail-ot1-f42.google.com with SMTP id g7so164885oti.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 01:45:23 -0700 (PDT)
X-Gm-Message-State: AOAM530/RLnP0JL1fwdUhG16OaRSQ0GGlbWLzSmL3NoeWeyi6Zrao5Jj
 HXkm7C21R4YbkmRre3h5UjIRBpDf26jJUIrtcsQ=
X-Google-Smtp-Source: ABdhPJzoqH82vfddBcZ2ilJNSYyw2hykyw6p+iOltpxefWYgGi1NHuWQjSjLS+b1Ow7vhgSqC6IYHofRPCZ/ijqKzNE=
X-Received: by 2002:a9d:7684:: with SMTP id j4mr1249171otl.108.1591173922903; 
 Wed, 03 Jun 2020 01:45:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200603053313.3863761-1-masahiroy@kernel.org>
 <CAMj1kXGk-2pyTZ3yNW14Kk4fvtsNOb7maAHVM2C=vVAjaaFRug@mail.gmail.com>
 <CAK7LNARg70FrTmnuoUiLM6KWxeJ+AeXqgB53GS6sY7z0J+qH6g@mail.gmail.com>
In-Reply-To: <CAK7LNARg70FrTmnuoUiLM6KWxeJ+AeXqgB53GS6sY7z0J+qH6g@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 3 Jun 2020 10:45:11 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFxmgQ=YzmLNnMO-2gibSGQ1=tXBd07ntqCYYU122zEUw@mail.gmail.com>
Message-ID: <CAMj1kXFxmgQ=YzmLNnMO-2gibSGQ1=tXBd07ntqCYYU122zEUw@mail.gmail.com>
Subject: Re: [PATCH] efi/libstub: refactor Makefile to not use lib-y syntax
To: Masahiro Yamada <masahiroy@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_014524_445880_387B5457 
X-CRM114-Status: GOOD (  23.27  )
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

On Wed, 3 Jun 2020 at 10:36, Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Wed, Jun 3, 2020 at 3:45 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > On Wed, 3 Jun 2020 at 07:34, Masahiro Yamada <masahiroy@kernel.org> wrote:
> > >
> > > Documentation/kbuild/makefiles.rst says:
> > >
> > >   Use of lib-y is normally restricted to `lib/` and `arch/*/lib`.
> > >
> > > I want to disallow lib-y outside of them.
> > >
> >
> > Why?
>
>
> Because I plan to remove lib-y entirely at some point.
>
> lib-y is not so useful to shrink the image size because:
>
>   - An object in lib.a can be omitted only when no symbol
>     in that object is referenced.  This rarely happens.
>
>   -  lib-y objects are often exported by nature
>      because lib-y is a collection of utility functions.
>      Even if no in-tree user, we always need to keep them
>      because EXPORT_SYMBOL() is the interface to modules.
>
>
> When I worked on commit 7273ad2b08f8ac9563579d16a3cf528857b26f49,
> I made some research.
>
> The benefit of lib-y is just 362 byte for x86_64_defconfig.
> ( Before: 26578002, After: 26578364)
>
> My hope is lib-y will be replaced by dead-code elimination or
> ultimately by LTO.
>
> drivers/firmware/efi/libstub/Makefile
> is the only Makefile that breaks the rule:
> "Use of lib-y is normally restricted to `lib/` and `arch/*/lib`"
>
>
>
>
> >
> > > Add a custom rule to build lib.a, which is linked to the decompressor
> > > for ARCH=x86, ARCH=arm.
> > >
> > > For ARCH=arm64, use obj-y to link objects to vmlinux in the ordinary
> > > way.
> > >
> >
> > The code works perfectly fine as is, and I don't see what is
> > fundamentally wrong with using static libraries outside of lib/ and
> > arch/*/lib.
>
> The intended usage of lib-y is to hook lib.a
> to scripts/vmlinux.sh via KBUILD_VMLINUX_LIBS.
>
> This Makefile is just what you found to work.
>
>
> >
> > Also, I would like this code to still be incorporated as a static
> > library into arm64 as well, so that only pieces that are actually
> > needed are incorporated into the final image.
>
> No.
> It is not working like that because you set
> lib.a to core-y.
>
> All objects in core-y are always linked to vmlinux.
>

The lib.a file is passed to the linker as a static library, so it will
only grab what it needs.

For instance, if you build arm64 from mainline today, the
efi_relocate_kernel will not be in the final image, even though it is
built as part of libstub

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
