Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC5419A695
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 09:51:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PducN7IXDUCugATB+s/t1Rx7m0UQ+uL6ej5ASd9pGNU=; b=EX88fkb0OfIFOC
	W0AGXKKaWjnQY2MRThg9ikyoe76Zh+3P8Y/tImlXLfTAF1vVwlHhlSe6s7T0dxF6bccc9i7FFurPy
	SKxoNkFKBfvjEs1yo0Jfu5eLBE76MBFGoTY9s4cAE2iCKViZhJIy3XqP+TC6B0WQMIHvJTh85NQfS
	xtazw1yljBXtUQnjpgXh03jn5+1WKaGRQY4LH8BYU4p7c/aTQ4v2f1P7bsMHPvzWfKXN6TUmq6bjH
	0rotdyCNGmtfnUr4o1McU7LpkKJZ7R68EFq5pyvlUpT3+RrQI4WyTGuCIJmaclb1W/po2Jo+LW7py
	Zs1BSZgJbqBL9Pg366dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJY9y-0007hK-4D; Wed, 01 Apr 2020 07:51:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJY9q-0007gM-Vi
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 07:51:32 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 88FF420714;
 Wed,  1 Apr 2020 07:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585727490;
 bh=3D97YiEndMg9UsBuiKsn+vb2S6w3nUXHpMzf6W+i8wI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HvODtZfZL3odvDezrvN07J5/K3/sdhHvG3YXrDo4nE2F8La/AUBNfwA7B6eWITyNk
 QUxlCVnc7w57AcajUdrw9LIzlD1l/b4kiic5+sQt43IVkwAPwssYO6ZYfFxMIlGH7H
 xdUizvWplklAiuqX6K9t09hvhdJkApGLL6qqKayU=
Date: Wed, 1 Apr 2020 08:51:25 +0100
From: Will Deacon <will@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH] arm64: bring Image header in line with latest Arm brand
 guidelines
Message-ID: <20200401075125.GA15950@willie-the-truck>
References: <20200401065636.1751-1-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401065636.1751-1-ardb@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_005131_045258_2611C771 
X-CRM114-Status: GOOD (  18.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: catalin.marinas@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ard,

On Wed, Apr 01, 2020 at 08:56:36AM +0200, Ard Biesheuvel wrote:
> The Arm brand guidelines are pretty clear when it comes to the way
> the brand name 'arm' should be displayed: it should be all lowercase,
> and there should be sufficient whitespace around it on all sides.
> 
> Let's use the reserved space we have available in the Image header to
> bring it in compliance with this.
> 
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> ---
>  arch/arm64/include/asm/image.h | 2 +-
>  arch/arm64/kernel/head.S       | 7 +++----
>  2 files changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/image.h b/arch/arm64/include/asm/image.h
> index c2b13213c720..a52e6eca8118 100644
> --- a/arch/arm64/include/asm/image.h
> +++ b/arch/arm64/include/asm/image.h
> @@ -3,7 +3,7 @@
>  #ifndef __ASM_IMAGE_H
>  #define __ASM_IMAGE_H
>  
> -#define ARM64_IMAGE_MAGIC	"ARM\x64"
> +#define ARM64_IMAGE_MAGIC	"arm\x64"
>  
>  #define ARM64_IMAGE_FLAG_BE_SHIFT		0
>  #define ARM64_IMAGE_FLAG_PAGE_SIZE_SHIFT	(ARM64_IMAGE_FLAG_BE_SHIFT + 1)
> diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
> index 57a91032b4c2..e70d3f96dfe4 100644
> --- a/arch/arm64/kernel/head.S
> +++ b/arch/arm64/kernel/head.S
> @@ -78,10 +78,9 @@ _head:
>  	le64sym	_kernel_offset_le		// Image load offset from start of RAM, little-endian
>  	le64sym	_kernel_size_le			// Effective size of kernel image, little-endian
>  	le64sym	_kernel_flags_le		// Informative flags, little-endian
> -	.quad	0				// reserved
> -	.quad	0				// reserved
> -	.quad	0				// reserved
> -	.ascii	ARM64_IMAGE_MAGIC		// Magic number
> +	.ascii		 "         "
> +	.ascii	"   " ARM64_IMAGE_MAGIC "   "	// Magic number
> +	.ascii		 "         "
>  #ifdef CONFIG_EFI
>  	.long	pe_header - _head		// Offset to the PE header.

Thanks for the patch. As you know, we take this kind of thing very seriously
in the kernel community, which is why I'm disappointed not to see you taking
this work to its natural conclusion by introducing a new printk format
specifier for "   arm   ", complete with the relevant escapes to ensure the
correct shade of blue on terminal emulators that support it.

But since the bootloader communities will probably be over the moon with
this patch on its own, I see no reason to hold it up:

Acked-until-noon-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
