Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A5912B5BB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 16:56:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TG8mpkXDFg+jjc2tAJUqRFCve1rgzFRgT+IwQtSUGA4=; b=WFhqRszyIdCB0P
	rGLlWxsInLpa7pSCFOYlq9hG339lDDQ0Yu2FMXcRUttjCEYed7R4w6GGuYNcpTbvJNJHJ3PsGaa9X
	S6wCZmFClmk0qkWheOsIp2esWhJ052jSvbo8j2G72HourcW0bcs/Dlw2N6kmWiT6i/cRnDpVl6tK8
	kg2pivfYcLC0DRdXyev2uYa3KSZ2oC9YzQWI49NuXSlWa8ihUwIn+FPT0HN7mQ1n2D5Kgsxfebihy
	573a3Oub7eOR6OHDn+VKKt/ItKGWLeP0GV6E/aaxLls+V3L148Ij5LP0XjfhNH2pKzgHgyn8VLRjW
	unCh9l/GGaQUnwXf2rjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikryu-0005Tp-7Y; Fri, 27 Dec 2019 15:56:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikryk-0005TN-Tt
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Dec 2019 15:56:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4957331B;
 Fri, 27 Dec 2019 07:56:41 -0800 (PST)
Received: from [10.37.8.128] (unknown [10.37.8.128])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 823E83F68F;
 Fri, 27 Dec 2019 07:56:37 -0800 (PST)
Subject: Re: [PATCH 3/3] KVM: arm/arm64: correct AArch32 SPSR on exception
 entry
To: Mark Rutland <mark.rutland@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, maz@kernel.org
References: <20191220150549.31948-1-mark.rutland@arm.com>
 <20191220150549.31948-4-mark.rutland@arm.com>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <1c1682fc-547a-87c1-0e13-63b0058eaa0c@arm.com>
Date: Fri, 27 Dec 2019 15:56:40 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191220150549.31948-4-mark.rutland@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_075643_053673_FCF25D71 
X-CRM114-Status: GOOD (  25.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Peter Maydell <peter.maydell@linaro.org>, Drew Jones <drjones@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, stable@vger.kernel.org,
 James Morse <james.morse@arm.com>, Will Deacon <will@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 12/20/19 3:05 PM, Mark Rutland wrote:
> Confusingly, there are three SPSR layouts that a kernel may need to deal
> with:
>
> (1) An AArch64 SPSR_ELx view of an AArch64 pstate
> (2) An AArch64 SPSR_ELx view of an AArch32 pstate
> (3) An AArch32 SPSR_* view of an AArch32 pstate
>
> When the KVM AArch32 support code deals with SPSR_{EL2,HYP}, it's either
> dealing with #2 or #3 consistently. On arm64 the PSR_AA32_* definitions
> match the AArch64 SPSR_ELx view, and on arm the PSR_AA32_* definitions
> match the AArch32 SPSR_* view.
>
> However, when we inject an exception into an AArch32 guest, we have to
> synthesize the AArch32 SPSR_* that the guest will see. Thus, an AArch64
> host needs to synthesize layout #3 from layout #2.
>
> This patch adds a new host_spsr_to_spsr32() helper for this, and makes
> use of it in the KVM AArch32 support code. For arm64 we need to shuffle
> the DIT bit around, and remove the SS bit, while for arm we can use the
> value as-is.
>
> I've open-coded the bit manipulation for now to avoid having to rework
> the existing PSR_* definitions into PSR64_AA32_* and PSR32_AA32_*
> definitions. I hope to perform a more thorough refactoring in future so
> that we can handle pstate view manipulation more consistently across the
> kernel tree.
>
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Cc: Alexandru Elisei <alexandru.elisei@arm.com>
> Cc: Drew Jones <drjones@redhat.com>
> Cc: James Morse <james.morse@arm.com>
> Cc: Julien Thierry <julien.thierry.kdev@gmail.com>
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: Peter Maydell <peter.maydell@linaro.org>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: stable@vger.kernel.org
> ---
>  arch/arm/include/asm/kvm_emulate.h   |  5 +++++
>  arch/arm64/include/asm/kvm_emulate.h | 32 ++++++++++++++++++++++++++++++++
>  virt/kvm/arm/aarch32.c               |  6 +++---
>  3 files changed, 40 insertions(+), 3 deletions(-)
>
> diff --git a/arch/arm/include/asm/kvm_emulate.h b/arch/arm/include/asm/kvm_emulate.h
> index dee2567661ed..b811576bc456 100644
> --- a/arch/arm/include/asm/kvm_emulate.h
> +++ b/arch/arm/include/asm/kvm_emulate.h
> @@ -53,6 +53,11 @@ static inline void vcpu_write_spsr(struct kvm_vcpu *vcpu, unsigned long v)
>  	*__vcpu_spsr(vcpu) = v;
>  }
>  
> +static inline unsigned long host_spsr_to_spsr32(unsigned long spsr)
> +{
> +	return spsr;
> +}
> +
>  static inline unsigned long vcpu_get_reg(struct kvm_vcpu *vcpu,
>  					 u8 reg_num)
>  {
> diff --git a/arch/arm64/include/asm/kvm_emulate.h b/arch/arm64/include/asm/kvm_emulate.h
> index d69c1efc63e7..98672938f9f9 100644
> --- a/arch/arm64/include/asm/kvm_emulate.h
> +++ b/arch/arm64/include/asm/kvm_emulate.h
> @@ -204,6 +204,38 @@ static inline void vcpu_write_spsr(struct kvm_vcpu *vcpu, unsigned long v)
>  		vcpu_gp_regs(vcpu)->spsr[KVM_SPSR_EL1] = v;
>  }
>  
> +/*
> + * The layout of SPSR for an AArch32 state is different when observed from an
> + * AArch64 SPSR_ELx or an AArch32 SPSR_*. This function generates the AArch32
> + * view given an AArch64 view.
> + *
> + * In ARM DDI 0487E.a see:
> + *
> + * - The AArch64 view (SPSR_EL2) in section C5.2.18, page C5-426
> + * - The AArch32 view (SPSR_abt) in section G8.2.126, page G8-6256
> + * - The AArch32 view (SPSR_und) in section G8.2.132, page G8-6280
> + *
> + * Which show the following differences:
> + *
> + * | Bit | AA64 | AA32 | Notes                       |
> + * +-----+------+------+-----------------------------|
> + * | 24  | DIT  | J    | J is RES0 in ARMv8          |
> + * | 21  | SS   | DIT  | SS doesn't exist in AArch32 |
> + *
> + * ... and all other bits are (currently) common.
> + */
> +static inline unsigned long host_spsr_to_spsr32(unsigned long spsr)
> +{
> +	const unsigned long overlap = BIT(24) | BIT(21);
> +	unsigned long dit = !!(spsr & PSR_AA32_DIT_BIT);
> +
> +	spsr &= overlap;
> +
> +	spsr |= dit << 21;
> +
> +	return spsr;
> +}
> +
>  static inline bool vcpu_mode_priv(const struct kvm_vcpu *vcpu)
>  {
>  	u32 mode;
> diff --git a/virt/kvm/arm/aarch32.c b/virt/kvm/arm/aarch32.c
> index 17bcde5c2451..115210e64682 100644
> --- a/virt/kvm/arm/aarch32.c
> +++ b/virt/kvm/arm/aarch32.c
> @@ -128,15 +128,15 @@ static unsigned long get_except32_cpsr(struct kvm_vcpu *vcpu, u32 mode)
>  
>  static void prepare_fault32(struct kvm_vcpu *vcpu, u32 mode, u32 vect_offset)
>  {
> -	unsigned long new_spsr_value = *vcpu_cpsr(vcpu);
> -	bool is_thumb = (new_spsr_value & PSR_AA32_T_BIT);
> +	unsigned long spsr = *vcpu_cpsr(vcpu);
> +	bool is_thumb = (spsr & PSR_AA32_T_BIT);
>  	u32 return_offset = return_offsets[vect_offset >> 2][is_thumb];
>  	u32 sctlr = vcpu_cp15(vcpu, c1_SCTLR);
>  
>  	*vcpu_cpsr(vcpu) = get_except32_cpsr(vcpu, mode);
>  
>  	/* Note: These now point to the banked copies */
> -	vcpu_write_spsr(vcpu, new_spsr_value);
> +	vcpu_write_spsr(vcpu, host_spsr_to_spsr32(spsr));
>  	*vcpu_reg32(vcpu, 14) = *vcpu_pc(vcpu) + return_offset;
>  
>  	/* Branch to exception vector */

With Marc's comment fixed:

Reviewed-by: Alexandru Elisei <alexandru.elisei@arm.com>

Thanks,
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
