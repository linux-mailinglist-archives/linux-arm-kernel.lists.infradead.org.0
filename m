Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 619B29570D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 08:02:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wpQvtvTQGUFI++Ymbc82LKL/nVCFR4frYADdTVBtULU=; b=XDUGHVYihEWoD+
	frsjmlXcWr18j5gcM43gd/6UOkE9v3ZmrFTo1D+eTVzkDC+QA6Zp5x5aWDLCwXsytvqFKo3h4LN3m
	0bR7q7bEhGAkHfgGw3SGdbnRKOa41FvW8rKGmaV82pcQVAdQe7tBX22aJA0P8Wmf1HN/01g3OF2Nl
	dghbtfT19ce7gsbYYmFP+nMk0ZpOGlKuAcMnb9doopxNPSaYBxro2rG/hVIzB0zAHG+Q4f6MOjYE3
	BZCMPSOITm0+QQs8p55IjOt3ztV6ZE2YmCEbvuOrC4HYkoBxQO8LxXeWXO69i+8ldjIdmGII3mgKU
	5EauKnoEWDilLffyyslQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzxEM-0001PM-DY; Tue, 20 Aug 2019 06:02:54 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzxE1-0001P0-BM
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 06:02:35 +0000
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com
 [209.85.167.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 14FD6C05AA65
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 06:02:32 +0000 (UTC)
Received: by mail-lf1-f69.google.com with SMTP id u15so1027248lfm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 23:02:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=H1XYrAigqvbUZcJ7lyXFTe/3R+TlefZrR2FBfbX9mlI=;
 b=kAdeeBMYa2xUdZe1yEN5UAqys2hw7aF/QKtDXGRyNI4MNP6Hs3HLE0aldA6agjb0jx
 EGTLjQGNFgeXqDAzM4T9h0E5Odr5mjBltypIePbsaeQc3UZgP1qpdcbJWhpohr0trgJG
 mGbd2j5LPSBy5mSf8zDDfFIuxexlvk2YNa1koY3CS9nfvYG8rPivETGz4FaPXTXGqUIP
 QxQtvTcFMxLH04NauwvEyeLsZffmGFUi5iKtOYXbePsnKCaJTazZ23TaVN0O3Msm6Z4j
 XSqcE1L9P1ZOOvjoYauCvEfYH2u+kQFGzcwdiojBnS3Z2fvnZ2MtSWVNR5afXglkMvb4
 OVvg==
X-Gm-Message-State: APjAAAVVUITcJ+LHMBY7cCfpXRcaL7PLWjMDZBAVJvJ2veKWxSbnw/9r
 1OKAF4DlBrE2ptgcRHXr6fF57iPewOAs6JMNU7K60hogm8nvvT4CwTzixrF+1QERN9dznN8uxvc
 SDxw4Hjl8IBBF+V8TuMzJ0m14YTUpLy63jqTalSlL+l3lGgMQbFI=
X-Received: by 2002:ac2:545b:: with SMTP id d27mr14550843lfn.36.1566280950567; 
 Mon, 19 Aug 2019 23:02:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy0/eYYiJoRlOYd4VBV0vKzoRsj3yMNZ9rY5LIiyFa1w7RsXCr864jsVnyw34c9VUCMATe/p8BNnII+fPQhQUo=
X-Received: by 2002:ac2:545b:: with SMTP id d27mr14550826lfn.36.1566280950341; 
 Mon, 19 Aug 2019 23:02:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190807155524.5112-1-steve.capper@arm.com>
 <20190807155524.5112-4-steve.capper@arm.com>
 <20190814152017.GD51963@lakrids.cambridge.arm.com>
 <20190814155711.ldwot7ezrrqjlswc@willie-the-truck>
 <20190814160324.GE51963@lakrids.cambridge.arm.com>
 <20190815120908.kboyqfnr2fivuva4@willie-the-truck>
In-Reply-To: <20190815120908.kboyqfnr2fivuva4@willie-the-truck>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Tue, 20 Aug 2019 11:32:18 +0530
Message-ID: <CACi5LpMGcp2LLJAVeQU0Erj+EsqQnPkjzbga3MDxJ_+d0B-Ydg@mail.gmail.com>
Subject: Re: [PATCH] arm64: fix CONFIG_KASAN_SW_TAGS && CONFIG_KASAN_INLINE
 (was: Re: [PATCH V5 03/12] arm64: kasan: Switch to using) KASAN_SHADOW_OFFSET
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_230233_439404_C649A47C 
X-CRM114-Status: GOOD (  32.27  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Christoph von Recklinghausen <crecklin@redhat.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Steve Capper <steve.capper@arm.com>,
 kasan-dev@googlegroups.com, glider@google.com,
 Dmitry Vyukov <dvyukov@google.com>, maz@kernel.org,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 5:39 PM Will Deacon <will@kernel.org> wrote:
>
> [+more kasan people and the kasan-dev list]
>
> On Wed, Aug 14, 2019 at 05:03:24PM +0100, Mark Rutland wrote:
> > On Wed, Aug 14, 2019 at 04:57:11PM +0100, Will Deacon wrote:
> > > On Wed, Aug 14, 2019 at 04:20:18PM +0100, Mark Rutland wrote:
> > > > On Wed, Aug 07, 2019 at 04:55:15PM +0100, Steve Capper wrote:
> > > > > diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> > > > > index b2400f9c1213..2b7db0d41498 100644
> > > > > --- a/arch/arm64/Makefile
> > > > > +++ b/arch/arm64/Makefile
> > > > > @@ -126,14 +126,6 @@ KBUILD_CFLAGS += -DKASAN_SHADOW_SCALE_SHIFT=$(KASAN_SHADOW_SCALE_SHIFT)
> > > > >  KBUILD_CPPFLAGS += -DKASAN_SHADOW_SCALE_SHIFT=$(KASAN_SHADOW_SCALE_SHIFT)
> > > > >  KBUILD_AFLAGS += -DKASAN_SHADOW_SCALE_SHIFT=$(KASAN_SHADOW_SCALE_SHIFT)
> > > > >
> > > > > -# KASAN_SHADOW_OFFSET = VA_START + (1 << (VA_BITS - KASAN_SHADOW_SCALE_SHIFT))
> > > > > -#                               - (1 << (64 - KASAN_SHADOW_SCALE_SHIFT))
> > > > > -# in 32-bit arithmetic
> > > > > -KASAN_SHADOW_OFFSET := $(shell printf "0x%08x00000000\n" $$(( \
> > > > > -       (0xffffffff & (-1 << ($(CONFIG_ARM64_VA_BITS) - 1 - 32))) \
> > > > > -       + (1 << ($(CONFIG_ARM64_VA_BITS) - 32 - $(KASAN_SHADOW_SCALE_SHIFT))) \
> > > > > -       - (1 << (64 - 32 - $(KASAN_SHADOW_SCALE_SHIFT))) )) )
> > > > > -
> > > > >  export TEXT_OFFSET GZFLAGS
> > > > >
> > > > >  core-y         += arch/arm64/kernel/ arch/arm64/mm/
> > > >
> > > > I've just spotted this breaks build using CONFIG_KASAN_SW_TAGS &&
> > > > CONFIG_KASAN_INLINE, as scripts/Makefile.kasan only propagates
> > > > CONFIG_KASAN_SHADOW_OFFSET into KASAN_SHADOW_OFFSET when
> > > > CONFIG_KASAN_GENERIC is selected, but consumes KASAN_SHADOW_OFFSET
> > > > regardless.
> > > >
> > > > I think that's by accident rather than by design, but to
> > > > minimize/localize the fixup, how about the below? I can send a cleanup
> > > > patch for scripts/Makefile.kasan later.
> > >
> > > How much work is that? I've dropped this stuff from -next for now, so we
> > > have time to fix it properly as long as it's not going to take weeks.
> >
> > I wrote it first, so no effort; patch below.
>
> The patch looks fine to me, but I'd like an Ack from one of the KASAN
> folks before I queue this via the arm64 tree (where support for 52-bit
> virtual addressing in the kernel [1] depends on this being fixed).
>
> Patch is quoted below. Please can somebody take a look?

I tested this on my hpe and apm arm64 hardware boxes and the issue I
reported via <http://lists.infradead.org/pipermail/linux-arm-kernel/2019-August/673424.html>
seem fixed, so:

Tested-by: Bhupesh Sharma <bhsharma@redhat.com>

Thanks,
Bhupesh

> [1] https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/52-bit-kva
>
> > From ecdf60051a850f817d98f84ae9011afa2311b8f1 Mon Sep 17 00:00:00 2001
> > From: Mark Rutland <mark.rutland@arm.com>
> > Date: Wed, 14 Aug 2019 15:31:57 +0100
> > Subject: [PATCH] kasan/arm64: fix CONFIG_KASAN_SW_TAGS && KASAN_INLINE
> >
> > The generic Makefile.kasan propagates CONFIG_KASAN_SHADOW_OFFSET into
> > KASAN_SHADOW_OFFSET, but only does so for CONFIG_KASAN_GENERIC.
> >
> > Since commit:
> >
> >   6bd1d0be0e97936d ("arm64: kasan: Switch to using KASAN_SHADOW_OFFSET")
> >
> > ... arm64 defines CONFIG_KASAN_SHADOW_OFFSET in Kconfig rather than
> > defining KASAN_SHADOW_OFFSET in a Makefile. Thus, if
> > CONFIG_KASAN_SW_TAGS && KASAN_INLINE are selected, we get build time
> > splats due to KASAN_SHADOW_OFFSET not being set:
> >
> > | [mark@lakrids:~/src/linux]% usellvm 8.0.1 usekorg 8.1.0  make ARCH=arm64 CROSS_COMPILE=aarch64-linux- CC=clang
> > | scripts/kconfig/conf  --syncconfig Kconfig
> > |   CC      scripts/mod/empty.o
> > | clang (LLVM option parsing): for the -hwasan-mapping-offset option: '' value invalid for uint argument!
> > | scripts/Makefile.build:273: recipe for target 'scripts/mod/empty.o' failed
> > | make[1]: *** [scripts/mod/empty.o] Error 1
> > | Makefile:1123: recipe for target 'prepare0' failed
> > | make: *** [prepare0] Error 2
> >
> > Let's fix this by always propagating CONFIG_KASAN_SHADOW_OFFSET into
> > KASAN_SHADOW_OFFSET if CONFIG_KASAN is selected, moving the existing
> > common definition of +CFLAGS_KASAN_NOSANITIZE to the top of
> > Makefile.kasan.
> >
> > Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> > Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Steve Capper <steve.capper@arm.com>
> > Cc: Will Deacon <will@kernel.org>
> > ---
> >  scripts/Makefile.kasan | 11 +++++------
> >  1 file changed, 5 insertions(+), 6 deletions(-)
> >
> > diff --git a/scripts/Makefile.kasan b/scripts/Makefile.kasan
> > index 6410bd22fe38..03757cc60e06 100644
> > --- a/scripts/Makefile.kasan
> > +++ b/scripts/Makefile.kasan
> > @@ -1,4 +1,9 @@
> >  # SPDX-License-Identifier: GPL-2.0
> > +ifdef CONFIG_KASAN
> > +CFLAGS_KASAN_NOSANITIZE := -fno-builtin
> > +KASAN_SHADOW_OFFSET ?= $(CONFIG_KASAN_SHADOW_OFFSET)
> > +endif
> > +
> >  ifdef CONFIG_KASAN_GENERIC
> >
> >  ifdef CONFIG_KASAN_INLINE
> > @@ -7,8 +12,6 @@ else
> >       call_threshold := 0
> >  endif
> >
> > -KASAN_SHADOW_OFFSET ?= $(CONFIG_KASAN_SHADOW_OFFSET)
> > -
> >  CFLAGS_KASAN_MINIMAL := -fsanitize=kernel-address
> >
> >  cc-param = $(call cc-option, -mllvm -$(1), $(call cc-option, --param $(1)))
> > @@ -45,7 +48,3 @@ CFLAGS_KASAN := -fsanitize=kernel-hwaddress \
> >               $(instrumentation_flags)
> >
> >  endif # CONFIG_KASAN_SW_TAGS
> > -
> > -ifdef CONFIG_KASAN
> > -CFLAGS_KASAN_NOSANITIZE := -fno-builtin
> > -endif
> > --
> > 2.11.0
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
