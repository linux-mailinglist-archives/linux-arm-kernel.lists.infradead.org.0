Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BECAA2B26
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 01:45:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=02AUoWSRw2wXY4kuC5IPwR6byBR8qV/hQLcxBtfiBsA=; b=kbdC78ND0j+rmJ
	I6zn7qN0KhT6vQ1f1Mkb4bp6U9OaImBbm6BNn6WsneXZQxC0Rpsnqt1idrZ4OtEjINxlIIYmegdWS
	SzqpqYFsGQyo6ALLqlMfDmnIWkkn7s6IAz1DZhMoOO2sb1VwN13a8rFsa05KZd1YdxkOBugqfOlVF
	vmya2qSKySDsMySyiVPgHxhVHB1NOOvI7Hi7jPVKb4zw41h2ZE7bXm2IXLQ/ismUdCEx9OsZTHGl8
	WmrYihId4uPleT0/b6B+cRAn2jIsp62rqH2NLx+BT+hrTFrU7NcO7icwOfudQG7f9NnlQgTgej6P9
	OWX3iwB3uFooCyr6b//A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3U6K-0006On-E7; Thu, 29 Aug 2019 23:45:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3U61-0006OH-Gv
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 23:44:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 242E5337;
 Thu, 29 Aug 2019 16:44:53 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8E1FC3F718;
 Thu, 29 Aug 2019 16:44:52 -0700 (PDT)
Date: Fri, 30 Aug 2019 00:44:50 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v5 09/10] arm64: atomics: Undefine internal macros after
 use
Message-ID: <20190829234450.GP14582@e119886-lin.cambridge.arm.com>
References: <20190829154834.26547-1-will@kernel.org>
 <20190829154834.26547-10-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829154834.26547-10-will@kernel.org>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_164453_604040_E1BB2972 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Thu, Aug 29, 2019 at 04:48:33PM +0100, Will Deacon wrote:
> We use a bunch of internal macros when constructing our atomic and
> cmpxchg routines in order to save on boilerplate. Avoid exposing these
> directly to users of the header files.
> 
> Signed-off-by: Will Deacon <will@kernel.org>

Reviewed-by: Andrew Murray <andrew.murray@arm.com>

> ---
>  arch/arm64/include/asm/atomic.h  | 7 +++++++
>  arch/arm64/include/asm/cmpxchg.h | 4 ++++
>  2 files changed, 11 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/atomic.h b/arch/arm64/include/asm/atomic.h
> index 7c334337674d..916e5a6d5454 100644
> --- a/arch/arm64/include/asm/atomic.h
> +++ b/arch/arm64/include/asm/atomic.h
> @@ -32,6 +32,7 @@ ATOMIC_OP(atomic_add)
>  ATOMIC_OP(atomic_and)
>  ATOMIC_OP(atomic_sub)
>  
> +#undef ATOMIC_OP
>  
>  #define ATOMIC_FETCH_OP(name, op)					\
>  static inline int arch_##op##name(int i, atomic_t *v)			\
> @@ -54,6 +55,8 @@ ATOMIC_FETCH_OPS(atomic_fetch_sub)
>  ATOMIC_FETCH_OPS(atomic_add_return)
>  ATOMIC_FETCH_OPS(atomic_sub_return)
>  
> +#undef ATOMIC_FETCH_OP
> +#undef ATOMIC_FETCH_OPS
>  
>  #define ATOMIC64_OP(op)							\
>  static inline void arch_##op(long i, atomic64_t *v)			\
> @@ -68,6 +71,7 @@ ATOMIC64_OP(atomic64_add)
>  ATOMIC64_OP(atomic64_and)
>  ATOMIC64_OP(atomic64_sub)
>  
> +#undef ATOMIC64_OP
>  
>  #define ATOMIC64_FETCH_OP(name, op)					\
>  static inline long arch_##op##name(long i, atomic64_t *v)		\
> @@ -90,6 +94,9 @@ ATOMIC64_FETCH_OPS(atomic64_fetch_sub)
>  ATOMIC64_FETCH_OPS(atomic64_add_return)
>  ATOMIC64_FETCH_OPS(atomic64_sub_return)
>  
> +#undef ATOMIC64_FETCH_OP
> +#undef ATOMIC64_FETCH_OPS
> +
>  static inline long arch_atomic64_dec_if_positive(atomic64_t *v)
>  {
>  	return __lse_ll_sc_body(atomic64_dec_if_positive, v);
> diff --git a/arch/arm64/include/asm/cmpxchg.h b/arch/arm64/include/asm/cmpxchg.h
> index afaba73e0b2c..a1398f2f9994 100644
> --- a/arch/arm64/include/asm/cmpxchg.h
> +++ b/arch/arm64/include/asm/cmpxchg.h
> @@ -129,6 +129,8 @@ __CMPXCHG_CASE(mb_, 16)
>  __CMPXCHG_CASE(mb_, 32)
>  __CMPXCHG_CASE(mb_, 64)
>  
> +#undef __CMPXCHG_CASE
> +
>  #define __CMPXCHG_DBL(name)						\
>  static inline long __cmpxchg_double##name(unsigned long old1,		\
>  					 unsigned long old2,		\
> @@ -143,6 +145,8 @@ static inline long __cmpxchg_double##name(unsigned long old1,		\
>  __CMPXCHG_DBL(   )
>  __CMPXCHG_DBL(_mb)
>  
> +#undef __CMPXCHG_DBL
> +
>  #define __CMPXCHG_GEN(sfx)						\
>  static inline unsigned long __cmpxchg##sfx(volatile void *ptr,		\
>  					   unsigned long old,		\
> -- 
> 2.11.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
