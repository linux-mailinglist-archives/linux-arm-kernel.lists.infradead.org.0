Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC470CE717
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 17:16:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zVr8u0gfH+JaqD4Uh8PzZFlaC7enJtbrhrhbxbB9Nh4=; b=s5Y6L/j0s/MZ+R
	vHj/rIuRYU/6ruuy4leC+kvP3qALGWjPLYNYb9RQCMj8xuOQsS3fu+dLrQFgA388JK9P5Yr4nnd0X
	ZlhHpW+yjuF7gjby+ogSPtjAUbR9YcIOEdEBLGOFXNSMqVFM/xro60gUMYZK8SKTTqZLlV6mtAk4R
	4edbG0kOJDRqgF/9rq+1E2nXBUfd8L9DxzE5W/+TrJoQxXxVJxmKw60HgP6VR5ad63NlcFv/cH6Qs
	poRAJxVdYOfsuGEvFyHiJt4SipR3lPff9Ipl8NPfcG3FzSmwpt7L/SL60deQIDagyYpF5Je69MuaM
	YNFgYbUmGR0MTRwlGlhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHUka-0000Wf-8c; Mon, 07 Oct 2019 15:16:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHUkT-0000WI-6G
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 15:16:34 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E6E572053B;
 Mon,  7 Oct 2019 15:16:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570461392;
 bh=1KWc6qy4S4dAFizrUDR05ffrhI0+5D7NwG69fi9DCik=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eqLYEchjnFHAD2CGE/B/GW/whpvIMV7iIf17/g68LC9xqvA/bcpOV7hoLVeI7cb5z
 N+yyD7ekRNUk/RTMMkyigPajJzPSpKTCRo97AaWZYLqM0Ea/T94ldCA7S4e6QbvtJE
 JfWWHw4Xg9sQ8JSn8UWig8Jsi7kmyRUmBZqFIUzE=
Date: Mon, 7 Oct 2019 16:16:28 +0100
From: Will Deacon <will@kernel.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH] arm64: cpufeature: Set the FP/SIMD compat HWCAP bits
 properly
Message-ID: <20191007151628.wwikoxao42xl23no@willie-the-truck>
References: <20191007085312.27912-1-suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191007085312.27912-1-suzuki.poulose@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_081633_270138_ED0CCB31 
X-CRM114-Status: GOOD (  19.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki,

On Mon, Oct 07, 2019 at 09:53:12AM +0100, Suzuki K Poulose wrote:
> We set the compat_elf_hwcap bits unconditionally on arm64 to
> include the VFP and NEON support. However, the FP/SIMD unit
> is optional on Arm v8 and thus could be missing. We already
> handle this properly in the kernel, but still advertise to
> the COMPAT applications that the VFP is available. Fix this
> to make sure we only advertise when we really have them.

Why didn't we find this in testing? Should be able to throw an armel
Debian filesystem at the fastmodel in this configuration, no?

> Fixes: commit 82e0191a1aa11abf ("arm64: Support systems without FP/ASIMD")

nit: please drop "commit" from this tag.

> Cc: Will Deacon <will@kernel.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>  arch/arm64/kernel/cpufeature.c | 37 +++++++++++++++++++++++++++++++---
>  1 file changed, 34 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index 9323bcc40a58..9a28ba10dc03 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -32,9 +32,7 @@ static unsigned long elf_hwcap __read_mostly;
>  #define COMPAT_ELF_HWCAP_DEFAULT	\
>  				(COMPAT_HWCAP_HALF|COMPAT_HWCAP_THUMB|\
>  				 COMPAT_HWCAP_FAST_MULT|COMPAT_HWCAP_EDSP|\
> -				 COMPAT_HWCAP_TLS|COMPAT_HWCAP_VFP|\
> -				 COMPAT_HWCAP_VFPv3|COMPAT_HWCAP_VFPv4|\
> -				 COMPAT_HWCAP_NEON|COMPAT_HWCAP_IDIV|\
> +				 COMPAT_HWCAP_TLS|COMPAT_HWCAP_IDIV|\
>  				 COMPAT_HWCAP_LPAE)
>  unsigned int compat_elf_hwcap __read_mostly = COMPAT_ELF_HWCAP_DEFAULT;
>  unsigned int compat_elf_hwcap2 __read_mostly;
> @@ -1589,6 +1587,12 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
>  		.match_list = list,						\
>  	}
>  
> +#define HWCAP_CAP_MATCH(match, cap_type, cap)					\
> +	{									\
> +		__HWCAP_CAP(#cap, cap_type, cap)				\
> +		.matches = match,						\
> +	}

Do you actually need this, or can you use HWCAP_MULTI_CAP instead to check
the mvfr1 fields?

> +
>  #ifdef CONFIG_ARM64_PTR_AUTH
>  static const struct arm64_cpu_capabilities ptr_auth_hwcap_addr_matches[] = {
>  	{
> @@ -1662,8 +1666,35 @@ static const struct arm64_cpu_capabilities arm64_elf_hwcaps[] = {
>  	{},
>  };
>  
> +#ifdef CONFIG_COMPAT
> +static bool compat_has_neon(const struct arm64_cpu_capabilities *cap, int scope)
> +{
> +	/*
> +	 * Check that all of MVFR1_EL1.{SIMDSP, SIMDInt, SIMDLS} are available,
> +	 * in line with that of arm32 as in vfp_init(). We make sure that the
> +	 * check is future proof, by making sure value is non-zero.
> +	 */
> +	u32 mvfr1;
> +
> +	WARN_ON(scope == SCOPE_LOCAL_CPU && preemptible());
> +	if (scope == SCOPE_SYSTEM)
> +		mvfr1 = read_sanitised_ftr_reg(SYS_MVFR1_EL1);
> +	else
> +		mvfr1 = read_sysreg_s(SYS_MVFR1_EL1);
> +
> +	return (mvfr1 & (0xf << MVFR1_SIMDSP_SHIFT)) &&
> +		(mvfr1 & (0xf << MVFR1_SIMDINT_SHIFT)) &&
> +		(mvfr1 & (0xf << MVFR1_SIMDLS_SHIFT));

If you can't use HWCAP_MULTI_CAP, can you use cpuid_feature_extract_field()
instead of hardcoding shifts of 0xf?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
