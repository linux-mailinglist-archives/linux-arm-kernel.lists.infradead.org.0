Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA7C1D9489
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 12:42:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=J6OXebx635DNBMZV3UL20A4ZlQYs19Yh8pvlAjEgwSQ=; b=MNxeSkgsCkKmcTEltalzbIX+Y
	LeRUVwPTdcnKTY8mRdWP4ikrs7COOI/qYrzzQrwlF9GakoD6EZAtQdJc3qY5YHLh61bx+vY5u+OY4
	IQ8FjrIJwrzgkrvCqr/yAxkBcBy9cPcYNG0B/ZUwrw3i7Vi0ovrHuvhQF/lFU6NOyJFK6O1W6lNZQ
	1/sbmyeNdarJPSx51ZywqTvKlyENpLwthKhYOppcCNsrR5octQU8bDxrQnSh+y5AKRTZmM6osu2rc
	NO/Yn82HSWKh8fo4EXhuVPYBipCH2/KOJPevB1f3cj5C7sE11yzUvdLVrBavdZc2Vqk1kw2jM4sVe
	eDZYTMjDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jazh9-0001mk-2q; Tue, 19 May 2020 10:41:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jazh0-0001mP-EX
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 10:41:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 650AC101E;
 Tue, 19 May 2020 03:41:49 -0700 (PDT)
Received: from [10.37.8.206] (unknown [10.37.8.206])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 555D23F305;
 Tue, 19 May 2020 03:41:47 -0700 (PDT)
Subject: Re: [PATCH V4 05/17] arm64/cpufeature: Introduce ID_DFR1 CPU register
To: anshuman.khandual@arm.com, linux-arm-kernel@lists.infradead.org
References: <1589881254-10082-1-git-send-email-anshuman.khandual@arm.com>
 <1589881254-10082-6-git-send-email-anshuman.khandual@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <9d609264-83e4-230e-8d37-46f040b79666@arm.com>
Date: Tue, 19 May 2020 11:46:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <1589881254-10082-6-git-send-email-anshuman.khandual@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_034150_532428_B2FE3AB9 
X-CRM114-Status: GOOD (  17.83  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 james.morse@arm.com, maz@kernel.org, will@kernel.org,
 kvmarm@lists.cs.columbia.edu
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/19/2020 10:40 AM, Anshuman Khandual wrote:
> This adds basic building blocks required for ID_DFR1 CPU register which
> provides top level information about the debug system in AArch32 state.
> This is added per ARM DDI 0487F.a specification.
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

> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index 600ce237c487..faf644a66e89 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -457,6 +457,11 @@ static const struct arm64_ftr_bits ftr_id_dfr0[] = {
>   	ARM64_FTR_END,
>   };
>   
> +static const struct arm64_ftr_bits ftr_id_dfr1[] = {
> +	S_ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_DFR1_MTPMU_SHIFT, 4, 0),
> +	ARM64_FTR_END,
> +};
> +

> diff --git a/arch/arm64/kernel/cpuinfo.c b/arch/arm64/kernel/cpuinfo.c
> index cb79b083f97f..50a281703d9d 100644
> --- a/arch/arm64/kernel/cpuinfo.c
> +++ b/arch/arm64/kernel/cpuinfo.c
> @@ -362,6 +362,7 @@ static void __cpuinfo_store_cpu(struct cpuinfo_arm64 *info)
>   	/* Update the 32bit ID registers only if AArch32 is implemented */
>   	if (id_aa64pfr0_32bit_el0(info->reg_id_aa64pfr0)) {
>   		info->reg_id_dfr0 = read_cpuid(ID_DFR0_EL1);
> +		info->reg_id_dfr1 = read_cpuid(ID_DFR1_EL1);
>   		info->reg_id_isar0 = read_cpuid(ID_ISAR0_EL1);
>   		info->reg_id_isar1 = read_cpuid(ID_ISAR1_EL1);
>   		info->reg_id_isar2 = read_cpuid(ID_ISAR2_EL1);
> diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
> index b784b156edb3..0723cfbff7e9 100644
> --- a/arch/arm64/kvm/sys_regs.c
> +++ b/arch/arm64/kvm/sys_regs.c
> @@ -1457,7 +1457,7 @@ static const struct sys_reg_desc sys_reg_descs[] = {
>   	ID_SANITISED(MVFR2_EL1),
>   	ID_UNALLOCATED(3,3),
>   	ID_SANITISED(ID_PFR2_EL1),
> -	ID_UNALLOCATED(3,5),
> +	ID_HIDDEN(ID_DFR1_EL1),

It might be a good idea to mention why this is HIDDEN in the description.

With that :

Reviewed-by : Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
