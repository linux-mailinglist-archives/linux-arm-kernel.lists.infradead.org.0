Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE0517F585
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 11:59:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GjreoWcd06I4xEuRZstXoThAm9yw8k8c6W918gISZh4=; b=Nx/WgUU3S/XlyN
	CdYawy0OIHVBMRdHGl5JsGyZQxAihJ/T7kCuXO8C0MP497MWEPvnhcM5KTMW4N0jP7KdKBKP2Kr7n
	fil3zxsldiEzDnrA/6vEFPG8ONPvDTRKGvoKyD3CiQEskbG8dMJbBcd6pmdOOINXkZsK70KfI0tMC
	ujdf8u1Wg8N8lZVJU8vxx9YFi/Ym4eYWE7+7InoDr5ZauNgdM/DQ2vUHURlwMDE76iZT3GD0QeN51
	6FPgaDDs+C1Uuj2+lJ+jlPIoldwRCo8YMBhfBPOcdhrtH6qDkdijrXzWmiBmQOJ9XDNdQ8B6GvTYy
	bbTLYVv1k9gJYZKCR7PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBcba-0007CL-Mj; Tue, 10 Mar 2020 10:59:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBcbS-0007Bx-R4
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 10:59:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1CE3330E;
 Tue, 10 Mar 2020 03:59:14 -0700 (PDT)
Received: from [10.37.12.115] (unknown [10.37.12.115])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4F92D3F67D;
 Tue, 10 Mar 2020 03:59:11 -0700 (PDT)
Subject: Re: [PATCH v6 01/18] arm64: cpufeature: Fix meta-capability
 cpufeature check
To: Amit Daniel Kachhap <amit.kachhap@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
 <1583476525-13505-2-git-send-email-amit.kachhap@arm.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <3116200c-8c88-445e-d521-9ac0218116ff@arm.com>
Date: Tue, 10 Mar 2020 10:59:35 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1583476525-13505-2-git-send-email-amit.kachhap@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_035914_964539_F3667FF7 
X-CRM114-Status: GOOD (  20.67  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Amit,

On 3/6/20 6:35 AM, Amit Daniel Kachhap wrote:
> Some existing/future meta cpucaps match need the presence of individual
> cpucaps. Currently the individual cpucaps checks it via an array based
> flag and this introduces dependency on the array entry order.
> This limitation exists only for system scope cpufeature.
> 
> This patch introduces an internal helper function (__system_matches_cap)
> to invoke the matching handler for system scope. This helper has to be
> used during a narrow window when,
> - The system wide safe registers are set with all the SMP CPUs and,
> - The SYSTEM_FEATURE cpu_hwcaps may not have been set.
> 
> Normal users should use the existing cpus_have_{const_}cap() global
> function.
> 
> Suggested-by: Catalin Marinas <catalin.marinas@arm.com>
> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
> ---
>  arch/arm64/kernel/cpufeature.c | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index 0b67156..3818685 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -116,6 +116,8 @@ cpufeature_pan_not_uao(const struct arm64_cpu_capabilities *entry, int __unused)
>  
>  static void cpu_enable_cnp(struct arm64_cpu_capabilities const *cap);
>  
> +static bool __system_matches_cap(unsigned int n);
> +
>  /*
>   * NOTE: Any changes to the visibility of features should be kept in
>   * sync with the documentation of the CPU feature register ABI.
> @@ -2146,6 +2148,17 @@ bool this_cpu_has_cap(unsigned int n)
>  	return false;
>  }
>  

Nit: you might want to add a comment on top of __system_matches_cap() that
explains why we introduce this function and when should be used.

Otherwise looks good to me.

Reviewed-by: Vincenzo Frascino <Vincenzo.Frascino@arm.com>

> +static bool __system_matches_cap(unsigned int n)
> +{
> +	if (n < ARM64_NCAPS) {
> +		const struct arm64_cpu_capabilities *cap = cpu_hwcaps_ptrs[n];
> +
> +		if (cap)
> +			return cap->matches(cap, SCOPE_SYSTEM);
> +	}
> +	return false;
> +}
> +
>  void cpu_set_feature(unsigned int num)
>  {
>  	WARN_ON(num >= MAX_CPU_FEATURES);
> @@ -2218,7 +2231,7 @@ void __init setup_cpu_features(void)
>  static bool __maybe_unused
>  cpufeature_pan_not_uao(const struct arm64_cpu_capabilities *entry, int __unused)
>  {
> -	return (cpus_have_const_cap(ARM64_HAS_PAN) && !cpus_have_const_cap(ARM64_HAS_UAO));
> +	return (__system_matches_cap(ARM64_HAS_PAN) && !__system_matches_cap(ARM64_HAS_UAO));
>  }
>  
>  static void __maybe_unused cpu_enable_cnp(struct arm64_cpu_capabilities const *cap)
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
