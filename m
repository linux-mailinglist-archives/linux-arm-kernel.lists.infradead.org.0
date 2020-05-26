Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8403E1A7500
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 09:42:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CT0O2v7ZapMux0kwOAFLiGdWkCx5siJN3biqzUJHq1Y=; b=stQnjQPIYSWlA5
	8jKeSX79EjyU2PREprRZeesVsB5QoJ30fAAimm7suxso+NDftd17DEY4xNwHr9PfqNIYegg53Zqg4
	bH7dP0NIkNo3e7qmNnsGfXE8FaqgCdC/aDk/ytGr+w6XD8eOHQVLDjU35ckPziN08xn0kY5x7SK1B
	oaVen45Mhfj4JFSaOlukeldrF65hQVG+R9OlDbXlWFGvBwgdyX1IK5LZpWrDDUyH1MCYAHovQ2sQu
	M5O73EZYQkB3GtoeRRBur3nyJPS2cXN/oXXnJO/DUp+fs0lt6DwZNrXe5dVzU32uL1Hm20l7WQlpf
	AIXyrAVlmMcBMOCBjGgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOGD2-0006iE-Ic; Tue, 14 Apr 2020 07:42:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOGCv-0006hZ-J5; Tue, 14 Apr 2020 07:42:11 +0000
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com
 [209.85.166.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E36F220857;
 Tue, 14 Apr 2020 07:42:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586850128;
 bh=6uhrz44i5eT5f7oLOC1OL5FsVtDT/iQzuTX/CEU8+zg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=kkhRNFE9I2rpe6sQkWBvxuZaLVbg2k7qQG00iGfMn+/lB/f4EpTtiIstquxxZzcHx
 Boy3N8hW0XUYjpMpVWWDMxuiLsBLOIqw/GFFqVBO2tV9JEdob4OvPkRBe2168zb3DO
 KJ+dXf05/GRM9IhKGc/hQuPjx581hpLtIlKD/WKM=
Received: by mail-il1-f176.google.com with SMTP id d2so10713323ilc.0;
 Tue, 14 Apr 2020 00:42:07 -0700 (PDT)
X-Gm-Message-State: AGi0PubsagX0L2a6PnXs7fbwx7uFqn4kmJBAhrnNpdh8BvHfH1aJOp15
 FlBs8WkNVYibsZIlFLJsHAV9fRP8DodBzmcf9JM=
X-Google-Smtp-Source: APiQypKnsZnymajbRGIINhll+k8W8ECmHw5zlJZoQtqgJ3tUHBY0WQrKdUP+h27ZLkZch8vBVYS7Xb9sP2akdj5i40E=
X-Received: by 2002:a92:c788:: with SMTP id c8mr20566174ilk.279.1586850127067; 
 Tue, 14 Apr 2020 00:42:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200413212907.29244-1-atish.patra@wdc.com>
 <20200413212907.29244-6-atish.patra@wdc.com>
In-Reply-To: <20200413212907.29244-6-atish.patra@wdc.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 14 Apr 2020 09:41:56 +0200
X-Gmail-Original-Message-ID: <CAMj1kXEiQRORXMe4s_-iqmOefv-mbsPCtMT9ivJPvnkja+v0oQ@mail.gmail.com>
Message-ID: <CAMj1kXEiQRORXMe4s_-iqmOefv-mbsPCtMT9ivJPvnkja+v0oQ@mail.gmail.com>
Subject: Re: [v2 PATCH 5/5] RISC-V: Add EFI stub support.
To: Atish Patra <atish.patra@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_004209_678766_CC6318BE 
X-CRM114-Status: GOOD (  36.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>, Palmer Dabbelt <palmer@dabbelt.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 13 Apr 2020 at 23:29, Atish Patra <atish.patra@wdc.com> wrote:
>
> Add a RISC-V architecture specific stub code that actually copies the
> actual kernel image to a valid address and jump to it after boot services
> are terminated. Enable UEFI related kernel configs as well for RISC-V.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/Kconfig                        |  20 ++++
>  arch/riscv/Makefile                       |   1 +
>  arch/riscv/configs/defconfig              |   1 +
>  arch/riscv/include/asm/efi.h              |  45 ++++++++
>  drivers/firmware/efi/Kconfig              |   2 +-
>  drivers/firmware/efi/libstub/Makefile     |   8 ++
>  drivers/firmware/efi/libstub/riscv-stub.c | 131 ++++++++++++++++++++++
>  7 files changed, 207 insertions(+), 1 deletion(-)
>  create mode 100644 arch/riscv/include/asm/efi.h
>  create mode 100644 drivers/firmware/efi/libstub/riscv-stub.c
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index f39e326a7a42..eb4f41c8f3ce 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -379,10 +379,30 @@ config CMDLINE_FORCE
>
>  endchoice
>
> +config EFI_STUB
> +       bool
> +
> +config EFI
> +       bool "UEFI runtime support"
> +       depends on OF
> +       select LIBFDT
> +       select UCS2_STRING
> +       select EFI_PARAMS_FROM_FDT
> +       select EFI_STUB
> +       select EFI_GENERIC_STUB
> +       default y
> +       help
> +         This option provides support for runtime services provided
> +         by UEFI firmware (such as non-volatile variables, realtime
> +          clock, and platform reset). A UEFI stub is also provided to
> +         allow the kernel to be booted as an EFI application. This
> +         is only useful on systems that have UEFI firmware.
> +
>  endmenu
>
>  menu "Power management options"
>
>  source "kernel/power/Kconfig"
> +source "drivers/firmware/Kconfig"
>
>  endmenu
> diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> index fb6e37db836d..079435804d6d 100644
> --- a/arch/riscv/Makefile
> +++ b/arch/riscv/Makefile
> @@ -80,6 +80,7 @@ head-y := arch/riscv/kernel/head.o
>  core-y += arch/riscv/
>
>  libs-y += arch/riscv/lib/
> +core-$(CONFIG_EFI_STUB) += $(objtree)/drivers/firmware/efi/libstub/lib.a
>
>  PHONY += vdso_install
>  vdso_install:
> diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
> index 4da4886246a4..ae69e12d306a 100644
> --- a/arch/riscv/configs/defconfig
> +++ b/arch/riscv/configs/defconfig
> @@ -129,3 +129,4 @@ CONFIG_DEBUG_BLOCK_EXT_DEVT=y
>  # CONFIG_RUNTIME_TESTING_MENU is not set
>  CONFIG_MEMTEST=y
>  # CONFIG_SYSFS_SYSCALL is not set
> +CONFIG_EFI=y
> diff --git a/arch/riscv/include/asm/efi.h b/arch/riscv/include/asm/efi.h
> new file mode 100644
> index 000000000000..ba0a6d35cc15
> --- /dev/null
> +++ b/arch/riscv/include/asm/efi.h
> @@ -0,0 +1,45 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (C) 2020 Western Digital Corporation or its affiliates.
> + * Based on arch/arm64/include/asm/efi.h
> + */
> +#ifndef _ASM_EFI_H
> +#define _ASM_EFI_H
> +
> +#include <asm/io.h>
> +#include <asm/mmu_context.h>
> +#include <asm/ptrace.h>
> +#include <asm/tlbflush.h>
> +
> +#define VA_BITS_MIN 39
> +
> +/* on RISC-V, the FDT may be located anywhere in system RAM */
> +static inline unsigned long efi_get_max_fdt_addr(unsigned long dram_base)
> +{
> +       return ULONG_MAX;
> +}
> +
> +/* Load initrd at enough distance from DRAM start */
> +static inline unsigned long efi_get_max_initrd_addr(unsigned long dram_base,
> +                                                   unsigned long image_addr)
> +{
> +       return dram_base + SZ_256M;
> +}
> +
> +#define efi_bs_call(func, ...) efi_system_table()->boottime->func(__VA_ARGS__)
> +#define efi_rt_call(func, ...) efi_system_table()->runtime->func(__VA_ARGS__)
> +#define efi_is_native()                (true)
> +
> +#define efi_table_attr(inst, attr)     (inst->attr)
> +
> +#define efi_call_proto(inst, func, ...) inst->func(inst, ##__VA_ARGS__)
> +
> +#define alloc_screen_info(x...)                (&screen_info)
> +extern char stext_offset[];
> +
> +static inline void free_screen_info(struct screen_info *si)
> +{
> +}
> +#define EFI_ALLOC_ALIGN                SZ_64K
> +
> +#endif /* _ASM_EFI_H */
> diff --git a/drivers/firmware/efi/Kconfig b/drivers/firmware/efi/Kconfig
> index 2a2b2b96a1dc..fcdc789d3f87 100644
> --- a/drivers/firmware/efi/Kconfig
> +++ b/drivers/firmware/efi/Kconfig
> @@ -111,7 +111,7 @@ config EFI_GENERIC_STUB
>
>  config EFI_ARMSTUB_DTB_LOADER
>         bool "Enable the DTB loader"
> -       depends on EFI_GENERIC_STUB
> +       depends on EFI_GENERIC_STUB && !RISCV
>         default y
>         help
>           Select this config option to add support for the dtb= command
> diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> index d590504541f6..b1db3a793c43 100644
> --- a/drivers/firmware/efi/libstub/Makefile
> +++ b/drivers/firmware/efi/libstub/Makefile
> @@ -22,6 +22,8 @@ cflags-$(CONFIG_ARM64)                := $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
>  cflags-$(CONFIG_ARM)           := $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
>                                    -fno-builtin -fpic \
>                                    $(call cc-option,-mno-single-pic-base)
> +cflags-$(CONFIG_RISCV)         := $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
> +                                  -fpic
>
>  cflags-$(CONFIG_EFI_GENERIC_STUB)      += -I$(srctree)/scripts/dtc/libfdt
>
> @@ -56,6 +58,7 @@ lib-$(CONFIG_EFI_GENERIC_STUB)                += efi-stub.o fdt.o string.o \
>  lib-$(CONFIG_ARM)              += arm32-stub.o
>  lib-$(CONFIG_ARM64)            += arm64-stub.o
>  lib-$(CONFIG_X86)              += x86-stub.o
> +lib-$(CONFIG_RISCV)            += riscv-stub.o
>  CFLAGS_arm32-stub.o            := -DTEXT_OFFSET=$(TEXT_OFFSET)
>  CFLAGS_arm64-stub.o            := -DTEXT_OFFSET=$(TEXT_OFFSET)
>
> @@ -80,6 +83,11 @@ STUBCOPY_FLAGS-$(CONFIG_ARM64)       += --prefix-alloc-sections=.init \
>                                    --prefix-symbols=__efistub_
>  STUBCOPY_RELOC-$(CONFIG_ARM64) := R_AARCH64_ABS
>
> +STUBCOPY_FLAGS-$(CONFIG_RISCV) += --prefix-alloc-sections=.init \
> +                                  --prefix-symbols=__efistub_
> +STUBCOPY_RELOC-$(CONFIG_RISCV) := R_RISCV_HI20
> +
> +
>  $(obj)/%.stub.o: $(obj)/%.o FORCE
>         $(call if_changed,stubcopy)
>
> diff --git a/drivers/firmware/efi/libstub/riscv-stub.c b/drivers/firmware/efi/libstub/riscv-stub.c
> new file mode 100644
> index 000000000000..acb69eae187a
> --- /dev/null
> +++ b/drivers/firmware/efi/libstub/riscv-stub.c
> @@ -0,0 +1,131 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2013, 2014 Linaro Ltd;  <roy.franz@linaro.org>
> + * Copyright (C) 2020 Western Digital Corporation or its affiliates.
> + *
> + * This file implements the EFI boot stub for the RISC-V kernel.
> + * Adapted from ARM64 version at drivers/firmware/efi/libstub/arm64-stub.c.
> + */
> +
> +#include <linux/efi.h>
> +#include <linux/libfdt.h>
> +#include <linux/libfdt_env.h>
> +#include <asm/efi.h>
> +#include <asm/sections.h>
> +
> +#include "efistub.h"
> +/*
> + * RISCV requires the kernel image to placed TEXT_OFFSET bytes beyond a 2 MB
> + * aligned base for 64 bit and 4MB for 32 bit.
> + */
> +#ifdef CONFIG_64BIT
> +#define MIN_KIMG_ALIGN SZ_2M
> +#else
> +#define MIN_KIMG_ALIGN SZ_4M
> +#endif
> +/*
> + * TEXT_OFFSET ensures that we don't overwrite the firmware that probably sits
> + * at the beginning of the DRAM.
> + */
> +#define TEXT_OFFSET MIN_KIMG_ALIGN
> +

Again, this is not the right approach. If there are any allocations in
memory that EFI cannot touch, you have to mark them as reserved in the
EFI memory map. Otherwise, anything running in the EFI context (GRUB,
systemd-boot, shim, etc) could step on it, not just the kernel.

> +typedef __attribute__((noreturn)) void (*jump_kernel_func)(unsigned int,
> +                                                          unsigned long);
> +efi_status_t check_platform_features(void)
> +{
> +       return EFI_SUCCESS;
> +}
> +
> +static u32 get_boot_hartid_from_fdt(unsigned long fdt)
> +{
> +       int chosen_node, len;
> +       const fdt32_t *prop;
> +
> +       chosen_node = fdt_path_offset((void *)fdt, "/chosen");
> +       if (chosen_node < 0)
> +               return U32_MAX;
> +       prop = fdt_getprop((void *)fdt, chosen_node, "boot-hartid", &len);
> +       if (!prop || len != sizeof(u32))
> +               return U32_MAX;
> +
> +       return fdt32_to_cpu(*prop);
> +}
> +
> +/*
> + * Jump to real kernel here with following constraints.
> + * 1. MMU should be disabled.
> + * 2. a0 should contain hartid
> + * 3. a1 should DT address
> + */
> +void __noreturn efi_enter_kernel(unsigned long entrypoint, unsigned long fdt,
> +                                unsigned long fdt_size)
> +{
> +       unsigned long kernel_entry = entrypoint + (unsigned long)stext_offset;
> +       jump_kernel_func jump_kernel = (void (*)(unsigned int, unsigned long))kernel_entry;
> +       u32 hartid = get_boot_hartid_from_fdt(fdt);
> +
> +       if (hartid == U32_MAX)
> +               /* We can not use panic or BUG at this point */
> +               __asm__ __volatile__ ("ebreak");
> +       /* Disable MMU */
> +       csr_write(CSR_SATP, 0);
> +       jump_kernel(hartid, fdt);
> +}
> +
> +efi_status_t handle_kernel_image(unsigned long *image_addr,
> +                                unsigned long *image_size,
> +                                unsigned long *reserve_addr,
> +                                unsigned long *reserve_size,
> +                                unsigned long dram_base,
> +                                efi_loaded_image_t *image)
> +{
> +       efi_status_t status;
> +       unsigned long kernel_size, kernel_memsize = 0;
> +       unsigned long preferred_offset;
> +
> +       /*
> +        * The preferred offset of the kernel Image is TEXT_OFFSET bytes beyond
> +        * a KIMG_ALIGN aligned base.

MIN_KIMG_ALIGN

> +        */
> +       preferred_offset = round_up(dram_base, MIN_KIMG_ALIGN) + TEXT_OFFSET;
> +
> +       kernel_size = _edata - _start;
> +       kernel_memsize = kernel_size + (_end - _edata);
> +
> +       /*
> +        * Try a straight allocation at the preferred offset. It will also
> +        * ensure that, on platforms where the [dram_base, dram_base + TEXT_OFFSET)
> +        * interval is partially occupied by the firmware we can still place
> +        * the kernel at the address 'dram_base + TEXT_OFFSET'. If the straight
> +        * allocation fails, efi_low_alloc tries allocate memory from the lowest
> +        * available LOADER_DATA mapped memory as long as address and size meet
> +        * the alignment constraints.
> +        */
> +       if (*image_addr == preferred_offset)
> +               return EFI_SUCCESS;
> +
> +       *image_addr = *reserve_addr = preferred_offset;
> +       *reserve_size = round_up(kernel_memsize, EFI_ALLOC_ALIGN);
> +
> +       status = efi_bs_call(allocate_pages, EFI_ALLOCATE_ADDRESS,
> +                               EFI_LOADER_DATA,
> +                               *reserve_size / EFI_PAGE_SIZE,
> +                               (efi_physical_addr_t *)reserve_addr);
> +
> +       if (status != EFI_SUCCESS) {
> +               pr_efi("straight allocation failed do a low alloc\n");
> +               *reserve_size = kernel_memsize + TEXT_OFFSET;
> +               status = efi_low_alloc(*reserve_size, MIN_KIMG_ALIGN,
> +                                      reserve_addr);
> +

So, instead of the above, could we simply allocate kernel_memsize
bytes using efi_allocate_pages(), with the max address set to
'round_up(dram_base, MIN_KIMG_ALIGN) + kernel_memsize + TEXT_OFFSET -
1'? This should work in the majority of cases, and not trample on the
TEXT_OFFSET bytes at the start, regardless of whether they are
reserved or not.

In the future, I imagine you may want to relax the requirements
regarding the physical placement of the kernel, in which case you can
start falling back to a suitably aligned allocation anywhere in
memory.



> +               if (status != EFI_SUCCESS) {
> +                       pr_efi_err("Failed to relocate kernel\n");
> +                       *reserve_size = 0;
> +                       return status;
> +               }
> +               *image_addr = *reserve_addr + TEXT_OFFSET;
> +       }
> +       memcpy((void *)*image_addr, image->image_base, kernel_size);
> +
> +       return EFI_SUCCESS;
> +}
> --
> 2.24.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
