Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 006281F9494
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 12:27:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pzObvp/z2c6SyK/4IiRvcMgp1+36HcAnK+HqlYe9+NM=; b=pjBkRfBgS4e4PK
	+jICso9hU/NOYEyAZQ4qOz76+rVbdXLFZ3fTds9kF2kCP3cK2vOZLr7o0lthksiWIAXFU5UX9U2Sw
	40+vmQ8tSh6iiUaQs38VAPYrjkp0EIFA0rcGJ83p9uKx7enNN9DFRprKNp6RPqTXcngEYulMiDfZ4
	lCqJ9Y9+A3VZfc5BuCmoTzb48n3h29XeU+smGLYIVZZX775OgJONgjy2qeKEBt0gf9IFpg+rxqopq
	vNBznFRvkQSb2fgls94mp0QdY047G38jL6TECyGdxWCXSj4UsrCgmmrrx+wZn8SD3PpK975YNk+Rj
	gmiEKR/F51ljMHOnnwLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkmKh-0004Za-EV; Mon, 15 Jun 2020 10:27:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkmKX-0004Wt-Ta
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 10:27:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CAF631F1;
 Mon, 15 Jun 2020 03:27:04 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.7.221])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 28A083F71F;
 Mon, 15 Jun 2020 03:27:04 -0700 (PDT)
Date: Mon, 15 Jun 2020 11:27:01 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH] arm64: remove TEXT_OFFSET randomization
Message-ID: <20200615102701.GE773@C02TD0UTHF1T.local>
References: <20200615101939.634391-1-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200615101939.634391-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_032706_007502_3C43DEAA 
X-CRM114-Status: GOOD (  21.94  )
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
Cc: will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 12:19:39PM +0200, Ard Biesheuvel wrote:
> TEXT_OFFSET was recently changed to 0x0, in preparation for its removal
> at a later stage, and a warning is emitted into the kernel log when the
> bootloader appears to have failed to take the TEXT_OFFSET image header
> value into account.
> 
> Ironically, this warning itself fails to take TEXT_OFFSET into account,
> and compares the kernel image's alignment modulo 2M against a hardcoded
> value of 0x0, and so the warning will trigger spuriously when TEXT_OFFSET
> randomization is enabled.
> 
> Given the intent to get rid of TEXT_OFFSET entirely, let's fix this
> oversight by just removing support for TEXT_OFFSET randomization.
> 
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>

If nothing else, it's nice to see the scary awk go, so:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  arch/arm64/Kconfig.debug | 15 ---------------
>  arch/arm64/Makefile      |  6 ------
>  2 files changed, 21 deletions(-)
> 
> diff --git a/arch/arm64/Kconfig.debug b/arch/arm64/Kconfig.debug
> index cdf7ec0b975e..265c4461031f 100644
> --- a/arch/arm64/Kconfig.debug
> +++ b/arch/arm64/Kconfig.debug
> @@ -8,21 +8,6 @@ config PID_IN_CONTEXTIDR
>  	  instructions during context switch. Say Y here only if you are
>  	  planning to use hardware trace tools with this kernel.
>  
> -config ARM64_RANDOMIZE_TEXT_OFFSET
> -	bool "Randomize TEXT_OFFSET at build time"
> -	help
> -	  Say Y here if you want the image load offset (AKA TEXT_OFFSET)
> -	  of the kernel to be randomized at build-time. When selected,
> -	  this option will cause TEXT_OFFSET to be randomized upon any
> -	  build of the kernel, and the offset will be reflected in the
> -	  text_offset field of the resulting Image. This can be used to
> -	  fuzz-test bootloaders which respect text_offset.
> -
> -	  This option is intended for bootloader and/or kernel testing
> -	  only. Bootloaders must make no assumptions regarding the value
> -	  of TEXT_OFFSET and platforms must not require a specific
> -	  value.
> -
>  config DEBUG_EFI
>  	depends on EFI && DEBUG_INFO
>  	bool "UEFI debugging"
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index 76359cfb328a..a0d94d063fa8 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -121,13 +121,7 @@ endif
>  head-y		:= arch/arm64/kernel/head.o
>  
>  # The byte offset of the kernel image in RAM from the start of RAM.
> -ifeq ($(CONFIG_ARM64_RANDOMIZE_TEXT_OFFSET), y)
> -TEXT_OFFSET := $(shell awk "BEGIN {srand(); printf \"0x%06x\n\", \
> -		 int(2 * 1024 * 1024 / (2 ^ $(CONFIG_ARM64_PAGE_SHIFT)) * \
> -		 rand()) * (2 ^ $(CONFIG_ARM64_PAGE_SHIFT))}")
> -else
>  TEXT_OFFSET := 0x0
> -endif
>  
>  ifeq ($(CONFIG_KASAN_SW_TAGS), y)
>  KASAN_SHADOW_SCALE_SHIFT := 4
> -- 
> 2.27.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
