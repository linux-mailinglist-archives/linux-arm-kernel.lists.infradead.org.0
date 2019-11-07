Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84DE2F2DD5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 13:01:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=d++nx2/vfSOiNCfAntxtx0mOKcNe9fw8XxrrI5toVgY=; b=AEyCgiEcVmgXY0j4DqYFP96/q
	ASQ4RZ4Qc6biI0S3MY42TbwwRrzcOemexX17sMBo0k0JObsTQpQEgZdGeVg9ZYMdW+XBbTLbeRSzk
	8TpXSKCfWDrKwrZpT9pvSuUPivvs2WigtMU6cEwZAJhELEqVkV2FsBwd9f4H8efxDErwZVDHj8pR9
	mzoRuMW5WLAEkRuwD1dwNy3+FFNNnn9/zSuwDDH0wU7ezETVTRpBY7qU6zPdld+BIe6cYiUivxDb5
	Qbsxz1nyQYCJsCgfijRZUOTlrO+fdc9NpfP99ndjclWAWgsE+iZdQx7uIldQY9gZKXjVlaS0Oji/p
	GUJ6VyPcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSgTW-00048b-Sl; Thu, 07 Nov 2019 12:01:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSgTQ-000486-Ln
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 12:01:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E518331B;
 Thu,  7 Nov 2019 04:01:11 -0800 (PST)
Received: from localhost.localdomain (unknown [10.1.196.67])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4D0753F6C4;
 Thu,  7 Nov 2019 04:01:11 -0800 (PST)
Subject: Re: [PATCH v7 3/4] arm64: Don't use KPTI where we have E0PD
To: Mark Brown <broonie@kernel.org>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
References: <20191106130052.10642-1-broonie@kernel.org>
 <20191106130052.10642-4-broonie@kernel.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <05bafb8a-9019-701c-f744-a8d014771b87@arm.com>
Date: Thu, 7 Nov 2019 12:01:10 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191106130052.10642-4-broonie@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_040112_757661_319A22FC 
X-CRM114-Status: GOOD (  25.81  )
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On 06/11/2019 13:00, Mark Brown wrote:
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
>   arch/arm64/include/asm/mmu.h | 11 +++++++++++
>   1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
> index 55e285fff262..d61908bf4c9c 100644
> --- a/arch/arm64/include/asm/mmu.h
> +++ b/arch/arm64/include/asm/mmu.h
> @@ -38,10 +38,21 @@ static inline bool arm64_kernel_unmapped_at_el0(void)
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
> +	 * where available.
> +	 */
> +	if (IS_ENABLED(CONFIG_ARM64_E0PD)) {
> +		ftr = read_sysreg_s(SYS_ID_AA64MMFR2_EL1);

I am trying to write down the rationale of checking this per-CPU.

Given that this gets run on all individual CPUs, via unmap_kernel_at_el0()
and the decision of choosing KPTI is affected by the lack of the E0PD feature
when it is helpful, having CPU local check is fine. Also this gives us the
advantage of choosing an nG mapping when the boot CPU indicates the need.

It may be helpful to have this added to the description/comment above.

> +		if ((ftr >> ID_AA64MMFR2_E0PD_SHIFT) & 0xf)

nit: You may use the existing helper :
	cpuid_feature_extract_unsigned_field(ftr, ID_AA64MMFR2_E0PD_SHIFT)

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
