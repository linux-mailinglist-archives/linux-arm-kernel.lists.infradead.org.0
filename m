Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9506AE800
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 12:25:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OZwPQeyL0rSjaoSfyuJtnUhLdxaeLkU1MFbHAq93CXw=; b=Ez+pI3XZoPdT1F
	U7+bLHWTF+i/YHT95TtwPHF43PNb18ObgZOA47cOy/mVUOiX1pWUxeRFviEbRqWK1QehKOwKG83w3
	f1jgACa+aMc8lCkRn7+0qN/jzSKTZrzTGbIYr5gamgIXuGD4jD8ATw/GnJExa4QK0t63K4t9RzO6x
	ihclspy627QOSsPGhBf2mbHezuyCF1pkPdLjrBraMtuTFCw6NV+MCZjoCm0GmddEXrKeye+ZcdJnm
	TwHQa+kVEjkhfzA69Cc4DzsbJCG3Y4d8bBDau/mTI/LjwH2bTolAQTik6kczr6FVlluDeoKrrk9j7
	HhkGLQ7QO29xtRxxJ18A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7dKh-0000p3-Uu; Tue, 10 Sep 2019 10:25:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i7dKY-0000AB-B7
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 10:25:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 45E591000;
 Tue, 10 Sep 2019 03:25:01 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B154C3F59C;
 Tue, 10 Sep 2019 03:25:00 -0700 (PDT)
Date: Tue, 10 Sep 2019 11:24:59 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] arm64: fix unreachable code issue with cmpxchg
Message-ID: <20190910102458.GJ9720@e119886-lin.cambridge.arm.com>
References: <20190909202153.144970-1-arnd@arndb.de>
 <20190910092324.GI9720@e119886-lin.cambridge.arm.com>
 <CAK8P3a2Vk+KSUGJyPTRuLPD=KPEAR43SZ1ofB6k+KeQi3fSERw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2Vk+KSUGJyPTRuLPD=KPEAR43SZ1ofB6k+KeQi3fSERw@mail.gmail.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_032502_483263_03BFAE29 
X-CRM114-Status: GOOD (  26.14  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 11:38:37AM +0200, Arnd Bergmann wrote:
> On Tue, Sep 10, 2019 at 11:23 AM Andrew Murray <andrew.murray@arm.com> wrote:
> 
> >
> > >  arch/arm64/include/asm/cmpxchg.h | 15 ++++++++-------
> > >  1 file changed, 8 insertions(+), 7 deletions(-)
> > >
> > > diff --git a/arch/arm64/include/asm/cmpxchg.h b/arch/arm64/include/asm/cmpxchg.h
> > > index a1398f2f9994..fd64dc8a235f 100644
> > > --- a/arch/arm64/include/asm/cmpxchg.h
> > > +++ b/arch/arm64/include/asm/cmpxchg.h
> > > @@ -19,7 +19,7 @@
> > >   * acquire+release for the latter.
> > >   */
> > >  #define __XCHG_CASE(w, sfx, name, sz, mb, nop_lse, acq, acq_lse, rel, cl)    \
> > > -static inline u##sz __xchg_case_##name##sz(u##sz x, volatile void *ptr)              \
> > > +static __always_inline u##sz __xchg_case_##name##sz(u##sz x, volatile void *ptr)\
> >
> > This hunk isn't needed, there is no BUILD_BUG here.
> 
> Right, I noticed this, but it seemed like a good idea regardless given the small
> size of the function compared with the overhead of a function call.  We clearly
> want these to be inlined all the time.
> 
> Same for the others.

I'm not so sure - isn't the point of something like OPTIMIZE_INLINING to give
more freedom to the tooling (and by virtue of the option - the user)?

Surely any decent optimising compiler will do the right thing by inlining small
trivial functions that are annotated with inline? And if not, the compiler
should be fixed not the kernel - unless of course it causes an issue - and then
we should fix those specific cases.

There must be dozens of trivial functions that are marked with __inline, I
don't think it would make sense to mark those as __always_inline. For example the
atomics in atomic_lse.h are trivial but only marked inline. We obviously want
them inline, though I don't think we should babysit the compiler to do the
right thing.

(Also the commit message implies that all the hunks are required to fix this
particular issue which they are not).

Thanks,

Andrew Murray

> 
> > Alternatively is it possible to replace the BUILD_BUG's with something else?
> >
> > I think because we use BUILD_BUG at the end of a switch statement, we make
> > the assumption that size is known at compile time, for this reason we should
> > ensure the function containing the BUILD_BUG is __always_inline.
> >
> > Looking across the kernel where BUILD_BUG is used as a default in a switch
> > statment ($ git grep -B 3 BUILD_BUG\( | grep default), most instances are
> > within macros, but many are found in an __always_inline function:
> >
> > arch/x86/kvm/cpuid.h
> > mm/kasan/generic.c
> >
> > Though some are not:
> >
> > include/linux/signal.h
> > arch/arm64/include/asm/arm_dsu/pmu.h
> >
> > I wonder if there may be a latent mole ready to whack with pmu.h?
> 
> Right, it can't hurt to annotate those as well. I actually have another
> fixup for linux/signal.h that I would have to revisit at some point.
> See https://bugs.llvm.org/show_bug.cgi?id=38789, I think this is
> fixed with clang-9 now, but maybe not with clang-8.
> 
>       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
