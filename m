Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C31FFEB86D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 21:35:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4numglsJu4BKvql+el5KjBIBUBx0uQdPiACztcd9zME=; b=ENJrBLiFcE7BLs
	csM6MhXgpZ1YAFiQjX39SvMa19uoZ/p8iQeZ2wdcOTtZ4uvxX6l/DA8s3Rfc5Q77+/GOVLBLEmimF
	BNnxGQWYJ3CMS90rFUxszGhHxlb8GK6F2zdRTsCCk7EK7UgZ/RFGkYajZsBdQ/ur8QfgGaEuVABpW
	5sZmJCraZrikXQOtfzqsIDtucgLlUDd9RXIVdMNIWxuh2VlGBX057HwfBiqJ9l+Oe7Dj5v4R9IY6X
	CCnhyVOTygWa1506A3Lp4uZxTFurE2406aGuxMTzhqbjCRduze/WxEU1gBbu/FYH/yH0/qQwPCnWq
	/ZPTrfDm6ckd4hpEDvUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQH9m-00074p-Bd; Thu, 31 Oct 2019 20:34:58 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQH9c-00074S-8X
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 20:34:50 +0000
Received: by mail-pl1-x641.google.com with SMTP id y8so3245044plk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 13:34:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9l1iF8Yd4cbsJGLUM/SW26KknarkUcShmOF9BoqHMJM=;
 b=S73tGnS/ZJF+fbC8RaG3esksSLQBz+nONIb30B9/d/c+3qgRZlPslhdi+Dd2ioA26M
 PJHW6SksmlJG77+8/8DZ0wpWUccicLrqaqJ4uf7iC0f8qoW91fkgKMdBv2HzhdM5ZhRY
 JtBK0SuAzoRRSSimV8NxKRmJ2vC9x7dCXosKDgTYrSUDvoCUsOst+zVzu+dX+80qrG4P
 HcgKQgui+YTZJ2owEaUwOYTJRSRshPqlnN41gQOoONKs+gr/+bWC/l8D/yhgG7w4Aibi
 GtBrdgenJ+HX8dk6AAqHs90uD8DqVBv67u1oym9EUwHuH3cc8BRCW2MYetnnV015VO5v
 HaKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9l1iF8Yd4cbsJGLUM/SW26KknarkUcShmOF9BoqHMJM=;
 b=ETx4BooFplrHcXnH5CB7PG0pDULTHDjeH6rYdQ1PXXyDfJcZ3QvvExtY3FLMfy+nMs
 yDH4bvsPxzDeQQsiZPx0eUkfzH0swfeOzCsO6OYWbyvBUNhZ4J1EI6bn3UL9oYIuk0MA
 W+Bx1ggrNRjVL3ciFn2A6XX6aJ/TAKOoIZN9Y8+G4jgMa+IACWGzjEHxzrNa3MtMtm+d
 Pq053NNPTQ2LinfV7OcLI7ZGwE5+KlSXYlp8PWKL3xlBbipG9JeUW4qmLUzoTh414zI+
 Lhw7DuZ/tx0EffyS3aoAFYXVpPbSV6MgyI+KRW5poqNptoOqMrqcjNv8JInUlDPMqYMt
 gYgw==
X-Gm-Message-State: APjAAAVe7kgId2jppXIeX7spz7BuMXxZPTO2L8fcj6XMpENxAw0edYcP
 KHrroNWR6JIbpKv5KZg7Y2NHKuu9IcJMoA43dXMQmw==
X-Google-Smtp-Source: APXvYqzcD14QDUDnhl1h/xb9pVpb0meKYJHEz18BKXPjesZw3450QpjcDJjWrObThnSCdYXF/xHv/UlLi4VWbhNZWi8=
X-Received: by 2002:a17:902:9b83:: with SMTP id
 y3mr8343680plp.179.1572554086594; 
 Thu, 31 Oct 2019 13:34:46 -0700 (PDT)
MIME-Version: 1.0
References: <20191031195705.36916-1-samitolvanen@google.com>
In-Reply-To: <20191031195705.36916-1-samitolvanen@google.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 31 Oct 2019 13:34:35 -0700
Message-ID: <CAKwvOdnnGFQSbchQrCKhzx5KxsD0MQAB9_0LO4d67AV8_u_tug@mail.gmail.com>
Subject: Re: [RESEND PATCH v2] arm64: lse: fix LSE atomics with LLVM's
 integrated assembler
To: Sami Tolvanen <samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_133448_331014_EB0F31CC 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 Catalin Marinas <catalin.marinas@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Andrew Murray <andrew.murray@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 12:57 PM Sami Tolvanen <samitolvanen@google.com> wrote:
>
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
> Tested-by: Andrew Murray <andrew.murray@arm.com>
> Tested-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Andrew Murray <andrew.murray@arm.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

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
> index 574808b9df4c..da3280f639cd 100644
> --- a/arch/arm64/include/asm/atomic_lse.h
> +++ b/arch/arm64/include/asm/atomic_lse.h
> @@ -14,6 +14,7 @@
>  static inline void __lse_atomic_##op(int i, atomic_t *v)                       \
>  {                                                                      \
>         asm volatile(                                                   \
> +       __LSE_PREAMBLE                                                  \
>  "      " #asm_op "     %w[i], %[v]\n"                                  \
>         : [i] "+r" (i), [v] "+Q" (v->counter)                           \
>         : "r" (v));                                                     \
> @@ -30,6 +31,7 @@ ATOMIC_OP(add, stadd)
>  static inline int __lse_atomic_fetch_##op##name(int i, atomic_t *v)    \
>  {                                                                      \
>         asm volatile(                                                   \
> +       __LSE_PREAMBLE                                                  \
>  "      " #asm_op #mb " %w[i], %w[i], %[v]"                             \
>         : [i] "+r" (i), [v] "+Q" (v->counter)                           \
>         : "r" (v)                                                       \
> @@ -58,6 +60,7 @@ static inline int __lse_atomic_add_return##name(int i, atomic_t *v)   \
>         u32 tmp;                                                        \
>                                                                         \
>         asm volatile(                                                   \
> +       __LSE_PREAMBLE                                                  \
>         "       ldadd" #mb "    %w[i], %w[tmp], %[v]\n"                 \
>         "       add     %w[i], %w[i], %w[tmp]"                          \
>         : [i] "+r" (i), [v] "+Q" (v->counter), [tmp] "=&r" (tmp)        \
> @@ -77,6 +80,7 @@ ATOMIC_OP_ADD_RETURN(        , al, "memory")
>  static inline void __lse_atomic_and(int i, atomic_t *v)
>  {
>         asm volatile(
> +       __LSE_PREAMBLE
>         "       mvn     %w[i], %w[i]\n"
>         "       stclr   %w[i], %[v]"
>         : [i] "+&r" (i), [v] "+Q" (v->counter)
> @@ -87,6 +91,7 @@ static inline void __lse_atomic_and(int i, atomic_t *v)
>  static inline int __lse_atomic_fetch_and##name(int i, atomic_t *v)     \
>  {                                                                      \
>         asm volatile(                                                   \
> +       __LSE_PREAMBLE                                                  \
>         "       mvn     %w[i], %w[i]\n"                                 \
>         "       ldclr" #mb "    %w[i], %w[i], %[v]"                     \
>         : [i] "+&r" (i), [v] "+Q" (v->counter)                          \
> @@ -106,6 +111,7 @@ ATOMIC_FETCH_OP_AND(        , al, "memory")
>  static inline void __lse_atomic_sub(int i, atomic_t *v)
>  {
>         asm volatile(
> +       __LSE_PREAMBLE
>         "       neg     %w[i], %w[i]\n"
>         "       stadd   %w[i], %[v]"
>         : [i] "+&r" (i), [v] "+Q" (v->counter)
> @@ -118,6 +124,7 @@ static inline int __lse_atomic_sub_return##name(int i, atomic_t *v) \
>         u32 tmp;                                                        \
>                                                                         \
>         asm volatile(                                                   \
> +       __LSE_PREAMBLE                                                  \
>         "       neg     %w[i], %w[i]\n"                                 \
>         "       ldadd" #mb "    %w[i], %w[tmp], %[v]\n"                 \
>         "       add     %w[i], %w[i], %w[tmp]"                          \
> @@ -139,6 +146,7 @@ ATOMIC_OP_SUB_RETURN(        , al, "memory")
>  static inline int __lse_atomic_fetch_sub##name(int i, atomic_t *v)     \
>  {                                                                      \
>         asm volatile(                                                   \
> +       __LSE_PREAMBLE                                                  \
>         "       neg     %w[i], %w[i]\n"                                 \
>         "       ldadd" #mb "    %w[i], %w[i], %[v]"                     \
>         : [i] "+&r" (i), [v] "+Q" (v->counter)                          \
> @@ -159,6 +167,7 @@ ATOMIC_FETCH_OP_SUB(        , al, "memory")
>  static inline void __lse_atomic64_##op(s64 i, atomic64_t *v)           \
>  {                                                                      \
>         asm volatile(                                                   \
> +       __LSE_PREAMBLE                                                  \
>  "      " #asm_op "     %[i], %[v]\n"                                   \
>         : [i] "+r" (i), [v] "+Q" (v->counter)                           \
>         : "r" (v));                                                     \
> @@ -175,6 +184,7 @@ ATOMIC64_OP(add, stadd)
>  static inline long __lse_atomic64_fetch_##op##name(s64 i, atomic64_t *v)\
>  {                                                                      \
>         asm volatile(                                                   \
> +       __LSE_PREAMBLE                                                  \
>  "      " #asm_op #mb " %[i], %[i], %[v]"                               \
>         : [i] "+r" (i), [v] "+Q" (v->counter)                           \
>         : "r" (v)                                                       \
> @@ -203,6 +213,7 @@ static inline long __lse_atomic64_add_return##name(s64 i, atomic64_t *v)\
>         unsigned long tmp;                                              \
>                                                                         \
>         asm volatile(                                                   \
> +       __LSE_PREAMBLE                                                  \
>         "       ldadd" #mb "    %[i], %x[tmp], %[v]\n"                  \
>         "       add     %[i], %[i], %x[tmp]"                            \
>         : [i] "+r" (i), [v] "+Q" (v->counter), [tmp] "=&r" (tmp)        \
> @@ -222,6 +233,7 @@ ATOMIC64_OP_ADD_RETURN(        , al, "memory")
>  static inline void __lse_atomic64_and(s64 i, atomic64_t *v)
>  {
>         asm volatile(
> +       __LSE_PREAMBLE
>         "       mvn     %[i], %[i]\n"
>         "       stclr   %[i], %[v]"
>         : [i] "+&r" (i), [v] "+Q" (v->counter)
> @@ -232,6 +244,7 @@ static inline void __lse_atomic64_and(s64 i, atomic64_t *v)
>  static inline long __lse_atomic64_fetch_and##name(s64 i, atomic64_t *v)        \
>  {                                                                      \
>         asm volatile(                                                   \
> +       __LSE_PREAMBLE                                                  \
>         "       mvn     %[i], %[i]\n"                                   \
>         "       ldclr" #mb "    %[i], %[i], %[v]"                       \
>         : [i] "+&r" (i), [v] "+Q" (v->counter)                          \
> @@ -251,6 +264,7 @@ ATOMIC64_FETCH_OP_AND(        , al, "memory")
>  static inline void __lse_atomic64_sub(s64 i, atomic64_t *v)
>  {
>         asm volatile(
> +       __LSE_PREAMBLE
>         "       neg     %[i], %[i]\n"
>         "       stadd   %[i], %[v]"
>         : [i] "+&r" (i), [v] "+Q" (v->counter)
> @@ -263,6 +277,7 @@ static inline long __lse_atomic64_sub_return##name(s64 i, atomic64_t *v)    \
>         unsigned long tmp;                                              \
>                                                                         \
>         asm volatile(                                                   \
> +       __LSE_PREAMBLE                                                  \
>         "       neg     %[i], %[i]\n"                                   \
>         "       ldadd" #mb "    %[i], %x[tmp], %[v]\n"                  \
>         "       add     %[i], %[i], %x[tmp]"                            \
> @@ -284,6 +299,7 @@ ATOMIC64_OP_SUB_RETURN(        , al, "memory")
>  static inline long __lse_atomic64_fetch_sub##name(s64 i, atomic64_t *v)        \
>  {                                                                      \
>         asm volatile(                                                   \
> +       __LSE_PREAMBLE                                                  \
>         "       neg     %[i], %[i]\n"                                   \
>         "       ldadd" #mb "    %[i], %[i], %[v]"                       \
>         : [i] "+&r" (i), [v] "+Q" (v->counter)                          \
> @@ -305,6 +321,7 @@ static inline s64 __lse_atomic64_dec_if_positive(atomic64_t *v)
>         unsigned long tmp;
>
>         asm volatile(
> +       __LSE_PREAMBLE
>         "1:     ldr     %x[tmp], %[v]\n"
>         "       subs    %[ret], %x[tmp], #1\n"
>         "       b.lt    2f\n"
> @@ -332,6 +349,7 @@ __lse__cmpxchg_case_##name##sz(volatile void *ptr,                  \
>         unsigned long tmp;                                              \
>                                                                         \
>         asm volatile(                                                   \
> +       __LSE_PREAMBLE                                                  \
>         "       mov     %" #w "[tmp], %" #w "[old]\n"                   \
>         "       cas" #mb #sfx "\t%" #w "[tmp], %" #w "[new], %[v]\n"    \
>         "       mov     %" #w "[ret], %" #w "[tmp]"                     \
> @@ -379,6 +397,7 @@ __lse__cmpxchg_double##name(unsigned long old1,                             \
>         register unsigned long x4 asm ("x4") = (unsigned long)ptr;      \
>                                                                         \
>         asm volatile(                                                   \
> +       __LSE_PREAMBLE                                                  \
>         "       casp" #mb "\t%[old1], %[old2], %[new1], %[new2], %[v]\n"\
>         "       eor     %[old1], %[old1], %[oldval1]\n"                 \
>         "       eor     %[old2], %[old2], %[oldval2]\n"                 \
> diff --git a/arch/arm64/include/asm/lse.h b/arch/arm64/include/asm/lse.h
> index 80b388278149..73834996c4b6 100644
> --- a/arch/arm64/include/asm/lse.h
> +++ b/arch/arm64/include/asm/lse.h
> @@ -6,6 +6,8 @@
>
>  #if defined(CONFIG_AS_LSE) && defined(CONFIG_ARM64_LSE_ATOMICS)
>
> +#define __LSE_PREAMBLE ".arch armv8-a+lse\n"
> +
>  #include <linux/compiler_types.h>
>  #include <linux/export.h>
>  #include <linux/jump_label.h>
> @@ -14,8 +16,6 @@
>  #include <asm/atomic_lse.h>
>  #include <asm/cpucaps.h>
>
> -__asm__(".arch_extension       lse");
> -
>  extern struct static_key_false cpu_hwcap_keys[ARM64_NCAPS];
>  extern struct static_key_false arm64_const_caps_ready;
>
> @@ -34,7 +34,7 @@ static inline bool system_uses_lse_atomics(void)
>
>  /* In-line patching at runtime */
>  #define ARM64_LSE_ATOMIC_INSN(llsc, lse)                               \
> -       ALTERNATIVE(llsc, lse, ARM64_HAS_LSE_ATOMICS)
> +       ALTERNATIVE(llsc, __LSE_PREAMBLE lse, ARM64_HAS_LSE_ATOMICS)
>
>  #else  /* CONFIG_AS_LSE && CONFIG_ARM64_LSE_ATOMICS */
>
> --
> 2.24.0.rc0.303.g954a862665-goog
>


-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
