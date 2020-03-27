Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 535CE1958BF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 15:15:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GtA5aFfomnX7P2NFZNH+9QkyBJ4KPbJ4GkMRPf6T8vo=; b=Jg0+FFEKDKeeBl
	VZJyfdMd2h4npQtd/WsdmrfYlp/XkGLAZlrgPSruHa85awV6PUQtev9tFFWQgty6AKmSgV27BpqSF
	4dpii+9+fYwzeMfJ2z+dlTAIwiE/B1L5cnBaEwg4KzDnPXqSJWO2NlYvWlT/+jA1fvmHpXsYLUWHP
	ijcTg7Sdszca4YW11LD2C9GNNNViQgSXki0pWtnZoPApfl9AbkkdIcKgD8nBjtH+4uAFU4EMYqS/5
	u5k6Ts3zmNXwySO36ksV9Q/1JZwUSkVSFSf/CmaqCwm2y9u2LCnj3iCUbDX6TO9YhO/H0zrBghVP/
	DJoqBVdHchZw2XcRLcXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHplu-0006E7-D4; Fri, 27 Mar 2020 14:15:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHplf-0006AL-I6
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 14:15:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8562A1FB;
 Fri, 27 Mar 2020 07:15:23 -0700 (PDT)
Received: from C02TD0UTHF1T.local (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2E68C3F71F;
 Fri, 27 Mar 2020 07:15:21 -0700 (PDT)
Date: Fri, 27 Mar 2020 14:15:15 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH] arm64: rename stext to primary_entry
Message-ID: <20200327141515.GA94838@C02TD0UTHF1T.local>
References: <20200326171423.3080-1-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326171423.3080-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_071527_698605_263FB784 
X-CRM114-Status: GOOD (  19.17  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: catalin.marinas@arm.com, broonie@kernel.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 26, 2020 at 06:14:23PM +0100, Ard Biesheuvel wrote:
> For historical reasons, the primary entry routine living somewhere in
> the inittext section is called stext(), which is confusing, given that
> there is also a section marker called _stext which lives at a fixed
> offset in the image (either 64 or 4096 bytes, depending on whether
> CONFIG_EFI is enabled)
> 
> Let's rename stext to primary_entry(), which is a better description
> and reflects the secondary_entry() routine that already exists for
> SMP boot.
> 
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>

Makes sense to me.

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
> Note: this applies to linux-next currently, so this is v5.8 material
> 
>  arch/arm64/kernel/efi-entry.S   |  2 +-
>  arch/arm64/kernel/head.S        | 19 +++++++++----------
>  arch/arm64/kernel/image-vars.h  |  2 +-
>  arch/arm64/kernel/vmlinux.lds.S |  4 ++--
>  4 files changed, 13 insertions(+), 14 deletions(-)
> 
> diff --git a/arch/arm64/kernel/efi-entry.S b/arch/arm64/kernel/efi-entry.S
> index 1a03618df0df..303642975a93 100644
> --- a/arch/arm64/kernel/efi-entry.S
> +++ b/arch/arm64/kernel/efi-entry.S
> @@ -19,7 +19,7 @@ SYM_CODE_START(efi_enter_kernel)
>  	 * point stored in x0. Save those values in registers which are
>  	 * callee preserved.
>  	 */
> -	ldr	w2, =stext_offset
> +	ldr	w2, =primary_entry_offset
>  	add	x19, x0, x2		// relocated Image entrypoint
>  	mov	x20, x1			// DTB address
>  
> diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
> index 57a91032b4c2..01aa238c7b10 100644
> --- a/arch/arm64/kernel/head.S
> +++ b/arch/arm64/kernel/head.S
> @@ -70,9 +70,9 @@ _head:
>  	 * its opcode forms the magic "MZ" signature required by UEFI.
>  	 */
>  	add	x13, x18, #0x16
> -	b	stext
> +	b	primary_entry
>  #else
> -	b	stext				// branch to kernel start, magic
> +	b	primary_entry			// branch to kernel start, magic
>  	.long	0				// reserved
>  #endif
>  	le64sym	_kernel_offset_le		// Image load offset from start of RAM, little-endian
> @@ -98,14 +98,13 @@ pe_header:
>  	 * primary lowlevel boot path:
>  	 *
>  	 *  Register   Scope                      Purpose
> -	 *  x21        stext() .. start_kernel()  FDT pointer passed at boot in x0
> -	 *  x23        stext() .. start_kernel()  physical misalignment/KASLR offset
> -	 *  x28        __create_page_tables()     callee preserved temp register
> -	 *  x19/x20    __primary_switch()         callee preserved temp registers
> -	 *  x24        __primary_switch() .. relocate_kernel()
> -	 *                                        current RELR displacement
> +	 *  x21        primary_entry() .. start_kernel()        FDT pointer passed at boot in x0
> +	 *  x23        primary_entry() .. start_kernel()        physical misalignment/KASLR offset
> +	 *  x28        __create_page_tables()                   callee preserved temp register
> +	 *  x19/x20    __primary_switch()                       callee preserved temp registers
> +	 *  x24        __primary_switch() .. relocate_kernel()  current RELR displacement
>  	 */
> -SYM_CODE_START(stext)
> +SYM_CODE_START(primary_entry)
>  	bl	preserve_boot_args
>  	bl	el2_setup			// Drop to EL1, w0=cpu_boot_mode
>  	adrp	x23, __PHYS_OFFSET
> @@ -121,7 +120,7 @@ SYM_CODE_START(stext)
>  	mov	x0, #ARM64_CPU_BOOT_PRIMARY
>  	bl	__cpu_setup			// initialise processor
>  	b	__primary_switch
> -SYM_CODE_END(stext)
> +SYM_CODE_END(primary_entry)
>  
>  /*
>   * Preserve the arguments passed by the bootloader in x0 .. x3
> diff --git a/arch/arm64/kernel/image-vars.h b/arch/arm64/kernel/image-vars.h
> index 7f06ad93fc95..be0a63ffed23 100644
> --- a/arch/arm64/kernel/image-vars.h
> +++ b/arch/arm64/kernel/image-vars.h
> @@ -13,7 +13,7 @@
>  #ifdef CONFIG_EFI
>  
>  __efistub_kernel_size		= _edata - _text;
> -__efistub_stext_offset		= stext - _text;
> +__efistub_primary_entry_offset	= primary_entry - _text;
>  
>  
>  /*
> diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
> index 497f9675071d..8bd825233580 100644
> --- a/arch/arm64/kernel/vmlinux.lds.S
> +++ b/arch/arm64/kernel/vmlinux.lds.S
> @@ -72,8 +72,8 @@ jiffies = jiffies_64;
>  
>  /*
>   * The size of the PE/COFF section that covers the kernel image, which
> - * runs from stext to _edata, must be a round multiple of the PE/COFF
> - * FileAlignment, which we set to its minimum value of 0x200. 'stext'
> + * runs from _stext to _edata, must be a round multiple of the PE/COFF
> + * FileAlignment, which we set to its minimum value of 0x200. '_stext'
>   * itself is 4 KB aligned, so padding out _edata to a 0x200 aligned
>   * boundary should be sufficient.
>   */
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
