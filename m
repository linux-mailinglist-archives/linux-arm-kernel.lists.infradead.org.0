Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD7ACAFE6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 22:18:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U2y51lNWcsgtd+V9oJiVnPUWOQDoekHRn5uA3pMe/X8=; b=uCdo6fWiNRfChj
	+IOyjc3myjw5Y1O9gsqUHhP2OfURq4feWfUegbH2QbCQaE91XfpbTZW1BFOq1TwnRPPuemAMuAYx1
	QfwG6nAqMVx85CL/m7lyTxo9zbv+aGJVfUKvF6TXoFG9mCulYCHVwBqFAIvH26sNbckZdcVR7fBnu
	jOeTKKpHqIE7ar1rQ+C6loLQTUbg5d96nogfxag8aMU2w56jvv4EI8P9t2I0AJH/aTn5+eFlUfFbL
	RnWuNoM3VMJvjaFP24im486G/GXWdBjPDWRsZXZUAKs4AGR8mkcIoF+SVFbrSNZPt/RdsHeBSNtYR
	T6zZKgxAYQqCG+ly5xLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG7Ye-0008My-5U; Thu, 03 Oct 2019 20:18:40 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG7YV-0008Lw-6y
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 20:18:32 +0000
Received: by mail-pg1-x544.google.com with SMTP id i14so2381797pgt.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 13:18:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+sLqpxQwn5IKAm1aZLON2pNwFcFKrH4kS1PpKV5io00=;
 b=tPx7dShK1fKz58midm5HFeKBUk9GrBo/Eg96g1VKDwJcr++u7xtVdw1qfs9lgGNkCf
 Gm3XpKa7FGISJdruBKtKBISHqkeXT9dvzY0uufVpkbUc0glzae6lcQvMVhvJaEvAq5jq
 fqZFNBCIAyp/Q2SDDs4IphqnH5invfbNJQSBuoZoi5CRS5GKHZAogCn6hV1OCf582/Cw
 FDY/G2bNiohgOVui/vaT2YycHrm4NNW1fVP/HEsPrScdt964iwQmOCraoDgUd0O+fXSL
 tvwaUkXXZPVXRI+78KM29C3E8UQ5XU8JozY4itSVuf0iRfs2jUnbanKc5XIB1IR7/ubh
 lWGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+sLqpxQwn5IKAm1aZLON2pNwFcFKrH4kS1PpKV5io00=;
 b=kJKHI1k6y0zA/I9EUftylEb0IoxrUsSMMrwJ+gFYpD2nOoro6ny1jos58GwpFa5Jjx
 DFDNU5/b/5q3wtYU0DDeQjXcALo5Kz+OZy/wj8yR2By/3IVHpBERBVVccrBTf8SJ+HY4
 fTckI6geIULzYCzXYBj/ynb2VKcrVY94RmNKd1fWDKer3qulHy3j8xFfAFFrl8qhC8kD
 Bot6fDTHhfaTyQpz04kwNy7VISRAOTKc+tLLmgYaw7VlyMGJJMru6WkkaLcmIByaKxku
 wPy+M5vFskjZTB1DAHRiCQG2cEXW+afoYRbeaZELpo+lRYwVGhrS1aJJst4fB6+ZNsgy
 KF/w==
X-Gm-Message-State: APjAAAXjYC67UJQUvAoA8fZbD0iIrfjmgKYl7P5AbBvS2bcV8MaYo9Sy
 jrkLyd44oGEtOcM4fHMxQQz4xDD13jgWvrhBRJGCuigu
X-Google-Smtp-Source: APXvYqyD6BEnO4ZUoyiVVPkVY2fJjAirNyrjFZR5lstV7VlmlMPIqQuSaIj15lBFzeUrnMAnBoa05ZyW7Q0kii+jR8g=
X-Received: by 2002:a17:90a:178d:: with SMTP id
 q13mr12760931pja.134.1570133907317; 
 Thu, 03 Oct 2019 13:18:27 -0700 (PDT)
MIME-Version: 1.0
References: <20191003174838.8872-1-vincenzo.frascino@arm.com>
 <20191003174838.8872-3-vincenzo.frascino@arm.com>
In-Reply-To: <20191003174838.8872-3-vincenzo.frascino@arm.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 3 Oct 2019 13:18:16 -0700
Message-ID: <CAKwvOdmhyVHREHvyB0wL2GfMsE8GcJ1Ouj_8ifrR4hU8kBYukQ@mail.gmail.com>
Subject: Re: [PATCH v5 2/6] arm64: vdso32: Detect binutils support for dmb
 ishld
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_131831_281221_4C3F1D8A 
X-CRM114-Status: GOOD (  17.96  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 3, 2019 at 10:48 AM Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:
>
> Older versions of binutils that do not support certain types of memory
> barriers can cause build failure of the vdso32 library.

Do you know specific version numbers of binutils that are affected?
May be helpful to have in the commit message just for future
travelers.

>
> Add a compilation time mechanism that detects if binutils supports those
> instructions and configure the kernel accordingly.
>
> Cc: Will Deacon <will@kernel.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Reported-by: Will Deacon <will@kernel.org>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
> Tested-by: Catalin Marinas <catalin.marinas@arm.com>
> ---
>  arch/arm64/include/asm/vdso/compat_barrier.h | 2 +-
>  arch/arm64/kernel/vdso32/Makefile            | 9 +++++++++
>  2 files changed, 10 insertions(+), 1 deletion(-)
>
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
> index 19e0d3115ffe..77aa61340374 100644
> --- a/arch/arm64/kernel/vdso32/Makefile
> +++ b/arch/arm64/kernel/vdso32/Makefile
> @@ -15,6 +15,8 @@ cc32-disable-warning = $(call try-run,\
>         $(COMPATCC) -W$(strip $(1)) -c -x c /dev/null -o "$$TMP",-Wno-$(strip $(1)))
>  cc32-ldoption = $(call try-run,\
>          $(COMPATCC) $(1) -nostdlib -x c /dev/null -o "$$TMP",$(1),$(2))
> +cc32-as-instr = $(call try-run,\
> +       printf "%b\n" "$(1)" | $(COMPATCC) $(VDSO_AFLAGS) -c -x assembler -o "$$TMP" -,$(2),$(3))
>
>  # We cannot use the global flags to compile the vDSO files, the main reason
>  # being that the 32-bit compiler may be older than the main (64-bit) compiler
> @@ -53,6 +55,7 @@ endif
>  VDSO_CAFLAGS += -fPIC -fno-builtin -fno-stack-protector
>  VDSO_CAFLAGS += -DDISABLE_BRANCH_PROFILING
>
> +
>  # Try to compile for ARMv8. If the compiler is too old and doesn't support it,
>  # fall back to v7. There is no easy way to check for what architecture the code
>  # is being compiled, so define a macro specifying that (see arch/arm/Makefile).
> @@ -89,6 +92,12 @@ VDSO_CFLAGS += -Wno-int-to-pointer-cast
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
