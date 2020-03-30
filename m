Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7178197DAD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 15:58:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zwUXjstfj8Fsc9tMrsLpbCGHCL8n+vS9a2m7yufErqI=; b=pjPPwr4KhSVeNvBu/BGn0T6u7
	/nmXv27R5LsXTunl7fFHh9UXMgCY153d3TV0mANRRwFRrb6t2RZGd8iTxh3xxU62VqJwXPxN/QcY8
	C2o96E90DMmfqiZUmQSsG89zhPddU7kF/rV6feXHITYcF9LuqUYrjO425CGrRpPWR6k2fWBVCx9Fi
	dSG5YPifP9M00pCIvcANDxVI8JRKDOD77OcfxsnXt1jJeaII7+OOZXFhEpMVycrY5bLXHQ5wnnbPS
	BfjOSYR+OWEdv39D4rxYVHC6p66PH7Eizz+EE8Qx5eHnq5OujMC2McHx/JUg228kpXdUJB7/LJojS
	VNY61m1XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIuvl-0007BP-CN; Mon, 30 Mar 2020 13:58:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIuvW-00077X-QY
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 13:58:08 +0000
Received: from [192.168.1.168] (pool-96-235-39-235.pitbpa.fios.verizon.net
 [96.235.39.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9F496206CC;
 Mon, 30 Mar 2020 13:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585576686;
 bh=7zK37FVHy3v7qUFeK4usKacOvFgAmVjqXOnAg9/f3tA=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=S9Vl7yYd9CpHQPUnQkvNqlSZqvAC5KlrWdLMkbJNTvrlDPulTyLdlAuCinb5ULJmR
 NrU+OduX6yHCFjBpGZUQRuv3xv6lPAHpFvU+8G7i7u+8N6J5HU1sg/YNiFat5l0s6V
 +n4wvArUl50YKKRyGMhYJV5PmdeXK2qKj37Ul9EY=
Subject: Re: [RFC PATCH] arm64: remove CONFIG_DEBUG_ALIGN_RODATA feature
To: Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
References: <20200329141258.31172-1-ardb@kernel.org>
From: Laura Abbott <labbott@kernel.org>
Message-ID: <875f64d9-7f4a-b058-52d4-546af76e96e1@kernel.org>
Date: Mon, 30 Mar 2020 09:57:39 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200329141258.31172-1-ardb@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_065806_913323_ED8A34D9 
X-CRM114-Status: GOOD (  26.35  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 kernel-hardening@lists.openwall.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 3/29/20 10:12 AM, Ard Biesheuvel wrote:
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

This was supposed to avoid potential performance inconsistencies with
some memory being in pages vs other in block. It was always a minor
concern so if it's preventing other work:

Acked-by: Laura Abbott <labbott@kernel.org>

> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> ---
>   arch/arm64/Kconfig.debug                  | 13 -------------
>   arch/arm64/include/asm/memory.h           | 12 +-----------
>   drivers/firmware/efi/libstub/arm64-stub.c |  8 +++-----
>   3 files changed, 4 insertions(+), 29 deletions(-)
> 
> diff --git a/arch/arm64/Kconfig.debug b/arch/arm64/Kconfig.debug
> index 1c906d932d6b..a1efa246c9ed 100644
> --- a/arch/arm64/Kconfig.debug
> +++ b/arch/arm64/Kconfig.debug
> @@ -52,19 +52,6 @@ config DEBUG_WX
>   
>   	  If in doubt, say "Y".
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
>   config DEBUG_EFI
>   	depends on EFI && DEBUG_INFO
>   	bool "UEFI debugging"
> diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> index 4d94676e5a8b..3b34f7bde2f2 100644
> --- a/arch/arm64/include/asm/memory.h
> +++ b/arch/arm64/include/asm/memory.h
> @@ -119,22 +119,12 @@
>   
>   /*
>    * Alignment of kernel segments (e.g. .text, .data).
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
>    *  4 KB granule:  16 level 3 entries, with contiguous bit
>    * 16 KB granule:   4 level 3 entries, without contiguous bit
>    * 64 KB granule:   1 level 3 entry
>    */
>   #define SEGMENT_ALIGN		SZ_64K
> -#endif
>   
>   /*
>    * Memory types available.
> diff --git a/drivers/firmware/efi/libstub/arm64-stub.c b/drivers/firmware/efi/libstub/arm64-stub.c
> index db0c1a9c1699..fc9f8ab533a7 100644
> --- a/drivers/firmware/efi/libstub/arm64-stub.c
> +++ b/drivers/firmware/efi/libstub/arm64-stub.c
> @@ -75,14 +75,12 @@ efi_status_t handle_kernel_image(unsigned long *image_addr,
>   
>   	if (IS_ENABLED(CONFIG_RANDOMIZE_BASE) && phys_seed != 0) {
>   		/*
> -		 * If CONFIG_DEBUG_ALIGN_RODATA is not set, produce a
> -		 * displacement in the interval [0, MIN_KIMG_ALIGN) that
> -		 * doesn't violate this kernel's de-facto alignment
> +		 * Produce a displacement in the interval [0, MIN_KIMG_ALIGN)
> +		 * that doesn't violate this kernel's de-facto alignment
>   		 * constraints.
>   		 */
>   		u32 mask = (MIN_KIMG_ALIGN - 1) & ~(EFI_KIMG_ALIGN - 1);
> -		u32 offset = !IS_ENABLED(CONFIG_DEBUG_ALIGN_RODATA) ?
> -			     (phys_seed >> 32) & mask : TEXT_OFFSET;
> +		u32 offset = (phys_seed >> 32) & mask;
>   
>   		/*
>   		 * With CONFIG_RANDOMIZE_TEXT_OFFSET=y, TEXT_OFFSET may not
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
