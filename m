Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7970164AA8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 18:21:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lN2RwesuA1kmurcmXNY/lXjwcD3qEQpksDgMFOVs6B4=; b=B8AL5fZdBlPou2
	ZVyfGKGo44gnOAvcYY7MqhxVlRIFnKH+J758T9tROzjf8w3+T6viEZahcib8RmZ1j50J/SEFb26xq
	0JyqViFGXaqeoZrZ1xdReQ1aUjB7AfDHZbPQDV2ZRo9IfHLqNwMEO/Xg0pulZnLeTz8bJU6X0NVC/
	cYwQpT+MJxolEJLOqTLk0FkvHkJv2w4CcL2H9BpRvSYpVFMoFqU24KYB4fsNIeOM+zdr91l9tLUrr
	d0eyDEPQ7h/ekeBH/8v8G44fUu38tRuV2ZaSfZ8a16HhUBKB4Vn/LdlPmZTQfueowqSVVeKiszcK6
	qjH9apcALkHasYqiNliw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlFLk-0003CP-6B; Wed, 10 Jul 2019 16:21:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlFLL-0003Bb-Ut
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 16:21:21 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5EF5E208E4;
 Wed, 10 Jul 2019 16:21:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562775679;
 bh=J1jLtfNkF/2300l9HcH3eg1FXFafEYI2fT11EkAtbHE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MW760sqT88HQHoM75PjlOZvGGEceZDydkVl3Gp2RsuBWy1g8VBNCU1r5facjB6rzu
 pdU6Zlt5NK8vLmU4VH4xVEEuYiwKjt1fbIvYgyjHuV3HpqjLd7FIWk+ailaEtLSx7f
 7g62A92FOHcwnWcdfl6n2Hbqq0GZtN3I63lrd0PM=
Date: Wed, 10 Jul 2019 17:21:15 +0100
From: Will Deacon <will@kernel.org>
To: Peter Collingbourne <pcc@google.com>
Subject: Re: [PATCH] arm64: Add support for relocating the kernel with RELR
 relocations
Message-ID: <20190710162114.rucn5wyrlwhkifti@willie-the-truck>
References: <20190705080231.123522-1-pcc@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190705080231.123522-1-pcc@google.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_092120_035989_C4EEE5D9 
X-CRM114-Status: GOOD (  25.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, clang-built-linux@googlegroups.com,
 linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 05, 2019 at 01:02:31AM -0700, Peter Collingbourne wrote:
> RELR is a relocation packing format for relative relocations.
> The format is described in a generic-abi proposal:
> https://groups.google.com/d/topic/generic-abi/bX460iggiKg/discussion
> 
> The LLD linker can be instructed to pack relocations in the RELR
> format by passing the flag --pack-dyn-relocs=relr.
> 
> This patch adds a new config option, CONFIG_RELR. Enabling this option
> instructs the linker to pack vmlinux's relative relocations in the RELR
> format, and causes the kernel to apply the relocations at startup along
> with the RELA relocations. RELA relocations still need to be applied
> because the linker will emit RELA relative relocations if they are
> unrepresentable in the RELR format (i.e. address not a multiple of 2).
> 
> Enabling CONFIG_RELR reduces the size of a defconfig kernel image
> with CONFIG_RANDOMIZE_BASE by 3.5MB/16% uncompressed, or 550KB/5%
> compressed (lz4).
> 
> Signed-off-by: Peter Collingbourne <pcc@google.com>
> ---
>  arch/arm64/Kconfig              |  9 +++++
>  arch/arm64/Makefile             |  4 ++
>  arch/arm64/kernel/head.S        | 70 ++++++++++++++++++++++++++++-----
>  arch/arm64/kernel/vmlinux.lds.S |  9 +++++
>  4 files changed, 83 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 697ea05107298..f0cd0d2607e70 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1447,6 +1447,15 @@ config RELOCATABLE
>  	  relocation pass at runtime even if the kernel is loaded at the
>  	  same address it was linked at.
>  
> +config RELR
> +	bool "Use RELR relocation packing"
> +	depends on RELOCATABLE && $(ld-option,--pack-dyn-relocs=relr)

Do you know if this will also be supported by binutils and, if so, whether
they've agreed to use the same name for the option?

> +	help
> +	  Store the kernel's dynamic relocations in the RELR relocation packing
> +	  format. Requires a compatible linker (currently only LLD supports
> +	  this feature), as well as compatible NM and OBJCOPY utilities
> +	  (llvm-nm and llvm-objcopy are compatible).
> +
>  config RANDOMIZE_BASE
>  	bool "Randomize the address of the kernel image"
>  	select ARM64_MODULE_PLTS if MODULES
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index e9d2e578cbe67..16a8636f815c9 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -22,6 +22,10 @@ LDFLAGS_vmlinux		+= -shared -Bsymbolic -z notext -z norelro \
>  			$(call ld-option, --no-apply-dynamic-relocs)
>  endif
>  
> +ifeq ($(CONFIG_RELR),y)
> +  LDFLAGS_vmlinux += --pack-dyn-relocs=relr
> +endif
> +
>  ifeq ($(CONFIG_ARM64_ERRATUM_843419),y)
>    ifeq ($(call ld-option, --fix-cortex-a53-843419),)
>  $(warning ld does not support --fix-cortex-a53-843419; kernel may be susceptible to erratum)
> diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
> index 2cdacd1c141b9..9b27d5e7d8f70 100644
> --- a/arch/arm64/kernel/head.S
> +++ b/arch/arm64/kernel/head.S
> @@ -102,6 +102,7 @@ pe_header:
>  	 *  x23        stext() .. start_kernel()  physical misalignment/KASLR offset
>  	 *  x28        __create_page_tables()     callee preserved temp register
>  	 *  x19/x20    __primary_switch()         callee preserved temp registers
> +	 *  x24        __primary_switch()         current RELR displacement

I think the comment is a bit misleading here, since x24 is used by
__relocate_kernel(). Maybe make the middle column say:

	__primary_switch() .. __relocate_kernel()

it's still not ideal, since the latter can be invoked twice, but oh well.

>  	 */
>  ENTRY(stext)
>  	bl	preserve_boot_args
> @@ -824,24 +825,63 @@ __relocate_kernel:
>  	 * Iterate over each entry in the relocation table, and apply the
>  	 * relocations in place.
>  	 */
> -	ldr	w9, =__rela_offset		// offset to reloc table
> -	ldr	w10, =__rela_size		// size of reloc table
> -
>  	mov_q	x11, KIMAGE_VADDR		// default virtual offset
>  	add	x11, x11, x23			// actual virtual offset
> +
> +	ldr	w9, =__rela_offset		// offset to reloc table
> +	ldr	w10, =__rela_size		// size of reloc table

I agree with Nick that I'd prefer to leave these lines alone.

>  	add	x9, x9, x11			// __va(.rela)
>  	add	x10, x9, x10			// __va(.rela) + sizeof(.rela)
>  
>  0:	cmp	x9, x10
>  	b.hs	1f
> -	ldp	x11, x12, [x9], #24
> -	ldr	x13, [x9, #-8]
> -	cmp	w12, #R_AARCH64_RELATIVE
> +	ldp	x12, x13, [x9], #24
> +	ldr	x14, [x9, #-8]
> +	cmp	w13, #R_AARCH64_RELATIVE
>  	b.ne	0b
> -	add	x13, x13, x23			// relocate
> -	str	x13, [x11, x23]
> +	add	x14, x14, x23			// relocate
> +	str	x14, [x12, x23]
>  	b	0b
> -1:	ret

So the reason you're removing this ret is because we'll end up with both a
.relr section *and* .rela section, correct?

> +1:
> +#ifdef CONFIG_RELR
> +	ldr	w9, =__relr_offset		// offset to reloc table
> +	ldr	w10, =__relr_size		// size of reloc table
> +	add	x9, x9, x11			// __va(.relr)
> +	add	x10, x9, x10			// __va(.relr) + sizeof(.relr)
> +
> +	sub	x15, x23, x24			// delta from previous offset
> +	cbz	x15, 7f				// nothing to do if unchanged
> +	mov	x24, x23			// save new offset
> +
> +2:	cmp	x9, x10
> +	b.hs	7f
> +	ldr	x11, [x9], #8
> +	tbnz	x11, #0, 3f			// branch to handle bitmaps

Can we guarantee that x13 has been initialised at this point?

> +	add	x13, x11, x23
> +	ldr	x12, [x13]			// relocate address entry
> +	add	x12, x12, x15
> +	str	x12, [x13], #8			// adjust to start of bitmap
> +	b	2b
> +
> +3:	mov	x14, x13
> +4:	lsr	x11, x11, #1
> +	cbz	x11, 6f
> +	tbz	x11, #0, 5f			// skip bit if not set
> +	ldr	x12, [x14]			// relocate bit
> +	add	x12, x12, x15
> +	str	x12, [x14]
> +
> +5:	add	x14, x14, #8			// move to next bit's address
> +	b	4b
> +
> +6:	add	x13, x13, #(8 * 63)		// move to next bitmap's address
> +	b	2b

This desparately needs a block comment at the top (immediately after the
#ifdef CONFIG_RELR) describing the algorithm and the layout of the .relr
section, please.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
