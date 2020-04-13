Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 360AC1A6EC2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 23:54:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g7/GtMKr9ENDlrSKSWKtnxywhvaiE9Obl0KIOae1VvQ=; b=EDprZIfyF167lC
	FBRFUTL2i2xANMpQ8bpgwcpask7uEeEKqOwhwDDZf9d1LvHbQLlySVwkk63UwFTrk9Yf0GspXorSX
	oiKBYvz51PtI13fiLwII+f/XzCHjCWCqSiwxxNP8j2Ug4CGjnP0/XLdF353mNm6zabDrUxQR8I93n
	PumcoJ0ff4JLLM+yxbETdTRGjC0A0R0dJ2bzxG8tpuM4HEOwago9pQii0HI4rwL/a/3iS05dp05eE
	/WoDpNeUTmYL1JiSvpWrVCJzSfJ6oW3cdUpqw3y9v4lkAGkcXqVEuxEm4OA8DonAAAWRaKsG99ynh
	EIiVaqeWKS+ZczRXhK8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO72D-0008As-4F; Mon, 13 Apr 2020 21:54:29 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO71v-00085i-BA
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 21:54:12 +0000
Received: by mail-wm1-x343.google.com with SMTP id d77so10807869wmd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 14:54:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=n2YrxFswkx7hDllVIsDVbzNNztgUR6Vkh9Ws2W9v0sU=;
 b=S9tY0EwJ0DuckJovjeInEXlrGKO2+8M+UJjAQNxtSEHCABWcJrCv/FH8NxKGKNYGgk
 eyx0wTZ5zhhpfDX1eFiNK7yAbuWgJ3GrMZ0cinZzhaqluce2O7yyc1PXRfrsWqI0N7mH
 f9iB6dT8Fbpxh4Vmc19lHugKZi/s6WM4hqAbOWtMw5baLt1tc5TNXR7//SDq/IcUyAbw
 lQVSvBUJnK4g8MhUdHCQjuoczqcMFlRzHMDNpZZyLZb1d2p7bZac1MTQ21FKk2tHTMxV
 Pv7pBwT1bKUu8LgcDVVS+Vv37thyxOSQTxmqu9lBp7VR0gtifwgNeL7cbJwW86dACaYK
 rGEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=n2YrxFswkx7hDllVIsDVbzNNztgUR6Vkh9Ws2W9v0sU=;
 b=Hzh8Y5X8fqmSYl7Gj0auGYHqMsntPU9FqJ3C6dpyTZmZuZtg3wLw1yZevNh8rI2zZc
 pAWZJ9zSg+ostVF8mbgIV52dW14tN6c3Dskte2iKvbSY7M+8W9B0gULVA9EhAlyXHdKP
 5WCxLkhT4w3VNytWBmBBzrCJzHNXq120FOaYwuWHQR3fk2rgqhYpcZw2hVVK+QOD+L2T
 +/Aw3Ax3gWdXKD/Ia/mdolqQV5bKRY2kEEas2FaHUoP3FI1odzHCM6IQO7QW9ByiAaRD
 sMsIoiw7++dqVIGU0EY6/BQcneesm7W7SEy2A7BFiSGGRVW5H67xMuJRpF4VCnPzoiCU
 PzVA==
X-Gm-Message-State: AGi0PuYtPLS2NkJQxuRU7/AKga/OLdWoU6O++yUcLgDxdExx6bi5K6zT
 lY5Ie1d53CRJ0eJOiGvYUoVAnQrOj18op8mKnq+A
X-Google-Smtp-Source: APiQypLR+TgWBKP/kkMmQfl3pNKIeF2HWnQrkpYuKf4da4NMDuLoi6OHvBqTmJaukhMVepYAflj20L2qUMY42xQhy9s=
X-Received: by 2002:a7b:cdfa:: with SMTP id p26mr9270601wmj.186.1586814849695; 
 Mon, 13 Apr 2020 14:54:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200413155521.24698-1-ardb@kernel.org>
In-Reply-To: <20200413155521.24698-1-ardb@kernel.org>
From: Atish Patra <atishp@atishpatra.org>
Date: Mon, 13 Apr 2020 14:53:58 -0700
Message-ID: <CAOnJCULxNtk99sudMD5Rn5ao0orwcarOAwg7NPXMK6ZdXmwNOA@mail.gmail.com>
Subject: Re: [PATCH v2 0/8] efi/libstub: simplify arm64 kernel image loading
To: Ard Biesheuvel <ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_145411_476206_32DEB13E 
X-CRM114-Status: GOOD (  22.15  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, linux-efi@vger.kernel.org, catalin.marinas@arm.com,
 nivedita@alum.mit.edu, Jonathan.Cameron@huawei.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 13, 2020 at 8:55 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On arm64, the kernel image used to be virtually mapped via the linear
> region, making the two mappings correlated in a way that required the
> kernel to be located at the start of the linear region, or the memory
> below would not be accessible. For this reason, the EFI stub loader
> code for arm64 has the notion of a 'preferred offset' for the physical
> placement of the kernel image, and tries to put the kernel there, or
> at least as low as possible in physical memory (unless KASLR is active,
> in which case the placement is randomized)
>
> When KASLR was introduced, the virtual mapping of the kernel was moved
> into the vmalloc region, and now, regardless of whether KASLR support
> is built in or active, the kernel can be placed anywhere in physical
> memory without any detrimental side effects on the linear region.
>
> This means that we can drop the notion of 'preferred offset' entirely,
> and invoke the kernel in place if the PE/COFF loader loaded it at the
> right offset. If not, we can invoke the ordinary UEFI top down page
> allocator to reallocate it elsewhere in memory. By updating the PE/COFF
> metadata, we can inform the PE/COFF loader about the desired alignment,
> making it less likely that we need to move the kernel image in the first
> place.
>
> Ard Biesheuvel (8):
>   efi/libstub/random: align allocate size to EFI_ALLOC_ALIGN
>   efi/libstub/random: increase random alloc granularity
>   efi/libstub/arm64: replace 'preferred' offset with alignment check
>   efi/libstub/arm64: simplify randomized loading of kernel image
>   efi/libstub/arm64: align PE/COFF sections to segment alignment
>   efi/libstub: add API function to allocate aligned memory
>   efi/libstub/arm64: switch to ordinary page allocator for kernel image
>   efi/libstub: move efi_relocate_kernel() into separate source file
>
>  arch/arm64/kernel/efi-header.S             |   2 +-
>  arch/arm64/kernel/vmlinux.lds.S            |   3 +-
>  drivers/firmware/efi/libstub/Makefile      |   3 +-
>  drivers/firmware/efi/libstub/alignedmem.c  |  57 ++++++
>  drivers/firmware/efi/libstub/arm64-stub.c  |  92 +++-------
>  drivers/firmware/efi/libstub/efistub.h     |  18 +-
>  drivers/firmware/efi/libstub/mem.c         | 191 +-------------------
>  drivers/firmware/efi/libstub/randomalloc.c |   6 +-
>  drivers/firmware/efi/libstub/relocate.c    | 174 ++++++++++++++++++
>  9 files changed, 280 insertions(+), 266 deletions(-)
>  create mode 100644 drivers/firmware/efi/libstub/alignedmem.c
>  create mode 100644 drivers/firmware/efi/libstub/relocate.c
>
> --
> 2.17.1
>

Oops. I just noticed this series after I sent out a v2.
I see that efi_low_alloc is removed now and the handle_kernel_image is
simplified for arm64.
I will update the risc-v uefi series accordingly. Sorry for the noise.

--
Regards,
Atish

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
