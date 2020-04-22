Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A22C71B3B96
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 11:40:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aW3WBNE81VHqJ3qnvzXlR4UnRSV0yKHPVnclPPikVM4=; b=BRQArfdJTqkpCX
	yq6NRlPrJAy+EX+mo4Qv/7Ac6TNnyrwyXW93yPdfdu7gV7d1UhoExloG4147MDY4QjUcsoQ9iFS/I
	qSwa/WIW5tPZ00VxcPJkxVDs76OEnM06hBl59qUfRPiWmzi+OSYvD6y02S6rVCaL6b3L9U+48wagx
	6CVfmWeFPT6ywJrXh0m04pdItMwTeJJ1smYh/fFo5Cmorz5JWaVrUHp/qnoAU1y3VulY4paweq4Tv
	TethATruRfE8ZzygjRup+tJxcYHPQtk2nzePoRfLmK9fxdSP5HvAWufx195kqDcGHarLCYp0XILH7
	XMr/1L/aLtLui7OBVdLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRBrV-0001Ai-4p; Wed, 22 Apr 2020 09:40:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRBrE-0001AD-5W
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 09:39:53 +0000
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com
 [209.85.166.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 796D22076C
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 09:39:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587548391;
 bh=Cg6T/SYVV/2J7W3DhazFD9nfMftXA1YfQexPq+h/CkM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=AFt0Xo0LdGBLRY7Chz4X8OIlX5NKUyagMyjilcIpP5Go+V3YJB9h1+YnSFZflGTjy
 lwk/0y7r5h/i4ooVwNW8wWPYZTzLtRwdSJCSgrUUP6cZeYSTZJPDMNmnxGs5sKc0Mi
 liCdCphAnrq8D6yvMh2ZeugICHbhgGaX/jm8mrlc=
Received: by mail-io1-f47.google.com with SMTP id z2so1607319iol.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 02:39:51 -0700 (PDT)
X-Gm-Message-State: AGi0PuaaH70d4vz9+fSG1eAV/YrAHNWVh0yzM2VMf4SDBaH3yCMwDLY9
 kqOewv6wQao2W5aVvWR6Qx5yg5wRwthPGw4Ffm0=
X-Google-Smtp-Source: APiQypKVq/myAx/zWRC6bt+1NqJbnUETAsMrlK6tFF+J/wKNjtlPYy2uH/OckKdmTGWLoDLoyx/H5mHDCpqqLocp590=
X-Received: by 2002:a02:7785:: with SMTP id
 g127mr23973436jac.134.1587548390869; 
 Wed, 22 Apr 2020 02:39:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200413155521.24698-1-ardb@kernel.org>
 <20200413155521.24698-6-ardb@kernel.org>
In-Reply-To: <20200413155521.24698-6-ardb@kernel.org>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 22 Apr 2020 11:39:39 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFrzfKerYNL1c+iS33uMR++3w673kxg93bGfdG7ohWJsA@mail.gmail.com>
Message-ID: <CAMj1kXFrzfKerYNL1c+iS33uMR++3w673kxg93bGfdG7ohWJsA@mail.gmail.com>
Subject: Re: [PATCH v2 5/8] efi/libstub/arm64: align PE/COFF sections to
 segment alignment
To: linux-efi <linux-efi@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_023952_257375_D05599A5 
X-CRM114-Status: GOOD (  19.64  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Arvind Sankar <nivedita@alum.mit.edu>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 13 Apr 2020 at 17:55, Ard Biesheuvel <ardb@kernel.org> wrote:
>
> The arm64 kernel's segment alignment is fixed at 64 KB for any page
> size, and relocatable kernels are able to fix up any misalignment of
> the kernel image with respect to the 2 MB section alignment that is
> mandated by the arm64 boot protocol.
>
> Let's increase the PE/COFF section alignment to the same value, so that
> kernels loaded by the UEFI PE/COFF loader are guaranteed to end up at
> an address that doesn't require any reallocation to be done if the
> kernel is relocatable.
>
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> ---
>  arch/arm64/kernel/efi-header.S  | 2 +-
>  arch/arm64/kernel/vmlinux.lds.S | 3 ++-
>  2 files changed, 3 insertions(+), 2 deletions(-)
>

Catalin, Will: any thoughts whether this should go via the arm64 tree
or the EFI tree? It is part of a change on the EFI side to stop
needlessly copying the kernel around before boot, but this particular
change could go through either tree, as it is not build time
dependency for the EFI changes, nor does it have a boot time impact
beyond making it more likely that the copy can be elided (but the code
still needs to deal with the possibility that it cannot be elided in
any case)



> diff --git a/arch/arm64/kernel/efi-header.S b/arch/arm64/kernel/efi-header.S
> index 914999ccaf8a..6f58998ef647 100644
> --- a/arch/arm64/kernel/efi-header.S
> +++ b/arch/arm64/kernel/efi-header.S
> @@ -32,7 +32,7 @@ optional_header:
>
>  extra_header_fields:
>         .quad   0                                       // ImageBase
> -       .long   SZ_4K                                   // SectionAlignment
> +       .long   SEGMENT_ALIGN                           // SectionAlignment
>         .long   PECOFF_FILE_ALIGNMENT                   // FileAlignment
>         .short  0                                       // MajorOperatingSystemVersion
>         .short  0                                       // MinorOperatingSystemVersion
> diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
> index 497f9675071d..1d399db0644f 100644
> --- a/arch/arm64/kernel/vmlinux.lds.S
> +++ b/arch/arm64/kernel/vmlinux.lds.S
> @@ -175,7 +175,7 @@ SECTIONS
>                 *(.altinstr_replacement)
>         }
>
> -       . = ALIGN(PAGE_SIZE);
> +       . = ALIGN(SEGMENT_ALIGN);
>         __inittext_end = .;
>         __initdata_begin = .;
>
> @@ -246,6 +246,7 @@ SECTIONS
>         . += INIT_DIR_SIZE;
>         init_pg_end = .;
>
> +       . = ALIGN(SEGMENT_ALIGN);
>         __pecoff_data_size = ABSOLUTE(. - __initdata_begin);
>         _end = .;
>
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
