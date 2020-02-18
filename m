Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB70162B14
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 17:52:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dSJe6mP7D3kloE5tn3RFWEbUxV0jaLG++fcTVvOHBCE=; b=iio7ZZat+NEosS
	R1LZ8/A+uAYXtFKeVgCIfYJC2MjTc3345Rq+Exyy346NavKyKxoU8ThDo3ao4EO7j++yOikjb+hq0
	A1Y8PMZ9zhBN3DZUEPI51c6N6DQsBGLV6FiSX240ivclhp+gHV40reE1iJ0xDhEZOepLhxVW46BDm
	f/qMoRx3Bd8A6qJzIyC59Re2YM5UEySMXkhVLh2lv/g+xzByU++sbtXMbFAXbSqGNtnH9j7XSS8m0
	WRdAed8FW4me0JcWFqxsQl6cvonE/PUtzlxGhopJrDttbZpSyxEZbH1+nR1Ant2TOpqcWfMHUNKP9
	fscq08vbRJHhcC/RmRug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j466W-0001Gc-QQ; Tue, 18 Feb 2020 16:52:12 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j466P-0001Fh-Ac
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 16:52:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xBLjHMP2eGbIVzYd5mfcYLe+V9nuLC9yBBNTiFPgH+8=; b=J12p8UC2nnNT4XrmssDUP2jD/
 3zjetfjPdCrr3/fueG39+jDaHqUThGlv7Sg8q5y6RzKPRf3Cnu5t1nZpicCmpJc809U53llwT7ndt
 3WHX6tunomuyXyJF1hBNc90NhxUX46TryamYJEhWYfWcywmRIumEtJEFDLIvm74hVQxkeWtad7dRw
 TCSIagtBPZKzLR+s1I5a3BXHBgOZ9cMoVh4v7HJHQxFj0UBRrrAeZ1mSiDdFocxEB4nrsb5iFyOpv
 Pq1PrRJtygtFBSOE1K6LCTBmXbI6mVJI63oFdosyK4YMc+KMJ1BZ+3N5pegOyWYIsLr0yWeV7a8ET
 tJwsZmxkA==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:49568)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1j466D-0008Ni-Ll; Tue, 18 Feb 2020 16:51:53 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1j4669-0000ap-MZ; Tue, 18 Feb 2020 16:51:49 +0000
Date: Tue, 18 Feb 2020 16:51:49 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH 1/2] ARM: decompressor: prepare cache_clean_flush for
 doing by-VA maintenance
Message-ID: <20200218165149.GK25745@shell.armlinux.org.uk>
References: <20200218164430.32671-1-ardb@kernel.org>
 <20200218164430.32671-2-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200218164430.32671-2-ardb@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_085205_370375_B167CD2B 
X-CRM114-Status: GOOD (  17.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Marc Zyngier <maz@kernel.org>, linux-efi@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org, Nicolas Pitre <nico@fluxnic.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 05:44:29PM +0100, Ard Biesheuvel wrote:
> In preparation of turning the decompressor's cache clean/flush
> operations into proper by-VA maintenance for v7 cores, pass the
> start and end addresses of the regions that need cache maintenance
> into cache_clean_flush in registers r0 and r1.

Where's the documentation of the new calling convention?  This is
assembly code, it needs such things documented as there's no
function prototypes to give that information.

> 
> Currently, all implementations of cache_clean_flush ignore these
> values, so no functional change is expected as a result of this
> patch.
> 
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> ---
>  arch/arm/boot/compressed/head.S | 28 +++++++++++++++++---
>  1 file changed, 25 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
> index 7b86a2e1acce..935799b92198 100644
> --- a/arch/arm/boot/compressed/head.S
> +++ b/arch/arm/boot/compressed/head.S
> @@ -525,12 +525,15 @@ dtb_check_done:
>  		/* cache_clean_flush may use the stack, so relocate it */
>  		add	sp, sp, r6
>  #endif
> -
> +		mov	r0, r9
> +		ldr	r1, 0f
> +		add	r1, r1, r0
>  		bl	cache_clean_flush
>  
>  		badr	r0, restart
>  		add	r0, r0, r6
>  		mov	pc, r0
> +0:		.long	_edata - restart
>  
>  wont_overwrite:
>  /*
> @@ -622,6 +625,21 @@ not_relocated:	mov	r0, #0
>  		add	r2, sp, #0x10000	@ 64k max
>  		mov	r3, r7
>  		bl	decompress_kernel
> +
> +		mov	r0, r4			@ base of inflated image
> +		adr	r1, LC0			@ actual LC0
> +		ldr	r2, [r1]		@ linktime LC0
> +		sub	r2, r1, r2		@ LC0 delta
> +		ldr	r1, [r1, #16]		@ link time inflated size offset
> +		ldr	r1, [r1, r2]		@ actual inflated size (LE)
> +#ifdef __ARMEB__
> +		/* convert to big endian */
> +		eor	r2, r1, r1, ror #16
> +		bic	r2, r2, #0x00ff0000
> +		mov	r1, r1, ror #8
> +		eor	r1, r1, r2, lsr #8
> +#endif
> +		add	r1, r1, r0		@ end of inflated image
>  		bl	cache_clean_flush
>  		bl	cache_off
>  
> @@ -1439,6 +1457,7 @@ reloc_code_end:
>  #ifdef CONFIG_EFI_STUB
>  		.align	2
>  _start:		.long	start - .
> +__edata:	.long	_edata - .
>  
>  ENTRY(efi_stub_entry)
>  		@ allocate space on stack for passing current zImage address
> @@ -1470,8 +1489,11 @@ ENTRY(efi_stub_entry)
>  		.align	2
>  0:		.long	start - (. + 4)
>  
> -		@ Preserve return value of efi_entry() in r4
> -		mov	r4, r0
> +		mov	r4, r0				@ preserve DTB pointer
> +		mov	r0, r1				@ start of image
> +		adr	r2, __edata
> +		ldr	r1, [r2]
> +		add	r1, r1, r2			@ end of image
>  		bl	cache_clean_flush
>  		bl	cache_off
>  
> -- 
> 2.17.1
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
