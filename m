Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32AA8D3E92
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 13:36:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sncpjwfiOkmvE6mCrNffFJ2doRVKG1KaaN//+7nOec8=; b=EP5hmKxzj9NB5X
	qksH2V4i08sXb5BzUpZ6cd0tsfKcZtyvRyZoU0KHK5hlpho+snLuF4CR71KofR7vDXqOBFFNxFP8y
	kzYX8WSXH+QUZq33HS+tl2i2fcxfJatVbT3Dyo9uPNiVRnXd2PuIxfNFHuY+73VwlItGBuyH4LOj1
	G88JDwj734gdDiUgrGdLO3hXVT1iqhSxcmTOUHu+BJhnb9BPZXTGN8XWbk9B8xFecBi8PehEEIUMD
	KcED4UkS168/NbCWgTTMcnfz23pbjK1NGAf0YoSg88NVrvuueUgsrUh1XlG0bwrDVmbSTPospgsiw
	bdRHLgECrOvuTTCoMk+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iItDn-0006In-Uf; Fri, 11 Oct 2019 11:36:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iItDe-0006I3-1U
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 11:36:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0237528;
 Fri, 11 Oct 2019 04:36:24 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 050593F703;
 Fri, 11 Oct 2019 04:36:22 -0700 (PDT)
Date: Fri, 11 Oct 2019 12:36:20 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH 1/3] arm64: cpufeature: Fix the type of no FP/SIMD
 capability
Message-ID: <20191011113620.GG27757@arm.com>
References: <20191010171517.28782-1-suzuki.poulose@arm.com>
 <20191010171517.28782-2-suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010171517.28782-2-suzuki.poulose@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_043626_123562_1F43369F 
X-CRM114-Status: GOOD (  21.94  )
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 06:15:15PM +0100, Suzuki K Poulose wrote:
> The NO_FPSIMD capability is defined with scope SYSTEM, which implies
> that the "absence" of FP/SIMD on at least one CPU is detected only
> after all the SMP CPUs are brought up. However, we use the status
> of this capability for every context switch. So, let us change
> the scop to LOCAL_CPU to allow the detection of this capability
> as and when the first CPU without FP is brought up.
> 
> Also, the current type allows hotplugged CPU to be brought up without
> FP/SIMD when all the current CPUs have FP/SIMD and we have the userspace
> up. Fix both of these issues by changing the capability to
> BOOT_RESTRICTED_LOCAL_CPU_FEATURE.
> 
> Fixes: 82e0191a1aa11abf ("arm64: Support systems without FP/ASIMD")
> Cc: Will Deacon <will@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>  arch/arm64/kernel/cpufeature.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index 9323bcc40a58..0f9eace6c64b 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -1361,7 +1361,7 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
>  	{
>  		/* FP/SIMD is not implemented */
>  		.capability = ARM64_HAS_NO_FPSIMD,
> -		.type = ARM64_CPUCAP_SYSTEM_FEATURE,
> +		.type = ARM64_CPUCAP_BOOT_RESTRICTED_CPU_LOCAL_FEATURE,

ARM64_HAS_NO_FPSIMD is really a disability, not a capability.

Although we have other things that smell like this (CPU errata for
example), I wonder whether inverting the meaning in the case would
make the situation easier to understand.

So, we'd have ARM64_HAS_FPSIMD, with a minimum (signed) feature field
value of 0.  Then this just looks like an ARM64_CPUCAP_SYSTEM_FEATURE
IIUC.  We'd just need to invert the sense of the check in
system_supports_fpsimd().

>  		.min_field_value = 0,

(Does .min_field_value == 0 make sense, or is it even used?  I thought
only the default has_cpuid_feature() match logic uses that.)

>  		.matches = has_no_fpsimd,
>  	},

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
