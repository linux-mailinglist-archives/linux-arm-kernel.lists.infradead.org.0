Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E90BDF20D8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 22:31:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BfTv1B+ZSFGtco8A/aUibGYS/rJ9btu815RP+USR6u8=; b=ujPdz8KOy3Fg0+
	pcBiM6YYRwSXGteFiSVGi0YA4bU9fhyhUujW54j/5zlkjZSfdqww/wP99IgbKyBsuZK/wf77JTqbx
	YkZsVqWB21zqRyh8BUYu4F5aSVbSMW0ox2MkwDmcgFzwCqhq7CsKk2N9e74XmB+Lnwm4jUuZhB6WF
	9m46qdK51FfP+9s5If8JNA8tgfDgskyQfwEC4CRQon4RK8bEaYXZ65VYICGLANsR/jN+Cmxp2Uqyk
	t1L+N9EyrhwQQ26ft2MQG+QNdHUwja2SWUwfUqBdH6xPSQUWXqgJQl3mAaemFUDVEw5QAZnzLzaKF
	iAg98v554QIf4QM/C5Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSStN-0007n4-7t; Wed, 06 Nov 2019 21:31:05 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSStE-0007lu-HF
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 21:30:58 +0000
Received: by mail-wm1-x341.google.com with SMTP id z26so5705592wmi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 13:30:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MDBZcXZuvlzCcxAcWPoIlsxHdAQXWoVKuQlc0wwPPI8=;
 b=QxDTzIQszo1Nx3bstlbRS9hdM62MG+LTNL7d0ZHv3xCiyU+be9fpCSDIT4YEOPByfE
 s+DkJkLSj+j8et1T0arUVeRPqch11/e+V5HCt+2jaR6qh15MZY0JRkqwDExqNMtR3Sp0
 DyeJQyL72+zHZfb8Z/693fryrLqzL+q3n64T403StMD9bcsnnBk3JqG0gNit9lI2ItKY
 kN6V61/GqQIjgcotqq61266QkgZEGvisShcO8tAcroyANgtoUpGZWHmovApFo4x4jot6
 a2WRsOTJFW5j2Tfs04vdBmsaR/4w7TnzIM8yWfFZQwCJW4XYT46MX9G4eMLfa8g5gpZ8
 m5Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MDBZcXZuvlzCcxAcWPoIlsxHdAQXWoVKuQlc0wwPPI8=;
 b=GfDIgzqgWIuyiAiIE5ic65D3E4J2Jnzzrtq11N85LierkAMa9RvrV3N6y+1B2ajZMp
 pxBEd2WSlFzeGGiQA+Z9n1+XE0FDv7moLqxLswrhaeTDu1rTb6Dr6bVdvK9aG/p8dKw4
 gI3I7OBL66ITiy1Kua928l9sPb2s+rRDW0iRuNP28uFMImzLdi/gj7s++sjIx1WEwJ/k
 cf7CwOCI4A4kQIEFi0S5SylWnWDm40byJ5WTu0Ush3Cv4SAr6jQK+5mA4LO968iqV0+L
 fhUlONt60p6IasI6y8kAM6/Hxu0BIddknjTcIqrTeGqVefKBCP4akHUq6eYXGAUJPtON
 MJFQ==
X-Gm-Message-State: APjAAAVxbS7yIlv1rs/6sJ/h4w0B9BpbPZDA+X3VxRnDeKrInV7qpQnV
 a+DlWq3+KJ3DOUiND+Yqr76V1xsXtN8TOodJ4KBN1rND
X-Google-Smtp-Source: APXvYqywg7rEiAwTN9VllJ/ecYLzJNNjAq5be13P68bZ4gSPmhuaBElXl7hCkFYw1vh9GEIWWOhqlSszeDCzY1wJ9Bg=
X-Received: by 2002:a1c:64d6:: with SMTP id y205mr4129671wmb.136.1573075853166; 
 Wed, 06 Nov 2019 13:30:53 -0800 (PST)
MIME-Version: 1.0
References: <20191106141954.30657-1-rth@twiddle.net>
 <20191106141954.30657-2-rth@twiddle.net>
In-Reply-To: <20191106141954.30657-2-rth@twiddle.net>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 6 Nov 2019 22:30:42 +0100
Message-ID: <CAKv+Gu8pb5pBFBg0wGoORmaS6yzmoX7L45LLnhuZhqw4JX7d+w@mail.gmail.com>
Subject: Re: [PATCH v4 1/1] arm64: Implement archrandom.h for ARMv8.5-RNG
To: Richard Henderson <richard.henderson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_133056_584367_983FA77C 
X-CRM114-Status: GOOD (  28.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 6 Nov 2019 at 15:20, Richard Henderson
<richard.henderson@linaro.org> wrote:
>
> From: Richard Henderson <richard.henderson@linaro.org>
>
> Expose the ID_AA64ISAR0.RNDR field to userspace, as the
> RNG system registers are always available at EL0.
>
> Signed-off-by: Richard Henderson <richard.henderson@linaro.org>
> ---
> v2: Use __mrs_s and fix missing cc clobber (Mark),
>     Log rng failures with pr_warn (Mark),
>     Use __must_check; put RNDR in arch_get_random_long and RNDRRS
>     in arch_get_random_seed_long (Ard),
>     Use ARM64_CPUCAP_WEAK_LOCAL_CPU_FEATURE, and check this_cpu_has_cap
>     when reading random data.  Move everything out of line, now that
>     there are 5 other function calls involved, and to unify the rate
>     limiting on the pr_warn.
> v3: Keep arch_get_random{,_seed}_long in sync.
> v4: Use __cpus_have_const_cap before falling back to this_cpu_has_cap.
> ---
>  Documentation/arm64/cpu-feature-registers.rst |  2 +
>  arch/arm64/include/asm/archrandom.h           | 35 ++++++++
>  arch/arm64/include/asm/cpucaps.h              |  3 +-
>  arch/arm64/include/asm/sysreg.h               |  4 +
>  arch/arm64/kernel/cpufeature.c                | 13 +++
>  arch/arm64/kernel/random.c                    | 79 +++++++++++++++++++
>  arch/arm64/Kconfig                            | 12 +++
>  arch/arm64/kernel/Makefile                    |  1 +
>  drivers/char/Kconfig                          |  4 +-
>  9 files changed, 150 insertions(+), 3 deletions(-)
>  create mode 100644 arch/arm64/include/asm/archrandom.h
>  create mode 100644 arch/arm64/kernel/random.c
>
> diff --git a/Documentation/arm64/cpu-feature-registers.rst b/Documentation/arm64/cpu-feature-registers.rst
> index 2955287e9acc..78d6f5c6e824 100644
> --- a/Documentation/arm64/cpu-feature-registers.rst
> +++ b/Documentation/arm64/cpu-feature-registers.rst
> @@ -117,6 +117,8 @@ infrastructure:
>       +------------------------------+---------+---------+
>       | Name                         |  bits   | visible |
>       +------------------------------+---------+---------+
> +     | RNDR                         | [63-60] |    y    |
> +     +------------------------------+---------+---------+
>       | TS                           | [55-52] |    y    |
>       +------------------------------+---------+---------+
>       | FHM                          | [51-48] |    y    |
> diff --git a/arch/arm64/include/asm/archrandom.h b/arch/arm64/include/asm/archrandom.h
> new file mode 100644
> index 000000000000..e796a6de7421
> --- /dev/null
> +++ b/arch/arm64/include/asm/archrandom.h
> @@ -0,0 +1,35 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef _ASM_ARCHRANDOM_H
> +#define _ASM_ARCHRANDOM_H
> +
> +#ifdef CONFIG_ARCH_RANDOM
> +
> +bool __must_check arch_get_random_long(unsigned long *v);
> +bool __must_check arch_get_random_seed_long(unsigned long *v);
> +
> +static inline bool __must_check arch_get_random_int(unsigned int *v)
> +{
> +       unsigned long val;
> +
> +       if (arch_get_random_long(&val)) {
> +               *v = val;
> +               return true;
> +       }
> +
> +       return false;
> +}
> +
> +static inline bool __must_check arch_get_random_seed_int(unsigned int *v)
> +{
> +       unsigned long val;
> +
> +       if (arch_get_random_seed_long(&val)) {
> +               *v = val;
> +               return true;
> +       }
> +
> +       return false;
> +}
> +
> +#endif /* CONFIG_ARCH_RANDOM */
> +#endif /* _ASM_ARCHRANDOM_H */
> diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
> index ac1dbca3d0cd..1dd7644bc59a 100644
> --- a/arch/arm64/include/asm/cpucaps.h
> +++ b/arch/arm64/include/asm/cpucaps.h
> @@ -54,7 +54,8 @@
>  #define ARM64_WORKAROUND_1463225               44
>  #define ARM64_WORKAROUND_CAVIUM_TX2_219_TVM    45
>  #define ARM64_WORKAROUND_CAVIUM_TX2_219_PRFM   46
> +#define ARM64_HAS_RNG                          47
>
> -#define ARM64_NCAPS                            47
> +#define ARM64_NCAPS                            48
>
>  #endif /* __ASM_CPUCAPS_H */
> diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
> index 6e919fafb43d..5e718f279469 100644
> --- a/arch/arm64/include/asm/sysreg.h
> +++ b/arch/arm64/include/asm/sysreg.h
> @@ -365,6 +365,9 @@
>  #define SYS_CTR_EL0                    sys_reg(3, 3, 0, 0, 1)
>  #define SYS_DCZID_EL0                  sys_reg(3, 3, 0, 0, 7)
>
> +#define SYS_RNDR_EL0                   sys_reg(3, 3, 2, 4, 0)
> +#define SYS_RNDRRS_EL0                 sys_reg(3, 3, 2, 4, 1)
> +
>  #define SYS_PMCR_EL0                   sys_reg(3, 3, 9, 12, 0)
>  #define SYS_PMCNTENSET_EL0             sys_reg(3, 3, 9, 12, 1)
>  #define SYS_PMCNTENCLR_EL0             sys_reg(3, 3, 9, 12, 2)
> @@ -539,6 +542,7 @@
>                          ENDIAN_SET_EL1 | SCTLR_EL1_UCI  | SCTLR_EL1_RES1)
>
>  /* id_aa64isar0 */
> +#define ID_AA64ISAR0_RNDR_SHIFT                60
>  #define ID_AA64ISAR0_TS_SHIFT          52
>  #define ID_AA64ISAR0_FHM_SHIFT         48
>  #define ID_AA64ISAR0_DP_SHIFT          44
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index 80f459ad0190..456d5c461cbf 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -119,6 +119,7 @@ static void cpu_enable_cnp(struct arm64_cpu_capabilities const *cap);
>   * sync with the documentation of the CPU feature register ABI.
>   */
>  static const struct arm64_ftr_bits ftr_id_aa64isar0[] = {
> +       ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_RNDR_SHIFT, 4, 0),
>         ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_TS_SHIFT, 4, 0),
>         ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_FHM_SHIFT, 4, 0),
>         ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_DP_SHIFT, 4, 0),
> @@ -1565,6 +1566,18 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
>                 .sign = FTR_UNSIGNED,
>                 .min_field_value = 1,
>         },
> +#endif
> +#ifdef CONFIG_ARCH_RANDOM
> +       {
> +               .desc = "Random Number Generator",
> +               .capability = ARM64_HAS_RNG,
> +               .type = ARM64_CPUCAP_WEAK_LOCAL_CPU_FEATURE,
> +               .matches = has_cpuid_feature,
> +               .sys_reg = SYS_ID_AA64ISAR0_EL1,
> +               .field_pos = ID_AA64ISAR0_RNDR_SHIFT,
> +               .sign = FTR_UNSIGNED,
> +               .min_field_value = 1,
> +       },
>  #endif
>         {},
>  };
> diff --git a/arch/arm64/kernel/random.c b/arch/arm64/kernel/random.c
> new file mode 100644
> index 000000000000..a13f082d88e6
> --- /dev/null
> +++ b/arch/arm64/kernel/random.c
> @@ -0,0 +1,79 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Random number generation using ARMv8.5-RNG.
> + */
> +
> +#include <linux/random.h>
> +#include <linux/ratelimit.h>
> +#include <linux/printk.h>
> +#include <linux/preempt.h>
> +#include <asm/cpufeature.h>
> +
> +static inline bool has_random(void)
> +{
> +       /*
> +        * We "have" RNG if either
> +        * (1) every cpu in the system has RNG, or
> +        * (2) in a non-preemptable context, current cpu has RNG.
> +        * Case 1 is the expected case when RNG is deployed, but
> +        * case 2 is present as a backup in case some big/little
> +        * system only has RNG on big cpus, we can still add entropy
> +        * from the interrupt handler of the big cpus.

I don't understand the reference to the interrupt handler here. It is
worth mentioning though that this arrangement permits
rand_initialize() to use the instructions regardless of whether they
are implemented only by the boot CPU or by all of them.

> +        * We can use __cpus_have_const_cap because we then fall
> +        * back to checking the current cpu.
> +        */
> +       return __cpus_have_const_cap(ARM64_HAS_RNG) ||
> +              (!preemptible() && this_cpu_has_cap(ARM64_HAS_RNG));
> +}
> +
> +bool arch_get_random_long(unsigned long *v)
> +{
> +       bool ok;
> +
> +       if (!has_random()) {
> +               return false;
> +       }
> +
> +       /*
> +        * Reads of RNDR set PSTATE.NZCV to 0b0000 on success,
> +        * and set PSTATE.NZCV to 0b0100 otherwise.
> +        */
> +       asm volatile(
> +               __mrs_s("%0", SYS_RNDR_EL0) "\n"
> +       "       cset %w1, ne\n"
> +       : "=r"(*v), "=r"(ok)
> +       :
> +       : "cc");
> +
> +       if (unlikely(!ok)) {
> +               pr_warn_ratelimited("cpu%d: sys_rndr failed\n",
> +                                   read_cpuid_id());
> +       }
> +       return ok;
> +}
> +
> +bool arch_get_random_seed_long(unsigned long *v)
> +{
> +       bool ok;
> +
> +       if (!has_random()) {
> +               return false;
> +       }
> +
> +       /*
> +        * Reads of RNDRRS set PSTATE.NZCV to 0b0000 on success,
> +        * and set PSTATE.NZCV to 0b0100 otherwise.
> +        */
> +       asm volatile(
> +               __mrs_s("%0", SYS_RNDRRS_EL0) "\n"
> +       "       cset %w1, ne\n"
> +       : "=r"(*v), "=r"(ok)
> +       :
> +       : "cc");
> +
> +       if (unlikely(!ok)) {
> +               pr_warn_ratelimited("cpu%d: sys_rndrrs failed\n",
> +                                   read_cpuid_id());
> +       }
> +       return ok;
> +}
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 3f047afb982c..5bc88601f07b 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1438,6 +1438,18 @@ config ARM64_PTR_AUTH
>
>  endmenu
>
> +menu "ARMv8.5 architectural features"
> +
> +config ARCH_RANDOM
> +       bool "Enable support for random number generation"
> +       default y
> +       help
> +         Random number generation (part of the ARMv8.5 Extensions)
> +         provides a high bandwidth, cryptographically secure
> +         hardware random number generator.
> +
> +endmenu
> +
>  config ARM64_SVE
>         bool "ARM Scalable Vector Extension support"
>         default y
> diff --git a/arch/arm64/kernel/Makefile b/arch/arm64/kernel/Makefile
> index 478491f07b4f..a47c2b984da7 100644
> --- a/arch/arm64/kernel/Makefile
> +++ b/arch/arm64/kernel/Makefile
> @@ -63,6 +63,7 @@ obj-$(CONFIG_CRASH_CORE)              += crash_core.o
>  obj-$(CONFIG_ARM_SDE_INTERFACE)                += sdei.o
>  obj-$(CONFIG_ARM64_SSBD)               += ssbd.o
>  obj-$(CONFIG_ARM64_PTR_AUTH)           += pointer_auth.o
> +obj-$(CONFIG_ARCH_RANDOM)              += random.o
>
>  obj-y                                  += vdso/ probes/
>  obj-$(CONFIG_COMPAT_VDSO)              += vdso32/
> diff --git a/drivers/char/Kconfig b/drivers/char/Kconfig
> index df0fc997dc3e..f26a0a8cc0d0 100644
> --- a/drivers/char/Kconfig
> +++ b/drivers/char/Kconfig
> @@ -539,7 +539,7 @@ endmenu
>
>  config RANDOM_TRUST_CPU
>         bool "Trust the CPU manufacturer to initialize Linux's CRNG"
> -       depends on X86 || S390 || PPC
> +       depends on X86 || S390 || PPC || ARM64
>         default n
>         help
>         Assume that CPU manufacturer (e.g., Intel or AMD for RDSEED or
> @@ -559,4 +559,4 @@ config RANDOM_TRUST_BOOTLOADER
>         device randomness. Say Y here to assume the entropy provided by the
>         booloader is trustworthy so it will be added to the kernel's entropy
>         pool. Otherwise, say N here so it will be regarded as device input that
> -       only mixes the entropy pool.
> \ No newline at end of file
> +       only mixes the entropy pool.
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
