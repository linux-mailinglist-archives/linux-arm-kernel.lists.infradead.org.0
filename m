Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 086D51EC9B1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 08:45:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W6850FDRvFjTHszKzaOTQRSVvqn7jHbsyT1ei11RN2A=; b=ONKwiu9dbmZv7H
	auhVdGBBx51rZ55C3CIQX+2J5YL6LeGbKKuSahyEkaQERTLxN8znCwZtT1GYXjTGr3FpMkiXYzIY7
	az1C8JbGLbFJ/mrZmNekE2p+u24SFHJSo3Ml+6yxJDhvaUNhCUt3yhbhoIUR3UX7DrsBUlk7vy26r
	LaX42Y2RC+2B1kS6a7gWEkhKO/aVyHVU375pqc1TRiJaLTovl89v9+Xz3vFfgc+1xCQxgixbzmbgp
	WC0mgeY81jocOBwGbUZaEMJl67qZbhgCz/QgGwm6KKNcM47eAskaT4iWHMlXEvHPOVIQjcGttLZKm
	KnoYxuta/RqafW0P2fqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgN9P-0003zd-Ah; Wed, 03 Jun 2020 06:45:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgN9F-0003zH-4c
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 06:45:14 +0000
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com
 [209.85.167.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3B28020659
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  3 Jun 2020 06:45:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591166712;
 bh=lqrhZOWevUgZpaDARtNDnldM9Vdcf2sGt9zoJx5JKB4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=pTdr4dPP48wxikcka/86fu9I7nE/gvctjW3JORqMwmc58A8SR+4s5hSwvabVUa+bh
 7+/gJhYIyRZTNUYDQ8NBC4o/oDIPZMdUJoRR+ZV6TVF0yEgICy2jl51U4AHLg8N3E4
 yqhcmVGCNOPoNQEATEpnknh5+L9owTSlQYVLgNhs=
Received: by mail-oi1-f172.google.com with SMTP id t25so874881oij.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 23:45:12 -0700 (PDT)
X-Gm-Message-State: AOAM533HLkKlNkbano5Dh5l7OXUDmAqFpng8p6jk040RPWMzpOR0MLBq
 3Da12r2c4Sg0HedY3rAS6DM70fFUEVC/KwofE/c=
X-Google-Smtp-Source: ABdhPJyAMrHqp4DqFLzmX+08I9peABDlwyQgiMnhXw3tg9wwIOvv+jTNztgJRGjpbstrqm3WLLX95TnpcC7Dea5xoEE=
X-Received: by 2002:aca:b887:: with SMTP id i129mr5073132oif.47.1591166711454; 
 Tue, 02 Jun 2020 23:45:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200603053313.3863761-1-masahiroy@kernel.org>
In-Reply-To: <20200603053313.3863761-1-masahiroy@kernel.org>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 3 Jun 2020 08:44:59 +0200
X-Gmail-Original-Message-ID: <CAMj1kXGk-2pyTZ3yNW14Kk4fvtsNOb7maAHVM2C=vVAjaaFRug@mail.gmail.com>
Message-ID: <CAMj1kXGk-2pyTZ3yNW14Kk4fvtsNOb7maAHVM2C=vVAjaaFRug@mail.gmail.com>
Subject: Re: [PATCH] efi/libstub: refactor Makefile to not use lib-y syntax
To: Masahiro Yamada <masahiroy@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_234513_273893_533FE582 
X-CRM114-Status: GOOD (  24.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Arvind Sankar <nivedita@alum.mit.edu>,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 3 Jun 2020 at 07:34, Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Documentation/kbuild/makefiles.rst says:
>
>   Use of lib-y is normally restricted to `lib/` and `arch/*/lib`.
>
> I want to disallow lib-y outside of them.
>

Why?

> Add a custom rule to build lib.a, which is linked to the decompressor
> for ARCH=x86, ARCH=arm.
>
> For ARCH=arm64, use obj-y to link objects to vmlinux in the ordinary
> way.
>

The code works perfectly fine as is, and I don't see what is
fundamentally wrong with using static libraries outside of lib/ and
arch/*/lib.

Also, I would like this code to still be incorporated as a static
library into arm64 as well, so that only pieces that are actually
needed are incorporated into the final image.



> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
>
>  arch/arm64/Makefile                   |  1 -
>  drivers/firmware/efi/Makefile         |  2 +-
>  drivers/firmware/efi/libstub/Makefile | 51 +++++++++++++++------------
>  3 files changed, 30 insertions(+), 24 deletions(-)
>
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index 650e1185c190..ab79b20efc8d 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -145,7 +145,6 @@ export      TEXT_OFFSET
>
>  core-y         += arch/arm64/
>  libs-y         := arch/arm64/lib/ $(libs-y)
> -core-$(CONFIG_EFI_STUB) += $(objtree)/drivers/firmware/efi/libstub/lib.a
>
>  # Default target when executing plain make
>  boot           := arch/arm64/boot
> diff --git a/drivers/firmware/efi/Makefile b/drivers/firmware/efi/Makefile
> index 7a216984552b..317a05cd388b 100644
> --- a/drivers/firmware/efi/Makefile
> +++ b/drivers/firmware/efi/Makefile
> @@ -20,7 +20,7 @@ obj-$(CONFIG_EFI_VARS_PSTORE)         += efi-pstore.o
>  obj-$(CONFIG_UEFI_CPER)                        += cper.o
>  obj-$(CONFIG_EFI_RUNTIME_MAP)          += runtime-map.o
>  obj-$(CONFIG_EFI_RUNTIME_WRAPPERS)     += runtime-wrappers.o
> -subdir-$(CONFIG_EFI_STUB)              += libstub
> +obj-$(CONFIG_EFI_STUB)                 += libstub/
>  obj-$(CONFIG_EFI_FAKE_MEMMAP)          += fake_map.o
>  obj-$(CONFIG_EFI_BOOTLOADER_CONTROL)   += efibc.o
>  obj-$(CONFIG_EFI_TEST)                 += test/
> diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> index cce4a7436052..e4e9b17fa3b2 100644
> --- a/drivers/firmware/efi/libstub/Makefile
> +++ b/drivers/firmware/efi/libstub/Makefile
> @@ -44,7 +44,7 @@ OBJECT_FILES_NON_STANDARD     := y
>  # Prevents link failures: __sanitizer_cov_trace_pc() is not linked in.
>  KCOV_INSTRUMENT                        := n
>
> -lib-y                          := efi-stub-helper.o gop.o secureboot.o tpm.o \
> +stub-obj-y                     := efi-stub-helper.o gop.o secureboot.o tpm.o \
>                                    file.o mem.o random.o randomalloc.o pci.o \
>                                    skip_spaces.o lib-cmdline.o lib-ctype.o \
>                                    alignedmem.o relocate.o vsprintf.o
> @@ -55,15 +55,19 @@ efi-deps-y := fdt_rw.c fdt_ro.c fdt_wip.c fdt.c fdt_empty_tree.c fdt_sw.c
>  $(obj)/lib-%.o: $(srctree)/lib/%.c FORCE
>         $(call if_changed_rule,cc_o_c)
>
> -lib-$(CONFIG_EFI_GENERIC_STUB) += efi-stub.o fdt.o string.o \
> +stub-obj-$(CONFIG_EFI_GENERIC_STUB)    += efi-stub.o fdt.o string.o \
>                                    $(patsubst %.c,lib-%.o,$(efi-deps-y))
>
> -lib-$(CONFIG_ARM)              += arm32-stub.o
> -lib-$(CONFIG_ARM64)            += arm64-stub.o
> -lib-$(CONFIG_X86)              += x86-stub.o
> +stub-obj-$(CONFIG_ARM)         += arm32-stub.o
> +stub-obj-$(CONFIG_ARM64)       += arm64-stub.o
> +stub-obj-$(CONFIG_X86)         += x86-stub.o
>  CFLAGS_arm32-stub.o            := -DTEXT_OFFSET=$(TEXT_OFFSET)
>  CFLAGS_arm64-stub.o            := -DTEXT_OFFSET=$(TEXT_OFFSET)
>
> +targets                                += $(stub-obj-y)
> +stub-obj-y                     := $(patsubst %.o,%.stub.o, $(stub-obj-y))
> +targets                                += $(stub-obj-y)
> +
>  #
>  # For x86, bootloaders like systemd-boot or grub-efi do not zero-initialize the
>  # .bss section, so the .bss section of the EFI stub needs to be included in the
> @@ -83,23 +87,6 @@ STUBCOPY_FLAGS-$(CONFIG_ARM) += --rename-section .data=.data.efistub \
>                                    --rename-section .bss=.bss.efistub,load,alloc
>  STUBCOPY_RELOC-$(CONFIG_ARM)   := R_ARM_ABS
>
> -#
> -# arm64 puts the stub in the kernel proper, which will unnecessarily retain all
> -# code indefinitely unless it is annotated as __init/__initdata/__initconst etc.
> -# So let's apply the __init annotations at the section level, by prefixing
> -# the section names directly. This will ensure that even all the inline string
> -# literals are covered.
> -# The fact that the stub and the kernel proper are essentially the same binary
> -# also means that we need to be extra careful to make sure that the stub does
> -# not rely on any absolute symbol references, considering that the virtual
> -# kernel mapping that the linker uses is not active yet when the stub is
> -# executing. So build all C dependencies of the EFI stub into libstub, and do
> -# a verification pass to see if any absolute relocations exist in any of the
> -# object files.
> -#
> -extra-y                                := $(lib-y)
> -lib-y                          := $(patsubst %.o,%.stub.o,$(lib-y))
> -
>  STUBCOPY_FLAGS-$(CONFIG_ARM64) += --prefix-alloc-sections=.init \
>                                    --prefix-symbols=__efistub_
>  STUBCOPY_RELOC-$(CONFIG_ARM64) := R_AARCH64_ABS
> @@ -121,3 +108,23 @@ quiet_cmd_stubcopy = STUBCPY $@
>                 /bin/false;                                             \
>         fi;                                                             \
>         $(OBJCOPY) $(STUBCOPY_FLAGS-y) $< $@
> +
> +# arm64 puts the stub in the kernel proper, which will unnecessarily retain all
> +# code indefinitely unless it is annotated as __init/__initdata/__initconst etc.
> +# So let's apply the __init annotations at the section level, by prefixing
> +# the section names directly. This will ensure that even all the inline string
> +# literals are covered.
> +# The fact that the stub and the kernel proper are essentially the same binary
> +# also means that we need to be extra careful to make sure that the stub does
> +# not rely on any absolute symbol references, considering that the virtual
> +# kernel mapping that the linker uses is not active yet when the stub is
> +# executing. So build all C dependencies of the EFI stub into libstub, and do
> +# a verification pass to see if any absolute relocations exist in any of the
> +# object files.
> +#
> +obj-$(CONFIG_ARM64)            += $(stub-obj-y)
> +extra-$(CONFIG_ARM)            += lib.a
> +extra-$(CONFIG_X86)            += lib.a
> +
> +$(obj)/lib.a: $(addprefix $(obj)/, $(stub-obj-y)) FORCE
> +       $(call if_changed,ar)
> --
> 2.25.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
