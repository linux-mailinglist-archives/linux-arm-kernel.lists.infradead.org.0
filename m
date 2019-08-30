Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC887A342E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 11:40:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oxwbZT7Akc/mCUAf1Udw42O39t0biN7eo9C1kcSfK58=; b=ofoFTxP51L1d21
	YIOXkZTv4TajguAj+061EfWZ6q9VDgMQlTgMgLpptzpE1yoF8sG1YSto+Kd5HgHRj/gIhMLufrXkR
	Ld4j9cV9vq/SV7EyIg8r07eTODgzz+2Q2Bnk1JUBvwUX5LWktTRTHzmXsIMvnvmpxSfVYw02oNFgJ
	BJ+xaXoxbWBUWiZkG5qZeWoqqS4d2kenMemHjgNHcPAKLr0xX9Ov2H6J04E63GTSXU9193sJ2GS+d
	pPCKyk4wETNRnnuHt54WMVfu9IDRDtmBwrkOxhx5jbMvWxAI6qmUt3YaHxBqQTnZebWfvAuK20bHg
	J6qu4ls9o8qJR4Ux5rnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3dOH-0001Sz-EQ; Fri, 30 Aug 2019 09:40:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3dO1-00011t-A9
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 09:40:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4F7D3344;
 Fri, 30 Aug 2019 02:40:04 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F048A3F718;
 Fri, 30 Aug 2019 02:40:02 -0700 (PDT)
Date: Fri, 30 Aug 2019 10:40:00 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH ARM64 v4.4 V3 02/44] arm64: Implement
 array_index_mask_nospec()
Message-ID: <20190830094000.GB46475@lakrids.cambridge.arm.com>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
 <a01785b993e2b39864ee0cab09695ae23a02b2f5.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a01785b993e2b39864ee0cab09695ae23a02b2f5.1567077734.git.viresh.kumar@linaro.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_024005_446897_3DA65591 
X-CRM114-Status: GOOD (  16.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Julien Thierry <Julien.Thierry@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, stable@vger.kernel.org, mark.brown@arm.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 05:03:47PM +0530, Viresh Kumar wrote:
> From: Robin Murphy <robin.murphy@arm.com>
> 
> commit 022620eed3d0bc4bf2027326f599f5ad71c2ea3f upstream.
> 
> Provide an optimised, assembly implementation of array_index_mask_nospec()
> for arm64 so that the compiler is not in a position to transform the code
> in ways which affect its ability to inhibit speculation (e.g. by introducing
> conditional branches).
> 
> This is similar to the sequence used by x86, modulo architectural differences
> in the carry/borrow flags.
> 
> Reviewed-by: Mark Rutland <mark.rutland@arm.com>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> Signed-off-by: Will Deacon <will.deacon@arm.com>
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>

Reviewed-by: Mark Rutland <mark.rutland@arm.com> [v4.4 backport]

Mark.

> ---
>  arch/arm64/include/asm/barrier.h | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/barrier.h b/arch/arm64/include/asm/barrier.h
> index 574486634c62..7c25e3e11b6d 100644
> --- a/arch/arm64/include/asm/barrier.h
> +++ b/arch/arm64/include/asm/barrier.h
> @@ -37,6 +37,27 @@
>  #define dma_rmb()	dmb(oshld)
>  #define dma_wmb()	dmb(oshst)
>  
> +/*
> + * Generate a mask for array_index__nospec() that is ~0UL when 0 <= idx < sz
> + * and 0 otherwise.
> + */
> +#define array_index_mask_nospec array_index_mask_nospec
> +static inline unsigned long array_index_mask_nospec(unsigned long idx,
> +						    unsigned long sz)
> +{
> +	unsigned long mask;
> +
> +	asm volatile(
> +	"	cmp	%1, %2\n"
> +	"	sbc	%0, xzr, xzr\n"
> +	: "=r" (mask)
> +	: "r" (idx), "Ir" (sz)
> +	: "cc");
> +
> +	csdb();
> +	return mask;
> +}
> +
>  #define smp_mb()	dmb(ish)
>  #define smp_rmb()	dmb(ishld)
>  #define smp_wmb()	dmb(ishst)
> -- 
> 2.21.0.rc0.269.g1a574e7a288b
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
