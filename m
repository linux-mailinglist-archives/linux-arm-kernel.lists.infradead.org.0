Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FB81AF438
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 21:20:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=868F0QQrGHRGYRf2sKNtacn0eDOZ4mLqVutEo9WepKk=; b=dmLjRHAqN1+zPf
	PRiH55mwbSMYFFR2e1NcpOkrtuD+XdApYjMfJSOqeoK8PXgN5qn1qKu8rJ9iGTn3GtlgSDRI7XLON
	cXn6P94JoNQB0+E7NOsud3TNJ5dK/v/7hvS+elp0iQ+nzjEHxIAaqEXObBZLBPHfvltSgwr7iLdUH
	eKaJl/kdUFI/gaefmu3NWZh4uvjA48l8t+gp1D17dgFTQ4KvMycSRF+twFyKT+zYmBwdtsZaFoBDR
	no9A++wgKjRwu8jV7aWGFQTfHbIDodvmV8a0MCVQ8jjiRfZgXgKxoe6+MWqUrmUULiAcy8FT9mX2l
	sLWlTntAQBVhBag+spIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPt0N-0006OD-RV; Sat, 18 Apr 2020 19:19:55 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPt0G-0006ND-2W
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 19:19:50 +0000
Received: by mail-wr1-x443.google.com with SMTP id i10so7000878wrv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 Apr 2020 12:19:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=09AMIYxpDLT7RP8O+1RK9/8lqoWsc6BTMIUYAh5UqYw=;
 b=ZjdSAAJfbeRQQKt/kQHGw7QwOhAMOu1VjZ/wBzgotvgH6ROaVrGUnnnUN0iWsqiCaA
 IrkdBKs97o9Xz2PObc9xRoCX+X1pDrXCMsSmtY5sexTctnLwQE3qd+oGs7RCx5ZSKaEz
 +hMaIpCSjN2fb76+BwFgYXEZJPn2q1M2chjZPV30ZkBfk+5ZZlpw1wkTkkOsTzUK3aOB
 RjCPP0I/AHOrBFfZtvVdil0ZmjkBxE8SpgL4LEeIEntubJe2Cc7Km9B+FQgR9dIT9Oxx
 Gl8R+9h6zi0CeWWE6ZoOpsc/eyH4fPtrOCbA9drxQzsUmL3HojXzqyCrRs35z7qx6aXg
 9MLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=09AMIYxpDLT7RP8O+1RK9/8lqoWsc6BTMIUYAh5UqYw=;
 b=GDi6069hQFUf9mhEIfni/P8EG0sZKksqB/hGCOyNeLews1nzkbl7QEdH12Z0I7CmHD
 6GjdqefhLMLgjt7R6geCPm2etL4dODRQvWli4AzzXwCNmo30Eqfn42UQrhPseOmQqEjg
 rX0bfWn0VNB50WwneE8yP6PBE6GxVr6OJbAHrZR34Hhhdf/w6CD8N+6h+l7+j9YHwlWC
 qvYXYolcct+N4bho13YWmscsGieTjOzJUadedXXtbRBij1MIxquzoCD1NwpydwvmqECn
 UgKfin/EVUFtKO2qR0CU9Vi7Dc+honx1lI8pXUKBV5nHGg9cfYxA8n80JV4dWGEZDcio
 i8/Q==
X-Gm-Message-State: AGi0PuZVhZplRCsI9vlY8bU1Dekbbvpi2Co6P10MF/IXo+dkULhB4h3H
 nATPwGV+TC1Bkl0FhHWYE6Q5I0o4hXJmm2ATDMaB
X-Google-Smtp-Source: APiQypJTYinjHJFi+YR/Fjde7vXhM9I4v2tuHGut1/hg8bps0zCgka7iVKaqanJQE8XhFi7n5XoPAsTZ+jxMjeJ4BqU=
X-Received: by 2002:a5d:4443:: with SMTP id x3mr9994447wrr.162.1587237586271; 
 Sat, 18 Apr 2020 12:19:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200415195422.19866-1-atish.patra@wdc.com>
 <20200415195422.19866-6-atish.patra@wdc.com>
 <CAMj1kXFRqTYr7_M_j6oN1-xnQ6V4uCYK49yAbjvrf1BB823Cng@mail.gmail.com>
 <CAOnJCUK3fqsR93ewYMUkanh+x1EJN_3QwkFjSDDZZr2MjzpnUQ@mail.gmail.com>
 <CAMj1kXFOkARJ9k81pu-LuHEd7H7AZRRrquzVN-WQ3J239JUZTw@mail.gmail.com>
 <CAMj1kXGv8XrXJ=Tx88O38a9UYM3iuBevg5NXRpMrny1XJZGB7A@mail.gmail.com>
In-Reply-To: <CAMj1kXGv8XrXJ=Tx88O38a9UYM3iuBevg5NXRpMrny1XJZGB7A@mail.gmail.com>
From: Atish Patra <atishp@atishpatra.org>
Date: Sat, 18 Apr 2020 12:19:35 -0700
Message-ID: <CAOnJCUJOY_84eesRreVyEQKjL2awkehcFi5ydMv0USNeaFHd6A@mail.gmail.com>
Subject: Re: [v3 PATCH 5/5] RISC-V: Add EFI stub support.
To: Ard Biesheuvel <ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_121948_193581_A2A85209 
X-CRM114-Status: GOOD (  34.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>, Atish Patra <atish.patra@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-riscv <linux-riscv@lists.infradead.org>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Apr 18, 2020 at 5:39 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Sat, 18 Apr 2020 at 12:51, Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > On Sat, 18 Apr 2020 at 05:03, Atish Patra <atishp@atishpatra.org> wrote:
> > >
> > > On Thu, Apr 16, 2020 at 12:41 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> > > >
> > > > On Wed, 15 Apr 2020 at 21:54, Atish Patra <atish.patra@wdc.com> wrote:
> > > > >
> > > > > Add a RISC-V architecture specific stub code that actually copies the
> > > > > actual kernel image to a valid address and jump to it after boot services
> > > > > are terminated. Enable UEFI related kernel configs as well for RISC-V.
> > > > >
> > > > > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > > > > ---
> > > > >  arch/riscv/Kconfig                        |  20 ++++
> > > > >  arch/riscv/Makefile                       |   1 +
> > > > >  arch/riscv/configs/defconfig              |   1 +
> > > > >  arch/riscv/include/asm/efi.h              |  44 +++++++++
> > > > >  drivers/firmware/efi/Kconfig              |   2 +-
> > > > >  drivers/firmware/efi/libstub/Makefile     |   7 ++
> > > > >  drivers/firmware/efi/libstub/riscv-stub.c | 111 ++++++++++++++++++++++
> > > > >  7 files changed, 185 insertions(+), 1 deletion(-)
> > > > >  create mode 100644 arch/riscv/include/asm/efi.h
> > > > >  create mode 100644 drivers/firmware/efi/libstub/riscv-stub.c
> > > > >
> > > > > diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> > > > > index f39e326a7a42..eb4f41c8f3ce 100644
> > > > > --- a/arch/riscv/Kconfig
> > > > > +++ b/arch/riscv/Kconfig
> > > > > @@ -379,10 +379,30 @@ config CMDLINE_FORCE
> > > > >
> > > > >  endchoice
> > > > >
> > > > > +config EFI_STUB
> > > > > +       bool
> > > > > +
> > > > > +config EFI
> > > > > +       bool "UEFI runtime support"
> > > > > +       depends on OF
> > > > > +       select LIBFDT
> > > > > +       select UCS2_STRING
> > > > > +       select EFI_PARAMS_FROM_FDT
> > > > > +       select EFI_STUB
> > > > > +       select EFI_GENERIC_STUB
> > > > > +       default y
> > > > > +       help
> > > > > +         This option provides support for runtime services provided
> > > > > +         by UEFI firmware (such as non-volatile variables, realtime
> > > > > +          clock, and platform reset). A UEFI stub is also provided to
> > > > > +         allow the kernel to be booted as an EFI application. This
> > > > > +         is only useful on systems that have UEFI firmware.
> > > > > +
> > > > >  endmenu
> > > > >
> > > > >  menu "Power management options"
> > > > >
> > > > >  source "kernel/power/Kconfig"
> > > > > +source "drivers/firmware/Kconfig"
> > > > >
> > > > >  endmenu
> > > > > diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> > > > > index fb6e37db836d..079435804d6d 100644
> > > > > --- a/arch/riscv/Makefile
> > > > > +++ b/arch/riscv/Makefile
> > > > > @@ -80,6 +80,7 @@ head-y := arch/riscv/kernel/head.o
> > > > >  core-y += arch/riscv/
> > > > >
> > > > >  libs-y += arch/riscv/lib/
> > > > > +core-$(CONFIG_EFI_STUB) += $(objtree)/drivers/firmware/efi/libstub/lib.a
> > > > >
> > > > >  PHONY += vdso_install
> > > > >  vdso_install:
> > > > > diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
> > > > > index 4da4886246a4..ae69e12d306a 100644
> > > > > --- a/arch/riscv/configs/defconfig
> > > > > +++ b/arch/riscv/configs/defconfig
> > > > > @@ -129,3 +129,4 @@ CONFIG_DEBUG_BLOCK_EXT_DEVT=y
> > > > >  # CONFIG_RUNTIME_TESTING_MENU is not set
> > > > >  CONFIG_MEMTEST=y
> > > > >  # CONFIG_SYSFS_SYSCALL is not set
> > > > > +CONFIG_EFI=y
> > > > > diff --git a/arch/riscv/include/asm/efi.h b/arch/riscv/include/asm/efi.h
> > > > > new file mode 100644
> > > > > index 000000000000..62d7d5eafed8
> > > > > --- /dev/null
> > > > > +++ b/arch/riscv/include/asm/efi.h
> > > > > @@ -0,0 +1,44 @@
> > > > > +/* SPDX-License-Identifier: GPL-2.0 */
> > > > > +/*
> > > > > + * Copyright (C) 2020 Western Digital Corporation or its affiliates.
> > > > > + * Based on arch/arm64/include/asm/efi.h
> > > > > + */
> > > > > +#ifndef _ASM_EFI_H
> > > > > +#define _ASM_EFI_H
> > > > > +
> > > > > +#include <asm/io.h>
> > > > > +#include <asm/mmu_context.h>
> > > > > +#include <asm/ptrace.h>
> > > > > +#include <asm/tlbflush.h>
> > > > > +
> > > > > +#define VA_BITS_MIN 39
> > > > > +
> > > > > +/* on RISC-V, the FDT may be located anywhere in system RAM */
> > > > > +static inline unsigned long efi_get_max_fdt_addr(unsigned long dram_base)
> > > > > +{
> > > > > +       return ULONG_MAX;
> > > > > +}
> > > > > +
> > > > > +/* Load initrd at enough distance from DRAM start */
> > > > > +static inline unsigned long efi_get_max_initrd_addr(unsigned long dram_base,
> > > > > +                                                   unsigned long image_addr)
> > > > > +{
> > > > > +       return dram_base + SZ_256M;
> > > > > +}
> > > > > +
> > > > > +#define efi_bs_call(func, ...) efi_system_table()->boottime->func(__VA_ARGS__)
> > > > > +#define efi_rt_call(func, ...) efi_system_table()->runtime->func(__VA_ARGS__)
> > > > > +#define efi_is_native()                (true)
> > > > > +
> > > > > +#define efi_table_attr(inst, attr)     (inst->attr)
> > > > > +
> > > > > +#define efi_call_proto(inst, func, ...) inst->func(inst, ##__VA_ARGS__)
> > > > > +
> > > > > +#define alloc_screen_info(x...)                (&screen_info)
> > > > > +extern char stext_offset[];
> > > > > +
> > > > > +static inline void free_screen_info(struct screen_info *si)
> > > > > +{
> > > > > +}
> > > > > +
> > > > > +#endif /* _ASM_EFI_H */
> > > > > diff --git a/drivers/firmware/efi/Kconfig b/drivers/firmware/efi/Kconfig
> > > > > index 2a2b2b96a1dc..fcdc789d3f87 100644
> > > > > --- a/drivers/firmware/efi/Kconfig
> > > > > +++ b/drivers/firmware/efi/Kconfig
> > > > > @@ -111,7 +111,7 @@ config EFI_GENERIC_STUB
> > > > >
> > > > >  config EFI_ARMSTUB_DTB_LOADER
> > > > >         bool "Enable the DTB loader"
> > > > > -       depends on EFI_GENERIC_STUB
> > > > > +       depends on EFI_GENERIC_STUB && !RISCV
> > > > >         default y
> > > > >         help
> > > > >           Select this config option to add support for the dtb= command
> > > > > diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> > > > > index 2b4e09bf987c..7d46b70b51f2 100644
> > > > > --- a/drivers/firmware/efi/libstub/Makefile
> > > > > +++ b/drivers/firmware/efi/libstub/Makefile
> > > > > @@ -22,6 +22,8 @@ cflags-$(CONFIG_ARM64)                := $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
> > > > >  cflags-$(CONFIG_ARM)           := $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
> > > > >                                    -fno-builtin -fpic \
> > > > >                                    $(call cc-option,-mno-single-pic-base)
> > > > > +cflags-$(CONFIG_RISCV)         := $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
> > > > > +                                  -fpic
> > > > >
> > > > >  cflags-$(CONFIG_EFI_GENERIC_STUB)      += -I$(srctree)/scripts/dtc/libfdt
> > > > >
> > > > > @@ -57,6 +59,7 @@ lib-$(CONFIG_EFI_GENERIC_STUB)                += efi-stub.o fdt.o string.o \
> > > > >  lib-$(CONFIG_ARM)              += arm32-stub.o
> > > > >  lib-$(CONFIG_ARM64)            += arm64-stub.o
> > > > >  lib-$(CONFIG_X86)              += x86-stub.o
> > > > > +lib-$(CONFIG_RISCV)            += riscv-stub.o
> > > > >  CFLAGS_arm32-stub.o            := -DTEXT_OFFSET=$(TEXT_OFFSET)
> > > > >  CFLAGS_arm64-stub.o            := -DTEXT_OFFSET=$(TEXT_OFFSET)
> > > > >
> > > > > @@ -81,6 +84,10 @@ STUBCOPY_FLAGS-$(CONFIG_ARM64)       += --prefix-alloc-sections=.init \
> > > > >                                    --prefix-symbols=__efistub_
> > > > >  STUBCOPY_RELOC-$(CONFIG_ARM64) := R_AARCH64_ABS
> > > > >
> > > > > +STUBCOPY_FLAGS-$(CONFIG_RISCV) += --prefix-alloc-sections=.init \
> > > > > +                                  --prefix-symbols=__efistub_
> > > > > +STUBCOPY_RELOC-$(CONFIG_RISCV) := R_RISCV_HI20
> > > > > +
> > > > >  $(obj)/%.stub.o: $(obj)/%.o FORCE
> > > > >         $(call if_changed,stubcopy)
> > > > >
> > > > > diff --git a/drivers/firmware/efi/libstub/riscv-stub.c b/drivers/firmware/efi/libstub/riscv-stub.c
> > > > > new file mode 100644
> > > > > index 000000000000..69d13e0ebaea
> > > > > --- /dev/null
> > > > > +++ b/drivers/firmware/efi/libstub/riscv-stub.c
> > > > > @@ -0,0 +1,111 @@
> > > > > +// SPDX-License-Identifier: GPL-2.0
> > > > > +/*
> > > > > + * Copyright (C) 2013, 2014 Linaro Ltd;  <roy.franz@linaro.org>
> > > > > + * Copyright (C) 2020 Western Digital Corporation or its affiliates.
> > > > > + *
> > > > > + * This file implements the EFI boot stub for the RISC-V kernel.
> > > > > + * Adapted from ARM64 version at drivers/firmware/efi/libstub/arm64-stub.c.
> > > > > + */
> > > > > +
> > > > > +#include <linux/efi.h>
> > > > > +#include <linux/libfdt.h>
> > > > > +#include <linux/libfdt_env.h>
> > > > > +#include <asm/efi.h>
> > > > > +#include <asm/sections.h>
> > > > > +
> > > > > +#include "efistub.h"
> > > > > +/*
> > > > > + * RISCV requires the kernel image to placed TEXT_OFFSET bytes beyond a 2 MB
> > > > > + * aligned base for 64 bit and 4MB for 32 bit.
> > > > > + */
> > >
> > > Fixed the comment.
> > >
> > > > > +#ifdef CONFIG_64BIT
> > > > > +#define MIN_KIMG_ALIGN SZ_2M
> > > > > +#else
> > > > > +#define MIN_KIMG_ALIGN SZ_4M
> > > > > +#endif
> > > > > +
> > > > > +typedef __attribute__((noreturn)) void (*jump_kernel_func)(unsigned int,
> > > > > +                                                          unsigned long);
> > > > > +efi_status_t check_platform_features(void)
> > > > > +{
> > > > > +       return EFI_SUCCESS;
> > > > > +}
> > > > > +
> > > > > +static u32 get_boot_hartid_from_fdt(unsigned long fdt)
> > > > > +{
> > > > > +       int chosen_node, len;
> > > > > +       const fdt32_t *prop;
> > > > > +
> > > > > +       chosen_node = fdt_path_offset((void *)fdt, "/chosen");
> > > > > +       if (chosen_node < 0)
> > > > > +               return U32_MAX;
> > > > > +       prop = fdt_getprop((void *)fdt, chosen_node, "boot-hartid", &len);
> > > > > +       if (!prop || len != sizeof(u32))
> > > > > +               return U32_MAX;
> > > > > +
> > > > > +       return fdt32_to_cpu(*prop);
> > > > > +}
> > > > > +
> > > > > +/*
> > > > > + * Jump to real kernel here with following constraints.
> > > > > + * 1. MMU should be disabled.
> > > > > + * 2. a0 should contain hartid
> > > > > + * 3. a1 should DT address
> > > > > + */
> > > > > +void __noreturn efi_enter_kernel(unsigned long entrypoint, unsigned long fdt,
> > > > > +                                unsigned long fdt_size)
> > > > > +{
> > > > > +       unsigned long kernel_entry = entrypoint + (unsigned long)stext_offset;
> > > > > +       jump_kernel_func jump_kernel = (jump_kernel_func) kernel_entry;
> > > > > +       u32 hartid = get_boot_hartid_from_fdt(fdt);
> > > > > +
> > > > > +       if (hartid == U32_MAX)
> > > > > +               /* We can not use panic or BUG at this point */
> > > > > +               __asm__ __volatile__ ("ebreak");
> > > > > +       /* Disable MMU */
> > > > > +       csr_write(CSR_SATP, 0);
> > > > > +       jump_kernel(hartid, fdt);
> > > > > +}
> > > > > +
> > > > > +efi_status_t handle_kernel_image(unsigned long *image_addr,
> > > > > +                                unsigned long *image_size,
> > > > > +                                unsigned long *reserve_addr,
> > > > > +                                unsigned long *reserve_size,
> > > > > +                                unsigned long dram_base,
> > > > > +                                efi_loaded_image_t *image)
> > > > > +{
> > > > > +       efi_status_t status;
> > > > > +       unsigned long kernel_size, kernel_memsize = 0;
> > > > > +       unsigned long max_alloc_address;
> > > > > +
> > > > > +       if (image->image_base != _start)
> > > > > +               pr_efi_err("FIRMWARE BUG: efi_loaded_image_t::image_base has bogus value\n");
> > > > > +
> > > >
> > > > I don't think you need this.
> > > >
> > >
> > > Sure. I will remove it. I guess ARM64 code has the error print for
> > > legacy loader code ?
> > >
> >
> > No, for broken distro versions of GRUB
> >
> > > > > +       kernel_size = _edata - _start;
> > > > > +       kernel_memsize = kernel_size + (_end - _edata);
> > > > > +       max_alloc_address = round_up(dram_base, MIN_KIMG_ALIGN) +
> > > > > +                           kernel_memsize;
> > > > > +
> > > >
> > > > You said the kernel could be anywhere in memory, as long as it is
> > > > aligned correctly, right?
> > >
> > > Sorry I was wrong about this. RISC-V kernel maps PAGE_OFFSET virtual
> > > address to the
> > > physical address <xyz> where it is booted. That means memory between
> > > dram start and and <xyz> address
> > > will be unusable.
> > >
> >
> > OK
> >
> > > I also realized that the above computing max_address as above also
> > > won't work for the following reason.
> > > efi_allocate_pages_aligned actually ALIGN_DOWN the max_address. Thus,
> > > efi won't find enough
> > > free memory in this case if the max_address is computed from the dram_base.
> > >
> > > Is there an implicit requirement for efi_allocate_pages_aligned or
> > > efi_low_alloc_above should be tried in case of failure?
> > >
> >
> > No not really. What ever works for your particular use case is acceptable to me.
> >
> > > > In that case, you don't need this, you can simply pass ULONG_MAX as
> > > > the max address.
> > > >
> > > As RISC-V should allocate memory as low as possible to avoid memory
> > > wastage, I think the following should work.
> > >
> > > efi_low_alloc_above(*reserve_size, MIN_KIMG_ALIGN, reserve_addr, dram_base);
> > >
> > > If this looks okay to you, efi_low_alloc_above should be moved back to
> > > mem.c from relocate.c.
> > > Should I do it in a separate patch or the original patch should be
> > > modified so that efi_low_alloc_above was never moved to relocate.c
> > >
> >
> > No, please keep efi_low_alloc_above() where it is, but drop the
> > static, and put back the declaration in efistub.h
> >
>
> Alternatively, can you check whether efi_relocate_kernel() already
> does what you need?

Yeah. efi_relocate_kernel works too. It's just that
efi_relocate_kernel expects a preferred address
which RISC-V doesn't care about. I can pass ULONG_MAX so that
efi_bs_call will fail and
efi_low_alloc_above will be invoked eventually.

I am also thinking to put a check in relocate_kernel for preferred
address != ULONG_MAX to avoid
an extra efi_bs_call. The extra call doesn't actually create an issue,
just a minor optimization.
But if that is not acceptable for generic code, that is fine as well.

Thanks for your suggestions and time.
-- 
Regards,
Atish

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
