Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D7FD0425
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 01:32:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1UoqyXjR4NNh8TDyMapIfI2Gl1eFXr4tpuzG/4TaXss=; b=GTsdnajIZN2C/d
	4EPh14CLb4kA1QCBOSm6aHBCBL3OyRkiO/u3j+XZdvB095WpgDPKJxlnmm/0fnpbmCxMKORC3CLUh
	611v/ruT9Twtrhf2+m2iIoanzCYP4n1KRus+SwUn/1TlRzjzaMg6Au8wI5nwlY1EQdUUGN3Z9iXiS
	ZrB5ZOacsbe2JRG6Nflg033dg3AxmfxRQINkfrIu8iX+3fnfd3bxzlugqTeYW54jii5l2VKzLhpJV
	Qpq0R7CqGiNTmfNsjwqtNe5eeOe3efM/XzZDSJBW2Mdsy4wUqUgtLNq6dBvO7KA4mD54Hkxwsz8+j
	vT0XCfHpyfUJKoT5B9TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHyxL-0007a9-4i; Tue, 08 Oct 2019 23:31:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHyxB-0007Zc-30
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 23:31:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 192BD337;
 Tue,  8 Oct 2019 16:31:40 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8FB4F3F68E;
 Tue,  8 Oct 2019 16:31:39 -0700 (PDT)
Date: Wed, 9 Oct 2019 00:31:38 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v2] arm64: lse: fix LSE atomics with LLVM's integrated
 assembler
Message-ID: <20191008233137.GL42880@e119886-lin.cambridge.arm.com>
References: <20191007201452.208067-1-samitolvanen@google.com>
 <20191008212730.185532-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191008212730.185532-1-samitolvanen@google.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_163141_218276_06447AE7 
X-CRM114-Status: GOOD (  17.21  )
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
Cc: Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 08, 2019 at 02:27:30PM -0700, Sami Tolvanen wrote:
> Unlike gcc, clang considers each inline assembly block to be independent
> and therefore, when using the integrated assembler for inline assembly,
> any preambles that enable features must be repeated in each block.
> 
> This change defines __LSE_PREAMBLE and adds it to each inline assembly
> block that has LSE instructions, which allows them to be compiled also
> with clang's assembler.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/671
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

This looks good to me. I can build and boot in a model with both Clang
(9.0.6) and GCC (7.3.1) and boot a guest without anything going bang.

Though when I build with AS=clang, e.g.

make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- CC=clang AS=clang Image

I get errors like this:

  CC      init/main.o
In file included from init/main.c:17:
In file included from ./include/linux/module.h:9:
In file included from ./include/linux/list.h:9:
In file included from ./include/linux/kernel.h:12:
In file included from ./include/linux/bitops.h:26:
In file included from ./arch/arm64/include/asm/bitops.h:26:
In file included from ./include/asm-generic/bitops/atomic.h:5:
In file included from ./include/linux/atomic.h:7:
In file included from ./arch/arm64/include/asm/atomic.h:16:
In file included from ./arch/arm64/include/asm/cmpxchg.h:14:
In file included from ./arch/arm64/include/asm/lse.h:13:
In file included from ./include/linux/jump_label.h:117:
./arch/arm64/include/asm/jump_label.h:24:20: error: expected a symbol reference in '.long' directive
                 "      .align          3                       \n\t"
                                                                  ^
<inline asm>:4:21: note: instantiated into assembly here
                .long           1b - ., "" - .  
                                           ^

I'm assuming that I'm doing something wrong?

Thanks,

Andrew Murray

> ---
> v2:
>  - Add a preamble to inline assembly blocks that use LSE instead
>    of allowing the compiler to emit LSE instructions everywhere.
> 
> ---
>  arch/arm64/include/asm/atomic_lse.h | 19 +++++++++++++++++++
>  arch/arm64/include/asm/lse.h        |  6 +++---
>  2 files changed, 22 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/atomic_lse.h b/arch/arm64/include/asm/atomic_lse.h
> index c6bd87d2915b..3ee600043042 100644
> --- a/arch/arm64/include/asm/atomic_lse.h
> +++ b/arch/arm64/include/asm/atomic_lse.h
> @@ -14,6 +14,7 @@
>  static inline void __lse_atomic_##op(int i, atomic_t *v)			\
>  {									\
>  	asm volatile(							\
> +	__LSE_PREAMBLE							\
>  "	" #asm_op "	%w[i], %[v]\n"					\
>  	: [i] "+r" (i), [v] "+Q" (v->counter)				\
>  	: "r" (v));							\
> @@ -30,6 +31,7 @@ ATOMIC_OP(add, stadd)
>  static inline int __lse_atomic_fetch_##op##name(int i, atomic_t *v)	\
>  {									\
>  	asm volatile(							\
> +	__LSE_PREAMBLE							\
>  "	" #asm_op #mb "	%w[i], %w[i], %[v]"				\
>  	: [i] "+r" (i), [v] "+Q" (v->counter)				\
>  	: "r" (v)							\
> @@ -58,6 +60,7 @@ static inline int __lse_atomic_add_return##name(int i, atomic_t *v)	\
>  	u32 tmp;							\
>  									\
>  	asm volatile(							\
> +	__LSE_PREAMBLE							\
>  	"	ldadd" #mb "	%w[i], %w[tmp], %[v]\n"			\
>  	"	add	%w[i], %w[i], %w[tmp]"				\
>  	: [i] "+r" (i), [v] "+Q" (v->counter), [tmp] "=&r" (tmp)	\
> @@ -77,6 +80,7 @@ ATOMIC_OP_ADD_RETURN(        , al, "memory")
>  static inline void __lse_atomic_and(int i, atomic_t *v)
>  {
>  	asm volatile(
> +	__LSE_PREAMBLE
>  	"	mvn	%w[i], %w[i]\n"
>  	"	stclr	%w[i], %[v]"
>  	: [i] "+&r" (i), [v] "+Q" (v->counter)
> @@ -87,6 +91,7 @@ static inline void __lse_atomic_and(int i, atomic_t *v)
>  static inline int __lse_atomic_fetch_and##name(int i, atomic_t *v)	\
>  {									\
>  	asm volatile(							\
> +	__LSE_PREAMBLE							\
>  	"	mvn	%w[i], %w[i]\n"					\
>  	"	ldclr" #mb "	%w[i], %w[i], %[v]"			\
>  	: [i] "+&r" (i), [v] "+Q" (v->counter)				\
> @@ -106,6 +111,7 @@ ATOMIC_FETCH_OP_AND(        , al, "memory")
>  static inline void __lse_atomic_sub(int i, atomic_t *v)
>  {
>  	asm volatile(
> +	__LSE_PREAMBLE
>  	"	neg	%w[i], %w[i]\n"
>  	"	stadd	%w[i], %[v]"
>  	: [i] "+&r" (i), [v] "+Q" (v->counter)
> @@ -118,6 +124,7 @@ static inline int __lse_atomic_sub_return##name(int i, atomic_t *v)	\
>  	u32 tmp;							\
>  									\
>  	asm volatile(							\
> +	__LSE_PREAMBLE							\
>  	"	neg	%w[i], %w[i]\n"					\
>  	"	ldadd" #mb "	%w[i], %w[tmp], %[v]\n"			\
>  	"	add	%w[i], %w[i], %w[tmp]"				\
> @@ -139,6 +146,7 @@ ATOMIC_OP_SUB_RETURN(        , al, "memory")
>  static inline int __lse_atomic_fetch_sub##name(int i, atomic_t *v)	\
>  {									\
>  	asm volatile(							\
> +	__LSE_PREAMBLE							\
>  	"	neg	%w[i], %w[i]\n"					\
>  	"	ldadd" #mb "	%w[i], %w[i], %[v]"			\
>  	: [i] "+&r" (i), [v] "+Q" (v->counter)				\
> @@ -159,6 +167,7 @@ ATOMIC_FETCH_OP_SUB(        , al, "memory")
>  static inline void __lse_atomic64_##op(s64 i, atomic64_t *v)		\
>  {									\
>  	asm volatile(							\
> +	__LSE_PREAMBLE							\
>  "	" #asm_op "	%[i], %[v]\n"					\
>  	: [i] "+r" (i), [v] "+Q" (v->counter)				\
>  	: "r" (v));							\
> @@ -175,6 +184,7 @@ ATOMIC64_OP(add, stadd)
>  static inline long __lse_atomic64_fetch_##op##name(s64 i, atomic64_t *v)\
>  {									\
>  	asm volatile(							\
> +	__LSE_PREAMBLE							\
>  "	" #asm_op #mb "	%[i], %[i], %[v]"				\
>  	: [i] "+r" (i), [v] "+Q" (v->counter)				\
>  	: "r" (v)							\
> @@ -203,6 +213,7 @@ static inline long __lse_atomic64_add_return##name(s64 i, atomic64_t *v)\
>  	unsigned long tmp;						\
>  									\
>  	asm volatile(							\
> +	__LSE_PREAMBLE							\
>  	"	ldadd" #mb "	%[i], %x[tmp], %[v]\n"			\
>  	"	add	%[i], %[i], %x[tmp]"				\
>  	: [i] "+r" (i), [v] "+Q" (v->counter), [tmp] "=&r" (tmp)	\
> @@ -222,6 +233,7 @@ ATOMIC64_OP_ADD_RETURN(        , al, "memory")
>  static inline void __lse_atomic64_and(s64 i, atomic64_t *v)
>  {
>  	asm volatile(
> +	__LSE_PREAMBLE
>  	"	mvn	%[i], %[i]\n"
>  	"	stclr	%[i], %[v]"
>  	: [i] "+&r" (i), [v] "+Q" (v->counter)
> @@ -232,6 +244,7 @@ static inline void __lse_atomic64_and(s64 i, atomic64_t *v)
>  static inline long __lse_atomic64_fetch_and##name(s64 i, atomic64_t *v)	\
>  {									\
>  	asm volatile(							\
> +	__LSE_PREAMBLE							\
>  	"	mvn	%[i], %[i]\n"					\
>  	"	ldclr" #mb "	%[i], %[i], %[v]"			\
>  	: [i] "+&r" (i), [v] "+Q" (v->counter)				\
> @@ -251,6 +264,7 @@ ATOMIC64_FETCH_OP_AND(        , al, "memory")
>  static inline void __lse_atomic64_sub(s64 i, atomic64_t *v)
>  {
>  	asm volatile(
> +	__LSE_PREAMBLE
>  	"	neg	%[i], %[i]\n"
>  	"	stadd	%[i], %[v]"
>  	: [i] "+&r" (i), [v] "+Q" (v->counter)
> @@ -263,6 +277,7 @@ static inline long __lse_atomic64_sub_return##name(s64 i, atomic64_t *v)	\
>  	unsigned long tmp;						\
>  									\
>  	asm volatile(							\
> +	__LSE_PREAMBLE							\
>  	"	neg	%[i], %[i]\n"					\
>  	"	ldadd" #mb "	%[i], %x[tmp], %[v]\n"			\
>  	"	add	%[i], %[i], %x[tmp]"				\
> @@ -284,6 +299,7 @@ ATOMIC64_OP_SUB_RETURN(        , al, "memory")
>  static inline long __lse_atomic64_fetch_sub##name(s64 i, atomic64_t *v)	\
>  {									\
>  	asm volatile(							\
> +	__LSE_PREAMBLE							\
>  	"	neg	%[i], %[i]\n"					\
>  	"	ldadd" #mb "	%[i], %[i], %[v]"			\
>  	: [i] "+&r" (i), [v] "+Q" (v->counter)				\
> @@ -305,6 +321,7 @@ static inline s64 __lse_atomic64_dec_if_positive(atomic64_t *v)
>  	unsigned long tmp;
>  
>  	asm volatile(
> +	__LSE_PREAMBLE
>  	"1:	ldr	%x[tmp], %[v]\n"
>  	"	subs	%[ret], %x[tmp], #1\n"
>  	"	b.lt	2f\n"
> @@ -331,6 +348,7 @@ static inline u##sz __lse__cmpxchg_case_##name##sz(volatile void *ptr,	\
>  	unsigned long tmp;						\
>  									\
>  	asm volatile(							\
> +	__LSE_PREAMBLE							\
>  	"	mov	%" #w "[tmp], %" #w "[old]\n"			\
>  	"	cas" #mb #sfx "\t%" #w "[tmp], %" #w "[new], %[v]\n"	\
>  	"	mov	%" #w "[ret], %" #w "[tmp]"			\
> @@ -377,6 +395,7 @@ static inline long __lse__cmpxchg_double##name(unsigned long old1,	\
>  	register unsigned long x4 asm ("x4") = (unsigned long)ptr;	\
>  									\
>  	asm volatile(							\
> +	__LSE_PREAMBLE							\
>  	"	casp" #mb "\t%[old1], %[old2], %[new1], %[new2], %[v]\n"\
>  	"	eor	%[old1], %[old1], %[oldval1]\n"			\
>  	"	eor	%[old2], %[old2], %[oldval2]\n"			\
> diff --git a/arch/arm64/include/asm/lse.h b/arch/arm64/include/asm/lse.h
> index 80b388278149..73834996c4b6 100644
> --- a/arch/arm64/include/asm/lse.h
> +++ b/arch/arm64/include/asm/lse.h
> @@ -6,6 +6,8 @@
>  
>  #if defined(CONFIG_AS_LSE) && defined(CONFIG_ARM64_LSE_ATOMICS)
>  
> +#define __LSE_PREAMBLE	".arch armv8-a+lse\n"
> +
>  #include <linux/compiler_types.h>
>  #include <linux/export.h>
>  #include <linux/jump_label.h>
> @@ -14,8 +16,6 @@
>  #include <asm/atomic_lse.h>
>  #include <asm/cpucaps.h>
>  
> -__asm__(".arch_extension	lse");
> -
>  extern struct static_key_false cpu_hwcap_keys[ARM64_NCAPS];
>  extern struct static_key_false arm64_const_caps_ready;
>  
> @@ -34,7 +34,7 @@ static inline bool system_uses_lse_atomics(void)
>  
>  /* In-line patching at runtime */
>  #define ARM64_LSE_ATOMIC_INSN(llsc, lse)				\
> -	ALTERNATIVE(llsc, lse, ARM64_HAS_LSE_ATOMICS)
> +	ALTERNATIVE(llsc, __LSE_PREAMBLE lse, ARM64_HAS_LSE_ATOMICS)
>  
>  #else	/* CONFIG_AS_LSE && CONFIG_ARM64_LSE_ATOMICS */
>  
> -- 
> 2.23.0.581.g78d2f28ef7-goog
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
