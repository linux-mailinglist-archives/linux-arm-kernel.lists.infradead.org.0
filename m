Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CACD57AE6C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 18:53:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CKz++5gL92AdyJgYVjh6gBYU2s13Ajj5rBkYB1rc59E=; b=Robazt7/0sPu7H
	XLtbW8/cCdj0SsknC//kOuyjhkPub8AJJ/eBMuAN3N5HczC0LcDAn/yUdbzbSmH6vvG6JrDCSEF0d
	oHMe7VdGS395n47EZqSnEUqWt9DjuDgH46jVLU9VAf0NUWAAbCvNjyvCzOkJpdctKrFV4ymVilApX
	PXiIHwbh+tz6wvjeDe+v6ltwxHUS7fu/ZDqqitZGSJzWd09yv9Gn6N1MZzEKVWgBfzpi+IfRGZ94w
	npp6tQ4arCFjS+Lyfnl2ukOtM7G5CzsjB7uFG/ZJt6k8po7kzdJJGtslm4BHW0uQ8CfoUhVox3WKe
	mYsYZbZrMFTRYue+luBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsVNY-0001yM-4m; Tue, 30 Jul 2019 16:53:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsVNM-0001y2-Se
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 16:53:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7248D344;
 Tue, 30 Jul 2019 09:53:22 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C011C3F694;
 Tue, 30 Jul 2019 09:53:21 -0700 (PDT)
Date: Tue, 30 Jul 2019 17:53:16 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: cpufeature: Fix feature comparison for
 CTR_EL0.{CWG, ERG}
Message-ID: <20190730165316.GA35457@lakrids.cambridge.arm.com>
References: <20190730144020.3518-1-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730144020.3518-1-will@kernel.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_095325_015116_0C921A72 
X-CRM114-Status: GOOD (  18.83  )
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
Cc: catalin.marinas@arm.com, linux-arm-kernel@lists.infradead.org,
 Suzuki Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 03:40:20PM +0100, Will Deacon wrote:
> If CTR_EL0.{CWG,ERG} are 0b0000 then they must be interpreted to have
> their architecturally maximum values, which defeats the use of
> FTR_HIGHER_SAFE when sanitising CPU ID registers on heterogeneous
> machines.
> 
> Introduce FTR_HIGHER_OR_ZERO_SAFE so that these fields effectively
> saturate at zero.
> 
> Cc: Suzuki Poulose <suzuki.poulose@arm.com>
> Fixes: 3c739b571084 ("arm64: Keep track of CPU feature registers")
> Signed-off-by: Will Deacon <will@kernel.org>
> ---
>  arch/arm64/include/asm/cpufeature.h | 7 ++++---
>  arch/arm64/kernel/cpufeature.c      | 8 ++++++--
>  2 files changed, 10 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
> index 407e2bf23676..c96ffa4722d3 100644
> --- a/arch/arm64/include/asm/cpufeature.h
> +++ b/arch/arm64/include/asm/cpufeature.h
> @@ -35,9 +35,10 @@
>   */
>  
>  enum ftr_type {
> -	FTR_EXACT,	/* Use a predefined safe value */
> -	FTR_LOWER_SAFE,	/* Smaller value is safe */
> -	FTR_HIGHER_SAFE,/* Bigger value is safe */
> +	FTR_EXACT,			/* Use a predefined safe value */
> +	FTR_LOWER_SAFE,			/* Smaller value is safe */
> +	FTR_HIGHER_SAFE,		/* Bigger value is safe */
> +	FTR_HIGHER_OR_ZERO_SAFE,	/* Bigger value is safe, but 0 is biggest */
>  };

Does this mean we've disproved the FUTEX_MAX_LOOPS conjecture? ;)

FWIW:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

>  
>  #define FTR_STRICT	true	/* SANITY check strict matching required */
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index f29f36a65175..d19d14ba9ae4 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -225,8 +225,8 @@ static const struct arm64_ftr_bits ftr_ctr[] = {
>  	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_EXACT, 31, 1, 1), /* RES1 */
>  	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, CTR_DIC_SHIFT, 1, 1),
>  	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, CTR_IDC_SHIFT, 1, 1),
> -	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_HIGHER_SAFE, CTR_CWG_SHIFT, 4, 0),
> -	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_HIGHER_SAFE, CTR_ERG_SHIFT, 4, 0),
> +	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_HIGHER_OR_ZERO_SAFE, CTR_CWG_SHIFT, 4, 0),
> +	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_HIGHER_OR_ZERO_SAFE, CTR_ERG_SHIFT, 4, 0),
>  	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, CTR_DMINLINE_SHIFT, 4, 1),
>  	/*
>  	 * Linux can handle differing I-cache policies. Userspace JITs will
> @@ -468,6 +468,10 @@ static s64 arm64_ftr_safe_value(const struct arm64_ftr_bits *ftrp, s64 new,
>  	case FTR_LOWER_SAFE:
>  		ret = new < cur ? new : cur;
>  		break;
> +	case FTR_HIGHER_OR_ZERO_SAFE:
> +		if (!cur || !new)
> +			break;
> +		/* Fallthrough */
>  	case FTR_HIGHER_SAFE:
>  		ret = new > cur ? new : cur;
>  		break;
> -- 
> 2.11.0
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
