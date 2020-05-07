Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 016A11C97C9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 19:29:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kRXxib3vBsRlVcIl+SQcc0qJQljcmDoSOaZdP92KAw4=; b=i6XOl0fH1HImzg
	WT7HwDi1cV2HhsY+j0BWfA6GN3QEAp6xPruKYbRg+3j+WMdeJKD6ZX2IEKbem+RyAn2LZuISZanPI
	yRKVyaKP/YCuG8MdRJgNlHPMlCP6JdtsTIci1mhK6Kv8HWwvxX7ZIAemOfUFja2ydtjMqMQa5JlSV
	22GFrVO0gAgkfgcQWUqce0/WeFD4Q9VaXvzAepXGneRSOu305/vSQSRBxuTFEd9CW4405hU++rCeQ
	mv77ucLGihIGS1CuFvQ0d70VStsqs3wzdMYhw8IRuYjH6eHEoPHi3EvDf+mlxeYuwN2vPA49O4vMk
	z9luyicREsddsvXQU35A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWkKo-00011o-OX; Thu, 07 May 2020 17:29:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWkKB-0000fw-Oq
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 17:28:51 +0000
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com
 [209.85.166.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4653824955
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  7 May 2020 17:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588872523;
 bh=NKlWJ2mf3GMIppE/11FQqCihv+zM9noHCmzTY/on4NE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=E3DFeIHgrCO8NjMY3TdmlHSbZwF8fSKkhClpEYdzwiOJ5thMc5FmT+yBZD+koQsWj
 QPs1kb2kZ+mWQDh1dJhL9cAPV9vb0RBGaawt08hJoOT7g+YkMZvq5IEc8aNJdIbKes
 /gombxZGUhRj67e9W51aX9JpR9k5qAfMyhntEExk=
Received: by mail-il1-f173.google.com with SMTP id x2so1562328ilp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 10:28:43 -0700 (PDT)
X-Gm-Message-State: AGi0PubeUlfE+OkOQYWmPix7GaE4BiE+iUvMJYzyvMf5z+tBPi8PbW8C
 nwohxXHohutNlMjb9EuEnkv5ABS11APR4L5EP2k=
X-Google-Smtp-Source: APiQypJeZUYOswDUzcXGJeyxztZyS3yyqdhCg00rBZ3EjQpLSNhTrYQ5PFQtOtE5S0FuYnmL7exOZ9afLp5K2EyDFU0=
X-Received: by 2002:a92:aa0f:: with SMTP id j15mr16045724ili.211.1588872522480; 
 Thu, 07 May 2020 10:28:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200507124522.171323-1-linus.walleij@linaro.org>
 <20200507124522.171323-4-linus.walleij@linaro.org>
In-Reply-To: <20200507124522.171323-4-linus.walleij@linaro.org>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 7 May 2020 19:28:31 +0200
X-Gmail-Original-Message-ID: <CAMj1kXGHBPbR8qj0CEQjH-0OWh273wtO6Y0vBt-af65yogaYKA@mail.gmail.com>
Message-ID: <CAMj1kXGHBPbR8qj0CEQjH-0OWh273wtO6Y0vBt-af65yogaYKA@mail.gmail.com>
Subject: Re: [PATCH 3/5 v8] ARM: Define the virtual space of KASan's shadow
 region
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_102843_859972_C1F49D79 
X-CRM114-Status: GOOD (  43.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Abbott Liu <liuwenliang@huawei.com>, Russell King <linux@armlinux.org.uk>,
 kasan-dev <kasan-dev@googlegroups.com>,
 Alexander Potapenko <glider@google.com>, Dmitry Vyukov <dvyukov@google.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 7 May 2020 at 14:47, Linus Walleij <linus.walleij@linaro.org> wrote:
>
> From: Abbott Liu <liuwenliang@huawei.com>
>
> Define KASAN_SHADOW_OFFSET,KASAN_SHADOW_START and KASAN_SHADOW_END for
> the Arm kernel address sanitizer. We are "stealing" lowmem (the 4GB
> addressable by a 32bit architecture) out of the virtual address
> space to use as shadow memory for KASan as follows:
>
>  +----+ 0xffffffff
>  |    |\
>  |    | |-> Static kernel image (vmlinux) BSS and page table
>  |    |/
>  +----+ PAGE_OFFSET
>  |    |\
>  |    | |->  Loadable kernel modules virtual address space area
>  |    |/
>  +----+ MODULES_VADDR = KASAN_SHADOW_END
>  |    |\
>  |    | |-> The shadow area of kernel virtual address.
>  |    |/
>  +----+->  TASK_SIZE (start of kernel space) = KASAN_SHADOW_START the
>  |    |\   shadow address of MODULES_VADDR
>  |    | |
>  |    | |
>  |    | |-> The user space area in lowmem. The kernel address
>  |    | |   sanitizer do not use this space, nor does it map it.
>  |    | |
>  |    | |
>  |    | |
>  |    | |
>  |    |/
>  ------ 0
>
> 0 .. TASK_SIZE is the memory that can be used by shared
> userspace/kernelspace. It us used for userspace processes and for
> passing parameters and memory buffers in system calls etc. We do not
> need to shadow this area.
>
> KASAN_SHADOW_START:
>  This value begins with the MODULE_VADDR's shadow address. It is the
>  start of kernel virtual space. Since we have modules to load, we need
>  to cover also that area with shadow memory so we can find memory
>  bugs in modules.
>
> KASAN_SHADOW_END
>  This value is the 0x100000000's shadow address: the mapping that would
>  be after the end of the kernel memory at 0xffffffff. It is the end of
>  kernel address sanitizer shadow area. It is also the start of the
>  module area.
>
> KASAN_SHADOW_OFFSET:
>  This value is used to map an address to the corresponding shadow
>  address by the following formula:
>
>    shadow_addr = (address >> 3) + KASAN_SHADOW_OFFSET;
>
>  As you would expect, >> 3 is equal to dividing by 8, meaning each
>  byte in the shadow memory covers 8 bytes of kernel memory, so one
>  bit shadow memory per byte of kernel memory is used.
>
>  The KASAN_SHADOW_OFFSET is provided in a Kconfig option depending
>  on the VMSPLIT layout of the system: the kernel and userspace can
>  split up lowmem in different ways according to needs, so we calculate
>  the shadow offset depending on this.
>
> When kasan is enabled, the definition of TASK_SIZE is not an 8-bit
> rotated constant, so we need to modify the TASK_SIZE access code in the
> *.s file.
>
> The kernel and modules may use different amounts of memory,
> according to the VMSPLIT configuration, which in turn
> determines the PAGE_OFFSET.
>
> We use the following KASAN_SHADOW_OFFSETs depending on how the
> virtual memory is split up:
>
> - 0x1f000000 if we have 1G userspace / 3G kernelspace split:
>   - The kernel address space is 3G (0xc0000000)
>   - PAGE_OFFSET is then set to 0x40000000 so the kernel static
>     image (vmlinux) uses addresses 0x40000000 .. 0xffffffff
>   - On top of that we have the MODULES_VADDR which under
>     the worst case (using ARM instructions) is
>     PAGE_OFFSET - 16M (0x01000000) = 0x3f000000
>     so the modules use addresses 0x3f000000 .. 0x3fffffff
>   - So the addresses 0x3f000000 .. 0xffffffff need to be
>     covered with shadow memory. That is 0xc1000000 bytes
>     of memory.
>   - 1/8 of that is needed for its shadow memory, so
>     0x18200000 bytes of shadow memory is needed. We
>     "steal" that from the remaining lowmem.
>   - The KASAN_SHADOW_START becomes 0x26e00000, to
>     KASAN_SHADOW_END at 0x3effffff.
>   - Now we can calculate the KASAN_SHADOW_OFFSET for any
>     kernel address as 0x3f000000 needs to map to the first
>     byte of shadow memory and 0xffffffff needs to map to
>     the last byte of shadow memory. Since:
>     SHADOW_ADDR = (address >> 3) + KASAN_SHADOW_OFFSET
>     0x26e00000 = (0x3f000000 >> 3) + KASAN_SHADOW_OFFSET
>     KASAN_SHADOW_OFFSET = 0x26e00000 - (0x3f000000 >> 3)
>     KASAN_SHADOW_OFFSET = 0x26e00000 - 0x07e00000
>     KASAN_SHADOW_OFFSET = 0x1f000000
>
> - 0x5f000000 if we have 2G userspace / 2G kernelspace split:
>   - The kernel space is 2G (0x80000000)
>   - PAGE_OFFSET is set to 0x80000000 so the kernel static
>     image uses 0x80000000 .. 0xffffffff.
>   - On top of that we have the MODULES_VADDR which under
>     the worst case (using ARM instructions) is
>     PAGE_OFFSET - 16M (0x01000000) = 0x7f000000
>     so the modules use addresses 0x7f000000 .. 0x7fffffff
>   - So the addresses 0x7f000000 .. 0xffffffff need to be
>     covered with shadow memory. That is 0x81000000 bytes
>     of memory.
>   - 1/8 of that is needed for its shadow memory, so
>     0x10200000 bytes of shadow memory is needed. We
>     "steal" that from the remaining lowmem.
>   - The KASAN_SHADOW_START becomes 0x6ee00000, to
>     KASAN_SHADOW_END at 0x7effffff.
>   - Now we can calculate the KASAN_SHADOW_OFFSET for any
>     kernel address as 0x7f000000 needs to map to the first
>     byte of shadow memory and 0xffffffff needs to map to
>     the last byte of shadow memory. Since:
>     SHADOW_ADDR = (address >> 3) + KASAN_SHADOW_OFFSET
>     0x6ee00000 = (0x7f000000 >> 3) + KASAN_SHADOW_OFFSET
>     KASAN_SHADOW_OFFSET = 0x6ee00000 - (0x7f000000 >> 3)
>     KASAN_SHADOW_OFFSET = 0x6ee00000 - 0x0fe00000
>     KASAN_SHADOW_OFFSET = 0x5f000000
>
> - 0x9f000000 if we have 3G userspace / 1G kernelspace split,
>   and this is the default split for ARM:
>   - The kernel address space is 1GB (0x40000000)
>   - PAGE_OFFSET is set to 0xc0000000 so the kernel static
>     image uses 0xc0000000 .. 0xffffffff.
>   - On top of that we have the MODULES_VADDR which under
>     the worst case (using ARM instructions) is
>     PAGE_OFFSET - 16M (0x01000000) = 0xbf000000
>     so the modules use addresses 0xbf000000 .. 0xbfffffff
>   - So the addresses 0xbf000000 .. 0xffffffff need to be
>     covered with shadow memory. That is 0x41000000 bytes
>     of memory.
>   - 1/8 of that is needed for its shadow memory, so
>     0x08200000 bytes of shadow memory is needed. We
>     "steal" that from the remaining lowmem.
>   - The KASAN_SHADOW_START becomes 0xb6e00000, to
>     KASAN_SHADOW_END at 0xbfffffff.
>   - Now we can calculate the KASAN_SHADOW_OFFSET for any
>     kernel address as 0xbf000000 needs to map to the first
>     byte of shadow memory and 0xffffffff needs to map to
>     the last byte of shadow memory. Since:
>     SHADOW_ADDR = (address >> 3) + KASAN_SHADOW_OFFSET
>     0xb6e00000 = (0xbf000000 >> 3) + KASAN_SHADOW_OFFSET
>     KASAN_SHADOW_OFFSET = 0xb6e00000 - (0xbf000000 >> 3)
>     KASAN_SHADOW_OFFSET = 0xb6e00000 - 0x17e00000
>     KASAN_SHADOW_OFFSET = 0x9f000000
>
> - 0x8f000000 if we have 3G userspace / 1G kernelspace with
>   full 1 GB low memory (VMSPLIT_3G_OPT):
>   - The kernel address space is 1GB (0x40000000)
>   - PAGE_OFFSET is set to 0xb0000000 so the kernel static
>     image uses 0xb0000000 .. 0xffffffff.
>   - On top of that we have the MODULES_VADDR which under
>     the worst case (using ARM instructions) is
>     PAGE_OFFSET - 16M (0x01000000) = 0xaf000000
>     so the modules use addresses 0xaf000000 .. 0xaffffff
>   - So the addresses 0xaf000000 .. 0xffffffff need to be
>     covered with shadow memory. That is 0x51000000 bytes
>     of memory.
>   - 1/8 of that is needed for its shadow memory, so
>     0x0a200000 bytes of shadow memory is needed. We
>     "steal" that from the remaining lowmem.
>   - The KASAN_SHADOW_START becomes 0xa4e00000, to
>     KASAN_SHADOW_END at 0xaeffffff.
>   - Now we can calculate the KASAN_SHADOW_OFFSET for any
>     kernel address as 0xaf000000 needs to map to the first
>     byte of shadow memory and 0xffffffff needs to map to
>     the last byte of shadow memory. Since:
>     SHADOW_ADDR = (address >> 3) + KASAN_SHADOW_OFFSET
>     0xa4e00000 = (0xaf000000 >> 3) + KASAN_SHADOW_OFFSET
>     KASAN_SHADOW_OFFSET = 0xa4e00000 - (0xaf000000 >> 3)
>     KASAN_SHADOW_OFFSET = 0xa4e00000 - 0x15e00000
>     KASAN_SHADOW_OFFSET = 0x8f000000
>
> - The default value of 0xffffffff for KASAN_SHADOW_OFFSET
>   is an error value. We should always match one of the
>   above shadow offsets.
>
> When we do this, TASK_SIZE will sometimes get a bit odd values
> that will not fit into immediate mov assembly instructions.
> To account for this, we need to rewrite some assembly using
> TASK_SIZE like this:
>
> -       mov     r1, #TASK_SIZE
> +       ldr     r1, =TASK_SIZE
>
> or
>
> -       cmp     r4, #TASK_SIZE
> +       ldr     r0, =TASK_SIZE
> +       cmp     r4, r0
>
> this is done to avoid the immediate #TASK_SIZE that need to
> fit into a limited number of bits.
>

It would be good to note that the assembler will actually turn this
into a mov instruction if the immediate fits, so these LDRs will only
be true loads in the CONFIG_KASAN=y case.


> Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
> Cc: Alexander Potapenko <glider@google.com>
> Cc: Dmitry Vyukov <dvyukov@google.com>
> Cc: kasan-dev@googlegroups.com
> Reported-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Signed-off-by: Abbott Liu <liuwenliang@huawei.com>
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ChangeLog v7->v8:
> - Rewrote the PMD clearing code to take into account that
>   KASan may not always be adjacent to MODULES_VADDR: if we
>   compile for thumb, then there will be an 8 MB hole between
>   the shadow memory and MODULES_VADDR. Make this explicit and
>   use the KASAN defines with an explicit ifdef so it is clear
>   what is going on in the prepare_page_table().
> - Patch memory.rst to reflect the location of KASan shadow
>   memory.
> ChangeLog v6->v7:
> - Use the SPDX license identifier.
> - Rewrote the commit message and updates the illustration.
> - Move KASAN_OFFSET Kconfig set-up into this patch and put it
>   right after PAGE_OFFSET so it is clear how this works, and
>   we have all defines in one patch.
> - Added KASAN_SHADOW_OFFSET of 0x8f000000 for 3G_OPT.
>   See the calculation in the commit message.
> - Updated the commit message with detailed information on
>   how KASAN_SHADOW_OFFSET is obtained for the different
>   VMSPLIT/PAGE_OFFSET options.
> ---
>  Documentation/arm/memory.rst     |  5 ++
>  arch/arm/Kconfig                 |  9 ++++
>  arch/arm/include/asm/kasan_def.h | 81 ++++++++++++++++++++++++++++++++
>  arch/arm/include/asm/memory.h    |  5 ++
>  arch/arm/kernel/entry-armv.S     |  5 +-
>  arch/arm/kernel/entry-common.S   |  9 ++--
>  arch/arm/mm/mmu.c                | 18 +++++++
>  7 files changed, 127 insertions(+), 5 deletions(-)
>  create mode 100644 arch/arm/include/asm/kasan_def.h
>
> diff --git a/Documentation/arm/memory.rst b/Documentation/arm/memory.rst
> index 0521b4ce5c96..36bae90cfb1e 100644
> --- a/Documentation/arm/memory.rst
> +++ b/Documentation/arm/memory.rst
> @@ -72,6 +72,11 @@ MODULES_VADDR        MODULES_END-1   Kernel module space
>                                 Kernel modules inserted via insmod are
>                                 placed here using dynamic mappings.
>
> +TASK_SIZE      MODULES_VADDR-1 KASAn shadow memory when KASan is in use.
> +                               The range from MODULES_VADDR to the top
> +                               of the memory is shadowed here with 1 bit
> +                               per byte of memory.
> +
>  00001000       TASK_SIZE-1     User space mappings
>                                 Per-thread mappings are placed here via
>                                 the mmap() system call.
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 66a04f6f4775..f6f2d3b202f5 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -1325,6 +1325,15 @@ config PAGE_OFFSET
>         default 0xB0000000 if VMSPLIT_3G_OPT
>         default 0xC0000000
>
> +config KASAN_SHADOW_OFFSET
> +       hex
> +       depends on KASAN
> +       default 0x1f000000 if PAGE_OFFSET=0x40000000
> +       default 0x5f000000 if PAGE_OFFSET=0x80000000
> +       default 0x9f000000 if PAGE_OFFSET=0xC0000000
> +       default 0x8f000000 if PAGE_OFFSET=0xB0000000
> +       default 0xffffffff
> +
>  config NR_CPUS
>         int "Maximum number of CPUs (2-32)"
>         range 2 32
> diff --git a/arch/arm/include/asm/kasan_def.h b/arch/arm/include/asm/kasan_def.h
> new file mode 100644
> index 000000000000..5739605aa7cf
> --- /dev/null
> +++ b/arch/arm/include/asm/kasan_def.h
> @@ -0,0 +1,81 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + *  arch/arm/include/asm/kasan_def.h
> + *
> + *  Copyright (c) 2018 Huawei Technologies Co., Ltd.
> + *
> + *  Author: Abbott Liu <liuwenliang@huawei.com>
> + */
> +
> +#ifndef __ASM_KASAN_DEF_H
> +#define __ASM_KASAN_DEF_H
> +
> +#ifdef CONFIG_KASAN
> +
> +/*
> + * Define KASAN_SHADOW_OFFSET,KASAN_SHADOW_START and KASAN_SHADOW_END for
> + * the Arm kernel address sanitizer. We are "stealing" lowmem (the 4GB
> + * addressable by a 32bit architecture) out of the virtual address
> + * space to use as shadow memory for KASan as follows:
> + *
> + * +----+ 0xffffffff
> + * |    |                                                      \
> + * |    | |-> Static kernel image (vmlinux) BSS and page table
> + * |    |/
> + * +----+ PAGE_OFFSET
> + * |    |                                                      \
> + * |    | |->  Loadable kernel modules virtual address space area
> + * |    |/
> + * +----+ MODULES_VADDR = KASAN_SHADOW_END
> + * |    |                                              \
> + * |    | |-> The shadow area of kernel virtual address.
> + * |    |/
> + * +----+->  TASK_SIZE (start of kernel space) = KASAN_SHADOW_START the
> + * |    |\   shadow address of MODULES_VADDR
> + * |    | |
> + * |    | |
> + * |    | |-> The user space area in lowmem. The kernel address
> + * |    | |   sanitizer do not use this space, nor does it map it.
> + * |    | |
> + * |    | |
> + * |    | |
> + * |    | |
> + * |    |/
> + * ------ 0
> + *
> + * 1) KASAN_SHADOW_START
> + *   This value begins with the MODULE_VADDR's shadow address. It is the
> + *   start of kernel virtual space. Since we have modules to load, we need
> + *   to cover also that area with shadow memory so we can find memory
> + *   bugs in modules.
> + *
> + * 2) KASAN_SHADOW_END
> + *   This value is the 0x100000000's shadow address: the mapping that would
> + *   be after the end of the kernel memory at 0xffffffff. It is the end of
> + *   kernel address sanitizer shadow area. It is also the start of the
> + *   module area.
> + *
> + * 3) KASAN_SHADOW_OFFSET:
> + *   This value is used to map an address to the corresponding shadow
> + *   address by the following formula:
> + *
> + *     shadow_addr = (address >> 3) + KASAN_SHADOW_OFFSET;
> + *
> + *  As you would expect, >> 3 is equal to dividing by 8, meaning each
> + *  byte in the shadow memory covers 8 bytes of kernel memory, so one
> + *  bit shadow memory per byte of kernel memory is used.
> + *
> + *  The KASAN_SHADOW_OFFSET is provided in a Kconfig option depending
> + *  on the VMSPLIT layout of the system: the kernel and userspace can
> + *  split up lowmem in different ways according to needs, so we calculate
> + *  the shadow offset depending on this.
> + */
> +
> +#define KASAN_SHADOW_SCALE_SHIFT       3
> +#define KASAN_SHADOW_OFFSET    _AC(CONFIG_KASAN_SHADOW_OFFSET, UL)
> +#define KASAN_SHADOW_END       ((UL(1) << (32 - KASAN_SHADOW_SCALE_SHIFT)) \
> +                                + KASAN_SHADOW_OFFSET)
> +#define KASAN_SHADOW_START      ((KASAN_SHADOW_END >> 3) + KASAN_SHADOW_OFFSET)
> +
> +#endif
> +#endif
> diff --git a/arch/arm/include/asm/memory.h b/arch/arm/include/asm/memory.h
> index 99035b5891ef..5cfa9e5dc733 100644
> --- a/arch/arm/include/asm/memory.h
> +++ b/arch/arm/include/asm/memory.h
> @@ -18,6 +18,7 @@
>  #ifdef CONFIG_NEED_MACH_MEMORY_H
>  #include <mach/memory.h>
>  #endif
> +#include <asm/kasan_def.h>
>
>  /* PAGE_OFFSET - the virtual address of the start of the kernel image */
>  #define PAGE_OFFSET            UL(CONFIG_PAGE_OFFSET)
> @@ -28,7 +29,11 @@
>   * TASK_SIZE - the maximum size of a user space task.
>   * TASK_UNMAPPED_BASE - the lower boundary of the mmap VM area
>   */
> +#ifndef CONFIG_KASAN
>  #define TASK_SIZE              (UL(CONFIG_PAGE_OFFSET) - UL(SZ_16M))
> +#else
> +#define TASK_SIZE              (KASAN_SHADOW_START)
> +#endif
>  #define TASK_UNMAPPED_BASE     ALIGN(TASK_SIZE / 3, SZ_16M)
>
>  /*
> diff --git a/arch/arm/kernel/entry-armv.S b/arch/arm/kernel/entry-armv.S
> index 77f54830554c..7548d38599ae 100644
> --- a/arch/arm/kernel/entry-armv.S
> +++ b/arch/arm/kernel/entry-armv.S
> @@ -180,7 +180,7 @@ ENDPROC(__und_invalid)
>
>         get_thread_info tsk
>         ldr     r0, [tsk, #TI_ADDR_LIMIT]
> -       mov     r1, #TASK_SIZE
> +       ldr     r1, =TASK_SIZE
>         str     r1, [tsk, #TI_ADDR_LIMIT]
>         str     r0, [sp, #SVC_ADDR_LIMIT]
>
> @@ -434,7 +434,8 @@ ENDPROC(__fiq_abt)
>         @ if it was interrupted in a critical region.  Here we
>         @ perform a quick test inline since it should be false
>         @ 99.9999% of the time.  The rest is done out of line.
> -       cmp     r4, #TASK_SIZE
> +       ldr     r0, =TASK_SIZE
> +       cmp     r4, r0
>         blhs    kuser_cmpxchg64_fixup
>  #endif
>  #endif
> diff --git a/arch/arm/kernel/entry-common.S b/arch/arm/kernel/entry-common.S
> index 271cb8a1eba1..fee279e28a72 100644
> --- a/arch/arm/kernel/entry-common.S
> +++ b/arch/arm/kernel/entry-common.S
> @@ -50,7 +50,8 @@ __ret_fast_syscall:
>   UNWIND(.cantunwind    )
>         disable_irq_notrace                     @ disable interrupts
>         ldr     r2, [tsk, #TI_ADDR_LIMIT]
> -       cmp     r2, #TASK_SIZE
> +       ldr     r1, =TASK_SIZE
> +       cmp     r2, r1
>         blne    addr_limit_check_failed
>         ldr     r1, [tsk, #TI_FLAGS]            @ re-check for syscall tracing
>         tst     r1, #_TIF_SYSCALL_WORK | _TIF_WORK_MASK
> @@ -87,7 +88,8 @@ __ret_fast_syscall:
>  #endif
>         disable_irq_notrace                     @ disable interrupts
>         ldr     r2, [tsk, #TI_ADDR_LIMIT]
> -       cmp     r2, #TASK_SIZE
> +       ldr     r1, =TASK_SIZE
> +       cmp     r2, r1
>         blne    addr_limit_check_failed
>         ldr     r1, [tsk, #TI_FLAGS]            @ re-check for syscall tracing
>         tst     r1, #_TIF_SYSCALL_WORK | _TIF_WORK_MASK
> @@ -128,7 +130,8 @@ ret_slow_syscall:
>         disable_irq_notrace                     @ disable interrupts
>  ENTRY(ret_to_user_from_irq)
>         ldr     r2, [tsk, #TI_ADDR_LIMIT]
> -       cmp     r2, #TASK_SIZE
> +       ldr     r1, =TASK_SIZE
> +       cmp     r2, r1
>         blne    addr_limit_check_failed
>         ldr     r1, [tsk, #TI_FLAGS]
>         tst     r1, #_TIF_WORK_MASK
> diff --git a/arch/arm/mm/mmu.c b/arch/arm/mm/mmu.c
> index ec8d0008bfa1..092bebd9ffc2 100644
> --- a/arch/arm/mm/mmu.c
> +++ b/arch/arm/mm/mmu.c
> @@ -29,6 +29,7 @@
>  #include <asm/traps.h>
>  #include <asm/procinfo.h>
>  #include <asm/memory.h>
> +#include <asm/kasan_def.h>
>
>  #include <asm/mach/arch.h>
>  #include <asm/mach/map.h>
> @@ -1246,8 +1247,25 @@ static inline void prepare_page_table(void)
>         /*
>          * Clear out all the mappings below the kernel image.
>          */
> +#ifdef CONFIG_KASAN
> +       /*
> +        * KASan's shadow memory inserts itself between the TASK_SIZE
> +        * and MODULES_VADDR. Do not clear the KASan shadow memory mappings.
> +        */
> +       for (addr = 0; addr < KASAN_SHADOW_START; addr += PMD_SIZE)
> +               pmd_clear(pmd_off_k(addr));
> +       /*
> +        * Skip over the KASan shadow area. KASAN_SHADOW_END is sometimes
> +        * equal to MODULES_VADDR and then we exit the pmd clearing. If we
> +        * are using a thumb-compiled kernel, there there will be 8MB more
> +        * to clear as KASan always offset to 16 MB below MODULES_VADDR.
> +        */
> +       for (addr = KASAN_SHADOW_END; addr < MODULES_VADDR; addr += PMD_SIZE)
> +               pmd_clear(pmd_off_k(addr));
> +#else
>         for (addr = 0; addr < MODULES_VADDR; addr += PMD_SIZE)
>                 pmd_clear(pmd_off_k(addr));
> +#endif
>
>  #ifdef CONFIG_XIP_KERNEL
>         /* The XIP kernel is mapped in the module area -- skip over it */
> --
> 2.25.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
