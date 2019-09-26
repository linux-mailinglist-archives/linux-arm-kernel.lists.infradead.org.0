Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D36BF69C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 18:24:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FaOHku+iIT6jZeZOxLik//ztFNILJVr3hunLLZUMZ80=; b=ndAfPpl+3wOq4d
	CHjLglxdOJ0XaHKdTqdKdV+q+Oa99nhRIVQm2az94m/SoeWt88rpt3wIvdDG9/GsDQaIzJIQINl0F
	tff0zpkMbYB3SxqVV82+RRrEyTc2DE1kbWbN/cAxWHIQqsKZXZCE48uDTln1IxHoLSXDDZRd7u+Vo
	4/zXkFyYkC7Lle3Iqx/m6irGdDARrOVMq4NQqQdGGRzETP8XeVFppY4VvyBQ5140BpdMEs8XmYR2Z
	7h1OVnIDEDgmWGB/Le46xUZZbdcBAKedsBycTyqiNhJwpy2qhFARzOhe5ywkNB3R46Q5t1k1/Vbd6
	cDFKRX9N9+VIxsDamBQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDWYz-0007qY-Jl; Thu, 26 Sep 2019 16:24:17 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDWYl-0007o3-Ck
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 16:24:04 +0000
Received: by mail-pf1-x441.google.com with SMTP id q7so2115296pfh.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 09:24:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=o1tbaMq7T/ukWk3mtjnMcOjC8Q34znuuWkXOuJc+ANU=;
 b=AWRrGdXHoLy0Riqb0073AS7eedCai2Vnf+L0NuZ5iUtSvW8Ll3ne2bpW8y1u4ICN+X
 s3VLuNyuv9ndPU4+1ae57GO1aBwlS3nn7m9Jbm3ya9iIhG9cNmSIHrzg0nJlFr1ag9wS
 uJkGkEdyJqhM045BLt4HcFR8hsI4s2aiZMFJGFgvMa09Yb+2VKIPl1F3lCJjmtvWlMsr
 vN9VlYiGjx4O8QnB7QbzdIWHyqmry0R4eO2Ucyt+VWxVs1/8blxniD9L9blmDUttJNe4
 2gtKDqHFrmuH61sDeKi34kA0nIIfxe623LuGsOyH/TuQb9GPQljJNHVR7p5pN3d0Z2QZ
 rLBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=o1tbaMq7T/ukWk3mtjnMcOjC8Q34znuuWkXOuJc+ANU=;
 b=CvykWxEuF5kU+xACD3THPhEZhfzCqz+JuGbt6Vf6Uraa+ldf5e2Ejc8pwsXmN8aZyc
 X9fX7OGLML+45kAxI0Epv13ozhgHvQOhNR5enLzkQoJIhysqc4R9Qzn1sTUPi0z5BepT
 Tm712z1D2uyopkiXcs82fEqb2mToXfl5PRVcrX6Wq56kdNwu3iPalC13Eqae7Hk5n8MN
 L49dJOuCBP797Hntf+tOfWeICUrvTE3O/IU6SU/2RXjp4WAs/bkzHI6Hg4crCcHNoKvL
 9ioEfSXtpcVACpuQ7FwUKvqFJNROienjwazLvx12OUZY4dnPo/LcGnbdGFo0iPK2vArP
 R/dw==
X-Gm-Message-State: APjAAAUn74xOA8XotWmAFcsIBGhLwKHc92AEiU/MRz2rPq2bQgyFEWs/
 K+ZXUJONzWEBgpkjOgIKMQTY9P3TR5Na2SUFqeI+4w==
X-Google-Smtp-Source: APXvYqyBhJTcbx4Xt1FhYrPpeBs0GWYkzqvVM6fIDAS309M5Y+7Qirq8NKvhlgW2LRzB9wDxw7sc9ZgsUvCOO8QhaXg=
X-Received: by 2002:a63:d909:: with SMTP id r9mr4150357pgg.381.1569515042255; 
 Thu, 26 Sep 2019 09:24:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190920142738.qlsjwguc6bpnez63@willie-the-truck>
 <20190926133805.52348-1-vincenzo.frascino@arm.com>
 <20190926133805.52348-3-vincenzo.frascino@arm.com>
In-Reply-To: <20190926133805.52348-3-vincenzo.frascino@arm.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 26 Sep 2019 09:23:51 -0700
Message-ID: <CAKwvOdmbbwrAvh1f7ctkg-GoqsfXLWFd2VehLVX39N2qM9LJJg@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] arm64: vdso32: Detect binutils support for dmb
 ishld
To: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_092403_488667_6FBD5824 
X-CRM114-Status: GOOD (  17.31  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, LKML <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 26, 2019 at 6:38 AM Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:
>
> As reported by Will Deacon, older versions of binutils that do not
> support certain types of memory barriers can cause build failure of the
> vdso32 library.

Do we know which specific version of binutils has this problem?
Documentation/process/changes.rst lists 2.21+ as the supported
versions.  If it's older than that, it's unsupported.

I triple checked android's 2.27 seems ok.

$ cat bar.s
.text
.globl foo
  dmb ish
  dmb ishld
  dmb ishst
$ aarch64-linux-gnu-as bar.s
$ echo $?
0
$ llvm-objdump -d a.out

a.out: file format ELF64-aarch64-little


Disassembly of section .text:

0000000000000000 $x:
       0: bf 3b 03 d5                  dmb ish
       4: bf 39 03 d5                  dmb ishld
       8: bf 3a 03 d5                  dmb ishst

>
> Add a compilation time mechanism that detects if binutils supports those
> instructions and configure the kernel accordingly.
>
> Cc: Will Deacon <will@kernel.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> ---
>  arch/arm64/Kbuild                            | 6 ++++++
>  arch/arm64/include/asm/vdso/compat_barrier.h | 2 +-
>  arch/arm64/kernel/vdso32/Makefile            | 9 +++++++++
>  3 files changed, 16 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/Kbuild b/arch/arm64/Kbuild
> index d6465823b281..75cf8c796d0e 100644
> --- a/arch/arm64/Kbuild
> +++ b/arch/arm64/Kbuild
> @@ -4,3 +4,9 @@ obj-$(CONFIG_NET)       += net/
>  obj-$(CONFIG_KVM)      += kvm/
>  obj-$(CONFIG_XEN)      += xen/
>  obj-$(CONFIG_CRYPTO)   += crypto/
> +
> +# as-instr-compat
> +# Usage: cflags-y += $(call as-instr-compat,instr,option1,option2)
> +
> +as-instr-compat = $(call try-run,\
> +       printf "%b\n" "$(1)" | $(COMPATCC) $(KBUILD_AFLAGS) -c -x assembler -o "$$TMP" -,$(2),$(3))
> diff --git a/arch/arm64/include/asm/vdso/compat_barrier.h b/arch/arm64/include/asm/vdso/compat_barrier.h
> index fb60a88b5ed4..3fd8fd6d8fc2 100644
> --- a/arch/arm64/include/asm/vdso/compat_barrier.h
> +++ b/arch/arm64/include/asm/vdso/compat_barrier.h
> @@ -20,7 +20,7 @@
>
>  #define dmb(option) __asm__ __volatile__ ("dmb " #option : : : "memory")
>
> -#if __LINUX_ARM_ARCH__ >= 8
> +#if __LINUX_ARM_ARCH__ >= 8 && defined(CONFIG_AS_DMB_ISHLD)
>  #define aarch32_smp_mb()       dmb(ish)
>  #define aarch32_smp_rmb()      dmb(ishld)
>  #define aarch32_smp_wmb()      dmb(ishst)
> diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
> index 1fba0776ed40..22f0d31ea528 100644
> --- a/arch/arm64/kernel/vdso32/Makefile
> +++ b/arch/arm64/kernel/vdso32/Makefile
> @@ -17,6 +17,8 @@ cc32-disable-warning = $(call try-run,\
>         $(COMPATCC) -W$(strip $(1)) -c -x c /dev/null -o "$$TMP",-Wno-$(strip $(1)))
>  cc32-ldoption = $(call try-run,\
>          $(COMPATCC) $(1) -nostdlib -x c /dev/null -o "$$TMP",$(1),$(2))
> +cc32-as-instr = $(call try-run,\
> +       printf "%b\n" "$(1)" | $(COMPATCC) $(VDSO_AFLAGS) -c -x assembler -o "$$TMP" -,$(2),$(3))
>
>  # We cannot use the global flags to compile the vDSO files, the main reason
>  # being that the 32-bit compiler may be older than the main (64-bit) compiler
> @@ -55,6 +57,7 @@ endif
>  VDSO_CAFLAGS += -fPIC -fno-builtin -fno-stack-protector
>  VDSO_CAFLAGS += -DDISABLE_BRANCH_PROFILING
>
> +
>  # Try to compile for ARMv8. If the compiler is too old and doesn't support it,
>  # fall back to v7. There is no easy way to check for what architecture the code
>  # is being compiled, so define a macro specifying that (see arch/arm/Makefile).
> @@ -91,6 +94,12 @@ VDSO_CFLAGS += -Wno-int-to-pointer-cast
>  VDSO_AFLAGS := $(VDSO_CAFLAGS)
>  VDSO_AFLAGS += -D__ASSEMBLY__
>
> +# Check for binutils support for dmb ishld
> +dmbinstr := $(call cc32-as-instr,dmb ishld,-DCONFIG_AS_DMB_ISHLD=1)
> +
> +VDSO_CFLAGS += $(dmbinstr)
> +VDSO_AFLAGS += $(dmbinstr)
> +
>  VDSO_LDFLAGS := $(VDSO_CPPFLAGS)
>  # From arm vDSO Makefile
>  VDSO_LDFLAGS += -Wl,-Bsymbolic -Wl,--no-undefined -Wl,-soname=linux-vdso.so.1
> --
> 2.23.0
>


-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
