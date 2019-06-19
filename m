Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD3F4B691
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 12:57:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3p2OBWyuOCVYeKzsEKm2nFIoKFXFY/Gdlakarsr9I4E=; b=nw2RgtkRf3UGi9
	0k3jkjBpIgW1rxxe4ZjUyiVlHbSaS3GJgB549YLRR/UuBgdAvSo9gc1yRo4IZokBG1wSzKZH56yuV
	RPYvd2JOJ78N8V8HobCGxsy3G/8fx+DE3d+4+oTyIIDjq7yn6QupwyERiXSUEj02k5VnRR+2pWPWL
	miZIqmVvSFgJFZSwLBr6lns6kxG70+zrNkoEevpJ9c1lkCriMucNiqYE5Lw4eWOfmkmx91dOaGexB
	aXb6/+OP1HfjylqEQF1t/emnVZivGWgi79Xdj+UahWmQj9yT5GcIOjQvgao2aJRWYHbffAfd9VIlh
	+yzHIehl6VJZKk57NpxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdYH4-0003Hp-MG; Wed, 19 Jun 2019 10:57:06 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdYGs-0003HS-33
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 10:56:56 +0000
Received: by mail-io1-xd42.google.com with SMTP id j6so7466739ioa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 03:56:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=t+6bkxW+mH9gKU15bYPwRnFlqf0iQ4WMdD0yCmdLC8I=;
 b=gJEaZ5aqcKQnN6+2iD9w4pwOColbW5ndCp1s8zRi58ZpIYjyXxRHNSNb9wm9aeAi4i
 kkp34fa/O/B8MSrZwP8LvAj6ngThB3C519LQYDiZ/cEq8Psh4L1+seOsC79B8wtj1hvK
 Qax3T7J/ugBkdLz3vAdoQ1it3XX70sSwI3oSuL3cC2Xs5JLqgxDBWP8RGG7CU/pb/bZd
 gXC+C/Fk6a2i/ob6vxdmMl2Ab/24YP/KSdo7GjiDxl1XPDVw8WALdO+fYVMSs7rurs9n
 LxRyTkciE8nXRibnzQm2tPnqgYiQeMleDDgvR0nI+9rKgr/EeHTFAXwwlyLq3RqBfseX
 PwxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=t+6bkxW+mH9gKU15bYPwRnFlqf0iQ4WMdD0yCmdLC8I=;
 b=nLMSZIrWIteeIY15os3vD7hyWDpbJ0MATImI3LnV4dvelqD53vf6Og37Qfc80fX0v8
 nwnhuOa7syXj1VNTVgKl9jMWkW7j997hlFGA0sRz7Df/n1Y065TA6prOwUGo505yPpAB
 a3HQdAvqT8QNcWiosDGJt/viYsK64EHhy+Npm10v+yDA2SRRml34N3inQ/mCBEsrqJ3I
 y96eGQpa3wqCfkWVFYMJ/4EeHpWqk9tusHKpBT+vK2ztU/A7168qfcvHn/l2SrkwSmdR
 z/IVNwtHpDxxStaoHjf6v4lGP8IaVpZ7KCkgv6FZ+GlpFEppAzAY/hrajIBAIDnJQeNY
 7ozQ==
X-Gm-Message-State: APjAAAWJWRn2FCD2omxhpBweanIbxfP0AxrJ4ZTSloCF0Nrwl4DSxevl
 ih3vNJX8COEhkA/aGKOvZB0szrOzmIJClrRxfFLy26qk
X-Google-Smtp-Source: APXvYqx4lQ/ZJ/8890PfFFrx9kk++nOHkzUOLaJlnG0jf3gEj0eVxPJhf1QmQPIsc0YNPlhxre3Cpoqq+n8hB+qhHHM=
X-Received: by 2002:a5d:8794:: with SMTP id f20mr23197285ion.128.1560941812596; 
 Wed, 19 Jun 2019 03:56:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190619105431.2630-1-ard.biesheuvel@linaro.org>
In-Reply-To: <20190619105431.2630-1-ard.biesheuvel@linaro.org>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 19 Jun 2019 12:56:41 +0200
Message-ID: <CAKv+Gu-eWP7BNSgYzQgrKGdsEHj1pvv9wAhW9jrorj775DJ_-g@mail.gmail.com>
Subject: Re: [PATCH v5] arm64: kernel: implement fast refcount checking
To: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_035654_148210_FC2C133F 
X-CRM114-Status: GOOD (  29.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Catalin Marinas <catalin.marinas@arm.com>, Jan Glauber <jglauber@marvell.com>,
 Will Deacon <will.deacon@arm.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Hanjun Guo <guohanjun@huawei.com>, Andrew Murray <andrew.murray@arm.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

(add Andrew, who has been looking at the atomics code as well)

On Wed, 19 Jun 2019 at 12:54, Ard Biesheuvel <ard.biesheuvel@linaro.org> wrote:
>
> This adds support to arm64 for fast refcount checking, as contributed
> by Kees for x86 based on the implementation by grsecurity/PaX.
>
> The general approach is identical: the existing atomic_t helpers are
> cloned for refcount_t, with the arithmetic instruction modified to set
> the PSTATE flags, and one or two branch instructions added that jump to
> an out of line handler if overflow, decrement to zero or increment from
> zero are detected.
>
> One complication that we have to deal with on arm64 is the fact that
> it has two atomics implementations: the original LL/SC implementation
> using load/store exclusive loops, and the newer LSE one that does mostly
> the same in a single instruction. So we need to clone some parts of
> both for the refcount handlers, but we also need to deal with the way
> LSE builds fall back to LL/SC at runtime if the hardware does not
> support it.
>
> As is the case with the x86 version, the performance gain is substantial
> (ThunderX2 @ 2.2 GHz, using LSE), even though the arm64 implementation
> incorporates an add-from-zero check as well:
>
> perf stat -B -- echo ATOMIC_TIMING >/sys/kernel/debug/provoke-crash/DIRECT
>
>       116252672661      cycles                    #    2.207 GHz
>
>       52.689793525 seconds time elapsed
>
> perf stat -B -- echo REFCOUNT_TIMING >/sys/kernel/debug/provoke-crash/DIRECT
>
>       127060259162      cycles                    #    2.207 GHz
>
>       57.243690077 seconds time elapsed
>
> For comparison, the numbers below were captured using CONFIG_REFCOUNT_FULL,
> which uses the validation routines implemented in C using cmpxchg():
>
> perf stat -B -- echo REFCOUNT_TIMING >/sys/kernel/debug/provoke-crash/DIRECT
>
>  Performance counter stats for 'cat /dev/fd/63':
>
>       191057942484      cycles                    #    2.207 GHz
>
>       86.568269904 seconds time elapsed
>
> As a bonus, this code has been found to perform significantly better on
> systems with many CPUs, due to the fact that it no longer relies on the
> load/compare-and-swap combo performed in a tight loop, which is what we
> emit for cmpxchg() on arm64.
>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
> Cc: Kees Cook <keescook@chromium.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>,
> Cc: Jan Glauber <jglauber@marvell.com>,
> Cc: Linus Torvalds <torvalds@linux-foundation.org>,
> Cc: Hanjun Guo <guohanjun@huawei.com>
>
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> ---
> v5: - rebase onto mainline
>     - add ACQUIRE ordering semantics to [dec|sub]_and_test() on success
>       (as per 47b8f3ab9c49)
>     - introduce ARCH_HAS_REFCOUNT_FULL implying ARCH_HAS_REFCOUNT, but also
>       hiding the REFCOUNT_FULL option from Kconfig entirely
>     - update commit log with TX2 results
>
>  arch/Kconfig                          | 12 ++-
>  arch/arm64/Kconfig                    |  2 +-
>  arch/arm64/include/asm/atomic.h       | 24 ++++++
>  arch/arm64/include/asm/atomic_ll_sc.h | 50 ++++++++++++
>  arch/arm64/include/asm/atomic_lse.h   | 81 ++++++++++++++++++++
>  arch/arm64/include/asm/brk-imm.h      |  1 +
>  arch/arm64/include/asm/refcount.h     | 60 +++++++++++++++
>  arch/arm64/kernel/traps.c             | 37 +++++++++
>  arch/arm64/lib/atomic_ll_sc.c         | 12 +++
>  9 files changed, 277 insertions(+), 2 deletions(-)
>
> diff --git a/arch/Kconfig b/arch/Kconfig
> index c47b328eada0..a19abb00fc4b 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -876,6 +876,16 @@ config STRICT_MODULE_RWX
>  config ARCH_HAS_PHYS_TO_DMA
>         bool
>
> +config ARCH_HAS_REFCOUNT_FULL
> +       bool
> +       select ARCH_HAS_REFCOUNT
> +       help
> +         An architecture selects this when the optimized refcount_t
> +         implementation it provides covers all the cases that
> +         CONFIG_REFCOUNT_FULL covers as well, in which case it makes no
> +         sense to even offer CONFIG_REFCOUNT_FULL as a user selectable
> +         option.
> +
>  config ARCH_HAS_REFCOUNT
>         bool
>         help
> @@ -889,7 +899,7 @@ config ARCH_HAS_REFCOUNT
>           against bugs in reference counts.
>
>  config REFCOUNT_FULL
> -       bool "Perform full reference count validation at the expense of speed"
> +       bool "Perform full reference count validation at the expense of speed" if !ARCH_HAS_REFCOUNT_FULL
>         help
>           Enabling this switches the refcounting infrastructure from a fast
>           unchecked atomic_t implementation to a fully state checked
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 697ea0510729..fa0d02e111e2 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -26,6 +26,7 @@ config ARM64
>         select ARCH_HAS_MEMBARRIER_SYNC_CORE
>         select ARCH_HAS_PTE_SPECIAL
>         select ARCH_HAS_SETUP_DMA_OPS
> +       select ARCH_HAS_REFCOUNT_FULL
>         select ARCH_HAS_SET_MEMORY
>         select ARCH_HAS_STRICT_KERNEL_RWX
>         select ARCH_HAS_STRICT_MODULE_RWX
> @@ -173,7 +174,6 @@ config ARM64
>         select PCI_SYSCALL if PCI
>         select POWER_RESET
>         select POWER_SUPPLY
> -       select REFCOUNT_FULL
>         select SPARSE_IRQ
>         select SWIOTLB
>         select SYSCTL_EXCEPTION_TRACE
> diff --git a/arch/arm64/include/asm/atomic.h b/arch/arm64/include/asm/atomic.h
> index 1f4e9ee641c9..c2f7058395a2 100644
> --- a/arch/arm64/include/asm/atomic.h
> +++ b/arch/arm64/include/asm/atomic.h
> @@ -21,13 +21,37 @@
>  #define __ASM_ATOMIC_H
>
>  #include <linux/compiler.h>
> +#include <linux/stringify.h>
>  #include <linux/types.h>
>
>  #include <asm/barrier.h>
> +#include <asm/brk-imm.h>
>  #include <asm/lse.h>
>
>  #ifdef __KERNEL__
>
> +/*
> + * To avoid having to allocate registers that pass the counter address and
> + * address of the call site to the overflow handler, encode the register and
> + * call site offset in a dummy cbz instruction that we can decode later.
> + */
> +#define REFCOUNT_CHECK_TAIL                                            \
> +"      .subsection     1\n"                                            \
> +"33:   brk "           __stringify(REFCOUNT_BRK_IMM) "\n"              \
> +"      cbz             %[counter], 22b\n"      /* never reached */     \
> +"      .previous\n"
> +
> +#define REFCOUNT_POST_CHECK_NEG                                                \
> +"22:   b.mi            33f\n"                                          \
> +       REFCOUNT_CHECK_TAIL
> +
> +#define REFCOUNT_POST_CHECK_NEG_OR_ZERO                                        \
> +"      b.eq            33f\n"                                          \
> +       REFCOUNT_POST_CHECK_NEG
> +
> +#define REFCOUNT_PRE_CHECK_ZERO(reg)   "ccmp " #reg ", wzr, #8, pl\n"
> +#define REFCOUNT_PRE_CHECK_NONE(reg)
> +
>  #define __ARM64_IN_ATOMIC_IMPL
>
>  #if defined(CONFIG_ARM64_LSE_ATOMICS) && defined(CONFIG_AS_LSE)
> diff --git a/arch/arm64/include/asm/atomic_ll_sc.h b/arch/arm64/include/asm/atomic_ll_sc.h
> index e321293e0c89..4598575a73a2 100644
> --- a/arch/arm64/include/asm/atomic_ll_sc.h
> +++ b/arch/arm64/include/asm/atomic_ll_sc.h
> @@ -336,4 +336,54 @@ __CMPXCHG_DBL(_mb, dmb ish, l, "memory")
>
>  #undef __CMPXCHG_DBL
>
> +#define REFCOUNT_OP(op, asm_op, pre, post, l)                          \
> +__LL_SC_INLINE int                                                     \
> +__LL_SC_PREFIX(__refcount_##op(int i, atomic_t *r))                    \
> +{                                                                      \
> +       unsigned int tmp;                                               \
> +       int result;                                                     \
> +                                                                       \
> +       asm volatile("// refcount_" #op "\n"                            \
> +"      prfm            pstl1strm, %[cval]\n"                           \
> +"1:    ldxr            %w1, %[cval]\n"                                 \
> +"      " #asm_op "     %w[val], %w1, %w[i]\n"                          \
> +       REFCOUNT_PRE_CHECK_ ## pre (%w1)                                \
> +"      st" #l "xr      %w1, %w[val], %[cval]\n"                        \
> +"      cbnz            %w1, 1b\n"                                      \
> +       REFCOUNT_POST_CHECK_ ## post                                    \
> +       : [val] "=&r"(result), "=&r"(tmp), [cval] "+Q"(r->counter)      \
> +       : [counter] "r"(&r->counter), [i] "Ir" (i)                      \
> +       : "cc");                                                        \
> +                                                                       \
> +       return result;                                                  \
> +}                                                                      \
> +__LL_SC_EXPORT(__refcount_##op);
> +
> +REFCOUNT_OP(add_lt, adds, ZERO, NEG_OR_ZERO,  );
> +REFCOUNT_OP(sub_lt, subs, NONE, NEG,         l);
> +REFCOUNT_OP(sub_le, subs, NONE, NEG_OR_ZERO, l);
> +
> +__LL_SC_INLINE int
> +__LL_SC_PREFIX(__refcount_add_not_zero(int i, atomic_t *r))
> +{
> +       unsigned int tmp;
> +       int result;
> +
> +       asm volatile("// refcount_add_not_zero\n"
> +"      prfm    pstl1strm, %[cval]\n"
> +"1:    ldxr    %w[val], %[cval]\n"
> +"      cbz     %w[val], 2f\n"
> +"      adds    %w[val], %w[val], %w[i]\n"
> +"      stxr    %w1, %w[val], %[cval]\n"
> +"      cbnz    %w1, 1b\n"
> +       REFCOUNT_POST_CHECK_NEG
> +"2:"
> +       : [val] "=&r" (result), "=&r" (tmp), [cval] "+Q" (r->counter)
> +       : [counter] "r"(&r->counter), [i] "Ir" (i)
> +       : "cc");
> +
> +       return result;
> +}
> +__LL_SC_EXPORT(__refcount_add_not_zero);
> +
>  #endif /* __ASM_ATOMIC_LL_SC_H */
> diff --git a/arch/arm64/include/asm/atomic_lse.h b/arch/arm64/include/asm/atomic_lse.h
> index 9256a3921e4b..99637c0b0a92 100644
> --- a/arch/arm64/include/asm/atomic_lse.h
> +++ b/arch/arm64/include/asm/atomic_lse.h
> @@ -531,4 +531,85 @@ __CMPXCHG_DBL(_mb, al, "memory")
>  #undef __LL_SC_CMPXCHG_DBL
>  #undef __CMPXCHG_DBL
>
> +#define REFCOUNT_ADD_OP(op, pre, post)                                 \
> +static inline int __refcount_##op(int i, atomic_t *r)                  \
> +{                                                                      \
> +       register int w0 asm ("w0") = i;                                 \
> +       register atomic_t *x1 asm ("x1") = r;                           \
> +                                                                       \
> +       asm volatile(ARM64_LSE_ATOMIC_INSN(                             \
> +       /* LL/SC */                                                     \
> +       __LL_SC_CALL(__refcount_##op)                                   \
> +       "       cmp     %w0, wzr\n"                                     \
> +       __nops(1),                                                      \
> +       /* LSE atomics */                                               \
> +       "       ldadd           %w[i], w30, %[cval]\n"                  \
> +       "       adds            %w[i], %w[i], w30\n"                    \
> +       REFCOUNT_PRE_CHECK_ ## pre (w30))                               \
> +       REFCOUNT_POST_CHECK_ ## post                                    \
> +       : [i] "+r" (w0), [cval] "+Q" (r->counter)                       \
> +       : [counter] "r"(&r->counter), "r" (x1)                          \
> +       : __LL_SC_CLOBBERS, "cc");                                      \
> +                                                                       \
> +       return w0;                                                      \
> +}
> +
> +REFCOUNT_ADD_OP(add_lt, ZERO, NEG_OR_ZERO);
> +
> +#define REFCOUNT_SUB_OP(op, post)                                      \
> +static inline int __refcount_##op(int i, atomic_t *r)                  \
> +{                                                                      \
> +       register int w0 asm ("w0") = i;                                 \
> +       register atomic_t *x1 asm ("x1") = r;                           \
> +                                                                       \
> +       asm volatile(ARM64_LSE_ATOMIC_INSN(                             \
> +       /* LL/SC */                                                     \
> +       __LL_SC_CALL(__refcount_##op)                                   \
> +       "       cmp     %w0, wzr\n"                                     \
> +       __nops(1),                                                      \
> +       /* LSE atomics */                                               \
> +       "       neg     %w[i], %w[i]\n"                                 \
> +       "       ldaddl  %w[i], w30, %[cval]\n"                          \
> +       "       adds    %w[i], %w[i], w30")                             \
> +       REFCOUNT_POST_CHECK_ ## post                                    \
> +       : [i] "+r" (w0), [cval] "+Q" (r->counter)                       \
> +       : [counter] "r" (&r->counter), "r" (x1)                         \
> +       : __LL_SC_CLOBBERS, "cc");                                      \
> +                                                                       \
> +       return w0;                                                      \
> +}
> +
> +REFCOUNT_SUB_OP(sub_lt, NEG);
> +REFCOUNT_SUB_OP(sub_le, NEG_OR_ZERO);
> +
> +static inline int __refcount_add_not_zero(int i, atomic_t *r)
> +{
> +       register int result asm ("w0");
> +       register atomic_t *x1 asm ("x1") = r;
> +
> +       asm volatile(ARM64_LSE_ATOMIC_INSN(
> +       /* LL/SC */
> +       "       mov     %w0, %w[i]\n"
> +       __LL_SC_CALL(__refcount_add_not_zero)
> +       "       cmp     %w0, wzr\n"
> +       __nops(6),
> +       /* LSE atomics */
> +       "       ldr     %w0, %[cval]\n"
> +       "1:     cmp     %w0, wzr\n"
> +       "       b.eq    2f\n"
> +       "       add     w30, %w0, %w[i]\n"
> +       "       cas     %w0, w30, %[cval]\n"
> +       "       sub     w30, w30, %w[i]\n"
> +       "       cmp     %w0, w30\n"
> +       "       b.ne    1b\n"
> +       "       adds    %w0, w30, %w[i]\n"
> +       "2:\n")
> +       REFCOUNT_POST_CHECK_NEG
> +       : "=&r" (result), [cval] "+Q" (r->counter)
> +       : [counter] "r" (&r->counter), [i] "Ir" (i), "r" (x1)
> +       : __LL_SC_CLOBBERS, "cc");
> +
> +       return result;
> +}
> +
>  #endif /* __ASM_ATOMIC_LSE_H */
> diff --git a/arch/arm64/include/asm/brk-imm.h b/arch/arm64/include/asm/brk-imm.h
> index d84294064e6a..943f11ebe9af 100644
> --- a/arch/arm64/include/asm/brk-imm.h
> +++ b/arch/arm64/include/asm/brk-imm.h
> @@ -23,6 +23,7 @@
>  #define KPROBES_BRK_IMM                        0x004
>  #define UPROBES_BRK_IMM                        0x005
>  #define FAULT_BRK_IMM                  0x100
> +#define REFCOUNT_BRK_IMM               0x101
>  #define KGDB_DYN_DBG_BRK_IMM           0x400
>  #define KGDB_COMPILED_DBG_BRK_IMM      0x401
>  #define BUG_BRK_IMM                    0x800
> diff --git a/arch/arm64/include/asm/refcount.h b/arch/arm64/include/asm/refcount.h
> new file mode 100644
> index 000000000000..3c99b29f4549
> --- /dev/null
> +++ b/arch/arm64/include/asm/refcount.h
> @@ -0,0 +1,60 @@
> +/*
> + * arm64-specific implementation of refcount_t. Based on x86 version and
> + * PAX_REFCOUNT from PaX/grsecurity.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + */
> +
> +#ifndef __ASM_REFCOUNT_H
> +#define __ASM_REFCOUNT_H
> +
> +#include <linux/refcount.h>
> +
> +#include <asm/atomic.h>
> +
> +static __always_inline void refcount_add(int i, refcount_t *r)
> +{
> +       __refcount_add_lt(i, &r->refs);
> +}
> +
> +static __always_inline void refcount_inc(refcount_t *r)
> +{
> +       __refcount_add_lt(1, &r->refs);
> +}
> +
> +static __always_inline void refcount_dec(refcount_t *r)
> +{
> +       __refcount_sub_le(1, &r->refs);
> +}
> +
> +static __always_inline __must_check bool refcount_sub_and_test(unsigned int i,
> +                                                              refcount_t *r)
> +{
> +       bool ret = __refcount_sub_lt(i, &r->refs) == 0;
> +
> +       if (ret) {
> +               smp_acquire__after_ctrl_dep();
> +               return true;
> +       }
> +       return false;
> +}
> +
> +static __always_inline __must_check bool refcount_dec_and_test(refcount_t *r)
> +{
> +       return refcount_sub_and_test(1, r);
> +}
> +
> +static __always_inline __must_check bool refcount_add_not_zero(unsigned int i,
> +                                                              refcount_t *r)
> +{
> +       return __refcount_add_not_zero(i, &r->refs) != 0;
> +}
> +
> +static __always_inline __must_check bool refcount_inc_not_zero(refcount_t *r)
> +{
> +       return __refcount_add_not_zero(1, &r->refs) != 0;
> +}
> +
> +#endif
> diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
> index 177c0f6ebabf..5003cfb48d9b 100644
> --- a/arch/arm64/kernel/traps.c
> +++ b/arch/arm64/kernel/traps.c
> @@ -1037,6 +1037,42 @@ int __init early_brk64(unsigned long addr, unsigned int esr,
>         return bug_handler(regs, esr) != DBG_HOOK_HANDLED;
>  }
>
> +static int refcount_overflow_handler(struct pt_regs *regs, unsigned int esr)
> +{
> +       u32 dummy_cbz = le32_to_cpup((__le32 *)(regs->pc + 4));
> +       bool zero = regs->pstate & PSR_Z_BIT;
> +       u32 rt;
> +
> +       /*
> +        * Find the register that holds the counter address from the
> +        * dummy 'cbz' instruction that follows the 'brk' instruction
> +        * that sent us here.
> +        */
> +       rt = aarch64_insn_decode_register(AARCH64_INSN_REGTYPE_RT, dummy_cbz);
> +
> +       /* First unconditionally saturate the refcount. */
> +       *(int *)regs->regs[rt] = INT_MIN / 2;
> +
> +       /*
> +        * This function has been called because either a negative refcount
> +        * value was seen by any of the refcount functions, or a zero
> +        * refcount value was seen by refcount_{add,dec}().
> +        */
> +
> +       /* point pc to the branch instruction that detected the overflow */
> +       regs->pc += 4 + aarch64_get_branch_offset(dummy_cbz);
> +       refcount_error_report(regs, zero ? "hit zero" : "overflow");
> +
> +       /* advance pc and proceed */
> +       regs->pc += 4;
> +       return DBG_HOOK_HANDLED;
> +}
> +
> +static struct break_hook refcount_break_hook = {
> +       .fn     = refcount_overflow_handler,
> +       .imm    = REFCOUNT_BRK_IMM,
> +};
> +
>  /* This registration must happen early, before debug_traps_init(). */
>  void __init trap_init(void)
>  {
> @@ -1044,4 +1080,5 @@ void __init trap_init(void)
>  #ifdef CONFIG_KASAN_SW_TAGS
>         register_kernel_break_hook(&kasan_break_hook);
>  #endif
> +       register_kernel_break_hook(&refcount_break_hook);
>  }
> diff --git a/arch/arm64/lib/atomic_ll_sc.c b/arch/arm64/lib/atomic_ll_sc.c
> index b0c538b0da28..8a335cd9f0e2 100644
> --- a/arch/arm64/lib/atomic_ll_sc.c
> +++ b/arch/arm64/lib/atomic_ll_sc.c
> @@ -1,3 +1,15 @@
>  #include <asm/atomic.h>
>  #define __ARM64_IN_ATOMIC_IMPL
> +
> +/*
> + * Disarm the refcount checks in the out-of-line LL/SC routines. These are
> + * redundant, given that the LSE callers already perform the same checks.
> + * We do have to make sure that we exit with a zero value if the pre-check
> + * detected a zero value.
> + */
> +#undef REFCOUNT_POST_CHECK_NEG
> +#undef REFCOUNT_POST_CHECK_NEG_OR_ZERO
> +#define REFCOUNT_POST_CHECK_NEG
> +#define REFCOUNT_POST_CHECK_NEG_OR_ZERO   "csel %w[val], wzr, %w[val], eq\n"
> +
>  #include <asm/atomic_ll_sc.h>
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
