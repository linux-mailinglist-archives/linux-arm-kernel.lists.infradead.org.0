Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 174091A8F45
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 01:47:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3eaaezcBWMC5vLwUaLEuHB3E9fW+83bBEa26xgGMsjI=; b=HiOUi59/jrRKMY
	BL6kQA9CFKjzTIicqQ40GRgyWmiJbziBUu8dMHPP4fqKMCnXkdvnJ/sGRg0kA06+MCerUhXwwhEqN
	5kYk77L2UxjFO1D7KzaSxYfK0sNfn9ImH+LWXCwIVx4aCWwmWpcHTkl464egmj5Yl6l4TOk8f2CUz
	rbKz5kq62z37jgydpjAF//DqVUviTyqhT9BQcAgx37M47xC8ddn6bEXxBgETFNxtI+OVdpp81INr0
	wGL+Mcis4IgkMB5CNH1Xc3Uv7NhlJAZApIDH15ZPYh/F/hgxdLJSQUBdNu4hBIC1Fy+P9HEEeD2zo
	6wNbcjfi0NyzHBfXrw5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOVGS-0000Kg-Rg; Tue, 14 Apr 2020 23:46:48 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOVGF-0000GA-JF
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 23:46:37 +0000
Received: by mail-wm1-x343.google.com with SMTP id x4so15145093wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 16:46:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mXYDrBej33dmGnBCE6UOmo/cofXtLGBYbbUIxq4jAbk=;
 b=GGiPCHR6ZJWnPyf+TAR/Vc5kNRc6Tg5Yfsn+UnhnT1ZUapU1FmLe+vQ3/A/Qz18MBE
 p/GX9uaWUBXh5qXYxtP6wnfYsqJv4denLe5M1O++qqPdg80e4hlpVrw2r6DgpDtKZZCN
 CVz/e5/+8i98zzycVSBJ2KRhdC3TIY1JsKEUFPlXcEjtDIu+Eq6eSPzlzSyRvlTcFZ/6
 +nmKb8IEdYNpm8EJmuYBPC8H0x4gP7s0qxDe+r2Vm/DbXPiZKw8DTZk/jf1I3ccEf6km
 0NXDHPlFGYHADZ95ZodQxGisDrYDeDvvNQoYQDJ/jnqT30V8MVRtr33+jMU4nlig5Vyx
 rHYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mXYDrBej33dmGnBCE6UOmo/cofXtLGBYbbUIxq4jAbk=;
 b=r0y1fKgGGTq3dKzDjfHk2pGjexA+CB7d64RXJZAyVfkyoKGINZZwB/kVLUZAS20WQ4
 is847oKeybvse0LjvyNoARiFnVuraGhtS0gKhFJj7Ypw8T2m+QpdFdU/OoyKaYzIZpYR
 Q2hdop2NU7PWYkz8H2oBAbUQl7v9jnCJPQ31yQIqxujgPGv81B0ZWSWQcUX1/5ASS/wM
 28HiYpLKFbPU+bmPIcL3NEhLUShFxbLyBHOemIuhPpji+yDN1D/ttamnLvSsg3POXfbn
 9dOIECYymW+jdSh2Yd5sBoU2oRvPAunWpdnIpuDWazXFILhaPyAJyc1h5HEsksXPlQQ7
 tE9A==
X-Gm-Message-State: AGi0Pua/+EcSFs0KDUtmCeYnbfEkBF2JWfrIPcAH/9KDUxJ8dCPH8mW9
 hd2rqcOIrium/qz0Yx0ZmlLTL5kC/0WYUhVKjvI8
X-Google-Smtp-Source: APiQypIdMlJqLQ4/Npa7mGSrmyhgnu/UHkZcEwsc4q22DsvwXxnTPyOzmE67wFq8SQHiO/umnA134qIUJY1TbSlWcIU=
X-Received: by 2002:a7b:cdfa:: with SMTP id p26mr2234591wmj.186.1586907993587; 
 Tue, 14 Apr 2020 16:46:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200413155521.24698-1-ardb@kernel.org>
 <20200413155521.24698-7-ardb@kernel.org>
In-Reply-To: <20200413155521.24698-7-ardb@kernel.org>
From: Atish Patra <atishp@atishpatra.org>
Date: Tue, 14 Apr 2020 16:46:22 -0700
Message-ID: <CAOnJCU+iBmTHL0PiNeUyOvQcrNJCc864ijCXjY7XCKLtyqcoNQ@mail.gmail.com>
Subject: Re: [PATCH v2 6/8] efi/libstub: add API function to allocate aligned
 memory
To: Ard Biesheuvel <ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_164635_636296_25453CB7 
X-CRM114-Status: GOOD (  23.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, linux-efi@vger.kernel.org,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, nivedita@alum.mit.edu,
 Jonathan.Cameron@huawei.com, "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 13, 2020 at 8:55 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> Break out the code to create an aligned page allocation from mem.c
> and move it into a function efi_allocate_pages_aligned() in alignedmem.c.
> Update efi_allocate_pages() to invoke it unless the minimum alignment
> equals the EFI page size (4 KB), in which case the ordinary page
> allocator is sufficient. This way, efi_allocate_pages_aligned() will
> only be pulled into the build if it is actually being used (which will
> be on arm64 only in the immediate future)
>
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> ---
>  drivers/firmware/efi/libstub/Makefile     |  3 +-
>  drivers/firmware/efi/libstub/alignedmem.c | 57 ++++++++++++++++++++
>  drivers/firmware/efi/libstub/efistub.h    |  3 ++
>  drivers/firmware/efi/libstub/mem.c        | 25 ++++-----
>  4 files changed, 71 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> index 094eabdecfe6..1a09b9445394 100644
> --- a/drivers/firmware/efi/libstub/Makefile
> +++ b/drivers/firmware/efi/libstub/Makefile
> @@ -42,7 +42,8 @@ KCOV_INSTRUMENT                       := n
>
>  lib-y                          := efi-stub-helper.o gop.o secureboot.o tpm.o \
>                                    file.o mem.o random.o randomalloc.o pci.o \
> -                                  skip_spaces.o lib-cmdline.o lib-ctype.o
> +                                  skip_spaces.o lib-cmdline.o lib-ctype.o \
> +                                  alignedmem.o
>
>  # include the stub's generic dependencies from lib/ when building for ARM/arm64
>  arm-deps-y := fdt_rw.c fdt_ro.c fdt_wip.c fdt.c fdt_empty_tree.c fdt_sw.c
> diff --git a/drivers/firmware/efi/libstub/alignedmem.c b/drivers/firmware/efi/libstub/alignedmem.c
> new file mode 100644
> index 000000000000..cc89c4d6196f
> --- /dev/null
> +++ b/drivers/firmware/efi/libstub/alignedmem.c
> @@ -0,0 +1,57 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +#include <linux/efi.h>
> +#include <asm/efi.h>
> +
> +#include "efistub.h"
> +
> +/**
> + * efi_allocate_pages_aligned() - Allocate memory pages
> + * @size:      minimum number of bytes to allocate
> + * @addr:      On return the address of the first allocated page. The first
> + *             allocated page has alignment EFI_ALLOC_ALIGN which is an
> + *             architecture dependent multiple of the page size.
> + * @max:       the address that the last allocated memory page shall not
> + *             exceed
> + * @align:     minimum alignment of the base of the allocation
> + *
> + * Allocate pages as EFI_LOADER_DATA. The allocated pages are aligned according
> + * to @align, which should be >= EFI_ALLOC_ALIGN. The last allocated page will
> + * not exceed the address given by @max.
> + *
> + * Return:     status code
> + */
> +efi_status_t efi_allocate_pages_aligned(unsigned long size, unsigned long *addr,
> +                                       unsigned long max, unsigned long align)
> +{
> +       efi_physical_addr_t alloc_addr;
> +       efi_status_t status;
> +       int slack;
> +
> +       if (align < EFI_ALLOC_ALIGN)
> +               align = EFI_ALLOC_ALIGN;
> +
> +       alloc_addr = ALIGN_DOWN(max + 1, align) - 1;
> +       size = round_up(size, EFI_ALLOC_ALIGN);
> +       slack = align / EFI_PAGE_SIZE - 1;
> +
> +       status = efi_bs_call(allocate_pages, EFI_ALLOCATE_MAX_ADDRESS,
> +                            EFI_LOADER_DATA, size / EFI_PAGE_SIZE + slack,
> +                            &alloc_addr);
> +       if (status != EFI_SUCCESS)
> +               return status;
> +
> +       *addr = ALIGN((unsigned long)alloc_addr, align);
> +
> +       if (slack > 0) {
> +               int l = (alloc_addr % align) / EFI_PAGE_SIZE;
> +
> +               if (l) {
> +                       efi_bs_call(free_pages, alloc_addr, slack - l + 1);
> +                       slack = l - 1;
> +               }
> +               if (slack)
> +                       efi_bs_call(free_pages, *addr + size, slack);
> +       }
> +       return EFI_SUCCESS;
> +}
> diff --git a/drivers/firmware/efi/libstub/efistub.h b/drivers/firmware/efi/libstub/efistub.h
> index 4844c3bd40df..5dcfadcf2bc1 100644
> --- a/drivers/firmware/efi/libstub/efistub.h
> +++ b/drivers/firmware/efi/libstub/efistub.h
> @@ -641,6 +641,9 @@ efi_status_t efi_low_alloc(unsigned long size, unsigned long align,
>  efi_status_t efi_allocate_pages(unsigned long size, unsigned long *addr,
>                                 unsigned long max);
>
> +efi_status_t efi_allocate_pages_aligned(unsigned long size, unsigned long *addr,
> +                                       unsigned long max, unsigned long align);
> +
>  efi_status_t efi_relocate_kernel(unsigned long *image_addr,
>                                  unsigned long image_size,
>                                  unsigned long alloc_size,
> diff --git a/drivers/firmware/efi/libstub/mem.c b/drivers/firmware/efi/libstub/mem.c
> index 869a79c8946f..0020b0fa9587 100644
> --- a/drivers/firmware/efi/libstub/mem.c
> +++ b/drivers/firmware/efi/libstub/mem.c
> @@ -93,31 +93,24 @@ efi_status_t efi_get_memory_map(struct efi_boot_memmap *map)
>  efi_status_t efi_allocate_pages(unsigned long size, unsigned long *addr,
>                                 unsigned long max)
>  {
> -       efi_physical_addr_t alloc_addr = ALIGN_DOWN(max + 1, EFI_ALLOC_ALIGN) - 1;
> -       int slack = EFI_ALLOC_ALIGN / EFI_PAGE_SIZE - 1;
> +       efi_physical_addr_t alloc_addr;
>         efi_status_t status;
>
> -       size = round_up(size, EFI_ALLOC_ALIGN);
> +       if (EFI_ALLOC_ALIGN > EFI_PAGE_SIZE)
> +               return efi_allocate_pages_aligned(size, addr, max,
> +                                                 EFI_ALLOC_ALIGN);
> +
> +       alloc_addr = ALIGN_DOWN(max + 1, EFI_ALLOC_ALIGN) - 1;
>         status = efi_bs_call(allocate_pages, EFI_ALLOCATE_MAX_ADDRESS,
> -                            EFI_LOADER_DATA, size / EFI_PAGE_SIZE + slack,
> +                            EFI_LOADER_DATA, DIV_ROUND_UP(size, EFI_PAGE_SIZE),
>                              &alloc_addr);
>         if (status != EFI_SUCCESS)
>                 return status;
>
> -       *addr = ALIGN((unsigned long)alloc_addr, EFI_ALLOC_ALIGN);
> -
> -       if (slack > 0) {
> -               int l = (alloc_addr % EFI_ALLOC_ALIGN) / EFI_PAGE_SIZE;
> -
> -               if (l) {
> -                       efi_bs_call(free_pages, alloc_addr, slack - l + 1);
> -                       slack = l - 1;
> -               }
> -               if (slack)
> -                       efi_bs_call(free_pages, *addr + size, slack);
> -       }
> +       *addr = alloc_addr;
>         return EFI_SUCCESS;
>  }
> +
>  /**
>   * efi_low_alloc_above() - allocate pages at or above given address
>   * @size:      size of the memory area to allocate
> --
> 2.17.1
>

Reviewed-by: Atish Patra <atish.patra@wdc.com>
-- 
Regards,
Atish

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
