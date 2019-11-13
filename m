Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D08B2FB209
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 15:01:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=doHe9eNWM5eMXHdr9pOp/AuUN0kuhjNBP2pWEDVUytA=; b=WFZ1E1cpnNTitBvG0MlW3lVrt
	VmwKvresqwOFpw8RAkmjJSBlITT+vmguZjm1slaNte0G7/JH8rPBhgfEH7rtoOdvRPe5CoZ+iZsAC
	BPr1Qpu2ls1XTtrmTdxd7vuCg9+Qet2gsDXBat1Hz6F7/jkfpqkRTRP4E/hlHD6qVTZ+SuJQy2pkT
	oEYxJXjh1SOP6OTTxGTEc58NYk7RxOPeH3QcWEiZjq2tVoogCxwKa1cFXKLyUSEyW8xuUKF7JrhEu
	eHqM4eAIc/l5tcRXssISM17He/1zrvewAXS0tin1sqlSVSTDz6X4d+SZQupx4xvSGuH12krCpenWH
	InxR1+aRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUtDH-0002rN-F7; Wed, 13 Nov 2019 14:01:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUtDA-0002qM-3S
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 14:01:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 01C0B7A7;
 Wed, 13 Nov 2019 06:01:28 -0800 (PST)
Received: from localhost.localdomain (unknown [10.1.196.67])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D25AA3F6C4;
 Wed, 13 Nov 2019 06:01:26 -0800 (PST)
Subject: Re: [PATCH v2 1/2] arm64: Combine workarounds for speculative AT
 errata
To: Steven Price <steven.price@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>
References: <20191113114118.2427-1-steven.price@arm.com>
 <20191113114118.2427-2-steven.price@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <173fe989-4692-aa22-05b0-a217b7fd1d89@arm.com>
Date: Wed, 13 Nov 2019 14:01:25 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20191113114118.2427-2-steven.price@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_060132_192791_9D1DC3D3 
X-CRM114-Status: GOOD (  19.30  )
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
Cc: Julien Thierry <julien.thierry.kdev@gmail.com>,
 James Morse <james.morse@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 13/11/2019 11:41, Steven Price wrote:
> Cortex-A57/A72 have a similar errata to Cortex-A76 regarding speculation
> of the AT instruction. Since the workaround for A57/A72 doesn't require
> VHE, the restriction enforcing VHE for A76 can be removed by combining
> the workaround flag for both errata.
> 
> So combine WORKAROUND_1165522 and WORKAROUND_1319367 into
> WORKAROUND_SPECULATIVE_AT. The majority of code is contained within VHE
> or NVHE specific functions, for the cases where the code is shared extra
> checks against has_vhe().
> 
> This also paves the way for adding a similar erratum for Cortex-A55.
> 
> Signed-off-by: Steven Price <steven.price@arm.com>

> diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
> index 4f8187a4fc46..b801f8e832aa 100644
> --- a/arch/arm64/kernel/cpu_errata.c
> +++ b/arch/arm64/kernel/cpu_errata.c
> @@ -744,6 +744,16 @@ static const struct midr_range erratum_1418040_list[] = {
>   };
>   #endif
>   
> +#ifdef CONFIG_ARM64_WORKAROUND_SPECULATIVE_AT
> +static const struct midr_range erratum_speculative_at_list[] = {
> +#ifdef CONFIG_ARM64_ERRATUM_1165522
> +	/* Cortex A76 r0p0 to r2p0 */
> +	MIDR_RANGE(MIDR_CORTEX_A76, 0, 0, 2, 0),
> +#endif
> +	{},
> +};
> +#endif
> +
>   const struct arm64_cpu_capabilities arm64_errata[] = {
>   #ifdef CONFIG_ARM64_WORKAROUND_CLEAN_CACHE
>   	{
> @@ -868,12 +878,11 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
>   		ERRATA_MIDR_RANGE_LIST(erratum_1418040_list),
>   	},
>   #endif
> -#ifdef CONFIG_ARM64_ERRATUM_1165522
> +#ifdef CONFIG_ARM64_WORKAROUND_SPECULATIVE_AT
>   	{
> -		/* Cortex-A76 r0p0 to r2p0 */
>   		.desc = "ARM erratum 1165522",
> -		.capability = ARM64_WORKAROUND_1165522,
> -		ERRATA_MIDR_RANGE(MIDR_CORTEX_A76, 0, 0, 2, 0),
> +		.capability = ARM64_WORKAROUND_SPECULATIVE_AT,
> +		ERRATA_MIDR_RANGE_LIST(erratum_speculative_at_list),
>   	},
>   #endif
>   #ifdef CONFIG_ARM64_ERRATUM_1463225
> @@ -910,7 +919,7 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
>   #ifdef CONFIG_ARM64_ERRATUM_1319367
>   	{
>   		.desc = "ARM erratum 1319367",
> -		.capability = ARM64_WORKAROUND_1319367,
> +		.capability = ARM64_WORKAROUND_SPECULATIVE_AT,
>   		ERRATA_MIDR_RANGE_LIST(ca57_a72),
>   	},
>   #endif

Have you tested this patch with both the errata CONFIGs turned on ?
Having multiple entries for the same capability should trigger a WARNING at
boot with init_cpu_hwcaps_indirect_list_from_array().
You could simply add the MIDRs to the midr_list and update the description
to include all the Errata numbers.

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
