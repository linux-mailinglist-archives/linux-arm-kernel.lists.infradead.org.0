Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6CAEA0117
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 13:54:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qPTQxZMNNqoVcW54lRm1yzoM5PU5WdAUpfZGV6dW6Yk=; b=d/3ksQVb6mkrCB
	QSJG48GWkf1HzW1m4SsE4LdE8XUkilOsxLxWoHtjXpLhJh20Z5ivVXGnkjVerpGjJ5AUOb8iOgfl9
	3ZoakE9XASDsIPLFKiurMiO8ckicLgX8suqX437WPTjTT7ZOs7tl5OG5rJJnjKVdyK/HV4IFpha6w
	ZkLFJ2AHagHsNcXcdSY51BLvffoBiXDj07QI9s+RXoiqBxYhSH5O4wghIctM8smjXuH12hofWdYM2
	Yv9AJebRsC7PvS2qlCTjtQmCF01GzZgylZJ7U9zgSAe0zbQU5gwmPLsTIIsYsBte5z3m3KoyRXU5A
	P/dYc07o3+x8V9iTOhZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2wWf-0003B2-IX; Wed, 28 Aug 2019 11:54:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2wWK-0003Ag-Ji
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 11:53:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D003D344;
 Wed, 28 Aug 2019 04:53:47 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 510AE3F246;
 Wed, 28 Aug 2019 04:53:47 -0700 (PDT)
Date: Wed, 28 Aug 2019 12:53:45 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v3 3/5] arm64: atomics: avoid out-of-line ll/sc atomics
Message-ID: <20190828115345.GU14582@e119886-lin.cambridge.arm.com>
References: <20190812143625.42745-1-andrew.murray@arm.com>
 <20190812143625.42745-4-andrew.murray@arm.com>
 <20190822170155.GE33080@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190822170155.GE33080@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_045348_831219_0CB87EC1 
X-CRM114-Status: GOOD (  28.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Boqun Feng <boqun.feng@gmail.com>,
 Will Deacon <will.deacon@arm.com>, Ard.Biesheuvel@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 06:01:55PM +0100, Mark Rutland wrote:
> On Mon, Aug 12, 2019 at 03:36:23PM +0100, Andrew Murray wrote:
> > When building for LSE atomics (CONFIG_ARM64_LSE_ATOMICS), if the hardware
> > or toolchain doesn't support it the existing code will fallback to ll/sc
> > atomics. It achieves this by branching from inline assembly to a function
> > that is built with specical compile flags. Further this results in the
> > clobbering of registers even when the fallback isn't used increasing
> > register pressure.
> > 
> > Let's improve this by providing inline implementations of both LSE and
> > ll/sc and use a static key to select between them. This allows for the
> > compiler to generate better atomics code.
> > 
> > To improve icache performance for the LL/SC fallback atomics, we put them
> > in their own subsection.
> > 
> > Please note that as atomic_arch.h is included indirectly by kernel.h
> > (via bitops.h), we cannot depend on features provided later in the kernel.h
> > file. This prevents us from placing the system_uses_lse_atomics function
> > in cpu_feature.h due to its dependencies.
> > 
> > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> 
> [...]
> 
> > diff --git a/arch/arm64/include/asm/atomic_arch.h b/arch/arm64/include/asm/atomic_arch.h
> > new file mode 100644
> > index 000000000000..255a284321c6
> > --- /dev/null
> > +++ b/arch/arm64/include/asm/atomic_arch.h
> > @@ -0,0 +1,154 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * Selection between LSE and LL/SC atomics.
> > + *
> > + * Copyright (C) 2018 ARM Ltd.
> > + * Author: Andrew Murray <andrew.murray@arm.com>
> > + */
> > +
> > +#ifndef __ASM_ATOMIC_ARCH_H
> > +#define __ASM_ATOMIC_ARCH_H
> > +
> > +#include <asm/atomic_lse.h>
> > +#include <asm/atomic_ll_sc.h>
> > +
> > +#include <linux/jump_label.h>
> > +#include <asm/cpucaps.h>
> 
> I'm guessing that we have to include the <asm/atomic_*> headers first
> due to the include dependencies. If that's the case, could we please
> have a comment here to that effect?
> 
> Minor nit, but could we also order those two alphabetically, please?
> 
> The general style is to have headers alphabetically, with (for reasons
> unknown) the <linux/*> headers before the <asm/*> headers.

There doesn't appear to be any valid reason for ordering the includes
in the way I have done, so I'll change it to the
linux-followed-by-asm-alphabetical way.

> 
> [...]
> 
> > +#if IS_ENABLED(CONFIG_ARM64_LSE_ATOMICS) && IS_ENABLED(CONFIG_AS_LSE)
> > +#define __LL_SC_FALLBACK(asm_ops)					\
> > +"	b	3f\n"							\
> > +"	.subsection	1\n"						\
> > +"3:\n"									\
> > +asm_ops "\n"								\
> > +"	b	4f\n"							\
> > +"	.previous\n"							\
> > +"4:\n"
> > +#else
> > +#define __LL_SC_FALLBACK(asm_ops) asm_ops
> >  #endif
> 
> Can we instead make the ll/sc functions with the cold attribute (wrapped
> by <linux/compiler.h> as __cold)?
> 
> IIUC that should have a similar effect, and might allow GCC to do better
> (e.g. merging compatible instances of the ll/sc code in the same cold
> subsection).
> 
> https://gcc.gnu.org/onlinedocs/gcc-9.2.0/gcc/Common-Function-Attributes.html#index-cold-function-attribute

Thanks for suggesting this, I hadn't considered this previously. However
the cold attribute only seems to have an effect when the function it is
applied to isn't inline. I think we want to keep both LSE and fallback
functions as inline.

At present the fallback functions are inlined, due to the use of 'unlikely'
they end up at the end of the function they are called from. Within this
inline'd function we take unconditional branches to/from the actual LL/SC
implementation, as we are using subsections the LL/SC implementations are
grouped together at the end of the each compilation unit. As we are using
unconditional branches, each call to an atomics function results in the LL/SC
implementation being duplicated (just like any other inline function, except
the code is elsewhere). We get some locality benefits from the use of
subsection but that is per-compilation unit (so you'll get clusters of them
across the vmlinux).

This approach gives us bloat, we can mitigate this by not using inline
functions, and further by optimising for size. We can put all the fallback
atomics in a single section to benefit from vmlinux-wide code locality -
however to benefit from all this we must use functions calls and their
associated overhead.

Thanks,

Andrew Murray

> 
> Otherwise, this is looking much nicer!
> 
> Thanks,
> Mark.
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
