Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D6F1ABA4C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 09:52:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gMe9TZgDylA5bpv9IKB/0fIoCr4VUd7SfCG38Dz9sZM=; b=d0H80JERhzxOEQ
	pG3hC/cugcFAzUmEfL/GIaJ8g8KWr/Uz5BvkcEB87OGS5l0yrZhzyBrUJxXZpBQoLbuqajFZfIKRi
	LjUdKsfV8GDPm+TNkkHOd6XGVJpQWySy9a8jXALRCx5xFU41Cz1l9WNRZPzBTywhAZHSMwfqBNIeV
	amoTLgVYq83qO38A0nTlxWqGRuW2q/JxHNIpu77XGGOiRfsp+RFo1L3TcqWT0hYPC2LlPbTvPa0Lg
	aZTy5N6jB0BU+qB8r4rhOX+VvVqveL1ZZJrqftOVFh3fNpRDsd061AIbnt9ws1yfxSOB7urb/FFz0
	Gpth7DxNibwgfJkauxOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOzJP-0005tZ-9r; Thu, 16 Apr 2020 07:51:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOzJH-0005t8-4V
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 07:51:44 +0000
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com
 [209.85.166.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BC7C121582
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 07:51:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587023502;
 bh=Rhq0sXe0rapQY1I4b51ZXWHI+oTRXpSADqJAZ1zCJDY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=PHzPYlOaVusKITn6qyAoRQQkdFx6kW8qZfzbLk0ZHMG1WiWWVE73R5MoAES9aeiCU
 zuDi8WbleFKlLzeHTdGwWk/OoSXwbzD30WsdWyWspjHMgBbIu2xKDZ2o9wBmUqXlsL
 nOE8KqzXKNVRoPt2ItVX6EkO0m26ccYNBBA5CZZs=
Received: by mail-il1-f173.google.com with SMTP id t8so6050759ilj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 00:51:42 -0700 (PDT)
X-Gm-Message-State: AGi0PubteK0sHSTec10aDhz3NXeKlYaPBUVQaf6mcAGVZtGCkuuygC7s
 gZyKfw6EbpmPnLaraxHfKYi2W6ovwL3hakmzDro=
X-Google-Smtp-Source: APiQypKlHXExqQH/4hwdLFRRNK2M1tNb1TH7BKiSbrxgh5AJxC3pKBem/1iU8ycNKPWLjCHi/u/a08YKoKSHNQmisp0=
X-Received: by 2002:a92:5a4c:: with SMTP id o73mr8748153ilb.218.1587023502144; 
 Thu, 16 Apr 2020 00:51:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200415221520.2692512-1-nivedita@alum.mit.edu>
 <20200415221520.2692512-4-nivedita@alum.mit.edu>
In-Reply-To: <20200415221520.2692512-4-nivedita@alum.mit.edu>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 16 Apr 2020 09:51:30 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFMgrj8POtc0UQ6D-dbDKU+RmuHjUH-bAkMBAqjL_p+mg@mail.gmail.com>
Message-ID: <CAMj1kXFMgrj8POtc0UQ6D-dbDKU+RmuHjUH-bAkMBAqjL_p+mg@mail.gmail.com>
Subject: Re: [PATCH 3/5] efi/x86: Remove __efistub_global annotation
To: Arvind Sankar <nivedita@alum.mit.edu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_005143_226184_D988F342 
X-CRM114-Status: GOOD (  18.52  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-efi <linux-efi@vger.kernel.org>, X86 ML <x86@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 16 Apr 2020 at 00:15, Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> Instead of using __efistub_global to force variables into the .data
> section, leave them in the .bss but pull the EFI stub's .bss section
> into .data in the linker script for the compressed kernel.
>
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>

With the R_386_32/R_X86_64_64 check folded in:

Reviewed-by: Ard Biesheuvel <ardb@kernel.org>

> ---
>  arch/x86/boot/compressed/vmlinux.lds.S |  1 +
>  drivers/firmware/efi/libstub/Makefile  | 12 ++++++++++--
>  drivers/firmware/efi/libstub/efistub.h |  4 ----
>  3 files changed, 11 insertions(+), 6 deletions(-)
>
> diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
> index 508cfa6828c5..0dc5c2b9614b 100644
> --- a/arch/x86/boot/compressed/vmlinux.lds.S
> +++ b/arch/x86/boot/compressed/vmlinux.lds.S
> @@ -52,6 +52,7 @@ SECTIONS
>                 _data = . ;
>                 *(.data)
>                 *(.data.*)
> +               *(.bss.efistub)
>                 _edata = . ;
>         }
>         . = ALIGN(L1_CACHE_BYTES);
> diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> index e5e76677f2da..0bb2916eb12b 100644
> --- a/drivers/firmware/efi/libstub/Makefile
> +++ b/drivers/firmware/efi/libstub/Makefile
> @@ -73,8 +73,8 @@ CFLAGS_arm64-stub.o           := -DTEXT_OFFSET=$(TEXT_OFFSET)
>  # a verification pass to see if any absolute relocations exist in any of the
>  # object files.
>  #
> -extra-$(CONFIG_EFI_ARMSTUB)    := $(lib-y)
> -lib-$(CONFIG_EFI_ARMSTUB)      := $(patsubst %.o,%.stub.o,$(lib-y))
> +extra-y        := $(lib-y)
> +lib-y  := $(patsubst %.o,%.stub.o,$(lib-y))
>
>  STUBCOPY_FLAGS-$(CONFIG_ARM64) += --prefix-alloc-sections=.init \
>                                    --prefix-symbols=__efistub_
> @@ -89,6 +89,14 @@ STUBCOPY_FLAGS-$(CONFIG_ARM) += --rename-section .data=.data.efistub \
>                                    --rename-section .bss=.bss.efistub,load,alloc
>  STUBCOPY_RELOC-$(CONFIG_ARM)   := R_ARM_ABS
>
> +#
> +# For x86, bootloaders like systemd-boot or grub-efi do not zero-initialize the
> +# .bss section, so the .bss section of the EFI stub needs to be included in the
> +# .data section of the compressed kernel to ensure initialization. Rename the
> +# .bss section here so it's easy to pick out in the linker script.
> +#
> +STUBCOPY_FLAGS-$(CONFIG_X86)   += --rename-section .bss=.bss.efistub,load,alloc
> +
>  $(obj)/%.stub.o: $(obj)/%.o FORCE
>         $(call if_changed,stubcopy)
>
> diff --git a/drivers/firmware/efi/libstub/efistub.h b/drivers/firmware/efi/libstub/efistub.h
> index a92d42ffd9f7..49651e20bb9f 100644
> --- a/drivers/firmware/efi/libstub/efistub.h
> +++ b/drivers/firmware/efi/libstub/efistub.h
> @@ -25,11 +25,7 @@
>  #define EFI_ALLOC_ALIGN                EFI_PAGE_SIZE
>  #endif
>
> -#if defined(CONFIG_X86)
> -#define __efistub_global       __section(.data)
> -#else
>  #define __efistub_global
> -#endif
>
>  extern bool __pure nochunk(void);
>  extern bool __pure nokaslr(void);
> --
> 2.24.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
