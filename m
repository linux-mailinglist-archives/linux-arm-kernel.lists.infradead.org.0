Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7960A134512
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 15:34:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uMPt52176FvMwrcTWSnVM7N7HILeOX5Fv21u7oIdg7Y=; b=YHukRLkBzvQpV2
	9wY2oyW+By1t9uE65hCWtm1f4nxMdjHwTXHrUNOAh8iNpap7nKnfHwVg1v6qmpKnu9bmWc5DzvyaG
	Gge/7HooSTollQKeivO8lZ9g0sMfcYE9Nrwp12x6gdJi/eRkONx3ouRZKtMYdvF5VFDd6fhQi/yWk
	nHxECHoWOacdzKNVV6Cy1cGFWIaVOwbcTU5x30URKTMZeQT5yT9P8VQeowAm6z0KP9hdKF4K3Frwn
	K7sObruYQwZmN8VNIZCWyohQM//CQsLdYesW1+ihjpWGfEgFBRdDb0Lpn4CjUibKmvv0UoIpQy1iH
	KU7jjxQbtzAw22Zzyu9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipCPf-0003Po-7c; Wed, 08 Jan 2020 14:34:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipCPW-0003PN-T7
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 14:34:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4150131B;
 Wed,  8 Jan 2020 06:34:11 -0800 (PST)
Received: from [10.1.196.63] (e123195-lin.cambridge.arm.com [10.1.196.63])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C86E33F703;
 Wed,  8 Jan 2020 06:34:09 -0800 (PST)
Subject: Re: [PATCHv2 1/3] KVM: arm64: correct PSTATE on exception entry
To: Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 maz@kernel.org
References: <20200108134324.46500-1-mark.rutland@arm.com>
 <20200108134324.46500-2-mark.rutland@arm.com>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <074273a9-679f-9133-1488-6e84a6b0afb0@arm.com>
Date: Wed, 8 Jan 2020 14:34:08 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200108134324.46500-2-mark.rutland@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_063415_031354_55517C3F 
X-CRM114-Status: GOOD (  21.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: peter.maydell@linaro.org, drjones@redhat.com, suzuki.poulose@arm.com,
 stable@vger.kernel.org, james.morse@arm.com, will@kernel.org,
 julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On 1/8/20 1:43 PM, Mark Rutland wrote:
> When KVM injects an exception into a guest, it generates the PSTATE
> value from scratch, configuring PSTATE.{M[4:0],DAIF}, and setting all
> other bits to zero.
>
> This isn't correct, as the architecture specifies that some PSTATE bits
> are (conditionally) cleared or set upon an exception, and others are
> unchanged from the original context.
>
> This patch adds logic to match the architectural behaviour. To make this
> simple to follow/audit/extend, documentation references are provided,
> and bits are configured in order of their layout in SPSR_EL2. This
> layout can be seen in the diagram on ARM DDI 0487E.a page C5-429.
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
>  arch/arm64/include/uapi/asm/ptrace.h |  1 +
>  arch/arm64/kvm/inject_fault.c        | 70 +++++++++++++++++++++++++++++++++---
>  2 files changed, 66 insertions(+), 5 deletions(-)
>
> diff --git a/arch/arm64/include/uapi/asm/ptrace.h b/arch/arm64/include/uapi/asm/ptrace.h
> index 7ed9294e2004..d1bb5b69f1ce 100644
> --- a/arch/arm64/include/uapi/asm/ptrace.h
> +++ b/arch/arm64/include/uapi/asm/ptrace.h
> @@ -49,6 +49,7 @@
>  #define PSR_SSBS_BIT	0x00001000
>  #define PSR_PAN_BIT	0x00400000
>  #define PSR_UAO_BIT	0x00800000
> +#define PSR_DIT_BIT	0x01000000
>  #define PSR_V_BIT	0x10000000
>  #define PSR_C_BIT	0x20000000
>  #define PSR_Z_BIT	0x40000000
> diff --git a/arch/arm64/kvm/inject_fault.c b/arch/arm64/kvm/inject_fault.c
> index a9d25a305af5..a364a4ad5479 100644
> --- a/arch/arm64/kvm/inject_fault.c
> +++ b/arch/arm64/kvm/inject_fault.c
> @@ -14,9 +14,6 @@
>  #include <asm/kvm_emulate.h>
>  #include <asm/esr.h>
>  
> -#define PSTATE_FAULT_BITS_64 	(PSR_MODE_EL1h | PSR_A_BIT | PSR_F_BIT | \
> -				 PSR_I_BIT | PSR_D_BIT)
> -
>  #define CURRENT_EL_SP_EL0_VECTOR	0x0
>  #define CURRENT_EL_SP_ELx_VECTOR	0x200
>  #define LOWER_EL_AArch64_VECTOR		0x400
> @@ -50,6 +47,69 @@ static u64 get_except_vector(struct kvm_vcpu *vcpu, enum exception_type type)
>  	return vcpu_read_sys_reg(vcpu, VBAR_EL1) + exc_offset + type;
>  }
>  
> +/*
> + * When an exception is taken, most PSTATE fields are left unchanged in the
> + * handler. However, some are explicitly overridden (e.g. M[4:0]). Luckily all
> + * of the inherited bits have the same position in the AArch64/AArch32 SPSR_ELx
> + * layouts, so we don't need to shuffle these for exceptions from AArch32 EL0.
> + *
> + * For the SPSR_ELx layout for AArch64, see ARM DDI 0487E.a page C5-429.
> + * For the SPSR_ELx layout for AArch32, see ARM DDI 0487E.a page C5-426.
> + *
> + * Here we manipulate the fields in order of the AArch64 SPSR_ELx layout, from
> + * MSB to LSB.
> + */
> +static unsigned long get_except64_pstate(struct kvm_vcpu *vcpu)
> +{
> +	unsigned long sctlr = vcpu_read_sys_reg(vcpu, SCTLR_EL1);
> +	unsigned long old, new;
> +
> +	old = *vcpu_cpsr(vcpu);
> +	new = 0;
> +
> +	new |= (old & PSR_N_BIT);
> +	new |= (old & PSR_Z_BIT);
> +	new |= (old & PSR_C_BIT);
> +	new |= (old & PSR_V_BIT);
> +
> +	// TODO: TCO (if/when ARMv8.5-MemTag is exposed to guests)
> +
> +	new |= (old & PSR_DIT_BIT);
> +
> +	// PSTATE.UAO is set to zero upon any exception to AArch64
> +	// See ARM DDI 0487E.a, page D5-2579.
> +
> +	// PSTATE.PAN is unchanged unless SCTLR_ELx.SPAN == 0b0
> +	// SCTLR_ELx.SPAN is RES1 when ARMv8.1-PAN is not implemented
> +	// See ARM DDI 0487E.a, page D5-2578.
> +	new |= (old & PSR_PAN_BIT);
> +	if (!(sctlr & SCTLR_EL1_SPAN))
> +		new |= PSR_PAN_BIT;
> +
> +	// PSTATE.SS is set to zero upon any exception to AArch64
> +	// See ARM DDI 0487E.a, page D2-2452.
> +
> +	// PSTATE.IL is set to zero upon any exception to AArch64
> +	// See ARM DDI 0487E.a, page D1-2306.
> +
> +	// PSTATE.SSBS is set to SCTLR_ELx.DSSBS upon any exception to AArch64
> +	// See ARM DDI 0487E.a, page D13-3258
> +	if (sctlr & SCTLR_ELx_DSSBS)
> +		new |= PSR_SSBS_BIT;
> +
> +	// PSTATE.BTYPE is set to zero upon any exception to AArch64
> +	// See ARM DDI 0487E.a, pages D1-2293 to D1-2294.
> +
> +	new |= PSR_D_BIT;
> +	new |= PSR_A_BIT;
> +	new |= PSR_I_BIT;
> +	new |= PSR_F_BIT;
> +
> +	new |= PSR_MODE_EL1h;
> +
> +	return new;
> +}
> +
>  static void inject_abt64(struct kvm_vcpu *vcpu, bool is_iabt, unsigned long addr)
>  {
>  	unsigned long cpsr = *vcpu_cpsr(vcpu);
> @@ -59,7 +119,7 @@ static void inject_abt64(struct kvm_vcpu *vcpu, bool is_iabt, unsigned long addr
>  	vcpu_write_elr_el1(vcpu, *vcpu_pc(vcpu));
>  	*vcpu_pc(vcpu) = get_except_vector(vcpu, except_type_sync);
>  
> -	*vcpu_cpsr(vcpu) = PSTATE_FAULT_BITS_64;
> +	*vcpu_cpsr(vcpu) = get_except64_pstate(vcpu);
>  	vcpu_write_spsr(vcpu, cpsr);
>  
>  	vcpu_write_sys_reg(vcpu, addr, FAR_EL1);
> @@ -94,7 +154,7 @@ static void inject_undef64(struct kvm_vcpu *vcpu)
>  	vcpu_write_elr_el1(vcpu, *vcpu_pc(vcpu));
>  	*vcpu_pc(vcpu) = get_except_vector(vcpu, except_type_sync);
>  
> -	*vcpu_cpsr(vcpu) = PSTATE_FAULT_BITS_64;
> +	*vcpu_cpsr(vcpu) = get_except64_pstate(vcpu);
>  	vcpu_write_spsr(vcpu, cpsr);
>  
>  	/*

Looks fine to me:

Reviewed-by: Alexandru Elisei <alexandru.elisei@arm.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
