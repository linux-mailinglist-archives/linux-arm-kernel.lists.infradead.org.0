Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA7154F66
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:55:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HpFSxvZsfSD2UcSdTsbPdUNI02ExdGh6LQlbgYId0YE=; b=HXp8pYmSprKItc
	FmAbLK71Bd9bHm2hX/1YvZQOYyGuFfwdGe3eMhhtm/GqDs/qFx0mN5sBSjqx4laTgtS6U0Z00e+MJ
	nnwFL2bCAyD4RtAeXOT8PK64LvttuUpd7b8jAwlNMWpDJ/ACmPzBrK+qAF+F8SprCIohW+6UkMAtQ
	nfFEMMoyaJoA4y69/pdl2Ia/IGzxvBZONi8X4lBrFYxd8MbaAlJ9FFBDr3FvJa4H3S26W9wL7phGh
	zGXacQeM5eXKL0/xIqGjRNM8NOAlQsBtZWwDL+jO9K9U7yNlRmRuGT+q9ZaDpuk/nTBGst9/8kY6T
	qIeEZeWur7Xqx2u2WD0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkz4-0005tj-II; Tue, 25 Jun 2019 12:55:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkyt-0005t7-EX
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:55:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 165B42B;
 Tue, 25 Jun 2019 05:55:25 -0700 (PDT)
Received: from [10.37.8.194] (unknown [10.37.8.194])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 49DD23F71E;
 Tue, 25 Jun 2019 05:55:23 -0700 (PDT)
Subject: Re: [PATCH 21/59] KVM: arm64: nv: Set a handler for the system
 instruction traps
To: Marc Zyngier <marc.zyngier@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
References: <20190621093843.220980-1-marc.zyngier@arm.com>
 <20190621093843.220980-22-marc.zyngier@arm.com>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <880f9a31-10bb-0fbd-987a-03dabf536f2f@arm.com>
Date: Tue, 25 Jun 2019 13:55:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190621093843.220980-22-marc.zyngier@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_055527_582362_9881ECC7 
X-CRM114-Status: GOOD (  21.37  )
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 James Morse <james.morse@arm.com>, Jintack Lim <jintack@cs.columbia.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 06/21/2019 10:38 AM, Marc Zyngier wrote:
> From: Jintack Lim <jintack.lim@linaro.org>
> 
> When HCR.NV bit is set, execution of the EL2 translation regime address
> aranslation instructions and TLB maintenance instructions are trapped to
> EL2. In addition, execution of the EL1 translation regime address
> aranslation instructions and TLB maintenance instructions that are only

What's "translation regime address aranslation" ? I would guess
"aranslation" should be removed, but since the same pattern appears
twice in the commit doubt took over me :) .

> accessible from EL2 and above are trapped to EL2. In these cases,
> ESR_EL2.EC will be set to 0x18.
> 
> Change the existing handler to handle those system instructions as well
> as MRS/MSR instructions.  Emulation of each system instructions will be
> done in separate patches.
> 
> Signed-off-by: Jintack Lim <jintack.lim@linaro.org>
> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> ---
>  arch/arm64/include/asm/kvm_coproc.h |  2 +-
>  arch/arm64/kvm/handle_exit.c        |  2 +-
>  arch/arm64/kvm/sys_regs.c           | 53 +++++++++++++++++++++++++----
>  arch/arm64/kvm/trace.h              |  2 +-
>  4 files changed, 50 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/kvm_coproc.h b/arch/arm64/include/asm/kvm_coproc.h
> index 0b52377a6c11..1b3d21bd8adb 100644
> --- a/arch/arm64/include/asm/kvm_coproc.h
> +++ b/arch/arm64/include/asm/kvm_coproc.h
> @@ -43,7 +43,7 @@ int kvm_handle_cp14_32(struct kvm_vcpu *vcpu, struct kvm_run *run);
>  int kvm_handle_cp14_64(struct kvm_vcpu *vcpu, struct kvm_run *run);
>  int kvm_handle_cp15_32(struct kvm_vcpu *vcpu, struct kvm_run *run);
>  int kvm_handle_cp15_64(struct kvm_vcpu *vcpu, struct kvm_run *run);
> -int kvm_handle_sys_reg(struct kvm_vcpu *vcpu, struct kvm_run *run);
> +int kvm_handle_sys(struct kvm_vcpu *vcpu, struct kvm_run *run);
>  
>  #define kvm_coproc_table_init kvm_sys_reg_table_init
>  void kvm_sys_reg_table_init(void);
> diff --git a/arch/arm64/kvm/handle_exit.c b/arch/arm64/kvm/handle_exit.c
> index 2517711f034f..e662f23b63a1 100644
> --- a/arch/arm64/kvm/handle_exit.c
> +++ b/arch/arm64/kvm/handle_exit.c
> @@ -236,7 +236,7 @@ static exit_handle_fn arm_exit_handlers[] = {
>  	[ESR_ELx_EC_SMC32]	= handle_smc,
>  	[ESR_ELx_EC_HVC64]	= handle_hvc,
>  	[ESR_ELx_EC_SMC64]	= handle_smc,
> -	[ESR_ELx_EC_SYS64]	= kvm_handle_sys_reg,
> +	[ESR_ELx_EC_SYS64]	= kvm_handle_sys,
>  	[ESR_ELx_EC_SVE]	= handle_sve,
>  	[ESR_ELx_EC_ERET]	= kvm_handle_eret,
>  	[ESR_ELx_EC_IABT_LOW]	= kvm_handle_guest_abort,
> diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
> index 1d1312425cf2..e711dde4511c 100644
> --- a/arch/arm64/kvm/sys_regs.c
> +++ b/arch/arm64/kvm/sys_regs.c
> @@ -2597,6 +2597,40 @@ static int emulate_sys_reg(struct kvm_vcpu *vcpu,
>  	return 1;
>  }
>  
> +static int emulate_tlbi(struct kvm_vcpu *vcpu,
> +			     struct sys_reg_params *params)
> +{
> +	/* TODO: support tlbi instruction emulation*/
> +	kvm_inject_undefined(vcpu);
> +	return 1;
> +}
> +
> +static int emulate_at(struct kvm_vcpu *vcpu,
> +			     struct sys_reg_params *params)
> +{
> +	/* TODO: support address translation instruction emulation */
> +	kvm_inject_undefined(vcpu);
> +	return 1;
> +}
> +
> +static int emulate_sys_instr(struct kvm_vcpu *vcpu,
> +			     struct sys_reg_params *params)
> +{
> +	int ret = 0;
> +
> +	/* TLB maintenance instructions*/
> +	if (params->CRn == 0b1000)
> +		ret = emulate_tlbi(vcpu, params);
> +	/* Address Translation instructions */
> +	else if (params->CRn == 0b0111 && params->CRm == 0b1000)
> +		ret = emulate_at(vcpu, params);
> +

So, in theory the NV bit shouldn't trap other Op0 == 1 instructions.
Would it be worth adding a WARN() or BUG() in an "else" branch here,
just in case?

Thanks,

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
