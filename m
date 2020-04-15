Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54CDF1A9A95
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 12:33:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/jMcefJUNM+wbMOsM/6cZQACiq47PHiEMGX4LZQ9OIU=; b=iqAFOMfSnM4WVZL0kzsMwafgb
	klZL3JaFR5NtPs1NIS2McySvuR/FZQZVqNkonuFojuovBf20O9E9OOdkrzr0foGmFo2AuG36cmV2t
	h4ktyRpsmMryrAx/EEvXJtvQIejZrwlCsrkfqEVNFhlIBgCsLrlltPRcFQOwqcwRfEKigm5ml0KQS
	nECwZ/2CEFnTNCm7PRZfrUMt49Nxs6SNRfZnHhbqAlxHLoNd7KMAILkDjvxyo3aJIajQaiE7J+4yh
	CufbcEr6+Lh3rsz+d0eZ0uKuXbIPSbjF+5NHnIlb6rI5JGOrN+ePOPzzXbYDZiTT1QaXoJ98smup/
	Ly0hhzVDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOfLd-0002fY-AB; Wed, 15 Apr 2020 10:32:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOfKt-00029K-Dm
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 10:32:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7D90B1063;
 Wed, 15 Apr 2020 03:32:00 -0700 (PDT)
Received: from [10.37.12.1] (unknown [10.37.12.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A70563F68F;
 Wed, 15 Apr 2020 03:31:58 -0700 (PDT)
Subject: Re: [PATCH 5/8] arm64: cpufeature: Factor out checking of AArch32
 features
To: will@kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
References: <20200414213114.2378-1-will@kernel.org>
 <20200414213114.2378-6-will@kernel.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <95817087-122e-0392-9474-c17ad1f926d2@arm.com>
Date: Wed, 15 Apr 2020 11:36:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20200414213114.2378-6-will@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_033203_513803_3295267D 
X-CRM114-Status: GOOD (  16.69  )
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
Cc: mark.rutland@arm.com, saiprakash.ranjan@codeaurora.org,
 anshuman.khandual@arm.com, maz@kernel.org, linux-kernel@vger.kernel.org,
 dianders@chromium.org, catalin.marinas@arm.com, kernel-team@android.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/14/2020 10:31 PM, Will Deacon wrote:
> update_cpu_features() is pretty large, so split out the checking of the
> AArch32 features into a separate function and call it after checking the
> AArch64 features.
> 
> Signed-off-by: Will Deacon <will@kernel.org>
> ---
>   arch/arm64/kernel/cpufeature.c | 108 +++++++++++++++++++--------------
>   1 file changed, 61 insertions(+), 47 deletions(-)
> 
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index 7dfcdd9e75c1..32828a77acc3 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -715,6 +715,65 @@ static int check_update_ftr_reg(u32 sys_id, int cpu, u64 val, u64 boot)
>   	return 1;
>   }
>   
> +static int update_32bit_cpu_features(int cpu, struct cpuinfo_arm64 *info,
> +				     struct cpuinfo_arm64 *boot)
> +{

...

> -
>   	if (id_aa64pfr0_sve(info->reg_id_aa64pfr0)) {
>   		taint |= check_update_ftr_reg(SYS_ZCR_EL1, cpu,
>   					info->reg_zcr, boot->reg_zcr);
> @@ -845,6 +857,8 @@ void update_cpu_features(int cpu,
>   			sve_update_vq_map();
>   	}
>   
> +	taint |= update_32bit_cpu_features(cpu, info, boot);
> +

This relies on the assumption that the id_aa64pfr0 has been sanitised. 
It may be worth adding a comment to make sure people (hacking the
kernel) don't move this around and break that dependency.

Either ways:

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
