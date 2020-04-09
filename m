Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F47F1A346B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 14:54:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cHFDFuIy1htIM4Ukafg8fyQxa9nI65TxGKCq8UjNaX0=; b=Xh5j84crkduryc
	mptCLA+ASDdEol6J5Y+wnAh65fdCES1nwR2ivPCNRr1tsnSOfoSjUOMzlGaoyZM1NJejvPb3F8yj3
	DWlk0bch5ns5NBbrOQxsoYlE5o3XQwaNbXrYS619khfqm9RMgUoKA3GrHWP1b6A9PmPaAxne7SFct
	cVdigv6tl3YlNpg6PTgIQ9LsYk5uAJgYDRoS2+RKDnwHRtjfCwrXM+t8+ITsBkODFbfO7pmNmw5cx
	OOQt7Nsv/diDcjh8F5qEXKG4cQvuDPrzc623gK0WUtc6b5PD1FdheSZ8n26BnZoB4PJzigf8fOBe1
	QnoJ8fyJ1yuh6EFdUDgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMWhg-0002hX-Hz; Thu, 09 Apr 2020 12:54:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMWhY-0002hE-7C
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 12:54:37 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 620982078E;
 Thu,  9 Apr 2020 12:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586436875;
 bh=Ih/KWwvRBRAhYRIoIaWK8aug+LMPArgxNsTaDiehG88=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=A1ukhvnAj5A1UP+XfMByybnpcpAplP4ot3hRH3dWuK0SGDzR8Xr6jbE+BHR2qZcQo
 bxiEmVjaH/7pyJVVqr54gtEjegy1yVPW0B9qK0JcHP7FygdvzSrZV8UzXcTlVtbcLr
 QS45i2CfQ6PP1WDVqZpEspJ32CSxDD+vNc3Md4co=
Date: Thu, 9 Apr 2020 13:54:31 +0100
From: Will Deacon <will@kernel.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH 1/6] arm64/cpufeature: Introduce ID_PFR2 CPU register
Message-ID: <20200409125431.GB13078@willie-the-truck>
References: <1580215149-21492-1-git-send-email-anshuman.khandual@arm.com>
 <1580215149-21492-2-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1580215149-21492-2-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_055436_306844_5A40B123 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Tue, Jan 28, 2020 at 06:09:04PM +0530, Anshuman Khandual wrote:
> This adds basic building blocks required for ID_PFR2 CPU register which
> provides information about the AArch32 programmers model which must be
> interpreted along with ID_PFR0 and ID_PFR1 CPU registers.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: James Morse <james.morse@arm.com>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: kvmarm@lists.cs.columbia.edu
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> ---
>  arch/arm64/include/asm/cpu.h    |  1 +
>  arch/arm64/include/asm/sysreg.h |  4 ++++
>  arch/arm64/kernel/cpufeature.c  | 11 +++++++++++
>  arch/arm64/kernel/cpuinfo.c     |  1 +
>  arch/arm64/kvm/sys_regs.c       |  2 +-
>  5 files changed, 18 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/cpu.h b/arch/arm64/include/asm/cpu.h
> index b4a40535a3d8..464e828a994d 100644
> --- a/arch/arm64/include/asm/cpu.h
> +++ b/arch/arm64/include/asm/cpu.h
> @@ -46,6 +46,7 @@ struct cpuinfo_arm64 {
>  	u32		reg_id_mmfr3;
>  	u32		reg_id_pfr0;
>  	u32		reg_id_pfr1;
> +	u32		reg_id_pfr2;
>  
>  	u32		reg_mvfr0;
>  	u32		reg_mvfr1;
> diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
> index b91570ff9db1..054aab7ebf1b 100644
> --- a/arch/arm64/include/asm/sysreg.h
> +++ b/arch/arm64/include/asm/sysreg.h
> @@ -151,6 +151,7 @@
>  #define SYS_MVFR0_EL1			sys_reg(3, 0, 0, 3, 0)
>  #define SYS_MVFR1_EL1			sys_reg(3, 0, 0, 3, 1)
>  #define SYS_MVFR2_EL1			sys_reg(3, 0, 0, 3, 2)
> +#define SYS_ID_PFR2_EL1			sys_reg(3, 0, 0, 3, 4)
>  
>  #define SYS_ID_AA64PFR0_EL1		sys_reg(3, 0, 0, 4, 0)
>  #define SYS_ID_AA64PFR1_EL1		sys_reg(3, 0, 0, 4, 1)
> @@ -717,6 +718,9 @@
>  #define ID_ISAR6_DP_SHIFT		4
>  #define ID_ISAR6_JSCVT_SHIFT		0
>  
> +#define ID_PFR2_SSBS_SHIFT		4
> +#define ID_PFR2_CSV3_SHIFT		0
> +
>  #define MVFR0_FPROUND_SHIFT		28
>  #define MVFR0_FPSHVEC_SHIFT		24
>  #define MVFR0_FPSQRT_SHIFT		20
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index 0b6715625cf6..c1e837fc8f97 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -348,6 +348,12 @@ static const struct arm64_ftr_bits ftr_id_pfr0[] = {
>  	ARM64_FTR_END,
>  };
>  
> +static const struct arm64_ftr_bits ftr_id_pfr2[] = {
> +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_PFR2_SSBS_SHIFT, 4, 0),
> +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_PFR2_CSV3_SHIFT, 4, 0),

Why is CSV3 strict here, but not when we see if in aa64pfr0? I think it
should be non-strict in both cases.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
