Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8039E1C2F7C
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 23:31:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=S7QWWm+OKsrEQwd0TVjV+cJv/OKZnV15ahaplEHhZmI=; b=F433UVmXlgZ3PkY8iEkbAxRgW
	WQL5qdmGS/rIlNLLyKEnkqOeGNVc29OL3iyCAbU9UzNvu43QfWsy7/0pBfVWoD1vpWPaAj8ZII3au
	Vs/t3JdRW55RknGR+EhBgMZ8lnRrnSUASWneY34sr5Qs73S+AuKJOfEYDLSuaydVEz+WD6Y4Mn4fP
	wosV0fHrmg1lbOsbgi40R6ryS7OvOTfIxF9geQKAibXkYyZmCCnI4ozI7EfjLQbat+Z9Pk5G19GvV
	81DYlZUX5IrGhavg6drm3myXGUIEplctjiO2xqswVdIUoaqNetfOBJvVff0BeJ2wclQLOrSw10dav
	AT9CrwOUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVMCM-0008PI-Ks; Sun, 03 May 2020 21:30:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVMCF-0008D1-Ow
 for linux-arm-kernel@lists.infradead.org; Sun, 03 May 2020 21:30:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B82A31FB;
 Sun,  3 May 2020 14:30:43 -0700 (PDT)
Received: from [10.37.12.17] (unknown [10.37.12.17])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C33E73F68F;
 Sun,  3 May 2020 14:30:41 -0700 (PDT)
Subject: Re: [PATCH V3 05/16] arm64/cpufeature: Introduce ID_DFR1 CPU register
To: anshuman.khandual@arm.com, linux-arm-kernel@lists.infradead.org
References: <1588426445-24344-1-git-send-email-anshuman.khandual@arm.com>
 <1588426445-24344-6-git-send-email-anshuman.khandual@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <baaccab1-4f54-bc86-4244-2dc981b2dc90@arm.com>
Date: Sun, 3 May 2020 22:35:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <1588426445-24344-6-git-send-email-anshuman.khandual@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_143047_900649_23C01ACD 
X-CRM114-Status: GOOD (  19.42  )
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 james.morse@arm.com, maz@kernel.org, will@kernel.org,
 kvmarm@lists.cs.columbia.edu
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/02/2020 02:33 PM, Anshuman Khandual wrote:
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
> ---
>   arch/arm64/include/asm/cpu.h    |  1 +
>   arch/arm64/include/asm/sysreg.h |  3 +++
>   arch/arm64/kernel/cpufeature.c  | 10 ++++++++++
>   arch/arm64/kernel/cpuinfo.c     |  1 +
>   arch/arm64/kvm/sys_regs.c       |  2 +-
>   5 files changed, 16 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/cpu.h b/arch/arm64/include/asm/cpu.h
> index 464e828a994d..d9a78bdec409 100644
> --- a/arch/arm64/include/asm/cpu.h
> +++ b/arch/arm64/include/asm/cpu.h
> @@ -33,6 +33,7 @@ struct cpuinfo_arm64 {
>   	u64		reg_id_aa64zfr0;
>   
>   	u32		reg_id_dfr0;
> +	u32		reg_id_dfr1;
>   	u32		reg_id_isar0;
>   	u32		reg_id_isar1;
>   	u32		reg_id_isar2;
> diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
> index c977449e02db..2e1e922e1409 100644
> --- a/arch/arm64/include/asm/sysreg.h
> +++ b/arch/arm64/include/asm/sysreg.h
> @@ -154,6 +154,7 @@
>   #define SYS_MVFR1_EL1			sys_reg(3, 0, 0, 3, 1)
>   #define SYS_MVFR2_EL1			sys_reg(3, 0, 0, 3, 2)
>   #define SYS_ID_PFR2_EL1			sys_reg(3, 0, 0, 3, 4)
> +#define SYS_ID_DFR1_EL1			sys_reg(3, 0, 0, 3, 5)
>   
>   #define SYS_ID_AA64PFR0_EL1		sys_reg(3, 0, 0, 4, 0)
>   #define SYS_ID_AA64PFR1_EL1		sys_reg(3, 0, 0, 4, 1)
> @@ -763,6 +764,8 @@
>   #define ID_ISAR4_WITHSHIFTS_SHIFT	4
>   #define ID_ISAR4_UNPRIV_SHIFT		0
>   
> +#define ID_DFR1_MTPMU_SHIFT		0
> +
>   #define ID_ISAR0_DIVIDE_SHIFT		24
>   #define ID_ISAR0_DEBUG_SHIFT		20
>   #define ID_ISAR0_COPROC_SHIFT		16
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index a8247bf92959..2ce952d9668d 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -451,6 +451,11 @@ static const struct arm64_ftr_bits ftr_id_dfr0[] = {
>   	ARM64_FTR_END,
>   };
>   
> +static const struct arm64_ftr_bits ftr_id_dfr1[] = {
> +	S_ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_DFR1_MTPMU_SHIFT, 4, 0),


> -	ID_UNALLOCATED(3,5),
> +	ID_SANITISED(ID_DFR1_EL1),
>   	ID_UNALLOCATED(3,6),
>   	ID_UNALLOCATED(3,7),
>   

IIUC, we should not expose the MTPMU to the KVM guests. Either we could 
drop this entire patch, or we should emulate the MTPMU to 0 in KVM.

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
