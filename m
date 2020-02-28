Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB981735E5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 12:15:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=US5gnqUKRd/24bJNwE9JP7No4xZyJXcSxfdnHWN87Xk=; b=lPMRWD3TU14QX/
	ZnjxZOX/AbYRkoxXNIC+yfg6jcdvN8VV7OrnpKDQhSHe24nh8XyDbsfet/ZW8g7OZ+bDYFH7vOSwl
	l3ZvQwAJMRMclK1xyGbl1re87ZgAis8jIQ5GVl8hf4T3eYWP8Brw+UlMPkxfijAjEDkv/GN/RQ+is
	GbryZblihqY271o4ZaxHk6UN0rQIIHpiwnaTN1TPBiXU+zHC8RmeKg9OxQWqXr1ktq5PZw/TZKLBk
	gcVPKXESpqtHRhFxKvayt7b/fzblbFW0xIvOllUILE3eVSmrg8ljAosmWfeZmrR7/9rKUczTx8GOe
	Q3KkVTvI2Td7EvPc7dqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7dbo-0005B5-Jx; Fri, 28 Feb 2020 11:15:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7dbc-0005Aj-J7
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 11:14:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 05B854B2;
 Fri, 28 Feb 2020 03:14:56 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6F9853F73B;
 Fri, 28 Feb 2020 03:14:55 -0800 (PST)
Date: Fri, 28 Feb 2020 11:14:50 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH efi-next 2/3] efi/arm64: clean EFI stub exit code from
 cache instead of avoiding it
Message-ID: <20200228111450.GA36089@lakrids.cambridge.arm.com>
References: <20200228100244.10979-1-ardb@kernel.org>
 <20200228100244.10979-3-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228100244.10979-3-ardb@kernel.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_031456_712068_25388028 
X-CRM114-Status: GOOD (  20.89  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 11:02:43AM +0100, Ard Biesheuvel wrote:
> Commit 9f9223778 ("efi/libstub/arm: Make efi_entry() an ordinary PE/COFF
> entrypoint") modified the handover code written in assembler, and for
> maintainability, aligned the logic with the logic used in the 32-bit ARM
> version, which is to avoid cache maintenance on the remaining instructions
> in the subroutine that will be executed with the MMU and caches off, and
> instead, branch into the relocated copy of the kernel image.
> 
> However, this assumes that this copy is executable, and this means we
> expect EFI_LOADER_DATA regions to be executable as well, which is not
> a reasonable assumption to make, even if this is true for most UEFI
> implementations today.
> 
> So change this back, and add a __flush_dcache_area() call to cover the
> remaining code in the subroutine.
> 
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> ---
>  arch/arm64/kernel/efi-entry.S  | 18 +++++++++---------
>  arch/arm64/kernel/image-vars.h |  2 +-
>  2 files changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm64/kernel/efi-entry.S b/arch/arm64/kernel/efi-entry.S
> index 4cfd03c35c49..d5dee064975f 100644
> --- a/arch/arm64/kernel/efi-entry.S
> +++ b/arch/arm64/kernel/efi-entry.S
> @@ -19,7 +19,8 @@ ENTRY(efi_enter_kernel)
>  	 * point stored in x0. Save those values in registers which are
>  	 * callee preserved.
>  	 */
> -	mov	x19, x0			// relocated Image address
> +	ldr	w2, =stext_offset
> +	add	x19, x0, x2		// relocated Image entrypoint
>  	mov	x20, x1			// DTB address
>  
>  	/*
> @@ -29,15 +30,14 @@ ENTRY(efi_enter_kernel)
>  	ldr	w1, =kernel_size
>  	bl	__flush_dcache_area
>  	ic	ialluis
> -	dsb	sy
>  
>  	/*
> -	 * Jump across, into the copy of the image that we just cleaned
> -	 * to the PoC, so that we can safely disable the MMU and caches.
> +	 * Flush the remainder of this routine to the PoC

Minor nit, but could we please say 'Clean' rather than 'Flush' here?

Even better, we now have __clean_dcache_area_poc(), and can use that
too.

Thanks,
Mark.

> +	 * so that we can safely disable the MMU and caches.
>  	 */
> -	ldr	w0, .Ljmp
> -	sub	x0, x19, w0, sxtw
> -	br	x0
> +	adr	x0, 0f
> +	ldr	w1, 3f
> +	bl	__flush_dcache_area
>  0:
>  	/* Turn off Dcache and MMU */
>  	mrs	x0, CurrentEL
> @@ -63,6 +63,6 @@ ENTRY(efi_enter_kernel)
>  	mov	x1, xzr
>  	mov	x2, xzr
>  	mov	x3, xzr
> -	b	stext
> +	br	x19
>  ENDPROC(efi_enter_kernel)
> -.Ljmp:	.long	_text - 0b
> +3:	.long	. - 0b
> diff --git a/arch/arm64/kernel/image-vars.h b/arch/arm64/kernel/image-vars.h
> index 9a7aef0d6f70..28bf98f84adf 100644
> --- a/arch/arm64/kernel/image-vars.h
> +++ b/arch/arm64/kernel/image-vars.h
> @@ -13,6 +13,7 @@
>  #ifdef CONFIG_EFI
>  
>  __efistub_kernel_size		= _edata - _text;
> +__efistub_stext_offset		= stext - _text;
>  
>  
>  /*
> @@ -43,7 +44,6 @@ __efistub___memset		= __pi_memset;
>  #endif
>  
>  __efistub__text			= _text;
> -__efistub_stext			= stext;
>  __efistub__end			= _end;
>  __efistub__edata		= _edata;
>  __efistub_screen_info		= screen_info;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
