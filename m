Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E981A4557
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 12:46:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r8LpZ2iy0cHvM/0MSEWXahbr4z0pl+k7JUaWavM5g4s=; b=n7FkA0KdPFwJcD
	FxWHETURc7KmWoQ9njePVQcvOGjqpaX5OZYtk2WMeUv4IDSChHVMBSWdW3THQFTHn4DinIMsFveU2
	F/7T72IeSLZMqaPoAe5rqOsE3f/kxiLRyYypYqqOADEe2mzxCUVqheom2bkFaWrSBIcV7P+gKdN6w
	AU96PrDwWlOPExAwJmRw05FEm5rlLop0I+1+qk3Nua5k4TOazqSFc1dQwoIwo2kC3VKVjzr8/oM2g
	NI9LqEIpj+cDVAQp9qfHgX0V0/6ajYGCXmmf5X4JAH198J3vVSC/3vY7qLAW1M+Ntq5m3mF6ZpYox
	Eg1NcwXsnLejMhpnzwBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMrAa-000323-Hc; Fri, 10 Apr 2020 10:45:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMrAU-00031U-Aq
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 10:45:51 +0000
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
 [209.85.128.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4C1BE216FD
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 10:45:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586515547;
 bh=UqujX8a43UgZ2wUq7+fHBdtk9fNTH/dOK9O/vJ62NsM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=pNv87z/UNfSpOKG/E9IPNyIdXO4wP2A96By/rHUfC++jnu8thoIzn9XPo99N7JEHS
 uuiRY6qKOfwtoqFFwHTgTbo865c6pLchhNaP3KK/IPpXW/cv+uuwwx/UChEE35SNWT
 NoQjjyGqAjYGBqpa0QsH4HSCsD9pC6G9JICKUT3A=
Received: by mail-wm1-f42.google.com with SMTP id f20so2332537wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 03:45:47 -0700 (PDT)
X-Gm-Message-State: AGi0PuZeWhzGg/KtHiK5PeN7TAwO3d/TYzqIv1IBxnHyLBvMW062tEod
 EqnIdNtv79ONCQg4PB6hJr0y79e9Kpe8NOvFOy7S2A==
X-Google-Smtp-Source: APiQypLdUVvA7CnaTTssOnJwPrxl1HW+oM2zu/RKuq6utGp1zVYRYHMkZBBXsZe+0MrT9FW/+152MfO9CABs8P181vo=
X-Received: by 2002:a7b:c050:: with SMTP id u16mr4992457wmc.68.1586515545554; 
 Fri, 10 Apr 2020 03:45:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200117224839.23531-1-f.fainelli@gmail.com>
 <20200117224839.23531-8-f.fainelli@gmail.com>
In-Reply-To: <20200117224839.23531-8-f.fainelli@gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 10 Apr 2020 12:45:34 +0200
X-Gmail-Original-Message-ID: <CAKv+Gu_6wWhi418=GpMjfMpE2E+XHbL-DYKT8MJ1jE3+VybrAg@mail.gmail.com>
Message-ID: <CAKv+Gu_6wWhi418=GpMjfMpE2E+XHbL-DYKT8MJ1jE3+VybrAg@mail.gmail.com>
Subject: Re: [PATCH v7 7/7] ARM: Enable KASan for ARM
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_034550_414292_03777DCF 
X-CRM114-Status: GOOD (  25.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Michal Hocko <mhocko@suse.com>, Julien Thierry <julien.thierry@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Andrey Ryabinin <ryabinin.a.a@gmail.com>,
 Alexander Potapenko <glider@google.com>, kvmarm <kvmarm@lists.cs.columbia.edu>,
 Jonathan Corbet <corbet@lwn.net>, Abbott Liu <liuwenliang@huawei.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, kasan-dev <kasan-dev@googlegroups.com>,
 bcm-kernel-feedback-list@broadcom.com, Dmitry Vyukov <dvyukov@google.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Andrew Jones <drjones@redhat.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Marc Zyngier <marc.zyngier@arm.com>,
 Andre Przywara <andre.przywara@arm.com>, Philip Derrin <philip@cog.systems>,
 Jinbum Park <jinb.park7@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Nicolas Pitre <nico@fluxnic.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Thomas Garnier <thgarnie@google.com>, Rob Landley <rob@landley.net>,
 Philippe Ombredanne <pombredanne@nexb.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Andrey Ryabinin <ryabinin@virtuozzo.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 17 Jan 2020 at 23:52, Florian Fainelli <f.fainelli@gmail.com> wrote:
>
> From: Andrey Ryabinin <ryabinin@virtuozzo.com>
>
> This patch enables the kernel address sanitizer for ARM. XIP_KERNEL has
> not been tested and is therefore not allowed.
>
> Acked-by: Dmitry Vyukov <dvyukov@google.com>
> Tested-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Abbott Liu <liuwenliang@huawei.com>
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  Documentation/dev-tools/kasan.rst     | 4 ++--
>  arch/arm/Kconfig                      | 9 +++++++++
>  arch/arm/boot/compressed/Makefile     | 1 +
>  drivers/firmware/efi/libstub/Makefile | 3 ++-
>  4 files changed, 14 insertions(+), 3 deletions(-)
>
> diff --git a/Documentation/dev-tools/kasan.rst b/Documentation/dev-tools/kasan.rst
> index e4d66e7c50de..6acd949989c3 100644
> --- a/Documentation/dev-tools/kasan.rst
> +++ b/Documentation/dev-tools/kasan.rst
> @@ -21,8 +21,8 @@ global variables yet.
>
>  Tag-based KASAN is only supported in Clang and requires version 7.0.0 or later.
>
> -Currently generic KASAN is supported for the x86_64, arm64, xtensa and s390
> -architectures, and tag-based KASAN is supported only for arm64.
> +Currently generic KASAN is supported for the x86_64, arm, arm64, xtensa and
> +s390 architectures, and tag-based KASAN is supported only for arm64.
>
>  Usage
>  -----
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 96dab76da3b3..70a7eb50984e 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -65,6 +65,7 @@ config ARM
>         select HAVE_ARCH_BITREVERSE if (CPU_32v7M || CPU_32v7) && !CPU_32v6
>         select HAVE_ARCH_JUMP_LABEL if !XIP_KERNEL && !CPU_ENDIAN_BE32 && MMU
>         select HAVE_ARCH_KGDB if !CPU_ENDIAN_BE32 && MMU
> +       select HAVE_ARCH_KASAN if MMU && !XIP_KERNEL
>         select HAVE_ARCH_MMAP_RND_BITS if MMU
>         select HAVE_ARCH_SECCOMP_FILTER if AEABI && !OABI_COMPAT
>         select HAVE_ARCH_THREAD_STRUCT_WHITELIST
> @@ -212,6 +213,14 @@ config ARCH_MAY_HAVE_PC_FDC
>  config ZONE_DMA
>         bool
>
> +config KASAN_SHADOW_OFFSET
> +       hex
> +       depends on KASAN
> +       default 0x1f000000 if PAGE_OFFSET=0x40000000
> +       default 0x5f000000 if PAGE_OFFSET=0x80000000
> +       default 0x9f000000 if PAGE_OFFSET=0xC0000000
> +       default 0xffffffff
> +
>  config ARCH_SUPPORTS_UPROBES
>         def_bool y
>
> diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
> index 83991a0447fa..efda24b00a44 100644
> --- a/arch/arm/boot/compressed/Makefile
> +++ b/arch/arm/boot/compressed/Makefile
> @@ -25,6 +25,7 @@ endif
>
>  GCOV_PROFILE           := n
>  KASAN_SANITIZE         := n
> +CFLAGS_KERNEL          += -D__SANITIZE_ADDRESS__
>
>  # Prevents link failures: __sanitizer_cov_trace_pc() is not linked in.
>  KCOV_INSTRUMENT                := n
> diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> index c35f893897e1..c8b36824189b 100644
> --- a/drivers/firmware/efi/libstub/Makefile
> +++ b/drivers/firmware/efi/libstub/Makefile
> @@ -20,7 +20,8 @@ cflags-$(CONFIG_ARM64)                := $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
>                                    -fpie $(DISABLE_STACKLEAK_PLUGIN)
>  cflags-$(CONFIG_ARM)           := $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
>                                    -fno-builtin -fpic \
> -                                  $(call cc-option,-mno-single-pic-base)
> +                                  $(call cc-option,-mno-single-pic-base) \
> +                                  -D__SANITIZE_ADDRESS__
>

I am not too crazy about this need to unconditionally 'enable' KASAN
on the command line like this, in order to be able to disable it again
when CONFIG_KASAN=y.

Could we instead add something like this at the top of
arch/arm/boot/compressed/string.c?

#ifdef CONFIG_KASAN
#undef memcpy
#undef memmove
#undef memset
void *__memcpy(void *__dest, __const void *__src, size_t __n) __alias(memcpy);
void *__memmove(void *__dest, __const void *__src, size_t count)
__alias(memmove);
void *__memset(void *s, int c, size_t count) __alias(memset);
#endif

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
