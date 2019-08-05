Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D56781E14
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 15:53:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v3vLG3IpvcGHg6gOGkSycTsypnpadMWp18NrXOfu1KM=; b=ughet7CCK+2Io/
	0sfnp85R8lmFph6FXfVBs59Jo+p/vloxlR0LLE8Z7Ii/RYuIZh/9631OcOrnOvHdVexR5RdKdtqkg
	JyrKgc6CzRzFiuvb7e/CNFZn1TAlfzjmgY5NwisvfiZ6OHOLvguCBeYHX1fEhAc/Mp6VTkvq+LL7z
	QzjUX8PPKoriejfKOBNlxmW4m5PaVMpOiaSGnAacGOezFCSRVB4xOLkBFbAHo+3qSioGMSfUPcebK
	jCkIeXa7I/QwEENMhwf3UNPR44ffRrOR7w/xJJ2NHch0uCquKNAY2iHL3NEy2bR6h1EHCSK4zofgN
	mhiRDPxQJ1XIAVdBIY2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hudQK-0007Lw-V7; Mon, 05 Aug 2019 13:53:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hudQA-0007LG-PG
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 13:53:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A0F8A337;
 Mon,  5 Aug 2019 06:53:04 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9B5233F706;
 Mon,  5 Aug 2019 06:53:03 -0700 (PDT)
Date: Mon, 5 Aug 2019 14:53:01 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Qian Cai <cai@lca.pw>
Subject: Re: [PATCH] arm64/efi: fix variable 'si' set but not used
Message-ID: <20190805135301.GB10425@arm.com>
References: <1564521828-4528-1-git-send-email-cai@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1564521828-4528-1-git-send-email-cai@lca.pw>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_065306_893218_115FF62A 
X-CRM114-Status: GOOD (  16.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-efi@vger.kernel.org, ard.biesheuvel@linaro.org,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 05:23:48PM -0400, Qian Cai wrote:
> GCC throws out this warning on arm64.
> 
> drivers/firmware/efi/libstub/arm-stub.c: In function 'efi_entry':
> drivers/firmware/efi/libstub/arm-stub.c:132:22: warning: variable 'si'
> set but not used [-Wunused-but-set-variable]
> 
> Fix it by making free_screen_info() a static inline function.
> 
> Signed-off-by: Qian Cai <cai@lca.pw>
> ---
>  arch/arm64/include/asm/efi.h | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/efi.h b/arch/arm64/include/asm/efi.h
> index 8e79ce9c3f5c..76a144702586 100644
> --- a/arch/arm64/include/asm/efi.h
> +++ b/arch/arm64/include/asm/efi.h
> @@ -105,7 +105,11 @@ static inline unsigned long efi_get_max_initrd_addr(unsigned long dram_base,
>  	((protocol##_t *)instance)->f(instance, ##__VA_ARGS__)
>  
>  #define alloc_screen_info(x...)		&screen_info
> -#define free_screen_info(x...)
> +
> +static inline void free_screen_info(efi_system_table_t *sys_table_arg,
> +				    struct screen_info *si)
> +{
> +}

Is this issue caused by the EFI stub being built with non-default
CFLAGS?

The toplevel Makefile specifies -Wno-unused-but-set-variable, which
would silence this warning.

It's debatable whether calling an empty inline function "uses" the
arguments, so I think your patch only silences the warning by accident:
different GCC versions, or clang, might still warn.


I wonder if we're missing any other options that would make sense for
the EFI stub.

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
