Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 091B01C485A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 22:33:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZYY+HuFgePYEe3K/p2FGISgf3vJjWfROUNd+Wj7VA5s=; b=DtCyRVzWLhCIpH
	cLYlGd70TfaiB9P7NBm8Ip09JcVmnXLR2U6vkxr/r0w3gwG/LnnTvV5db/EP0W8UP8nG2/VkTBS1U
	Ej5iuIKtYmUFYu4C3yZNbSA75Pcj7UIra8t9NeCdgZ0UUGDID91eFdbVahWzWvQUd5NU0w88Y4QqD
	9A92kVWEUM2Mph8prG1Q9FRkXM4NV09DJeYOC1pJp4T1dahdU8YQReZiM+4WTVfvvwPJfo4HJw5P/
	+e4NU3oO+GlVnl2CdYcBgHFgt/HL6Ss8gQVHT/8bcgQXeBKswxuPqQP/odDwVnoPI54XCiXMR/arU
	xw/p/RoH+bUoroAWWU8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVhmI-0003IF-Hl; Mon, 04 May 2020 20:33:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVhmB-0003HY-03
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 20:33:20 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 21780205ED;
 Mon,  4 May 2020 20:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588624398;
 bh=y/D+iOhgi2sMFoWPB1GzgRf58kmCHVuTDHDgbVFDhNI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AyqtyYzDK69vjUVWyvIZlQskZX19mjt4mvMwmR6SG0JcVNPF3SxxGs64Epwy/d48v
 fztftrs+wf5WQVulePPVv4LLuB+GiXU0+MwBdzbW+SVT8OqjOfJ6pvUgQoRqZQLKMX
 ZKHzTV4abCsJUbyIGwOSWCG40Poh7mtvdVhkBOLY=
Date: Mon, 4 May 2020 21:33:14 +0100
From: Will Deacon <will@kernel.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V3 06/16] arm64/cpufeature: Introduce ID_MMFR5 CPU register
Message-ID: <20200504203313.GB5012@willie-the-truck>
References: <1588426445-24344-1-git-send-email-anshuman.khandual@arm.com>
 <1588426445-24344-7-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588426445-24344-7-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_133319_076782_11734219 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Marc Zyngier <maz@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 02, 2020 at 07:03:55PM +0530, Anshuman Khandual wrote:
> This adds basic building blocks required for ID_MMFR5 CPU register which
> provides information about the implemented memory model and memory
> management support in AArch32 state. This is added per ARM DDI 0487F.a
> specification.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: James Morse <james.morse@arm.com>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Cc: kvmarm@lists.cs.columbia.edu
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> 
> Suggested-by: Will Deacon <will@kernel.org>
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> ---
>  arch/arm64/include/asm/cpu.h    |  1 +
>  arch/arm64/include/asm/sysreg.h |  3 +++
>  arch/arm64/kernel/cpufeature.c  | 10 ++++++++++
>  arch/arm64/kernel/cpuinfo.c     |  1 +
>  arch/arm64/kvm/sys_regs.c       |  2 +-
>  5 files changed, 16 insertions(+), 1 deletion(-)

[...]

> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index 2ce952d9668d..c790cc200bb1 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -403,6 +403,11 @@ static const struct arm64_ftr_bits ftr_id_isar4[] = {
>  	ARM64_FTR_END,
>  };
>  
> +static const struct arm64_ftr_bits ftr_id_mmfr5[] = {
> +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_MMFR5_ETS_SHIFT, 4, 0),
> +	ARM64_FTR_END,
> +};
> +
>  static const struct arm64_ftr_bits ftr_id_isar6[] = {
>  	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_ISAR6_I8MM_SHIFT, 4, 0),
>  	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_ISAR6_BF16_SHIFT, 4, 0),
> @@ -527,6 +532,7 @@ static const struct __ftr_reg_entry {
>  	ARM64_FTR_REG(SYS_MVFR2_EL1, ftr_mvfr2),
>  	ARM64_FTR_REG(SYS_ID_PFR2_EL1, ftr_id_pfr2),
>  	ARM64_FTR_REG(SYS_ID_DFR1_EL1, ftr_id_dfr1),
> +	ARM64_FTR_REG(SYS_ID_MMFR5_EL1, ftr_id_mmfr5),
>  
>  	/* Op1 = 0, CRn = 0, CRm = 4 */
>  	ARM64_FTR_REG(SYS_ID_AA64PFR0_EL1, ftr_id_aa64pfr0),
> @@ -732,6 +738,7 @@ void __init init_cpu_features(struct cpuinfo_arm64 *info)
>  		init_cpu_ftr_reg(SYS_ID_MMFR1_EL1, info->reg_id_mmfr1);
>  		init_cpu_ftr_reg(SYS_ID_MMFR2_EL1, info->reg_id_mmfr2);
>  		init_cpu_ftr_reg(SYS_ID_MMFR3_EL1, info->reg_id_mmfr3);
> +		init_cpu_ftr_reg(SYS_ID_MMFR5_EL1, info->reg_id_mmfr5);
>  		init_cpu_ftr_reg(SYS_ID_PFR0_EL1, info->reg_id_pfr0);
>  		init_cpu_ftr_reg(SYS_ID_PFR1_EL1, info->reg_id_pfr1);
>  		init_cpu_ftr_reg(SYS_ID_PFR2_EL1, info->reg_id_pfr2);
> @@ -866,6 +873,8 @@ static int update_32bit_cpu_features(int cpu, struct cpuinfo_arm64 *info,
>  				      info->reg_id_mmfr2, boot->reg_id_mmfr2);
>  	taint |= check_update_ftr_reg(SYS_ID_MMFR3_EL1, cpu,
>  				      info->reg_id_mmfr3, boot->reg_id_mmfr3);

Looks like MMFR4 is missing here?

> +	taint |= check_update_ftr_reg(SYS_ID_MMFR5_EL1, cpu,
> +				      info->reg_id_mmfr5, boot->reg_id_mmfr5);

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
