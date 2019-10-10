Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C09E1D3304
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 22:59:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ztK1Gb0OCtvDXdB0UofniPzl8JBJHLR1np8MMsNdZ+c=; b=D5n65xcZPVBtPu
	tPL/2OukPgKuCiFM2xZc5qq2nfOjzGBL4rH4Dn/4kzZ7094pGiC6f7+nwrQut+xgzfu93rgnRk93d
	7Bbm4YAB+eLG13nLnzjtF8nSBHwZ3UObexNKwgtoRlhkqqVLgwUdhfDx6QPc18riRAETrgmr5G9Sh
	YwZB4qmp5RkD1L77M396CeI4bwGNj/YEUM6+aaktxJcNDYBhYpdeZh+zcTIQQ0mP1GDKrVYU1hNmQ
	pp3tfOK2ltcG6RxIyd3pUc/Rryoew5Q/hBOv+ZVTghwm3H84/u9DbuOzFMn+H9YplXt0znL7+pUnl
	AklJGDhk/zx8YcsL/C5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIfXG-0003Zm-CE; Thu, 10 Oct 2019 20:59:46 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIfX6-0003ZQ-I2
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 20:59:38 +0000
Received: by mail-pg1-x543.google.com with SMTP id x10so4428475pgi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 13:59:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=1k9sybljldf+1YSx8TQi5Eii2zqWsdz104QWmAyi4uE=;
 b=DBXLdLLdAtUTtKW/EcAqw994k0Ct8lzCc79qjrK2bhdv4BqNIe7KK41duQBs60Iyva
 6OcJu8Rkb8vl1/Y461ss7D3O+XKubwqK85wr2dgurxFFaMVKGu5SHJg61aNXnMrRGXo3
 X3IcAJT6PK9VOFMOwlNGFKfV85WMLJHLG+C+8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=1k9sybljldf+1YSx8TQi5Eii2zqWsdz104QWmAyi4uE=;
 b=pDoLRQLIAdVgR7CljYPd2UbFLTsekQrBTHxlcZmfOVJdXczWp5ZUHokS/P49CE+IET
 /chcL33WbpD7OA6BXjR6RqgeMwCkpiFrFhFB2cgg6ccFej3ANlsODgnKSfpp4MyF7R8p
 ebtS9//4Yvx7U0UwgEDtS8x/nQm2zXz8ONfMJi2J4ihllEPgyPJ3Ca2g6W1BDRnVFSJq
 dDHfb5WFBJCxZxg4jNVa5hC4JL/pLVNR0KmWlZJGmY0m7REOxzq5iwJwz7cPefRzIEDv
 17PXuAW2DQDnhf1SiESGVYa+RIY1OMWbabH2O4RjF1wPtwWrcCGuyPEKteV7xcpQ3Fkl
 e73A==
X-Gm-Message-State: APjAAAWPGReiej7g3oh/STJIPoomVEsqtTYKdOZmOwbh8sHsyzbUDfQ0
 S1HfJE9DiWxupWhT+jOLZFVuNQ==
X-Google-Smtp-Source: APXvYqz6NbvEpZ7Ik3oIhwdyqvxRyjW6rOFv7muACZXODLHhr7XVoM3R5BIR8pI8ZP7KatwuYrQD7w==
X-Received: by 2002:aa7:8e16:: with SMTP id c22mr12577390pfr.116.1570741175468; 
 Thu, 10 Oct 2019 13:59:35 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id w134sm6441178pfd.4.2019.10.10.13.59.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 13:59:34 -0700 (PDT)
Date: Thu, 10 Oct 2019 13:59:33 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v2] arm64: lse: fix LSE atomics with LLVM's integrated
 assembler
Message-ID: <201910101358.2F9CF63529@keescook>
References: <20191007201452.208067-1-samitolvanen@google.com>
 <20191008212730.185532-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191008212730.185532-1-samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_135936_622637_E0AC5D5D 
X-CRM114-Status: GOOD (  17.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Andrew Murray <andrew.murray@arm.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
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

FWIW, my arm64 builds remain happy with this too.

Tested-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

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

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
