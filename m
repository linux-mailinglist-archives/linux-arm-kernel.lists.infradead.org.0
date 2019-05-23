Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5850628C22
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 23:09:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+0BR/4l/H29OKEA8m5+JRZas/D88I/7sBEcmJDhLy6g=; b=fQbIR6MeBbU9OZ
	oPU4dFnHRPpv4syOMu38S77MOZMKyQ6antoOEaN9YPzWHaDKM/n+i18R+xmrW6TAr6WP9N6cqDtKt
	iwpsziGN9Xru46sgRrx8FdkMEyv7rDtAjbYwZAME2Xa9LC8A2tMkNadu6j+4CfzNSuv6ULP+NM3E8
	0YpsFMdsAulk6eRH9iHFpU8qbnP8QfIDU2fNMPjVS+JoHL6oUEMybJL1BkW2Gn1YVbrltJFdKwM/L
	Kut3EoTHrV8lWZye/3tibiGlr1I9piuwEMU7b9mPhW1JSbZxiEcnjdrYdlOv8RLOjT8sPiRNV2y4O
	eKTyG6BtUCHbAAYjF9kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTuxv-000814-9k; Thu, 23 May 2019 21:09:31 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTuxk-0007zc-N3
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 21:09:22 +0000
Received: by mail-it1-x144.google.com with SMTP id t184so12293937itf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 14:09:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DCdWUqMVpGTE6FqZCHfMHY8K5wiZoy6gpaWqmgZjo4s=;
 b=A32rhnYX6zCMNDKeqhQiABgAOnCOQWdaexJX6FwyOkdYchKnAuxlqk7fFydjLWIfwd
 5AL4B1MBOM8xJUzsYXX0MDDHYGCj+BX8IhSizIVp0oE/HV4ki28OTw22gTR5CHppV8gW
 j8C6DfTJj1qs7EwaDfVk+X7H5X2mNL9HEDgmXCcg5R74Nxa4IBevjKLQrlXrc5EfEXIH
 fcr840UeQuRHSIo3WLAUDl8qxtZLa8nqGeSkXCUg7+TmHlklab6S5JaTQ8WCCXvm0CU2
 +MpJsvgPOGHvG5VK1A1c5iGS512iirBrxfSlpidenHDCtoogusqgsacKCQCzxDle9mfQ
 IilQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DCdWUqMVpGTE6FqZCHfMHY8K5wiZoy6gpaWqmgZjo4s=;
 b=F/0AM/4BqutkTiNoWV6Y4K5TcS1ONVfZ53pWNjQCAixwznblmCaoaa3+mf3FWAtynd
 QdhwEDHH8OfnXb35mnusNhWjramUzxV1e5uQN889MngJbs4DRN/rh50D/p/Mij6CXXkk
 ACCQJ4kUEE15u/ihoOL/PyLGnZi8UW/ZMiB2y4bMiv1XrhJjOdiI8LJFZroVn5BZ3Agt
 kP4qTq1xl2Do9mYk/kl/QK2zjU+KYPv+YrkFtFMk0iNK2E2+/OOksbKKAqHmuWb705Fh
 1jgWiEZqx9A/kynZDiHXqydTrP7W1SOgGgX1cJpSAkJUxFln3Kd4c4UKtzcREz7RYAdg
 zoSg==
X-Gm-Message-State: APjAAAVvcMd5xBUpuCvBtyzCoFS7eHFqyUvvNFiRPFwqaxoVKrpPFZgR
 GfI1J0eqVCMaMMqp4qMqSYT1lRPjXwkeY5wEUzSOzQ==
X-Google-Smtp-Source: APXvYqwJ+zx4+qJM/ykMGiFXVMSxdwVig7XuiPEKAOIX54Fi4grVYi4iqYEc2jlFZ/7AXf5nPrtmp2W9RJuL1g/PESI=
X-Received: by 2002:a24:ca84:: with SMTP id
 k126mr14174410itg.104.1558645759476; 
 Thu, 23 May 2019 14:09:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190523183516.583-1-atish.patra@wdc.com>
In-Reply-To: <20190523183516.583-1-atish.patra@wdc.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 23 May 2019 22:09:06 +0100
Message-ID: <CAKv+Gu9VnjtgdkqfJJ1qQQ0W=z+uYN9Y-1n3Md3tV+d6a63wZA@mail.gmail.com>
Subject: Re: [v3 PATCH] RISC-V: Add a PE/COFF compliant Image header.
To: Atish Patra <atish.patra@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_140920_757332_81F33CB2 
X-CRM114-Status: GOOD (  35.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Tom Rini <trini@konsulko.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Zong Li <zong@andestech.com>, marek.vasut@gmail.com,
 Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 paul.walmsley@sifive.com, Nick Kossifidis <mick@ics.forth.gr>,
 linux-riscv@lists.infradead.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 23 May 2019 at 19:35, Atish Patra <atish.patra@wdc.com> wrote:
>
> Currently, last stage boot loaders such as U-Boot can accept only
> uImage which is an unnecessary additional step in automating boot flows.
>
> Add a PE/COFF compliant image header that boot loaders can parse and
> directly load kernel flat Image. The existing booting methods will continue
> to work as it is.
>

This statement does not make sense. This patch does not implement a
single one of the various elements that make up a valid PE/COFF
header.

The arm64 Image header has been designed in a way so that it can
co-exist with a PE/COFF header in the same image, and this is what
this patch duplicates. The arm64 Image header has nothing to do with
PE/COFF.

A PE/COFF executable header consists of
- the letters MZ at offset 0x0 (the MS-DOS header)
- the offset to the PE header at offset 0x3c
- the characters PE\0\0 at the offset mentioned above, followed by the
standard COFF header fields
- a PE32 or PE32+ (depending on the bitness) optional* header,
followed by a set of section headers.




> Another goal of this header is to support EFI stub for RISC-V in future.
> EFI specification needs PE/COFF image header in the beginning of the kernel
> image in order to load it as an EFI application. In order to support
> EFI stub, code0 should be replaced with "MZ" magic string and res5(at
> offset 0x3c) should point to the rest of the PE/COFF header (which will
> be added during EFI support).
>
> This patch is based on ARM64 boot image header and provides an opprtunity
> to combine both ARM64 & RISC-V image headers.
>
> Tested on both QEMU and HiFive Unleashed using OpenSBI + U-Boot + Linux.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
>
> ---
> I have not sent out corresponding U-Boot patch as all the changes are
> compatible with current u-boot support. Once, the kernel header format
> is agreed upon, I will update the U-Boot patch.
>
> Changes from v2->v3
> 1. Modified reserved fields to define a header version.
> 2. Added header documentation.
>
> Changes from v1-v2:
> 1. Added additional reserved elements to make it fully PE compatible.
> ---
>  Documentation/riscv/boot-image-header.txt | 50 ++++++++++++++++++
>  arch/riscv/include/asm/image.h            | 64 +++++++++++++++++++++++
>  arch/riscv/kernel/head.S                  | 32 ++++++++++++
>  3 files changed, 146 insertions(+)
>  create mode 100644 Documentation/riscv/boot-image-header.txt
>  create mode 100644 arch/riscv/include/asm/image.h
>
> diff --git a/Documentation/riscv/boot-image-header.txt b/Documentation/riscv/boot-image-header.txt
> new file mode 100644
> index 000000000000..68abc2353cec
> --- /dev/null
> +++ b/Documentation/riscv/boot-image-header.txt
> @@ -0,0 +1,50 @@
> +                               Boot image header in RISC-V Linux
> +                       =============================================
> +
> +Author: Atish Patra <atish.patra@wdc.com>
> +Date  : 20 May 2019
> +
> +This document only describes the boot image header details for RISC-V Linux.
> +The complete booting guide will be available at Documentation/riscv/booting.txt.
> +
> +The following 64-byte header is present in decompressed Linux kernel image.
> +
> +       u32 code0;                /* Executable code */
> +       u32 code1;                /* Executable code */
> +       u64 text_offset;          /* Image load offset, little endian */
> +       u64 image_size;           /* Effective Image size, little endian */
> +       u64 flags;                /* kernel flags, little endian */
> +       u32 version;              /* Version of this header */
> +       u32 res1  = 0;            /* Reserved */
> +       u64 res2  = 0;            /* Reserved */
> +       u64 magic = 0x5643534952; /* Magic number, little endian, "RISCV" */
> +       u32 res3;                 /* Reserved for additional RISC-V specific header */
> +       u32 res4;                 /* Reserved for PE COFF offset */
> +
> +This header format is compliant with PE/COFF header and largely inspired from
> +ARM64 header. Thus, both ARM64 & RISC-V header can be combined into one common
> +header in future.
> +
> +Notes:
> +- This header can also be reused to support EFI stub for RISC-V in future. EFI
> +  specification needs PE/COFF image header in the beginning of the kernel image
> +  in order to load it as an EFI application. In order to support EFI stub,
> +  code0 should be replaced with "MZ" magic string and res5(at offset 0x3c) should
> +  point to the rest of the PE/COFF header.
> +
> +- version field indicate header version number.
> +       Bits 0:15  - Minor version
> +       Bits 16:31 - Major version
> +
> +  This preserves compatibility across newer and older version of the header.
> +  The current version is defined as 0.1.
> +
> +- res3 is reserved for offset to any other additional fields. This makes the
> +  header extendible in future. One example would be to accommodate ISA
> +  extension for RISC-V in future. For current version, it is set to be zero.
> +
> +- In current header, the flag field has only one field.
> +       Bit 0: Kernel endianness. 1 if BE, 0 if LE.
> +
> +- Image size is mandatory for boot loader to load kernel image. Booting will
> +  fail otherwise.
> diff --git a/arch/riscv/include/asm/image.h b/arch/riscv/include/asm/image.h
> new file mode 100644
> index 000000000000..61c9f20d2f19
> --- /dev/null
> +++ b/arch/riscv/include/asm/image.h
> @@ -0,0 +1,64 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +
> +#ifndef __ASM_IMAGE_H
> +#define __ASM_IMAGE_H
> +
> +#define RISCV_IMAGE_MAGIC      "RISCV"
> +
> +
> +#define RISCV_IMAGE_FLAG_BE_SHIFT      0
> +#define RISCV_IMAGE_FLAG_BE_MASK       0x1
> +
> +#define RISCV_IMAGE_FLAG_LE            0
> +#define RISCV_IMAGE_FLAG_BE            1
> +
> +
> +#ifdef CONFIG_CPU_BIG_ENDIAN
> +#define __HEAD_FLAG_BE         RISCV_IMAGE_FLAG_BE
> +#else
> +#define __HEAD_FLAG_BE         RISCV_IMAGE_FLAG_LE
> +#endif
> +
> +#define __HEAD_FLAG(field)     (__HEAD_FLAG_##field << \
> +                               RISCV_IMAGE_FLAG_##field##_SHIFT)
> +
> +#define __HEAD_FLAGS           (__HEAD_FLAG(BE))
> +
> +#define RISCV_HEADER_VERSION_MAJOR 0
> +#define RISCV_HEADER_VERSION_MINOR 1
> +
> +#define RISCV_HEADER_VERSION (RISCV_HEADER_VERSION_MAJOR << 16 | \
> +                             RISCV_HEADER_VERSION_MINOR)
> +
> +#ifndef __ASSEMBLY__
> +/*
> + * struct riscv_image_header - riscv kernel image header
> + *
> + * @code0:             Executable code
> + * @code1:             Executable code
> + * @text_offset:       Image load offset
> + * @image_size:                Effective Image size
> + * @flags:             kernel flags
> + * @version:           version
> + * @reserved:          reserved
> + * @reserved:          reserved
> + * @magic:             Magic number
> + * @reserved:          reserved (will be used for additional RISC-V specific header)
> + * @reserved:          reserved (will be used for PE COFF offset)
> + */
> +
> +struct riscv_image_header {
> +       u32 code0;
> +       u32 code1;
> +       u64 text_offset;
> +       u64 image_size;
> +       u64 flags;
> +       u32 version;
> +       u32 res1;
> +       u64 res2;
> +       u64 magic;
> +       u32 res3;
> +       u32 res4;
> +};
> +#endif /* __ASSEMBLY__ */
> +#endif /* __ASM_IMAGE_H */
> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> index 370c66ce187a..577893bb150d 100644
> --- a/arch/riscv/kernel/head.S
> +++ b/arch/riscv/kernel/head.S
> @@ -19,9 +19,41 @@
>  #include <asm/thread_info.h>
>  #include <asm/page.h>
>  #include <asm/csr.h>
> +#include <asm/image.h>
>
>  __INIT
>  ENTRY(_start)
> +       /*
> +        * Image header expected by Linux boot-loaders. The image header data
> +        * structure is described in asm/image.h.
> +        * Do not modify it without modifying the structure and all bootloaders
> +        * that expects this header format!!
> +        */
> +       /* jump to start kernel */
> +       j _start_kernel
> +       /* reserved */
> +       .word 0
> +       .balign 8
> +#if __riscv_xlen == 64
> +       /* Image load offset(2MB) from start of RAM */
> +       .dword 0x200000
> +#else
> +       /* Image load offset(4MB) from start of RAM */
> +       .dword 0x400000
> +#endif
> +       /* Effective size of kernel image */
> +       .dword _end - _start
> +       .dword __HEAD_FLAGS
> +       .word RISCV_HEADER_VERSION
> +       .word 0
> +       .dword 0
> +       .asciz RISCV_IMAGE_MAGIC
> +       .word 0
> +       .balign 4
> +       .word 0
> +
> +.global _start_kernel
> +_start_kernel:
>         /* Mask all interrupts */
>         csrw CSR_SIE, zero
>         csrw CSR_SIP, zero
> --
> 2.21.0
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
