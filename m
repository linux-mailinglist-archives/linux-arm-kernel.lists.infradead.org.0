Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5147F197AB0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 13:29:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fZUlCa6MiNC+NwCGvUD1or1xC5SC+gCmJ5ivsVzajAc=; b=QWK/HdEJ9JUEUG
	8Q2AYaHrYLasZftC4a7Ab02wgoeKFzAvVZZY2+Frw/Aqw4CHeVIFB0B4Ih4aKSVmsX3R4GsxwI55L
	3nuFrXHrW/lF/sNnJBJWDPRVfnTG6ow49oTs17FXZakdZfnrHjO8qjnaeayAcZF5akBgihMcOTP7e
	LRCe9cJ5ur9tvmrkKaOPf1p4oEzJZmNpjhBdpMnsXDEsMVxKPWIMV7ya2em0te6oSChpxPW5tE+mw
	oYt3gPm4zYKhZzfp77N+m/v1eZxAYjM50d5PiSEujMNfQb8Rs14fyawrd4aI+ZMN1ZE71KE3qDNYe
	BP65AzKa5Y7fj5pd6hzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIsbz-0004kw-Bk; Mon, 30 Mar 2020 11:29:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIsbl-0004dG-9s
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 11:29:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9A4B331B;
 Mon, 30 Mar 2020 04:29:32 -0700 (PDT)
Received: from C02TD0UTHF1T.local (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A20893F52E;
 Mon, 30 Mar 2020 04:29:31 -0700 (PDT)
Date: Mon, 30 Mar 2020 12:29:28 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [RFC PATCH] arm64: remove CONFIG_DEBUG_ALIGN_RODATA feature
Message-ID: <20200330093641.GA25920@C02TD0UTHF1T.local>
References: <20200329141258.31172-1-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200329141258.31172-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_042933_427454_BCBA696D 
X-CRM114-Status: GOOD (  23.42  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, kernel-hardening@lists.openwall.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 29, 2020 at 04:12:58PM +0200, Ard Biesheuvel wrote:
> When CONFIG_DEBUG_ALIGN_RODATA is enabled, kernel segments mapped with
> different permissions (r-x for .text, r-- for .rodata, rw- for .data,
> etc) are rounded up to 2 MiB so they can be mapped more efficiently.
> In particular, it permits the segments to be mapped using level 2
> block entries when using 4k pages, which is expected to result in less
> TLB pressure.
> 
> However, the mappings for the bulk of the kernel will use level 2
> entries anyway, and the misaligned fringes are organized such that they
> can take advantage of the contiguous bit, and use far fewer level 3
> entries than would be needed otherwise.
> 
> This makes the value of this feature dubious at best, and since it is not
> enabled in defconfig or in the distro configs, it does not appear to be
> in wide use either. So let's just remove it.
> 
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>

No strong feelings either way, but getting rid of code is usually good,
so:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  arch/arm64/Kconfig.debug                  | 13 -------------
>  arch/arm64/include/asm/memory.h           | 12 +-----------
>  drivers/firmware/efi/libstub/arm64-stub.c |  8 +++-----
>  3 files changed, 4 insertions(+), 29 deletions(-)
> 
> diff --git a/arch/arm64/Kconfig.debug b/arch/arm64/Kconfig.debug
> index 1c906d932d6b..a1efa246c9ed 100644
> --- a/arch/arm64/Kconfig.debug
> +++ b/arch/arm64/Kconfig.debug
> @@ -52,19 +52,6 @@ config DEBUG_WX
>  
>  	  If in doubt, say "Y".
>  
> -config DEBUG_ALIGN_RODATA
> -	depends on STRICT_KERNEL_RWX
> -	bool "Align linker sections up to SECTION_SIZE"
> -	help
> -	  If this option is enabled, sections that may potentially be marked as
> -	  read only or non-executable will be aligned up to the section size of
> -	  the kernel. This prevents sections from being split into pages and
> -	  avoids a potential TLB penalty. The downside is an increase in
> -	  alignment and potentially wasted space. Turn on this option if
> -	  performance is more important than memory pressure.
> -
> -	  If in doubt, say N.
> -
>  config DEBUG_EFI
>  	depends on EFI && DEBUG_INFO
>  	bool "UEFI debugging"
> diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> index 4d94676e5a8b..3b34f7bde2f2 100644
> --- a/arch/arm64/include/asm/memory.h
> +++ b/arch/arm64/include/asm/memory.h
> @@ -119,22 +119,12 @@
>  
>  /*
>   * Alignment of kernel segments (e.g. .text, .data).
> - */
> -#if defined(CONFIG_DEBUG_ALIGN_RODATA)
> -/*
> - *  4 KB granule:   1 level 2 entry
> - * 16 KB granule: 128 level 3 entries, with contiguous bit
> - * 64 KB granule:  32 level 3 entries, with contiguous bit
> - */
> -#define SEGMENT_ALIGN		SZ_2M
> -#else
> -/*
> + *
>   *  4 KB granule:  16 level 3 entries, with contiguous bit
>   * 16 KB granule:   4 level 3 entries, without contiguous bit
>   * 64 KB granule:   1 level 3 entry
>   */
>  #define SEGMENT_ALIGN		SZ_64K
> -#endif
>  
>  /*
>   * Memory types available.
> diff --git a/drivers/firmware/efi/libstub/arm64-stub.c b/drivers/firmware/efi/libstub/arm64-stub.c
> index db0c1a9c1699..fc9f8ab533a7 100644
> --- a/drivers/firmware/efi/libstub/arm64-stub.c
> +++ b/drivers/firmware/efi/libstub/arm64-stub.c
> @@ -75,14 +75,12 @@ efi_status_t handle_kernel_image(unsigned long *image_addr,
>  
>  	if (IS_ENABLED(CONFIG_RANDOMIZE_BASE) && phys_seed != 0) {
>  		/*
> -		 * If CONFIG_DEBUG_ALIGN_RODATA is not set, produce a
> -		 * displacement in the interval [0, MIN_KIMG_ALIGN) that
> -		 * doesn't violate this kernel's de-facto alignment
> +		 * Produce a displacement in the interval [0, MIN_KIMG_ALIGN)
> +		 * that doesn't violate this kernel's de-facto alignment
>  		 * constraints.
>  		 */
>  		u32 mask = (MIN_KIMG_ALIGN - 1) & ~(EFI_KIMG_ALIGN - 1);
> -		u32 offset = !IS_ENABLED(CONFIG_DEBUG_ALIGN_RODATA) ?
> -			     (phys_seed >> 32) & mask : TEXT_OFFSET;
> +		u32 offset = (phys_seed >> 32) & mask;
>  
>  		/*
>  		 * With CONFIG_RANDOMIZE_TEXT_OFFSET=y, TEXT_OFFSET may not
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
