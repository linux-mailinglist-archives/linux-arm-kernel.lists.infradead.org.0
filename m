Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C78C1B2B02
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 17:20:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FkZI7Xo0tS7lPtqv4t4z2C5S3bfAllFKwUDak6OXMrA=; b=RtBmg6B290LGC4
	GniQXUMwcW3EXoYS5RRy6crYXM/qa/yHdk+UokKQs1Xjr92KeQGlaQ7v2dHe+q60RMSZ/Db1fziKv
	olaxZfdcfqMN6wv7QIh7snEfTS5hJOgoVf8A6F6fJ3mCp0jnCPO7yYVr0PTy/NNeleleKSCoF8QYn
	a3QA9AuP2njbP5kRyMl62dvP74/0Qml+QRRpSOD7riXcQcS8kUBXk44QK2XporsEft5JG+FEJ8jX/
	TRX4VgPDwRf8+1GoC1Mp894ywCVi9qwNMPanoYEc3bjIKQWGbPwI6SkzO3cSrmXzSdkA43xBm5TDG
	XvmVQgMkT7meQWTKHtDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQuhB-0006MF-Eg; Tue, 21 Apr 2020 15:20:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQugi-0006LH-JZ
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 15:19:54 +0000
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com
 [209.85.166.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 27F1E206D9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 15:19:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587482392;
 bh=6pQ5Fl6XDDkIlYeisUC+JGG6bIFAxA2suWc1oOnu2Bk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=o51SkeQVBeMTzvfrkUyqvhkauOLwyIKOYOX6wk0qe5Y39xmulFt1ZJYE9yRaLMuDo
 B2Y5OUiX5y2pKhzCBf26MxcRfj9LFQpkuTXD6kS5lLZvWbOS2pm53Q2ky2x+2k72hi
 M5yArvlwpRvMYWac/RKzPzhTvOFSz7dkG0vNgzs8=
Received: by mail-io1-f41.google.com with SMTP id p10so5830675ioh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 08:19:52 -0700 (PDT)
X-Gm-Message-State: AGi0PuZIfgseG94N2txdMFe4KNWh9tkNNa5Lilr6y8Wnr2QCtAslRoqu
 LoJhjprN21/zQaGeSk6gx9TkvkaSNL8B8p6JXR0=
X-Google-Smtp-Source: APiQypK86d/gbXZ9XjywCEBYarrScAdD3A/GQPWxFzXW0yGEmlTCtRK2vk5QK6EZWIf5M3cLWqI7T9TtzGOFx6vL42s=
X-Received: by 2002:a6b:ef03:: with SMTP id k3mr21408289ioh.203.1587482391395; 
 Tue, 21 Apr 2020 08:19:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200415153409.30112-1-geert+renesas@glider.be>
In-Reply-To: <20200415153409.30112-1-geert+renesas@glider.be>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 21 Apr 2020 17:19:40 +0200
X-Gmail-Original-Message-ID: <CAMj1kXHm=xA4gafwAaBn8=YcAsQCYDNmZ=4REsfvEUgZShm3Ww@mail.gmail.com>
Message-ID: <CAMj1kXHm=xA4gafwAaBn8=YcAsQCYDNmZ=4REsfvEUgZShm3Ww@mail.gmail.com>
Subject: Re: [PATCH v5] ARM: boot: Obtain start of physical memory from DTB
To: Geert Uytterhoeven <geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_081952_682443_F1D86ABD 
X-CRM114-Status: GOOD (  31.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Nicolas Pitre <nico@fluxnic.net>,
 Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Eric Miao <eric.miao@nvidia.com>, Dmitry Osipenko <digetx@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 15 Apr 2020 at 17:34, Geert Uytterhoeven
<geert+renesas@glider.be> wrote:
>
> Currently, the start address of physical memory is obtained by masking
> the program counter with a fixed mask of 0xf8000000.  This mask value
> was chosen as a balance between the requirements of different platforms.
> However, this does require that the start address of physical memory is
> a multiple of 128 MiB, precluding booting Linux on platforms where this
> requirement is not fulfilled.
>
> Fix this limitation by obtaining the start address from the DTB instead,
> if available (either explicitly passed, or appended to the kernel).
> Fall back to the traditional method when needed.
>
> This allows to boot Linux on r7s9210/rza2mevb using the 64 MiB of SDRAM
> on the RZA2MEVB sub board, which is located at 0x0C000000 (CS3 space),
> i.e. not at a multiple of 128 MiB.
>
> Suggested-by: Nicolas Pitre <nico@fluxnic.net>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Reviewed-by: Nicolas Pitre <nico@fluxnic.net>
> Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
> Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
> Tested-by: Dmitry Osipenko <digetx@gmail.com>

This is ready to go into the patch system, no?

The sooner Russell picks it up, the sooner I can respin my patches
that go on top.

Thanks,

> ---
> v5:
>   - Add Tested-by, Reviewed-by,
>   - Round up start of memory to satisfy 16 MiB alignment rule,
>
> v4:
>   - Fix stack location after commit 184bf653a7a452c1 ("ARM:
>     decompressor: factor out routine to obtain the inflated image
>     size"),
>
> v3:
>   - Add Reviewed-by,
>   - Fix ATAGs with appended DTB,
>   - Add Tested-by,
>
> v2:
>   - Use "cmp r0, #-1", instead of "cmn r0, #1",
>   - Add missing stack setup,
>   - Support appended DTB.
> ---
>  arch/arm/boot/compressed/Makefile            |  6 ++-
>  arch/arm/boot/compressed/fdt_get_mem_start.c | 57 ++++++++++++++++++++
>  arch/arm/boot/compressed/head.S              | 54 ++++++++++++++++++-
>  3 files changed, 115 insertions(+), 2 deletions(-)
>  create mode 100644 arch/arm/boot/compressed/fdt_get_mem_start.c
>
> diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
> index 9c11e7490292f0e0..82e4cee97cb5d905 100644
> --- a/arch/arm/boot/compressed/Makefile
> +++ b/arch/arm/boot/compressed/Makefile
> @@ -86,12 +86,15 @@ libfdt_objs := $(addsuffix .o, $(basename $(libfdt)))
>  $(addprefix $(obj)/,$(libfdt) $(libfdt_hdrs)): $(obj)/%: $(srctree)/scripts/dtc/libfdt/%
>         $(call cmd,shipped)
>
> -$(addprefix $(obj)/,$(libfdt_objs) atags_to_fdt.o): \
> +$(addprefix $(obj)/,$(libfdt_objs) atags_to_fdt.o fdt_get_mem_start.o): \
>         $(addprefix $(obj)/,$(libfdt_hdrs))
>
>  ifeq ($(CONFIG_ARM_ATAG_DTB_COMPAT),y)
>  OBJS   += $(libfdt_objs) atags_to_fdt.o
>  endif
> +ifeq ($(CONFIG_USE_OF),y)
> +OBJS   += $(libfdt_objs) fdt_get_mem_start.o
> +endif
>
>  targets       := vmlinux vmlinux.lds piggy_data piggy.o \
>                  lib1funcs.o ashldi3.o bswapsdi2.o \
> @@ -115,6 +118,7 @@ CFLAGS_fdt.o := $(nossp-flags-y)
>  CFLAGS_fdt_ro.o := $(nossp-flags-y)
>  CFLAGS_fdt_rw.o := $(nossp-flags-y)
>  CFLAGS_fdt_wip.o := $(nossp-flags-y)
> +CFLAGS_fdt_get_mem_start.o := $(nossp-flags-y)
>
>  ccflags-y := -fpic $(call cc-option,-mno-single-pic-base,) -fno-builtin \
>              -I$(obj) $(DISABLE_ARM_SSP_PER_TASK_PLUGIN)
> diff --git a/arch/arm/boot/compressed/fdt_get_mem_start.c b/arch/arm/boot/compressed/fdt_get_mem_start.c
> new file mode 100644
> index 0000000000000000..e29caa4cbfecb36a
> --- /dev/null
> +++ b/arch/arm/boot/compressed/fdt_get_mem_start.c
> @@ -0,0 +1,57 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +#include <linux/kernel.h>
> +#include <linux/sizes.h>
> +
> +#include <libfdt.h>
> +
> +static const void *getprop(const void *fdt, const char *node_path,
> +                          const char *property)
> +{
> +       int offset = fdt_path_offset(fdt, node_path);
> +
> +       if (offset == -FDT_ERR_NOTFOUND)
> +               return NULL;
> +
> +       return fdt_getprop(fdt, offset, property, NULL);
> +}
> +
> +static uint32_t get_addr_size(const void *fdt)
> +{
> +       const __be32 *addr_len = getprop(fdt, "/", "#address-cells");
> +
> +       if (!addr_len) {
> +               /* default */
> +               return 1;
> +       }
> +
> +       return fdt32_to_cpu(*addr_len);
> +}
> +
> +/*
> + * Get the start of physical memory
> + */
> +
> +unsigned long fdt_get_mem_start(const void *fdt)
> +{
> +       uint32_t addr_size, mem_start;
> +       const __be32 *memory;
> +
> +       if (!fdt)
> +               return -1;
> +
> +       if (*(__be32 *)fdt != cpu_to_fdt32(FDT_MAGIC))
> +               return -1;
> +
> +       /* Find the first memory node */
> +       memory = getprop(fdt, "/memory", "reg");
> +       if (!memory)
> +               return -1;
> +
> +       /* There may be multiple cells on LPAE platforms */
> +       addr_size = get_addr_size(fdt);
> +
> +       mem_start = fdt32_to_cpu(memory[addr_size - 1]);
> +       /* Must be a multiple of 16 MiB for phys/virt patching */
> +       return round_up(mem_start, SZ_16M);
> +}
> diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
> index cabdd8f4a2482e2b..2d2a42865b3974da 100644
> --- a/arch/arm/boot/compressed/head.S
> +++ b/arch/arm/boot/compressed/head.S
> @@ -254,8 +254,58 @@ not_angel:
>                 .text
>
>  #ifdef CONFIG_AUTO_ZRELADDR
> +#ifdef CONFIG_USE_OF
>                 /*
> -                * Find the start of physical memory.  As we are executing
> +                * Find the start of physical memory.
> +                * Try the DTB first, if available.
> +                */
> +               adr     r0, LC0
> +               ldr     r1, [r0]        @ get absolute LC0
> +               ldr     sp, [r0, #24]   @ get stack location
> +               sub     r1, r0, r1      @ compute relocation offset
> +               add     sp, sp, r1      @ apply relocation
> +
> +#ifdef CONFIG_ARM_APPENDED_DTB
> +               /*
> +                * Look for an appended DTB. If found, use it and
> +                * move stack away from it.
> +                */
> +               ldr     r6, [r0, #12]   @ get &_edata
> +               add     r6, r6, r1      @ relocate it
> +               ldmia   r6, {r0, r5}    @ get DTB signature and size
> +#ifndef __ARMEB__
> +               ldr     r1, =0xedfe0dd0 @ sig is 0xd00dfeed big endian
> +               /* convert DTB size to little endian */
> +               eor     r2, r5, r5, ror #16
> +               bic     r2, r2, #0x00ff0000
> +               mov     r5, r5, ror #8
> +               eor     r5, r5, r2, lsr #8
> +#else
> +               ldr     r1, =0xd00dfeed
> +#endif
> +               cmp     r0, r1          @ do we have a DTB there?
> +               bne     1f
> +
> +               /* preserve 64-bit alignment */
> +               add     r5, r5, #7
> +               bic     r5, r5, #7
> +               add     sp, sp, r5      @ if so, move stack above DTB
> +               mov     r0, r6          @ and extract memory start from DTB
> +               b       2f
> +
> +1:
> +#endif /* CONFIG_ARM_APPENDED_DTB */
> +
> +               mov     r0, r8
> +2:
> +               bl      fdt_get_mem_start
> +               mov     r4, r0
> +               cmp     r0, #-1
> +               bne     1f
> +#endif /* CONFIG_USE_OF */
> +
> +               /*
> +                * Fall back to the traditional method.  As we are executing
>                  * without the MMU on, we are in the physical address space.
>                  * We just need to get rid of any offset by aligning the
>                  * address.
> @@ -273,6 +323,8 @@ not_angel:
>                  */
>                 mov     r4, pc
>                 and     r4, r4, #0xf8000000
> +
> +1:
>                 /* Determine final kernel image address. */
>                 add     r4, r4, #TEXT_OFFSET
>  #else
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
