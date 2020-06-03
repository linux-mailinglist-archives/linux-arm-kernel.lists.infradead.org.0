Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6273C1ECC14
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 11:00:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sCoNtHXz0PETpN/kAQv7KF00F0rQkeCgWzyWPM1TUx8=; b=O3hgGbPwNniV8D
	BQA+h0U3R2PJqqRzjUYChHcyEjsGoXGYHmNtNm5cUEYTDB55Fjgbpw6fD2lTH/38Uq1lW3WeZFozT
	KS2yPD+OSvvX728VxbsTn3i13t+WYZHaCbjZGixUAtlTtoC9CLcc+RBuFoaBIA5mHBivG/WHYuPkh
	eSTriw4hoJkTTy/dIqWTZQDOFkTsdql++OxnYhXdviC2olDqGSgST4dwjePFbM9Eruux5om7i2fj7
	NtH1s46lO8j6CkmmYTJ+E/07vE+rYJODvUTs0620N1xGYnyhfCXgtoE463jD0hgDo711drPDAwDSM
	DA4YwJGdbIF63yoYfo4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgPFf-0005Sh-Rr; Wed, 03 Jun 2020 08:59:59 +0000
Received: from conssluserg-05.nifty.com ([210.131.2.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgPFZ-0005SG-5Q
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 08:59:54 +0000
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com
 [209.85.221.174]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id 0538xb0Y019555
 for <linux-arm-kernel@lists.infradead.org>; Wed, 3 Jun 2020 17:59:38 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 0538xb0Y019555
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1591174778;
 bh=BToKRSuqkTAHEhOluVCemoRUXQFRflh7iXAOaCDFqDA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=FLfVGAkSFvmX4f0H0OwIZ01V6Rghgg5hAYS5O3ZtE3TnrUpC0YX2+IYBzH9CuHnPI
 NZMOmHjbAkHQQ4MV72eIXGiHUKegQFoBCVF00hJsllpGx+fFmIvTnKVmVqkYSgb8h4
 T4pGfc5xJKajBV6DfyKpRueTbF3H3hz5BKHREKQJtOM0owrnBDg1ZbbOvfkEqOl8NT
 wWIYEiOZyI8FvVjlCCLdnZhdpoKJOE1yNPB3MPxWk+veJbe4/28UNbhJ2Z1dAp+Hqx
 renDemBu6xtoQnq4GROmljfqBE23Z/WiMo+TVNrnad1aIZ6tYCT+nlw2yQqe5gx5qI
 FcVBJ0V+NyAxw==
X-Nifty-SrcIP: [209.85.221.174]
Received: by mail-vk1-f174.google.com with SMTP id m23so294266vko.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 01:59:37 -0700 (PDT)
X-Gm-Message-State: AOAM530j80aljc/AGW7Fs3Y0agC8EmXxlaUle8o/v3L/HKM1FXwnYClq
 If5oQuwOT/RsQrRB+MG00ejd1UgnPgkPz2vi1k0=
X-Google-Smtp-Source: ABdhPJycaZq2XSioO8P5Rjgff4124TzlUNyq/IolCVGqFaH8nhVP9patSbf2c9j51QnlTWR7VLCU710cJW3wUTKf/gE=
X-Received: by 2002:ac5:cc7a:: with SMTP id w26mr10349581vkm.12.1591174776419; 
 Wed, 03 Jun 2020 01:59:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200603053313.3863761-1-masahiroy@kernel.org>
 <CAMj1kXGk-2pyTZ3yNW14Kk4fvtsNOb7maAHVM2C=vVAjaaFRug@mail.gmail.com>
 <CAK7LNARg70FrTmnuoUiLM6KWxeJ+AeXqgB53GS6sY7z0J+qH6g@mail.gmail.com>
 <CAMj1kXFxmgQ=YzmLNnMO-2gibSGQ1=tXBd07ntqCYYU122zEUw@mail.gmail.com>
In-Reply-To: <CAMj1kXFxmgQ=YzmLNnMO-2gibSGQ1=tXBd07ntqCYYU122zEUw@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 3 Jun 2020 17:59:00 +0900
X-Gmail-Original-Message-ID: <CAK7LNARLUeuiu3Y1cFqT7550MaF8fnBmMTZxKEG0Cy3vpxVkMQ@mail.gmail.com>
Message-ID: <CAK7LNARLUeuiu3Y1cFqT7550MaF8fnBmMTZxKEG0Cy3vpxVkMQ@mail.gmail.com>
Subject: Re: [PATCH] efi/libstub: refactor Makefile to not use lib-y syntax
To: Ard Biesheuvel <ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_015953_433824_CBA2CFD1 
X-CRM114-Status: GOOD (  23.59  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.90 listed in list.dnswl.org]
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

On Wed, Jun 3, 2020 at 5:45 PM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Wed, 3 Jun 2020 at 10:36, Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > On Wed, Jun 3, 2020 at 3:45 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> > >
> > > On Wed, 3 Jun 2020 at 07:34, Masahiro Yamada <masahiroy@kernel.org> wrote:
> > > >
> > > > Documentation/kbuild/makefiles.rst says:
> > > >
> > > >   Use of lib-y is normally restricted to `lib/` and `arch/*/lib`.
> > > >
> > > > I want to disallow lib-y outside of them.
> > > >
> > >
> > > Why?
> >
> >
> > Because I plan to remove lib-y entirely at some point.
> >
> > lib-y is not so useful to shrink the image size because:
> >
> >   - An object in lib.a can be omitted only when no symbol
> >     in that object is referenced.  This rarely happens.
> >
> >   -  lib-y objects are often exported by nature
> >      because lib-y is a collection of utility functions.
> >      Even if no in-tree user, we always need to keep them
> >      because EXPORT_SYMBOL() is the interface to modules.
> >
> >
> > When I worked on commit 7273ad2b08f8ac9563579d16a3cf528857b26f49,
> > I made some research.
> >
> > The benefit of lib-y is just 362 byte for x86_64_defconfig.
> > ( Before: 26578002, After: 26578364)
> >
> > My hope is lib-y will be replaced by dead-code elimination or
> > ultimately by LTO.
> >
> > drivers/firmware/efi/libstub/Makefile
> > is the only Makefile that breaks the rule:
> > "Use of lib-y is normally restricted to `lib/` and `arch/*/lib`"
> >
> >
> >
> >
> > >
> > > > Add a custom rule to build lib.a, which is linked to the decompressor
> > > > for ARCH=x86, ARCH=arm.
> > > >
> > > > For ARCH=arm64, use obj-y to link objects to vmlinux in the ordinary
> > > > way.
> > > >
> > >
> > > The code works perfectly fine as is, and I don't see what is
> > > fundamentally wrong with using static libraries outside of lib/ and
> > > arch/*/lib.
> >
> > The intended usage of lib-y is to hook lib.a
> > to scripts/vmlinux.sh via KBUILD_VMLINUX_LIBS.
> >
> > This Makefile is just what you found to work.
> >
> >
> > >
> > > Also, I would like this code to still be incorporated as a static
> > > library into arm64 as well, so that only pieces that are actually
> > > needed are incorporated into the final image.
> >
> > No.
> > It is not working like that because you set
> > lib.a to core-y.
> >
> > All objects in core-y are always linked to vmlinux.
> >
>
> The lib.a file is passed to the linker as a static library, so it will
> only grab what it needs.
>
> For instance, if you build arm64 from mainline today, the
> efi_relocate_kernel will not be in the final image, even though it is
> built as part of libstub


I built today's mainline kernel
(d6f9469a03d832dcd17041ed67774ffb5f3e73b3).


I see it in vmlinux.


$ make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu-  defconfig
$ make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu-  -j24
    ...
$ aarch64-linux-gnu-nm  -n  vmlinux | grep  efi_relocate_kernel
ffff8000114afb90 t __efistub_efi_relocate_kernel



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
