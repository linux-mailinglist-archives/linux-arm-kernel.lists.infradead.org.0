Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44337D2E64
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 18:13:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jnENHW0xrQ5GzwPiIw4aPkPJYpa0oRzI9JC0Q4CpT2U=; b=GeFdug6+P3eNSO
	REEjl9Q04PM8ukEqYPOXxI/V4WVsxzt55VVDQmm0ztcdXmsL/DrN+WJXDWEwEe85baTkJNZBruTtj
	Wj+FewVzcYiReWYhNz4GJew8tctxpVih3VIswcDrEKzmERVhSWPlz4C1PFIOgTwTkmY290nQhJEPq
	zDkU5dI8w52act7sGaVXFhx6iIGtFdMXVP7q2Ba/7j1hmBaA4cRQfH2jXM23au83SE5LDTHxD/MWS
	oVN8KIHCIUwHPag+2Uj1WIfy9MLVFlz8lDRKGyw3MrwAJWKvUMo1zVDhiQ8HCdDZJh1u7do7B9noX
	87CMUWIw3XArW95pKRyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIb4E-0005f4-Ti; Thu, 10 Oct 2019 16:13:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIb46-0005eG-OM
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 16:13:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 74B5A337;
 Thu, 10 Oct 2019 09:13:20 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A82073F71A;
 Thu, 10 Oct 2019 09:13:19 -0700 (PDT)
Date: Thu, 10 Oct 2019 17:13:17 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 1/2] arm64: Add initial support for E0PD
Message-ID: <20191010161317.GD24793@lakrids.cambridge.arm.com>
References: <20190814183103.33707-1-broonie@kernel.org>
 <20190814183103.33707-2-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190814183103.33707-2-broonie@kernel.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_091322_834284_55B9E815 
X-CRM114-Status: GOOD (  16.74  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On Wed, Aug 14, 2019 at 07:31:02PM +0100, Mark Brown wrote:
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index 9323bcc40a58..62b01fc35ef6 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -219,6 +219,7 @@ static const struct arm64_ftr_bits ftr_id_aa64mmfr1[] = {
>  };
>  
>  static const struct arm64_ftr_bits ftr_id_aa64mmfr2[] = {
> +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64MMFR2_E0PD_SHIFT, 4, 0),

The presence of this entry means the system-wide value will be exposed
to a KVM guest, but since it's NONSTRICT we won't warn about a
late-onlined CPU that has a mismatch.

So if all the boot-time CPUs have E0PD, we can spawn a VM that starts
using E0PD, but we might (silently) later migrate it to a CPU without
E0PD, breaking the security guarantee.

I think we want this to be STRICT, so that we at least warn in such a
case.

More generally than this patch, I suspect we probably want to abort the
hotplug if we online a CPU that doesn't provide the same gaurantees as
the sys_val for the field.

[...]

> @@ -1559,6 +1573,19 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
>  		.sign = FTR_UNSIGNED,
>  		.min_field_value = 1,
>  	},
> +#endif
> +#ifdef CONFIG_ARM64_E0PD
> +	{
> +		.desc = "E0PD",
> +		.capability = ARM64_HAS_E0PD,
> +		.type = ARM64_CPUCAP_WEAK_LOCAL_CPU_FEATURE,

I suspect it would be better to treat this as a system-wide capability,
as with KPTI, which will make it much easier to reason about.

That would rule out having E0PD on a subset of CPUs, with or without
KPTI. With KPTI it's not really necessary, and without KPTI we don't
have a consistent guarantee, so that sounds reasonable to me.

Thanks,
Mark.

> +		.sys_reg = SYS_ID_AA64MMFR2_EL1,
> +		.sign = FTR_UNSIGNED,
> +		.field_pos = ID_AA64MMFR2_E0PD_SHIFT,
> +		.matches = has_cpuid_feature,
> +		.min_field_value = 1,
> +		.cpu_enable = cpu_enable_e0pd,
> +	},
>  #endif
>  	{},
>  };
> -- 
> 2.20.1
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
