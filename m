Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 303BB1AC2EB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 15:36:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HCNu2VkUv2zGqY2QDOrDpR8HC9HspfiXSPRG1T8Uy10=; b=c/LBe10GmDaRJu
	4EIDGtnDXRzfg+b9jTRNQOJfZAmz+AIalT/QllxR3LrhbGYKt08vKn/LqYfFwQ0jei1XLTjM9KLzT
	/Fev3RAMzOEDNZC3Zn/yj1yA4tdmH0tVdxiNIviXHLmHoORyGk/SMniILy/iDVX4PMZFS7DZ3QC7p
	wJYqzNS77UBdmOBCdwU0HTZfwqaCjGMss6FhMjKWb4CsXTo7ELxvQAA9XOtq73BAYB5XPjR/IV+tA
	OLGtVxexajOSACo91y2HwQMX6sp3fEOkePBRelOrMZ4iZSCAB9ng7DBABCKcnjCgbC3U0d5iIlRvz
	xMtoIUxFG9GiLrKyBbMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP4gv-00073Q-NS; Thu, 16 Apr 2020 13:36:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP4go-00071l-Lg
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 13:36:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 139F21FB;
 Thu, 16 Apr 2020 06:36:22 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2C0EF3F68F;
 Thu, 16 Apr 2020 06:36:21 -0700 (PDT)
Date: Thu, 16 Apr 2020 14:36:19 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH] arm64/kernel: vmlinux.lds: drop redundant discard/keep
 macros
Message-ID: <20200416133618.GI4987@lakrids.cambridge.arm.com>
References: <20200416132730.25290-1-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200416132730.25290-1-ardb@kernel.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_063622_754633_D3DD8E8F 
X-CRM114-Status: GOOD (  15.59  )
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
Cc: catalin.marinas@arm.com, will@kernel.org, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 03:27:30PM +0200, Ard Biesheuvel wrote:
> ARM_EXIT_KEEP and ARM_EXIT_DISCARD are always defined in the same way,
> so we don't really need them in the first place.
> 
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>

Looks like they've always been redundant for arm64, as they've been this
way from the commit that introduced this file.

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  arch/arm64/kernel/vmlinux.lds.S | 10 ++--------
>  1 file changed, 2 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
> index 1d399db0644f..04ea6160d444 100644
> --- a/arch/arm64/kernel/vmlinux.lds.S
> +++ b/arch/arm64/kernel/vmlinux.lds.S
> @@ -17,10 +17,6 @@
>  
>  #include "image.h"
>  
> -/* .exit.text needed in case of alternative patching */
> -#define ARM_EXIT_KEEP(x)	x
> -#define ARM_EXIT_DISCARD(x)
> -
>  OUTPUT_ARCH(aarch64)
>  ENTRY(_text)
>  
> @@ -95,8 +91,6 @@ SECTIONS
>  	 * order of matching.
>  	 */
>  	/DISCARD/ : {
> -		ARM_EXIT_DISCARD(EXIT_TEXT)
> -		ARM_EXIT_DISCARD(EXIT_DATA)
>  		EXIT_CALL
>  		*(.discard)
>  		*(.discard.*)
> @@ -161,7 +155,7 @@ SECTIONS
>  
>  	__exittext_begin = .;
>  	.exit.text : {
> -		ARM_EXIT_KEEP(EXIT_TEXT)
> +		EXIT_TEXT
>  	}
>  	__exittext_end = .;
>  
> @@ -188,7 +182,7 @@ SECTIONS
>  		*(.init.rodata.* .init.bss)	/* from the EFI stub */
>  	}
>  	.exit.data : {
> -		ARM_EXIT_KEEP(EXIT_DATA)
> +		EXIT_DATA
>  	}
>  
>  	PERCPU_SECTION(L1_CACHE_BYTES)
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
