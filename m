Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A43D8809E6
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  4 Aug 2019 09:57:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dNCOBtpL/86BE8jXIei7n12M3kFrjok+SUCV/8X/G1A=; b=A7Hqtcx4QR6mw4
	wFFAAlQQGnU0rfDmHCueg/yATQ6SVYOGawoX7bvV5v6MfLAghUBwoJWbfEZSCz79rjcsDeelhL4QH
	rzN1y7b+KYU1DsWjKC/lD6tNvi+3oEK/koyruzbq4Tpgh7PbMRltn7WDT7EkATBPuc+sgOTL2TtCK
	D81ynkLRLfc+In6M89lIRgU145lXufV2XkbwYpxB3fDZFJJChmxKsnlfamW0YpI9YRf2c0jAZDYam
	KMVB0/iUZPzFt2//wrzn1J7qyiNgXkow93g2965GKa1gyrRAqOGTI9w/m/7vExZp2SkouBT5k1I7U
	mV+bh1n1X//WllHZpiFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huBOc-0004iN-1l; Sun, 04 Aug 2019 07:57:38 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huBOD-0004ho-Sz
 for linux-arm-kernel@lists.infradead.org; Sun, 04 Aug 2019 07:57:15 +0000
Received: by mail-wr1-x443.google.com with SMTP id n9so81411475wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 04 Aug 2019 00:57:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uS/tyRA1HhQtO4ADL8hEZuizK1iCv9RoDdaac2v1yH4=;
 b=wfn1Gu3adFwv/Pk2kRj3UTJmJZciTaF/YOPEy8jffyJ6C8rni4AR9s/45gTYPa4Fgo
 c8HCaV0w2SCcZyRvZa3q/QVk2/nJwpH/EMR8g2OE0FuxOI7E5y56XQ6ON1bTeSw5BJtx
 6KecsUH3eriYLDSv8Ha2NnjtI28lVLTItqw4qi8LhEyXkYkMmEsTuxQjHvN1bbD1t6/T
 R0pIgH80JovPWuRwxvL9IK361aQRfKdyQ7IJI0G8ROdKufqa2rhSlx5COllc21RZ3wuX
 rpJ4LbJega5ppVLH5z0p9pDsobiqao0LkFTOc5WQDc0n43xWmyUdg1lprdEzvBW4Dl6i
 6N2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uS/tyRA1HhQtO4ADL8hEZuizK1iCv9RoDdaac2v1yH4=;
 b=Ez4IVtkEVeTd4hrgGdz/uzj5W1wmQVrP0g88gzqyhLRyb8ueDFuGmHuWG06Em0oOKR
 pXkhCCDfLMLbFpG6StkAUoG6ZHTXIuFcuOdfAO1cyUjWwivPPnEW8goiWdJoTyzabZs2
 HAK09KBJoCfzbGlmf3gab4eHTz3h9IgUUdezqnVjvKpwkHrAOeqDc19dPrhd6qX3fPNY
 FAhf9/21synFUk7a11JjSeVkTW7iT6Fe5fJB0xGiUXv69iM0FWa+B/IiZBeRd1/bxaJY
 MHQtDcCU3XT2wj9aB8iOhHP/p23lQTyVjUeIp8WfrcXORXsURfn6eQuULIQQ0yzt+3Uy
 P2oA==
X-Gm-Message-State: APjAAAW3zAlTSyqQ7Isfltswt3dR6xi5ybWdc5mpaqlCkdBHWujR+2h4
 J6AOg3cFlYgJpktrTHvOyo4Duie4SriTCQdpElTmSA==
X-Google-Smtp-Source: APXvYqzORxDgrgKNb+/sBjejLMdg1ru++3B89ONmSHwqHruiVTgPaefLyZbe4UzVKnJbIfAwYhqwt58DVddwGi0AKks=
X-Received: by 2002:adf:9ccf:: with SMTP id h15mr14389399wre.241.1564905431661; 
 Sun, 04 Aug 2019 00:57:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190802053744.5519-1-clin@suse.com>
In-Reply-To: <20190802053744.5519-1-clin@suse.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Sun, 4 Aug 2019 10:57:00 +0300
Message-ID: <CAKv+Gu-yaNYsLQOOcr8srW91-nt-w0e+RBqxXGOagiGGT69n1Q@mail.gmail.com>
Subject: Re: [PATCH] efi/arm: fix allocation failure when reserving the kernel
 base
To: Chester Lin <clin@suse.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_005713_995923_58D4AFDE 
X-CRM114-Status: GOOD (  29.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Juergen Gross <JGross@suse.com>,
 "linux-efi@vger.kernel.org" <linux-efi@vger.kernel.org>,
 "guillaume.gardet@arm.com" <guillaume.gardet@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>, Joey Lee <JLee@suse.com>,
 "geert@linux-m68k.org" <geert@linux-m68k.org>,
 "ren_guo@c-sky.com" <ren_guo@c-sky.com>, Gary Lin <GLin@suse.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Chester,

On Fri, 2 Aug 2019 at 08:40, Chester Lin <clin@suse.com> wrote:
>
> In some cases the arm32 efistub could fail to allocate memory for
> uncompressed kernel. For example, we got the following error message when
> verifying EFI stub on Raspberry Pi-2 [kernel-5.2.1 + grub-2.04] :
>
>   EFI stub: Booting Linux Kernel...
>   EFI stub: ERROR: Unable to allocate memory for uncompressed kernel.
>   EFI stub: ERROR: Failed to relocate kernel
>
> After checking the EFI memory map we found that the first page [0 - 0xfff]
> had been reserved by Raspberry Pi-2's firmware, and the efistub tried to
> set the dram base at 0, which was actually in a reserved region.
>

This by itself is a violation of the Linux boot protocol for 32-bit
ARM when using the decompressor. The decompressor rounds down its own
base address to a multiple of 128 MB, and assumes the whole area is
available for the decompressed kernel and related data structures.
(The first TEXT_OFFSET bytes are no longer used in practice, which is
why putting a reserved region of 4 KB bytes works at the moment, but
this is fragile). Note that the decompressor does not look at any DT
or EFI provided memory maps *at all*.

So unfortunately, this is not something we can fix in the kernel, but
we should fix it in the bootloader or in GRUB, so it does not put any
reserved regions in the first 128 MB of memory,


>   grub> lsefimmap
>   Type      Physical start  - end             #Pages        Size Attributes
>   reserved  0000000000000000-0000000000000fff 00000001      4KiB WB
>   conv-mem  0000000000001000-0000000007ef5fff 00007ef5 130004KiB WB
>   RT-data   0000000007ef6000-0000000007f09fff 00000014     80KiB RT WB
>   conv-mem  0000000007f0a000-000000002d871fff 00025968 615840KiB WB
>   .....
>
> To avoid a reserved address, we have to ignore the memory regions which are
> marked as EFI_RESERVED_TYPE, and only conventional memory regions can be
> chosen. If the region before the kernel base is unaligned, it will be
> marked as EFI_RESERVED_TYPE and let kernel ignore it so that memblock_limit
> will not be sticked with a very low address such as 0x1000.
>
> Signed-off-by: Chester Lin <clin@suse.com>
> ---
>  arch/arm/mm/mmu.c                         |  3 ++
>  drivers/firmware/efi/libstub/arm32-stub.c | 43 ++++++++++++++++++-----
>  2 files changed, 37 insertions(+), 9 deletions(-)
>
> diff --git a/arch/arm/mm/mmu.c b/arch/arm/mm/mmu.c
> index f3ce34113f89..909b11ba48d8 100644
> --- a/arch/arm/mm/mmu.c
> +++ b/arch/arm/mm/mmu.c
> @@ -1184,6 +1184,9 @@ void __init adjust_lowmem_bounds(void)
>                 phys_addr_t block_start = reg->base;
>                 phys_addr_t block_end = reg->base + reg->size;
>
> +               if (memblock_is_nomap(reg))
> +                       continue;
> +
>                 if (reg->base < vmalloc_limit) {
>                         if (block_end > lowmem_limit)
>                                 /*
> diff --git a/drivers/firmware/efi/libstub/arm32-stub.c b/drivers/firmware/efi/libstub/arm32-stub.c
> index e8f7aefb6813..10d33d36df00 100644
> --- a/drivers/firmware/efi/libstub/arm32-stub.c
> +++ b/drivers/firmware/efi/libstub/arm32-stub.c
> @@ -128,7 +128,7 @@ static efi_status_t reserve_kernel_base(efi_system_table_t *sys_table_arg,
>
>         for (l = 0; l < map_size; l += desc_size) {
>                 efi_memory_desc_t *desc;
> -               u64 start, end;
> +               u64 start, end, spare, kernel_base;
>
>                 desc = (void *)memory_map + l;
>                 start = desc->phys_addr;
> @@ -144,27 +144,52 @@ static efi_status_t reserve_kernel_base(efi_system_table_t *sys_table_arg,
>                 case EFI_BOOT_SERVICES_DATA:
>                         /* Ignore types that are released to the OS anyway */
>                         continue;
> -
> +               case EFI_RESERVED_TYPE:
> +                       /* Ignore reserved regions */
> +                       continue;
>                 case EFI_CONVENTIONAL_MEMORY:
>                         /*
>                          * Reserve the intersection between this entry and the
>                          * region.
>                          */
>                         start = max(start, (u64)dram_base);
> -                       end = min(end, (u64)dram_base + MAX_UNCOMP_KERNEL_SIZE);
> +                       kernel_base = round_up(start, PMD_SIZE);
> +                       spare = kernel_base - start;
> +                       end = min(end, kernel_base + MAX_UNCOMP_KERNEL_SIZE);
> +
> +                       status = efi_call_early(allocate_pages,
> +                                       EFI_ALLOCATE_ADDRESS,
> +                                       EFI_LOADER_DATA,
> +                                       MAX_UNCOMP_KERNEL_SIZE / EFI_PAGE_SIZE,
> +                                       &kernel_base);
> +                       if (status != EFI_SUCCESS) {
> +                               pr_efi_err(sys_table_arg,
> +                                       "reserve_kernel_base: alloc failed.\n");
> +                               goto out;
> +                       }
> +                       *reserve_addr = kernel_base;
>
> +                       if (!spare)
> +                               break;
> +                       /*
> +                        * If there's a gap between start and kernel_base,
> +                        * it needs be reserved so that the memblock_limit
> +                        * will not fall on a very low address when running
> +                        * adjust_lowmem_bounds(), wchich could eventually
> +                        * cause CMA reservation issue.
> +                        */
>                         status = efi_call_early(allocate_pages,
>                                                 EFI_ALLOCATE_ADDRESS,
> -                                               EFI_LOADER_DATA,
> -                                               (end - start) / EFI_PAGE_SIZE,
> +                                               EFI_RESERVED_TYPE,
> +                                               spare / EFI_PAGE_SIZE,
>                                                 &start);
>                         if (status != EFI_SUCCESS) {
>                                 pr_efi_err(sys_table_arg,
> -                                       "reserve_kernel_base(): alloc failed.\n");
> +                                       "reserve spare-region failed\n");
>                                 goto out;
>                         }
> -                       break;
>
> +                       break;
>                 case EFI_LOADER_CODE:
>                 case EFI_LOADER_DATA:
>                         /*
> @@ -220,7 +245,7 @@ efi_status_t handle_kernel_image(efi_system_table_t *sys_table,
>         *image_size = image->image_size;
>         status = efi_relocate_kernel(sys_table, image_addr, *image_size,
>                                      *image_size,
> -                                    dram_base + MAX_UNCOMP_KERNEL_SIZE, 0);
> +                                    *reserve_addr + MAX_UNCOMP_KERNEL_SIZE, 0);
>         if (status != EFI_SUCCESS) {
>                 pr_efi_err(sys_table, "Failed to relocate kernel.\n");
>                 efi_free(sys_table, *reserve_size, *reserve_addr);
> @@ -233,7 +258,7 @@ efi_status_t handle_kernel_image(efi_system_table_t *sys_table,
>          * in memory. The kernel determines the base of DRAM from the
>          * address at which the zImage is loaded.
>          */
> -       if (*image_addr + *image_size > dram_base + ZIMAGE_OFFSET_LIMIT) {
> +       if (*image_addr + *image_size > *reserve_addr + ZIMAGE_OFFSET_LIMIT) {
>                 pr_efi_err(sys_table, "Failed to relocate kernel, no low memory available.\n");
>                 efi_free(sys_table, *reserve_size, *reserve_addr);
>                 *reserve_size = 0;
> --
> 2.22.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
