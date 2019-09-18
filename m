Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D3D2B5FC5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 11:03:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iEz1CQF80l3fsOtWGKmD3uqiH4mVhmlZT05KPVoDHrs=; b=e8m2WmQJQ9+nOm
	hYYHQbGye9kw/RF9tJg6jmZYYmDQ2a1qav1BT8dqUKtS1z/138i0dopL+ntLk6W7WpYufz/mdDWHT
	TIswiE+roqXQSHJ0qp17xZIWyWBSWxj477qDJYxg4uMgwLIEyuD47ThxASpatA06tcHsAgYB+V1u7
	OxcMVi8cRvYhRfAoCZguJrY8FDsVIhDb8BZe5+kUm52LQrZmzqiTpxz/LUX+b0tb2/Wenfa85hG0V
	hXpfNTe4MfRrVfrWfGTYIUpx8WxrXwpj4x2Khdr0m0RcxodTDgvjFXGkD1CVSp5H2CvbO7OKfDNry
	vYIm+9usTGmQQ6a3Ly4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAVrf-0003a3-Jj; Wed, 18 Sep 2019 09:03:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAVrM-0003Z9-6Y
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 09:02:49 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7842820640;
 Wed, 18 Sep 2019 09:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568797366;
 bh=lwmhaKk2DoGcG7qzZtBauVEYaJWZpkGPIgrTEbpVuHQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2YY6sB07c+zPpM3Ky3Ceb7ZrPsrPh6bkuh5bowYMqToN8uhTjr/3QNmPYvYtIS57O
 fRtbK2HpOaY/qgA5TFGRP5mokdfIaJ3jJJr29UIbtWcGjURXb4gkKfofYo5gtPZTO8
 U5ssMpNg7yE2zY4VNZvOgun7tkA9t3Ep9oLe9GB4=
Date: Wed, 18 Sep 2019 10:02:41 +0100
From: Will Deacon <will@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH] [v2] arm64: fix unreachable code issue with cmpxchg
Message-ID: <20190918090240.5cc3rfcuenefisgr@willie-the-truck>
References: <20190910115643.391995-1-arnd@arndb.de>
 <20190917203425.GA31423@archlinux-threadripper>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917203425.GA31423@archlinux-threadripper>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_020248_281243_C21AD22D 
X-CRM114-Status: GOOD (  21.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Andrew Murray <andrew.murray@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 01:34:25PM -0700, Nathan Chancellor wrote:
> On Tue, Sep 10, 2019 at 01:56:22PM +0200, Arnd Bergmann wrote:
> > On arm64 build with clang, sometimes the __cmpxchg_mb is not inlined
> > when CONFIG_OPTIMIZE_INLINING is set.
> > Clang then fails a compile-time assertion, because it cannot tell at
> > compile time what the size of the argument is:
> > 
> > mm/memcontrol.o: In function `__cmpxchg_mb':
> > memcontrol.c:(.text+0x1a4c): undefined reference to `__compiletime_assert_175'
> > memcontrol.c:(.text+0x1a4c): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `__compiletime_assert_175'
> > 
> > Mark all of the cmpxchg() style functions as __always_inline to
> > ensure that the compiler can see the result.
> > 
> > Acked-by: Nick Desaulniers <ndesaulniers@google.com>
> > Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> > Link: https://github.com/ClangBuiltLinux/linux/issues/648
> > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> > Tested-by: Nathan Chancellor <natechancellor@gmail.com>
> > Reviewed-by: Andrew Murray <andrew.murray@arm.com>
> > Tested-by: Andrew Murray <andrew.murray@arm.com>
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > ---
> > v2: skip unneeded changes, as suggested by Andrew Murray
> > ---
> >  arch/arm64/include/asm/cmpxchg.h | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/arch/arm64/include/asm/cmpxchg.h b/arch/arm64/include/asm/cmpxchg.h
> > index a1398f2f9994..f9bef42c1411 100644
> > --- a/arch/arm64/include/asm/cmpxchg.h
> > +++ b/arch/arm64/include/asm/cmpxchg.h
> > @@ -62,7 +62,7 @@ __XCHG_CASE( ,  ,  mb_, 64, dmb ish, nop,  , a, l, "memory")
> >  #undef __XCHG_CASE
> >  
> >  #define __XCHG_GEN(sfx)							\
> > -static inline unsigned long __xchg##sfx(unsigned long x,		\
> > +static __always_inline  unsigned long __xchg##sfx(unsigned long x,	\
> >  					volatile void *ptr,		\
> >  					int size)			\
> >  {									\
> > @@ -148,7 +148,7 @@ __CMPXCHG_DBL(_mb)
> >  #undef __CMPXCHG_DBL
> >  
> >  #define __CMPXCHG_GEN(sfx)						\
> > -static inline unsigned long __cmpxchg##sfx(volatile void *ptr,		\
> > +static __always_inline unsigned long __cmpxchg##sfx(volatile void *ptr,	\
> >  					   unsigned long old,		\
> >  					   unsigned long new,		\
> >  					   int size)			\
> > @@ -255,7 +255,7 @@ __CMPWAIT_CASE( ,  , 64);
> >  #undef __CMPWAIT_CASE
> >  
> >  #define __CMPWAIT_GEN(sfx)						\
> > -static inline void __cmpwait##sfx(volatile void *ptr,			\
> > +static __always_inline void __cmpwait##sfx(volatile void *ptr,		\
> >  				  unsigned long val,			\
> >  				  int size)				\
> >  {									\
> > -- 
> > 2.20.0
> > 
> 
> Looks like the arm64 pull request happened without this patch so clang
> all{mod,yes}config builds are broken. Did the maintainers have any
> further comments on it or could this make it in with the next one?

Fear not! I plan to send this with some other fixes we've got for -rc1.
I just to get my CI scripts going again (new machine), but that shouldn't
take long.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
