Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5DF57C920
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 18:48:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sog2sNpgV/rHXOceS9KMHU7kskgXTgipmHW14OjdUVg=; b=ZrwD/Uq6oRbIbH
	Veiv8zZg9y4rwi2X8KOZSswlR+Z5urt+WEuzBvGrgczZbAzl/GZo7ji2PvxCLAM6Rj0/+1Bea/hjx
	Zl5ubK04M63q8o376WPh5fbOE81GXi5ZxM4ouynS+4eG1nAG+EX4U+ln7hmT/6usr4WydUSfdDRdE
	IAtRiG/TORGEbZOh/W8fDsHWHkBF+TOxH3UHTpVws/kDsBy2j20S9NMVJHQFXfVfWdL/r3FBrwy44
	g7W567Qssiikrw+KKVOXs0d0k0p2S+Ag8tRnb3OLPz9gUXj271+pt5xpih//HN07+CHdrQZjXFFeY
	ZPiU5e+ydc/g4qjnkh4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsrmE-00028E-Dk; Wed, 31 Jul 2019 16:48:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsrm3-00027n-Bl
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 16:48:25 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AB37F206A2;
 Wed, 31 Jul 2019 16:48:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564591703;
 bh=bY5NTehu5zH24dQ6PhMEcVGEmpeDai9w7jRmanA0S9A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fobL8wexrbQY22clU7z9C6+jUGYZeS+vxPF+Xj/1McVwKY940QcURhXLrL4WwhxJS
 VZACITPHDQwunlIIeLjMBUL1I9sHZW6i7webGcw1rKozrMPFUx3nqwnJGzzH7Tq3mO
 aHMv0CxTuNRJHAYmhobZMNDBg2UWllmoefvBWgII=
Date: Wed, 31 Jul 2019 17:48:18 +0100
From: Will Deacon <will@kernel.org>
To: Peter Collingbourne <pcc@google.com>
Subject: Re: [PATCH v2] arm64: Add support for relocating the kernel with
 RELR relocations
Message-ID: <20190731164818.m2und6msyhlbf5oi@willie-the-truck>
References: <20190705080231.123522-1-pcc@google.com>
 <20190712193846.174893-1-pcc@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190712193846.174893-1-pcc@google.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_094823_447661_349C5991 
X-CRM114-Status: GOOD (  24.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, clang-built-linux@googlegroups.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 12:38:46PM -0700, Peter Collingbourne wrote:
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
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Changes in v2:
> - Reverted change to RELA processing
> - Added more comments, as requested by Nick and Will
> - Added a feature test for NM and OBJCOPY
> - Made CONFIG_RELR=y the default if the tools support it
> 
>  arch/arm64/Kconfig              | 10 ++++
>  arch/arm64/Makefile             |  4 ++
>  arch/arm64/kernel/head.S        | 96 ++++++++++++++++++++++++++++++---
>  arch/arm64/kernel/vmlinux.lds.S |  9 ++++
>  init/Kconfig                    |  3 ++
>  scripts/tools-support-relr.sh   | 16 ++++++
>  6 files changed, 132 insertions(+), 6 deletions(-)
>  create mode 100755 scripts/tools-support-relr.sh
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 7442edbcabfc3..cf3907d21d097 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1476,6 +1476,16 @@ config RELOCATABLE
>  	  relocation pass at runtime even if the kernel is loaded at the
>  	  same address it was linked at.
>  
> +config RELR
> +	bool "Use RELR relocation packing"
> +	depends on RELOCATABLE && TOOLS_SUPPORT_RELR
> +	default y
> +	help
> +	  Store the kernel's dynamic relocations in the RELR relocation packing
> +	  format. Requires a compatible linker (currently only LLD supports

Drop "currently" because it will just rot

> +	  this feature), as well as compatible NM and OBJCOPY utilities
> +	  (llvm-nm and llvm-objcopy are compatible).
> +
>  config RANDOMIZE_BASE
>  	bool "Randomize the address of the kernel image"
>  	select ARM64_MODULE_PLTS if MODULES
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index bb1f1dbb34e8f..11f84450c7784 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -22,6 +22,10 @@ LDFLAGS_vmlinux		+= -shared -Bsymbolic -z notext -z norelro \
>  			$(call ld-option, --no-apply-dynamic-relocs)
>  endif
>  
> +ifeq ($(CONFIG_RELR),y)
> +  LDFLAGS_vmlinux += --pack-dyn-relocs=relr
> +endif

RELR isn't arm64-specific, right? So we could put this in the top-level
Makefile and have arm64 select ARCH_HAS_RELR if relocatable, so that other
architecture can easily support this in future.

>  ifeq ($(CONFIG_ARM64_ERRATUM_843419),y)
>    ifeq ($(call ld-option, --fix-cortex-a53-843419),)
>  $(warning ld does not support --fix-cortex-a53-843419; kernel may be susceptible to erratum)
> diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
> index 2cdacd1c141b9..cc23302e9d95e 100644
> --- a/arch/arm64/kernel/head.S
> +++ b/arch/arm64/kernel/head.S
> @@ -102,6 +102,8 @@ pe_header:
>  	 *  x23        stext() .. start_kernel()  physical misalignment/KASLR offset
>  	 *  x28        __create_page_tables()     callee preserved temp register
>  	 *  x19/x20    __primary_switch()         callee preserved temp registers
> +	 *  x24        __primary_switch() .. relocate_kernel()
> +	 *                                        current RELR displacement
>  	 */
>  ENTRY(stext)
>  	bl	preserve_boot_args
> @@ -834,14 +836,93 @@ __relocate_kernel:
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
> +
> +1:
> +#ifdef CONFIG_RELR
> +	/*
> +	 * Apply RELR relocations.
> +	 *
> +	 * RELR is a compressed format for storing relative relocations. The
> +	 * encoded sequence of entries looks like:
> +	 * [ AAAAAAAA BBBBBBB1 BBBBBBB1 ... AAAAAAAA BBBBBB1 ... ]

I assume these are treated as an array of u64 types for the purposes of
endianness? (have you tested with a big-endian kernel?).

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
