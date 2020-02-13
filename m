Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFD615BB6B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 10:17:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CcQYELXXPgxzKOu777CNMWS5ssL/ATQM7Hv+dLOsne4=; b=N5A+IFXba5jtuk
	Wma784wIp/lS8r6XJPg9iZ10UZKRfxBCEibQIpMV8OyOwpfOa8Mr1dT0u2avz6HGx+DGCzoRti0j8
	yMshw76Z42g5KzzK2gc9sT1Wrou1zh+HISeuqu+D/mhFXfrui1LCeE7KGRZDtoQgHJmF7puuujvJH
	VeljdujvPshK2wVPmdoFNxGuHtkvvqg3j85/ncvYLGP8ptVDtb1ka4XI6LbPkHPXOqidtxWNAM+EY
	zL3ycMujxAWl/fcnfnsaC5HOxIwARPmb1yWkay1pQMxTYC1gQMTffDzL17T3S3vtIRbn0DGRkEuN/
	Tzd0QrZILTN99UJnLl/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Acs-0004Mg-HT; Thu, 13 Feb 2020 09:17:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Acj-0004Lz-3W
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 09:17:30 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CC7E521734;
 Thu, 13 Feb 2020 09:17:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581585448;
 bh=NV2EcoccPdwUw4SNFQbawZlRnPI4yYMQRsUYIbM/MI0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KFaWvFnYfd2PhTwWBlSReHfzGLGK6O25//fL+tSECBXPXo94QuZ6/aaAm6c51lva/
 TefnJt0/OBlDSYX7UYVUOCLnb0a+GZ+cwgj3VYYNrllj/dBdIiQG+BNaS/O/qkj7rQ
 tJQi1FQ2QBT9/UGxJGKYEd1FWX5HkvpZ4J/EOCWw=
Date: Thu, 13 Feb 2020 09:17:24 +0000
From: Will Deacon <will@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH] arm64: kaslr: Fix build failure with CONFIG_ARCH_RANDOM=n
Message-ID: <20200213091724.GB849@willie-the-truck>
References: <20200213042457.17842-1-samuel@sholland.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213042457.17842-1-samuel@sholland.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_011729_171010_C9FC9D1C 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 10:24:57PM -0600, Samuel Holland wrote:
> Commit 2e8e1ea88cbc ("arm64: Use v8.5-RNG entropy for KASLR seed")
> introduced unconditional use of arm64-specific functions exported by
> asm/archrandom.h. With CONFIG_ARCH_RANDOM=y, this header is transitively
> included through linux/random.h. However, with CONFIG_ARCH_RANDOM=n,
> this header is not included, and the kernel fails to build.
> 
> Explicitly include asm/archrandom.h so __early_cpu_has_rndr() and
> __arm64_rndr() are always available, even when they are just stubs.
> 
> Fixes: 2e8e1ea88cbc ("arm64: Use v8.5-RNG entropy for KASLR seed")
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> ---
>  arch/arm64/kernel/kaslr.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/kernel/kaslr.c b/arch/arm64/kernel/kaslr.c
> index 53b8a4ee64ff..91a83104c6e8 100644
> --- a/arch/arm64/kernel/kaslr.c
> +++ b/arch/arm64/kernel/kaslr.c
> @@ -11,6 +11,7 @@
>  #include <linux/sched.h>
>  #include <linux/types.h>
>  
> +#include <asm/archrandom.h>
>  #include <asm/cacheflush.h>
>  #include <asm/fixmap.h>
>  #include <asm/kernel-pgtable.h>

Already queued up in arm64 for-next/fixes:

https://fixes.arm64.dev/

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
