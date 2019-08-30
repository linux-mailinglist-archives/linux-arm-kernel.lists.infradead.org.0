Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F0BA3376
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 11:12:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/2X4QTaXq5UnVO4V3DRgmc6ND2N3D7j5PGAI8Co5L2Q=; b=phtjGYjUyQqYSe
	XewdVlz4g1ry95TiH9XXaTAJ7/1V4RzVhRXXqVXorWbh7ZfkjRv6vjIsfMy0oZLwRZLYFAqq2pSD5
	1gNDhv0M0tY7ZbgJVp6/7z1fPklFIZqoIIqals1pcZBh/aHFeD297a9OToxf9SAmN00aMlvxLcZ5q
	58hoI56/cdoPDeWgidgO6MVxVfD8/r/bzv+ULp/Osm01d4zt8Co/6WptKc3zd0OVfGzeRTlq/xJar
	XSrVDdOmHBRhm3qhjtb6DJ6Mt2VHu0UQ6dQhpIoyXV7CNQReDagYKYXHsXEPWX/1lU/DrwRGxjQ91
	61kTY6Z8nrq03YJeAxCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3cx3-0005KH-At; Fri, 30 Aug 2019 09:12:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3cwo-0005IW-Nq
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 09:12:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 479E5344;
 Fri, 30 Aug 2019 02:11:58 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B0C423F718;
 Fri, 30 Aug 2019 02:11:57 -0700 (PDT)
Date: Fri, 30 Aug 2019 10:11:55 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v5 10/10] arm64: atomics: Use K constraint when toolchain
 appears to support it
Message-ID: <20190830091155.GS14582@e119886-lin.cambridge.arm.com>
References: <20190829154834.26547-1-will@kernel.org>
 <20190829154834.26547-11-will@kernel.org>
 <20190829165457.grindfmgpdpsbt4i@willie-the-truck>
 <20190830000803.GR14582@e119886-lin.cambridge.arm.com>
 <20190830075220.6xyyctvgd2ssrsjf@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830075220.6xyyctvgd2ssrsjf@willie-the-truck>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_021158_975222_4523589B 
X-CRM114-Status: GOOD (  29.50  )
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
Cc: mark.rutland@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 ndesaulniers@google.com, Ard.Biesheuvel@arm.com, natechancellor@gmail.com,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 08:52:20AM +0100, Will Deacon wrote:
> On Fri, Aug 30, 2019 at 01:08:03AM +0100, Andrew Murray wrote:
> > On Thu, Aug 29, 2019 at 05:54:58PM +0100, Will Deacon wrote:
> > > On Thu, Aug 29, 2019 at 04:48:34PM +0100, Will Deacon wrote:
> > > > diff --git a/arch/arm64/include/asm/atomic_ll_sc.h b/arch/arm64/include/asm/atomic_ll_sc.h
> > > > index 95091f72228b..7fa042f5444e 100644
> > > > --- a/arch/arm64/include/asm/atomic_ll_sc.h
> > > > +++ b/arch/arm64/include/asm/atomic_ll_sc.h
> > > > @@ -23,6 +23,10 @@ asm_ops "\n"								\
> > > >  #define __LL_SC_FALLBACK(asm_ops) asm_ops
> > > >  #endif

I downloaded your original patches and tried them, and also got the
build error. After playing with this I think something isn't quite right...

This is your current test:

 echo 'int main(void) {asm volatile("and w0, w0, %w0" :: "K" (4294967295)); return 0; }' |  aarch64-linux-gnu-gcc -S -x c  - ; echo $?

But on my machine this returns 0, i.e. no error. If I drop the -S:

 echo 'int main(void) {asm volatile("and w0, w0, %w0" :: "K" (4294967295)); return 0; }' |  aarch64-linux-gnu-gcc -x c  - ; echo $?

Then this returns 1.

So I guess the -S flag or something similar is needed.

> > > >  
> > > > +#ifndef CONFIG_CC_HAS_K_CONSTRAINT
> > > > +#define K
> > > > +#endif

Also, isn't this the wrong way around?

It looks like when using $(call try-run,echo - it's the last argument that is
used when the condition is false. Thus at present we seem to be setting 
CONFIG_CC_HAS_K_CONSTRAINT when 'K' is broken.


> > > 
> > > Bah, I need to use something like __stringify when the constraint is used
> > > in order for this to get expanded properly. Updated diff below.
> > 
> > I don't think the changes in your updated diff are required. We successfully
> > combine 'asm_op' with the remainder of the assembly string without using
> >  __stringify, and this is no different to how the original patch combined
> > 'constraint' with "r".
> 
> It's a hack: __stringify expands its arguments, so I figured I may as well
> use that rather than do it manually with an extra macro.
> 
> > You can verify this by looking at the preprocessed .i files generated with
> > something like:
> > 
> > make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- drivers/spi/spi-rockchip.i
> > 
> > I see no difference (with GCC 7.3.1) between the original approach and your
> > use of __stringify. Incidentally you end up with "K" "r" instead of "Kr" but
> > it seems to have the desired effect (e.g. supress/emit out of range errors).
> > I have a couple of macros that resolves this to "Kr" but I don't think it's
> > necessary.
> > 
> > Did you find that it didn't work without your changes? I found it hard to
> > reproduce the out-of-range errors until I made the following change, I could
> > then easily see the effect of changing the constraint:
> > 
> >         : "=&r" (result), "=&r" (tmp), "+Q" (v->counter)                \
> > -       : #constraint "r" (i));                                         \
> > +       : #constraint) "r" (4294967295));                                               \
> >  }
> 
> Without the __stringify I get a compilation failure when building
> kernel/panic.o because it tries to cmpxchg a 32-bit variable with -1
> (PANIC_CPU_INVALID). Looking at panic.s, I see that constraint parameter
> isn't being expanded. For example if I do:
> 
>   #ifndef CONFIG_CC_HAS_K_CONSTRAINT
>   #define INVALID_CONSTRAINT
>   #else
>   #define INVALID_CONSTRAINT	K
>   #endif
> 
> and then pass INVALID_CONSTRAINT to the generator macros, we'll end up
> with INVALID_CONSTRAINT in the .s file and gas will barf.

This still isn't an issue for me. Your patches cause the build to fail because
it's using the K flag - if I invert the CONFIG_CC_HAS_K_CONSTRAINT test then
it builds correctly (because it expands the K to nothing).

If there is an issue with the expansion of constraint, shouldn't we also
__stringify 'asm_op'?

Thanks,

Andrew Murray

> 
> The reason I didn't see this initially is because my silly testcase had
> a typo and was using atomic_add instead of atomic_and.
> 
> Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
