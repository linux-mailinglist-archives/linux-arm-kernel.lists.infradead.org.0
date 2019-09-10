Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCDC2AE6C6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 11:23:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xOsyoGH3I0WVLjWpnvXHiG8/4jtfr8qCLq2GYWa8LGE=; b=jbab/pAFu9Urbg
	VkewNNq/rXQ66iDOhGe/i+nlTuDcfRdG8jckExze79vM9JkimGquFw4RwG77AHuOj4HBAHgRiPhwV
	L/KW9T+FkXjBPqA/bbC5mqcVsgHWjDvyRyITRnI/sKiixmDt+k2148PCgvc/FgM9iOjnHvR9mfIs5
	M3fMQHyK0nlSCaZVYryv/6kEV6OUOS2Cc4Gq2TonW6ojBM5ShRyMJAsiz3mD5nWRxeyCpkWAFzmL/
	AH632T/np7ls5puvQnIpLw46vPPQ9nWsNs2cHBa8+tcwsp6SRrcQhnLwGA8rRuottRz9FMPkgVN+Q
	sho6WRP9R9Jb5/haFvTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7cNG-0002Wu-GU; Tue, 10 Sep 2019 09:23:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i7cN3-0002WB-5A
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 09:23:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0F49728;
 Tue, 10 Sep 2019 02:23:28 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7AED63F71F;
 Tue, 10 Sep 2019 02:23:27 -0700 (PDT)
Date: Tue, 10 Sep 2019 10:23:25 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] arm64: fix unreachable code issue with cmpxchg
Message-ID: <20190910092324.GI9720@e119886-lin.cambridge.arm.com>
References: <20190909202153.144970-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190909202153.144970-1-arnd@arndb.de>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_022333_289200_94CE39CF 
X-CRM114-Status: GOOD (  22.00  )
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
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 09, 2019 at 10:21:35PM +0200, Arnd Bergmann wrote:
> On arm64 build with clang, sometimes the __cmpxchg_mb is not inlined
> when CONFIG_OPTIMIZE_INLINING is set.
> Clang then fails a compile-time assertion, because it cannot tell at
> compile time what the size of the argument is:
> 
> mm/memcontrol.o: In function `__cmpxchg_mb':
> memcontrol.c:(.text+0x1a4c): undefined reference to `__compiletime_assert_175'
> memcontrol.c:(.text+0x1a4c): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `__compiletime_assert_175'
> 
> Mark all of the cmpxchg() style functions as __always_inline to
> ensure that the compiler can see the result.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---

I was able to reproduce this with the following:

$ git describe HEAD
next-20190904

$ clang --version
Android (5821526 based on r365631) clang version 9.0.6 (https://android.googlesource.com/toolchain/llvm-project 85305eaf1e90ff529d304abac8a979e1d967f0a2) (based on LLVM 9.0.6svn)
Target: x86_64-unknown-linux-gnu
Thread model: posix
InstalledDir: /home/andrewm/android-clang/clang-r365631/bin

$ make O=~/linux-build/ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- CC=clang -j56 allyesconfig Image

(I was unable to reproduce with defconfig+OPTIMIZE_INLINING).

However...

>  arch/arm64/include/asm/cmpxchg.h | 15 ++++++++-------
>  1 file changed, 8 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/cmpxchg.h b/arch/arm64/include/asm/cmpxchg.h
> index a1398f2f9994..fd64dc8a235f 100644
> --- a/arch/arm64/include/asm/cmpxchg.h
> +++ b/arch/arm64/include/asm/cmpxchg.h
> @@ -19,7 +19,7 @@
>   * acquire+release for the latter.
>   */
>  #define __XCHG_CASE(w, sfx, name, sz, mb, nop_lse, acq, acq_lse, rel, cl)	\
> -static inline u##sz __xchg_case_##name##sz(u##sz x, volatile void *ptr)		\
> +static __always_inline u##sz __xchg_case_##name##sz(u##sz x, volatile void *ptr)\

This hunk isn't needed, there is no BUILD_BUG here.


>  {										\
>  	u##sz ret;								\
>  	unsigned long tmp;							\
> @@ -62,7 +62,7 @@ __XCHG_CASE( ,  ,  mb_, 64, dmb ish, nop,  , a, l, "memory")
>  #undef __XCHG_CASE
>  
>  #define __XCHG_GEN(sfx)							\
> -static inline unsigned long __xchg##sfx(unsigned long x,		\
> +static __always_inline  unsigned long __xchg##sfx(unsigned long x,	\
>  					volatile void *ptr,		\
>  					int size)			\
>  {									\
> @@ -103,8 +103,9 @@ __XCHG_GEN(_mb)
>  #define arch_xchg_release(...)	__xchg_wrapper(_rel, __VA_ARGS__)
>  #define arch_xchg(...)		__xchg_wrapper( _mb, __VA_ARGS__)
>  
> -#define __CMPXCHG_CASE(name, sz)			\
> -static inline u##sz __cmpxchg_case_##name##sz(volatile void *ptr,	\
> +#define __CMPXCHG_CASE(name, sz)					\
> +static __always_inline u##sz 						\
> +__cmpxchg_case_##name##sz(volatile void *ptr,				\

This hunk isn't needed, there is no BUILD_BUG here.

>  					      u##sz old,		\
>  					      u##sz new)		\
>  {									\
> @@ -148,7 +149,7 @@ __CMPXCHG_DBL(_mb)
>  #undef __CMPXCHG_DBL
>  
>  #define __CMPXCHG_GEN(sfx)						\
> -static inline unsigned long __cmpxchg##sfx(volatile void *ptr,		\
> +static __always_inline unsigned long __cmpxchg##sfx(volatile void *ptr,	\
>  					   unsigned long old,		\
>  					   unsigned long new,		\
>  					   int size)			\
> @@ -230,7 +231,7 @@ __CMPXCHG_GEN(_mb)
>  })
>  
>  #define __CMPWAIT_CASE(w, sfx, sz)					\
> -static inline void __cmpwait_case_##sz(volatile void *ptr,		\
> +static __always_inline void __cmpwait_case_##sz(volatile void *ptr,	\
>  				       unsigned long val)		\

This hunk isn't needed, there is no BUILD_BUG here.

>  {									\
>  	unsigned long tmp;						\
> @@ -255,7 +256,7 @@ __CMPWAIT_CASE( ,  , 64);
>  #undef __CMPWAIT_CASE
>  
>  #define __CMPWAIT_GEN(sfx)						\
> -static inline void __cmpwait##sfx(volatile void *ptr,			\
> +static __always_inline void __cmpwait##sfx(volatile void *ptr,		\
>  				  unsigned long val,			\
>  				  int size)				\
>  {									\

Alternatively is it possible to replace the BUILD_BUG's with something else?

I think because we use BUILD_BUG at the end of a switch statement, we make
the assumption that size is known at compile time, for this reason we should
ensure the function containing the BUILD_BUG is __always_inline.

Looking across the kernel where BUILD_BUG is used as a default in a switch
statment ($ git grep -B 3 BUILD_BUG\( | grep default), most instances are
within macros, but many are found in an __always_inline function:

arch/x86/kvm/cpuid.h
mm/kasan/generic.c

Though some are not:

include/linux/signal.h
arch/arm64/include/asm/arm_dsu/pmu.h

I wonder if there may be a latent mole ready to whack with pmu.h?

Anyway with just the three remaining hunks:

Reviewed-by: Andrew Murray <andrew.murray@arm.com>
Tested-by: Andrew Murray <andrew.murray@arm.com>

> -- 
> 2.20.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
