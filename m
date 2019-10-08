Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04DA4D0347
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 00:16:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2RL76JZZ4wP73HphPH+xnVxqVAve9xQThGSG6Zl8KS4=; b=tBqbaHQwFQ479/
	Fo4xloQQLNrLB1RW2z6f4JTqnQfE3fYK7G+pykJr3gvZAjKJcgLFnGhrIkO2y4+5hAg1NgD6jyDpI
	HlLZTwvSQHG8eFCi0oZLIMh0TyLtPQ6LyaK5j5I0o9SVeWZzYYZ64opZMv8y3GWBtjevVQVcGvIxk
	WSMDVSzoAB2kAQ5ocWrnzHxhHQQWVjeQWcGLonGFEP5qcZcmXZsPsxEK28BGeQaXio0O9UhgnScEc
	6GoFnw/yeK4A0nv9ChAYsbjbtgmTli2u/n241qRGafAP25sj/qfuUqEhrB4BSlXx5GqIlkP9XNg+Z
	4SLRl2I0lYZRtoTM9KqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHxmC-0003jk-4L; Tue, 08 Oct 2019 22:16:16 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHxm3-0003OT-LK
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 22:16:09 +0000
Received: by mail-pl1-x642.google.com with SMTP id j11so34090plk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 15:16:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NiqFnu89plxZSLedgLcdRBN9DKh7erYv6ytT6fDXTcU=;
 b=RqkR8rc+HYwlFbxqDyeNhe4H9RNIYyu5bNdc5Ia9pOuDgR3X8eQSSrw4D9maee7qyv
 bZJfKUzj5R91DuV/78SkulhLfb2RHBy7pJd7Kz63C5rTPX5GTk0S1NMTLjo107LVzwJv
 OH/jbK72MrLeySR5fMec6E8HardxjZ8MzKuh3vJvAvD6ilm3P2Y2oG04m9QE/GawzASr
 f4IlC2C+BnaXQuC5o8BkEa5EhEw/YP1EnDAx7SaLDU4bC0bzWKtALlkT/eVtMh2MrIKa
 ztcNJqC3AlfYRR3wQ50jfU+ZzRtC8eGnuQq024jE1fOP+Y3YRsnahw0f5hKW5I2ftn+c
 FhGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NiqFnu89plxZSLedgLcdRBN9DKh7erYv6ytT6fDXTcU=;
 b=EeSQO7ET7DnG/Hb9wzLN+3TCIDvnIW5j16C3b/jWbXerKF02J+q+PGcn6iQd9h20z/
 Y5uQK1wqbmHJm9W/biZwTiAjbyHCV3DwBsyFEkwLbi2XpSMqB5jcELNyocrEISO+Mvnw
 gZ9c82ukvpLmsLPXOm8W+10Pm0K/5UJbvw6yx5x87AhVcdItqUMX3ClK5asj9Y3QkFZN
 7dz9i5lF3mrc9MpQOAMVdTNYnFPXRg8ASqS+JBO4OZFv2d32za4FpaOFpfB7jA5pMLO9
 ca9yZSI0JsWycENmA2dFnFkDEoW8FpUiMFnVfg6bWETAbtnHHWW+NmzxPZcv4rUYSxFM
 05tA==
X-Gm-Message-State: APjAAAV+n30AUY7HdOxbnalJTL5rbHAceI/ZhbMg0LS29iLGLKJx2sc1
 cGMGKzvxMKyJ4xha3ADN5YsyaxNTeBuLHT5jGUEnbQ==
X-Google-Smtp-Source: APXvYqy1ETIas/wOJ+uCHs3/XIi5AxYgszeqVZ4Cu5XUmvmIOYIYVGlJMRoEChZ5mREGh0jCfBXazg040OGT3cNArhQ=
X-Received: by 2002:a17:902:7c08:: with SMTP id
 x8mr35766287pll.119.1570572961517; 
 Tue, 08 Oct 2019 15:16:01 -0700 (PDT)
MIME-Version: 1.0
References: <20191007201452.208067-1-samitolvanen@google.com>
 <20191008212730.185532-1-samitolvanen@google.com>
In-Reply-To: <20191008212730.185532-1-samitolvanen@google.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 8 Oct 2019 15:15:49 -0700
Message-ID: <CAKwvOdkG9PjEkNNsi7P4bD2gtVvgPLPpmyAqzOFv4v9PL3uoeg@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: lse: fix LSE atomics with LLVM's integrated
 assembler
To: Sami Tolvanen <samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_151607_728628_758EB67F 
X-CRM114-Status: GOOD (  17.09  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Tue, Oct 8, 2019 at 2:27 PM 'Sami Tolvanen' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
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


Thanks, I think this will better limit the assembler to use of these
instructions, while preventing the C compiler from emitting them.
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang AS=clang -j71 clean
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang AS=clang
-j71 defconfig
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang AS=clang
-j71 fs/ext4/balloc.o
<error explosion>
$ git am <patch.eml>
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang AS=clang
-j71 fs/ext4/balloc.o
...
$ echo $?
0
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang AS=clang -j71 clean
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang -j71 defconfig
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang -j71
<builds successfully>
$ qemu-system-aarch64 -kernel arch/arm64/boot/Image.gz -machine virt
-cpu cortex-a72 -nographic --append "console=ttyAMA0" -m 2048 -initrd
/android1/buildroot/output/images/rootfs.cpio
<boots successfully; doesn't appear to regress the case of GAS, though
I doubt such a compiler directive would>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

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
> @@ -331,6 +348,7 @@ static inline u##sz __lse__cmpxchg_case_##name##sz(volatile void *ptr,      \
>         unsigned long tmp;                                              \
>                                                                         \
>         asm volatile(                                                   \
> +       __LSE_PREAMBLE                                                  \
>         "       mov     %" #w "[tmp], %" #w "[old]\n"                   \
>         "       cas" #mb #sfx "\t%" #w "[tmp], %" #w "[new], %[v]\n"    \
>         "       mov     %" #w "[ret], %" #w "[tmp]"                     \
> @@ -377,6 +395,7 @@ static inline long __lse__cmpxchg_double##name(unsigned long old1,  \
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
> 2.23.0.581.g78d2f28ef7-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191008212730.185532-1-samitolvanen%40google.com.



-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
