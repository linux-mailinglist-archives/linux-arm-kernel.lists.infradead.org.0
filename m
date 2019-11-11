Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7155F767F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 15:36:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ohLNAVmxn2FZWabPgjI17CGb5V5ara+Oz9hk0calHHo=; b=NWxkN2jTJXDtRN7zuTBkpc3S4
	KIiYjWZPhPaD2oqhZfxnyHg2zWtigOw2Bv/X+Y8I0Zn1COsx1yq8ggrql0Lt0m5PW3mYndfvZKsf/
	LVtJQuxES3rNtjWIkTI7tqVgsu5uU3HYPZQKVFU3idqcaR3s8sU3+Htq2jUxiB4f0SdOHapnlP6ju
	uhbdG5+U4cr0l6de1r2cFmeWCH2Nj5h9Xvcltkt1vBs0DB7xX4tBPuLq6tEqUajDq7HElUqiVxWKz
	C52pxtyTgC1ERqLKWzRpfAM5Yv0GfN7rNZehYGJccPvl9VwoOKdJ8qxpSNjlLVkD8Kev62mIgv8Zz
	Ce2XIKMiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUAo9-0006pM-6U; Mon, 11 Nov 2019 14:36:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUAo1-0006os-AW
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 14:36:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4866631B;
 Mon, 11 Nov 2019 06:36:36 -0800 (PST)
Received: from localhost.localdomain (unknown [10.1.196.67])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AF8633F52E;
 Mon, 11 Nov 2019 06:36:35 -0800 (PST)
Subject: Re: [PATCH v8 3/4] arm64: Don't use KPTI where we have E0PD
To: Mark Brown <broonie@kernel.org>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
References: <20191108170116.32105-1-broonie@kernel.org>
 <20191108170116.32105-4-broonie@kernel.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <5d846391-8d16-4b85-a83f-b48e636e2834@arm.com>
Date: Mon, 11 Nov 2019 14:36:34 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20191108170116.32105-4-broonie@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_063637_408042_AA7854A9 
X-CRM114-Status: GOOD (  23.80  )
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 08/11/2019 17:01, Mark Brown wrote:
> Since E0PD is intended to fulfil the same role as KPTI we don't need to
> use KPTI on CPUs where E0PD is available, we can rely on E0PD instead.
> Change the check that forces KPTI on when KASLR is enabled to check for
> E0PD before doing so, CPUs with E0PD are not expected to be affected by
> meltdown so should not need to enable KPTI for other reasons.
> 
> Since E0PD is a system capability we will still enable KPTI if any of
> the CPUs in the system lacks E0PD, this will rewrite any global mappings
> that were established in systems where some but not all CPUs support
> E0PD.  We may transiently have a mix of global and non-global mappings
> while booting since we use the local CPU when deciding if KPTI will be
> required prior to completing CPU enumeration but any global mappings
> will be converted to non-global ones when KPTI is applied.
> 
> KPTI can still be forced on from the command line if required.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>   arch/arm64/include/asm/mmu.h | 13 +++++++++++++
>   1 file changed, 13 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
> index 55e285fff262..2e2a0ade883c 100644
> --- a/arch/arm64/include/asm/mmu.h
> +++ b/arch/arm64/include/asm/mmu.h
> @@ -38,10 +38,23 @@ static inline bool arm64_kernel_unmapped_at_el0(void)
>   static inline bool kaslr_requires_kpti(void)
>   {
>   	bool tx1_bug;
> +	u64 ftr;
>   
>   	if (!IS_ENABLED(CONFIG_RANDOMIZE_BASE))
>   		return false;
>   
> +	/*
> +	 * E0PD does a similar job to KPTI so can be used instead
> +	 * where available. This will only run before the cpufeature

s/This will only run/This will run/ ?

> +	 * code has usefully run and we eventually check on all CPUs so
> +	 * we can and must check locally.
> +	 */

Otherwise looks fine to me:

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
